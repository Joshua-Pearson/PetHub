Animal.delete_all
User.delete_all

josh = User.create(:name => 'Joshua Pearson',  :email => "josh@111minnagallery.com", :provider => "facebook", :uid => "242508245942333", :oauth_token => "CAALQTlfmHLABAApbQoZBwa8zAmfyZCR0qo3jr0jmf5uiqDlhpKIeG693vPU2Imqf8Bh6rD21WgyR9mLCEvHAqAmGzNrw1Mo43cw5aBPBYxdMkUkyCabapmrYKzklWLHTyDn6V823WZBJsHDLHNSZAdiePwDZBNFA2Ox1zGLr7mjnsbZAIdeZBy8", :oauth_expires_at => "2014-07-04 15:37:22", :image => "http://graph.facebook.com/242508245942442/picture")
steve = User.create(:name => 'Stephen Healy', :email => "someemail@email.com", :provider => "facebook", :uid => "242508245942221", :oauth_token => "CAALQTlfmHLABAApbQoZBwa8zAmfyZCR0qo3jr0jmf5uiqDlhpKIeG693vPU2Imqf8Bh6rD21WgyR9mLCEvHAqAmGzNrw1Mo43cw5aBPBYxdMkUkyCabapmrYKzklWLHTyDn6V823WZBJsHDLHNSZAdiePwDZBNFA2Ox1zGLr7mjnsbZAIdeZCv9", :oauth_expires_at => "2014-07-04 13:37:22", :image => "http://graph.facebook.com/242508245942442/picture")
amy = User.create(:name => 'Amy Nuszen', :email => "ajnuszen@gmail.com", :provider => "facebook", :uid => "242508242342442", :oauth_token => "CAALQTlfmHLABAApbQoZBwa8zAmfyZCR0qo3jr0jmf5uiqDlhpKIeG693vPU2Imqf8Bh6rD21WgyR9mLCEvHAqAmGzNrw1Mo43cw5aBPBYxdMkUkyCabapmrYKzklWLHTyDn6V823WZBJsHDLHNSZAdiePwDZBNFA2Ox1zGLr7mjnsbZAIdeZWx3", :oauth_expires_at => "2014-07-04 12:37:22", :image => "http://graph.facebook.com/242508245942442/picture")
joshua = User.create(:name => 'Thee Josh', :email => "111minna.josh@gmail.com", :provider => "facebook", :uid => "242508242342442", :oauth_token => "CAALQTlfmHLABAApbQoZBwa8zAmfyZCR0qo3jr0jmf5uiqDlhpKIeG693vPU2Imqf8Bh6rD21WgyR9mLCEvHAqAmGzNrw1Mo43cw5aBPBYxdMkUkyCabapmrYKzklWLHTyDn6V823WZBJsHDLHNSZAdiePwDZBNFA2Ox1zGLr7mjnsbZAIdeZWx3", :oauth_expires_at => "2014-07-04 12:37:22", :image => "http://graph.facebook.com/242508245942442/picture")

cody = Animal.create(:name => 'Cody', :species => 'Dog', :breed => "Yellow Lab", :image => "http://humfer.net/yellowlab/yellowlab.jpg", :age => '2', :user_id => 4)
joker = Animal.create(:name => 'Joker', :species => 'Dog', :breed => "GoldenDoodle", :image => "http://www.eaglecrosskennel.net/Pics/100_2963_op_800x709.jpg", :age => '1', :user_id => 1)
stupid = Animal.create(:name => 'Stupid', :species => 'Cat', :breed => "Persian", :image => "http://img4.wikia.nocookie.net/__cb20110301040829/uncyclopedia/images/8/8b/Stupid_cat_3.jpg", :age => '12', :user_id => 4)

# tim.recipes << r1
# tim.recipes << r2

# rafi.recipes << r3