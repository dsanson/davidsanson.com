---
title: New Connectives (2.1)
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

This is a supplement to section 2.1 of the Logic Text. You
should read that *before* you read this.

Section 2.1 introduces three new two-place connectives: conjunction,
disjunction, and the biconditional. It briefly discusses what they mean
and how to parse sentences containing them. 

# New Connectives

To briefly review, the **conjunction sign** is '$\Land$', and is
read as 'and', so '$(P\Land Q)$' is read as '$P$ and $Q$'. The two parts
of a conjunction (here, $P$ and $Q$) are called its **conjuncts**. The
**disjunction sign** is '$\Lor$', read this as 'or', so '$(P\Lor Q)$' is
read as '$P$ or $Q$'. The two parts of a disjunction (here, $P$ and $Q$)
are called its **disjuncts**. The **biconditional sign** is '$\Liff$',
read this as 'if and only if', so '$(P\Liff Q)$' is read as '$P$ if and
only if $Q$'. The two parts of a biconditional are called its
**constituents**.

## Test Your Understanding

1.   What do we call the sentence $P$ when it occurs in the conjunction, $(P\Land Q)$?

<div class="answers">

We say that $P$ is a *conjunct*. If we want to be more specific, we can say that it is the *left conjunct*.

</div>

2.   What do we call the sentence $Q$ when it occurs in the disjunction, $(P\Lor Q)$?

<div class="answers">

We say that $Q$ is a *disjunct*. If we want to be more specific, we can say that it is the *right disjunct*.

</div>

3.   How would you symbolize the sentence, 'Penny sits and Quinn runs'?

<div class="answers">

You'd need to decide on a scheme of abbreviation. Let's use $P$ for 'Penny sits' and $Q$ for 'Quinn runs'. Then the sentence is symbolized as '$(P\Land Q)$'.

</div>

4.   What do we call the sentence $(S\Lif R)$, when it occurs in the biconditional, $((S\Lif R)\Liff Q)$?

<div class="answers">

We call it a constituent, or, more precisely, the *left constituent*. It is also, of course, a conditional.

</div>

# Syntax

These new connectives have the same syntax as the conditional. To create a sentence using one of them, you stick it between two sentences, and surround the whole thing in parentheses:

-   if $\BX$ and $\CI$ are both symbolic sentences, then so are
    $(\BX\Lif\CI)$, $(\BX\Land\CI)$, $(\BX\Lor\CI)$, and
    $(\BX\Liff\CI)$.

As before, we have conventions for dropping parentheses, and writing sentences in informal notation. The new conventions are summarized in the box on page 2 of chapter 2.

## Test Your Understanding

For each of the following sentences, determine whether or not it is in official notation, informal notation, or not well-formed:

