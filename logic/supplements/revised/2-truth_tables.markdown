---
author: David Sanson
title: 'Truth Tables (2.10 and 2.11)'
...

What is This?
=============

This is a supplement to section 2.10 of the Logic Text. You should read
that *before* you read this. Section 2.10 introduces truth tables, and
explains how we can use truth tables to determine whether or not a
sentence is a tautology, and whether or not an argument is
tautologically valid.

Truth Functions
===============

Each of our connectives can be thought of as expressing a
*truth-function*. A truth-function is a function that takes one or more
truth values as inputs, and outputs a truth value. So, for example, the
rule for negation is:

-   if the input, the truth value of ${\mathord{◻}}$, is T, then the
    output, the truth value of ${\mathord{\sim}}{\mathord{◻}}$, is F.
-   if the input is F, then the output is T

We can summarize this with the following table:

<div class="tt1sl">

   ${\mathord{◻}}$   ${\mathord{\sim}}{\mathord{◻}}$
  ----------------- ---------------------------------
          T                         F
          F                         T

</div>

The first row of the table corresponds to our first bullet point: the
truth value assigned to ${\mathord{◻}}$ is T, so the truth value
assigned to ${\mathord{\sim}}{\mathord{◻}}$ is F. The second row
corresponds to the second bullet point.

The following table summarizes the truth-functions expressed by each of
our binary connectives:

<div class="tt2sl">

   ${\mathord{◻}}$   ${\mathord{○}}$   ${\mathord{◻}}{\mathord{\wedge}}{\mathord{○}}$   ${\mathord{◻}}{\mathord{\vee}}{\mathord{○}}$   ${\mathord{◻}}{\mathbin{\rightarrow}}{\mathord{○}}$   ${\mathord{◻}}{\mathord{\leftrightarrow}}{\mathord{○}}$
  ----------------- ----------------- ------------------------------------------------ ---------------------------------------------- ----------------------------------------------------- ---------------------------------------------------------
          T                 T                                T                                               T                                                  T                                                       T
          T                 F                                F                                               T                                                  F                                                       F
          F                 T                                F                                               T                                                  T                                                       F
          F                 F                                F                                               F                                                  T                                                       T

</div>

Again, each row represents a possible input---in the first row, we
assign T to both ${\mathord{◻}}$ and ${\mathord{○}}$, for example---and
each column represents the outputs given those inputs.

Formal Validity and Logical Truth
=================================

*Validity* is a property of *arguments*. *Truth* is a property of
*sentences*.

Some sentences are *true in virtue of their logical form*. We call these
sentences **logical truths**:

Logical Truth
:   A sentence is a **logical truth** just in case *no sentence that has
    its logical form* is false.

Some arguments are *valid in virtue of their logical form*. We call
these arguments **formally valid**:

Formal Validity
:   An argument is **formally valid** just in case *no argument with the
    same logical form* has true premises but a false conclusion.

You cannot apply these definitions if you don't have a theory of logical
form. We now have a theory of *sentential* logical form---that is,
logical form due to truth-functional sentential connectives, like and
and 'or' and 'if...then'. So we can now apply these definitions.

We call a sentence that is a logical truth in virtue of its *sentential
logical form* a **tautology**. We can show that a sentence is a
tautology by showing that it is assigned **T** on **every row** of its
truth table. That shows that no sentence with that sentential logical
form can ever be false.

We call an argument that is formally valid in virtue of its *sentential
logical form* **tautologically valid**. We can show that an argument is
tautologically valid by showing that **no row** of its truth table
assigns **T** to all of its premises, but **F** to its conclusion. That
shows that no argument with thhis form can ever have true premises and a
false conclusion.

Tautologies
===========

Here are some tautologies:

-   $P{\mathbin{\rightarrow}}P$
-   $P{\mathord{\vee}}{\mathord{\sim}}P$
-   $P{\mathord{\leftrightarrow}}P$
-   ${\mathord{\sim}}(P{\mathord{\wedge}}{\mathord{\sim}}P)$

Try plugging in sentences for $P$, and see if you can come up with any
that strike you as false:

$P{\mathbin{\rightarrow}}P$
:   If <input class="copyMe P slot" type="text" placeholder="P">, then
    <input class="copyMe P slot" type="text" placeholder="P">.

$P{\mathord{\vee}}{\mathord{\sim}}P$
:   Either <input class="copyMe P slot" type="text" placeholder="P">, or
    it is not the case that
    <input class="copyMe P slot" type="text" placeholder="P">

