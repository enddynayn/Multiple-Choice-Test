class QuestionsController < ApplicationController
  def show

  	# @questions = TestBankQuestion.all[(rand()*TestBankQuestion.all.length).floor].question_url
  	#@answers = TestBankQuestion.first.answer_choices
  	@answers = Exam.find(params[:exam_id]).test_bank_questions[params[:id].to_i - 1].answer_choices

  	@questions = Exam.find(params[:exam_id]).test_bank_questions[params[:id].to_i - 1].question_url
  end

  def update
  	@answer = Exam.find(params[:exam_id]).user_answer
  	if @answer.nil?
  		user_answer = Array.new

  	else
  	@answer << [params[:id].to_i] 
  	
  end
end
