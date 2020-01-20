class SportsTeam
  def initialize(team_name, players_array, coach_name)
    @team_name = team_name
    @players = players_array
    @coach_name = coach_name
  end

  def team_name
    return @team_name
  end

  def players
    return @players
  end

  def coach_name
    return @coach_name
  end

  def change_coach(new_coach)
    @coach_name = new_coach
  end
end
