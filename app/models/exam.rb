class Exam
  include Mongoid::Document
  
  before_create :end_time	
  before_create :empty_array
  before_create :mark_array
  before_create :start_time
  before_save  :answers

  field :user_answer, type: Array, default: []
  field :marked, type: Array, default: []
  field :timer, type: Array, default: []
  field :start_time,  type: Array, default: []
  field :complete, type: Boolean, default: false
  field :correct_answers, type: Array, default: []

  belongs_to :user
  has_and_belongs_to_many :test_bank_questions

  def end_time
  	self.timer = Time.now + 60 * 60 * 3
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

  def answers
    #make an array with all the correct answers for the exam
    self.correct_answers 

    questions_id = self.test_bank_question_ids
    puts questions_id
    puts questions_id.first.class
    questions_id.each do |question_id|
      answer_choices = TestBankQuestion.find(question_id.to_s).answer_choices
      
      puts answer_choices  
    puts "%" *1000    
      answer_choices.each do |answer_choice|
        if answer_choice.correct_choice == true
          self.correct_answers << answer_choice.id.to_s
        end
      end
    end


  end
  


end

