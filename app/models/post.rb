class Post < ApplicationRecord
    validates :content, presence: { message: 'が空白です' } 
    validates :content, length: {maximum: 140}
end
