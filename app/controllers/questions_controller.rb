class QuestionsController < ApplicationController

  def answer
    @question = params[:question]
    coach_answer_enhanced(@question)
   end

  def coach_answer(your_question)
    if your_question.downcase == "i am going to work right now!"
      @answer = ""
    elsif your_question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_question)
    answer = coach_answer(your_question)
    if answer != ""
      if your_question.upcase == your_question
      @answer = "I can feel your motivation! #{answer}"
      else
      answer
      end
    else
    @answer = ""
    end
  end


  def ask
  end
end
