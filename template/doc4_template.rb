class Document
  attr_accessor :title, :author, :paragraphs

  def initialize(title, author, paragraphs)
    @title = title
    @author = author
    @paragraphs = paragraphs
  end

  def render
    render_start
    render_title(@title)
    render_author(@author)
    @paragraphs.each {|p| render_paragraph(p)}
    render_finish
  end
end

class PlainDocument < Document
  def render_start
  end

  def render_title(t)
    puts t
  end

  def render_author(a)
    puts "By #{a}"
  end

  def render_paragraph(p)
    puts p
  end

  def render_finish
    puts "The end"
  end
end

class HtmlDocument < Document
  def render_start
    puts "<html>"
  end

  def render_title(t)
    puts "<h1>#{@title}</h1>"
  end

  def render_author(a)
    puts "<h2>By #{@author}</h2>"
  end

  def render_paragraph(p)
    puts "<p>#{p}</p>"
  end

  def render_finish
    puts "</html>"
  end
end

d =HtmlDocument.new('My Life', 'Russ', ['I was born', 'in a small town'])
d.render