$P{\mathord{\leftrightarrow}}P$
:   <input class="copyMe P slot" type="text" placeholder="P"> just in
    case <input class="copyMe P slot" type="text" placeholder="P">

${\mathord{\sim}}(P{\mathord{\wedge}}{\mathord{\sim}}P)$
:   Both it is not the case that
    (<input class="copyMe P slot" type="text" placeholder="P"> and it is
    not the case that
    <input class="copyMe P slot" type="text" placeholder="P">)

To show that a sentence is a tautology, we construct its truth table,
and show that the sentence is assigned T on every row of its truth
table. For example, here is the truth table for
$P{\mathord{\vee}}{\mathord{\sim}}P$:

<div class="tt1sl">

   $P$   $P{\mathord{\vee}}{\mathord{\sim}}P$
  ----- --------------------------------------
    T                     ?
    F                     ?

</div>

The truth table for a sentence first lists each sentence letter
contained in the sentence---so here, just $P$---followed by the sentence
itself. Each row of the truth table represents a possible assignment of
truth values to the sentence letters. The truth table for the sentence
must have one row for each possible assignment. Here there are two
possible assignments, and so two rows: T to $P$, or F to $P$.

We calculate the truth value for the sentence on the first row as
follows. First, we write the truth value assigned to the sentence letter
under each of its occurrences:

<div class="tt1slcalc">

   $P$   $P$   ${\mathord{\vee}}$   ${\mathord{\sim}}$   $P$
  ----- ----- -------------------- -------------------- -----
    T     T                                               T
    F                                                   

</div>

Next, we note that ${\mathord{\sim}}P$ is F when $P$ is T:

<div class="tt1slcalc">

   $P$   $P$   ${\mathord{\vee}}$   ${\mathord{\sim}}$   $P$
  ----- ----- -------------------- -------------------- -----
    T     T                                 F             T
    F                                                   

</div>

Finally, we note that the disjunction is T when its first disjunct is T
and its second disjunct is F (I've put the F in boldface to indicate
that it is the truth-value of the whole sentence):

<div class="tt1slcalc">

   $P$   $P$   ${\mathord{\vee}}$   ${\mathord{\sim}}$   $P$
  ----- ----- -------------------- -------------------- -----
    T     T          **T**                  F             T
    F                                                   

</div>

We calculate the second row in similar fashion. First, we note that $P$
is assigned $F$:

<div class="tt1slcalc">

   $P$   $P$   ${\mathord{\vee}}$   ${\mathord{\sim}}$   $P$
  ----- ----- -------------------- -------------------- -----
    T     T          **T**                  F             T
    F     F                                               F

</div>

Next, we calculate the truth value of ${\mathord{\sim}}P$:

<div class="tt1slcalc">

   $P$   $P$   ${\mathord{\vee}}$   ${\mathord{\sim}}$   $P$
  ----- ----- -------------------- -------------------- -----
    T     T          **T**                  F             T
    F     F                                 T             F

</div>

Finally, we calculate the truth value of the disjunction:

<div class="tt1slcalc">

   $P$   $P$   ${\mathord{\vee}}$   ${\mathord{\sim}}$   $P$
  ----- ----- -------------------- -------------------- -----
    T     T          **T**                  F             T
    F     F          **T**                  T             F

</div>

Since the sentence is true on all the rows of its truth table, it is a
tautology.

Here are some sentences that are not tautologies. Try finding English
sentences that make them false:

$P{\mathord{\wedge}}{\mathord{\sim}}Q$ Both
<input class="copyMe P slot" type="text" placeholder="P"> and it is not
the case that <input class="copyMe Q slot" type="text" placeholder="Q">.

$P{\mathbin{\rightarrow}}(P{\mathord{\wedge}}Q)$ If
<input class="copyMe P slot" type="text" placeholder="P">, then both
<input class="copyMe P slot" type="text" placeholder="P"> and
<input class="copyMe Q slot" type="text" placeholder="Q">.

Here is the truth table for the first of these:

<div class="tt2sl">

   $P$   $Q$   $P{\mathord{\wedge}}{\mathord{\sim}}Q$
  ----- ----- ----------------------------------------
    T     T                      ?
    T     F                      ?
    F     T                      ?
    F     F                      ?

</div>

Again, we calculate the truth value of the sentence for each row.

First, we write down the assigned truth value beneath each occurrence of
a sentence letter:

