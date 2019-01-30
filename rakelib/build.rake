desc "build the documentation"
task :build do
  sh('yarn install')
  sh('yarn run hugo')
end