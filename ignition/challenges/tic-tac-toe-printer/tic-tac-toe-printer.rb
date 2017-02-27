def print_grid(board)
  output = ""
  within_counter = 0  #A counter for the spacing within a given row
  between_counter = 0  #A counter for the spacing between rows

  while between_counter < 3  #While within the tic-tac-toe board
    board[between_counter].each do |char| #For each row on the board
      case char
        when 'x'
          output += " x "
        when 'o'
          output += " o "
        else
          output += "   "
      end
      if within_counter != 2
        output += "|"
      end

      within_counter += 1       #increasing the character number per row

    end
    if between_counter !=2
      output += "\n-----------\n"  #Adding spacer line if not on final row
    end
    within_counter = 0
    between_counter += 1       #New row
  end
    output
end





board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]

board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]

board_c = [
  [nil, 'o', nil],
  [nil, 'o', nil],
  ['x', 'o', 'x']
]


puts print_grid(board_a)
puts ""
puts ""
puts ""
puts print_grid(board_b)
puts ""
puts ""
puts ""
puts print_grid(board_c)
