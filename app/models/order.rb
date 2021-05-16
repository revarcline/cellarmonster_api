class Order < ApplicationRecord
  belongs_to :user
  belongs_to :bottle

  after_create :modify_inventory

  private

  def modify_inventory
    bottle.update(inventory: bottle.inventory - quantity)

    bottle.update(total_sold: bottle.total_sold + quantity)
  end
end
