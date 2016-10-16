BlogType = GraphQL::ObjectType.define do
  name "Blog"
  description "A Blog without any posts or maybe a single post?!"

  field :title, types.String
  field :content, types.String
  field :author do
    type AuthorType
    resolve lambda { |obj, args, ctx| obj.author }
  end
end