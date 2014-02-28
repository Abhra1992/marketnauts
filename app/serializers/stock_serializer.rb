class StockSerializer < ActiveModel::Serializer
  attributes :id

  def id
    object.name
  end
end
