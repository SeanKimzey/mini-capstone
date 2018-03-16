class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { in: 1..30 }
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }
  validates :image_url, presence: false


  def as_json
    {
      id: id,
      name: name,
      image_url: image_url,
      price: price,
      description: description,
      is_discounted: is_discounted?,
      tax: tax,
      total: total,
      in_stock: in_stock,
      supplier: supplier,
      images: images.as_json
    }
  end

  def is_discounted?
    price < 20
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    price + tax
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def images
    Image.where(id: supplier_id)
  end

end