class SportsTeam
  def initialize(team_name, players_array, coach_name)
    @team_name = team_name
    @players = players_array
    @coach_name = coach_name
  end

  def team_name
    return @team_name
  end
end
