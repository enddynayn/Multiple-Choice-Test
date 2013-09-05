class TestBankQuestion
  include Mongoid::Document
  field :question_url, type: String
  embeds_many :answer_choices
  has_and_belongs_to_many :exams
end
