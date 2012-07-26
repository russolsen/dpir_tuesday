class Document
  attr_accessor :title, :author, :paragraphs

  def initialize(title, author, paragraphs)
    @title = title
    @author = author
    @paragraphs = paragraphs
  end
end

class PlainDocument < Document
  def render
    puts @title
    puts "  By #{@author}"
    @paragraphs.each {|p| puts p}
    puts
    puts "The end."
  end
end

class HtmlDocument < Document
  def render
    puts "<html>"
    puts "<h1>#{@title}</h1>"
    puts "<h2>By #{@author}</h2>"
    @paragraphs.each {|p| puts "<p>#{p}</p>" }
    puts "</html>"
  end
end

d = HtmlDocument.new('My Life', 'Russ', ['I was born', 'in a small town'])
d.render
