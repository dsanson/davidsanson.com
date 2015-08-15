---
author: David Sanson
title: Introduction (Supplement to Chapter 0)
...

What is This?
=============

This is a brief introduction to logic. Some key concepts are introduced, some
examples are given of how to apply those concepts, and a little bit is said
about how logic fits into the larger scheme of things. The most important
concepts are in **bold**.

What is Logic?
==============

**Logic** is the study of correct and incorrect reasoning. Logicians want to
understand what makes good reasoning good and what makes bad reasoning bad.
Understanding this allows us to avoid making mistakes in our own reasoning,
and it allows us to evaluate the reasoning of others.

Logic lies at the foundation of mathematics, where it allows us to provide a
clear and rigorous account of mathematical proof. It also plays a central role
in philosophy, where we use logic to help us reason as clearly and rigorously
as possible about hard questions about ourselves, and about knowledge,
reality, truth, beauty, good and bad.

Logic also lies at the foundation of computer science: a computer is a logic
machine. And a mind is, at least in part, a logic machine too, so logic lies
at the foundation of cognitive science and philosophy of mind.

It also lies at the foundation of linguistics, providing the tools we use for
thinking about linguistic structure (syntax) and linguistic meaning
(semantics).

![Aristotle (384-322 BCE)][]

![George Boole (1815-1864)][]

![Gottlob Frege (1848-1925)][]

Logic is one of the [traditional sub-disciplines of Philosophy][] and one of
the seven traditional "[liberal arts][]", alongside arithmetic, geometry,
astronomy, music, grammar, and rhetoric. In a medieval university, students
would begin by studying grammar, logic, and rhetoric, before going on
to study the four other liberal arts. Advanced students might then study
philosophy and theology. (At the time, "philosophy" included what we would now call the "natural sciences": physics, biology,
psychology, chemistry.)

