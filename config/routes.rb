Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "home" })

  # Routes for the Pick resource:

  # CREATE
  post("/insert_pick", { :controller => "picks", :action => "create" })

  # READ
  get("/picks", { :controller => "picks", :action => "index" })

  get("/picks/:path_id", { :controller => "picks", :action => "show" })

  # UPDATE

  post("/modify_pick/:path_id", { :controller => "picks", :action => "update" })

  # DELETE
  get("/delete_pick/:path_id", { :controller => "picks", :action => "destroy" })

  #------------------------------

  # Routes for the Team resource:

  # CREATE
  post("/insert_team", { :controller => "teams", :action => "create" })

  # READ
  get("/teams", { :controller => "teams", :action => "index" })

  get("/teams/:path_id", { :controller => "teams", :action => "show" })

  # UPDATE

  post("/modify_team/:path_id", { :controller => "teams", :action => "update" })

  # DELETE
  get("/delete_team/:path_id", { :controller => "teams", :action => "destroy" })

  #------------------------------

  # Routes for the Bowlgame resource:

  # CREATE
  post("/insert_bowlgame", { :controller => "bowlgames", :action => "create" })

  # READ
  get("/bowlgames", { :controller => "bowlgames", :action => "index" })

  get("/bowlgames/:path_id", { :controller => "bowlgames", :action => "show" })

  # UPDATE

  post("/modify_bowlgame/:path_id", { :controller => "bowlgames", :action => "update" })

  #post("/enter_winner", { :controller => "bowlgames", :action => "winner" })

  # DELETE
  get("/delete_bowlgame/:path_id", { :controller => "bowlgames", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create" })

  # EDIT PROFILE FORM
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })

  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })

  # SIGN OUT
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })

  #------------------------------

end
