def translate(phrase)
  if phrase.include? ' '
    words = phrase.split(' ')
    phrase = translate(words.shift)
    words.each {|word| phrase = phrase + ' ' + translate(word) }
    return phrase
  else 	
    phrase = phrase.downcase
    while phrase =~ /\A[^aeiou]/ do
	  first_phoneme = phrase.slice!(0)
	  if first_phoneme == 'q' and phrase.start_with?("u")
	    first_phoneme = first_phoneme + phrase.slice!(0)
	  end
	  phrase = phrase + first_phoneme
    end
    phrase + 'ay'
  end 
end

#puts "'apple' in Pig Latin is " + translate('apple')
#puts "'apple pie' is " + translate('apple pie')
#puts "'cherry' is " + translate('cherry')