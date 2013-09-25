class Exam
  include Mongoid::Document
  
  before_create :end_time	
  before_create :empty_array
  before_create :mark_array
  before_create :start_time
  before_create :end_time
  after_create  :correct_answers

  field :user_answer, type: Array, default: []
  field :marked, type: Array, default: []
  field :end_time, type: Array, default: []
  field :start_time,  type: Array, default: []
  field :complete, type: Boolean, default: false
  field :correct_answers, type: Array, default: []

  belongs_to :user
  has_and_belongs_to_many :test_bank_questions

  def end_time
  	self.end_time = Time.now + 60 * 60 * 3
  end

  def start_time
    self.start_time = Time.now
  end


  def empty_array
    self.user_answer = Array.new(5,'')
  end

  def mark_array
    self.marked = Array.new(5,'No')
  end

  def correct_answers
    #make an array with all the correct answers for the exam
    # self.correct_answers = []
    # questions_id = self.test_bank_question_ids
    # questions_id.each do |question_id|
    #   answer_choices = TestBankQuestion.find(question_id).answer_choices
    #   answer_choices.each do |choice|
    #     if choice.correct_choice == true
    #       self.correct_answers << choice._id
    #     end
    #   end
    # end



   

  end
  


end

