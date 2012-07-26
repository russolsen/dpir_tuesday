class Document
  attr_accessor :title, :author, :paragraphs

  def initialize(title, author, paragraphs, flavor)
    @title = title
    @author = author
    @paragraphs = paragraphs
    @flavor = flavor
  end

  def render
    if @flavor == :plain
      puts @title
      puts "  By #{@author}"
      @paragraphs.each {|p| puts p}
      puts
      puts "The end."
    elsif @flavor == :html
      puts "<html>"
      puts "<h1>#{@title}</h1>"
      puts "<h2>By #{@author}</h2>"
      @paragraphs.each {|p| puts "<p>#{p}</p>" }
      puts "</html>"
    end
  end
end

d = Document.new('My Life', 'Russ', ['I was born', 'in a small town'], :html)
d.render
