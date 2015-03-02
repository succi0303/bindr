xml.instruct! :xml, :version => '1.0'
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  xml.url do
    xml.loc(root_url)
    xml.priority("1.0")
  end

  @binders.each do |binder|
    xml.url do
      xml.loc(binder_url(binder))
      xml.lastmod(binder.updated_at.to_s(:sitemap))
      xml.changefreq("weekly")
      xml.priority("0.8")
    end
  end
end
