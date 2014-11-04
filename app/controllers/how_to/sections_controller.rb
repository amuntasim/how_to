require_dependency "how_to/application_controller"

module HowTo
  class SectionsController < ApplicationController
    before_filter :authorise_how_to_manage!

    def index
      @sections = Section.all

      respond_to do |format|
        format.html # index.html.erb
      end
    end

    def show
      @section = Section.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
      end
    end

    def new
      @section = Section.new
      respond_to do |format|
        format.html # new.html.erb
      end
    end

    def edit
      @section = Section.find(params[:id])
    end

    def create
      @section = Section.new(params[:section])

      respond_to do |format|
        if @section.save
          format.html { redirect_to @section, notice: 'Section was successfully created.' }
        else
          format.html { render action: "new" }
        end
      end
    end

    def update
      @section = Section.find(params[:id])

      respond_to do |format|
        if @section.update_attributes(params[:section])
          format.html { redirect_to @section, notice: 'Section was successfully updated.' }
        else
          format.html { render action: "edit" }
        end
      end
    end

    def destroy
      @section = Section.find(params[:id])
      @section.destroy

      respond_to do |format|
        format.html { redirect_to sections_url }
      end
    end
  end
end