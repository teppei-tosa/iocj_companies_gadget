class CompaniesController < ApplicationController
  def index
    @companies = {:title => 'IOCJ Companies', :description => 'Here is IOCJ mambers!', :msg => 'hoge!'}
    respond_to do |format|
      format.xml
    end
  end
end
