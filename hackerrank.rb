
# Given a time in -hour AM/PM format, convert it to military (24-hour) time.
# Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour
# clock. Noon is 12:00:00PM on a 12-hour clock, and 12:00:00 on a 24-hour clock.
# Function Description:
# Complete the timeConversion function in the editor below. It should return a
# new string representing the input time in 24 hour format.
# timeConversion has the following parameter(s):
# s: a string representing time in  hour format.

def time_convert(string)
  new_str = string.split(':')

  if string.start_with?('12') && string.end_with?('AM')
    new_str[0] = '00'
    new_str.join(':').slice(0, 8)
  elsif string.start_with?('12') || string.end_with?('AM')
    new_str.join(':').slice(0, 8)
  elsif string.end_with?('PM')
    new_str[0] = new_str[0].to_i
    new_str[0] += 12
    new_str[0].to_s
    new_str.join(':').slice(0, 8)
 end
end