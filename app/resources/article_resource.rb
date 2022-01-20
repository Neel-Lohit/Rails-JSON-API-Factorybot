class ArticleResource < JSONAPI::Resource
    attributes :title, :description 
    belongs_to :user
end