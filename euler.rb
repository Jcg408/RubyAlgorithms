# 1. Project Euler - Counting Sundays
# You are given the following information - 
# . Jan 1, 1900 was a Monday - Thirty days has Sept, April, June & Nov. All the rest have 31, except Feb - 28 unless leapyear 29. 
# A leapyear occurs on year divisible by 4, but not on century mark unless divisible by 400.

#How many Sundays fell on the first of the month during the twentieth centurey (Jan 1, 1901 - Dec 31, 2000)?
require 'date'

    start_d=Date.new(1901, 01,01)
    end_d = Date.new(2000, 12, 3)
    count = 0;

    while end_d >=start_d
        if end_d.sunday? && end_d.mday==1
            count +=1
        end
        end_d -=1
    end
    puts count    #171
