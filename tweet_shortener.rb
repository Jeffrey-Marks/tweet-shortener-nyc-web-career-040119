def word_substituter(tweet)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

  tweet = tweet.split(" ")
  i = 0

  while i < tweet.length
    if dictionary.keys.include?(tweet[i])
      tweet[i] = dictionary[tweet[i]] #tweet[i] = dictionary(tweet[i])
    end
    i += 1
  end
  tweet.join(" ")
end