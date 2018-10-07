class SPortfoliosController < ApplicationController
    def index
        @portfolio_items = SPortfolio.all
    end

    def new
        @portfolio_item = SPortfolio.new
    end

    def create
        @portfolio_item = SPortfolio.new(params.require(:s_portfolio).permit(:title, :subtitle, :body))
    
        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to s_portfolios_path, notice: 'Portfolio was successfully created.' }
            format.json { render :show, status: :created, location: @s_portfolio }
          else
            format.html { render :new }
            format.json { render json: @blog.errors, status: :unprocessable_entity }
          end
        end
      end

      def update
        @portfolio_item = SPortfolio.find(params[:id])
        respond_to do |format|
          if @portfolio_item.update(params.require(:s_portfolio).permit(:title, :subtitle, :body))
            format.html { redirect_to s_portfolios_path, notice: 'Portfolio was successfully updated.' }
            format.json { render :show, status: :ok, location: @s_portfolio }
          else
            format.html { render :edit }
            format.json { render json: @blog.errors, status: :unprocessable_entity }
          end
        end
      end

    def edit
    @portfolio_item = SPortfolio.find(params[:id])
    end
    
    def show
        @portfolio_item = SPortfolio.find(params[:id])
    end
end
