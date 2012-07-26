PlainRenderer = Proc.new do |title, author, paragraphs|
  puts title
  puts "  By #{author}"
  paragraphs.each {|p| puts p}
  puts
  puts "The end."
end

HtmlRenderer = Proc.new do |title, author, paragraphs|
  puts "<html>"
  puts "<h1>#{title}</h1>"
  puts "<h2>By #{author}</h2>"
  paragraphs.each {|p| puts "<p>#{p}</p>" }
  puts "</html>"
end

class Document
  attr_accessor :title, :author, :paragraphs
  attr_accessor :renderer

  def initialize(title, author, paragraphs)
    @title = title
    @author = author
    @paragraphs = paragraphs
    @renderer = PlainRenderer   # No 'new'
  end

  def render
    # now call 'call' instead of render
    @renderer.call(@title, @author, @paragraphs)
  end
end

d = Document.new( 'My life', 'russ', ['I was', 'born'])
d.render
d.renderer = HtmlRenderer
d.render
