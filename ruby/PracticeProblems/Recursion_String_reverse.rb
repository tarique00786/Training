class ReverseString
  def recursionreverse(str)
    if str.empty?
      return ''
    else
      str[-1]+recursionreverse(str.chop)
    end
  end
end

obj=ReverseString.new
puts obj.recursionreverse("Ruby is fun to learn")        	