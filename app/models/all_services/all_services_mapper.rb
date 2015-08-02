require 'all_services_mapping_registry.rb'

class AllServicesMapper < XSD::Mapping::Mapper
  attr_accessor :registry
  def initialize
    super(AllServicesMappingRegistry::Registry)
  end
end
