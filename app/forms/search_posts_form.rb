class SearchPostsForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :category_id, :integer
  attribute :mood_id, :integer

  def search
    relation = Post.distinct

    relation = relation.by_category(category_id) if category_id.present?
    relation = relation.by_mood(mood_id) if mood_id.present?

    relation
  end
end