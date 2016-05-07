class Direction
  include Mongoid::Document
  include Mongoid::Timestamps
  field :category, type: Integer
  field :value, type: Integer
  field :complete_f, type: Boolean
end
