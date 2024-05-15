class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content

  has_many :posts
  has_many :tags, through: :post_tags

  def short_content
    # byebug
    "#{self.object.content[0..39]}..."
  end
end
