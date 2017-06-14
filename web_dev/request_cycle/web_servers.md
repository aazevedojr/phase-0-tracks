# Web Servers

## What are some of the key design philosophies of the Linux operating system?

* **Small is Beautiful**: *Separation of concerns is taken very seriously in Linux; a program should run fast and complete the specific task that it was given, not much else.*
* **Each Program Does One Thing Well**: *Also relates to separation of concerns.*
* **Use Software Leverage**: *"Good programmers write good code and great programmers borrow good code. Never rewrite code that has already been written."* — [David Both, 2015](https://opensource.com/business/15/2/how-linux-philosophy-affects-you)
* **Make Every Program a Filter**: *Take an input, make some changes to it, return an output.*

## In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

VPS are remote servers that act like a physical computer that can be quickly configured (set the memory and processing power, choose a OS, create users etc). They are good to experiment with on bash, since they can be easily destroyed without compromising a real machine.  
Their main use would be to host a website, in which case you should choose the appropriate plan for your VPS (the faster/bigger the more expensive).

## Why is it considered a bad idea to run programs as the root user on a Linux system?

Running programs as the root user on Linux would be analogous to committing code from your master branch on Git.  
If you enter the wrong command or run a program that has a bug as root, you might cause irreversible damage to your machine or VPS.  
Some programs won't ever work if you try to run them as root, because you're not supposed to ever be doing that in first place.
