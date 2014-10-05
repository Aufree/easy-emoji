require 'easy/emoji'
desc "Copy emoji to the Rails `public/images/emoji` directory"
task :emoji do
  target = "#{Rake.original_dir}/public/images"
  `mkdir -p #{target} && cp -Rp #{EasyEmoji.images_path}/emoji #{target}`
end