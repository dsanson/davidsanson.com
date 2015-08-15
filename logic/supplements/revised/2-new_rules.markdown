---
author: David Sanson
title: 'New Rules (2.4)'
...

New Rules
=========

We have three new connectives, and six new rules.

First, we have two new rules for conjunction ('and').

The first rule is **Simplification** (**S**), which allows us to infer
either conjunct from a conjunction. Because you can infer either
conjunct, the rule has two forms:

<div class="boxed" style="float:left">

<!--
~~~{.derivation}
<input class="copyMe P sym slot" type="text" > $\Land$ <input class="copyMe Q sym slot" type="text" >
<input class="copyMe P sym slot" type="text" >  & S
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
${\mathord{\wedge}}$
<input class="copyMe Q sym slot" type="text" ></span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" ></span><span
class="djust">S</span>
</p>

</div>

</div>

<div class="boxed" style="float:left; clear:both">

<!--
~~~{.derivation}
<input class="copyMe P sym slot" type="text" > $\Land$ <input class="copyMe Q sym slot" type="text" >
<input class="copyMe Q sym slot" type="text" >  & S
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
${\mathord{\wedge}}$
<input class="copyMe Q sym slot" type="text" ></span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe Q sym slot" type="text" ></span><span
class="djust">S</span>
</p>

</div>

</div>

<p style='clear:both'>
Simplification is obviously valid. If this is not immediately obvious to
you (and there is no reason it should be) play around by plugging some
sentences into the box and circle, until you are convinced that any
values that make the premise true will also make the conclusion true.

The second rule is **Adjunction** (**Adj**), which allows us to infer
the conjunction when we have both conjuncts separately. So,

<div class="boxed" style="float:left; clear:both">

<!--
~~~{.derivation}
<input class="copyMe P sym slot" type="text" > 
<input class="copyMe Q sym slot" type="text" >
<input class="copyMe P sym slot" type="text" > $\Land$ <input class="copyMe Q sym slot" type="text" >  & ADJ
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
</span><span class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe Q sym slot" type="text" ></span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
${\mathord{\wedge}}$
<input class="copyMe Q sym slot" type="text" ></span><span
class="djust">ADJ</span>
</p>

</div>

</div>

<p style='clear:both'>
Again, this is obviously valid, but again, you might wish to play around
by plugging in some sentences, to get a better sense of why it is valid.

Next, we have two rules for disjunction ('or').

The first rule is **Addition**, which allows us to infer a disjunction
from either disjunct. Again, this rule has two forms.

<div class="boxed" style="float:left; clear:both">

<!--
~~~{.derivation}
<input class="copyMe P sym slot" type="text" >  
<input class="copyMe P sym slot" type="text" > $\Lor$ <input class="copyMe Q sym slot" type="text" > & ADD
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
</span><span class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
${\mathord{\vee}}$
<input class="copyMe Q sym slot" type="text" ></span><span
class="djust">ADD</span>
</p>

</div>

</div>

<div class="boxed" style="float:left; clear:both">

<!--
~~~{.derivation}
<input class="copyMe P sym slot" type="text" >  
<input class="copyMe Q sym slot" type="text" > $\Lor$ <input class="copyMe P sym slot" type="text" > & ADD
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
</span><span class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe Q sym slot" type="text" >
${\mathord{\vee}}$
<input class="copyMe P sym slot" type="text" ></span><span
class="djust">ADD</span>
</p>

</div>

</div>

<p style='clear:both'>
The second rule is kind of like **MP** and **MT**. We will call it
**Modus Tollendo Ponens** (Latin for 'the way of putting by taking'). It
says that from a disjunction and the negation of one of the disjuncts,
you can infer the other disjunct. Again, the rule has two forms:

<div class="boxed" style="float:left; clear:both">

<!--
~~~{.derivation}
<input class="copyMe P sym slot" type="text" > $\Lor$ <input class="copyMe Q sym slot" type="text" >
$\Lneg$ <input class="copyMe P sym slot" type="text" >
<input class="copyMe Q sym slot" type="text" >  & MTP
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
${\mathord{\vee}}$
<input class="copyMe Q sym slot" type="text" ></span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">${\mathord{\sim}}$
<input class="copyMe P sym slot" type="text" ></span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe Q sym slot" type="text" ></span><span
class="djust">MTP</span>
</p>

