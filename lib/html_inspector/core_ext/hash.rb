class Hash
  def html_inspect
    table = '<table>'
    self.each_pair do |key, value|
      table << "<tr><th>#{key.html_inspect}</th>" \
               "<td>#{value.html_inspect}</td></tr>"
    end
    table << '</table>'
  end
end
