class Result
  include Mongoid::Document
  include Mongoid::Timestamps
  field :type, type: String
  field :value, type: Integer
  field :complete_f, type: Boolean

  def speech
    case type
    when 'form'
      case value
      when 1
        # '正しい方向を向いてください'
        'Face forward'
      when 2
        # '腰が低いです'
        'Raise the waist'
      when 3
        # '腰が高いです'
        'Drop the waist'
      when 4
        # '膝が出過ぎです'
        'Pull the knee'
      end
    when 'pace'
      case value
      when 1
        # 'ペースが早いです'
        'Lower the pace'
      when 2
        # 'ペースが遅いです'
        'Pick up the pace'
      end
    else
      'Awesome'
    end
  end

  def slide
    case type
    when 'form'
      1
    when 'pace'
      1
    else
      0
    end
  end

  # OK: 0
  # UP: 1
  # DOWN: 2
  # FRONT: 3
  # BACK: 4
  def gesture
    case type
    when 'form'
      case value
      when 1
        3
      when 2
        1
      when 3
        2
      when 4
        2
      end
    when 'pace'
      case value
      when 1
        2
      when 2
        1
      end
    else
      0
    end
  end
end
