require 'test_helper'

class UserCanCapturePokemonTest < ActionDispatch::IntegrationTest

  def test_capture_button
    Pokemon.create(name: "Pikachu", image_url: "http://core.dawnolmo.com/50_pokemon__9_pikachu_by_megbeth-d5fga3f_original.png" )
    visit '/'

    # save_and_open_page
    assert page.has_content?("Backpack: 0")
    # save_and_open_page
    within ".capture_button" do
      click_button "Capture"
    end

    assert page.has_content?("Backpack: 1")
  end
end
