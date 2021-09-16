require "application_system_test_case"

class ImagesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url # "/"
    assert_selector "h3", text: "Welcome to this Rails application. Please log-in to access the options"
  end

  test "visiting the index while logged in" do
    login_as users(:baptiste)
    visit "/users/sign_in"
    # debugger
    assert_selector ".card", count: 2
  end
  
  test "cheking the title of an image while logged in" do
    login_as users(:baptiste)
    visit "/users/sign_in"
    assert_selector "h5", text: "Test Title"
  end
  
  test "lets a signed in user create a new product with a link" do
    login_as users(:baptiste)
    visit "/images/new"
    debugger
    # save_and_open_screenshot
    find_field("Title of the image").set("Image Title Test")
    fill_in "which url ?", with: "https://www.mairie-francheville69.fr/wp-content/uploads/2017/11/image-test-1.jpeg"
    fill_in "What legend ?", with: "Image Legend Test"
    fill_in "How many stars?", with: "5"
    click_on 'Send the image'
    # Should be redirected to Home with new Image
    assert_equal root_path, page.current_path
    assert_selector "Image Title Test"
  end

  test "lets a signed in user create a new product with a file" do
    login_as users(:baptiste)
    visit "/images/new"
    fill_in "title", with: "Image Title Test"
    fill_in "path", with: "https://www.mairie-francheville69.fr/wp-content/uploads/2017/11/image-test-1.jpeg"
    fill_in "legend", with: "Image Legend Test"
    fill_in "rating", with: "5"
    click_on 'Create Image'
    # Should be redirected to Home with new Image
    assert_equal root_path, page.current_path
    assert_selector "Image Title Test"
  end
end

