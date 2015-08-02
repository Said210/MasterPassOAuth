require 'common_types_mapping_registry.rb'

class CommonTypesMapper < XSD::Mapping::Mapper
  attr_accessor :registry
  def initialize
    super(CommonTypesMappingRegistry::Registry)
  end
end
