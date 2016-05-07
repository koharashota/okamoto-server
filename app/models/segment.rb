class Segment
  include Mongoid::Document
  include Mongoid::Timestamps
  embeds_many :frames
  accepts_nested_attributes_for :frames
end
