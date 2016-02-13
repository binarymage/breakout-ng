require 'gosu'
require 'chingu'

include Gosu

ROOT_PATH = File.dirname(File.expand_path(__FILE__))
DATA_PATH = File.join(ROOT_PATH, '..', 'data')

Gosu::Image.autoload_dirs << File.join(DATA_PATH, 'images')

require_all File.join(ROOT_PATH, 'gameobjects')
require_all File.join(ROOT_PATH, 'gamestates')

class Main < Chingu::Window
  def initialize
    super(800, 600)
    switch_game_state(PlayState)
  end

  def update
    self.caption = "FPS: #{self.fps}"
    super
  end
end

Main.new.show
