TestBankQuestion.destroy_all
AnswerChoice.destroy_all

question1 = TestBankQuestion.create(
  	question_url: 'https://s3-us-west-1.amazonaws.com/soaquestions/soasample.png',
  	answer_choices: [AnswerChoice.new(choice_url: '1'),AnswerChoice.new(choice_url:'2'),AnswerChoice.new(choice_url:'3')]
)