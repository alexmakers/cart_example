def example_image_path
  Rails.root.join('spec/images/old-man1.jpg')
end

def example_image
  example_image_path.open
end