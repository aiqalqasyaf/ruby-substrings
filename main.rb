# frozen_string_literal: true

def substrings(sentence, dictionary)
  substrings = {}
  count = start = 0
  reverse_start = 0
  reverse_last = -1

  words = sentence.downcase.split(' ')

  dictionary.each do |str|
    words.each do |word|
      last = word.length - 1
      if str.length > 1
        word.length.times do
          if word[start..last] == str || word[reverse_start..reverse_last] == str
            count += 1
            substrings[str] = count
          end
          start += 1
          reverse_last -= 1
        end
      else
        characters = word.split('')
        characters.each do |c|
          if c == str
            count += 1
            substrings[str] = count
          end
        end
      end
      start = 0
      reverse_last = -1
    end
    count = 0
  end
  p substrings
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

substrings("Howdy partner, sit down! How's it going?", dictionary)
