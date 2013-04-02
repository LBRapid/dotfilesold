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

task :default => :install

desc "Install dotfiles"
task :install do
  Rake::Task["dotfiles"].invoke
  Rake::Task["vim_symlink"].invoke
  Rake::Task["zsh_symlink"].invoke

  puts "Installation complete!"
end

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

desc "Symlink vim bundle folder"
task :vim_symlink do
  link = File.expand_path("~/.vim/bundle")
  if !File.exists?(link)
    run %Q{ln -s "#{here("vim/bundle")}" "#{link}"}
  else
    puts "Bundle folder already exists at ~/.vim/bundle!"
  end
end

desc "Symlink oh-my-zsh folder"
task :zsh_symlink do
  link = File.expand_path("~/.oh-my-zsh")
  if !File.exists?(link)
    run %Q{ln -s "#{here("oh-my-zsh")}" "#{link}"}
  else
    puts "oh-my-zsh folder already exists at ~/.oh-my-zsh!"
  end
end
