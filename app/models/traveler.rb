class Traveler < ActiveRecord::Base
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
  validates_email_realness_of :email
  EmailVerifier.config do |config|
  config.verifier_email = "realname@realdomain.com"
  ###################################
  #validates :name validator
  VALID_USERNAME_REGEX = /^[a-zA-Z]+$/
  validates :first_name,:middle_name,:last_name length: { maximum: 20 },
                                    format: { with: VALID_USERNAME_REGEX },
  #validates :unique email                                  
  validates  :                                  uniqueness: { case_sensitive: false }
  end
end
