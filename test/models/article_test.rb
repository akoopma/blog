require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should not save article without title" do
    article = Article.new(title: "", body: "Body")
    assert_not article.save, "Saved article without a title"
  end

  test "should not save article without body" do
    article = Article.new(title: "Title", body: "")
    assert_not article.save, "Saved article without a body"
  end
end
