#

class WikiParser
  def self.parse
    page = Infoboxer.wikipedia.get('Medical procedure')
    page.sections('List of medical procedures').
    lookup(:ListItem).
    lookup_children(:Wikilink, index: 0).
    map(&:link)
  end
end