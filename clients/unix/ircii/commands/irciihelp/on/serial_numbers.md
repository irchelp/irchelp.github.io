---
title: 'ircii help: serial_numbers'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
How to use SERIAL NUMBERS
  This describes the use of serial numbers in ON functions, 
  and is a direct extension of the basic ON help file.

  It is now possible to have more than one ON hook executed for
  each event triggering a hook. This has been done by adding a
  new serial number concept to the ON command. Each ON hook has
  a serial number attached. Serial numbers can be any number
  from -maxint to maxint, with the default being 0.

  When an event triggers a hook, IRCII now goes through the ON
  hooks added for that event, and for each serial number used
  by ON hooks in that hook type, finds the best match out of those
  ON hooks which have that serial number and executes that ON
  hook. The hooks are executed in order of serial number. Thus
  if you set up the following set of MSG hooks.

          ON #^MSG -666 * echo Message coming:
          ON ^MSG * echo Message from $0: $1-
          ON #^MSG 666 * echo I got one, I got one!
          ON #^MSG 666 WiZ echo WiZ hath spoken

  will cause the following to appear when you receive a message:

          Message coming:
          Message from nick: text
          I got one, I got one!

  And the following if you receive a message from WiZ:

          Message coming:
          Message from WiZ: text
          WiZ hath spoken

  The default serial number is 0, and the serial numbers are always
  executed in order, starting with the lowest, and ending with the
  highest.

  Although the '^' modifier can be used with any serial number,
  it will only suppress the default action if used with serial
  number 0. Thus if the only message hook you have is:

          ON #^MSG -666 * echo Incoming:

  You will see the following when you receive a message:

          Incoming:
          *nick* text

  It is advisable to place any ON hooks which do not suppress the
  default action in a serial number other than 0. In particular,
  TIMER hooks, which are generally not intended to exclude other
  TIMER hooks, should be placed at different serial numbers wherever
  possible, and never on 0 (since 0 is the most likely place to
  get a clash if anybody does use it).

```
See Also:
  [ON](on.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>
