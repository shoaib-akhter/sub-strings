# sub-strings

This Ruby script implements a **substring search algorithm** that finds occurrences of words from a given dictionary inside a given text. The search is **case-insensitive**, and it returns a hash mapping each found word to its count.

## Usage
Call the `substrings` method with a text string and an array of dictionary words. It will return a hash with the words found and their occurrences.

## Example
```ruby
substrings("Howdy partner, sit down!", dictionary)
# Expected Output: { "down" => 1, "how" => 1, "howdy" => 1, "it" => 1, "i" => 1, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```

