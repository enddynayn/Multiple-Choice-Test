TestBankQuestion.destroy_all
AnswerChoice.destroy_all

question1 = TestBankQuestion.create(
  	question_url: 'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+1Q.png',
  	answer_choices: [	AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+1A_A.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+1A_b.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+1A_C.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+1A__DT.png',	correct_choice: true),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+1A_E.png',		correct_choice: false)
  					]
)

question2 = TestBankQuestion.create(
  	question_url: 'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+2Q.png',
  	answer_choices: [	AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+2A__AT.png',	correct_choice: true),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+2A_B.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+2A_C.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+2A_D.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+2A_E.png',		correct_choice: false)
  					]
)

question3 = TestBankQuestion.create(
  	question_url: 'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+3Q.png',
  	answer_choices: [	AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+3A_A.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+3A_B.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+3A_C.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+3A__DT.png',	correct_choice: true),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+3A_E.png',		correct_choice: false)
  					]
)

question4 = TestBankQuestion.create(
  	question_url: 'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+4Q.png',
  	answer_choices: [	AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+4A__AT.png',	correct_choice: true),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+4A_B.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+4A_C.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+4A_D.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+4A_E.png',		correct_choice: false)
  					]
)

question5 = TestBankQuestion.create(
  	question_url: 'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+5Q.png',
  	answer_choices: [	AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+5A_A.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+5A_B.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+5A_C.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+5A__DT.png',	correct_choice: true),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+5A_E.png',		correct_choice: false)
  					]
)

question6 = TestBankQuestion.create(
  	question_url: 'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+6Q.png',
  	answer_choices: [	AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+6A_A.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+6A__BT.png',	correct_choice: true),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+6A_C.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+6A_D.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+6A_E.png',		correct_choice: false)
  					]
)
question7 = TestBankQuestion.create(
  	question_url: 'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+7Q.png',
  	answer_choices: [	AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+7A_A.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+7A_B.png',		correct_choice: true),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+7A_C.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+7A__DT.png',	correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+7A_E.png',		correct_choice: false)
  					]
)

question8 = TestBankQuestion.create(
  	question_url: 'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+8Q.png',
  	answer_choices: [	AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+8A_A.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+8A_B.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+8A_C.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+8A__DT.png',	correct_choice: true),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+8A_E.png',		correct_choice: false)
  					]
)

question9 = TestBankQuestion.create(
  	question_url: 'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+9Q.png',
  	answer_choices: [	AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+9A_A.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+9A__BT.png',	correct_choice: true),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+9A_C.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+9A_D.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+9A_E.png',		correct_choice: false)
  					]
)

question10 = TestBankQuestion.create(
  	question_url: 'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+10Q.png',
  	answer_choices: [	AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+10A_A.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+10A_B.png',		correct_choice: false),
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+10A__CT.png',		correct_choice: true),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+10A_D.png',		correct_choice: false),	
  						AnswerChoice.new(choice_url:'https://s3-us-west-1.amazonaws.com/soaquestions/SOA+10A_E.png',		correct_choice: false)
  					]
)

# Exam.create(test_bank_questions: [question1, question2, question3 
#   ])
