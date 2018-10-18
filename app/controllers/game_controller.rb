class GameController < ApplicationController
    def user_plays_scissors
        i = rand(3)
          if i == 0 #0 = rock
            @comp_move = "They played rock!"
            @comp_icon = "far fa-hand-rock fa-10x"
            @result_style = "alert alert-danger"
            @result = "We lost!"
          elsif i == 1 #1 = paper
            @comp_move = "They played paper!"
            @comp_icon = "far fa-hand-paper fa-10x"
            @result_style = "alert alert-success"
            @result = "We won!"
          else
            @comp_move = "They played scissors!"
            @comp_icon = "far fa-hand-scissors fa-10x"
            @result_style = "alert alert-warning"
            @result = "We tied!"
          end         
        render("game_templates/play_scissors.html.erb")
    end
    def user_plays_paper
        i = rand(3)
          if i == 0 #0 = rock
            @comp_move = "They played rock!"
            @comp_icon = "far fa-hand-rock fa-10x"
            @result_style = "alert alert-success"
            @result = "We won!"

          elsif i == 1 #1 = paper
            @comp_move = "They played paper!"
            @comp_icon = "far fa-hand-paper fa-10x"
            @result_style = "alert alert-warning"
            @result = "We tied!"
          else
            @comp_move = "They played scissors!"
            @comp_icon = "far fa-hand-scissors fa-10x"
            @result_style = "alert alert-danger"
            @result = "We lost!"
          end
        render("game_templates/play_paper.html.erb")
    end
    def user_plays_rock
        i = rand(3)
          if i == 0 #0 = rock
            @comp_move = "They played rock!"
            @comp_icon = "far fa-hand-rock fa-10x"
            @result_style = "alert alert-warning"
            @result = "We tied!"
          elsif i == 1 #1 = paper
            @comp_move = "They played paper!"
            @comp_icon = "far fa-hand-paper fa-10x"
            @result_style = "alert alert-danger"
            @result = "We lost!"
          else
            @comp_move = "They played scissors!"
            @comp_icon = "far fa-hand-scissors fa-10x"
            @result_style = "alert alert-success"
            @result = "We won!"
          end
        render("game_templates/play_rock.html.erb")
    end
end