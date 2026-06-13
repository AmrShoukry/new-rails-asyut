class User < ApplicationRecord
  validates_presence_of :name, :dob, :email, :phone_number

  validates :email, format: {
    with: URI::MailTo::EMAIL_REGEXP,
    message: "must be a valid email address"
  }

  validates :email, uniqueness: true
end
