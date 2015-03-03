xml.instruct! :xml, :version => '1.0'
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Bindr."
    xml.description @binder.title
    xml.link binder_url(@binder)

    @pages.reverse_each do |page|
      xml.item do
        xml.title page.title
        xml.description page.title
        xml.pubDate page.created_at.to_s(:rfc822)
        xml.link page.url
        xml.guid page.url
      end
    end
  end
end
