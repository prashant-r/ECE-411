ECE-411
========

Computer Organization and Design -- designing an LC3-pipelined processor

ECE 411 MP3 Design Proposal -TONY AND FRIENDS Pipelined Cached Design Implementation Sp ’14 Team: Tony and Friends ( Tony Aikara, Thomas Niu, Prashant Ravi) TA : Leslie Hwang
Design Plan: For MP3 we are designing a microarchitecture with the following functionalities:
Basic Design options: Basic 5 stage pipeline with full instruction set and data forwarding, Pipeline with cache integration, Split L1 cache, L1 cache request arbiter, unified L2 cache
Cache Organization Design: 4-way set associative L2 cache, 4-way pseudo LRU replacement policy
Advanced cache: cache line eviction buffer
Performance Counter: L1I,L1D,L2 cache miss rate, branch mispredict rate, bubble insert on rate
Datapath Design: Branch, Target Buffer, Branch prediction under BTB , Support for TRAP, JSSR, and JMP in BTB, support for unconditional branch and jsr in BTB, separate branch history table, 2- way set associative BTB with 16 sets

Compiler/hardware co-design: LC3-X Support

What work we plan to do?
===========================
The plan is to design a basic pipeline within our datapath that would run all our testcode from mp1 just as accurately, for the first checkpoint.In this checkpoint, of course we will be using the provided code for main memory so, the cache implementation will be scrapped for now.

Extra credit Implementation:
============================
For the extra credit if we get enough time we are planning to implement the following: 8-way set associative L2 cache 8 way true LRU clock time under 50 ns static scheduled VLIW/EPIC LC3x
How you expect to earn the 40 design points (/team member)?
While we will be responsible for each other’s implementations, eventuallly. A general scheme of responsibilities will be divided according to the design units that follow. If the design unit falls under memory- Prashant Ravi. And if it falls inside datapath -Tony and Thomas.

The points that should add to 120+ total:
==========================================
0)  All under Basic Design Options! (65 points) -- Prashant (Basic Datapath CP1, Stalling Unit), Tony(All other instruction)

1)  Cache line eviction buffer (8 points) -- Prashant 

2)  Branch Target Buffer (10 points) -- Thomas

3)  Branch prediction under BTB - ( 5 points) --Thomas

4)  LC3-X Support ( 10 points) -- Tony

5)  Support for TRAP, JSSR, and JMP in BTB (5 points) --Tony

6)  Support for unconditional branch and jsr in BTB (5 points) --Tony

7)  Separate branch history table ( 10 points) --Thomas

8)  2- way set associative BTB with 16 sets (3 points)- Thomas

9)  Bonus fo 8-way set associative L2 cache–(10 points) -- Prashant

10) Bonus for 8-way truereplacement policy–(8 points)-- Prashant

11) L1I,L1D,L2 cache miss rate –1 point each (3 points total) --Prashant

12) 1point for branch mispredict rate – (1point) --Thomas

13) 1point for bubble insert on rate– (1 point) --Thomas

Detailed breakdown b/w members
=============================================
Tony Jose Aikara :LC3X support, data path to support the full instruction set and data forwarding, support for TRAP, JSSR, and JMP in BTB, Support for unconditional branch and JSR in BTB
Prashant Ravi: Will be responsible for DRAM bursting, Instruction cache, Data cache, L2 cache and arbiter. Basically anything memory related.
Thomas Niu : data path to support the full instruction set and data forwarding, Branch Prediction under Branch Target Buffer, Branch Target Buffer,


ReadMEFirst: ( Rules for further commits) 
=========================================

Hi team!
Welcome to tony and friends for ECE 411 MP3. For this machine problem we will be using the following conventions for commits:

Committing Conventions:
=======================
Always describe your commit, and add your name at the end of the commit- to do this you must type in the details tab that’s alongside each folder. So, for example- “i just made level 1 Cache work. Will compile. Author -Prashant. Commit #1”

Make Folders for each commit that would contain a zipped .tar file of your project, this would help making commits faster.

Increment the commit number from the previous commit, like in the example for Point #1 so that its easy to reference the commit number if google happens to order the folders incorrectly.

Naming & Coloring Conventions:
==============================
Write your signal names in the following format so they represent which component
(from _ its function _ to ) the signal is associated with.

For any major design component that you may have implemented for extra credit, that’s not due for checkpoints, color them separately. And, supposing you have changed a current design component you must account for it by changing the color of the component to RED, so that the other group members could see where you have made changes and try to modify/fix the design instead of being lost.

Links: Here’s a link that might help with implementation: http://www.ece.cmu.edu/~ece447/s13/lib/exe/fetch.php?media=18447-lc3b-pipelining.pdf
