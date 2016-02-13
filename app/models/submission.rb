class Submission < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 6}
  validates :link, presence: true
  validates :price, presence: true
  validates :description, presence: true, length: {minimum: 10}
end
