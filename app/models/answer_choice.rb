class AnswerChoice
  include Mongoid::Document

  field :choice_url, type: String
  embedded_in :test_bank_question
end
