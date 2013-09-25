class Correctanswers
  include Mongoid::Document
  
  def Correctanswers.answers     
    correct_answers_ids = []
    questions_id = Exam.find("52433b2ee0d1cdabeb00002c").test_bank_question_ids
      questions_id.each do |question_id|
        question_choices = TestBankQuestion.find(question_id.to_s).answer_choices
          question_choices.each do |choice|
            if choice.correct_choice == true
              correct_answers_ids << choice.id.to_s
            end
          end
      end

    return correct_answers_ids
  end  

end
    