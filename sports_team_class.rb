class SportsTeam
  attr_reader :team_name, :players, :points
  attr_accessor :coach_name

  def initialize(team_name, players_array, coach_name)
    @team_name = team_name
    @players = players_array
    @coach_name = coach_name
    @points = 0
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def player_on_team(player_to_check)
    for player in @players
      return player == player_to_check
    end
    return false
  end

  def update_points(win_or_loss)
    @points += 1 if win_or_loss == "win"
  end
end
