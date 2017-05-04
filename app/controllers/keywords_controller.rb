class KeywordsController < ApplicationController
    
    def index
        @keywords = Keyword.all
    end
    
    def show
        @keywords = Keyword.find(params[:id])
    end
    
    def new
    end
    
    def create
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end

    
end
