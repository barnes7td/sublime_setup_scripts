BIN_DIRECTORY = File.join(Dir.home, "bin")
Dir.mkdir BIN_DIRECTORY

File.symlink("/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl", "#{BIN_DIRECTORY}/subl")

File.open("#{Dir.home}/.zshrc"), "a") do |f|
  f.puts "export PATH=$PATH:$HOME/bin"
  f.puts "export EDITOR='subl' -w"
end
