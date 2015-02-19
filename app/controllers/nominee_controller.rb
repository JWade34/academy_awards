class NomineeController < ApplicationController

  def index
    if params[:search_text].present?
      @nominations = Nomination.search(params[:search_text])
    else
      @nominations = Nomination.all.order("year DESC")
    end
  end

end
