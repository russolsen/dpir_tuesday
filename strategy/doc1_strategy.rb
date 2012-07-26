class PlainRenderer
  def render(title, author, paragraphs)
    puts title
    puts "  By #{author}"
    paragraphs.each {|p| puts p}
    puts
    puts "The end."
  end
end

class HtmlRenderer
  def render(title, author, paragraphs)
    puts "<html>"
    puts "<h1>#{title}</h1>"
    puts "<h2>By #{author}</h2>"
    paragraphs.each {|p| puts "<p>#{p}</p>" }
    puts "</html>"
  end
end

class Document
  attr_accessor :title, :author, :paragraphs
  attr_accessor :renderer

  def initialize(title, author, paragraphs)
    @title = title
    @author = author
    @paragraphs = paragraphs
    @renderer = PlainRenderer.new
  end

  def render
    @renderer.render(@title, @author, @paragraphs)
  end
end

d = Document.new( 'My life', 'russ', ['I was', 'born'])
d.renderer = HtmlRenderer.new
d.render
d.renderer = PlainRenderer.new
d.render

