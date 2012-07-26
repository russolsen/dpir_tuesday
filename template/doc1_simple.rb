class Document
  attr_accessor :title, :author, :paragraphs

  def initialize(title, author, paragraphs)
    @title = title
    @author = author
    @paragraphs = paragraphs
  end

  def render
    puts @title
    puts "  By #{@author}"
    @paragraphs.each {|p| puts p}
    puts
    puts "The end."
  end
end
