def reverser
  phrase = yield.split(' ')
  puts "phrase: #{phrase}"
  phrase.map! {|word| word.reverse }
  phrase.inject {|output,word| output + ' ' + word}
end


def adder(to_add = 1)
  yield + to_add
end


def repeater(reps = 1)
  reps.times { yield }
end

