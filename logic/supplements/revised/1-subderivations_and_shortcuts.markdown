---
author: David Sanson
title: 'Subderivations and Shortcuts (1.8 and 1.9)'
...

What is This?
=============

This is a supplement to sections 1.8 and 1.9 of the Logic Text. You
should read those *before* you read this.

Subderivations
==============

Section 1.8 introduces subderivations. Subderivations are derivations
within derivations. Visually, they will look like boxes within boxes.

Consider the following argument,

> If I forgot my umbrella, then if it is raining I will get wet.\
> ${\therefore\ }$ If it is raining, then if I forgot my umbrella I will
> get wet.

Given the following scheme of abbrevation,

  --- ----------------------
  R   It is raining
  U   I forgot my umbrella
  W   I will get wet
  --- ----------------------

we can symbolize the argument as,

$U{\mathbin{\rightarrow}}(R{\mathbin{\rightarrow}}W)$\
${\therefore\ }R{\mathbin{\rightarrow}}(U{\mathbin{\rightarrow}}W)$

This is a valid argument. The intuitive argument for its validity goes
something like so:

> Given the premise, if we assume that it is raining, then, if we also
> assume that I forgot my umbrella, then we can show that I will get
> wet.

Formally, we begin our derivation in the usual way, by entering a show
line for the conclusion. Since the conclusion is a conditional, we
assume the antecedent, in the hopes of completing a conditional
derivation:

