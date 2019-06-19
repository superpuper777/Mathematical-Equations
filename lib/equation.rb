class Equation
  attr_reader :params
  def initialize(params)
    @params = params
  end

  def solving_equation
    @status = params[:check].to_s
    check_for_type
  end

  def check_for_type
    return input_linear if @status == 'linear'
  end

  private

  def input_linear
    @data = linear(params[:firstlin].to_f, params[:secondlin].to_f)
  end

  def linear(a, b)
    @linear_output = LinearEquation.new(a, b)
    @linear_output.roots
  end

end
