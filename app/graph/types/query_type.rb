QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "My root query"

  field :blog do
    type BlogType
    argument :id, !types.ID
    resolve lambda { |obj, args, ctx| Blog.find(args[:id]) }
  end
end