include REXML
require 'rexml/document'
module MasterpassMappable
  extend ActiveSupport::Concern
  
  def to_xml
    doc = Document.new(MasterpassDataMapper.new.obj2xml(self))
  end
  
  def to_xml_s
    CGI.unescapeHTML(self.to_xml.to_s)
  end
  
  def to_html_s
    CGI.escapeHTML(self.to_xml_s)
  end
  
  def to_json
    ActiveSupport::JSON.encode(self)
  end
  
  def log message
    fd = IO.sysopen "/dev/tty", "w"
    ios = IO.new(fd, "w")
    ios.puts message
    ios.close
  end
  
  
  module ClassMethods
    
      def from_xml(xml)
        MasterpassDataMapper.new.xml2obj(xml)
      end
    
      def from_json(json)
        self.attributes = ActiveSupport::JSON.decode(json)
        self
      end
      
  end
  
end
  