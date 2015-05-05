class Item < ActiveRecord::Base
  belongs_to :list

  validates :title, presence: true, uniqueness: {message: "Please choose another title"}
  validates :status, presence: true
  validates :points, presence: true
end
