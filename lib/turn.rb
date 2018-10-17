def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your input_to_index and move method here!
def input_to_index (user_input)
  user_input = user_input.to_i
  user_input - 1
end

#move
def move (board, index, char='X')
  board[index] = char
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == true
    true
  elsif index.between?(0,8) && position_taken?(board, index) == false
    false
  elsif !(index.between?(0,8)) && position_taken?(board, index) == false
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
true  end
end


def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index) == true
      move(board,index)
      display_board(board)
      break
    end
  end
end
