class Contact < ApplicationRecord
    validates :Name, presence:true
    validates :Email, presence:true
    validates :Content, presence:true
    validates :Content, length:{in:1..140}

end
