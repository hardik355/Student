class Register < ApplicationRecord
    has_many :login

    validates :first_name, presence: true
    validates :city, :area, presence: true, length: {minimum: 2, maximum: 14} 

end









    # validates :first_name, :last_name, presence: true, 
    # format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    # validates :email, uniqueness: true
    # validates :email, confirmation: { case_sensitive: false }
    # validates :city, :area, presence: true, length: {minimum: 2, maximum: 14} 
    # validates :mobile_no, presence: true, length: {minimum: 10, maximum: 10} 
    # validates :password, presence: true, length: {minimum: 6, maximum: 10} 
    # format: { With: /\A[a-zA-Z]+\z/, message: "only allows letters"}  