<div class="tt2slcalc">

   $P$   $Q$   $P$   ${\mathord{\wedge}}$   ${\mathord{\sim}}$   $Q$
  ----- ----- ----- ---------------------- -------------------- -----
    T     T     T                                                 T
    T     F                                                     
    F     T                                                     
    F     F                                                     

</div>

Next, we calculate the truth value of ${\mathord{\sim}}Q$:

<div class="tt2slcalc">

   $P$   $Q$   $P$   ${\mathord{\wedge}}$   ${\mathord{\sim}}$   $Q$
  ----- ----- ----- ---------------------- -------------------- -----
    T     T     T                                   F             T
    T     F                                                     
    F     T                                                     
    F     F                                                     

</div>

Finally, we calculate the truth value of the conjunction. It is F,
because the right conjunct is F:

<div class="tt2slcalc">

   $P$   $Q$   $P$   ${\mathord{\wedge}}$   ${\mathord{\sim}}$   $Q$
  ----- ----- ----- ---------------------- -------------------- -----
    T     T     T           **F**                   F             T
    T     F                                                     
    F     T                                                     
    F     F                                                     

</div>

Since the sentence is assigned F on at least one row of its truth table,
it is not a logical truth. Can you find English sentences that are *both
true*, that make this sentence false?

We don't *need* to continue: we have shown that the sentence is not a
tautology. But let's complete the table anyway:

<div class="tt2slcalc">

   $P$   $Q$   $P$   ${\mathord{\wedge}}$   ${\mathord{\sim}}$   $Q$
  ----- ----- ----- ---------------------- -------------------- -----
    T     T     T           **F**                   F             T
    T     F     T           **T**                   T             F
    F     T     F           **F**                   F             T
    F     F     F           **F**                   T             F

</div>

This table shows that the sentence is false if both $P$ and $Q$ are true
(row 1), that it is true if $P$ is true and $Q$ is false (row 2), and it
is true if $P$ is false and $Q$ is true (row 3), or if $P$ is false and
$Q$ is false (row 4).

Test this result by plugging in English sentences with those truth
values into the form, and thinking about the truth value of the
resulting complex English sentence:

Both <input class="copyMe P slot" type="text" placeholder="P"> and it is
not the case that
<input class="copyMe Q slot" type="text" placeholder="Q">.

Tautological Validity
=====================

Sentences are true or false. Arguments are valid or invalid. So
sentences are the sorts of things that can be logically true, and so
tautologies. Arguments are the sorts of things that can be logically
valid, and so tautologically valid.

Here are some tautologically valid arguments:

-   $P{\mathbin{\rightarrow}}Q\ .\ P {\therefore\ }Q$
-   $P{\mathbin{\rightarrow}}Q\ .\ {\mathord{\sim}}Q {\therefore\ }{\mathord{\sim}}P$
-   $P{\mathord{\wedge}}Q {\therefore\ }P$
-   $P{\mathord{\vee}}Q\ .\ {\mathord{\sim}}Q {\therefore\ }P$
-   $P{\mathord{\wedge}}Q\ .\ Q{\mathbin{\rightarrow}}R {\therefore\ }R$

You might recognize the first two as instances of MP and MT,
respectively.

We show that an argument is tautologically valid by constructing its
truth-table, and showing that there are no rows of the table that assign
T to all of the premises, but F to the conclusion.

Here is the truth-table for our first example above:

<div class="tt2slcalc">

   $P$   $Q$   $P$   ${\mathbin{\rightarrow}}$   $Q$ .   $P$ .   $Q$
  ----- ----- ----- --------------------------- ------- ------- -----
    T     T     T                T                T .     T .     T
    T     F     T                F                F .     T .     F
    F     T     F                T                T .     F .     T
    F     F     F                T                F .     F .     F

</div>

Consider this table row by row.

-   On the first row, the premises are all true, but so is the
    conclusion. So this is not a row that has all true premises and a
    false conclusion.
-   On the second row, the first premise is false. So this is not a row
    that has all true premises and a false conclusion.
-   On the third row, the second premise is false. So this is not a row
    that has all true premises and a false conclusion.
-   On the fourth row, the second premise is false. So this is not a row
    that has all true premises and a false conclusion.

What this tells us is that there is no way that all the premises could
be true but the conclusion false. So the argument is tautologically
valid.

Test Your Understanding
-----------------------

1.  Construct truth-tables to convince yourself that MP, MT, and DN are
    tautologically valid.

2.  Construct truth-tables to convince yourself that Denying the
    Antecedent and Affirming the Consequent are not tautologically
    valid.

3.  Construct a truth-table that shows that *anything* follows from a
    contradiction.
