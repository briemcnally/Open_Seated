json.extract! user, :id, :username, :email, :password_digest, :session_token, :fname, :lname
json.img_url image_path(user.img_url)
