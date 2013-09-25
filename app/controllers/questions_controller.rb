class QuestionsController < ApplicationController
  
  def index
    current_exam = Exam.find(params[:exam_id])
    @marked = current_exam.marked
    @questions = current_exam.test_bank_question_ids
    @user_answers = current_exam.user_answer 
    @end_time = current_exam.timer
  end

  def show
    current_exam = Exam.find(params[:exam_id])
    @marked = current_exam.marked
    @end_time = current_exam.timer
    @user_answer_choice = current_exam.user_answer[params[:id].to_i - 1]
    
    if  params[:id].to_i.between?(1, 5)
      @exam_question_url = current_exam.test_bank_questions[params[:id].to_i - 1].question_url
      @exam_question_choices_url = current_exam.test_bank_questions[params[:id].to_i - 1].answer_choices
      # @exam_question_choices_id = @exam_question_choices_url[params[:id].to_i - 1].id.to_s 
  	 
    else  
       redirect_to exam_questions_path(params[:exam_id])
    end
  end

  def update
    exam = Exam.find(params[:exam_id])
  	
   
    if params[:choices].nil?
      exam.user_answer[params[:id].to_i - 1] = ""
      exam.save
    else
      exam.user_answer[params[:id].to_i - 1] = params[:choices]
      exam.save
    end
    if params[:submit] == 'Review'
      redirect_to exam_questions_path(params[:exam_id])
      return
    end
    
    if params[:submit] == 'Next'
      direction_id = params[:id].to_i + 1

    else
      direction_id = params[:id].to_i - 1
    end
    redirect_to exam_question_path(exam, direction_id)
  end

  def mark
    exam = Exam.find(params[:exam_id])
   
    exam.marked[params[:id].to_i - 1] = 'Yes'
    exam.save
    render text: "Successful"
  end

  def unmark
    exam = Exam.find(params[:exam_id])
   
    exam.marked[params[:id].to_i - 1] = 'No'
    exam.save
    render text: "Successful"
  end


end
