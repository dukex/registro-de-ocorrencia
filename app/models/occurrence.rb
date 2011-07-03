class Occurrence < ActiveRecord::Base
  validates_presence_of :name, :address, :city
  belongs_to :category
end
