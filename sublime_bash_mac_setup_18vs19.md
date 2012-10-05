## Ruby 1.8 vs 1.9 code differences for Sublime setup

Ruby 1.8

```Ruby
bin_directory = File.join(File.expand_path('~/'), "bin")
Dir.mkdir(File.join(File.expand_path('~/'), "bin"))
```

Ruby 1.9

```Ruby
bin_directory = File.join(Dir.home, "bin")
Dir.mkdir bin_directory
```

Unix

```mkdir ~/bin```

Ruby

```Ruby
File.symlink("/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl",
 "#{bin_directory}/subl")
```

Unix

```ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl```

Ruby 1.8

```Ruby
File.open(File.expand_path('~/.bash_profile'), "a") do |f|
  f.puts "export PATH=$PATH:$HOME/bin"
  f.puts "export EDITOR='subl' -w"
end
```

Ruby 1.9

```Ruby
File.open("#{Dir.home}/.bash_profile"), "a") do |f|
  f.puts "export PATH=$PATH:$HOME/bin"
  f.puts "export EDITOR='subl' -w"
end
```

Ruby (possibilities)

```Ruby
reload!
#ruby "#{Dir.home}/.bash_profile"
```

Unix (has not worked yet)

```source ~/.bash_profile```