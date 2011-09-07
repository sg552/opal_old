Factory.define :item do |o|
  o.sequence(:name) { |n| "Item #{n}" }
  o.description   "This is a test desciption!"
  o.association   :category, :factory => :category
  o.association   :user, :factory => :user
  #o.user_id       Factory.build(:user).id
  o.is_public     "1"
  o.is_approved   "1"
  o.featured      true
  o.locked        false
  o.views         20
  o.recent_views  10
end

Factory.define :item_with_plugins, :parent => :item do |o|
  o.after_build do |o|
    o.plugin_comments = [Factory(:plugin_comment, :item => o)]
    o.plugin_descriptions = [Factory(:plugin_description, :item => o)]
    o.plugin_discussions = [Factory(:plugin_discussion, :item => o)]
    o.plugin_discussion_posts = [Factory(:plugin_discussion_post, :item => o)]
    o.plugin_feature_values = [Factory(:plugin_feature_value, :item => o)]    
    o.plugin_files = [Factory(:plugin_file, :item => o)]
    o.plugin_images = [Factory(:plugin_image, :item => o)]    
    o.plugin_links = [Factory(:plugin_link, :item => o)]    
    o.plugin_reviews = [Factory(:plugin_review, :item => o)]    
    o.plugin_tags = [Factory(:plugin_tag, :item => o)]    
    o.plugin_videos = [Factory(:plugin_video, :item => o)]        
  end
end