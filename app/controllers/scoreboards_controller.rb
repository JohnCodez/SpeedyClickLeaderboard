class ScoreboardsController < ApplicationController
    def index
        @scoreboard = Scoreboard.all
        render json: @scoreboard
    end

    def new
        @scoreboard = Scoreboard.new
    end

    def show
        @scoreboard = Scoreboard.find(params[:id])
        render json: @scoreboard
    end
    
    def create
        @scoreboard = Scoreboard.new(scoreboard_params)
        if @scoreboard.save
            redirect_to posts_url, notice: 'Thank you for signing up!'
        else
            render :new
        end
    end

    def update
        @scoreboard = Scoreboard.find(params[:id])
        @scoreboard.update(scoreboard_params)
        render json: @scoreboard
    end
    
      private
    
      def scoreboard_params
        params.require(:scoreboard).permit(:username, :score)
      end
end
