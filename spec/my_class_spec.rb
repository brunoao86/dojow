require 'my_class'

describe MyClass do

  describe '#fizz_buzz' do
  end


  it { expect(subject.fizz_buzz((1..100).to_a)).to eq([1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizzbuzz", 16, 17, "fizz", 19, "buzz", "fizz", 22, 23, "fizz", "buzz", 26, "fizz", 28, 29, "fizzbuzz", 31, 32, "fizz", 34, "buzz", "fizz", 37, 38, "fizz", "buzz", 41, "fizz", 43, 44, "fizzbuzz", 46, 47, "fizz", 49, "buzz", "fizz", 52, 53, "fizz", "buzz", 56,"fizz", 58, 59, "fizzbuzz", 61, 62, "fizz", 64, "buzz", "fizz", 67, 68, "fizz", "buzz", 71, "fizz", 73, 74, "fizzbuzz", 76, 77, "fizz", 79, "buzz", "fizz", 82, 83, "fizz", "buzz", 86, "fizz", 88, 89, "fizzbuzz", 91, 92, "fizz", 94, "buzz", "fizz", 97, 98, "fizz", "buzz"]) }


  it { assert_fizz_buzz([1,2,3], [1,2,'fizz']) }
  it { assert_fizz_buzz([1,2,3,5,7], [1,2,'fizz','buzz',7]) }
  it { assert_fizz_buzz([8,7,15,16,21,55], [8,7,'fizzbuzz',16,'fizz','buzz']) }
  it { assert_fizz_buzz([55,21,16,15,7,8], ['buzz','fizz',16,'fizzbuzz',7,8]) }
  it { assert_fizz_buzz([3,6,9,12,18,21,24,27,33], ['fizz','fizz','fizz','fizz','fizz','fizz','fizz','fizz','fizz']) }

  it 'returns fizz and buzz with random nuarray' do
    result = [1, 2, 'fizz', 4, 'fizz', 58, 'fizz']
    assert_fizz_buzz([1,2,3,4,33,58,12], result)
  end

  def assert_fizz_buzz(value, expected)
    expect(subject.fizz_buzz(value)).to eq(expected)
  end

  it 'random' do
    array = []
    array_fizz_buzz = []
    10.times do
      number = rand(100)
      array << number
      array_fizz_buzz << subject.to_fizz_buzz(number)
    end
    assert_fizz_buzz(array, array_fizz_buzz)
  end

end
