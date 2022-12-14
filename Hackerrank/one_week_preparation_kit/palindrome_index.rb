#!/bin/ruby

require 'pry'
require 'json'
require 'stringio'


def PalindromeIndex(s)
	return -1 if s == s.reverse
	arr = s.split("")
	
	for x in (0..s.length-1)
		return x if arr.select.with_index{|_,index| index != x }.join("") == arr.select.with_index{|_,index| index != x }.join("").reverse
	end


	
	return -1
end


p PalindromeIndex("aaab") #=> 3
p PalindromeIndex("baa") #=> 0
p PalindromeIndex("aaa") #=> -1



# https://stackoverflow.com/questions/65435540/palindrome-index-hackerrank-with-javascript


function isPalindrome(s) {
      for (let i = 0; i < s.length/2; i++) {
            if (s[i] !== s[s.length - 1 - i]) {
                  return false;
            }
      }
      return true;
}