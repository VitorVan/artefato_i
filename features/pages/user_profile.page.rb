class UserProfilePage < SitePrism::Page
    def random_string(length)
        chars = [('a'..'z'), ('A'..'Z'), ('0'..'9')].map(&:to_a).flatten
        return (0...length).map { chars[rand(chars.length)] }.join
    end
end
