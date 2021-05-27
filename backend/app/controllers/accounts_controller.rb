class AccountsController < ApplicationController

    def index
        @account = Account.all
        render json: @account
    end

    def new
        @account = Account.new
      end

    def show
        @account = Account.find(params[:id])
        render json: @account
    end
    
    def create
        @account = Account.new(account_params)
        if @account.save
          redirect_to posts_url, notice: 'Thank you for signing up!'
        else
          render :new
        end
      end

    def update
        @account = Account.find(params[:id])
        @account.update(account_params)
        render json: @account
    end
    
      private
    
      def account_params
        params.require(:account).permit(:username, :password)
      end
end
