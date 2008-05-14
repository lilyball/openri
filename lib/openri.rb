require 'rubygems'

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
    exec 'open', "file://#{gem.installation_path}/doc/#{gem.full_name}/rdoc/index.html"
  end
end
