---
title: Introducing Derivations (1.4 and 1.5)
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

This is a supplement to sections 1.4 and 1.5 of the Logic Text. You
should read those *before* you read this.

# Rules and Derivations
 
Now that we have a symbolic language that allows us to represent negations and conditionals, it is time to return to our guiding goal, which is to get a better understanding of validity. 

How should we do this? Here is one idea: write down *all* the valid forms of argument, then try to think about what they all have in common. The trouble with this idea is that there are too many valid forms to write down. In fact, there are infinitely many valid forms.

We can see this even if we just consider arguments that have a single premise, and only involve negation.

<div class='cor'>

Here is an invalid argument form:

| $\PERG\Lneg$ <input class="copyMe P sym slot" type="text" >
| $\ERGO$ <input class="copyMe P sym slot" type="text" >

Plug a false sentence in the <input class="copyMe P sym slot" type="text" >, and the premise is true but the conclusion false. So this form is invalid.

</div>


<div class='cor'>

But this one is valid:

| $\PERG\Lneg\Lneg$ <input class="copyMe P sym slot" type="text" >
| $\ERGO$ <input class="copyMe P sym slot" type="text" >

Plug a true sentence in the <input class="copyMe P sym slot" type="text" >, and both premise and conclusion are true. Plug a false sentence in the <input class="copyMe P sym slot" type="text" >, and the premise is false. So there is no way an argument of this form could have a true premise and a false conclusion.

</div>

<div class='cor'>

Like our first form, this form is invalid:

| $\PERG\Lneg\Lneg\Lneg$ <input class="copyMe P sym slot" type="text" >
| $\ERGO$ <input class="copyMe P sym slot" type="text" >

</div>

And like our second form, this form is valid:

<div class='cor'>

|  $\PERG\Lneg\Lneg\Lneg\Lneg$ <input class="copyMe P sym slot" type="text" >
|  $\ERGO$ <input class="copyMe P sym slot" type="text" >

</div>

It is clear that we can keep generating new argument forms in this way,
by adding additional negation signs to the first premise. Every other
form we generate will be valid. So there are infinitely many distinct
valid forms of argument.

But it is also clear that, in this case at least, there is a pattern. Consider the first valid form from above:

<div class='cor'>

| $\PERG\Lneg\Lneg$ <input class="copyMe P sym slot" type="text" >
| $\ERGO$ <input class="copyMe P sym slot" type="text" >

</div>

We will call valid patterns of inference **rules**. We will call this one **Double Negation Elimination** (**DNE**, for short).

We can explain the validity of our fourth form,

<div class='cor'>

| $\PERG\Lneg\Lneg\Lneg\Lneg$ <input class="copyMe P sym slot" type="text" >
| $\ERGO$ <input class="copyMe P sym slot" type="text" >


by showing that the conclusion follows from two successive applications of the rule, **DNE**, to the premise.

First, we note that our premise,

1.  $\Lneg\Lneg\Lneg\Lneg$ <input class="copyMe P sym slot" type="text" >

is not just a quadruple negation; it is also a double negation. That is, it is a sentence that begins with two negations. So, applying our rule, **DNE**---that is, plugging (1) into the <input class="copyMe P sym slot" type="text" > in that pattern---we can infer,

2.  $\Lneg\Lneg$ <input class="copyMe P sym slot" type="text" >

And, since (2) is also a double negation, we can apply our rule again, inferring

3.  <input class="copyMe P sym slot" type="text" >

Since both steps are instances of **DNE**, and **DNE** is obviously valid, we can infer that the argument from (1) to (3) is valid.

</div>

This, then, will be our first strategy for understanding validity. We will identify some simple rules that are obviously valid. We will then develop a system of **derivation**---a system for applying rules to premises, in order to *derive* conclusions.

## Test Your Understanding

Consider the following argument:

| $\PERG P\Lif Q$
| $\PERG P$
| $\ERGO\Lneg\Lneg Q$

Can you show how to get from the premises to the conclusion in two obviously valid steps?

<div class="answers">

1.  $P\Lif Q$
2.  $P$

From (1) and (2), it is obvious that

3.  $Q$

follows. From (3), it is obvious that

4.  $\Lneg\Lneg Q$

