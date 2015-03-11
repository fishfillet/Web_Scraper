require_relative 'comment'

class Post
  attr_accessor :title, :url, :points, :item_id, :comments
  def initialize(title, url, points, item_id)
    @title = title
    @url =  url
    @points =  points
    @item_id = item_id
    @comments = []
  end

  def comments # returns all the comments associated with a particular post
      # array = []
      # array << @comments
      # p array
    @comments.each do |c|
        p c
        puts "______________"
    end
  end 

  def add_comment(comment)

    @comments << comment
    
  end


    # puts @@page.class   # => Nokogiri::HTML::Document
    # test =  []
    # test << @@page.search('.comment > font:first-child').map { |font| font.inner_text}
    # pp test
end