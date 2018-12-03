class Tweet < ApplicationRecord
    belongs_to :user
    has_many :favorites, dependent: :destroy
    has_many :comments, dependent: :destroy
    validates :body, presence: true, length: { maximum: 140 }
    validates :user_id, presence: true

    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
end
