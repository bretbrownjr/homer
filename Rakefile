FILES =
{
  :vimrc  => '.vimrc',
  :vim    => '.vim',
  :bashrc => '.bashrc'
}

def source(file)
  File.expand_path(File.join('.',file))
end

def target(file)
  File.expand_path(File.join('~',file))
end

FILES.each_value do |file|
  trgt = target(file)
  src  = source(file)
  file trgt => source(file) do
    if File.exists?(trgt)
      sh "rm #{trgt}"
      sh "ln -s #{trgt} #{src}"
    end
    sh "ln -s #{src} #{trgt}"
  end
end

desc 'lists the components managed by homer'
task :info do
  FILES.each_value{|file| puts target(file)}
end

desc 'installs everything'
task :install => FILES.values.map{|file| target(file) }

