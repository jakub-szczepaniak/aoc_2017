def inverse_captcha(input)
  fail ArgumentError if input.count == 0 || input.count == 1
  captcha = 0
  captcha += input.first if input.first == input.last

  input.each_with_index do |item, index|
    if item == input[index + 1]
      captcha += item
    end
  end
  captcha
end

def halfway_captcha(input)
  length = input.count
  fail ArgumentError if length == 0 || length == 1
  captcha = 0
  input.each_with_index do |item, index|
    if item == input[halfway_index(index, length)]
      captcha += item
    end
  end
  captcha
end

def halfway_index(index, length)
  (index + (length / 2)) % length
end
