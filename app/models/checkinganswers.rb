class Checkinganswers 
include Mongoid::Document

	# @useranswers = Exam.find(params[:id]).user_answer

	# i = 0 
	# while (i < @useranswers.length)
	# 	@useranswers[i]
	# 	question = Exam.find(params[:id]).test_bank_question_ids[i]
	 
	#  	j = 0
	#  	while (j < 4)
	#  		TestBankQuestion.find(question).answer_choices[i].choice_url
	#  		if  TestBankQuestion.find(question).answer_choices[i].id == @useranswers[j]
	# 			TestBankQuestion.find(question).answer_choices[i].correct_choice
	# 		end
	# 	j += 1
	# 	end
	# 	i += 1
	# end

 # 	i = 0
	# while( i < Exam.find('5227bfdfe0d1cd12ca00003d').user_answer.length  )
	# 		answer = Exam.find('5227bfdfe0d1cd12ca00003d').user_answer
	# 		puts Exam.find('5227bfdfe0d1cd12ca00003d').test_bank_questions[i].answer_choices.find(answer[i])
	# 		puts Exam.find('5227bfdfe0d1cd12ca00003d').test_bank_questions[i].answer_choices.find(answer[i]).correct_choice
	# 	i += 1
		
	# end
	

end


