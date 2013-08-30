class TestBankQuestion
  include Mongoid::Document
  field :question_url, type: String
  embeds_many :answer_choices
end
