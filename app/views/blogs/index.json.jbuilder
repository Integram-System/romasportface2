json.array!(@blogs) do |blog|
  json.extract! blog, :id, :image_id, :title, :content_short, :content
  json.url blog_url(blog, format: :json)
end
