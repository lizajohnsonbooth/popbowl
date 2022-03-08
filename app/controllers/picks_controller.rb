class PicksController < ApplicationController
  def index
    matching_picks = Pick.all

    @list_of_picks = matching_picks.order({ :created_at => :desc })

    matching_bowlgames = Bowlgame.all

    @list_of_bowlgames = matching_bowlgames.order({ :game_time => :desc })

    render({ :template => "picks/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_picks = Pick.where({ :id => the_id })

    @the_pick = matching_picks.at(0)

    render({ :template => "picks/show.html.erb" })
  end

  def create
    the_pick = Pick.new
    the_pick.user_id = params.fetch("query_user_id")
    the_pick.bowl_game_id = params.fetch("query_bowl_game_id")
    the_pick.picked_team_id = params.fetch("query_picked_team_id")

    if the_pick.valid?
      the_pick.save
      redirect_to("/picks", { :notice => the_pick.errors.full_messages.to_sentence })
    else
      redirect_to("/picks", { :alert => the_pick.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_pick = Pick.where({ :id => the_id }).at(0)

    the_pick.user_id = params.fetch("query_user_id")
    the_pick.bowl_game_id = params.fetch("query_bowl_game_id")
    the_pick.picked_team_id = params.fetch("query_picked_team_id")

    matching_bowlgames = Bowlgame.all
    
    @list_of_bowlgames = matching_bowlgames.order({ :game_time => :desc })

    if the_pick.valid?
      the_pick.save
      redirect_to("/picks/#{the_pick.id}", { :notice => "Pick updated successfully."} )
    else
      redirect_to("/picks/#{the_pick.id}", { :alert => "Pick failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_pick = Pick.where({ :id => the_id }).at(0)

    the_pick.destroy

    redirect_to("/picks", { :notice => "Pick deleted successfully."} )
  end


  def show_all
    matching_picks = Pick.all

    @list_of_picks = matching_picks.order({ :created_at => :desc })

    matching_bowlgames = Bowlgame.all

    @list_of_bowlgames = matching_bowlgames.order({ :game_time => :desc })

    render({ :template => "picks/family_picks.html.erb" })
  end


end
