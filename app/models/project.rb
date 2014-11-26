class Project < ActiveRecord::Base
  has_many :tasks
  has_many :billable_hours
  validates :name, presence: true
  validates :client, presence: true, format: { with: /\A[0-9]{5}\z/}
  validates :matter, presence: true, format: { with: /\A[0-9]{4}\z/}
  validates :color, presence: true, format: { with: /\A#[a-f0-9]{6}|#[a-f0-9]{3}\z/i }
end
