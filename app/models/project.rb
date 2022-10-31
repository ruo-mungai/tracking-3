class Project < ApplicationRecord
    belongs_to :user
    has_many :members, dependent: :destroy
    validates :category, inclusion: {in: %w(Android Fullstack)}
    validates :name, presence: true
    validates :description, length: { minimum: 10 }
    validates :github_link, presence: true
end
 