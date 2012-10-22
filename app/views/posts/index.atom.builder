atom_feed do |feed|
  feed.title("feed title")
  feed.updated(@posts.first.published_at)

  @posts.each do |post|
    feed.entry(post) do |entry|
      entry.title(post.title)
      entry.content(post.html_content.html_safe, :type => "html")
      entry.author { |author| author.name("Author Name") }
    end
  end
end
