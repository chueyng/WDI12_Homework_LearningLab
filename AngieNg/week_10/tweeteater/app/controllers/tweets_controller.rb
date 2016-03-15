class TweetsController < ApplicationController

  def search
    @tweets = Tweet.all
  end
end
