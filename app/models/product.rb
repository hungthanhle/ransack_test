class Product < ApplicationRecord

  class << self
    def ransackable_attributes(auth_object = nil)
      ["content", "created_at", "description", "id", "name", "price", "updated_at"]
    end

    def ransackable_associations(auth_object = nil)
      []
    end
  end
end
