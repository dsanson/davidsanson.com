---
author: David Sanson
title: '2.6-2.8: Theorems and Derived Rules'
...

Overview
========

Section 2.6 introduces a method for abbreviating derivations. The
software calls it "queuing." Section 2.7 discusses some theorems.
Section 2.8 introduces derived rules.

Queuing
=======

Here is the idea. Consider the following derivation:

$P{\mathbin{\wedge}}Q\ .\ P{\mathbin{\rightarrow}}R\ {\therefore\ }R$

<!--
~~~{.derivation}
1.  !Show $R$
2.      $P\Land Q$          & pr
3.      $P$                 & 2 s
4.      $P\Lif R$           & pr
5.      $R$                 & 4 5 mp
6.                          & 5 dd
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>$R$</span><span class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span
class="dform">$P{\mathbin{\wedge}}Q$</span><span class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">3</span><span class="dform">$P$</span><span
class="djust">2 s</span>
</p>
<p class="dline">
<span class="dnum">4</span><span
class="dform">$P{\mathbin{\rightarrow}}R$</span><span
class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">5</span><span class="dform">$R$</span><span
class="djust">4 5 mp</span>
</p>
<p class="dline">
<span class="dnum">6</span><span class="dform"></span><span
class="djust">5 dd</span>
</p>

</div>

</div>

We have already seen two ways in which this can be shortened: we can use
the premises directly instead of bringing them down; we can apply 'dd'
to the end of line (5) instead of entering it on a separate line:

<!--
~~~{.derivation}
1.  !Show $R$
2.      $P$                 & pr1 s
3.      $R$                 & 2 pr2 mp dd
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>$R$</span><span class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$P$</span><span
class="djust">pr1 s</span>
</p>
<p class="dline">
<span class="dnum">3</span><span class="dform">$R$</span><span
class="djust">2 pr2 mp dd</span>
</p>

</div>

</div>

Let's pause and consider both of these shortcuts.

Line (2) combines two steps into one:

-   bring down PR2 (to get $P{\mathbin{\wedge}}Q$)
-   to the result above, apply S (to get $P$)

Line (3) also combines two steps into one:

-   to line (2) and the result of bringing down PR2, apply MP (to get
    $R$)
-   given that result, box and cancel by DD

You can combine steps like this on any line. So, for example,

<!--
~~~{.derivation}
1.  !Show $R$
2.      $R$                 & pr1 sl pr2 mp dd
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow canceled">Show</span>$R$</span><span class="djust"></span>
</p>
<div class="der boxed">

<p class="dline">
<span class="dnum">2</span><span class="dform">$R$</span><span
class="djust">pr1 sl pr2 mp dd</span>
</p>

</div>

</div>

To unpack this, work from left to right:

-   bring down PR1
-   to the result, apply SL (to get $P$);
-   to the result ($P$) and PR2, apply MP (to get $R$)
-   given that result ($R$), box and cancel by DD

Here is a second example.

$P{\mathbin{\vee}}Q\ .\ {\mathbin{\sim}}Q{\mathbin{\wedge}}R {\therefore\ }P$

<!--
~~~{.derivation}
1.  Show $P$
2.    $P\Lor Q$         & pr
3.    $\Lneg Q\Land R$  & pr
4.    $P$               & 3 sl 2 mtp
5.                      & dd
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow">Show</span>$P$</span><span class="djust"></span>
</p>
<div class="der">

<p class="dline">
<span class="dnum">2</span><span
class="dform">$P{\mathbin{\vee}}Q$</span><span class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">3</span><span
class="dform">${\mathbin{\sim}}Q{\mathbin{\wedge}}R$</span><span
class="djust">pr</span>
</p>
<p class="dline">
<span class="dnum">4</span><span class="dform">$P$</span><span
class="djust">3 sl 2 mtp</span>
</p>
<p class="dline">
<span class="dnum">5</span><span class="dform"></span><span
class="djust">dd</span>
</p>

</div>

</div>

On line (4), we have combined a two steps into one line:

-   to (3), apply SL (to get ${\mathbin{\sim}}Q$)
-   to the result and line (2), apply MTP (to get $P$)

We could compress the derivation yet further, if we wished, e.g.,

