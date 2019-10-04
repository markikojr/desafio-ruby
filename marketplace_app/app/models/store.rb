class Store
  include Mongoid::Document
  field :name, type: String
  field :website, type: String
  field :Logo, type: String
  field :Email, type: String

  has_many :products
end