</div>

</div>

<div class="boxed" style="float:left; clear:both">

<!--
~~~{.derivation}
<input class="copyMe P sym slot" type="text" > $\Lor$ <input class="copyMe Q sym slot" type="text" >
$\Lneg$ <input class="copyMe Q sym slot" type="text" >
<input class="copyMe P sym slot" type="text" >  & MTP
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
${\mathord{\vee}}$
<input class="copyMe Q sym slot" type="text" ></span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span class="dform">${\mathord{\sim}}$
<input class="copyMe Q sym slot" type="text" ></span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" ></span><span
class="djust">MTP</span>
</p>

</div>

</div>

<p style='clear:both'>
Play around with these forms, to get a sense of why they are valid.

<div class="cor">

Finally, we have two rules for the biconditional ('if and only if'). The
two rules track the fact that the biconditional, is equivalent to
<input class="copyMe P sym slot" type="text" >
${\mathord{\leftrightarrow}}$
<input class="copyMe Q sym slot" type="text" >, is equivalent to the
conjunction of both conditionals,
(<input class="copyMe Q sym slot" type="text" >
${\mathbin{\rightarrow}}$
<input class="copyMe P sym slot" type="text" >) ${\mathord{\wedge}}$
(<input class="copyMe P sym slot" type="text" >
${\mathbin{\rightarrow}}$
<input class="copyMe Q sym slot" type="text" >).

</div>

The first rule is called **Conditionals to Biconditional** (**CB**), and
says that, if you have both conditionals, you can infer the
biconditional.

<div class="boxed" style="float:left; clear:both">

<!--
~~~{.derivation}
<input class="copyMe P sym slot" type="text" > $\Lif$ <input class="copyMe Q sym slot" type="text" > 
<input class="copyMe Q sym slot" type="text" > $\Lif$ <input class="copyMe P sym slot" type="text" >
<input class="copyMe P sym slot" type="text" > $\Liff$ <input class="copyMe Q sym slot" type="text" > & CB
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
${\mathbin{\rightarrow}}$ <input class="copyMe Q sym slot" type="text" >
</span><span class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe Q sym slot" type="text" >
${\mathbin{\rightarrow}}$
<input class="copyMe P sym slot" type="text" ></span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
${\mathord{\leftrightarrow}}$
<input class="copyMe Q sym slot" type="text" ></span><span
class="djust">CB</span>
</p>

</div>

</div>

<p style='clear:both'>
The second rule has two forms. It says that, from the biconditional, you
can infer either conditional. We call it **Biconditional to
Conditional** (**BC**):

<div class="boxed" style="float:left; clear:both">

<!--
~~~{.derivation}
<input class="copyMe P sym slot" type="text" > $\Liff$ <input class="copyMe Q sym slot" type="text" > 
<input class="copyMe P sym slot" type="text" > $\Lif$ <input class="copyMe Q sym slot" type="text" > & BC   
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
${\mathord{\leftrightarrow}}$
<input class="copyMe Q sym slot" type="text" > </span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
${\mathbin{\rightarrow}}$
<input class="copyMe Q sym slot" type="text" ></span><span
class="djust">BC </span>
</p>

</div>

</div>

<div class="boxed" style="float:left; clear:both">

<!--
~~~{.derivation}
<input class="copyMe P sym slot" type="text" > $\Liff$ <input class="copyMe Q sym slot" type="text" >
<input class="copyMe Q sym slot" type="text" > $\Lif$ <input class="copyMe P sym slot" type="text" >  & BC
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe P sym slot" type="text" >
${\mathord{\leftrightarrow}}$
<input class="copyMe Q sym slot" type="text" ></span><span
class="djust"></span>
</p>
<p class="dline">
<span class="dnum"></span><span
class="dform"><input class="copyMe Q sym slot" type="text" >
${\mathbin{\rightarrow}}$
<input class="copyMe P sym slot" type="text" ></span><span
class="djust">BC</span>
</p>

</div>

</div>

<p style='clear:both'>
