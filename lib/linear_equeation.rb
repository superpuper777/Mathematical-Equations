class LinearEquation < Equation

  def initialize(a, b)
    @a = a
    @b = b
  end

  def roots
    return 'Answer: The equation has\'t roots' if @a.zero?
    # return 'Answer: The equation has an infinite number of solutions' if @a = @b = 0
    @answer = -@b / @a
    "Answer: The equation has the only solution - #{@answer}"
  end
end
