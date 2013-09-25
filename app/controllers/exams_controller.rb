class ExamsController < ApplicationController
  
  def create
    exam = current_user.exams.create!(test_bank_questions: TestBankQuestion.all.sample(5))
    redirect_to exam_question_path(exam, '1')
  end

  def index
  	@exams = current_user.exams 
  end

  def show
     current_exam =  Exam.find(params[:id])
     @test_bank_questions = current_exam.test_bank_questions
     @user_answers = current_exam.user_answer
     @marked = current_exam.marked
  	 @questions = current_exam.test_bank_question_ids
  end
  def destroy
    @exam = Exam.find(params[:id])

    @exam.destroy
    respond_to do |format|
    format.html { redirect_to user_path(current_user) }
    format.js
  end
  end
end
