class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :name, length: {maximum: 30}
  validates :description, length: {minimum: 5}


  def as_json
    {
      id: id,
      name: name,
      price: price,
      image_url: image_url,
      description: description, 
      discount: is_discounted?.to_s
    }
  end

  def is_discounted?
    price == "20"
  end



end

# Make validations for your product model
# name must exist
# price numericality
# price must exist
# name max characters of 30
# description minimum 10 characters

# Add any necessary validations
