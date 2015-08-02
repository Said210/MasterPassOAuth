require 'switch_api_services_mapping_registry.rb'

class SwitchApiServicesMapper < XSD::Mapping::Mapper
  attr_accessor :registry
  def initialize
    super(SwitchApiServicesMappingRegistry::Registry)
  end
end
