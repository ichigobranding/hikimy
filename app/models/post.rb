class Post < ApplicationRecord
    # validates :content, {presence: true, length: {maximum: 14}}
    validates :content, {presence: true}
    validates :content, length: { maximum: 10,
    too_long: "入力は最大%{count}文字まで" }
end
