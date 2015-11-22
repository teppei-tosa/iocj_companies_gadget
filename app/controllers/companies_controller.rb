class CompaniesController < ApplicationController
  def index
    @hoge = 'hoge'
    respond_to do |format|
      format.xml
    end
  end
end
