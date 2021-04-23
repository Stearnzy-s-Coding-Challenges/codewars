class DirectionsReduction
  OPPOSITES = {
    'NORTH' => 'SOUTH',
    'WEST' => 'EAST',
    'SOUTH' => 'NORTH',
    'EAST' => 'WEST'
  }

  def dirReduc(directions)
    acc = []
    directions.each do |dir|
      if OPPOSITES[dir] == acc.last
        acc.pop
      else
        acc << dir
      end
    end
    acc
  end
end
