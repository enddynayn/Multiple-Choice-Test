class QuestionsController < ApplicationController
  def show

  	# @questions = TestBankQuestion.all[(rand()*TestBankQuestion.all.length).floor].question_url
  	#@answers = TestBankQuestion.first.answer_choices
  	@answers = Exam.find(params[:exam_id]).test_bank_questions[params[:id].to_i - 1].answer_choices

  	@questions = Exam.find(params[:exam_id]).test_bank_questions[params[:id].to_i - 1].question_url
  end

  def update
    exam = Exam.find(params[:exam_id])
  	if exam.user_answer.nil?
  		exam.user_answer = Array.new
    end
    exam.user_answer[params[:id].to_i] = params[:choices]
    # redirect_to exam_question_path(exam, (params[:id].to_i + 1))
  end
end
