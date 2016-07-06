class Board
  # COLORS
  @game_turns = 12

  attr_reader :pegs, :colors, :moves

  def initialize(codebreaker, codemaker)
    # number of turns
    @player_turns = 0
    # array of moves
    @moves = []
    # get number of pegs [ask player]
    @pegs = codebreaker.get_pegs
    # get number of colors
    @colors = set_colors(codebreaker.get_colors)
    @solution = codemaker.make_answer(self)
  end

  def render
    @moves.each_with_index do |move, index|
      puts "Move #{index + 1}: " + move.to_s
    end
  end
    # start as number_of_turns lines
    # array of pegs with color
    # go through each move so far and print that line, plus feedback for that line

  def move(move)
    @moves << move
  end

  def set_colors(number_of_colors)
    $COLORS.keys.sample(number_of_colors)
  end 

  # give feedback
    # look at current turn
      # count number of correct, half-correct, and wrong
    # return

  def game_over?
    false
  end
    # did they win?
    # are the moves over?

  # win?

  # moves left?

end