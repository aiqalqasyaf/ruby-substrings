# frozen_string_literal: true

def substrings(sentence, dictionary)
  substrings = {}
  count = start = 0

  words = sentence.downcase.split(' ')

  dictionary.each do |str|
    words.each do |word|
      last = word.length - 1
      word.length.times do
        if word[start..last] == str
          count += 1
          substrings[str] = count
        end
        start += 1
      end
      start = 0
    end
    count = 0
  end
  p substrings
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

substrings('below low low', dictionary)
