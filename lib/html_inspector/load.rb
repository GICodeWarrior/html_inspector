class HtmlInspector
  class << self
    def load_core_ext
      core_ext = File.expand_path(File.join(File.dirname(__FILE__), 'core_ext'))
      Dir.glob(File.join(core_ext, '*.rb')) do |file|
        file.match(/^.+\/([^\/]+)\.rb$/)
        require "html_inspector/core_ext/#{$1}"
      end
    end
  end
end
