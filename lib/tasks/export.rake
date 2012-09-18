desc 'Export posts in Jekyll format'
task :'jekyll:export' => :environment do
  `mkdir -p #{Rails.root}/posts`

  Post.all.each do |post|
    filename = "#{post.published_at.strftime('%Y-%m-%d')}-#{post.permalink}.markdown"
    File.open "#{Rails.root}/posts/#{filename}", 'w' do |file|
      quote = post.title.include?(':') ? '"' : ''

      file.write "---
layout: post
title: #{quote}#{post.title}#{quote}
tags: [#{post.tags.collect { |tag| tag.name }.sort.join(', ')}]
---

#{post.content}"
    end
  end
end
