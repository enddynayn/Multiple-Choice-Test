class QuestionsController < ApplicationController
  def show

  	@questions = TestBankQuestion.all[(rand()*TestBankQuestion.all.length).floor].question_url
  	@answers = TestBankQuestion.first.answer_choices
  end

end
