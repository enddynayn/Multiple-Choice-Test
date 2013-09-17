class ExamsController < ApplicationController
  def new
  end

  def create
    exam = current_user.exams.create!(test_bank_questions: TestBankQuestion.all.sample(5))
    redirect_to exam_question_path(exam, '1')
    puts '%%' * 100

  end

  def index
  	@exams = current_user.exams
    puts "$$$" * 100  
    puts @exam
  end

  def show
  	 @questions = Exam.find(params[:id]).test_bank_question_ids
  	 exam = Exam.find(params[:id])
  	 @marked = exam.marked
  	 @useranswers = Exam.find(params[:id]).user_answer
     @exam = (Time.now * 60*60*3  - Time.now)
  end
end
