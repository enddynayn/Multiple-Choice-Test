class Exam
  include Mongoid::Document
  

  field :user_answer, type: Array
  field :marked, type: Array
  field :timer, type: Array
def doit
	Exam.find(params[:exam_id]).user_answer = Array.new
end
  has_and_belongs_to_many :test_bank_questions

end