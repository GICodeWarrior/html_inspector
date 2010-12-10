class Enumerable
  def html_inspect
    list = '<ul>'
    self.each do |element|
      list << "<li>#{element.html_inspect}</li>"
    end
    list << '</ul>'
  end
end
