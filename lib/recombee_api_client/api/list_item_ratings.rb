#
# This file is auto-generated, do not edit
#

module RecombeeApiClient
  require_relative 'request'
  require_relative '../errors'
  
  ##
  #List all the ratings of an item ever submitted by different users.
  class ListItemRatings < ApiRequest
    attr_reader :item_id
    attr_accessor :timeout
  
  ##
  # * *Required arguments*
  #   - +item_id+ -> ID of the item of which the ratings are to be listed.
  #
  #
    def initialize(item_id)
      @item_id = item_id
      @timeout = 1000
    end
  
    # HTTP method
    def method
      :get
    end
  
    # Values of body parameters as a Hash
    def body_parameters
      p = Hash.new
      p
    end
  
    # Values of query path parameters as a Hash.
    # name of parameter => value of the parameter
    def query_parameters
      params = {}
      params
    end
  
    # Relative path to the endpoint
    def basic_path
      "/{databaseId}/items/#{@item_id}/ratings/"
    end
  
    # Relative path to the endpoint including query parameters
    def path
      p = "/{databaseId}/items/#{@item_id}/ratings/"
      p
    end
  end
end