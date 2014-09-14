class Property < ActiveRecord::Base
  has_many :photos
  belongs_to :user
  validates :price, :numericality => {:greater_than => 0}
  validates :title, :uniqueness => true

  def self.search(search)
    if search
      Property.where('city LIKE ?', "%#{search}%")
    else
      Property.all
    end
  end
end
