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
  fail ArgumentError if input.count == 0 || input.count == 1
  captcha = 0
  input.each_with_index do |item, index|
    if item == input[(index + (input.count / 2)) % input.count]
      captcha += item
    end
  end
  captcha
end
