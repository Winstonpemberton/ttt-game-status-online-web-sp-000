# Helper Method
require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
     elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
       #binding.pry
       return win_combination
    end
  end
  return false
end

  def full?(board)
    if board.any? {|index| index == " "}
    elsif won?(board) == false
        return true
    end
  end

  def draw?(board)
    if full?(board) == true
      if won?(board) == false
        true
      end
    end
  end

  def over?(board)
<<<<<<< HEAD
    if draw?(board) == true
        true
    elsif won?(board) != false
        true
    end
  end

  def winner(board)
    winner = won?(board)
    if winner
      win_index_1 = winner[0]
      position_1 = board[win_index_1]
      position_1
    end
=======
    # if full?(board) == true
    #   if draw?(board)== true
    #     true
    #   end
    # end
    if full?(board) == true
      if won?(board)== false
        true
      end
    end
  end

  def winner?

>>>>>>> abebc02f93767fea2ba98612e1361f02004dcd13
  end
