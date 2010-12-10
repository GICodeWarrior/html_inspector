class Object
  def html_inspect
    HtmlInspector.escape(self.inspect)
  end
end
