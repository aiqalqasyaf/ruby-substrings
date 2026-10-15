# frozen_string_literal: true

def substrings(word, dictionary)
  substrings = {}
  count = 0
  pointer = 0

  dictionary.each do |str|
    word.length.times do
      if word[pointer..word.length - 1] == str
        count += 1
        substrings[str] = count
      end
      pointer += 1
    end
    pointer = 0
    count = 0
  end
  p substrings
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

substrings('below', dictionary)