![Show the conclusion, assume the
antecedent](http://files.davidsanson.com/logic2010/subder1.png)

<br style="clear:both">

Now what? We could bring down our premise:

![Bringing down the
premise](http://files.davidsanson.com/logic2010/subder2.png)

<br style="clear:both">

But now we are stuck. To complete the derivation, we need to find some
way to get from lines (2) and (3) to the consequent,
$U{\mathbin{\rightarrow}}W$, but we don't have what we need to use MP or
MT with line (3).

The trick is to instead begin a **subderivation**. To do this, we need
to enter a new show line:

![New Show Line](http://files.davidsanson.com/logic2010/subder3.png)

<br style="clear:both">

We can do this by hand, typing 'Show $U{\mathbin{\rightarrow}}W$'. Or we
can use the \*\*Show Command\*, 'Show Cons' (short for "Show
Consequent").

<div class="boxed">

A **Show Command** is a shortcut in the software for entering a Show
Line. Show Commands are not rules. They do not *justify* the line
entered: you can enter any Show Line you like at any time, without
justification. Show Commands reflect some common useful strategies. For
example, it is always a good idea to begin a derivation by entering a
Show Line for the conclusion, and it is often a good idea, if you are
trying to show a conditional, to enter a Show Line for its consequent.

</div>

Now we can bring down our premise, and use MP on lines 4 and 5 to get
$R{\mathbin{\rightarrow}}W$. Then we can use MP again, to get $W$.
Finally, we can box and cancel, using CD:

![Completing the
Subderivation](http://files.davidsanson.com/logic2010/subder4.png)

<br style="clear:both">

We are not done yet. We have shown that $U{\mathbin{\rightarrow}}W$
follows from the premise together with our assumption, on line (2), of
$R$. That means we can now box and cancel our first show line, and so
complete the derivation:

![Completed
Derivation](http://files.davidsanson.com/logic2010/subder5.png)

<br style="clear:both">

Shortcuts
=========

Section 1.9 introduces two shortcuts for completing derivations.

Citing Premises
---------------

First, you can cite premises directly as though they were line numbers,
rather than bringing them down, and then citing their line numbers.

For example, consider the following derivation:

$$P{\mathbin{\rightarrow}}Q\ .\ R{\mathbin{\rightarrow}}{\mathord{\sim}}Q\ .\ P {\therefore\ }{\mathord{\sim}}R$$

<!--

<!--
~~~ {.derivation}

1. !Show $\Lneg R$               & "show conc"
2.   $P\Lif Q$                  & pr
3.   $P$                        & pr
4.   $Q$                        &  2 3 mp
5.   $\Lneg\Lneg Q$             & 4 dn
6.   $R\Lif Q$                  & pr
7.   $\Lneg R$                  & 5 6 mt
8.                              & 7 dd
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>${\mathord{\sim}}R$</span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span
class="dform">$P{\mathbin{\rightarrow}}Q$</span><span
class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">3</span><span class="dform">$P$</span><span
class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">4</span><span class="dform">$Q$</span><span
class="djust">2 3 mp</span>
</p>
<p class="dline">
<span class="dnum">5</span><span
class="dform">${\mathord{\sim}}{\mathord{\sim}}Q$</span><span
class="djust">4 dn</span>
</p>
<p class="dline">
<span class="dnum">6</span><span
class="dform">$R{\mathbin{\rightarrow}}Q$</span><span
class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">7</span><span
class="dform">${\mathord{\sim}}R$</span><span class="djust">5 6
mt</span>
</p>
<p class="dline">
<span class="dnum">8</span><span class="dform"></span><span
class="djust">7 dd</span>
</p>

</div>

</div>

--\>
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>${\mathord{\sim}}R$</span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span
class="dform">$P{\mathbin{\rightarrow}}Q$</span><span
class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">3</span><span class="dform">$P$</span><span
class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">4</span><span class="dform">$Q$</span><span
class="djust">2 3 mp</span>
</p>
<p class="dline">
<span class="dnum">5</span><span
class="dform">${\mathord{\sim}}{\mathord{\sim}}Q$</span><span
class="djust">4 dn</span>
</p>
<p class="dline">
<span class="dnum">6</span><span
class="dform">$R{\mathbin{\rightarrow}}Q$</span><span
class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">7</span><span
class="dform">${\mathord{\sim}}R$</span><span class="djust">5 6
mt</span>
</p>
<p class="dline">
<span class="dnum">8</span><span class="dform"></span><span
class="djust">7 dd</span>
</p>

</div>

</div>

Here is the same derivation, citing the premises directly rather than
bringing them down:

<!--

<!--
~~~ {.derivation}
1. !Show $\Lneg R$               & "show conc"
2.   $Q$                        & pr1 pr3 mp
3.   $\Lneg\Lneg Q$             & 2 dn
4.   $\Lneg R$                  & pr2 3 mt
5.                              & 4 dd
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>${\mathord{\sim}}R$</span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$Q$</span><span
class="djust">pr1 pr3 mp</span>
</p>
<p class="dline">
<span class="dnum">3</span><span
class="dform">${\mathord{\sim}}{\mathord{\sim}}Q$</span><span
class="djust">2 dn</span>
</p>
<p class="dline">
<span class="dnum">4</span><span
class="dform">${\mathord{\sim}}R$</span><span class="djust">pr2 3
mt</span>
</p>
<p class="dline">
<span class="dnum">5</span><span class="dform"></span><span
class="djust">4 dd</span>
</p>

</div>

</div>

--\>
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>${\mathord{\sim}}R$</span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$Q$</span><span
class="djust">pr1 pr3 mp</span>
</p>
<p class="dline">
<span class="dnum">3</span><span
class="dform">${\mathord{\sim}}{\mathord{\sim}}Q$</span><span
class="djust">2 dn</span>
</p>
<p class="dline">
<span class="dnum">4</span><span
class="dform">${\mathord{\sim}}R$</span><span class="djust">pr2 3
mt</span>
</p>
<p class="dline">
<span class="dnum">5</span><span class="dform"></span><span
class="djust">4 dd</span>
</p>

</div>

</div>

Mixed Derivations
-----------------

Second, our justifications for boxing and cancelling---**DD**, **CD**,
and **ID**---are independent of our justifications for making
assumptions---**ASS ID**, **ASS CD**. This means that you can start a
derivation by making an assumption for **CD**, but box and cancel by
**DD** or **ID**. We call these **Mixed Derivations**.

For example, if you start out trying to derive
$W{\mathbin{\rightarrow}}R$ by CD, but then stumble upon a
contradiction, you can box and cancel by ID:

<!--

<!--
~~~{.derivation}
1.   !Show  $W\Lif R$            &         
2.   $W$                         & ass cd
     \ \ ⋮
7.   $P$                         &  
8.   $\Lneg P$                   &
9.                               & 7 8 id
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>$W{\mathbin{\rightarrow}}R$</span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$W$</span><span
class="djust">ass cd</span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">   ⋮</span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum">7</span><span class="dform">$P$</span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum">8</span><span
class="dform">${\mathord{\sim}}P$</span><span class="djust"></span>
</p>
<p class="dline">
<span class="dnum">9</span><span class="dform"></span><span
class="djust">7 8 id</span>
</p>

</div>

</div>

--\>
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>$W{\mathbin{\rightarrow}}R$</span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$W$</span><span
class="djust">ass cd</span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">   ⋮</span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum">7</span><span class="dform">$P$</span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum">8</span><span
class="dform">${\mathord{\sim}}P$</span><span class="djust"></span>
</p>
<p class="dline">
<span class="dnum">9</span><span class="dform"></span><span
class="djust">7 8 id</span>
</p>

</div>

</div>

Mixed Derivations are okay because that can always be made "uniform" by
adding a few more steps.

In the example above, we could have added a subderivation, starting on
line 9, showing $W$:

<!--

<!--
~~~{.derivation}
1.   !Show  $W\Lif R$            &         
2.   $W$                         & ass cd
     \ \ ⋮
7.   $P$                         &  
8.   $\Lneg P$                   &
9.   !Show $R$                  & 'show cons'
10.    $P$                      & 7 r
11.    $\Lneg P$                & 8 r
12.                             & 10 11 id   
13.                             & 9 cd
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>$W{\mathbin{\rightarrow}}R$</span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$W$</span><span
class="djust">ass cd</span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">   ⋮</span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum">7</span><span class="dform">$P$</span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum">8</span><span
class="dform">${\mathord{\sim}}P$</span><span class="djust"></span>
</p>
<p class="dline">
<span class="dnum">9</span><span class="dform"><span
class="dshow canceled">Show</span>$R$</span><span class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">10</span><span class="dform">$P$</span><span
class="djust">7 r</span>
</p>
<p class="dline">
<span class="dnum">11</span><span
class="dform">${\mathord{\sim}}P$</span><span class="djust">8 r</span>
</p>
<p class="dline">
<span class="dnum">12</span><span class="dform"></span><span
class="djust">10 11 id </span>
</p>

</div>

<p class="dline">
<span class="dnum">13</span><span class="dform"></span><span
class="djust">9 cd</span>
</p>

</div>

</div>

--\>
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>$W{\mathbin{\rightarrow}}R$</span><span
class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$W$</span><span
class="djust">ass cd</span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">   ⋮</span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum">7</span><span class="dform">$P$</span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum">8</span><span
class="dform">${\mathord{\sim}}P$</span><span class="djust"></span>
</p>
<p class="dline">
<span class="dnum">9</span><span class="dform"><span
class="dshow canceled">Show</span>$R$</span><span class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">10</span><span class="dform">$P$</span><span
class="djust">7 r</span>
</p>
<p class="dline">
<span class="dnum">11</span><span
class="dform">${\mathord{\sim}}P$</span><span class="djust">8 r</span>
</p>
<p class="dline">
<span class="dnum">12</span><span class="dform"></span><span
class="djust">10 11 id </span>
</p>

</div>

<p class="dline">
<span class="dnum">13</span><span class="dform"></span><span
class="djust">9 cd</span>
</p>

</div>

</div>

Test Your Understanding
-----------------------

Consider the following mixed derivation:

$$Q{\mathbin{\rightarrow}}(Q{\mathbin{\rightarrow}}P) {\therefore\ }Q{\mathbin{\rightarrow}}P$$

<!--

<!--
~~~{.derivation}
1.  !Show $Q\Lif P$         
2.  $Q$                     & ass cd
3.  $Q\Lif P$            & 2 pr1 mp
4.                       & 3 dd
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>$Q{\mathbin{\rightarrow}}P$
</span><span class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$Q$</span><span
class="djust">ass cd</span>
</p>
<p class="dline">
<span class="dnum">3</span><span
class="dform">$Q{\mathbin{\rightarrow}}P$</span><span class="djust">2
pr1 mp</span>
</p>
<p class="dline">
<span class="dnum">4</span><span class="dform"></span><span
class="djust">3 dd</span>
</p>

</div>

</div>

--\>
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>$Q{\mathbin{\rightarrow}}P$
</span><span class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$Q$</span><span
class="djust">ass cd</span>
</p>
<p class="dline">
<span class="dnum">3</span><span
class="dform">$Q{\mathbin{\rightarrow}}P$</span><span class="djust">2
pr1 mp</span>
</p>
<p class="dline">
<span class="dnum">4</span><span class="dform"></span><span
class="djust">3 dd</span>
</p>

</div>

</div>

How would you complete this derivation as a "uniform" derivation
instead?

<div class='answers'>



<!--

<!--
~~~{.derivation}
1.  !Show $Q\Lif P$         
2.  $Q$                     & ass cd
3.  $Q\Lif P$            & 2 pr1 mp
4.  $P$                  & 2 3 mp
5.                      & 4 cd
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>$Q{\mathbin{\rightarrow}}P$
</span><span class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$Q$</span><span
class="djust">ass cd</span>
</p>
<p class="dline">
<span class="dnum">3</span><span
class="dform">$Q{\mathbin{\rightarrow}}P$</span><span class="djust">2
pr1 mp</span>
</p>
<p class="dline">
<span class="dnum">4</span><span class="dform">$P$</span><span
class="djust">2 3 mp</span>
</p>
<p class="dline">
<span class="dnum">5</span><span class="dform"></span><span
class="djust">4 cd</span>
</p>

</div>

</div>

--\>
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>$Q{\mathbin{\rightarrow}}P$
</span><span class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$Q$</span><span
class="djust">ass cd</span>
</p>
<p class="dline">
<span class="dnum">3</span><span
class="dform">$Q{\mathbin{\rightarrow}}P$</span><span class="djust">2
pr1 mp</span>
</p>
<p class="dline">
<span class="dnum">4</span><span class="dform">$P$</span><span
class="djust">2 3 mp</span>
</p>
<p class="dline">
<span class="dnum">5</span><span class="dform"></span><span
class="djust">4 cd</span>
</p>

</div>

</div>
