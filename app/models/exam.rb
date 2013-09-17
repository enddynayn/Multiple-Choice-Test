class Exam
  include Mongoid::Document
  
  before_create :finished_time	

  field :user_answer, type: Array, default: []
  field :marked, type: Array, default: []
  field :timer, type: Array, default: []

  belongs_to :user
  has_and_belongs_to_many :test_bank_questions

  def finished_time
  	self.timer = Time.now + 60 * 60 * 3

  end
end

