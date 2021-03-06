---
title: Logical Form and Formal Validity
...


Logical Form and Formal Validity
================================

Often, the validity of an argument is connected to its **logical form**. 
Consider:

<div class="cor">

1.  No <input class="copyMe A slot" type="text" placeholder="cars"> are
    <input class="copyMe B slot" type="text" style="width:10em" placeholder="allowed in the park">.
2.  All
    <input class="copyMe C slot" type="text" style="width:8em" placeholder="police cruisers">
    are <input class="copyMe A slot" type="text" placeholder="cars">.
3.  Therefore, all
    <input class="copyMe C slot" type="text" style="width:8em" placeholder="police cruisers">
    are not
    <input class="copyMe B slot" type="text" style="width:10em" placeholder="allowed in the park">.

Arguments of this form are always valid. No matter what noun or noun phrase you plug in to
<input class="copyMe A slot" type="text" placeholder="cars">, <input
class="copyMe B slot" type="text" style="width:10em" placeholder="allowed in the park">, and <input class="copyMe C slot" type="text" style="width:8em"
placeholder="police cruisers">, if the premises are true, the conclusion will
be true too.

(Try it: click on the box containing 'cars' and type in 'mammals'; click on
the other boxes and type in 'egg-layers' and 'platypus'. Is the resulting
argument valid?) 

</div>

<div class=".cor">

Here is another argument form that involves three terms:

1.    Some <input class="copyMe A slot" type="text" placeholder="As"> are
    <input class="copyMe B slot" type="text" placeholder="Bs">
2.    Some <input class="copyMe B slot" type="text" placeholder="Bs"> are
    <input class="copyMe C slot" type="text" placeholder="Cs">
3.  ∴ Some <input class="copyMe A slot" type="text" placeholder="As"> are
    <input class="copyMe C slot" type="text" placeholder="Cs">

Arguments of this form are not always valid. Can you find values for
<input class="copyMe A slot" type="text" placeholder="As">,
<input class="copyMe B slot" type="text" placeholder="Bs">, and
<input class="copyMe C slot" type="text" placeholder="Cs"> that make both of
the premises true and the conclusion false?

</div>

<div class="answers">

Here is one way to do it: let 'As' be 'cats'; let 'Bs' be 'animals'; let 'Cs'
be 'dogs'.

</div>

According to our official definition, validity has to do with what is or isn't
possible. To check whether or not a given argument is valid, we try to imagine
a possible situation in which all the premises are true but the conclusion is
false:

