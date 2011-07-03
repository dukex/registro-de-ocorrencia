class Occurrence < ActiveRecord::Base
  validates_presence_of :name, :address
  belongs_to :category
end
