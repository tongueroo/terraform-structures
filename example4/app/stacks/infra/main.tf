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
#    app/stacks/infra/envs/dev/outputs.tf
#
stack = File.expand_path(".", __dir__)
expr = "#{stack}/envs/#{Terraspace.env}/**.tf"
Dir.glob(expr).each do |path|
  mod = Terraspace::Mod.new(@options[:mod]) # @options[:mod] = "infra"
  puts Terraspace::Compiler::Erb.new(mod, path).build
end
%>