~~~ {.dot}
digraph G {
   graph [rankdir=UD]
   subgraph clusterarg {
       premise -> conclusion:n;
       premise [shape="record" label="Some\ dogs\ are\ small dogs|Some\ dogs\ are\ \Chihuahuas"];
       conclusion [label="Some\ Chihuahuas\ are\ small\ dogs", shape="box"];
   }
   possiblity [label="A possible situation:\nYorkshire Terriers are small
   dogs\nChihuahuas are big dogs", style="dotted"]l
   premise -> possibility [lhead=clusterarg]
   }
~~~



In the previous section, we saw that validity had to do with what is or isn't
possible: is it possible that all the premises be true but the conclusion
false? Figuring out what is or isn't possible requires a lot of imagination,
and it isn't always clear what we should say.[^1]

But formal validity is more straightforward.

<div class="boxed">

**Formal Validity**
:   An argument is **formally valid** just in case there is no argument with
    the same logical form that has all true premises and a false conclusion.

</div>

We can test the formal validity of an argument by trying to find an argument
that has the same logical form whose premises are *actually* true, and whose
conclusion is *actually* false.

Let's practice.

The following form is invalid. Show this by finding values for 'A', 'B', and
'C' that make the premises true and the conclusion false.

1.    Some <input class="copyMe A slot" type="text" placeholder="As"> are
    <input class="copyMe B slot" type="text" placeholder="Bs">
2.     All <input class="copyMe B slot" type="text" placeholder="Bs"> are not
    <input class="copyMe C slot" type="text" placeholder="Cs">
3.  ∴  All <input class="copyMe A slot" type="text" placeholder="As"> are not
    <input class="copyMe C slot" type="text" placeholder="Cs">

<div class="answers">

Here is one way to do it: let 'A' be 'numbers', 'B' be 'odd numbers', and 'C'
be 'divisible by two'. Then the premises are both true, but the conclusion is
false.

Here is another way to do it: let 'A' be 'animals', 'B' be 'dogs', and 'C' be
'cats'.

</div>

Is this form valid? Try to find values for 'A', 'B', and 'C' that make the
premises true and the conclusion false.

1.    All <input class="copyMe A slot" type="text" placeholder="As"> are
    <input class="copyMe B slot" type="text" placeholder="Bs">
2.    All <input class="copyMe B slot" type="text" placeholder="Bs"> are
    <input class="copyMe C slot" type="text" placeholder="Cs">
3.  ∴ All <input class="copyMe A slot" type="text" placeholder="As"> are
    <input class="copyMe C slot" type="text" placeholder="Cs">

<div class="answers">

The form is valid. No matter what nouns you plug in for 'A', 'B', and 'C', if
the premises are true, the conclusion will be true too. Aristotle called this
argument form "Barbara".

Notice that we cannot really *show* that the argument is valid. All we can do
is try to come up with an example that shows that it is invalid. When we
cannot come up with any such examples, how can we be sure that this is not
simply due to our lack of imagination?

</div>

Is this form valid?

1.    Some <input class="copyMe A slot" type="text" placeholder="As"> are
    <input class="copyMe B slot" type="text" placeholder="Bs">
2.  ∴ Some <input class="copyMe B slot" type="text" placeholder="Bs"> are
    <input class="copyMe A slot" type="text" placeholder="As">

<div class="answers">

Yes, it is.

</div>

Sentential Logic: 'if' and 'not'
================================

In the previous section, we took the common nouns that occurred in an
argument---words like 'platypus' and 'police car'---to be the non-logical
*content* of an argument---and we took the words that surrounded them---words
like 'all', 'some', 'no', 'not', and 'are'---to indicate the logical form of
the argument.

The resulting logic is called **Term Logic** (or sometimes **Aristotelean
Logic**, because this was the sort of logic that Aristotle developed). It is
also called **Traditional Logic**, because it was the logic most widely used
throughout the medieval and early modern periods. But this is not the only way
one might think about logical form.

<div class="cor">

Consider the following argument:

1.  If
    <input class="copyMe P slot" type="text" style="width:12em" placeholder="the governor is corrupt">,
    then
    <input class="copyMe Q slot" type="text" style="width:17em" placeholder="he should be thrown in prison">.
2.  <input class="copyMe P slot" type="text" style="width:12em" placeholder="the governor is corrupt">
3.  ∴
    <input class="copyMe Q slot" type="text" style="width:17em" placeholder="he should be thrown in prison">.

This argument is valid: any possible situation that makes both premises true
makes the conclusion true too.

Further, the argument is formally valid. Replace
<input class="copyMe P slot" type="text" style="width:12em" placeholder="the governor is corrupt">
with any sentence, and
<input class="copyMe Q slot" type="text" style="width:17em" placeholder="he should be thrown in prison">
with any sentence, and the resulting argument will also be valid. Try it, by
typing in other sentences into the box and the circle.

</div>

Here is another argument, similar but slightly different in form:

1.  If capital punishment deterred crimes, then it is justified.
2.  Capital punishment does not deter crimes.
3.  ∴ Capital punishment is not justified.

Is this argument valid? The answer may not be immediately obvious. We can
represent the form of the argument as,

1.  If <input class="copyMe P slot" type="text" >, then
    <input class="copyMe Q slot" type="text" >
2.  It is not the case that <input class="copyMe P slot" type="text" >
3.  ∴ It is not the case that <input class="copyMe Q slot" type="text" >

Can you find sentences that, when plugged into the box and circle, make the
premises true but the conclusion false? (Note that the box and circle are
still interactive: you can type sentences into them.)

<div class="answers">

Try plugging in 'Hilary Clinton is President' into the box and 'a Democrat is
President' into the circle. Then the premises are both true, but the
conclusion is false.

</div>

This invalid form of argument is a fairly common **logical fallacy**---that
is, logical mistake people make when reasoning. It is common enough that it
has a name: *denying the antecedent*.

To understand that name, you need to know a few more technical terms. We call
an 'if ... then ...' sentence a **conditional**. We call the 'if'-part of a
conditional the **antecedent**, and we call the 'then'-part the
**consequent**. So, for example, here is a conditional:

-   If Bonzo is an ape, then he should go to bed,

The antecedent is 'Bonzo is an ape'. The consequent is 'Bonzo should go to
bed'. So, to *deny* the antecedent of this conditional would be to say that
the Bonzo is not an ape.

Here are four common forms of argument that involve conditionals. Which are
valid and which are invalid?

<div class="boxed">

**Modus Ponens**:

> If <input class="copyMe P slot" type="text" >, then
> <input class="copyMe Q slot" type="text" >.\
> <input class="copyMe P slot" type="text" >\
> $∴$ <input class="copyMe Q slot" type="text" >

</div>

<div class="boxed">

**Denying the Antecedent**

> If <input class="copyMe P slot" type="text" >, then
> <input class="copyMe Q slot" type="text" >.\
> It is not the case that <input class="copyMe P slot" type="text" >\
> $∴$ It is not the case that <input class="copyMe Q slot" type="text" >

</div>

<div class="boxed">

**Affirming the Consequent**

> If <input class="copyMe P slot" type="text" >, then
> <input class="copyMe Q slot" type="text" >.\
> <input class="copyMe Q slot" type="text" >\
> $∴$ <input class="copyMe P slot" type="text" >

</div>

<div class="boxed">

**Modus Tollens**: If P, then Q. It is not the case that Q. ∴ It is not the
case that P.

> If <input class="copyMe P slot" type="text" >, then
> <input class="copyMe Q slot" type="text" >.\
> It is not the case that <input class="copyMe Q slot" type="text" >\
> $∴$ It is not the case that <input class="copyMe P slot" type="text" >

</div>

Which of these four forms are valid, and which invalid? Try to work out your
answer before clicking the box below.

<div class="answers">

The first and last forms, with the weird Latin names, are valid. The other two
are invalid. For the invalid forms, can you come up with sentences that make
the premises true but the conclusion false?

</div>

There are other ways to combine sentences to form new more complicated
sentences. For example, given the sentences
<input class="copyMe P slot" type="text" style="width: 10em" placeholder='Bonzo is an ape'>
and
<input class="copyMe Q slot" type="text" style="width: 15em" placeholder='Reagan was President'>,
we can form sentences like,

-   <input class="copyMe P slot" type="text" style="width: 10em" placeholder='Bonzo is an ape'>
    and
    <input class="copyMe Q slot" type="text" style="width: 15em" placeholder='Reagan was President'>.

-   <input class="copyMe P slot" type="text" style="width: 10em" placeholder='Bonzo is an ape'>
    or
    <input class="copyMe Q slot" type="text" style="width: 15em" placeholder='Reagan was President'>.

-   <input class="copyMe P slot" type="text" style="width: 10em" placeholder='Bonzo is an ape'>
    just in case
    <input class="copyMe Q slot" type="text" style="width: 15em" placeholder='Reagan was President'>.

These examples all share an important feature: the truth or falsehood of the
complex sentence is a function of the truth or falsehood of its component
parts.

This isn't always true. Consider,

-   <input class="copyMe P slot" type="text" style="width: 22em" placeholder='Renacci voted against the gun control bill'>
    because
    <input class="copyMe Q slot" type="text" style="width: 15em" placeholder='The NRA gave Renacci $9,900'>.

Both of the component sentences are true. The NRA gave Senator Jim Renacci
\$9,900 in support of his 2012 election campaign, and Renacci voted against a
gun control bill. But that is not enough to tell us whether or not the complex
sentence is true, whether the contribution in fact influenced his vote.

Review
------

The aim of this page was to provide you a first introduction to logic. Key
terms that were defined include **logic**, **argument**, **premise**,
**conclusion**, **valid**, **sound**, **formally valid**, **conditional**,
**antecedent**, and **consequent**. You were introduced to two kinds of
logical form---the sort studied by term logic and the sort studied by
sentential logic. In the next chapter, we will begin developing sentential
logic.

[^1]: Cows are mammals. Might they not have been? If not, the argument

    1.  Grass is green.
    2.  ∴ Cows are mammals.

    is valid, by our definition. Is it formally valid?
