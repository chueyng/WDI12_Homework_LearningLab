# https://gist.github.com/wofockham/e3db2d0e21e7201f76a0
# Q1 - [10] Make a program that prints each line of its input that mentions fred. (It shouldn’t do anything for other lines of input.) Does it match if your input string is Fred, frederick, or Alfred? Make a small text file with a few lines mentioning "fred flintstone" and his friends, then use that file as input to this program and the ones later in this section.

# Q2 - [6] Modify the previous program to allow Fred to match as well. Does it match now if your input string is Fred, frederick, or Alfred? (Add lines with these names to the text file.)

# Q3 - [6] Make a program that prints each line of its input that contains a period (.), ignoring other lines of input. Try it on the small text file from the previous exercise: does it notice Mr. Slate?

# Q4 - [8] Make a program that prints each line that has a word that is capitalized but not ALL capitalized. Does it match Fred but neither fred nor FRED?

# Q5 - [8] Make a program that prints each line that has a two of the same nonwhitespace characters next to each other. It should match lines that contain words such as Mississippi, Bamm-Bamm, or llama.

# Q6 - [8] Extra credit exercise: write a program that prints out any input line that mentions both wilma and fred.

# Q7 - Using the pattern test program, make a pattern to match the string match. Try the program with the input string beforematchafter. Does the output show the three parts of the match in the right order?

# Q8 - Using the pattern test program, make a pattern that matches if any word (in the \w sense of word) ends with the letter a. Does it match wilma but not barney? Does it match Mrs. Wilma Flintstone? What about wilma&fred? Try it on the sample text file from the last exercises (and add these test strings if they weren’t already in there).

# Q9 - Modify the program from the previous exercise so that the word ending with the letter a is captured into $1. Update the code to display that variable’s contents in single quotes, something like $1 contains 'Wilma'.

# Q10 - Modify the program from the previous exercise to use named captures instead of relying on $1. Update the code to display that label name, something like 'word' contains 'Wilma'.

# Q11 - Extra credit exercise: modify the program from the previous exercise so that immediately following the word ending in a it will also capture up-to-five characters (if there are that many characters, of course) in a separate capture variable. Update the code to display both capture variables. For example, if the input string says I saw Wilma yesterday, the up-to-five characters are “yest”. If the input is I, Wilma!, the extra capture should have just one character. Does your pattern still match just plain wilma?

# Q12 - Write a new program (not the test program!) that prints out any input line ending with whitespace (other than just a newline). Put a marker character at the end of the output line so as to make the whitespace visible.

ARGF.each do |line|
  # puts line if line =~ /fred/  #Q1
  # puts line if line =~ /[Ff]red/    #Q2
  # puts line if line =~ /\./   #Q3
  # puts line if (line =~ /[A-Z][a-z]+/ || line =~ /[a-z][A-Z]+/) #Q4
  # puts line if line =~ /(.)\1/ #Q5
  # puts line if (line =~ /fred.*wilma/ || line =~ /wilma.*fred/) #Q6

  # if (m = line.match(/match/))
  #   puts m.pre_match
  #   puts m[0]
  #   puts m.post_match
  # end  #Q7

  # if (m = line.match(/\w*a\b/))
  #   puts m[0]   #Q8
  # end  #Q8

  # if ( m = line.match(/(\w*a\b)/) )
  #   puts "$1 contains '#{ $1 }'"
  # end

  # if ( m = line.match(/(\w*a\b)/))
  #   puts "$1 contains '#{$1}'"
  # end

  # if ( m = line.match(/(?<thuglyfe>\w*a\b)/) )
  #   puts "'thuglyfe' contains '#{ m['thuglyfe'] }'"
  # end

  # if ( m = line.match(/\w*a\b(.{,5})/) )
  #   puts m[0]
  #   puts m[1]
  #   puts "-" * 80
  # end

  line = line.chomp
  if ( line =~ /\s$/ )
    puts "#{ line }$"
  else
    puts line
  end
end