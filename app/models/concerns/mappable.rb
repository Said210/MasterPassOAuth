include REXML
require 'rexml/document'
  extend ActiveSupport::Concern

module Mappable
	def to_xml
		doc = Document.new(MasterpassDataMapper.new.obj2xml(self))
	end

	def to_xml_s
		CGI.unescapeHTML(self.to_xml.to_s)
	end
	
	def to_json
		ActiveSupport::JSON.encode(self)
	end
end