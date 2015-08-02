module TestHelper
	def masterpass_js_tags(data)
	    content = content_tag(:script, "", {type: "text/javascript", src: "#{data.omniture_url}"}).html_safe
	    content << "\n" << content_tag(:script, "", {type: "text/javascript", src: "#{data.lightbox_url}"}).html_safe
	    content
	  end
end
