require_dependency "how_to/application_controller"

module HowTo
  class ContentsController < ApplicationController
    before_filter :authorise_how_to_manage!

    def index
      @contents = Content.all

      respond_to do |format|
        format.html # index.html.erb
      end
    end

    def show
      @content = Content.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
      end
    end

    def new
      @content = Content.new
      respond_to do |format|
        format.html # new.html.erb
      end
    end

    def edit
      @content = Content.find(params[:id])
    end

    def create
      @content = Content.new(params[:content])

      respond_to do |format|
        if @content.save
          format.html { redirect_to @content, notice: 'Content was successfully created.' }
        else
          format.html { render action: "new" }
        end
      end
    end

    def update
      @content = Content.find(params[:id])

      respond_to do |format|
        if @content.update_attributes(params[:content])
          format.html { redirect_to @content, notice: 'Content was successfully updated.' }
        else
          format.html { render action: "edit" }
        end
      end
    end

    def destroy
      @content = Content.find(params[:id])
      @content.destroy

      respond_to do |format|
        format.html { redirect_to contents_url }
      end
    end
  end
end