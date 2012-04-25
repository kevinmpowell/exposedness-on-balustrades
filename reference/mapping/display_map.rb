require 'yaml'

MAP = YAML::load(File.open('classic_map.yml'))

MAP[:groups].each_pair do |k,v|
  puts '-'*79
  puts "#{MAP[:names][k]} contains #{v.length} and reinforces #{MAP[:reinforce][k]}:"
  puts '-'*79
  v.each do |v2|
    links = MAP[:links][v2]
    puts "#{MAP[:names][v2]} links to #{links.length}:"
    puts links.map {|e| MAP[:names][e]}.join (', ')
    puts
  end
end
