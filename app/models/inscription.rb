class Inscription < ApplicationRecord
    validates :email,presence:true,uniqueness:true
end
