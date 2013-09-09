class ExamsController < ApplicationController
  def new
  end

  def index
  	
  end

  def show
  	 @questions = Exam.find(params[:id]).test_bank_question_ids
  	 exam = Exam.find(params[:id])
  	 @marked = exam.marked
  	 @useranswers = Exam.find(params[:id]).user_answer
  end
end
