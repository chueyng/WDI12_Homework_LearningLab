class RockPaperScissorsController < ApplicationController

  def throw
  end
  
  def play
    computer = ['rock', 'paper', 'scissors']

    @user = params[:throw]
    @computer = computer.shuffle.first
    
    rock_image = "http://biaslist.com/img/informal/appeal-to-the-stone.png"
    paper_image = "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT8UIxeUvlhwOveARtMOYDKSSHpeaEye1tGZkcDLv5QQ5D01fkX"
    scissors_image = "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQHuVtSdeYf3OaPAGCB7ljWQNl_6k1khc9aQGIn3es7rr-J0g_7TQ"
    
    user_win = "You win!"
    computer_win = "Computer win!"

    if @user == 'rock' 
      @user_display = rock_image
    elsif @user == 'paper'
      @user_display = paper_image
    else
      @user_display = scissors_image
    end
      
    if @computer == 'rock' 
      @comp_display = rock_image
    elsif @computer == 'paper'
      @comp_display = paper_image
    else
      @comp_display = scissors_image
    end      

    if @user == 'rock' && @computer == 'scissors'
      @result = user_win
    elsif @user == 'scissors' && @computer == 'paper'
      @result = user_win
    elsif @user == 'paper' && @computer == 'rock'
      @result = user_win
    elsif @user == 'rock' && @computer == 'rock'
      @result = user_win
    elsif @user == 'paper' && @computer == 'paper'
      @result = user_win
    elsif @user == 'scissors' && @computer == 'scissors'
      @result = user_win
    elsif @computer == 'rock' && @user == 'scissors'
      @result = computer_win
    elsif @computer == 'scissors' && @user == 'paper'
      @result = computer_win
    else @computer == 'paper' && @user == 'rock'
      @result = computer_win   
    end
  end
  
end
