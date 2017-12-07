def line_checksum(input)
  input.max - input.min
end

def spreadsheet_checksum(spreadsheet)
  checksum = 0
  spreadsheet.each do |row|
    checksum += line_checksum(row)
  end
  checksum
end
