require 'rubygems'
require 'rake'
require 'rake/gempackagetask'

spec = eval(File.read("openri.gemspec"), binding, "openri.gemspec")

gemtask = Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_tar = true
  # pkg.need_zip = true
end

desc 'Install openri'
task :install_gem => :gem do
  exec "sudo", "gem", "install", "#{gemtask.package_dir}/#{gemtask.gem_file}"
end
