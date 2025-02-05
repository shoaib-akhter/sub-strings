# Substrings Finder in Ruby
# This script defines a method `substrings` that searches for occurrences of dictionary words inside a given text.
# It returns a hash containing each found word as a key and the count of its occurrences as the value.
# The search is case-insensitive, and it handles multiple words within the input text.

# Method to find substrings from a given dictionary in a text
def substrings(text, dictionary)
    text = text.downcase  # Convert input text to lowercase to ensure case-insensitive matching
    matches = Hash.new(0)  # Initialize a hash with default value 0 to store word counts
  
    dictionary.each do |word|  # Iterate through each word in the dictionary
      count = text.scan(word).length  # Find occurrences of `word` in `text`
      matches[word] = count if count > 0  # Store only words that appear at least once
    end
  
    matches  # Return the hash containing found words and their counts
  end
  
  # Run test cases only when this file is executed directly
  if __FILE__ == $0
    dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
  
    # Basic test cases
    puts substrings("below", dictionary)  # Expected Output: { "below" => 1, "low" => 1 }
    puts substrings("Howdy partner, sit down! How's it going?", dictionary)  # Expected Output: { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
    
    # Edge cases
    puts substrings("", dictionary)  # Expected Output: {} (Empty string should return an empty hash)
    puts substrings("xyz", dictionary)  # Expected Output: {} (No words from dictionary present)
    puts substrings("It is interesting that IT is part of it.", dictionary)  # Expected Output: { "it" => 3, "i" => 4, "part" => 1 }
    puts substrings("go go go", dictionary)  # Expected Output: { "go" => 3 }
  end  