---
title: '2.6-2.8: Theorems and Derived Rules'
author: David Sanson
...

\newcommand{\BX}{\mathbin{◻}}
\newcommand{\CI}{\mathbin{○}}
\newcommand{\ERGO}{\therefore\ }
\newcommand{\PERG}{\phantom{\therefore}\ }
\newcommand{\Erg}{\therefore\ }
\newcommand{\Erp}{\phantom{\therefore}\ }
\newcommand{\Land}{\mathbin{\wedge}}
\newcommand{\Lor}{\mathbin{\vee}}
\newcommand{\Liff}{\mathbin{\leftrightarrow}}
\newcommand{\Lneg}{\mathbin{\sim}}
\newcommand{\Lif}{\mathbin{\rightarrow}}

# Overview

Section 2.6 introduces a method for abbreviating derivations. The software calls it "queuing." Section 2.7 discusses some theorems. Section 2.8 introduces derived rules.

# Queuing

Here is the idea. Consider the following derivation:

$P\Land Q\ .\ P\Lif R\ \ERGO R$

~~~{.derivation}
1.  !Show $R$
2.      $P\Land Q$          & pr
3.      $P$                 & 2 s
4.      $P\Lif R$           & pr
5.      $R$                 & 4 5 mp
6.                          & 5 dd
~~~

We have already seen two ways in which this can be shortened: we can use the premises directly instead of bringing them down; we can apply 'dd' to the end of line (5) instead of entering it on a separate line:

~~~{.derivation}
1.  !Show $R$
2.      $P$                 & pr1 s
3.      $R$                 & 2 pr2 mp dd
~~~

Let's pause and consider both of these shortcuts.

Line (2) combines two steps into one:

-   bring down PR2 (to get $P\Land Q$)
-   to the result above, apply S (to get $P$)

Line (3) also combines two steps into one:

-   to line (2) and the result of bringing down PR2, apply MP (to get $R$)
-   given that result, box and cancel by DD

You can combine steps like this on any line. So, for example,

~~~{.derivation}
1.  !Show $R$
2.      $R$                 & pr1 sl pr2 mp dd
~~~

To unpack this, work from left to right:

-   bring down PR1
-   to the result, apply SL (to get $P$);
-   to the result ($P$) and PR2, apply MP (to get $R$)
-   given that result ($R$), box and cancel by DD

Here is a second example.

$P\Lor Q\ .\ \Lneg Q\Land R \ERGO P$

~~~{.derivation}
1.  Show $P$
2.    $P\Lor Q$         & pr
3.    $\Lneg Q\Land R$  & pr
4.    $P$               & 3 sl 2 mtp
5.                      & dd
~~~

On line (4), we have combined a two steps into one line:

-   to (3), apply SL (to get $\Lneg Q$)
-   to the result and line (2), apply MTP (to get $P$)

We could compress the derivation yet further, if we wished, e.g.,

~~~{.derivation}
1.  Show $P$
2.     $P$              & pr2 sl pr1 mtp dd
~~~

Queuing makes derivations more difficult to read. I recommend using it judiciously **if you feel quite confident in your ability to construct derivations**. Otherwise, I don't recommend using it at all.

# Theorems and Derived Rules

Consider the theorem 24 (T24 in the software and the book, problem 2.024 in the software):

$$P\Land Q\Liff Q\Land P$$

This theorem tells us that the order in which conjuncts occur does not matter to the truth of a conjunction. Note that the same would not be true if we replaced the $\Land$'s with $\Lif$'s.

Here is a derivation of the theorem:

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






