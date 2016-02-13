class Submission < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "heart9.gif"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/ unless Rails.env.test?
  validates :title, presence: true, length: {minimum: 6}
  validates :description, presence: true, length: {minimum: 10}
end
