# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8], #horizontals
  [0,3,6],
  [1,4,7],
  [2,5,8], #verticals
  [0,4,8],
  [2,4,6] #diagonals
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination
    end
  end
  return false
end

def full?(board)
  board.each do |i|
    if i == "" || i == " "
      return false
    end
  end
end

def draw?(board)
  if won?(board) == false && !full?(board) == false
    return true
elsif  won?(board) == false && full?(board) == false
  return false
elsif !won?(board) == false
  end
end

def over?(board)
  if !won?(board) == false || draw?(board) == true || !full?(board) == false
    return true
  else
    return false
  end
end

def winner(board)
if winner = won?(board) == false
  return nil
else
  win_token = board[won?(board)[0]]
end


if win_token == "X"
  return "X"
elsif win_token == "O"
  return "O"
else
  return false
  end
end
