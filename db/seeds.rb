# TODO: move this into a rake task that accepts a map file argument

require 'yaml'

board_data = YAML::load(File.open('reference\mapping\classic_map.yml'))

# this transaction is the difference between a 15 second run and a 1 second run (after rails loads)
ActiveRecord::Base.transaction do
  # clear out the old data 
  puts "===== Cleaning up ====="
  Board.delete_all
  Zone.delete_all
  Territory.delete_all
  Card.delete_all
  puts "Cleared boards, zones, territories, and cards tables"

  # initalize hashes for linking pass
  codes = {}
  links = {}
  
  # build the board
  puts "\n===== Building the board ====="
  this_board = Board.create({ name: board_data[:name] }, without_protection: true)
 
  # status log 
  puts "Board: #{board_data[:name]}"

  puts "\n===== Building Zones ====="
  board_data[:zones].each_pair do |zone_code, zone_data|
    # build zone
    this_zone = Zone.create({ name: zone_data[:name], 
                              board: this_board,
                              reinforcements: zone_data[:reinforcements] }, without_protection: true)
    
    zone_data[:territories].each do |territory_code, territory_data|
      # build territory 
      this_territory = Territory.create({ name: territory_data[:name], 
                                          zone: this_zone }, without_protection: true)
      
      # build card 
      this_card = Card.create({ name: territory_data[:name], 
                                territory: this_territory}, without_protection: true)
           
      # build a couple hashes for use in the 
      codes[territory_code] = this_territory
      links[territory_code] = territory_data[:neighbors]
    end

    # status log
    puts "Built #{this_zone.name} (#{this_zone.territories.map {|e| e.name}.join(', ')})"
  end

  # linking requires a second pass after territories exist
  puts "\n===== Linking Territories ====="
  links.each do |k,va|
    # link territory to its neighbors
    va.each {|v| codes[k].neighbors << codes[v] }

    # status log
    puts "Linked #{codes[k].name} to #{codes[k].neighbors.map {|e| e.name}.join(', ')}"
  end
end # transaction