1.  $(P\Land Q$
2.  $A\Liff B$
3.  $(P\Lor Q)$
4.  $P\Land R$
5.  $P\Lif(Q\Land R)$
6.  $P\Lif Q\Land R$
7.  $P\Lor Q\Lor R$
8.  $P\Lor Q\Land R$

<div class="answers">

1.  Not well-formed: note that it doesn't have an even number of
    parentheses.
2.  Not well-formed: $A$ and $B$ are not sentence letters
3.  Official Notation
4.  Informal Notation: the outermost parentheses have been dropped. In
    official notation, $(P\Land R)$
5.  Informal Notation: the outermost parentheses have been dropped. The
    main connective is the conditional, so in official notation,
    $(P\Lif(Q\Land R))$.
6.  Informal Notation: the outer most parentheses have been dropped.
    Also, the parentheses around the consequent, $Q\Land R$, have been
    dropped, as allowed by the first of our new conventions. So, in
    official notation, $(P\Lif(Q\Land R))$.
7.  Informal Notation, following the second of our new conventions. In
    official notation, this sentence would be written as
    $((P\Lor Q)\Lor R)$.
8.  Not well-formed. We don't have any convention that allows us to drop
    parentheses when we have a *mixed* series of conjunctions and
    disjunctions.

</div>

# Characteristic Truth Tables

The *meaning* of a connective can be expressed with a *truth table*---that is, a table that summarizes the truth or falsehood of a complex sentence, given the truth or falsehood of its parts.

Chapter 2, section 1 presents truth tables for our three new connectives. Truth tables for the conditional and negation can be found on pages 4 and 5 of chapter 1. Before continuing, you should write down all five of those tables on a piece of paper and think a little bit about what they say.

## Test Your Understanding

For each of the following sentences and the supplied schemes of abbreviation, first decide whether or not you think it is true, then look at the truth tables from 2.1, and calculate its truth value. 

1.  $P\Land R$ ($P$: Obama is President; $Q$: Romney is President)

<div class="answers">

False. Here is the table for conjunction:

<div class="tt2sl">

   $\BX$   $\CI$   $\BX\Land\CI$
  ------- ------- ---------------------------------
     T       T                    T
     T       F                    F
     F       T                    F
     F       F                    F

</div>

Since $P$ is true and $R$ is false, the situation for $P\Land R$ is
represented by the second row of this table. As that row indicates,
when the left conjunct is true, and the right conjunct is false, the
conjunction is false.

Here is another way to summarize what the table tells us: the
conjunction is true only if both of its conjuncts are true. So,
since $R$ is false, $P\Land R$ is false.

</div>

2.  $P\Lor Q$ ($P$: Obama is President; $Q$: Romney is President)

<div class="answers">

True. Here is the table for disjunction:

<div class="tt2sl">

   $\BX$   $\CI$   $\BX\Lor\CI$
  ------- ------- ---------------------------------
     T       T                    T
     T       F                    T
     F       T                    T
     F       F                    F

</div>


Since $P$ is true and $R$ is false, the situation for $P\Lor R$ is
represented by the second row of this table. As that row indicates,
when the left disjunct is true, and the right disjunct is false, the
disjunction is false.

Here is another way to summarize what the table tells us: the
disjunction is true if either of its disjuncts is true. So, since
$P$ is true, $P\Lor R$ is true.

</div>

3.  $P\Lif Q$ ($P$: Obama is President; $Q$: Romney is President)

<div class="answers">

False! Here is the table for the conditional:

<div class="tt2sl">

   $\BX$   $\CI$   $\BX\Lif\CI$
  ------- ------- ---------------------------------
     T       T                    T
     T       F                    F
     F       T                    T
     F       F                    T

</div>

Since $P$ is true and $R$ is false, the situation for $P\Lif R$ is
represented by the second row of this table. As that row indicates,
when the antecedent is true, and the consequent is false, the
conditional is false.

</div>

4.  $P\Liff Q$ ($P$: Obama is President; $Q$: Romney is President)

<div class="answers">

False! Here is the table for the biconditional:

<div class="tt2sl">

   $\BX$   $\CI$   $\BX\Liff\CI$
  ------- ------- ---------------------------------
     T       T                    T
     T       F                    F
     F       T                    F
     F       F                    T

</div>

Since $P$ is true and $R$ is false, the situation for $P\Liff R$ is
represented by the second row of this table. As that row indicates,
when the left consitutent is true, and the right constituent is
false, the biconditional is false.

Here is another way to summarize what the table tells us: the
biconditional is true only if both of its constituents agree in
"truth value": that is, if both are true or both are false. But $P$
is true and $R$ is false, so $P\Liff R$ is false.

</div>

4.  $P\Land Q$ ($P$: Penguins are birds; $Q$: Quail are birds)
5.  $P\Lor Q$ ($P$: Penguins are birds; $Q$: Quail are birds)
6.  $P\Lif Q$ ($P$: Penguins are birds; $Q$: Quail are birds)
7.  $P\Liff Q$ ($P$: Penguins are birds; $Q$: Quail are birds)

<div class="answers">

Since $P$ and $Q$ are both true, we are looking at the first row of each truth table.

4.  True! A conjunction is true if both of its conjuncts are true, as is
    the case here.

5.  True! A disjunction is true if both of its disjuncts are true, as is
    the case here.

    You might be inclined to think that the English sentence is
    false---that 'or' is *exclusive*---one *or* the other, but *not
    both*. But our symbol, '$\Lor$' represents *inclusive* disjunction.
    The table for exclusive disjunction would look like this:
    
    <div class="tt2sl">

       $\BX$   $\CI$   $\BX\ \mbox{exclusive-or}\ \CI$
      ------- ------- ---------------------------------
         T       T                    F
         T       F                    T
         F       T                    T
         F       F                    F
    
    </div>

    We are not going to introduce a connective for exclusive-or. Those
    who do sometimes use the disjunction sign, $\Lor$, with a line beneath it: $\veebar$.

6.  True! A conditional with both true antecedent and consequent is
    true, as you can see on the first row of the truth table.

    You might balk at this. Shouldn't the truth of the conditional
    require something more---a non-accidental connection between the
    truth of the antecedent and the consequent?

    In English, no doubt this is often the case. But our conditional is
    what logicians call the *material* conditional. The only way it can
    be false is when the antecedent is true and the consequent false
    (see the second row of its truth table). Otherwise, it is true.

7.  True! A biconditional is true if both of its constituents agree in
    truth value, as they do here.

    You might be inclined to think that the English sentence is
    false---that 'if and only if' requires a stronger relationship
    between the two consituents; that it cannot just be an *accident*
    that they happen to both have the same truth value. But our
    biconditional '$\Liff$' is the *material* biconditional, and
    expresses nothing more than agreement of truth value.


</div>

8.  $R\Land Q$ ($R$: Rabbits are birds; $Q$: Quail are reptiles)
9.  $R\Lor Q$ ($R$: Rabbits are birds; $Q$: Quail are reptiles)
10.  $R\Lif Q$ ($R$: Rabbits are birds; $Q$: Quail are reptiles)
11.  $R\Liff Q$ ($R$: Rabbits are birds; $Q$: Quail are reptiles)

<div class="answers">

Since $R$ and $Q$ are both false, we are looking at the bottom row of each truth table.

8.  False! A conjunction is true only if both of its conjuncts are true.
9.  False! A disjunction is true only if at least one of its disjuncts
    is true. But both of the disjuncts here are false.
10. True! A conditional is true whenever its antecedent is false!
11.  True! A biconditional is true if both of its constituents *agree* in
    truth value. Since they are both false here, they both have the same
    truth value, so the biconditional is true.

Sometimes people get confused about the difference here between 'and' and 'if and only if'. Sometimes people think that '$P$ and $Q$' should be true if $P$ and $Q$ are both false, since at least they have the same truth value. But 'and' requires not just *agreement* between the conjuncts, but that they both be *true*. If you want to express the weaker relationship of agreement, use the biconditional instead.

And sometimes people think that '$P$ if and only if $Q$' should be false if $P$ and $Q$ are both false, confusing the weak requirement of agreement with the stronger requirement that both be true. If you want to express that stronger relationship, use the conjunction instead.

</div>

# Calculating the Truth Value of a Complex Sentence

Once you parse a complex sentence, you can use the truth tables to 
calculate its truth value, given an assignment of truth values to
the sentence letters it contains.

You can find some examples that illustrate this on pages 3 and 4 of chapter 2.
I will not repeat them here.

## Test Your Understanding

1.  Suppose $P$ and $Q$ are true. What is the truth value of
    $\Lneg(P\Land Q)$?

    Maybe you can calculate this one in your head, or maybe you cannot.
    Either way, get out a piece of paper and try to calculate it by
    hand, following the model presented in the text, of first parsing
    the sentence into a tree, and then calculating the truth value of
    the whole by working your way up from the truth values of the atomic
    sentences.

    The solution is presented below in stages.

<div class="answers">

Here is what the sentence looks like when parsed:

<div class="parsetree">

--------- ----- ----- --------- ----- -----
 $\Lneg$   $($   $P$   $\Land$   $Q$   $)$
   $\UC$                            
           $($   $P$   $\Land$   $Q$   $)$
                         $\BC$
                 $P$             $Q$  
--------- ----- ----- --------- ----- -----

</div>

Is that what you had? If so, move on to the next step, assigning truth values to the 
atomic sentences.

</div>

<div class="answers">

Here is the parsed sentence, with truth values assigned to the atomic sentences:

<div class="parsetree">

--------- ----- ----- --------- ----- -----
 $\Lneg$   $($   $P$   $\Land$   $Q$   $)$
   $\UC$                            
           $($   $P$   $\Land$   $Q$   $)$
                         $\BC$
                 $P$             $Q$  
                  T               T  
--------- ----- ----- --------- ----- -----

</div>

The next step is to calculate the truth value of the conjunction...

</div>

<div class="answers">

Since both $P$ and $Q$ are true, $P\Land Q$ is true
too:

<div class="parsetree">

--------- ----- ----- --------- ----- -----
 $\Lneg$   $($   $P$   $\Land$   $Q$   $)$
   $\UC$                            
           $($   $P$   $\Land$   $Q$   $)$
                          T
                         $\BC$
                 $P$             $Q$  
                  T               T  
--------- ----- ----- --------- ----- -----

</div>

What next?

</div>

<div class="answers">

Since the
conjunction is true, its negation is false:

<div class="parsetree">

--------- ----- ----- --------- ----- -----
 $\Lneg$   $($   $P$   $\Land$   $Q$   $)$
    F
   $\UC$                            
           $($   $P$   $\Land$   $Q$   $)$
                          T
                         $\BC$
                 $P$             $Q$  
                  T               T  
--------- ----- ----- --------- ----- -----

</div>

And so we conclude that, when $P$ and $Q$ are both true, $\Lneg(P\Land Q)$ is
false.

</div>

2.  Suppose $P$ and $S$ are true, but $Q$ and $R$ are false. What is the truth
value of $(P\Land Q)\Lor(R\Lif S)$? Or, more succinctly,

<div class="tt4sl">

 $P$   $Q$   $R$   $S$   $(P\Land Q)\Lor (R\Lif S)$ 
----- ----- ----- ----- -----------------------------
  T     F     F     T            ?

</div>

Again, the solution is presented in stages:

<div class="answers">

Here is the parsed sentence, with appropriate truth values assigned
to the atomic sentences:

<div class="parsetree">

----- ----- --------- ----- ----- -------- ----- ----- -------- ----- -----
 $($   $P$   $\Land$   $Q$   $)$   $\Lor$   $($   $R$   $\Lif$   $S$   $)$ 
                                    $\BC$
 $($   $P$   $\Land$   $Q$   $)$            $($   $R$   $\Lif$   $S$   $)$ 
               $\BC$                                     $\BC$
       $P$             $Q$                        $R$            $S$       
        T               F                          F              T
----- ----- --------- ----- ----- -------- ----- ----- -------- ----- -----

</div>

</div>

<div class="answers">

Now we calculate up the tree:

<div class="parsetree">

----- ----- --------- ----- ----- -------- ----- ----- -------- ----- -----
 $($   $P$   $\Land$   $Q$   $)$   $\Lor$   $($   $R$   $\Lif$   $S$   $)$ 
                                    $\BC$
 $($   $P$   $\Land$   $Q$   $)$            $($   $R$   $\Lif$   $S$   $)$ 
                F                                          T
               $\BC$                                     $\BC$
       $P$             $Q$                        $R$            $S$       
        T               F                          F              T
----- ----- --------- ----- ----- -------- ----- ----- -------- ----- -----

</div>

</div>

<div class="answers">

And, again,

<div class="parsetree">

----- ----- --------- ----- ----- -------- ----- ----- -------- ----- -----
 $($   $P$   $\Land$   $Q$   $)$   $\Lor$   $($   $R$   $\Lif$   $S$   $)$ 
                                      T
                                    $\BC$
 $($   $P$   $\Land$   $Q$   $)$            $($   $R$   $\Lif$   $S$   $)$ 
                F                                          T
               $\BC$                                     $\BC$
       $P$             $Q$                        $R$            $S$       
        T               F                          F              T
----- ----- --------- ----- ----- -------- ----- ----- -------- ----- -----

</div>

And so we see that, in this situation, the complex sentence is true.

</div>



