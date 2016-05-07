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
        '正しい方向を向いてください'
      when 2
        '腰が低いです'
      when 3
        '腰が高いです'
      when 4
        '膝が高いです'
      when 5
        '膝が低いです'
      end
    when 'pace'
      case value
      when 1
        'ペースが早いです'
      when 2
        'ペースが遅いです'
      end
    else
      ''
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

  def gesture
    case type
    when 'form'
      case value
      when 1
        1
      when 2
        1
      when 3
        1
      when 4
        1
      when 5
        1
      end
    when 'pace'
      case value
      when 1
        1
      when 2
        1
      end
    else
    end
  end
end
