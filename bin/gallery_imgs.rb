#!/usr/bin/ruby
imgs = []
Dir.glob('images/gallery/*.JPG') do |rb_file|
  imgs << rb_file[15..18]
end
imgs.sort.each do |image|
  next if image == '0000'
  puts '    <li><img src="" rel="' + image + '" /></li>'
end
puts '  </ul>'
puts '</div>'
