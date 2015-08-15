---
author: David Sanson
course: 112
instructor: David Sanson
title: Metatheory (addendum to Chapter 2)
...

Overview
========

This supplement provides a brief overview of some interesting concepts
and facts that fall under the broad heading of "metalogic" or
"metatheory of logic". The material here might show up under the guise
of a bonus question on an exam, but it is not material I otherwise
intend to hold you responsible for. Students interested in an accessible
overview of some of these topics might look to David Papineau,
*Philosophical Devices* (Oxford University Press, 2012), Part IV.

Logic vs. Metatheory
--------------------

We have been *doing* logic. We've learned how to symbolize sentences in
logic, how to check for tautological validity using truth tables, and
how to construct derivations.

Metatheory involves stepping back and thinking *about* the logic we have
been using: what are its properties? does it work properly? how does it
compare to other logical systems?

What is a Logic?
----------------

A **logic** is a formal language together with a system of deduction and
a semantics.

A **formal language** consists of a set of symbols (in our case, the
sentence letters, the parentheses, and the five connectives), together
with a **syntax**---that is, rules that determine which combinations of
those symbols are well-formed sentences. (The Parsing module was
designed to test your understanding of the syntax of our formal
language.)

A **system of deduction** is a set of inference rules (in our case, R,
DN, MP, MT, S, ADJ, MTP, ADD, CB and BC), a set of methods of derivation
(our case, DD, CD, and ID). When you construct derivations in the
Derivation module, you are using our system of deduction.

A **semantics** is a theory of meaning for a given language. There are
various ways of providing a theory of meaning. We have done so by
assuming that each sentence letter can either be T or F, and then
associating each connective with its characteristic truth function,
e.g.,

<div class="tt2sl">

   ${\mathbin{◻}}$   ${\mathbin{○}}$   ${\mathbin{◻}}{\mathbin{\wedge}}{\mathbin{○}}$
  ----------------- ----------------- ------------------------------------------------
          T                 T                                T
          T                 F                                F
          F                 T                                F
          F                 F                                F

</div>

Other Logics
------------

Other logics either have a different language, a different system of
deduction, or a different semantics.

Some logics are different from ours only in trivial ways. For example,
our choice of sentence letters was arbitrary: a trivial variant of our
logic would use lowercase letters as sentence letters instead. Or we
might have used different symbols for our connectives.

