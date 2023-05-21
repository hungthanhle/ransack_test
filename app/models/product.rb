class Product < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["content", "created_at", "description", "id", "name", "price", "updated_at"]
  end
end
