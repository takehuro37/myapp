class ShopsController < ApplicationController
  api_key= Rails.application.credentials.dig(:grunavi, :41461b19d88d09d03cbc7f9fa34bc590)
    url='https://api.gnavi.co.jp/RestSearchAPI/v3/?keyid='
    url << 41461b19d88d09d03cbc7f9fa34bc590  

    if params[:search]
    word=params[:search]
    url << "&name=" << word 
    end
    url=URI.encode(url) 
    uri = URI.parse(url)
    json = Net::HTTP.get(uri)
    result = JSON.parse(json)
    @rests=result["rest"]

  def index
  end

end
