class ExamsController < ApplicationController
  def new
  end

  def create
    exam = current_user.exams.create!(test_bank_questions: TestBankQuestion.all.sample(5))
    redirect_to exam_question_path(exam, '1')


  end

  def index
  	@exams = current_user.exams
   
  end

  def show
  	 @questions = Exam.find(params[:id]).test_bank_question_ids
  	 exam = Exam.find(params[:id])
  	 @marked = exam.marked
  	 @useranswers = Exam.find(params[:id]).user_answer
     puts '*' *100
     puts @useranswers
     puts '$' *100
     @exam = Exam.find(params[:id]).timer
  end
end
