class Spree::Bullet < ActiveRecord::Base
  belongs_to :taxon
  has_many :products
      
  attr_accessible :taxon, :taxon_id, :image_code, :description, :line_number, :is_active
    
  validates :description, :presence => true

  scope :active, where(:is_active => true)
  scope :sorted, order("line_number asc")
  scope :sorted_by_image_code, order("image_code asc, line_number asc")
  scope :image_code, lambda{|image_code| where(:image_code => image_code)}
  
end
