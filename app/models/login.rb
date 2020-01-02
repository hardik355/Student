class Login < ApplicationRecord
    belongs_to :register
    validates :email, presence: true, 

    after_initilize do |Login|
        puts "This is a test"
    end
end
