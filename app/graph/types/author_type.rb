AuthorType = GraphQL::ObjectType.define do
  name 'Author'
  description 'Author of a blog'

  field 'name', types.String
end