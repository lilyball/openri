require 'rubygems'
require 'launchy'

module OpenRi
  # Opens the documentation for the specified gem
  def self.open(name)
    gems = Gem.source_index.find_name(name)
    if gems.empty?
      # try and find based on require name
      gem = Gem.searcher.find(name)
      if gem.nil?
        raise "No gems matched '#{name}'"
      end
    else
      gem = gems[0]
    end
    open_url("file://#{gem.installation_path}/doc/#{gem.full_name}/rdoc/index.html")
  end

  def self.open_url(url)
    # this works on OS X
    # I don't know what's necessary for other platforms
    Launchy::Browser.new.visit(url)
  end
end
