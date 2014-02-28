class StockSerializer < ActiveModel::Serializer
  attributes :id, :current_price

  def id
    object.name
  end

  def current_price
    (rand * 5000).to_i
  end
end
