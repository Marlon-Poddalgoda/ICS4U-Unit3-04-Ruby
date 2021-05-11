#!/usr/bin/env ruby

##
# This program solves the Towers of Hanoi problem
# using recursion, while displaying each step.
#
# Created by: Marlon Poddalgoda
# Version: 1.0
# Since:   2021-05-10
# frozen_string_literal: true


def towers_of_hanoi(ndisks, startPeg, endPeg)
    # solves the towers of hanoi problem

    # variable
    six = 6

    # if statement
    if ndisks == 1
        puts "Move disk 1 from peg #{startPeg} to peg #{endPeg}"
    else
        towers_of_hanoi(ndisks - 1, startPeg, six - startPeg - endPeg)
        puts "Move disk #{ndisks} from peg #{startPeg} to peg #{endPeg}"
        towers_of_hanoi(ndisks - 1, six - startPeg - endPeg, endPeg)
    end
end

puts "This is the Towers of Hanoi program."
puts
begin
    # try statement

    # constants
    StartPeg = 1
    EndPeg = 3

    # getting user input
    print "Enter how many disks you want: "

    # Gets the user input as an int
    userInput = Integer(gets) rescue false

    # making sure the user inputted an appropriate integer
    if userInput < 0
        StandardError()
    else
        puts
        towers_of_hanoi(userInput, StartPeg, EndPeg)
    end

rescue StandardError
    # error catch, if user input cannot be converted to int
    puts
    puts "Sorry, that's not a number. Please try again."
end

puts
puts "Done."
