module UsersHelper
	def gravitar_for(user)
		gravitar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravitar_url = "http://gravitar.com/avatar/#{gravitar_id}"
		image_tag(gravitar_url, alt: user.name, class: "gravitar")
	end
end
