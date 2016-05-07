class Frame
  include Mongoid::Document
  include Mongoid::Timestamps
  embedded_in :segment, :inverse_of => :frames
  field :coordinates, type: Array
end
