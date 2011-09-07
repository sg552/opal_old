for item in items
  xml.item do
    xml.title(h item.name)
    main_image = item.main_image  # Grab the main image, make optional
    if item.main_image 
      xml.image do
        xml.url(URI.join(@setting[:url], main_image.thumb_url))
        xml.title((main_image.description.blank?) ? main_image.filename : main_image.description)
        xml.link(URI.join(@setting[:url], main_image.url))
      end 
    end 
    xml.description(h item.description)
    # rfc822
    xml.pubDate(item.created_at.rfc2822)

    xml.link(url_for(:controller => "items", :action => "view", :id => item, :only_path => false))
    xml.guid(url_for(:controller => "items", :action => "view", :id => item, :only_path => false))
  end
end