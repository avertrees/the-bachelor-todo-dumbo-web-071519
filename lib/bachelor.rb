def get_first_name_of_season_winner(data, season)
  # code here
<<<<<<< HEAD
  winner = data[season].select{|contestant| contestant["status"] == "Winner"}
  name = winner[0]["name"].split(' ')
  return name[0]
end

def contestants(data)
  contestantHash = {}
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestantHash + contestant
    end
  end
  puts contestantHash
  return contestantHash
=======
  data.each do |season|
    season.each do |contestant|
      return contestant["name"]
      # contestant.each do |hash|
      #   puts hash
      #   return contestant["name"]
      # end
      # if contestant["name":] == "Ashley Iaconetti"
      #   puts contestant["name":]
      # end
      # if season == "Season 18"
      #   return "yes"     
      # end 
    end
  end
  
>>>>>>> b1999de8dbc4de2daf35d49a3ceeb85b93d1b988
end

def get_contestant_name(data, occupation)
  # code here
  #contestant = data.select{|season, contestants, contestant| contestant["occupation"] == occupation}
  
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  # code here
  num = 0
  data.each do |season, contestants|
    num += contestants.count{|contestant| contestant["hometown"]==hometown}
  end
  #hash = contestants(data)
  return num

end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    persons = contestants.select{|contestant| contestant["hometown"]==hometown}
    persons.each do |person|
      return person["occupation"]
    end
    end
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0.0
  num = data[season].length.to_f
  data[season].each do |contestant|
    #contestants.each do |contestant|
    
    sum += contestant["age"].to_f

  
  end
  avg = (sum/num.to_f).round

  return avg
end
