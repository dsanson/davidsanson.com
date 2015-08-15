---
author: David Sanson
section: supplement
title: Logical Form and Formal Validity
...

Logical Form and Formal Validity
================================

Often, the validity of an argument is connected to its **logical form**.
Both of our sample arguments from the previous section---the one about
the cars and the one about the platypus---have the same logical form.
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

Each of the boxes above is actually a text input box: you can type in
anything you want. Try replacing
<input class="copyMe A slot" type="text" placeholder="cars"> with
'mammals',
<input class="copyMe B slot" type="text" style="width:10em" placeholder="allowed in the park">
with 'egg-layers', and
<input class="copyMe C slot" type="text" style="width:8em" placeholder="police cruisers">
with 'platypus'.

</div>

Play around with it: plug in any terms---that is, any common nouns or
noun phrases---into the form. Each time, note whether or not the
premises and conclusion are true.

Now for a more focused challenge. Try plugging in terms that make the
premises all true. Once you've done that, the conclusion will be
specified. Is it true or false? Can you find terms that make all the
premises true but the conclusion false?

Now try plugging in terms that make the conclusion false. Once you've
done that, all but one of the terms will be specified. Can you find a
value for that third term that makes one of the premises false?

This argument is **formally valid**: there is no argument of this
form---no argument that you can get by plugging in different
terms---that has true premises and a false conclusion.

<div class=".cor">

Here is another argument form that involves three terms:

1.    Some <input class="copyMe A slot" type="text" placeholder="As">
    are <input class="copyMe B slot" type="text" placeholder="Bs">
2.    Some <input class="copyMe B slot" type="text" placeholder="Bs">
    are <input class="copyMe C slot" type="text" placeholder="Cs">
3.  ∴ Some <input class="copyMe A slot" type="text" placeholder="As">
    are <input class="copyMe C slot" type="text" placeholder="Cs">

This argument is not formally valid. Can you find values for
<input class="copyMe A slot" type="text" placeholder="As">,
<input class="copyMe B slot" type="text" placeholder="Bs">, and
<input class="copyMe C slot" type="text" placeholder="Cs"> that make
both of the premises true and the conclusion false?

</div>

<div class="answers">

Here is one way to do it: let 'As' be 'cats'; let 'Bs' be 'animals'; let
'Cs' be 'dogs'.

</div>

In the previous section, we saw that validity had to do with what is or
isn't possible: is it possible that all the premises be true but the
conclusion false? Figuring out what is or isn't possible requires a lot
of imagination, and it isn't always clear what we should say.[^1]

But formal validity is more straightforward.

<div class="boxed">

**Formal Validity**
:   An argument is **formally valid** just in case there is no argument
    with the same logical form that has all true premises and a false
    conclusion.

</div>

We can test the formal validity of an argument by trying to find an
argument that has the same logical form whose premises are *actually*
true, and whose conclusion is *actually* false.

Let's practice.

The following form is invalid. Show this by finding values for 'A', 'B',
and 'C' that make the premises true and the conclusion false.

1.    Some <input class="copyMe A slot" type="text" placeholder="As">
    are <input class="copyMe B slot" type="text" placeholder="Bs">
2.     All <input class="copyMe B slot" type="text" placeholder="Bs">
    are not <input class="copyMe C slot" type="text" placeholder="Cs">
3.  ∴  All <input class="copyMe A slot" type="text" placeholder="As">
    are not <input class="copyMe C slot" type="text" placeholder="Cs">

<div class="answers">

Here is one way to do it: let 'A' be 'numbers', 'B' be 'odd numbers',
and 'C' be 'divisible by two'. Then the premises are both true, but the
conclusion is false.

Here is another way to do it: let 'A' be 'animals', 'B' be 'dogs', and
'C' be 'cats'.

</div>

Is this form valid? Try to find values for 'A', 'B', and 'C' that make
the premises true and the conclusion false.

1.    All <input class="copyMe A slot" type="text" placeholder="As"> are
    <input class="copyMe B slot" type="text" placeholder="Bs">
2.    All <input class="copyMe B slot" type="text" placeholder="Bs"> are
    <input class="copyMe C slot" type="text" placeholder="Cs">
3.  ∴ All <input class="copyMe A slot" type="text" placeholder="As"> are
    <input class="copyMe C slot" type="text" placeholder="Cs">

<div class="answers">

The form is valid. No matter what nouns you plug in for 'A', 'B', and
'C', if the premises are true, the conclusion will be true too.
Aristotle called this argument form "Barbara".

Notice that we cannot really *show* that the argument is valid. All we
can do is try to come up with an example that shows that it is invalid.
When we cannot come up with any such examples, how can we be sure that
this is not simply due to our lack of imagination?

</div>

Is this form valid?

1.    Some <input class="copyMe A slot" type="text" placeholder="As">
    are <input class="copyMe B slot" type="text" placeholder="Bs">
2.  ∴ Some <input class="copyMe B slot" type="text" placeholder="Bs">
    are <input class="copyMe A slot" type="text" placeholder="As">

<div class="answers">

Yes, it is.

</div>

[^1]: Cows are mammals. Might they not have been? If not, the argument

    1.  Grass is green.
    2.  ∴ Cows are mammals.

    is valid, by our definition. Is it formally valid?
