xml.instruct! :xml, :version => '1.0'
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Bindr."
    xml.description @title
    xml.link @rss_path

    @binders.each do |binder|
      xml.item do
        xml.title binder.title
        xml.description binder.description
        xml.pubDate binder.updated_at.to_s(:rfc822)
        xml.link binder_url(binder)
        xml.guid binder_url(binder)
      end
    end
  end
end
