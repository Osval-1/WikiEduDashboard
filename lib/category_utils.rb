# frozen_string_literal: true

class CategoryUtils
  def self.get_titles_without_prefixes(pages)
    pages.map do |page|
      title = page['title']
      page['ns'] == Article::Namespaces::MAINSPACE ? title : title[(title.index(':') + 1)..-1]
    end
  end
end
