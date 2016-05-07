require "rails_helper"

RSpec.describe Api::Kinect::SegmentsController, type: :controller do
  let(:segment_params){ { frames: [ coordinates: [[0,1], [0,1], [0,1]] ] } } }
  let(:segment_size){ Segment.all.size }
  describe 'kinectからparamsがPOSTされる' do
    before :each do
      post :create, { format: :json, segment: segment_params }
    end
    it 'segmentが作成されている' do
      expect(segment_size).to eq(1)
    end
  end
end
