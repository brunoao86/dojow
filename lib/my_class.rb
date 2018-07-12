class MyClass

  def fizz_buzz(array)
    array.map{ |element| to_fizz_buzz(element) }
  end

  def to_fizz_buzz(element)
    return 'fizzbuzz' if (element % 15).zero?
    return 'fizz' if element % 3 == 0
    return 'buzz' if element % 5 == 0
    element
  end
end
