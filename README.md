# Summative Task

## Overall goal

My summative task will be a simulator designed to test how sturdy a house will be

I will allow the user to input windspeed and then it will simulate how long it will take for the house to fall down if at all.

If I have time I will give the user the ability to simulate an earthquake and they will imput the magnitude and it will simulate how long it will take for the house to fall down.

## Sub-goals

* extend Motion class (that we developed earlier together) to allow for force accumulation (wind, gravity, other forces)
* Allow user inputs
* modify the visual representation of the Motion class to more closely resemble a house

### Reflection Questions

## What (if anything – although there is probably at least something) does the user need to know about what your program does?

My program simulates a house being knocked down by the wind.

## What (if anything) does the user need to know to operate your program (keystrokes, et cetera)?

My program takes the ascii value of a character pressed and subtracts 48 from it. Since the ascii value of the numer 0 is 48 when you press 0 that is the windspeed that you get. So if you press a number it will add that to the velocity of the house beams/roof.


## How does your program show evidence of your understanding of object-oriented programming concepts like encapsulation and inheritance?

In my addForces function I take data from the user and other variables and then use it to manipulate the house's speed and acceleration
(Encapsulation). As well I extended the brick class to be manipulated by forces, IE, Friction, the normal force, windforce. (Inheritance) 

## What evidence can you provide that your program is human-readable?
# For example, where have you used:
* descriptive function names
* meaningful variable names
* comments that describe the intention of a block of code

Some examples of (descriptive function names are the checkEdges function in the Brick and Roof class)[https://github.com/rsgc-raymond-c/summative-task/blob/master/Motion/Brick.pde#L49-L55] which check to see if the brick or roof has hit the border of the frame. As well the (addForces function)[https://github.com/rsgc-raymond-c/summative-task/blob/master/Motion/Brick.pde#L49-L55] does just that, add all the forces to the brick or roof. I've been good about having descriptive variable names too, for example instead of just adding the negative velocity to a brick when it hits the ground I created a variable called the (normalforce)[https://github.com/rsgc-raymond-c/summative-task/blob/master/Motion/Brick.pde#L38-L39] which is the negative velocity so it is easier to read. Finally I have (commented)[https://github.com/rsgc-raymond-c/summative-task/blob/master/Motion/Brick.pde#L20-L36] most of my code to make it easier.

## What is the most important algorithm, or algorithm(s), in your program?
# That is, where is the "core idea" of your program?
# Explain how this works.

The most important function in my addForces function which adds the normal force and adds friction, this makes the program much more realistic than it would be otherwise.

##How have you made your program easy to use?

Yes, all you have to do is press a button.

##How have you made correct use of source control?
#For example, show that you have:
*made frequent commits
*kept commits "atomic" (i.e.: one accomplishment per commit, rather than a batch of things all committed at once)
descriptive commit messages

At the beginning my commits were probably to infrequent but near the end my comits were much more 'atomic'.

