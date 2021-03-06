class CoachingController < ApplicationController
  def ask
    # @question = params[:question]
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end


  private

  def coach_answer(your_message)
    if your_message.end_with? "?"
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
