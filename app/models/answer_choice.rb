class AnswerChoice
  include Mongoid::Document

  field :choice_url, type: String
  field :correct_choice, type: Boolean
  embedded_in :test_bank_question
end
