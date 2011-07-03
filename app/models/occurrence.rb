class Occurrence < ActiveRecord::Base
  validates_presence_of :name, :address, :city, :state
  belongs_to :category
end
