class Register < ApplicationRecord
    has_many :login
    
    validates :first_name, :last_name, presence: true, length: {minimum: 5, maximum: 9}
    validates :terms_of_service, acceptance: { accept: 'yes' }
    validates :eula, acceptance: { accept: ['TRUE', 'accepted'] }
    # errors.add(:first_name, :last_name, "Cannot contain the character ")
end

# git config --global user.email "kapspatel355.com"
# git config --global user.name "kaps355"
