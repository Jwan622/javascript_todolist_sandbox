class List < ActiveRecord::Base
  self.inheritance_column = nil
  
  has_many :items
  validates :title, presence: true, uniqueness: {message: "Please choose another title" }
end
