---
author: David Sanson
title: Introduction to Logic
...

# What is This?

This is a brief introduction to logic. Some key concepts are
introduced, some examples are given of how to apply those concepts, and
a little bit is said about how logic fits into the larger scheme of
things. The most important concepts are in **bold**.

# What is Logic?

**Logic** is the study of correct and incorrect reasoning. Logicians
want to understand what makes good reasoning good and what makes bad
reasoning bad. Understanding this allows us to avoid making mistakes in
our own reasoning, and it allows us to evaluate the reasoning of others.

But the importance of logic goes far beyond these narrow goals. Logic
lies at the foundation of mathematics, where it allows us to provide
a clear and rigorous account of the nature of mathematical proof. It
also lies at the foundation of linguistics, providing the basis for a
formal understanding of linguistic structure (syntax) and linguistic
meaning (semantics). It enables us to create computers, and it is
central to work on artificial intelligence. And, of course, logic plays
a central role in philosophy, where we attempt to reason as rigorously
as possible about hard and intractable questions concerning knowledge,
truth, beauty, reality, the good, and ourselves.


![Aristotle (384-322 BCE)](/images/aristotle.png)

![George Boole (1815-1864)](/images/boole.jpg)

![Gottlob Frege (1848-1925)](/images/frege.jpg)

