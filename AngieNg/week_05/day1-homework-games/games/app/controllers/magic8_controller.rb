class Magic8Controller < ApplicationController

  def ask
  end

  def result
    answer = ['It is certain', 'It is decidedly so', 'Without a doubt', 'Yes, definitely', 'You may rely on it', 
      'As I see it, yes', 'Most likely', 'Outlook good', 'Yes', 'Signs point to yes', 'Reply hazy try again', 'Ask again later',
      'Better not tell you now', 'Cannot predict now', 'Concentrate and ask again', 'My reply is no', 'My sources say no', 'Very doubtful']

    @response = answer.shuffle.first
  end

end
