class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == ""
      @question = "Uuh.."
      @answer = 'Type something you fuck'
    elsif @question.downcase == 'i am going to work'
      @answer = 'Great! :)'
    elsif @question.split('').last == '?'
      @answer = 'What a stupid question. Get back to work!'
    else
      @answer = "I don't care! Get back to work!"
    end
  end
end
