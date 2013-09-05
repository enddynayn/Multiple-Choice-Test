class Exam
  include Mongoid::Document


  has_and_belongs_to_many :test_bank_questions

end