# frozen_string_literal: true

def substrings(sentence, dictionary)
  substrings = {}
  count = pointer = 0

  words = sentence.split(' ')

  dictionary.each do |str|
    words.each do |word|
      word.length.times do
        puts word[pointer..word.length - 1]
        if word[pointer..word.length - 1] == str
          count += 1
          substrings[str] = count
        end
        pointer += 1
      end
      pointer = count = 0
    end
  end
  p substrings
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

substrings('below howdy', dictionary)