Logic is one of the [traditional sub-disciplines of Philosophy][] and
one of the seven traditional "[liberal arts][]", alongside arithmetic,
geometry, astronomy, music, grammar, and rhetoric. In a medieval
university, students would begin their studies with grammar, logic, and
rhetoric, before going on to study the four other liberal arts. Advanced
students might then study philosophy (including "natural
philosophy", that is, physics, biology, psychology, chemistry and so on) and  theology.

  [traditional sub-disciplines of Philosophy]: /handouts/brief-overview-of-areas-of-philosophy.html
  [liberal arts]: https://en.wikipedia.org/wiki/Seven_liberal_arts#Seven_liberal_arts

The [first logician was Aristotle][] (384-322 BCE). But the logic we use
and study these days---sometimes called "Modern Logic" or "Contemporary
Logic"---has its proximate roots in the 19th century, with the
publication of *[The Laws of Thought][]*, by George Boole in 1854, and
two works by [Gottlob Frege][]: the *Begriffsschrift* ("Concept
Script"), published in 1879, and *Grundgesetze der Arithmetik* ("Basic
Laws of Arithmetic), published in 1892, and was further developed in the
early to mid-twentieth century by figures such as [Bertrand Russell][],
[Jan Łukasiewicz][], [Gerhard Gentzen][], and [Alfred Tarski][].

  [first logician was Aristotle]: http://plato.stanford.edu/entries/aristotle-logic/
  [The Laws of Thought]: http://gutenberg.org/ebooks/15114
  [Gottlob Frege]: http://plato.stanford.edu/entries/frege/
  [Bertrand Russell]: http://plato.stanford.edu/entries/russell/
  [Jan Łukasiewicz]: http://plato.stanford.edu/entries/lukasiewicz/
  [Gerhard Gentzen]: https://en.wikipedia.org/wiki/Gerhard_Gentzen
  [Alfred Tarski]: http://plato.stanford.edu/entries/tarski/

# Arguments and Validity

Logic aims to develop a theory of good and bad reasoning. A piece of reasoning can be represented as an **argument**. For example, here is an argument:^[ I borrow this example, and the associated photograph, from Pospesel and Marans, [Arguments: Deductive Logic Exercises](http://arguments.dss.ucdavis.edu/front-page).]

![No Cars Allowed](/images/nocars.png)

1.  No cars of any kind are allowed in the park. 
2.  All police cruisers are cars.
3.  Therefore, all police cruisers are not allowed in the park.

This is a good argument. The third sentence, (3), *follows* from the first two sentences. If we assume that (1) and (2) are true, then (3) must be true as well.

Here is another argument:

1.  No mammals lay eggs.
2.  All platypus are mammals.
3.  Therefore, all platypus don't lay eggs.

Again, this is a good argument, in just the same way: the third sentence *follows* from the first two. If we assume that (1) and (2) are both true, then (3) must be true too.

We call the sentence that is supposed to follow the **conclusion** of
the argument. We call the sentences that it is supposed to follow from
the **premises**. So, in our examples above, sentences (1) and (2) are
the premises, and sentence (3) is the conclusion. The conclusion of an
argument is often marked as a conclusion by the use of a word like
'therefore' or 'hence' or 'so'. Because we are going to be looking at a
lot of arguments, we introduce a special symbol for this, '∴', which can be read as "therefore".

Of course, there is a problem with our second argument. The first
premise, (1), is false: some mammals do lay eggs. And the conclusion is
false: Platypus do lay eggs. But these are not problems with the *logic*
of the argument. Logic is not concerned with the question of whether or
not a given set of premises are actually true, but only with the
question of what would follow from the premises if they were granted. It
is up to biology to tell us whether or not premises (1) and (2) are
true. It is up to logic to tell us whether or not, if they are true, (3)
must be true as well.

![Augustus De Morgan (1806-1871)](/images/demorgan.jpg)

> Whether the premises be true or false, is not a question of logic, but
> of morals, philosophy, history or any other knowledge to which their
> subject-matter belongs. The question of logic is: does the conclusion
> certainly follow if the premises be true? [@de-morgan1840a, p. 3]

An argument that is good in this sense---the *logic* of is good, whether
or not the premises are in fact true---is said to be valid. That is, an
argument is **valid** just in case it is impossible for all the premises
to be true but the conclusion false.

An argument that is valid *and* has true premises is said to be
**sound**. In philosophy---and, indeed, in daily life---we should be
concerned with whether or not our arguments are sound. That is to say,
we should aim to reason with *valid* arguments *from* true premises.

For example, it is easy to provide a *valid* argument for the conclusion that God exists, but it is hard to show that any such argument is *sound*. Consider:

1.   The Bible says God exists.
2.   Everything the Bible says is true.
3.   ∴ God exists.

This argument is clearly valid. But is it sound? *If* we could show that
both of the premises are true, then we would have established the truth
of the conclusion. On the other hand, *if* either of the premises turns out to be false, then this argument establishes nothing at all. 

Again, it is easy to provide a *valid* argument for the conclusion that God does note exist:

1.  If God existed, there would be no evil in the world.
2.  There is evil in the world.
3.  ∴ God does not exist.

Again, the argument is clearly valid, but its soundness is unclear. This
is why we care not just about validity, but about soundness.

This is also why logic alone is not going to decide the question of God's existence: logic is the study of validity, not soundness.^[This is a bit too strong: there is the outside chance that 'God exists' is a *logical truth*---a concept we will come to later.]

## Review

Let's stop to review and clarify the key points just covered. We
introduced five key terms: **argument**, **premise**, **conclusion**,
**valid**, **sound**. The first three are defined in terms of each other:

**Arguments, Premises, Conclusions**
:   An **argument** is piece of reasoning that can be represented by a
    set of sentences, called the **premises**, followed by a sentence,
    called the **conclusion**. The conclusion is supposed to follow from
    the premises.

We should add one further point of clarification: the sentences that are
used to express the premises and the conclusion must be *declarative
sentences*---that is, the kinds of sentences that are true or false.
They cannot be questions or commands, for example.

**Validity**
:   An argument is **valid** just in case it is impossible that all the
    premises be true but the conclusion false.

**Soundness**
:   An argument is **sound** just in case it is valid and all of its
    premises are true.

## Test Your Understanding

Here are some questions that will help test your understanding of what you have read so far. Consider each question, and decide on your answer. Then click the grey box to reveal the correct answer.

I.  Is this argument sound?
    1.  Some pigs have wings.
    2.  Everything with wings can fly.
    3.  ∴ Some pigs can fly.^[Remember, '∴' is short for 'therefore', and indicates that (3) is the conclusion.]


<div class="answers">

No, it is not sound, because both of the premises are false. But it is valid!

</div>

II. Is this argument valid?
    1.  A good university must have a good library.
    2.  ISU has a good library.
    3.  ∴ ISU is a good university.

<div class="answers">

No, it is not valid. Since we are only worrying about validity, we can put aside the question of whether or not (1) and (2) are actually true. But suppose they were true. That would not be enough to guarantee the truth of (3). Perhaps a good university must have both a good library *and* a great football team, for example.

</div>

III. Why is the following *not* an argument, in our sense?
    1.  It is important to eat fruits and vegetables.
    2.  ∴ Eat your fruits and vegetables!

<div class="answers">

This is not an argument because the conclusion is an imperative sentence---a sentence used to give a command---rather than a declarative sentence---a sentence used to say something true or false.
    
It is possible to develop a logic that includes imperatives. Computer programming languages often take this form. Consider:

1.  If the user clicks on the icon, then open the app!
2.  The user clicks on the icon.
3.  ∴ Open the app!

But it is useful to begin with the simple cases before you study the complex cases. So, for the sake of simplicity, we don't allow arguments that include imperatives.

</div>

IV.  Can a valid argument have a false conclusion? If so, what would an example be?

<div class="answers">

Yes, a valid argument can have a false conclusion. To check if the example you came up with was correct, ask yourself two questions:

1.  Is the conclusion false?
2.  If all the premises were true, would the conclusion have to be true too?

If the answer to both of these question is yes, then your example was correct.

</div>

V.  Can a valid argument with all true premises have a false conclusion? If so, what would an example be?

<div class="answers">

No! If the argument is valid, then there is no possible situation in which all the premises are true, but the conclusion false. So if all the premises are in fact true, the conclusion must in fact be true too.

</div>

VI. Can a valid argument have false premises but a true conclusion? If so, what would an example be?

<div class="answers">

Yes! Here is one example:

1.  Fish are mammals.
2.  Whales are fish.
3.  ∴ Whales are mammals.

</div>

VII. Suppose an argument is sound. What can you say about its conclusion?

<div class="answers">

If an argument is sound, then it is valid *and* all of its premises are in fact true. That means that its conclusion must also in fact be true.

</div>

## Logical Form and Formal Validity

Often, the validity of an argument is connected to its **logical form**. Both of our sample arguments from the previous section---the one about the cars and the one about the platypus---have the same logical form. Consider:

1.  No <span class="A slot">cars</span> are <span class="B slot">allowed
    in the park</span>.
2.  All <span class="C slot">police cruisers</span> are <span
    class="A slot">cars</span>.
3.  Therefore, all <span class="C slot">police cruisers</span> are not
    <span class="B slot">allowed in the park</span>.

And,

1.  No <span class="A slot">mammals</span> are <span
    class="B slot">eggs-layers</span>.
2.  All <span class="C slot">platypus</span> are <span
    class="A slot">mammals</span>.
3.  Therefore, all <span class="C slot">platypus</span> are not <span
    class="B slot">egg-layers</span>.

First, look at all the words that are outside the colored boxes: they are exactly the same in each argument. Second, look at the order of the colored boxes on each line: purple/green; blue/purple; blue/green. Again, the same in each argument.

If we pluck out the words in the boxes, we are left with the following schematic form:

1.  \ \ \ No <span class="A slot">\ \ \ \ \ \ \ </span> are <span
    class="B slot">\ \ \ \ \ \ \ </span>.
2.  \ \ All <span class="C slot">\ \ \ \ \ \ \ </span> are <span
    class="A slot">\ \ \ \ \ \ \ </span>.
3.  ∴ All <span class="C slot">\ \ \ \ \ \ \ </span> are not <span
    class="B slot">\ \ \ \ \ \ \ </span>.

But it is hard to keep track of the slots just using colors. So let's fill the slots with capital letters: 'A' for the purple slot, 'B' for the green slot, and 'C' for the blue slot:

1.  \ \ \ No <span class="A slot">As</span> are <span
    class="B slot">Bs</span>.
2.  \ \ All <span class="C slot">Cs</span> are <span
    class="A slot">As</span>.
3.  ∴ All <span class="C slot">Cs</span> are not <span
    class="B slot">Bs</span>.

Any argument with this form is guaranteed to be valid.

Try it for yourself. The argument schema below is a web-form: type in any three random common nouns for 'A', 'B', and 'C' to generate an instance of the argument form:

1.  \ \ \ No <input class="copyMe A slot" type="text" placeholder="As"> are
    <input class="copyMe B slot" type="text" placeholder="Bs">
2.  \ \ All <input class="copyMe C slot" type="text" placeholder="Cs"> are
    <input class="copyMe A slot" type="text" placeholder="As">
3.  ∴ All <input class="copyMe C slot" type="text" placeholder="Cs">
    are not <input class="copyMe B slot" type="text" placeholder="Bs">

Are the premises of your argument both true? Is the conclusion true?

Try it again. This time, make sure to choose nouns that yield true premises. Is the conclusion true?

Try it again. This time, start with the conclusion, and choose nouns that make it false. Can you find any value for 'A' that makes the premises all true?

It seems that there are no possible values for 'A', 'B', and 'C' that
yield true premises and a false conclusion. So we can say that this
argument is **formally valid**: that is, it is valid in virtue of its
logical form.

Here is an argument that is formally invalid:

1.  \ \ Some <span class="A slot">numbers</span> are <span class="B slot">odd numbers</a>.
2.  \ \ Some <span class="B slot">odd numbers</span> are <span class="C slot">prime numbers</span>.
3.  ∴ Some <span class="A slot">numbers</span> are <span class="C slot">prime numbers</span>.

As it happens, the premises of this argument are true, and its conclusion is true too. But the argument is not formally valid. To show this, find values for 'A', 'B', and 'C' that make the premises true and the conclusion false:

1.  \ \ Some <input class="copyMe A slot" type="text" placeholder="As"> are <input class="copyMe B slot" type="text" placeholder="Bs">
2.  \ \ Some <input class="copyMe B slot" type="text" placeholder="Bs"> are <input class="copyMe C slot" type="text" placeholder="Cs">
3.  ∴ Some <input class="copyMe A slot" type="text" placeholder="As"> are <input class="copyMe C slot" type="text" placeholder="Cs">

Can you show that it is invalid? To do so, you need to find values for 'A', 'B', and 'C' that make the premises true and the conclusion false. Do that now. Once you have an answer (or if you get stuck), click on the grey box below.

<div class="answers">

Here is one way to do it: let 'A' be 'cow'; let 'B' be 'animal'; let 'C' be dog.

</div>

## Review

Valid arguments are often valid in virtue of their logical form. This allows us to introduce a way of testing for formal validity.

**Formal Validity**
:   An argument is **formally valid** just in case there is no argument
    with the same logical form that has all true premises and a false
    conclusion.

## Test Your Understanding

I.  The following form is invalid. Show this by finding values for 'A', 'B', and 'C' that make the premises true and the conclusion false. 
    1.  \ \ Some <input class="copyMe A slot" type="text" placeholder="As"> are
        <input class="copyMe B slot" type="text" placeholder="Bs">
    2.  \ \ \ All <input class="copyMe B slot" type="text" placeholder="Bs"> are
        not <input class="copyMe C slot" type="text" placeholder="Cs">
    3.  ∴ \ All
        <input class="copyMe A slot" type="text" placeholder="As"> are not
        <input class="copyMe C slot" type="text" placeholder="Cs">

<div class="answers">

Here is one way to do it: let 'A' be 'numbers', 'B' be 'odd numbers',
and 'C' be 'divisible by two'. Then the premises are both true, but the
conclusion is false.

Here is another way to do it: let 'A' be 'animals', 'B' be 'dogs', and
'C' be 'cats'.

</div>

II.  Is this form valid? Try to find values for 'A', 'B', and 'C' that make the premises true and the conclusion false.
  
    1.  \ \ All <input class="copyMe A slot" type="text" placeholder="As"> are
        <input class="copyMe B slot" type="text" placeholder="Bs">
    2.  \ \ All <input class="copyMe B slot" type="text" placeholder="Bs"> are
        <input class="copyMe C slot" type="text" placeholder="Cs">
    3.  ∴ All
        <input class="copyMe A slot" type="text" placeholder="As"> are
        <input class="copyMe C slot" type="text" placeholder="Cs">

<div class="answers">

The form is valid. No matter what nouns you plug in for 'A', 'B', and 'C', if
the premises are true, the conclusion will be true too. Aristotle called
this argument form 'Barbara'.

Notice that we cannot really *show* that the argument is valid. All we
can do is try to come up with an example that shows that it is invalid.
When we cannot come up with any such examples, how can we be sure that
is not simply due to a lack of imagination?

</div>


III.  Is this form valid?

    1.  \ \ Some <input class="copyMe A slot" type="text" placeholder="As"> are
        <input class="copyMe B slot" type="text" placeholder="Bs">
    2.  ∴ Some
        <input class="copyMe B slot" type="text" placeholder="Bs"> are
        <input class="copyMe A slot" type="text" placeholder="As">

<div class="answers">

Yes, it is.

</div>


# Sentential Logic: 'if' and 'not'

In the previous section, we took the common nouns that occurred in an
argument---words like 'platypus' and 'police car'---to be
*content*---and we took the words that surrounded them---words like
'all', 'some', 'no', 'not', and 'are'---to be part of the logical
vocabulary.

The resulting logic is called **Term Logic** or **Aristotelean Logic**,
because this was the sort of logic that Aristotle developed. It is also
called **Traditional Logic**, because it was the logic used throughout
the medieval and early modern periods. But there are other ways we might
think about logical form.

Consider the following argument:

1.  If the governor is corrupt, then he should be thrown in prison.
2.  The governor is corrupt.
3.  ∴ The governor should be thrown in prison.

This argument is valid: if we both the premises were true, the conclusion would have to be true too.

And consider the following argument, which apparently has the same logical form:

1.  If God exists, then there is no evil in the world.
2.  God exists.
3.  ∴ There is no evil in the world.

Again, this argument is valid, something we can see even if we have no idea whether or not the premises are in fact true or false.

The arguments have the same form. We can represent it as:

1.  If P, then Q.
2.  P.
3.  ∴ Q.

But what are these 'P's and 'Q's? Before, our 'A's and 'B's were used to represent *nouns* or *noun phrases*---words like 'mammal' or 'police car'. But here, our 'P's and 'Q's represent *sentences*.

This argument is formally valid. That is, there are no sentences that, when plugged in for 'P' and 'Q', yield true premises and a false conclusion. Try it for yourself:

1.  If <input class="copyMe P slot" type="text" placeholder="P">, then
    <input class="copyMe Q slot" type="text" placeholder="Q">
2.  <input class="copyMe P slot" type="text" placeholder="P">
3.  ∴ <input class="copyMe Q slot" type="text" placeholder="Q">

Again, you might find it useful to first work forwards---find values for 'P' and 'Q' that make both premises true, and see what happens to the conclusion---and then work backwards---find a false value for the conclusion, 'Q', and then see if you can find a value for 'P' that makes both premises true.

Here is another argument, similar but slightly different in form:

1.  If capital punishment deterred crimes, then it is justified.
2.  Capital punishment does not deter crimes.
3.  ∴ Capital punishment is not justified.

Is this argument valid? The answer may not be immediately obvious. We can represent the form of the argument as,

1.  If P, then Q.
2.  It is not the case that P.
3.  ∴ It is not the case that Q.

Try to find sentences that make the premises true and the conclusion false:

1.  If <input class="copyMe P slot" type="text" placeholder="P">, then
    <input class="copyMe Q slot" type="text" placeholder="Q">
2.  It is not the case that
    <input class="copyMe P slot" type="text" placeholder="P">
3.  ∴ It is not the case that
    <input class="copyMe Q slot" type="text" placeholder="Q">

<div class="answers">

Here is an example that shows that the argument is not formally valid:

1.  If Hilary Clinton is President, then a Democrat is President.
2.  Hilary Clinton is not President.
3.  ∴ A Democrat is not President.

The premises are clearly true. The conclusion is clearly false. So this
form of argument is not formally valid.

</div>

This invalid form of argument is a fairly common **logical
fallacy**---that is, logical mistake people make when reasoning. It is
common enough that it has a name: *denying the antecedent*.

To understand that name, you need to know a few more technical terms. We
call an 'if ... then ...' sentence a **conditional**. We call the
'if'-part of a conditional the **antecedent**, and we call the
'then'-part the **consequent**. So, for example, here is a conditional:

-   If Bonzo is an ape, then he should go to bed,

The antecedent is 'Bonzo is an ape'. The consequent is 'Bonzo should go
to bed'. So, to *deny* the antecedent of this conditional would be to say that the Bonzo is not an ape. 

Here, then, are four forms of argument that involve conditionals:

**Modus Ponens**
:    If P, then Q. P ∴ Q

**Denying the Antecedent**
:   If P, then Q. It is not the case that P ∴ It is not the case that Q.

**Affirming the Consequent**
:   If P, then Q. Q ∴ P

**Modus Tollens**
:   If P, then Q. It is not the case that Q. ∴ It is not the case that P.
 
The first and last forms, with the weird Latin names, are valid. But (II) and (III)---whose names you should now understand---are invalid.

There are other ways to combine sentences to form new more complicated sentences. For example, given the sentences 'Bonzo is an ape' and 'Reagan was President', we can form the sentence,

-   Bonzo is an ape and Reagan was President.

Here we use the word 'and' to conjoin two sentences into one. Another way to join to sentences is with 'either... or ...', as in:

-   Either God exists or life is meaningless.

These three examples---'if...then...', 'and', and 'either...or...'---all share an interesting feature: when you form a complex sentence using them, the truth or falsehood of the complex depends entirely on the truth or falsehood of the component sentences. For example, 'Bonzo is an ape and Reagan was President' is true just in case 'Bonzo is an ape' is true and 'Reagan was President' is true.

This isn't true of other words we use to combine sentences. Consider 'because'. Suppose the NRA gives Senator Jim Renacci $9,900 in support of his 2012 election campaign, and Renacci subsequently votes against a gun control bill. So we agree that each of the following is true:

-   The NRA gave Renacci $9,900.
-   Renacci voted against the gun control bill.

Is it true or false that

-   Renacci voted against the gun control bill because the NRA gave him $9,900?

The problem here is that the truth of the causal claim is not settled by the truth of the two component sentences. Maybe he would have voted that way regardless, or maybe the contribution influenced his vote.

Sentential Logic is also called **Truth-Functional Logic**, because it
is the logic of sentences formed using words like 'and' and 'or' and
'if...then...'---words that generate complex sentences whose truth or
falsehood is a function of the truth or falsehood of their parts.

## Review

The aim of this page was to provide you a first introduction to logic.
Key terms that were defined include **logic**, **argument**,
**premise**, **conclusion**, **valid**, **sound**, **formally valid**,
**conditional**, **antecedent**, and **consequent**. The exercises were
intended to give you some practice using these concepts, and give you a
sense of how formal validity works.

# What Next?

Please return to the [Course Website](/112) and complete 'Quiz 1: Arguments and Validity'.
