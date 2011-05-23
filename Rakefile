def here(*paths)
  File.expand_path(File.join(File.dirname(__FILE__), *paths))
end

def dotfiles
  Dir[here('*')].map { |path| File.basename(path) }.reject { |path| path == "Rakefile" or path =~ /^README/ }
end

def run(cmd)
  puts cmd
  system cmd
end

task :default => :dotfiles

desc "Symlinks all my dotfiles"
task :dotfiles do
  dotfiles.each do |dotfile|
    link = File.expand_path("~/.#{dotfile}")
    unless File.exists?(link)
      run %Q{ln -s "#{here(dotfile)}" "#{link}"}
    end
  end
end

desc "Removes all my dotfile symlinks"
task :clean do
  dotfiles.each do |dotfile|
    link = File.expand_path("~/.#{dotfile}")
    if File.symlink?(link)
      run %Q{rm "#{link}"}
    end
  end
end

desc "Removes all existing symlinks, then re-symlinks my dotfiles"
task :reset do
  dotfiles.each do |dotfile|
    link = File.expand_path("~/.#{dotfile}")
    if File.symlink?(link)
      run %Q{rm "#{link}"}
    end
  end
  puts "Existing symlinks have been removed."
  dotfiles.each do |dotfile|
    link = File.expand_path("~/.#{dotfile}")
    unless File.exists?(link)
      run %Q{ln -s "#{here(dotfile)}" "#{link}"}
    end
  end
  puts "Dotfiles have been symlinked again."
end