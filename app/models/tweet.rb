class Tweet < ApplicationRecord
    belongs_to :user
    has_many :favorites
    has_many :comments
    validates :body, presence: true, length: { maximum: 140 }
    validates :user_id, presence: true

    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
end
