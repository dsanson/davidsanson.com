---
title: What is Logic?
...

<div class="boxed">

"*Crime is common. Logic is rare. Therefore it is upon the logic rather than
upon the crime that you should dwell.*" --- Sherlock Holmes

</div>

What is Logic?
==============

**Logic** is the study of correct and incorrect reasoning. Logicians want to
understand what makes good reasoning good and what makes bad reasoning bad.
Understanding this helps us to avoid making mistakes in our own reasoning, and
it allows us to evaluate the reasoning of others. It makes us better thinkers.

![Aristotle (384-322 BCE)][]

The [first logician was Aristotle][] (384-322 BCE). But the logic we use and
study these days---sometimes called "Modern Logic" or "Contemporary
Logic"---was developed in the 19th and early 20th centuries. Important early
works include George Boole's *[The Laws of Thought][]* (1854), and [Gottlob
Frege][]'s *Begriffsschrift* ("Concept Script") (1879) and *Grundgesetze der
Arithmetik* ("Basic Laws of Arithmetic) (1892).

![George Boole (1815-1864)][]

Logic lies at the foundation of mathematics, where it allows us to provide a
clear and rigorous account of mathematical proof. It also plays a central role
in philosophy, where we use it to help us reason as clearly and rigorously as
possible about hard questions about ourselves, about knowledge, reality,
truth, and beauty, and about right and wrong, good and bad. It also lies at
the foundation of computer science: a computer is a logic machine. And a mind
is, at least in part, a logic machine too, so logic lies at the foundation of
cognitive science and philosophy of mind. It also lies at the foundation of
linguistics, providing the tools we use for thinking about linguistic
structure (syntax) and linguistic meaning (semantics).

![Gottlob Frege (1848-1925)][]

Logic is one of the [traditional sub-disciplines of Philosophy][] and one of
the seven traditional "[liberal arts][]", alongside arithmetic, geometry,
astronomy, music, grammar, and rhetoric. In a medieval university, students
would begin by studying grammar, logic, and rhetoric, before going on to study
the four other liberal arts. Advanced students might then study philosophy and
theology. (At the time, "philosophy" included disciplines we would now
categorize as "sciences", like physics, biology, and psychology.)

So there are many good reasons to study logic. It will make you more medieval.
It will give you insight into linguistics, the foundations of mathematics, and
computer science. It will make you a better philosopher. And it will make you
a better thinker.

Also, it can be a lot of fun.

Representing Reasoning
======================

Logic aims to develop a theory of good and bad reasoning. But before we can
evaluate a given piece of reasoning, we need a way to represent it.

The Structure of Reasoning
--------------------------

When we reason, we reason *from* some given information *to* some new
information. We might represent this using a visual diagram:

``` {.dot}
digraph G {
   graph [rankdir=UD]
   premise -> conclusion:n;
   premise [label="given information", shape="box"];
   conclusion [label="new information", shape="box"];
   }
```

We will call a piece of reasoning an **argument**. We will call the
information you reason from the **premises**, and the information you reason
to the **conclusion**:

``` {.dot}
digraph G {
   premise -> conclusion:n;
   premise [label="premises", shape="box"];
   conclusion [label="conclusion", shape="box"];
   }
```

So, for example, given the information that Andrew is vegetarian, you might
reason to the conclusion that Andrew does not eat chicken:

``` {.dot}
digraph G {
   graph [rankdir=UD]
   premise -> conclusion:n;
   premise [label="Andrew is vegetarian", shape="box"];
   conclusion [label="Andrew does not each chicken", shape="box"];
   }
```

But this diagram leaves a lot of important information out. When you reasoned
from the premise to the conclusion, you relied your background knowledge about
vegetarians and chickens. This gave you additional information, and so
additional premises. Here is a more explicit representation of your reasoning:

``` {.dot}
digraph G {
   graph [rankdir=UD]
   premise -> conclusion:n;
   premise [shape="record", label="Andrew\ is\ vegetarian | Vegetarians\ don't\ eat\ animals | Chickens\ are\ animals"];
   conclusion [shape="box", label="Andrew does not each chicken"];
   }
```

Notice that the conclusion does not follow from any one of the premises taken
by itself. It only follows from all the premises taken together. So we cannot
represent this as three separate arguments for the same conclusion.

We can also reason from one or more premises to one or more conclusions:

``` {.dot}
digraph G {
   graph [rankdir=UD]
   premise -> conclusion:n;
   premise [shape="record" label="Alice,\ Bob,\ and\ Christina\ are\ teammates
   | Alice\ is\ the\ tallest\ player\ on\ her\ team"];
   conclusion [shape="record", label="Alice\ is\ taller\ than\ Bob| Alice\ is\ taller\ than\ Christina"];
   } 
```

Notice that here each conclusion follows separately from the premises. So we
can represent this as two separate arguments, from the same premises, but to
different conclusions:

``` {.dot}
digraph G {
   graph [rankdir=UD]
   premise -> conclusion:n;
   premise [shape="record" label="Alice,\ Bob,\ and\ Christina\ are\ teammates
   | Alice\ is\ the\ tallest\ player\ on\ her\ team"];
   conclusion [label="Alice is taller than Bob", shape="box"];
   } 
```

``` {.dot}
digraph G {
   graph [rankdir=UD]
   premise -> conclusion:n;
   premise [shape="record" label="Alice,\ Bob,\ and\ Christina\ are\ teammates
   | Alice\ is\ the\ tallest\ player\ on\ her\ team"];
   conclusion [label="Alice is taller than Christina", shape="box"];
   } 
```

When we reason from some premises to more than one conclusion, it is always
possible to represent the reasoning in this way, with separate arguments. So,
for the sake of simplicity, we will do this, and assume that an argument
always has exactly one conclusion.

These diagrams provide a nice visual way of representing arguments. We began
with them to help emphasize the basic structure of an argument: an argument is
a piece of reasoning, from some given information, to a conclusion.

Premise-Conclusion Form
-----------------------

In practice, it is much easier to represent an argument as a simple list:
first the premises, followed by the conclusion. So, for example, we can
represent the argument above as,

1.  Alice, Bob, and Christina are teammates.
2.  Alice is the tallest player on her team.
3.  ∴ Alice is taller than Christina.

Here the premises are (1) and (2), and the conclusion is (3). We know that (3)
is the conclusion because it is the last sentence in the list. We also know
that it is the conclusion because it is marked by a special symbol, '∴' which
stands for "therefore". We will always mark conclusions using '∴'.

When we represent arguments like this---as a list of premises, followed by the
conclusion---we say that we have put the argument in **premise-conclusion
form**. Putting arguments in premise-conclusion form is a common philosophical
exercise. It forces you to clearly separate out the premises and the
conclusion.

<div class="boxed">

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

Arguments are everywhere. You can find them in blogs, magazine articles,
textbooks, and newspaper editorials. They often pop up in conversations. But
they are not usually found in premise-conclusion form, and important premises
are often left unstated. Sometimes even the conclusion is left unstated, as in
this example, from Confucius:

> If there be righteousness in the heart,\
> there will be beauty in the character.\
> If there be beauty in the character,\
> there will be harmony in the home.\
> If there be harmony in the home,\
> there will be order in the nation.\
> If there be order in the nation,\
> there will be peace in the world.[^1]

Can you put this argument in premise-conclusion form? What is the conclusion?
When you think you know the answer, click on the gray box below.

<div class="answers">

Presumably the conclusion is,

-   If there be righteousness in the heart, there will be peace in the world.

So the argument, in premise-conclusion form, would be,

1.  If there be righteousness in the heart, there will be beauty in the
    character.
2.  If there be beauty in the character, there will be harmony in the home.
3.  If there be harmony in the home, there will be order in the nation.
4.  If there be order in the nation, there will be peace in the world.
5.  ∴ If there be righteousness in the heart, there will be peace in the
    world.

</div>

Here is an argument:

> Some pigs have wings. Everything with wings can fly. So, some pigs can fly.

What are the premises of this argument? What is its conclusion? Can you put it
in premise-conclusion form? When you think you know the answer, click on the
gray box below:

<div class="answers">

The premises are 'Some pigs have wings' and 'Everything with wings can fly'.
The conclusion is 'Some pigs can fly'. In English, the words 'so' and 'hence'
and 'therefore' are often used to indicate a conclusion. In this case, the
fact that the last sentence begins with 'So' tells us that it is the
conclusion.

1.  Some pigs have wings.
2.  Everything with wings can fly.
3.  ∴ Pigs can fly.

</div>

Here is another argument:

> We need to raise the capital gains tax. We need to do this because a low
> capital gains tax provides a disproportionate benefit to the wealthiest
> citizens. It serves only to increase the gap between the super-wealthy and
> the rest of us, and we need to decrease that gap.

What are the premises of this argument? What is the conclusion?

<div class="answers">

The conclusion is, 'We need to raise the capital gains tax.' Notice that when
people give arguments, they don't always state the conclusion last, and they
don't always mark it with a word like 'so' or 'therefore'.

The first premise is 'A low capital gains tax provides a disproportionate
benefit to the wealthiest citizens.' Notice the way the word 'because' is used
to indicate that this is a premise---a bit of information that helps support
the conclusion. Another word that often indicates a premise is 'since'.

Here is the argument in premise-conclusion form:

1.  A low capital gains tax provides a disproportionate benefit to the
    wealthiest citizens.
2.  A low capital gains tax serves only to increase the gap between the
    super-wealthy and the rest of us.
3.  We need to decrease the gap between the super-wealthy and the rest of us.
4.  ∴ We need to raise the capital gains tax.

</div>

Evaluating Arguments
====================

<div class="boxed">

"*A deduction is speech in which, certain things having been supposed,
something different from those supposed results of necessity because of their
being so.*" --- Aristotle

</div>

Good and Bad Arguments
----------------------

Not all reasoning is good reasoning, and so not all arguments are good
arguments. What makes a good argument good and a bad argument bad?

Recall the basic structure of a piece of reasoning:

``` {.dot}
digraph G {
   premise -> conclusion:n;
   premise [label="premises", shape="box"];
   conclusion [label="conclusion", shape="box"];
   }
```

There are two ways things can go wrong here.

First, we can plug bad information into to the premise box:

``` {.dot}
digraph G {
   premise -> conclusion:n;
   premise [label="false premises!", shape="box", color="red", fontcolor="red"];
   conclusion [label="conclusion", shape="box"];
   }
```

You are probably familiar with the saying "Garbage in, garbage out". When you
reason *from* false premises, it doesn't matter how well you reason. You'll
have no reason to suppose that your conclusion is true.

But suppose the information you plug into the premise box is true. Still
things can go wrong: you might reason badly from those premises to your
conclusion:

``` {.dot}
digraph G {
   premise -> conclusion:n [label="  bad reasoning!", color="red",
   fontcolor="red"];
   premise [label="premises", shape="box"];
   conclusion [label="conclusion", shape="box"];
   }
```

When you reason badly, it doesn't matter that you began with true premises.
You'll have no reason to suppose that your conclusion is true.

And, of course, it is possible to reason badly from bad information!

``` {.dot}
digraph G {
   premise -> conclusion:n [label="  bad reasoning!", color="red",
   fontcolor="red"];
   premise [label="false premises!", shape="box", color="red", fontcolor="red"];
   conclusion [label="conclusion", shape="box"];
   }
```

So what we want in a good argument is good reasoning from good information:

``` {.dot}
digraph G {
   premise -> conclusion:n [label="  good reasoning!", color="blue",
   fontcolor="blue"];
   premise [label="true premises!", shape="box", color="blue",
   fontcolor="blue"];
   conclusion [label="conclusion", shape="box"];
   }
```

When we reason correctly from true premises, we can be confident that our
conclusion is true.

Now for some examples. Consider the argument,

1.  No mammals lay eggs.
2.  All platypus are mammals.
3.  ∴ All platypus don't lay eggs.

Here the reasoning is good. The conclusion *follows* from the premises: if
they were both true, it would have to be true too. But the first premise is
false. So this is a case of reasoning well from bad information. As you can
see, it led us to a false conclusion.

Or consider,

1.  All ducks are mammals.
2.  All mammals are birds.
3.  ∴ All ducks are birds.

Again, the reasoning is good. The conclusion *follows* from the premises: if
they were both true, it would have to be true too. But again, we are reasoning
from false premises. So this is a case of reasoning well from bad information.
As you can see, we happened to be led to a true conclusion, but only by
accident.

Here is an argument with true premises:

1.  Some ducks are birds.
2.  No birds are mammals.
3.  ∴ No ducks are mammals.

Here the premises are true, and the conclusion is true. But does the
conclusion *follow* from the premises, or is this a case of bad reasoning?

<div class="answers">

The conclusion does not follow. Suppose that some ducks were birds and some
ducks were mammals. Then the premises would be true, but the conclusion false.
So this is an example of bad reasoning from good information. The conclusion
happens to be true, but only by accident.

</div>

One last example. Consider the argument,

1.  Obama is President.
2.  If Obama is President, then a Democrat is President.
3.  ∴ A Democrat is President.

The premises are both true. And the conclusion follows from the premises:
there is no way that they could be true but it false. So the conclusion is
true, and it doesn't just happen to be true. It's truth was necessitated by
the truth of the premises. So, finally, we have an example of good reasoning
from good information!

Soundness and Validity
----------------------

As we have seen, arguments are kind of like friends. A friend can be good in
one way but bad in another---a good listener but bad at keeping secrets, for
example. And an argument can be good in one way but bad in another---good
reasoning but bad premises, or good premises but bad reasoning.

It is helpful to introduce some technical terms. We will call an argument that
has good reasoning a **valid** argument. And we will call an argument that has
good reasoning from good premises a **sound** argument.

So this argument is sound:

1.  Obama is President.
2.  If Obama is President, then a Democrat is President.
3.  ∴ A Democrat is President.

And these arguments are valid but not sound:

1.  No mammals lay eggs.
2.  All platypus are mammals.
3.  ∴ All platypus don't lay eggs.

<!-- -->
1.  All ducks are mammals.
2.  All mammals are birds.
3.  ∴ All ducks are birds.

While this argument is neither valid nor sound:

1.  Some ducks are birds.
2.  No birds are mammals.
3.  ∴ No ducks are mammals.

It is clear enough what it is for an argument has good or bad premises: a good
premise is a true premise, and a bad premise is a false premise. But what does
it mean to say that an argument has good reasoning?

Reasoning is good when the conclusion "follows". But even that is just a
metaphor. When we put an argument in premise-conclusion form, the conclusion
always comes after the premises, so in a sense it always "follows" the
premises. But that isn't what we mean when we say that the conclusion follows
from the premises. So what do we mean?

Roughly, what we mean is that, if the premises *were* true, then the
conclusion *would have to be* true too. That is, we mean that there is no
possible situation in which all the premises are true, but the conclusion
false. So let this be our official definition of "validity":

<div class="boxed">

An argument is **valid** just in case it is impossible for all of its premises
to be true but its conclusion false.

</div>

Here is an example of an invalid argument:

1.  If Obama is President, then a Democrat is President.
2.  A Democrat is President.
3.  ∴ Obama is President.

As I write this, (1), (2) and (3) are all true. But the reasoning is bad; the
conclusion does not follow from the premises; the argument is not valid. This
is because there is a possible situation in which the premises are all true,
but the conclusion false. Can you describe such a situation?

<div class="answers">

Any situation in which some Democrat other than Obama is President will do the
trick.

</div>

In general, you cannot tell whether or not an argument is valid just by
considering whether or not its premises and conclusion are actually true or
false. Validity is about what is or isn't *possible*, not just about what
happens to be the case. So you have to consider all the possibilities; you
have to use your imagination.

Now that we have an official definition of validity, it is easy to provide an
official definition of soundness:

<div class="boxed">

An argument is **sound** just in case it is valid and all of its premises are
true.

</div>

Remember, a sound argument is an argument with good reasoning---that is, a
valid argument---from good information---that is, true premises.

In philosophy---and, indeed, in daily life---we want our arguments to be
sound. As responsible reasoners, we want to be reasoning *validly* from *true*
premises, since that ensures that we have reached a *true* conclusion. We want
to put good information into our reasoning machine, and we want our machine to
process that information correctly, so we get good information out of the
machine.

But there is no general logical theory that allows us to assess whether or not
a given premise is true or false. If you want to know whether or not all
mammals lay eggs, you need to ask a biologist, not a logician. And there is no
way to determine, using logic alone, who happens to be President, whether
Andrew is vegetarian, and so on.

What logic *can* provide is a theory of good reasoning---a theory of validity,
a theory of what follows from what.

<div class="boxed">

![Augustus De Morgan (1806-1871)][]

*Whether the premises be true or false, is not a question of logic, but of
morals, philosophy, history or any other knowledge to which their
subject-matter belongs. The question of logic is: does the conclusion
certainly follow if the premises be true?*

</div>

Let's work through some more examples.

![No Cars Allowed][]

1.  No cars are allowed in the park.
2.  All police cruisers are cars.
3.  Therefore, all police cruisers are not allowed in the park.[\^1]

Is this argument valid? If it is not valid, can you describe a situation in
which the premises are all true, but the conclusion false? If is valid, is it
also sound?

<div class="answers">

It is valid. It is hard to say whether or not it is sound. Premise (2) is
true, but without further information about the park and its rules, we don't
know whether or not premise (1) is true. But if we can trust the sign, then
the premises are both true, and the argument is valid, so it is sound.

</div>

1.  Some pigs have wings.
2.  Everything with wings can fly.
3.  ∴ Some pigs can fly.

Is this argument valid? If it is not valid, can you describe a situation in
which the premises are all true, but the conclusion false? If is valid, is it
also sound?

<div class="answers">

It is valid, but it is not sound, because both of the premises are false (can
you explain why is (2) false?)

</div>

1.  A good university must have a good library.
2.  ISU has a good library.
3.  ∴ ISU is a good university.

Is this argument valid? If it is not valid, can you describe a situation in
which the premises are all true, but the conclusion false? If is valid, is it
also sound?

<div class="answers">

It is not valid. Consider a possible situation in which ISU has a good
library, and a good university must have a good library *and* a good
philosophy department, but ISU does not have a good philosophy department. In
that situation, both premises are true, but the conclusion is false.

(Since it is not valid, it can't be sound, so we don't need to worry about
whether or not the premises are actually true.)

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
2.  If all the premises were true, would the conclusion have to be true?

If the answer to both of these question is yes, then your example was correct.

</div>

Can a valid argument with all true premises have a false conclusion? If so,
what would an example be?

<div class="answers">

No! If the argument is valid, then there is no possible situation in which all
the premises are true, but the conclusion false.

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
if an argument is sound, we know that its conclusion is true.

</div>

It is easy to come up with a *valid* argument for the existence of God, but
hard to come up with an uncontroversially *sound* argument for the existence
of God. Try it! Try to formulate a *valid* argument whose conclusion is 'God
exists'. Are the premises uncontroversially true?

<div class="answers">

That was an open-ended question, so I hope you didn't click on this box hoping
for an answer! Here is one example of a valid argument for the existence of
God:

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
right and who's wrong? Ask the philosophers and theologians: that's not a
question that logic can answer.

<div class="boxed">

Famously, Paul says, in Titus 1:12-13,

> One of themselves, even a prophet of their own, said, the Cretans are always
> liars, evil beasts, slow bellies. This witness is true.

But what the Cretan said cannot be true! This is an example of the Liar
Paradox (though it is not clear whether Paul meant it to be so). When Paul
says "This witness is true," that is, that what the Cretan said was true, he
says something false.

So perhaps logic can show that not everything said by Paul in the Bible is
true. Does that show that (2) is false?

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

Review and Loose Ends
---------------------

We've introduced five key terms: **argument**, **premise**, **conclusion**,
**valid**, **sound**. The first three are defined in terms of each other:

<div class="boxed">

**Arguments, Premises, Conclusions**
:   An **argument** is piece of reasoning that can be represented as a list of
    sentences, called the **premises**, followed by a sentence, called the
    **conclusion**.

**Validity**
:   An argument is **valid** just in case it is impossible that all the
    premises be true but the conclusion false.

**Soundness**
:   An argument is **sound** just in case it is valid and all of its premises
    are true.

</div>

Finally, we should briefly wrap up two loose ends.

First, the sentences that play the role of premises or conclusions must be
sentences that express information. So they have to be *declarative
sentences*---the kinds of sentences that are true or false. They cannot be
questions or commands, since questions and commands are not used to express
information.

So this is *not* an argument:

1.  It is important to eat fruits and vegetables.
2.  ∴ Eat your fruits and vegetables!

Why not?

<div class="answers">

This is not an argument because the conclusion is an imperative sentence---a
sentence used to give a command---rather than a declarative sentence---a
sentence used to say something true or false.

It is possible to develop a logic that includes imperatives. Computer
programming languages often involve imperatives. Consider:

1.  If the user clicks on the icon, then open the app!
2.  The user has clicked on the icon.
3.  ∴ Open the app!

We might think of this as an argument from one imperative---the command
expressed by (1)---to another imperative---the command expressed by (3). But
the logic of imperatives (like the logic of questions) is an advanced topic,
to be considered after you have mastered the material of this course.

</div>

Second, we said above that good reasoning is *valid* reasoning, and we gave an
official definition of validity. But not all good reasoning is valid in our
sense.

Consider an eighteenth century European biologist, who has made a wide and
careful study of mammals, and never encountered a mammal that lays eggs.
Suppose she infers that no mammals lay eggs:

``` {.dot}
digraph G {
   graph [rankdir=UD]
   premise -> conclusion:n;
   premise [label="all mammals that I have observed gave live birth", shape="box"];
   conclusion [label="no mammals lay eggs", shape="box"];
   }
```

This seems like a reasonable inference for her to have made: it was based on a
large set of good data, carefully gathered and considered. But it is not a
valid inference: it is quite possible---and in this case, what actually
happens---that the premises all be true but the conclusion false.

Or consider a scientist who is interested in explaining the
[Cretaceous–Paleogene extinction event][]: the mass extinction that wiped out
all the dinosaurs (except the birds, of course). The evidence strongly
suggests that the extinction was caused, at least in part, by the impact of a
large asteroid. So the scientist infers that the extinction was probably
caused by a large asteroid.

Again, this seems like a reasonable inference. But it is not a *valid*
inference in our sense. It is *possible* that, despite all the evidence, the
extinction was caused by something else.

These examples show that not all good reasoning is valid reasoning. Some good
reasoning is probabilistic or inductive: the given information *supports* a
certain conclusion, but not absolutely, as there is still the chance that the
conclusion is false despite the evidence.

The study of this kind of reasoning is the domain of inductive logic and
probability theory. We are not going to be studying inductive logic or
probability theory. We are going to be studying *deductive* logic. Deductive
logic attempts to provide a theory of validity---iron-clad reasoning where the
premises leave no possibility that the conclusion be false.

[^1]: Borrowed from Pospesel, p. 76.

  [Aristotle (384-322 BCE)]: /images/aristotle.png
  [first logician was Aristotle]: http://plato.stanford.edu/entries/aristotle-logic/
  [The Laws of Thought]: http://gutenberg.org/ebooks/15114
  [Gottlob Frege]: http://plato.stanford.edu/entries/frege/
  [George Boole (1815-1864)]: /images/boole.jpg
  [Gottlob Frege (1848-1925)]: /images/frege.jpg
  [traditional sub-disciplines of Philosophy]: /handouts/brief-overview-of-areas-of-philosophy.html
  [liberal arts]: https://en.wikipedia.org/wiki/Seven_liberal_arts#Seven_liberal_arts
  [Augustus De Morgan (1806-1871)]: /images/demorgan.jpg
  [No Cars Allowed]: /images/nocars.png
  [Cretaceous–Paleogene extinction event]: https://en.wikipedia.org/wiki/Cretaceous%E2%80%93Paleogene_extinction_event
