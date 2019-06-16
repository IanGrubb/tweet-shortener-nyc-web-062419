# Write your code here.


def dictionary
    {"hello"=>"hi",
    "to" =>"2",
    "too" =>"2",
    "two" =>"2",
    "for" =>"4",
    "four" =>"4",
    "be" =>"b",
    "you" =>"u",
    "at" =>"@",
    "and" =>"&"}
end




def word_substituter (tweet)

    words = tweet.split(" ")

    words.each_with_index do |word, i|
        dictionary.keys.each do |match|
            if word == match || word == match.capitalize
                words[i] = dictionary[match]
            end
        end
    end

    words.join(" ")

end



def bulk_tweet_shortener (tweets)

    tweets.each do |tweet|
        puts word_substituter(tweet)
    end

end




def selective_tweet_shortener (tweet)

    if tweet.size > 140
        word_substituter(tweet)
    else
        tweet
    end

end



def shortened_tweet_truncator (tweet)

    if tweet.size > 140
        update = word_substituter(tweet)
        if update.size > 140
            update[0...137] + "..."
        else
            update
        end
    else
        tweet
    end

end