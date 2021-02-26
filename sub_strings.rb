def sub_strings(text, dictionary)
    if text.empty?
        puts "Empty Text!"
        return 
    end

    words = text.split
    words_hash =  Hash.new
    
    words.each do |word|
        if dictionary.include?(word.downcase)
            words_hash[word] ? words_hash[word] = words_hash[word] + 1 : words_hash[word] =  1
        end
    end
    
    puts words_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

print "Write a word or a phrase: "
text = gets.chomp

sub_strings(text, dictionary)