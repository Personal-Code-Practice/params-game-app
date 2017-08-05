class GamesController < ApplicationController
  def name
    @title = "Name Game"
    @uppercase_name = params[:name].capitalize
    if @uppercase_name.starts_with?("A")
      @message = 'Cool your name begins with the first letter of the alphabet!'
    end
    render = 'name.html.erb'
  end

  def guess
    @user_guess = params[:guess].to_i
    answer = 37
    if @user_guess > answer
      @message = "Your answer is too high"
    elsif @user_guess < answer
      @message = "Your answer is too low"
    else
      @message = "Hey you got it right!"
    end
    render 'numbers.html.erb'
  end

  def guessing
    @guess = params[:guess].to_i
    answer = 20
    if @guess > answer
      @message = "Your answer is too high"
    elsif @guess < answer
      @message = "Your answer is too low"
    else
      @message = "Hey you got it right!"
    end
    render 'guess.html.erb'
  end

  def practice
    render 'form.html.erb'
  end

  def other
    @title = params[:recipe_title]
    @ingredients = params[:recipe_ingredients]
    render 'destination.html.erb'
  end

  def form_game
    render 'form_game.html.erb'
  end

  def inside
    @guess = params[:guess].to_i
    answer = 50
    if @guess > answer
      @message = "Your answer is too high"
    elsif @guess < answer
      @message = "Your answer is too low"
    else
      @message = "Hey you got it right!"
    end
    render 'inside.html.erb'
  end
end
