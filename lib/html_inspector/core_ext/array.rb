class Array
  def html_inspect
    list = '<ol start="0">'
    self.each do |element|
      list << "<li>#{element.html_inspect}</li>"
    end
    list << '</ol>'
  end
end
