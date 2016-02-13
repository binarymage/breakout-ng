class Player < Chingu::GameObject

  def initialize(options = {})
    super
    @image = Image["paddle.png"]
    @prev_x = @x
    @half_width = @image.width / 2
  end

  def update
    super

    new_x = [[$window.mouse_x, @half_width].max, $window.width - @half_width].min
    dx = @prev_x - new_x
    @prev_x = new_x

    @x -= dx
  end
end
