string = "hello Hello heLLo how are you? HOW's it going?"
dictionary = ['hi', 'how', 'hell', 'hello', 'sup', 'what', 'up', 'the', ' ', '?', 'go', 'ing', 'going', 'it']

def substrings(string, dictionary, result = {})
    dictionary.each do |word|
        sub_str = string.downcase.scan(word.downcase)
        unless sub_str == []
            result[word] = sub_str.count
        end 
    end
    return result
end


puts substrings('sup', dictionary)
puts substrings(string, dictionary)
