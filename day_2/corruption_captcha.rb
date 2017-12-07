def line_checksum(input)
  input.max - input.min
end

def division_checksum(input)
  checksum_pair = input.permutation(2).select do |pair|
    pair[0] % pair[1] == 0
  end
  checksum_pair.first[0]/checksum_pair.first[1]
end

def spreadsheet_checksum_2(spreadsheet)
  checksum = 0
  spreadsheet.each do |row|
    checksum += division_checksum(row)
  end
  checksum
end

def spreadsheet_checksum_1(spreadsheet)
  checksum = 0
  spreadsheet.each do |row|
    checksum += line_checksum(row)
  end
  checksum
end
