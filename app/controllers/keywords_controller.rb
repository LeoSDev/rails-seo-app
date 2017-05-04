class KeywordsController < ApplicationController
    
    before_action :find_keyword, only:[:show, :edit, :update, :destroy]
    
    def index
        @keywords = Keyword.all
    end
    
    def show
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
        if @keyword.update(keyword_params)
            redirect_to keywords_path
        else
            render :edit
        end
    end
    
    def destroy
        @keyword.destroy
        redirect_to keywords_path
    end

    private 
    
    def keyword_params
        params.require(:keyword).permit(:name)
    end
    
    def find_keyword
        @keyword = Keyword.find(params[:id])

    end
    
end
