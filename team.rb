class Team
  attr_accessor :name, :win, :lose, :draw
  
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  
  def calc_win_rate
    return self.win.to_f / (self.win.to_f + self.lose.to_f)
  end

  def show_team_result
    puts "#{self.name}の2020年の成績は#{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{calc_win_rate}です。"
  end
end

giants = Team.new("Giants", 67, 45, 8)
puts giants.show_team_result

tigers = Team.new("Tigers", 60, 53, 7)
puts tigers.show_team_result

dragons = Team.new("Dragons", 60, 55, 5)
puts dragons.show_team_result

baystars = Team.new("BayStars", 56, 58, 6)
puts baystars.show_team_result

carp = Team.new("Carp", 52, 56, 12)
puts carp.show_team_result

swallows = Team.new("Swallows", 41, 69, 10)
puts swallows.show_team_result


# ["ジャイアンツ", "タイガーズ"].each do |name|
#   team = Team.new(name)
#   puts team.show_team_result
# end