class A 
  # class method 
  def self.c_method
    true
  end
  # instance method
  def i_method
    true
  end
end

A.c_method #=> true
#A.i_method #=> failure
A.new.i_method #=> true
#A.new.c_method #=> failure
