# frozen_string_literal: true

module Types
  class ContactType < Types::BaseObject
    field :id, ID, null: false
    field :Name, String
    field :Email, String
    field :Content, String
  end
end
