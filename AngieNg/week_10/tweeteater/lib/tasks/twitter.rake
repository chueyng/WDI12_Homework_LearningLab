namespace :twitter do
  desc "Empties out the user and tweet tables from the DB"
  task :clear => :environment do
    User.destroy_all
    Tweet.destroy_all
  end

  desc "Creates fake users and fake tweets"
  task :posts, [:user_count] => :environment do |t, args|
    # puts "Creating users and tweets: #{ args[:user_count] }"
    FactoryGirl.create_list :user_with_tweets, args[:user_count].to_i
  end

  desc "Searches twitter for limit number of tweets containing query"
  task :search, [:query, :limit] => :environment do |t, args|
    # Don't borther creating users, jsut fetch the tweets and shove them in the DB
    config = {
      consumer_key: "L8zMn8IV8VIkvcqJYEaWniUpB",
      consumer_secret: "SVgAhiZSkbElxZhf6AL2RPWjft2yjdlKqlubIfWa0L9STpka1v",
      access_token: "4587187279-FNLnBTyHLJTRakFyO0ramXMFPCCBibv4hWgzlQR",
      access_token_secret: "Yr1wiKFa2hT36USdAsT6QzFD2g9heTEBwipihoieRwA6V"
    }

    client = Twitter::REST::Client.new(config)
      posts = client.search(args[:query], result_type: "recent").take(args[:limit].to_i)

      posts = posts.each do |post|
        post = post.to_hash
        # @tweets.push(post)
        Tweet.create :post => post[:text]
      end
  end
end

