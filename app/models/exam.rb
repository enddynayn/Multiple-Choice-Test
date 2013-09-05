class Exam
  include Mongoid::Document

  field :user_answer, type: String

  has_and_belongs_to_many :test_bank_questions

end