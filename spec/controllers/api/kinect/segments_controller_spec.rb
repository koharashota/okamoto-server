require "rails_helper"

RSpec.describe Api::Kinect::SegmentsController, type: :controller do
  let(:coordinates){ [ [	0	,	1	]	,	[	1	,	2	]	,	[	2	,	3	]	,	[	3	,	4	]	,	[	4	,	5	]	,	[	5	,	6	]	,	[	6	,	7	]	,	[	7	,	8	]	,	[	8	,	9	]	,	[	9	,	10	]	,	[	10	,	11	]	,	[	11	,	12	]	,	[	12	,	13	]	,	[	13	,	14	]	,	[	14	,	15	]	,	[	15	,	16	]	,	[	16	,	17	]	,	[	17	,	18	]	,	[	18	,	19	]	,	[	19	,	20	]	,	[	20	,	21	]	,	[	21	,	22	]	,	[	22	,	23	]	,	[	23	,	24	]	,	[	24	,	25	] ] }
  let(:segment_params){ { frames_attributes: [ { coordinates: coordinates }, { coordinates: coordinates } ] } }
  let(:segment_size){ Segment.all.size }
  let(:segment_frames_size){ Segment.first.frames.size }
  let(:segment_frames_coordinates_size){ Segment.first.frames.first.coordinates.size }
  describe 'kinectからparamsがPOSTされる' do
    before :each do
      post :create, { format: :json, segment: segment_params }
    end
    it 'segmentが作成されている' do
      expect(segment_size).to eq(1)
    end
    it 'framesが作成されている' do
      expect(segment_frames_size).to eq(2)
    end
    it 'coordinatesが作成されている' do
      expect(segment_frames_coordinates_size).to eq(25)
    end
  end
end
