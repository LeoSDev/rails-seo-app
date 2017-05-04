class KeywordsController < ApplicationController
    
    def index
        @keywords = Keyword.all
    end
    
    def show
        @keyword = Keyword.find(params[:id])
    end
    
    def new
        @keyword = Keyword.new
    end
    
    def create
        @keyword = Keyword.new(keyword_params)
        if @keyword.save
            redirect_to keywords_path
        else    
            render :new
        end
        
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end

    private 
    
    def keyword_params
        params.require(:keyword).permit(:name)
    end
    
end
