class Exam
  include Mongoid::Document
  
  before_create :end_time	
  before_create :empty_array
  before_create :mark_array
  before_create :start_time

  field :user_answer, type: Array, default: []
  field :marked, type: Array, default: []
  field :end_time, type: Array, default: []
  field :start_time,  type: Array, default: []
  field :complete, type: Boolean, default: false

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
  
  def grade_exam
    # i = 1
    # while (i < self.user_answers.length ) 
    #   if @user_answers[i-1].empty?
    #   elsif @test_bank_questions[i - 1].answer_choices.find(@user_answers[i -1]).correct_choice == true 
    #   else 
              
    #   end
  end

end