The [first logician was Aristotle][] (384-322 BCE). But the logic we use and study these days---sometimes called "Modern Logic" or "Contemporary Logic"---was developed in the 19th and early 20th centuries. Important early works include George Boole's *[The Laws of Thought][]* (1854), and [Gottlob Frege's][] *Begriffsschrift* ("Concept Script"), (1879) and *Grundgesetze der Arithmetik* ("Basic Laws of Arithmetic) (1892).

Representing Reasoning
======================

Logic aims to develop a theory of good and bad reasoning. But before we can
evaluate a given piece of reasoning, we need a way to represent it.

When we reason, we reason *from* some given information *to* some new
information. We can represent this using a visual diagram:

~~~{.dot}
digraph G {graph [fontname = "helvetica"]; node [fontname = "helvetica"]; edge [fontname = "helvetica"];
   premise -> conclusion;
   premise [label="given information", shape="box"];
   conclusion [label="new information", shape="box"];
   }
~~~

We call a piece of reasoning an **argument**, the information you reason from
a **premise**, and the information you reason to the **conclusion**.

So, for example, given the information that that Andrew is vegetarian, you
might reason to the conclusion that Andrew does not eat chicken:

~~~{.dot}
digraph G {
   premise -> conclusion;
   premise [label="Andrew is vegetarian", shape="box"];
   conclusion [label="Andrew does not each chicken", shape="box"];
   }
~~~

But this diagram leaves something out. When you reasoned from the premise to
the conclusion, you relied on some additional information---your background
knowledge about vegetarians and chickens. This additional information gave you
some additional premises to reason from. Here is a more explicit
representation of your premises and conclusion:

~~~{.dot}
digraph G {
   premise -> conclusion;
   premise [label="Andrew is vegetarian", shape="box"];
   premise2 -> conclusion;
   premise2 [label="Vegetarians don't eat animals", shape="box"];
   premise3 -> conclusion;
   premise3 [label="Chickens are animals", shape="box"];
   conclusion [label="Andrew does not each chicken", shape="box"];
   }
~~~

As this example shows, we often reason from several premises to a given
conclusion. Notice that, in the example, the conclusion does not follow from
any one of the premises, taken by itself. It only follows from all the
premises, taken together.

We can also reason from some premises to several different conclusions. We
could represent such reasoning as all of one piece: 

~~~{.dot}
digraph G {
   premise -> conclusion1;
   premise -> conclusion2;
   premise [label="Alice, Bob, and Christina are teammates", shape="box"];
   premise2 -> conclusion1;
   premise2 -> conclusion2;
   premise2 [label="Alice is the tallest player on her team", shape="box"];
   conclusion1 [label="Alice is taller than Bob", shape="box"];
   conclusion2 [label="Alice is taller than Christina", shape="box"];
   } 
~~~

But we will instead assume that each argument has one conclusion, and so
represent this reasoning as two separate arguments:

~~~{.dot}
digraph G {
   premise -> conclusion1;
   premise [label="Alice, Bob, and Christina are teammates", shape="box"];
   premise2 -> conclusion1;
   premise2 [label="Alice is the tallest player on her team", shape="box"];
   conclusion1 [label="Alice is taller than Bob", shape="box"];
   } 
~~~

~~~{.dot}
digraph G {
   premise -> conclusion2;
   premise [label="Alice, Bob, and Christina are teammates", shape="box"];
   premise2 -> conclusion2;
   premise2 [label="Alice is the tallest player on her team", shape="box"];
   conclusion2 [label="Alice is taller than Christina", shape="box"];
   } 
~~~

These diagrams provide a nice visual way of representing an argument. But it
is often more convenient to represent an argument as a simple list of the
premises followed by the conclusion:[^1]

![No Cars Allowed][]

1.  No cars are allowed in the park.
2.  All police cruisers are cars.
3.  Therefore, all police cruisers are not allowed in the park.

Here the premises are (1) and (2), and the conclusion is (3). We know that (3)
is the conclusion because it is the last sentence in the list. We also know
that it is the conclusion because it is marked by the word 'therefore'.
Because we are going to be looking at a lot of arguments, it is useful to
introduce a special symbol for marking conclusions, '∴', which can be read as
"therefore".

<div class="boxed">

**Premise-Conclusion Form**. When we represent an argument as a list of
premises followed by the conclusion, we say that we have put it in
**premise-conclusion form**.

</div>

Arguments are everywhere. You can find them in blogs, magazine articles,
textbooks, and newspaper editorials. They often pop up in conversations. But
they are not usually presented in premise-conclusion form. So the first
practical skill you need to learn, if you want to apply the tools of logic, is
the skill of representing these arguments in premise-conclusion form.

For the sake of practice, it is helpful to have lots of examples. Happily, a
textbook with many nice examples has been made available for free online.

<div class='boxed'>

**Test Your Understanding**

Research shows that it is easy to read something and feel like you understood
it, even when you didn't. Most of us feel like we understand so long as we
know what most of the words in a sentence mean, even if we don't really grasp
the ideas being communicated.

So, throughout these supplements, you will be provided with opportunities to
stop and test your understanding. Please don't skip this. If you get a
question wrong, go back and re-read the preceding paragraphs with an eye to
figuring out what you missed.

</div>


Here is an argument:

1.  Some pigs have wings.
2.  Everything with wings can fly.
3.  Therefore, some pigs can fly.

What are the premises of this argument? What is its conclusion? When you think
you know the answer, click on the gray box below:

<div class="answers">

The premises are 'Some pigs have wings' and 'Everything with wings can fly'.
The conclusion is 'Some pigs can fly'.

</div>

Here is another argument:

> We need to raise the capital gains tax. We need to do this because a low capital gains tax provides a disproportionate benefit to the wealthiest citizens. It serves only to increase the gap between the super-wealthy and the rest of us, and we need to decrease that gap.

What are the premises of this argument? What is the conclusion?

<div class="answers">

The conclusion is, 'We need to raise the capital gains tax.' The premises are
'A low capital gains tax provides a disproportionate benefit to the wealthiest
citizens,' 'A low capital gains tax serves only to increase the gap between
the super-wealthy and the rest of us,' and 'we need to decrease the gap
between the super-wealthy and the rest of us.'

</div>

Soundness and Validity
======================

Consider again the argument, 

1.  No cars are allowed in the park.
2.  All police cruisers are cars.
3.  Therefore, all police cruisers are not allowed in the park.

This is a good argument. The third sentence, (3), *follows* from the first two
sentences. If we assume that (1) and (2) are true, then (3) must be true as
well.

Here is another argument:

1.  No mammals lay eggs.
2.  All platypus are mammals.
3.  Therefore, all platypus don't lay eggs.

Again, this is also a good argument, in just the same way: the third sentence
*follows* from the first two. If we assume that (1) and (2) are both true,
then (3) must be true too.

But there is also a clear sense in which this is a *bad* argument, since the
first premise is false: some mammals do lay eggs. And the conclusion is false:
platypus do lay eggs. If someone were to give you this argument in an attempt
to convince you that platypus don't lay eggs, you would not be convinced!

So arguments are kind of like friends. Just as a friend can be good in one way
but bad in another---a good listener but bad at keeping secrets, say---an
argument can be good in one way but bad in another. This means that we need to
distinguish two senses in which an argument can be good or bad.

The first sense in which an argument can be good is called *validity*. To say
that an argument is valid is to say that the premises, if they were true,
would guarantee the truth of the conclusion. That is, more precisely,

<div class="boxed">

An argument is **valid** just in case it is impossible for all of its premises
to be true but its conclusion false.

</div>

Remember that an argument is a piece of reasoning, *from* some given
information---the premises---*to* some new information---the conclusion. When
we ask whether or not an argument is valid, we are not asking about the
quality of the information; we are only asking about the quality of
the reasoning from that information to the conclusion: 

~~~{.dot}
digraph G {
   premise -> conclusion [label=" ?"];
   premise [label="premises", shape="box"];
   conclusion [label="conclusion", shape="box"];
   }
~~~

Here is an example of an invalid argument:

1.  If Obama is President, then a Democrat is President.
2.  A Democrat is President.
3.  ∴ Obama is President.

As I write this, (1), (2) and (3) are all true. But the argument is not valid:
it is perfectly possible that (1) and (2) be true but (3) false, because it is
perfectly possible that some other Democrat be President.



So the following argument is valid:

1.  The world is either round or flat.
2.  If the world is round, people on the bottom of the world fall off.
3.  People on the bottom of the world don't fall off.
4.  ∴ The world is flat. 

When we say that this argument is valid, we are saying that there is nothing wrong here with the reasoning: if we assume that (1), (2),
and (3) are all true, then (4) must be true as well.

The second sense in which an argument can be good is called *soundness*.

<div class="boxed">

An argument is **sound** just in case it is valid and all of its premises are
true.

</div>

You are probably familiar with the saying "Garbage in, garbage out". When you
reason from false premises, even if your reasoning is valid, you have no
reason to suppose that your conclusion is true. So when we ask whether or not
an argument is sound, we are not just asking about the quality of the
reasoning, but *also* about the quality of the information that we are
reasoning from:

~~~{.dot}
digraph G {
   premise -> conclusion [label=" ?"];
   premise [label="premises?", shape="box"];
   conclusion [label="conclusion", shape="box"];
   }
~~~

The argument above, for the
conclusion that the world is flat, is valid but it is not sound, because
premise (2) is false: it is not true that if the world were round, people on
the bottom would fall off.



, and the second has to do
with the actual *truth* or *falsehood* of the premises. Logic is not concerned
with the actual truth or falsehood of premises or conclusion. If you want to
know whether or not mammals lay eggs, ask a biologist, not
a logician. Logic is concerned with whether the conclusion *would* follow, if
the premises *were* true.

<div class="boxed">

![Augustus De Morgan (1806-1871)][]

*Whether the premises be true or false, is not a question of logic, but of
morals, philosophy, history or any other knowledge to which their
subject-matter belongs. The question of logic is: does the conclusion
certainly follow if the premises be true?* [@de-morgan1840a, p. 3]

</div>

It is time to test your understanding, by applying these definitions to some
examples.

Here is an argument:

1.  Some pigs have wings.
2.  Everything with wings can fly.
3.  ∴ Some pigs can fly.

Is it valid? Is it sound?

<div class="answers">

It is not sound, because both of the premises are false (why is (2) false?)
But it is valid!

</div>

What about this argument? Is it valid? Sound?

1.  A good university must have a good library.
2.  ISU has a good library.
3.  ∴ ISU is a good university.

<div class="answers">

It is not valid: suppose (1) and (2) were both true; that's not be enough to
guarantee the truth of (3). Perhaps a good university must have both a good
library *and* a great football team, for example.

Since it is not valid, it is not sound.

</div>

Can a valid argument have a false conclusion? If so, what would an example be?

<div class="answers">

Yes, a valid argument can have a false conclusion. We've already seen an
example:

1.  Some pigs have wings.
2.  Everything with wings can fly.
3.  ∴ Some pigs can fly.

To check if the example you came up with was correct, ask yourself two
questions:

1.  Is the conclusion false?
2.  If all the premises were true, would the conclusion have to be true too?

If the answer to both of these question is yes, then your example was correct.

</div>

Can a valid argument with all true premises have a false conclusion? If so,
what would an example be?

<div class="answers">

No! If the argument is valid, then there is no possible situation in which all
the premises are true, but the conclusion false. So if all the premises are in
fact true, the conclusion must in fact be true too.

</div>

Can a valid argument have false premises but a true conclusion? If so, what
would an example be?

<div class="answers">

Yes! Here is one example:

1.  Fish are mammals.
2.  Whales are fish.
3.  ∴ Whales are mammals.

</div>

Suppose you know that an argument is sound. What do you know about its
conclusion? Stop and think about this---the answer is implicit in the
definitions of validity and soundness just given.

<div class="answers">

If an argument is sound, all of its premises are true and it is valid. That is
(plugging in the definition of validity), all of its premises are true and it
is impossible for all of its premises to be true but its conclusion false. So
we know that its conclusion is not false. So we know that its conclusion is
true.

</div>

In philosophy---and, indeed, in daily life---we want our arguments are sound.
As responsible reasoners, we want to be reasoning *validly* from true
premises, and so to true conclusions.

For example, it is easy to come up with a *valid* argument for the existence
of God, but hard to come up with an uncontroversially *sound* argument for the
existence of God. Try it! Try to formulate a *valid* argument whose conclusion
is 'God exists'. Are the premises uncontroversially true?

<div class="answers">

That was an open-ended question, so I hope you didn't click on this box hoping for an answer! Here is one example of a valid argument for
the existence of God:

1.  The moon is made of green cheese.
2.  If the moon is made of green cheese, then God exists.
3.  ∴ God exists.

This argument is valid----if the premises were true, the conclusion would have
to be true too. But the first premise is clearly false, so the argument is not
sound.

Here is another example of a valid argument for the existence of God:

1.  The Bible says God exists.
2.  Everything the Bible says is true.
3.  ∴ God exists.

Again, this is valid---if the premises were true, the conclusion would have to
be true too. But is it sound? Are the premises true? Some Christians believe
that it is---they believe that both premises are true. But many Christians and
most non-Christians will reject premise (2), claiming that it is false. Who's
right and who's wrong? That's not a question that logic alone can answer.

<div class="boxed">

Famously, Paul says, in Titus 1:12-13,

> One of themselves, even a prophet of their own, said, the Cretans are always liars, evil beasts, slow bellies. This witness is true.

But logic tells us that these two sentences cannot both be true:

-   A Cretan said, "Every Cretan always lies.
-   What that Cretan said was true.

Does this show that premise (2) is false?

</div>

</div>

Again, it is easy to come up with a *valid* argument for the non-existence of
God, but hard to come up with an uncontroversially *sound* argument for that
same conclusion. Try it!

<div class="answers">

Here is an example of a valid argument that is obviously unsound:

1.  The moon is made of green cheese.
2.  If the moon is made of green cheese, then God doesn't exist.
3.  ∴ God doesn't exist.

Here is an example of a valid argument whose soundness is unclear:

1.  If God existed, there would be no evil in the world.
2.  There is evil in the world.
3.  ∴ God does not exist.

Some philosophers argue that (1) and (2) are both true, and so the argument is
sound. Others reject the truth of (1) or (2), claiming that the argument is
valid but not sound. Who's right and who's wrong? Again, not a question that
can be answered by logic alone.

</div>

Review
------

We've introduced five key terms: **argument**, **premise**, **conclusion**,
**valid**, **sound**. The first three are defined in terms of each other:

<div class="boxed">

**Arguments, Premises, Conclusions**
:   An **argument** is piece of reasoning that can be represented by a set of
    sentences, called the **premises**, followed by a sentence, called the
    **conclusion**. The conclusion is supposed to follow from the premises.

</div>

We should add one further point of clarification: the sentences that are used
to express the premises and the conclusion must be *declarative
sentences*---that is, the kinds of sentences that are true or false. They
cannot be questions or commands, for example.

And then we have our definitions of soundness and validity:

<div class="boxed">

**Validity**
:   An argument is **valid** just in case it is impossible that all the
    premises be true but the conclusion false.

**Soundness**
:   An argument is **sound** just in case it is valid and all of its premises
    are true.

</div>

This is **not** an argument. Can you explain why?

1.  It is important to eat fruits and vegetables.
2.  ∴ Eat your fruits and vegetables!

<div class="answers">

This is not an argument because the conclusion is an imperative sentence---a
sentence used to give a command---rather than a declarative sentence---a
sentence used to say something true or false.

It is possible to develop a logic that includes imperatives, but that is
beyond the scope of this course. Computer programming languages often take
this form. Consider:

1.  If the user clicks on the icon, then open the app!
2.  The user clicks on the icon.
3.  ∴ Open the app!

</div>

Logical Form and Formal Validity
--------------------------------

Often, the validity of an argument is connected to its **logical form**. Both
of our sample arguments from the previous section---the one about the cars and
the one about the platypus---have the same logical form. Consider:

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

Each of the boxes above is actually a text input box: you can type in anything
you want. Try replacing
<input class="copyMe A slot" type="text" placeholder="cars"> with 'mammals',
<input class="copyMe B slot" type="text" style="width:10em" placeholder="allowed in the park">
with 'egg-layers', and
<input class="copyMe C slot" type="text" style="width:8em" placeholder="police cruisers">
with 'platypus'.

</div>

Any argument with this logical form will be valid. Play around with it: plug
in any terms---that is, any common nouns or noun phrase---into the form. Each
time, note whether or not the premises and conclusion are true.

Now for a more focused challenge. To say that the argument is formally valid
is to say that there are no terms that make the premises all true and
conclusion false. So, try plug plugging in terms that make the premises all
true. Once you've done that, the conclusion will be specified. Is it true or
false?

Now try plugging in terms that make the conclusion false. Once you've done
that, all but one of the terms will be specified. Can you find a value for
that third term that makes one of the premises false?

<div class=".cor">

Here is another argument form that involves three terms:

1.    Some <input class="copyMe A slot" type="text" placeholder="As"> are
    <input class="copyMe B slot" type="text" placeholder="Bs">
2.    Some <input class="copyMe B slot" type="text" placeholder="Bs"> are
    <input class="copyMe C slot" type="text" placeholder="Cs">
3.  ∴ Some <input class="copyMe A slot" type="text" placeholder="As"> are
    <input class="copyMe C slot" type="text" placeholder="Cs">

This argument is formally invalid. Can you find values for
<input class="copyMe A slot" type="text" placeholder="As">,
<input class="copyMe B slot" type="text" placeholder="Bs">, and
<input class="copyMe C slot" type="text" placeholder="Cs"> that make both of
the premises true and the conclusion false?

</div>

<div class="answers">

Here is one way to do it: let 'As' be 'cats'; let 'Bs' be 'animals'; let 'Cs'
be 'dogs'.

</div>

Valid arguments are often valid in virtue of their logical form. We say that
such arguments are *formally valid*.

<div class="boxed">

**Formal Validity**
:   An argument is **formally valid** just in case there is no argument with
    the same logical form that has all true premises and a false conclusion.

</div>

We can test the formal validity of an argument by trying to find an argument
that has the same logical form whose premises are actually true, and whose
conclusion is actually false.

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
argument form 'Barbara'.

Notice that we cannot really *show* that the argument is valid. All we can do
is try to come up with an example that shows that it is invalid. When we
cannot come up with any such examples, how can we be sure that is not simply
due to our lack of imagination?

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
also called **Traditional Logic**, because it was the logic used throughout
the medieval and early modern periods. But this is not the only way one might
think about logical form.

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
**antecedent**, and **consequent**. You were introduced to two kinds of logic
form---the sort studied by term logic and the sort studied by sentential
logic. In the next chapter, we will begin developing sentential logic.


[^1]: I borrow this example, and the associated photograph, from Pospesel and
    Marans, [Arguments: Deductive Logic Exercises][].

  [Aristotle (384-322 BCE)]: /images/aristotle.png
  [George Boole (1815-1864)]: /images/boole.jpg
  [Gottlob Frege (1848-1925)]: /images/frege.jpg
  [traditional sub-disciplines of Philosophy]: /handouts/brief-overview-of-areas-of-philosophy.html
  [liberal arts]: https://en.wikipedia.org/wiki/Seven_liberal_arts#Seven_liberal_arts
  [first logician was Aristotle]: http://plato.stanford.edu/entries/aristotle-logic/
  [The Laws of Thought]: http://gutenberg.org/ebooks/15114
  [Gottlob Frege]: http://plato.stanford.edu/entries/frege/
  [Bertrand Russell]: http://plato.stanford.edu/entries/russell/
  [Jan Łukasiewicz]: http://plato.stanford.edu/entries/lukasiewicz/
  [Gerhard Gentzen]: https://en.wikipedia.org/wiki/Gerhard_Gentzen
  [Alfred Tarski]: http://plato.stanford.edu/entries/tarski/
  [No Cars Allowed]: /images/nocars.png
  [Augustus De Morgan (1806-1871)]: /images/demorgan.jpg
  [Course Website]: /112
  [Arguments: Deductive Logic Exercises]: http://arguments.dss.ucdavis.edu/front-page

