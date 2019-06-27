module UsersHelper
    def gravatar_for(user)
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url = "https://en.gravatar.com/userimage/156048805/a9f0223c9e4c8b4fb9d908f197076d96.jpg"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
      end
end
