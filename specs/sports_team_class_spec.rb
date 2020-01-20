require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../sports_team_class')

class TestSportsTeam < Minitest::Test
  def setup
    @sports_team = SportsTeam.new(
      "Denver Broncos",
      [
        "Von Miller",
        "Chris Harris Jr.",
        "Drew Lock"
      ],
      "Vic Fangio")
  end

  def test_get_team_name
    assert_equal("Denver Broncos", @sports_team.team_name)
  end

  def test_get_players
    assert_equal(["Von Miller", "Chris Harris Jr.", "Drew Lock"], @sports_team.players)
  end

  def test_get_coach_name
    assert_equal("Vic Fangio", @sports_team.coach_name)
  end

  def test_set_coach_name
    @sports_team.coach_name = "Bill Billerson"
    assert_equal("Bill Billerson", @sports_team.coach_name)
  end

  def test_add_player
    @sports_team.add_player("Steve Rogers")
    assert_equal(4, @sports_team.players.length)
  end

  def test_player_on_team__true
    assert_equal(true, @sports_team.player_on_team("Chris Harris Jr."))
  end

  def test_player_on_team__false
    assert_equal(false, @sports_team.player_on_team("Tony Stark"))
  end

  def test_win_or_loss__win
    @sports_team.update_points("win")
    assert_equal(1, @sports_team.points)
  end

  def test_win_or_loss__loss
    @sports_team.update_points("loss")
    assert_equal(0, @sports_team.points)
  end
end
