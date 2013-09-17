class User
  
  include ActiveModel::SecurePassword
  include Mongoid::Document
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  
 

  field :name,            type: String 
  field :email,           type: String 
  field :password_digest, type: String
  field :remember_token,  type: String
  
  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :email

  has_many :exams
#password_digest
has_secure_password


#attr_accessible :email, :password, :password_confirmation
def User.find_by_email(email)
  where(:email => email).first
end

def User.new_remember_token
  SecureRandom.urlsafe_base64  #creates a random token
end

def User.encrypt(token)
  Digest::SHA1.hexdigest(token.to_s) #this will run on everypage for a signed in user
end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token) #generates an ecrypt token to store in database
    end
 
end








