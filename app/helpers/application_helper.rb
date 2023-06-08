require 'digest/md5'
module ApplicationHelper
    def gravatar_for(user, options = {size:100})
        email_adr= user.email.downcase
        hash = Digest::MD5.hexdigest(email_adr)
        size= options[:size]
        pic_url=  "https://www.gravatar.com/avatar/#{hash}/?s=#{size}"
        image_tag(pic_url, alt: user.username, class: "rounded mx-auto d-block center")
    end
end
