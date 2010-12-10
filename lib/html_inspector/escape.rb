class HtmlInspector
  class << self
    ESCAPE_TABLE = { '&'=>'&amp;', '<'=>'&lt;', '>'=>'&gt;', '"'=>'&quot;', "'"=>'&#039;', }

    def escape(data)
      data.to_s.gsub(/[&<>"]/) {|s| ESCAPE_TABLE[s] }
    end
  end
end
