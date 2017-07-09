QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root of this schema"

  field :current_user do
    type UserType
    description 'Current user'
    resolve -> (obj, args, context) {
      context[:current_user]
    }
  end
end
