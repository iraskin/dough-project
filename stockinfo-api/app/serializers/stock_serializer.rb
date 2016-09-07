class StockSerializer < ActiveModel::Serializer
  attributes :id, :symbol, :name, :sector, :industry
  #has_many :quotes
end
