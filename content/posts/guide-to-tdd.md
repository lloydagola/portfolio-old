---
id: 3
title: Guide to Test Driven Development
# image field is not mandatory
# you can skip it to keep the size of blog cards small
# image: /images/blog/software-testing.jpg
createdAt: "2021-08-19 5:00:00"
tags:
  - testing
  - tdd
category: dev
author:
  name: lloydagola
  twitter: lloydagola
  image: /images/bigheadkarngyan.png
---

Today, I will attempt to explain to you why exactly Test Driven Development is the perfect approach for your next project and your company.

<!--more-->



<img width="80%" src="/images/blog/software-testing.jpg" alt="Big Head Karn"/>


The basics
--------------------------

"If you haven't tested your code, how do you know it works?" These were the wise
words my mentor dropped on me one day after I had just reported a new feature completed. 
At the time I was brand new to software engineering and I had heard of testing. But I always 
had it backwards: you first write code, then you write tests. Right? To my surprise,  it
was apparently much much better to start with the test before you even thought of touching 
code! Confused? Great! That was my introduction to the wonderful world of Test Driven 
Development too! After I got the hang of it, however, I could never understand why I always did it any other way.

Today, I will attempt to explain to you why exactly Test Driven Development is the perfect approach for 
your next project and your company. 

Before we get ahead of ourselves, what is "software testing?" Well a "test" is simply a series of repeatable
steps to evaluate something. 'Software testing', therefore, is a process of evaluating the functionality of a 
software application with an intent to find whether the developed software met the specified requirements or not and to 
ensure that the product is defect-free. Easy enough right?

Now that we're on the same page let's tackle the next beast: Test-driven development. TDD reverses traditional development and testing. 
So, instead of writing your code first and then retroactively fitting a test to validate the piece 
of code you just wrote, test-driven development requires that you start by writing the test 
and then implement code changes until your code passes that test.

In  TDD,  you  write  your  unit  test  first,  watch  it  fail,  and  then  implement a series of code changes  until  the  test  passes.  
The result is, believe it or not, code  that is cleaner and less prone to breaking in the long run.

You may also hear the term 'unit test' a lot. A unit test simply covers a small portion of logic, like an algorithm.  Unit  tests 
should  be  deterministic  i.e  they  must have no side-effects  like  external API that  deliver  random  or  changing  data. 
Instead, you’d use mock data in place of data that could potentially change over time.

Rules of engagement
---------------------------------
There are a few simple rules to remember as you learn TDD.
1.You must not write any production code unless it is to make a failing unit test pass. This means you always write a test before you 
think about writing code. 

2.Write the bare minimum amount of code required to make your failing test pass and no more! A common gotcha at this stage when you’re first 
starting out is being tempted to finish all the code for your logic at once but you must resist this! Stop as soon as the test passes.

Finally: all code is guilty until proven innocent!

The TDD process
---------------------------------------

TDD can be summarised into 3 phases

<img width="80%" src="/images/blog/tdd.png" alt="Big Head Karn"/>

1.Write a failing test
----------------------------
At this stage, write  a  test  on  a  behavior  that  you are  about  to  implement.  Remember, TDD  requires writing  a  test  before  you  write  any 
piece of production code

Contrary to what you might expect, you  have  to  write  a  test  that  uses  a  piece  of  code  as  if  it  were  already implemented. If,  in  this  
phase,  you  are thinking  about  how  you  are  going  to  write  the  production  code,  you  are doing it wrong.

Do not write a bunch of functions/classes you think you will need. Again, Concentrate only on the feature you are implementing.



2.Make it pass
--------------------------------
in  this  phase  you  write  (production) code. If you are a programmer, this is what you already do that all the time. Write a straightforward solution that 
makes the test pass. You are allowed to violate best practices and even duplicate code. Code duplication will be removed in the refactor phase.

Simplicity is supreme. Keep your tasks simple as a smiple task is less prone to errors. Thou shall not, however, mix up code under testing with code that is not.



3.Refactor
-----------------------------------
change the code, while keeping all tests green. Remove  code  duplication,  fix/refactor  the  code  to  bring  it  to  a  professional level. 
you’re  showing  off  your  skills  to  the  programmers  who  will read your implementation.

Removing  code  duplication  often  results  in  abstraction.  A  typical  example  is when you move two pieces of similar code into a helper class that works for both 
the functions/classes where the code has been removed.


The  unit  tests  that  come  out  of  TDD  are  also  an  integral  part  of  the  continuous 
integration/continuous delivery(CI/CD) process. CI is a development practice that 
requires  developers  to  integrate  code  into  a  shared  repository  several  times  a 
day.  Each  check-in  is  then  verified  by  an  automated  build,  allowing  teams  to 
detect problems early. By integrating regularly, you can detect errors quickly, and 
locate them more easily. The tests are run in the deployment pipeline. If all tests 
pass, integration and deployment happens. On the other hand, if any tests fail, the 
process is halted thus ensuring the build is not broken.

Most programmers don’t write code using test-driven development, but they 
should. Test-driven development creates better code that is more fault-tolerant. 

