class SPortfoliosController < ApplicationController
    def index
        @portfolio_items =SPortfolio.all
    end
end
