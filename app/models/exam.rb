class Exam
  include Mongoid::Document
  

  field :user_answer, type: Array, default: []
  field :marked, type: Array, default: []
  field :timer, type: Array

  belongs_to :user
  has_and_belongs_to_many :test_bank_questions

  def doit
	Exam.find(params[:exam_id]).user_answer = Array.new
  end
end