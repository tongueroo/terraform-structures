<%
# Loads tf files env specific folder and as main.tf
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
  puts IO.read(path)
end
%>
