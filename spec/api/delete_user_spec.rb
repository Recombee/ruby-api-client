require 'spec_helper'
require_relative "delete_entity"

describe RecombeeApiClient::DeleteUser do
  it_behaves_like "delete entity"
end