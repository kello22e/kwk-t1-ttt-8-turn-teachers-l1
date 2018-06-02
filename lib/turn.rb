def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0,8)
    if !(position_taken?(board,index))
      TRUE
    else
      FALSE
    end
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(arr,index)
  if arr[index] == "X" || arr[index] == "O"
    return TRUE
  elsif arr[index] == " " || arr[index] == ""
    return FALSE
  else arr[index] == NIL
    return FALSE
  end
end

#input_to_index method
def input_to_index(input)
  index = input.to_i - 1
end
#move method
def move(board,index, )
  board[index] = player
end

#turn method
def turn(board)
  puts "Please enter 1 -9: "
  input = gets.strip
  index = input_to_index(input)
  
  if valid_move?(board, index)
    move(board,index,"X")
  else
    turn(board) and return
  end
  display_board(board)
end