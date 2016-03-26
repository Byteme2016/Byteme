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
  validates :email, email: true
end
