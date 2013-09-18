class QuestionsController < ApplicationController
  
  def index
    exam = Exam.find(params[:exam_id])
    @marked = exam.marked
    
    puts @marked
    @questions = Exam.find(params[:exam_id]).test_bank_question_ids
    @useranswers = Exam.find(params[:exam_id]).user_answer  
     @exam = Exam.find(params[:exam_id]).timer
  end


  def show

    @questions = Exam.find(params[:exam_id]).test_bank_questions[params[:id].to_i - 1].question_url
  	@answers = Exam.find(params[:exam_id]).test_bank_questions[params[:id].to_i - 1].answer_choices
    @exam = Exam.find(params[:exam_id]).timer
  	
  end

  def update
    exam = Exam.find(params[:exam_id])
  	
    if exam.user_answer.nil?
      exam.user_answer = Array.new
    end
    exam.user_answer[params[:id].to_i - 1] = params[:choices]
    exam.save
    
    if params[:submit] == 'Next'
      direction_id = params[:id].to_i + 1
    else
      direction_id = params[:id].to_i - 1
    end
    redirect_to exam_question_path(exam, direction_id)

  end


  def mark
      exam = Exam.find(params[:exam_id])
    
    if exam.marked.nil?
      exam.marked = Array.new
    end
    exam.marked[params[:id].to_i - 1] = 'Yes'
    exam.save

    render text: "Successful"
  end

  def unmark
      exam = Exam.find(params[:exam_id])
    
    if exam.marked.nil?
      exam.marked = Array.new
    end
    exam.marked[params[:id].to_i - 1] = ''
    exam.save

    render text: "Successful"
  end
end