Some logics differ from our in less trivial ways. Our logic is a
*sentential* logic: the basic atoms, or logical units, are sentence
letters. Predicate logic, which we will study next, takes the basic
atoms to be predicates, like 'is sitting', and singular terms, like
'Socrates'. Term logic, which we looked at briefly in the
[introduction](0_introduction.html#logical-form-and-formal-validity),
takes the basic logical units to be common nouns, like 'Cars' and
'Horses'.

Our logic is a *truth-functional* sentential logic: the connectives in
our language are all truth-functional. That is why, if you know the
truth values of the atomic sentence letters in a complex sentence, you
can calculate the truth value of the complex sentence. But there are
sentential connectives in English that are not truth-functional:
'because' is one, as is the non-material conditional.

Two unary connectives that are not truth functional are 'possibly' and
'necessarily'. Consider:

-   '2+2=4' is true and 'Necessarily 2+2=4' is true.
-   'There are cows' is true but 'Necessarily there are cows' is false.

Likewise,

-   '2+2=5' is false, and 'possibly 2+2=5' is false.
-   'There are purple cows' is false, but 'Possibly there are purple
    cows' is true.

So 'possibly' and 'necessarily' are not truth-functional connectives.
The logic of 'possibly' and 'necessarily' is called **modal logic**.
'${\mathbin{◻}}$' is used to represent 'necessarily', and '$\Diamond$'
is used to represent 'possibly'.

Truth-Functional Completeness
-----------------------------

Confining our attention to truth-functional sentential logics, we might
consider logics that have more connectives than ours: for example, a
logic that includes a connective for exclusive 'or', or a connective for
'neither...nor...'

Here is an interesting fact about our logic: it is **truth-functionally
complete**. That means that every truth-function is expressible in our
language. For example, we can express the truth-function that goes along
with an exclusive 'or' using the sentence
'$(P{\mathbin{\vee}}Q){\mathbin{\wedge}}{\mathbin{\sim}}(P{\mathbin{\wedge}}Q)$',
read in English as 'P or Q, but not both'. And we can express the
truth-function that goes along with 'neither...nor...' using
'${\mathbin{\sim}}(P{\mathbin{\vee}}Q)$'.

So adding more connectives to our language would not add to its
expressive power. What about removing connectives?

We already know that every conditional is equivalent to some
disjunction, and vice versa. This means that our language would remain
truth-functionally complete even if we got rid of one or other of these
two connectives.

As a matter of fact, the language of Chapter 1, containing only
'${\mathbin{\rightarrow}}$' and '${\mathbin{\sim}}$', was
truth-functionally complete. Likewise, a language containing only
'${\mathbin{\vee}}$' and '${\mathbin{\sim}}$' would be
truth-functionally complete, as would a language containing only
'${\mathbin{\wedge}}$' and '${\mathbin{\sim}}$'.

Challenge: find a sentence, using only '${\mathbin{\sim}}$' and
'${\mathbin{\vee}}$', that expresses the same truth function as
'$P{\mathbin{\wedge}}Q$'.

<div class="answers">

Remember DeMorgan's Laws: '$P{\mathbin{\wedge}}Q$' is equivalent to
'${\mathbin{\sim}}({\mathbin{\sim}}P{\mathbin{\vee}}{\mathbin{\sim}}Q)$'.
Double check this by producing a truth table: do the sentences have the
same truth value on each row?

This means we could treat every sentence involving
'${\mathbin{\wedge}}$' as an abbreviation for a sentence just involving
'${\mathbin{\vee}}$' and '${\mathbin{\sim}}$'.

</div>

In fact, it is possible to have a truth-functionally complete language
that contains only a *single* connective. The Sheffer stroke has the
following truth table:

<div class="tt2sl">

   $P$   $Q$   $P\uparrow Q$
  ----- ----- ---------------
    T     T          F
    T     F          T
    F     T          T
    F     F          T

</div>

This connective is sometimes called 'NAND' in programming contexts.
Looking at the truth table, do you see why it might give given that
name?

<div class="answers">

The connective symbolizes 'not both': it is false if both $P$ and $Q$
are true; true otherwise.

</div>

Challenge: using just '$\uparrow$', find a sentence that is equivalent
to '${\mathbin{\sim}}P$'.

<div class="answers">

Try '$P\uparrow P$'.

Next challenge: find a sentence that is equivalent to
'$P{\mathbin{\wedge}}Q$'.

</div>

<div class="answers">

Since '$P\uparrow Q$' is equivalent to 'not both $P$ and $Q$', what we
want is '${\mathbin{\sim}}(P\uparrow Q)$'. That contains
'${\mathbin{\sim}}$'. But we just saw how to replace
'${\mathbin{\sim}}$'. So, what is the sentence?

</div>

<div class="answers">

'$(P\uparrow Q)\uparrow(P\uparrow Q)$'

What about disjunctions, conditionals, and the biconditionals? Can you
figure out how to express them using only the '$\uparrow$'?

</div>

Of course, if our language only had '$\uparrow$', we'd need different
rules and methods of derivation. What should they be?

Classical and Non-classical Logics
----------------------------------

Our logic is a **classical** logic. That means it has several important
features. For example, in our logic, each of the following is a theorem:

**The Law of Excluded Middle**:
:   ${\therefore\ }P{\mathbin{\vee}}{\mathbin{\sim}}P$

**The Law of Non-Contradiction**:
:   ${\therefore\ }{\mathbin{\sim}}(P{\mathbin{\wedge}}{\mathbin{\sim}}P)$

**The Principle of Explosion**
:   ${\therefore\ }P{\mathbin{\wedge}}{\mathbin{\sim}}P {\mathbin{\rightarrow}}Q$

Also, in our logic, you can always add additional irrelevant premises to
an argument, without affecting its derivability (derivability is
"monotonic"). That is, for any list of sentences, $\Gamma$, and any
sentences ${\mathbin{◻}}$ and ${\mathbin{○}}$,

**Monotonicity**:
:   If there is a derivation from $\Gamma$ to ${\mathbin{◻}}$, then
    there is a derivation from $\Gamma\ .\ {\mathbin{○}}$ to
    ${\mathbin{◻}}$

Each of these properties might be thought problematic: the Law of
Excluded Middle, if you think that some sentences lack truth values, or
that there are truth values other than T and F; the Law of
Non-Contradiction and the Principle of Explosion, if you think that some
contradictions are true; and Monotonicity, if you think the premises of
an argument must be *relevant* to the conclusion. This has led to the
development of a wide variety of *non-classical logics*.

You might be a *logical monist*, and think of classical logics and
non-classical logics as competitors for the title of the one correct
logic. Or you might be a *logical pluralist*, and think that there is no
such thing as the one correct logic. The issues here quickly get
complicated in fascinating ways. For more, see the Stanford Encyclopedia
of Philosophy article on [logical
pluralism](http://plato.stanford.edu/entries/logical-pluralism/).

For a decent overview of the issues dividing classical and non-classical
logics, see the Wikipedia articles on [Classical
Logic](https://en.wikipedia.org/wiki/Classical_logic) and [Non-classical
Logic](https://en.wikipedia.org/wiki/Non-classical_logic). For a more
advanced and rigorous overview, see several articles in the Stanford
Encyclopedia of Philosophy, including:

-   [Classical
    Logic](http://plato.stanford.edu/entries/logic-classical/)
-   [Intuitionistic
    Logic](http://plato.stanford.edu/entries/logic-intuitionistic/)
-   [Linear Logic](http://plato.stanford.edu/entries/logic-linear/)
-   [Paraconsistent
    Logic](http://plato.stanford.edu/entries/logic-paraconsistent/)
-   [Relevance
    Logic](http://plato.stanford.edu/entries/logic-relevance/)

Soundness and Completeness
--------------------------

Our logic includes both a system of deduction---a set of rules together
with methods of derivation---and a truth-functional semantics. It also
has two important features, where $\Gamma$ is any set of symbolic
sentences and ${\mathbin{◻}}$ is any symbolic sentence:

**Soundness**
:   If there is a derivation from $\Gamma$ to ${\mathbin{◻}}$, then
    $\Gamma {\therefore\ }{\mathbin{◻}}$ is tautologically valid.

**Completeness**
:   If $\Gamma {\therefore\ }{\mathbin{◻}}$ is tautologically valid,
    then there is a derivation from $\Gamma$ to ${\mathbin{◻}}$.

The first of these, *Soundness*, says that our derivations never go
wrong: you cannot construct a derivation from true premises to a false
conclusion. This would not be true if we introduced an invalid
rule---say, a rule that allowed you to infer $P$ from
$P{\mathbin{\vee}}Q$.

The second, *Completeness*, says that every tautologically valid
argument can be derived. This would not be true if we had not introduced
*enough* rules and methods, or if our rules and methods were not
powerful enough.

Some of our rules and methods are redundant: we could get rid of them,
and our system would remain complete. For example, every derivation
completed using DD could instead be completed using ID (how?) DN is also
redundant: given ${\mathbin{\sim}}{\mathbin{\sim}}Q$, you can derive
both $Q$ and
${\mathbin{\sim}}{\mathbin{\sim}}{\mathbin{\sim}}{\mathbin{\sim}}Q$
using nothing but ID and R (can you do this?) MT is similarly a rule we
could do without.

This suggests that we might "purify" our system by removing DD, DN, MT,
and any other redundant basic rules and methods (we could always
reintroduce them as *derived* rules or methods). For an example of a
system that is similar to ours but more pure in this sense, see
Bergmann, Moor, and Nelson's *The Logic Book*.

A standard course in Metatheory of Sentential Logic would culminate in
proofs of soundness and completeness. You can find an accessible sketch
of such proofs in Papineau's *Philosophical Devices*, and you can find
more rigorous proofs in any of several logic texts, including *The Logic
Book* (but note that the sentential logics presented in both
*Philosophical Devices* and *The Logic Book* differ from ours both in
their choice of symbols and, more importantly, in their choice of rules
and derivation methods).
