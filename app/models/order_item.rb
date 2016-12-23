class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :item

  scope :order_items_with_pallets, -> { where('pallet_count > ?', 0) }

  #validates :item_id, :presence => {:message => "You must choose"}
  #validates :quantity, :presence => {:message => "You must choose"}
  #validates :order_id, :presence => {:message => "You must choose"}
  #validates_presence_of :item_id, :message => "You must choose an item"
  #validates_presence_of :quantity, :message => "You must enter the quantity"

  #def self.items_with_pallets
  #  where('pallet_count > ?', 0)
  #end
end
