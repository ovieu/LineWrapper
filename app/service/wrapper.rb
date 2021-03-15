class Wrapper
  def self.wrap_input(max_line_length = 0, delimiter = "\n", blank = " ", input_string = "")
    accum = String.new('')
    pos = 0

    while (pos + max_line_length) < input_string.length
      index_of_blank = input_string.rindex(blank, pos + max_line_length)
      split = 0
      offset = 0

      if index_of_blank > (pos - 1)
        split = index_of_blank
        offset = 1
      else
        split = pos + max_line_length
        offset = 0
      end

      accum << input_string[pos..split]
      accum << delimiter
      pos = split + offset
    end
    accum << input_string[pos..input_string.length]
    accum.to_s
  end
end