<!--
~~~{.derivation}
1.  Show $P$
2.     $P$              & pr2 sl pr1 mtp dd
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow">Show</span>$P$</span><span class="djust"></span>
</p>
<div class="der">

<p class="dline">
<span class="dnum">2</span><span class="dform">$P$</span><span
class="djust">pr2 sl pr1 mtp dd</span>
</p>

</div>

</div>

Queuing makes derivations more difficult to read. I recommend using it
judiciously **if you feel quite confident in your ability to construct
derivations**. Otherwise, I don't recommend using it at all.

Theorems and Derived Rules
==========================

Consider the theorem 24 (T24 in the software and the book, problem 2.024
in the software):

$$P{\mathbin{\wedge}}Q{\mathbin{\leftrightarrow}}Q{\mathbin{\wedge}}P$$

This theorem tells us that the order in which conjuncts occur does not
matter to the truth of a conjunction. Note that the same would not be
true if we replaced the ${\mathbin{\wedge}}$'s with
${\mathbin{\rightarrow}}$'s.

Here is a derivation of the theorem:

<!--
~~~{.derivation}
1.   Show $P\Land Q\Liff Q\Land P$
2.     Show $P\Land Q\Lif Q\Land P$
3.         $P\Land Q$                   & ass cd
4.         $P$                          & 3 sl
5.         $Q$                          & 3 sr
6.         $Q\Land P$                   & 4 5 adj cd
7.     Show $Q\Land P\Lif P\Land Q$
8.         $Q\Land P$                   & ass cd
9.         $Q$                          & 8 sl
10.        $P$                          & 8 sl
11.        $P\Land Q$                   & 9 10 adj cd
12.    $P\Land Q\Liff Q\Land P$         & 2 7 cb dd
~~~
-->
<div class="der outer">

<p class="dline">
<span class="dnum">1</span><span class="dform"><span
class="dshow">Show</span>$P{\mathbin{\wedge}}Q{\mathbin{\leftrightarrow}}Q{\mathbin{\wedge}}P$</span><span
class="djust"></span>
</p>
<div class="der">

<p class="dline">
<span class="dnum">2</span><span class="dform"><span
class="dshow">Show</span>$P{\mathbin{\wedge}}Q{\mathbin{\rightarrow}}Q{\mathbin{\wedge}}P$</span><span
class="djust"></span>
</p>
<div class="der">

<p class="dline">
<span class="dnum">3</span><span
class="dform">$P{\mathbin{\wedge}}Q$</span><span class="djust">ass
cd</span>
</p>
<p class="dline">
<span class="dnum">4</span><span class="dform">$P$</span><span
class="djust">3 sl</span>
</p>
<p class="dline">
<span class="dnum">5</span><span class="dform">$Q$</span><span
class="djust">3 sr</span>
</p>
<p class="dline">
<span class="dnum">6</span><span
class="dform">$Q{\mathbin{\wedge}}P$</span><span class="djust">4 5 adj
cd</span>
</p>

</div>

<p class="dline">
<span class="dnum">7</span><span class="dform"><span
class="dshow">Show</span>$Q{\mathbin{\wedge}}P{\mathbin{\rightarrow}}P{\mathbin{\wedge}}Q$</span><span
class="djust"></span>
</p>
<div class="der">

<p class="dline">
<span class="dnum">8</span><span
class="dform">$Q{\mathbin{\wedge}}P$</span><span class="djust">ass
cd</span>
</p>
<p class="dline">
<span class="dnum">9</span><span class="dform">$Q$</span><span
class="djust">8 sl</span>
</p>
<p class="dline">
<span class="dnum">10</span><span class="dform">$P$</span><span
class="djust">8 sl</span>
</p>
<p class="dline">
<span class="dnum">11</span><span
class="dform">$P{\mathbin{\wedge}}Q$</span><span class="djust">9 10 adj
cd</span>
</p>

</div>

<p class="dline">
<span class="dnum">12</span><span
class="dform">$P{\mathbin{\wedge}}Q{\mathbin{\leftrightarrow}}Q{\mathbin{\wedge}}P$</span><span
class="djust">2 7 cb dd</span>
</p>

</div>

</div>
