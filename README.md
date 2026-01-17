# ASMMult

## Overview
This was my first voyage into machine code. I chose to use MASM assembly and wanted a simple program that would push me to learn about how a computer functions at a lower level.

## Why I Built This
Both signed and unsigned multiplication exist at this level; they can be called using MUL and IMUL. I decided that I wanted to make a project that did a simple function, and when I started programming this project, I was so new to MASM that I didn't have output to the console, but was looking at values in memory to determine if I was getting the correct result. I decided on remaking basic signed multiplication using repeated addition as a way to learn about the CPU registry, CMP, loops using labels and variables in memory. I later used my simple program as a base to learn how to have console input and output.

## How It Works
The program takes in two numbers to multiply.
The program multiplies the numbers together by either adding or subtracting the first given value (mult1), the second value (mult2) times. 

## How to Run
Requirements:
- Windows
- Any MASM-compatible assembler (I used Visual Studio)

Run the program:
Build the program with any compatible MASM assembler.
Run the program's executable file.
