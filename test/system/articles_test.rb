require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase

  test "viewing the index" do
    visit articles_path
    assert_selector "h1", text: "Articles"
  end

  test "create Article" do
    visit "http://user:pass@127.0.0.1"

    click_on "New Article"

    fill_in "article[title]", with: "Test Article"
    page.execute_script('document.querySelector("#article_body_trix_input_article").value = "Test Article Body";')

    click_on "Create Article"
    assert_text "Test Article"
    assert_text "Test Article Body"
  end
end
