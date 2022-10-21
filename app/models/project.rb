class Project < ApplicationRecord
    belongs_to :user
    has_many :members
    validates :category, include: {in: %w(Android Fullstack)}
    validates :name, presence: true
    validates :description, length: { minimum: 10 }
    validates :github_link, presence: true
end
