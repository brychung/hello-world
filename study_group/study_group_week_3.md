
#Study Group Jan 31#


*Error Handling*
-Confirming it’s an integer
-use their first line verbatim?
-You can rewrite the line OR
    -Use Try/Except
    -Try, then prompt the user, if and error is thrown 
-Input checks: one for a string and one for a negative
    -Way to check these at same time? No.. 
    -Save typing: create a generic variable with your error statement
-Palindromes: include other characters?
    -Split decision - define in assumption 
-import string.ascii will import all characters, can use to check against
-Punctuation?
    -Yes: consider punctuation a character
    -Anna! is not a palindrome
-Exception statement for no characters?


*Pascal*
-Approaches?: 
-For loop embedded in a while loop, or For loop inside a for loop
-Shawn:
    -Given value for line one and two
    -only need previous line and current line (throw out all others)
    -only printing asked for line
-Append each new character into a list?
-Because you’re using math, string would be pain
-Append or extend can be used to build lists
-Beginning and ending characters solid values (1)?
    -Originally Started with “1 1” and crammed stuff into middle
-Best practice for using indexes from previously row?
    -Shawn used slicing to extract a single value from the previous list
    -Used a relative location in previous string to generate value of current row index
        -The relationship is constant
-For row one (1) you have to hard code it, for row two (1 1) you can hard code or build it in (shawn built it in)
-Writing them as comprehensions or writing them out?
    -Shawn uses comprehensions to do the actual print
-Can you do Pascals without for loop? Yes, you can use while
    -Can also use IF statements 
-Good practice: use a list of numbers, and then use a comprehensions to turn into string before printing (comprehension with a join)

*Factor Tree*
-Formatting working with big input numbers?
    -Giles: Try a big number in and post result or formatting
-Come people use a counter to track the right amount of spaces
-Best practices for tree?
    -Some used reverse method on the first string to get back side
    -Some used negative step to  get the back side of the strings
-Built from center and spend the number to the beginning and end of list
-String vs List?
-How to turn a list into a pretty string, use a join with a map
-Shawn: encountered same error, so when he was appending items, was turning them into strings, so was dealing with a --list of strings

*Palindrome*
-Capitalize multiple words?
    -can use title function on strings
-how do you handle lowercase/uppercase depending on user input
-You can immediately put input into lower case using .lower

*Tests?*
-Lets ask bill about:
-timing of tests and projects
content covered

