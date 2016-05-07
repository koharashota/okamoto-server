class Api::Kinect::SegmentsController < Api::ApiController
  def create
    if new_segment.save
    end
  end

  private

  def segment_params
    # coordinates [ [x0, y0], [x1, y1] ]
    params.require(:segment).permit( frames: [ :coordinates ] )
  end

  def new_segment
    @new_segment ||= Segment.new(segment_params)
  end
end
