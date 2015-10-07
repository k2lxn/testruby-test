class Book
  attr_reader :title  # should be attr_reader (so that getter can be customized separately)

  def title=(new_title)
    new_title = new_title.split  
    @title = new_title.shift.capitalize
   
    if new_title    # i.e. if title is more than one word
      small_words = %w(and in the of an a)   # create array of small words
      new_title.each do |word|
        unless small_words.include?(word)
          word.capitalize!
        end
        @title = title + ' ' + word
      end 
    end

  end
  
end