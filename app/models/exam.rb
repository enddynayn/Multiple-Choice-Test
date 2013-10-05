class Exam
  include Mongoid::Document
  
  before_create :end_time	
  before_create :empty_array
  before_create :mark_array
  before_create :begin_time
  #before_create :answers

  field :user_answer, type: Array, default: []
  field :marked, type: Array, default: []
  field :timer, type: Array, default: []
  field :start_time,  type: Array, default: []
  field :complete, type: Boolean, default: false
  field :correct_answers_ids, type: Array, default: []

  belongs_to :user
  has_and_belongs_to_many :test_bank_questions

  def end_time
  	self.timer = Time.now + 60 * 60 * 3
  end

  def begin_time
    self.start_time = Time.now
  end


  def empty_array
    self.user_answer = Array.new(5,'')
  end

  def mark_array
    self.marked = Array.new(5,'No')
  end

    #make an array with all the correct answers for the exam
    
  #   def answers     
  #   self.correct_answers 
  #   exam_questions = self.test_bank_questions
  #     exam_questions.each do |question|
  #       answer_choices = question.answer_choices
  #         answer_choices.each do |choice|
  #           if choice.correct_choice == true
  #             correct_answers << choice.id.to_s
  #           end
  #         end
  #     end

  #   return correct_answers
  # end  

   def answers     
    exam_questions = self.test_bank_questions
      exam_questions.each do |question|
        answer_choices = question.answer_choices
          answer_choices.each do |choice|
            if choice.correct_choice == true
              self.correct_answers_ids << choice.id.to_s
            end
          end
      end

    return correct_answers_ids
  end  

  


end

