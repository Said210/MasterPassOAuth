class MasterpassDataMapper
  def initialize
    @all_services_mapper = AllServicesMapper.new
    @switch_api_services_mapper = SwitchApiServicesMapper.new
    @common_types_services_mapper = CommonTypesMapper.new
  end
  
  def xml2obj(xml, klass=nil)
    all_services = @all_services_mapper.xml2obj(xml, klass)
    switch = @switch_api_services_mapper.xml2obj(xml, klass)
    common = @common_types_services_mapper.xml2obj(xml, klass)
    
    case true
    when all_services.class != SOAP::Mapping::Object
      return all_services
    when switch.class != SOAP::Mapping::Object
      return switch
    when common.class != SOAP::Mapping::Object
      return common
    end
  end
  
  def obj2xml(obj)
    
    case true
    when the_class_is_registered_with(@all_services_mapper, obj)
      return @all_services_mapper.obj2xml(obj)
    when the_class_is_registered_with(@switch_api_services_mapper, obj)
      return @switch_api_services_mapper.obj2xml(obj)
    when the_class_is_registered_with(@common_types_services_mapper, obj)
      return @common_types_services_mapper.obj2xml(obj)
    end
  end
  
  private
  
  def the_class_is_registered_with(mapper, obj)
    begin
      mapper.registry.schema_definition_from_class(obj.class)
    rescue => e
      return false
    else
      return true
    end
  end
  
end