class Category < ActiveRecord::Base
  has_many :occurrences
  validates_presence_of :name
end
