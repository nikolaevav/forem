module Forem
  class PostAsset < ActiveRecord::Base
    belongs_to :post


    has_attached_file :asset,
                      :styles => {
                          :postimage => {
                              :geometry => 'x60',
                              :format => :png,
                          },

                      },
                      :url => '/assets/forum/posts/images/:id/:style/:basename.:extension',
                      :path => ':rails_root/public/assets/forum/posts/images/:id/:style/:basename.:extension'

    validates_attachment_size :asset, :less_than => 3.megabytes
    validates_attachment :asset,
                         :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

    # :large :middle :mini :original
    def avatar_link(size)
      tempLink = self.avatar.url(size)
      if tempLink.include? "miss"
        tempLink = "/assets/home/forum/default-avatar.jpg"
      end
      @avatar = tempLink
    end
  end
end
