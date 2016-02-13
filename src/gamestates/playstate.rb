class PlayState < Chingu::GameState
  attr_reader :player

  def initialize
    super
    @player = Player.create(:x => 400, :y => 540)
    self.input = { :escape => :exit }
  end

end