follows.

</div>

# Rules

Section 1.4 introduces four rules. Again, a **rule** is a formally valid
pattern of reasoning. Section 1.5 introduces the simplest sort of
derivation. Section 1.6 introduces two slightly more complicated sorts
of derivation. Again, a **derivation** is a series of steps, each in
accordance with a rule, showing that we can reason validly from the
premises to the conclusion.

You can find the four rules in the box on p. 11. You can also find them in the Logic Software, from within the "Derivation" Module, by clicking on the "Rules" button:

![Rules Button](http://files.davidsanson.com/logic2010/rules.png)

 [Anki]: 

## Repetition

The first rule is

**Repetition** (**R**)
:   <input class="copyMe P sym slot" type="text" > $\ \ERGO$ <input class="copyMe P sym slot" type="text" >

What this says, in English, is this: if you have some sentence as a premise, you can infer that same sentence as your conclusion. We can also represent the pattern vertically, in the way we usually write arguments:

| $\PERG$ <input class="copyMe P sym slot" type="text" >
| $\ERGO$ <input class="copyMe P sym slot" type="text" >

An example of an argument that fits this pattern is:

1.   The world is flat.
2.   $\ERGO$ The world is flat.

No doubt this is a silly form of argument: we typically want an argument to represent an attempt to reason from some premises to some *new* piece of information. But also no doubt this is a valid form of argument. Just as you wouldn't omit the fact that 0+0=0 from your account of addition, we shouldn't omit **R** from our account of validity.

## Modus Ponens and Modus Tollens

The second rule is,

**Modus Ponens** (**MP**)
:   <input class="copyMe P sym slot" type="text" > $\Lif\CI\ .\ $ <input class="copyMe P sym slot" type="text" > $\ \ERGO\CI$

What this says, in English, is this: if you have two premises (here
separated by a period), and one is a conditional, and the other is the
antecedent of that conditional, then you can infer the consequent of the
conditional as your conclusion. We can also represent the pattern vertically, as

| $\PERG$ <input class="copyMe P sym slot" type="text" > $\Lif\CI$
| $\PERG$ <input class="copyMe P sym slot" type="text" >
| $\ERGO\CI$

An example of an argument that fits this pattern is:

1.  If the patient doesn't take her medicine, then the patient will not
    recover.
2.  The patient doesn't take her medicine.
3.  $\ERGO$ The patient will not recover.

If you think about what 'if...then...' means, you will see that this form of argument is valid.

The third rule is,

**Modus Tollens** (**MT**)
:   <input class="copyMe P sym slot" type="text" > $\Lif\CI\ . \Lneg\CI\ \ERGO\Lneg$ <input class="copyMe P sym slot" type="text" >

Or, in English: If you have two premises, and one is a conditional, and the other is the negation of the consequent, you can infer the negation of the antecedent. Vertically, it looks like this:

| $\PERG$ <input class="copyMe P sym slot" type="text" > $\Lif\CI$
| $\PERG\Lneg\CI$
| $\ERGO\Lneg$ <input class="copyMe P sym slot" type="text" >

An example that fits this pattern is:

1.   If patient took his medicine, then he recovered.
2.   The patient did not recover.
3.   $\ERGO$ The patient did not take his medicine.

It may take a little more thought to convince yourself that this form of argument is valid. Unlike **MP**, it is not enough just to think about what 'if...then...' means, since **MT** involves an interaction between conditionals and negations.

I already introduced both of these rules in the [Introduction], and distinguished them from two closely related fallacies. A **fallacy** is the evil twin of a **rule**: it is an formally invalid pattern of reasoning.

Just to review, *affirming the consequent* is the evil twin of **MP**:

| $\Erp$ <input class="copyMe P sym slot" type="text" > $\Lif\CI$
| $\Erp\CI$
| $\Erg$ <input class="copyMe P sym slot" type="text" >

An example, in English, is

1.   If patient took her medicine, then she recovered.
2.   The patient recovered.
3.   $\ERGO$ The patient took her medicine.

This is invalid: perhaps the patient recovered even though she did not take her medicine---that is consistent with the truth of (1).

*Denying the antecedent* is the evil twin of **MT**:

| $\Erp$ <input class="copyMe P sym slot" type="text" > $\Lif\CI$
| $\Erp\Lneg$ <input class="copyMe P sym slot" type="text" >
| $\Erg\CI$

For example,

1.   If patient took her medicine, then she recovered.
2.   The patient didn't take her medicine.
3.   $\ERGO$ The patient didn't recover.

Again, perhaps the patient recovered even though she didn't take her medicine.

'Modus Ponens' and 'Modus Tollens' are Latin. A literal meaning of 'Modus Ponens' is "the way of putting". A literal meaning of 'Modus Tollens' is "the way of taking". Knowing the literal meanings of these names might help you remember which is which.

Here is one way to think about **MP**, **MT**, and their evil invalid twins:

-   If you want to go with the flow---infer in the direction of the
    arrow---you need to be positive. That's what you do when you apply
    **MP**.
-   If you want to go against the flow---infer in the opposite direction
    of the arrow---you need to be negative. That's what you do when you
    apply **MT**.
-   You can't go with the flow in a negative way---that is *denying the
    antecedent*.
-   You can't go against the flow in a positive way---that is *affirming
    the antecedent*.

[Introduction]: 0_introduction.html#sentential-logic-if-and-not

## Test Your Understanding

For each of the following arguments, symbolize the argument, then say whether or not it is valid, and whether or not it is an instance of **MP**, **MT**, *denying the antecedent*, or *affirming the consequent*.

1.  If God exists, there is order in the world.
2.  There is order in the world.
3.  $\ERGO$ God exists.

<div class="answers">

$P$
:   God exists
$W$
:   There is order in the world

1.  $P\Lif W$
2.  $W$
3.  $\ERGO P$

This is invalid. It is an instance of the fallacy, *affirming the consequent*.

</div>

1.  There is order in the world only if God exists.
2.  There is order in the world.
3.  $\ERGO$ God exists.

<div class="answers">

1.  $W\Lif P$
2.  $W$
3.  $\ERGO P$

This is valid. It is an instance of **MP**. Remember: "only if" marks the consequent!

</div>

1.   God doesn't exist if there isn't order in the world.
2.   God doesn't exist.
3.   $\ERGO$ There isn't order in the world.

<div class="answers">

1.   $\Lneg W\Lif\Lneg P$
2.   $\Lneg P$
3.   $\Lneg W$

This is not valid. It is an instance of affirming the consequent. Don't be misled by the fact that (2) is a negation: that isn't enough to make this an instance of **MT**. To be an instance of **MT**, (2) would need to be the negation of the consequent of (1), so $\Lneg\Lneg P$.

</div>

1.  Provided that there is order in the world, God exists.
2.  God doesn't exist.
3.  $\ERGO$ There isn't order in the world.

<div class="answers">

1.  $W\Lif P$
2.  $\Lneg P$
3.  $\ERGO\Lneg W$

This is valid, and it is an instance of **MT**.

</div>

## Double Negation

The fourth rule is **Double Negation** (**DN**). I've already introduced one of its two forms:

**Double Negation Elimination** (**DNE**)
:   $\Lneg\Lneg$ <input class="copyMe P sym slot" type="text" > $\ERGO$ <input class="copyMe P sym slot" type="text" >

The other form is:

**Double Negation Introduction** (**DNI**)
:   <input class="copyMe P sym slot" type="text" > $\ERGO\Lneg\Lneg$ <input class="copyMe P sym slot" type="text" >

Again, here are the vertical representations:

| $\PERG\Lneg\Lneg$ <input class="copyMe P sym slot" type="text" >
| $\ERGO$ <input class="copyMe P sym slot" type="text" >

and

| $\PERG$ <input class="copyMe P sym slot" type="text" > 
| $\ERGO\Lneg\Lneg$ <input class="copyMe P sym slot" type="text" >

Examples, in English:

1. It is not the case that I am not happy.
2. $\ERGO$ I am happy.

and

1. I am happy.
2. It is not the case that I am not happy.

## Test Your Understanding

For each of the following arguments, symbolize the argument, then say whether or not it is valid, and whether or not it is an instance of **R**, **MP**, **MT**, or **DN**.

1.  You can't always get what you want.
2.  $\ERGO$ It is not the case that you can always get what you want.

<div class="answers">

$W$
:   You can always get what you want.

1.  $\Lneg W$
2.  $\ERGO\Lneg W$

This is valid. It is an instance of **R**.

</div>

1.  You can always get what you want.
2.  $\ERGO$ It is not the case that you can't always get what you want.

<div class="answers">

1.  $W$
2.  $\ERGO \Lneg\Lneg W$

Valid. **DN** (more specifically, **DNI**).

</div>

1.  You can't always get what you want if you should try some time.
2.  You can always get what you want.
3.  $\ERGO$ You shouldn't try some time.

<div class="answers">

$T$
:   You should try some time.

1.  $T\Lif\Lneg W$
2.  $W$
3.  $\ERGO\Lneg T$

This is valid. But it is not an instance of any of our rules. We can show that it is valid in two steps. First, apply **DNI** to (2), yielding,

| $\Lneg\Lneg W$

Now, apply **MT** to this and (1), to get (3).

This is an important example to think about and understand. For an argument to be an instance of one of our rules, it *must fit the pattern exactly*.

</div>


# Recognizing Rules

Remember, the four rules are argument *patterns*. Any symbolic sentences can be plugged in for the boxes and the circles to provide an instance of the pattern. The rules are easiest to recognize when we plug sentence letters into the boxes and circles. For example,

| $\PERG\Lneg\Lneg S$
| $\ERGO S$

and

| $\PERG Q\Lif T$
| $\PERG\Lneg T$
| $\ERGO\Lneg Q$

The patterns can be harder to see when we plug molecular sentences into the boxes and circles. For example,

| $\PERG\Lneg\Lneg((P\Lif Q)\Lif\Lneg(R\Lif Q))$
| $\ERGO((P\Lif Q)\Lif\Lneg(R\Lif Q))$

is an instance of **DNE**, and 

| $\PERG P\Lif (Q\Lif R)$
| $\PERG P$
| $\ERGO Q\Lif R$

is an instance of **MP**.

To be an instance of a rule, an argument must fit the pattern *exactly*. This is *not* an instance of **MP**:

| $\PERG P\Lif (Q\Lif R)$
| $\PERG P\Lif Q$
| $\ERGO R$

The second premise, $P\Lif Q$, is not the antecedent of the first. One thing you can do to help see this is try to draw the boxes and circles in. To try to make this fit the rule **MP**, you would need to draw a box around $P\Lif (Q$, but that is not a well-formed sentence.

The rules only apply to **complete sentences**. This is not an instance of **DNE**, because the sentence on the first line is not a double negation:

| $\PERG P\Lif\Lneg\Lneg Q$
| $\ERGO P\Lif Q$

When you are trying to figure out if an inference fits the pattern, you need to think of the sentences as they look in *official notation*. This is *not* an instance of **DNE**:

| $\PERG\Lneg\Lneg P\Lif Q$
| $\ERGO P\Lif Q$

The premise, written in informal notation, might appear to be a double negation. But it is not, as is clear when we write it in official notation:

| $\PERG (\Lneg\Lneg P\Lif Q)$

Again, to be an instance of a rule, the argument must fit the pattern exactly. You will often be tempted to "skip steps", relying on your insight and not respecting the patterns. For example,

|  $P\Lif\Lneg Q$
|  $Q$
|  $\ERGO\Lneg P$

is not an instance of **MT**, because the second premise, $Q$, is not the negation of of the consequent of the first, $\Lneg Q$. The negation of $\Lneg Q$ is $\Lneg\Lneg Q$. It is easy to derive this from $Q$, using **DNI**. But you cannot skip that step, and pretend that the pattern fits **MT**.

In the same way,

|  $\Lneg\Lneg\Lneg\Lneg P$
|  $\ERGO P$

is not an instance of **DNE**, though it is easy to get from the premise to the conclusion by two applications of **DNE**.

## Test Your Understanding

You might wish, at this point, to complete the "Recognizing Rules" portion of [HW03], before returning to read more about derivations.

# Direct Derivations

One way to show that an argument is valid is to construct a **derivation** of the conclusion from the premises. A **derivation** involves a series of inferences, each in accordance with the **rules**, from the premises to the conclusion.

So, consider the following argument:

| The world is your oyster.
| If the world is your oyster, you are a pearl.
| If you are a pearl, you are made out of layers of oyster snot.
| $\ERGO$ You are made out of layers of oyster snot.

Or, in symbols (assuming an appropriate scheme of abbreviation):

| $Y$
| $Y\Lif P$
| $P\Lif S$
| $\ERGO S$

We can get from the premises to the conclusion by two applications of **Modus Ponens**. We might describe this informally as follows:

1. **To Be Shown**: You are made out of layers of oyster snot.
2. \ \ \ The world is your oyster. (**Premise**)
3. \ \ \ If the world is your oyster, you are a pearl. (**Premise**)
4. \ \ \ You are a pearl. (From 2 and 3, by **Modus Ponens**)
5. \ \ \ If you are a pearl, you are made out of layers of oyster snot. (**Premise**)
6. \ \ \ You are made out of layers of oyster snot. (From 4 and 5 by **Modus Ponens**)
7. \ \ \ QED (Line (6) is what was to be shown.)

Here is the same line of reasoning, now in symbols, with some abbreviations:

<div class='derivation'>

--- ---- -------------------------  --------
1.  Show $S$                      
2.       $Y$                        PR
3.       $Y\Lif P$                  PR
4.       $P$                        2,3 MP
5.       $P\Lif S$                  PR
6.       $S$                        4,5 MP
7.                                  6 DD
--- ---- -------------------------  --------

</div>

Here 'Show' stands for 'To Be Shown'. We call line (1) a "Show Line". It is how we announce, at the beginning of a derivation, the conclusion we are after.

'PR' stands for 'Premise'. The point of a derivation is to reason from the premises to the conclusion. So 'PR' lets us know that the sentence on that line is one of the premises.

'MP' stands for 'Modus Ponens'. So, for example, on line (4), we are claiming that $P$ follows from lines (2) and (3) by Modus Ponens.

'DD' stands for 'Direct Derivation'. On line (7), we are claiming that the sentence on line (6) is the sentence that needed to be shown, as announced on line (1).

(I know some of you have been exposed to logic before, and learned how to do some derivations. It is unlikely that the system of derivation you learned included "Show Lines". There are a few different ways we can design a system for constructing derivations, and different textbooks use different systems. I'd be happy to talk with you more about how our system compares the other system you learned.)

There is one other thing we will do when we construct derivations. It is called "Boxing and Canceling", and we do it when we have successfully completed a derivation. Here is what the completed derivation looks like, when we have boxed and canceled:

<div class='derivation'>

--- ----------------   -------------------------  --------
1.  !Show              $S$                      
2.                     ┌ $Y$                      PR
3.                     │ $Y\Lif P$                PR
4.                     │ $P$                      2,3 MP
5.                     │ $P\Lif S$                PR
6.                     │ $S$                      4,5 MP
7.                     └                          6 DD
--- ----------------   -------------------------  --------

</div>

The 'boxing' refers to the box we've drawn around lines 2 through 6. The 'canceling' refers the line we've drawn through the word 'Show'. 

Conceptually, the canceling is meant to indicate that the sentence on line (1) is no longer just something we are trying to show, but is something we have established. An uncanceled show line is a statement of intention, so,


<div class='derivation'>

--- ---- -------------------------  --------
1.  Show $S$                      
--- ---- -------------------------  --------

</div>

should be read as,

-   I intend to show that you are are made out of layers of oyster snot.

A canceled show line is no longer a statement of intention: it is as if the word 'Show' has been deleted. So,

<div class='derivation'>

--- ----------------   -------------------------  --------
1.  !Show              $S$                      
--- ----------------   -------------------------  --------

</div>

should be read as,

-   You are made out of layers of oyster snot.

The point of the boxing won't be entirely apparent until we consider more complex derivations. But the idea is this: the sentences in the box were all in service of establishing the sentence on the show line. Now that we have successfully done that, and canceled the show line, we box them up to indicate that we are done with them, because they have served their purpose.

# What Next?

Please complete [HW03] in the Logic Software.

  [HW03]: https://logiclx.humnet.ucla.edu/Logic/Student/Course/378#HW03

