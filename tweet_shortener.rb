def dictionary
  dictionary = {
"hello" => "hi",
"to" => "2",
"two" => "2",
"too" => "2",
"for" => "4",
"four" => "4",
"be" => "b",
"you" => "u",
"at" => "@",
"and" => "&"
}
end

def word_substituter(tweet_string)

  tweet_words = tweet_string.split(" ")
  substituted_tweets = []
  tweet_words.each do |word|
    if dictionary.has_key?(word.downcase)
      substituted_tweets.push(dictionary[word.downcase])
    else
      substituted_tweets.push(word)
    end
  end
  substituted_tweets.join(" ")
end


def bulk_tweet_shortener(array_of_tweets)
    array_of_tweets.each do |tweet|
      puts word_substituter(tweet)
    end
end


def selective_tweet_shortener(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
  end
end


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    tweet[0..136] + "..."
  else
    selective_tweet_shortener(tweet)
  end
end
