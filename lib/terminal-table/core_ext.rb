
module Enumerable
  def sum_of meth
    inject(0) { |sum, object| sum += object.send(meth) }
  end
end

class String
  
  ##
  # Align to +position+, which may be :left, :right, or :center.
  
  def align position, length
    send position, length
  end
  
  alias_method :left, :ljust
  alias_method :right, :rjust
end