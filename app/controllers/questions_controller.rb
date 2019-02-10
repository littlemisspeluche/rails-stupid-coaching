class QuestionsController < ApplicationController
  def ask

  end

  def answer
  # see what the question is
  # caputure inpute coming from the ask form
  # decide on an anwser to send to the view Anwser
    @question = params[:question]

    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
