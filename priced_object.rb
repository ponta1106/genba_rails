class PricedObject
  def total_price
    price * Tax.rate
  end

  def price
    raise NotImplementedError
  end
end

class Product < PricedObject
  attr_accessor :price
end

class OrderedItem < PricedObject
  attr_accessor :unit_price, :volume

  def price
    unit_price * volume
  end
end

class Book
  def title
    '本のタイトル'
  end
end

class Magazine < Book
  def title
    '雑誌のタイトル'
  end
end
