require 'pp'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'colorize'
require_relative 'post'



 
# post.html

def run 
  html_file = ARGV[0]
  doc = Nokogiri::HTML(open(html_file)) 
  points = doc.search('.subtext > span:first-child').map { |span| span.inner_text}
  item_id = doc.search('.subtext > a:nth-child(3)').map {|link| link['href'] }
  title= doc.search('.title > a').map { |link| link.inner_text}
  url= doc.search('.title > a').map { |link| link['href']}

  comment_text = doc.search('.comment > font:first-child').map { |font| font.inner_text} 
  comment_user = doc.search('.comhead > a:first-child').map { |link| link.inner_text}
  comment_time = doc.search('.comhead > a:nth-child(2)').map { |link| link.inner_text}

  l = comment_text.length
  x = 0
  

  
  post = Post.new(title, url, points, item_id)
  while x < l 
    post.add_comment(Comment.new(comment_user[x], comment_time[x], comment_text[x]))
    x +=1 
  end 

  puts "Post title: #{post.title}".red
  puts "Number of comments: #{post.points}".blue
  
  
  # pp post
  #


end

run