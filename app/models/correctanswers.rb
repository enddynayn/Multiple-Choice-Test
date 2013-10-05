class Correctanswers
  include Mongoid::Document
  
  def Correctanswers.answers     
    correct_answers_ids = []
    exam_questions = Exam.find("52436445e0d1cd1386000035").test_bank_questions
      exam_questions.each do |question|
        answer_choices = question.answer_choices
          answer_choices.each do |choice|
            if choice.correct_choice == true
              correct_answers_ids << choice.id.to_s
            end
          end
      end

    return correct_answers_ids
  end  

end
    