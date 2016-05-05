#
# This file is auto-generated, do not edit
#

module RecombeeApiClient
  require_relative 'request'
  require_relative '../errors'
  
  ##
  #Set/update (some) property values of a given item.
  #
  class SetItemValues < ApiRequest
    attr_reader :item_id, :values
    attr_accessor :timeout
  
  ##
  # * *Required arguments*
  #   - +item_id+ -> ID of the item which will be modified.
  #
  #   - +values+ -> The values for the individual properties.
  #
  #Example of body:
  #```
  #  {
  #    "string_property": "strvalue",
  #    "integer_property": 42,
  #    "!cascadeCreate": true
  #  }
  #```
  #
  #Special parameter `!cascadeCreate` may be used. It indicates that the item of the given itemId should be created if it does not exist in the database, as if the corresponding PUT method was used. Note the exclamation mark (!) at the beginning of the parameter's name to distinguish it from item property names.
  #
  #
    def initialize(item_id, values)
      @item_id = item_id
      @values = values
      @timeout = 1000
    end
  
    # HTTP method
    def method
      :post
    end
  
    # Values of body parameters as a Hash
    def body_parameters
      p = Hash.new
      p = p.merge(@values)
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
      "/{databaseId}/items/#{@item_id}"
    end
  
    # Relative path to the endpoint including query parameters
    def path
      p = "/{databaseId}/items/#{@item_id}"
      p
    end
  end
end