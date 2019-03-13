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
  
  tweet = tweet.join(" ")
  tweet
end

def bulk_tweet_shortener(tweet_array)
  for tweet in tweet_array
    tweet = word_substituter(tweet)
    puts tweet
  end
end