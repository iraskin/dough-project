class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :date, :open, :high, :low, :close, :volume
#  belongs_to :stock
end
