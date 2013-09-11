class AnswerChoice
  include Mongoid::Document

  field :choice_url, type: String, default: []
  field :correct_choice, type: Boolean, default: []
  embedded_in :test_bank_question
end
