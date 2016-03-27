class Guider < ActiveRecord::Base
  has_many :ordered_trips
  has_many :paying_methods
  has_secure_password
  validates :email,:first_name,:last_name,:contact_number,
  presence: true,
  :on => [ :create ]
  validates :password,
  length: { in: 6..20,
             to_short: "your password should be at least %{count} characters",
             to_long: "your password should be at most %{count} characters" },
  :on => [ :create ]
  #validates :email
  validates :email, email: true
  ##validates_email_realness_of :email
  EmailVerifier.config do |config|
   config.verifier_email = "realname@realdomain.com"
  end
  ###################################
  #validates :name validator
  INVALID_NAME_REGEX = /[^a-zA-Z	 ]/
  validates :first_name,:last_name,
  length: { maximum: 20 },
  format: { without: INVALID_NAME_REGEX }
  #validates :unique email                                  
  validates  :email,
  uniqueness: { case_sensitive: false }
  #####################################
  #validates :number validator 
  INVALID_NUMBER_REGEX = /[^0-9 	]/
  validates :contact_number,
  length: { maximum: 20 },
  format: { without: INVALID_NUMBER_REGEX }
end
