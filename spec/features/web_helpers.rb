require 'spec_helper'
def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: "Fred"
  fill_in :player_2_name, with: "Alex"
  click_button("submit")
end
