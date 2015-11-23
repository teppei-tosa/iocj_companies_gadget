require 'open-uri'
require 'nokogiri'

class CompaniesController < ApplicationController
  def index

    url = 'https://www.infoscoop.org/iocj/member-list/'

    charset = nil
    html = open(url) do |f|
      charset = f.charset # 文字種別を取得
      f.read # htmlを読み込んで変数htmlに渡す
    end

    # htmlをパース(解析)してオブジェクトを生成
    doc = Nokogiri::HTML.parse(html, nil, charset)

    @companies = []
    doc.css('.member-list').css('li').each do |company|
      @companies.push(company.inner_text)
    end

    respond_to do |format|
      format.html
    end
  end
end
