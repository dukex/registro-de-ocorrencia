class Occurrence < ActiveRecord::Base
  validates_presence_of :name, :address
  belongs_to :category

  def self.search(search)
    if search
      where("name LIKE ?", "%#{search["name"]}%").where("address LIKE ?", "%#{search["address"]}%" ).where("category_id LIKE ?", "%#{search["category_id"]}%")
    else
      all
    end
  end

end
