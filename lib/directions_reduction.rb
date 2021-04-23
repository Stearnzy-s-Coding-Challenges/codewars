class DirectionsReduction
  def dirReduc(directions)
    cardinal_directions = { 
      'NORTH' => 0,
      'WEST' => 0,
      'SOUTH' => 0,
      'EAST' => 0,
     }
    
     directions.each do |dir|
      cardinal_directions[dir] += 1
     end

     
  end
end
