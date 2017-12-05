def inverse_captcha(input)
  fail ArgumentError if input.count == 0 || input.count == 1
  captcha = 0
  if input.first == input.last
    captcha += input.first
  end
  captcha
end
