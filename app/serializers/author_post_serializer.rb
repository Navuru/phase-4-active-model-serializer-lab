class AuthorPostSerializer < ActiveModel::Serializer
  attributes :short_content, :title
  has_one :profile
  has_many :posts
  has_many :post_tags
  has_many :tags, through: :post_tags

  def short_content
    "#{self.object.content[0..39]...}"
  end
end
