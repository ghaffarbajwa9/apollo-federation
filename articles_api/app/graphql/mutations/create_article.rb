class Mutations::CreateArticle < Mutations::BaseMutation
	argument :user_id, Integer, required: true
	argument :content, String, required: true

	field :article, Types::ArticleType, null: false
	field :errors, [String], null: false

	def resolve(user_id:, content:)
		article = Article.new(user_id: user_id, content: content)

		if article.save
			{
				article: article,
				errors: [],
			}
		else
			{
				article: nil,
				errors: article.errors.full_messages
			}
		end
	end
end