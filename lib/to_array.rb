class String
  def to_array
    if self[0] != "[" || self[-1] != "]"
      raise ArgumentError.new("invalid value for `str_to_array': '#{self}'")
    end

    begin
      arr = self.chomp.gsub(/"|^\[|\]$/, '')
      arr = arr.split(/,[\s]*/)
      return arr
    rescue
      raise ArgumentError.new("invalid value for `str_to_array': '#{self}'")
    end
  end
end
