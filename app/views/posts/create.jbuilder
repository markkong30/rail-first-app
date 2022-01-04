json.post do
  json.title @post.title
  json.user_id @post.user_id
end