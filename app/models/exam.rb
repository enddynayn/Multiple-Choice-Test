class Exam
  include Mongoid::Document
  
  before_create :finished_time	
  before_create :empty_array
  before_create :mark_array

  field :user_answer, type: Array, default: []
  field :marked, type: Array, default: []
  field :timer, type: Array, default: []

  belongs_to :user
  has_and_belongs_to_many :test_bank_questions

  def finished_time
  	self.timer = Time.now + 60 * 60 * 3
  end

  def empty_array
    self.user_answer = Array.new(5,'')
  end

  def mark_array
    self.marked = Array.new(5,'No')
  end
  
end

