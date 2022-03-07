class BowlgamesController < ApplicationController
  def index
    matching_bowlgames = Bowlgame.all

    @list_of_bowlgames = matching_bowlgames.order({ :created_at => :desc })

    render({ :template => "bowlgames/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_bowlgames = Bowlgame.where({ :id => the_id })

    @the_bowlgame = matching_bowlgames.at(0)

    render({ :template => "bowlgames/show.html.erb" })
  end

  def create
    the_bowlgame = Bowlgame.new
    the_bowlgame.name = params.fetch("query_name")
    the_bowlgame.game_time = params.fetch("query_game_time")
    the_bowlgame.network = params.fetch("query_network")
    the_bowlgame.team_one_id = params.fetch("query_team_one_id")
    the_bowlgame.team_two_id = params.fetch("query_team_two_id")
    the_bowlgame.year = params.fetch("query_year")
    the_bowlgame.championship = params.fetch("query_championship", false)
    the_bowlgame.semifinal = params.fetch("query_semifinal", false)

    if the_bowlgame.valid?
      the_bowlgame.save
      redirect_to("/bowlgames", { :notice => "Bowlgame created successfully." })
    else
      redirect_to("/bowlgames", { :notice => "Bowlgame failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_bowlgame = Bowlgame.where({ :id => the_id }).at(0)
    the_bowlgame.name = params.fetch("query_name")
    the_bowlgame.game_time = params.fetch("query_game_time")
    the_bowlgame.network = params.fetch("query_network")
    the_bowlgame.team_one_id = params.fetch("query_team_one_id")
    the_bowlgame.team_two_id = params.fetch("query_team_two_id")
    the_bowlgame.winner_id = params.fetch("query_winner_id")
    the_bowlgame.year = params.fetch("query_year")
    the_bowlgame.championship = params.fetch("query_championship", false)
    the_bowlgame.semifinal = params.fetch("query_semifinal", false)

    if the_bowlgame.valid?
      the_bowlgame.save
      redirect_to("/bowlgames/#{the_bowlgame.id}", { :notice => "Bowlgame updated successfully."} )
    else
      redirect_to("/bowlgames/#{the_bowlgame.id}", { :alert => "Bowlgame failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_bowlgame = Bowlgame.where({ :id => the_id }).at(0)

    the_bowlgame.destroy

    redirect_to("/bowlgames", { :notice => "Bowlgame deleted successfully."} )
  end
end
