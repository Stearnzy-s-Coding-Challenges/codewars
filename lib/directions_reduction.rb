class DirectionsReduction
  def dirReduc(directions)
    north_south = { 
      'NORTH' => 0,
      'SOUTH' => 0
     }

    east_west = {
      'EAST' => 0,
      'WEST' => 0
    }
    
     directions.each do |dir|
      if dir == 'NORTH' || dir == 'SOUTH'
        north_south[dir] += 1
      else
        east_west[dir] += 1
      end
     end

    result = []

    n_s_diff = (north_south.values[0] - north_south.values[1]).abs
    e_w_diff = (east_west.values[0] - east_west.values[1]).abs

    n_s_diff.times do
      result << north_south.max_by{|key, value| value}[0]
    end
    
    e_w_diff.times do
      result << east_west.max_by{|key, value| value}[0]
    end

    result

     

    # n_s = []
    # e_w = []

    # directions.each do |dir|
    #   if dir == 'NORTH' || dir == 'SOUTH'
    #     n_s << dir
    #   else
    #     e_w << dir
    #   end
    # end
    # n_s == ['NORTH', 'SOUTH', 'SOUTH']
    # e_w == []



    # Find which of NS is max, 
    # Add to result array the difference between N&S as count of times to shovel in the maximum


  end
end
