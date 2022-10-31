# frozen_string_literal: true

class User < ApplicationRecord
has_secure_password

  enum role: [:user, :admin]

  after_initialize do
  if self.new_record?
    self.role ||= :user
  end
end

  has_many :projects
  has_many :members
  has_one :profile
 after_create :build_profile
end
