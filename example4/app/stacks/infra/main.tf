<%=
# Loads tf files env specific folder
# Example:
#
#    app/stacks/infra/envs/demo
#    app/stacks/infra/envs/dev
#    app/stacks/infra/envs/prod
#    app/stacks/infra/envs/test
#
# Specific dev env example:
#
#    app/stacks/infra/envs/dev/main.tf
#
stack = File.expand_path(".", __dir__)
expr = "#{stack}/#{Terraspace.env}/**.tf"
Dir.glob(expr).each do |path|
  mod = Terraspace::Mod.new("infra")
  puts Terraspace::Compiler::Erb.new(mod, path).build
end
%>
