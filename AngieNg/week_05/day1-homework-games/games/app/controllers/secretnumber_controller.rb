class SecretnumberController < ApplicationController

  def guess
  end

  def answer
    @guess_number = params[:number]

    @secret_number = rand(1..10)

    if @guess_number == @secret_number.to_s
      @message = "You got it"
    else
      @message = "Try again"
    end
  end

end
