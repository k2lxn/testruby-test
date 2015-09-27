def echo(phrase)
  phrase if phrase.is_a? String
end

def shout(phrase)
  phrase.upcase if phrase.is_a? String
end


def repeat(phrase, repeat = 2)
  output = phrase  # to avoid extra space  at the end
  (repeat - 1).times do
    output = phrase + ' ' + output
  end
  output
end


def start_of_word(phrase, index)
  phrase[0,index]
end  

def first_word(phrase)
  phrase.split(' ')[0]
end

def titleize(phrase)
  if phrase.include? ' '
    phrase = phrase.split(' ')
    title = phrase.shift.capitalize
    small_words = ['and','the','to','over','in','on','by']
    phrase.each do |word| 
  	  if small_words.include? word 
  	    title << (' ' + word)
  	  else 
  	    title << (' ' + word.capitalize)
  	  end  
    end
    title
  else
    phrase.capitalize
  end  	
end

#puts titleize("jaws on jaws")