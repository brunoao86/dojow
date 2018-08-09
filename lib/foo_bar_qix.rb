class FooBarQix

  def build_foor_bar_qix n
    str = prefix n

    n.to_s.each_char do |char|
      str += part_by_n(char)
    end

    str.empty? ? n.to_s : str
  end

  private 

  def prefix n 
    str = ''
    str += "Foo" if divisible_by n, 3 
    str += "Bar" if divisible_by n, 5
    str += "Qix" if divisible_by n, 7
    str
  end

  def divisible_by n, divisible
    (n % divisible).zero?
  end

  def part_by_n n
    return "Foo" if n == '3'    
    return "Bar" if n == '5'
    return "Qix" if n == '7'
    ""
  end 
end
