require 'gosu'
require 'chingu'

class Main < Chingu::Window
  def initialize
    super(800, 600)
    self.input = { :escape => :close }
  end

  def update
    self.caption = "FPS: #{self.fps}"
    super
  end
end

Main.new.show
