class Song 

    @@count = 0
    @@artists =[]
    @@genres=[] 
   
attr_accessor :name, :artist, :genre
    
    def initialize(name,artist,genre)
        @name = name 
        @artist = artist 
        @genre = genre 
        @@count += 1 
        @@artists << artist
        @@genres << genre
    end


   def self.count
     @@count
   
    end 

   def self.artists
    @@artists.uniq

    end

   def self.genres 
   @@genres.uniq
   end 

   def self.genre_count 
   genre_count ={}
   
   
  self.genres.each do |genre|
  num =  @@genres.count(genre)
  genre_count[genre] = num 

   end 



    genre_count 
    


end 

   def self.artist_count
   
        genre_count ={}
        
        
       self.artists.each do |artist|
       num =  @@artists.count(artist)
       genre_count[artist] = num 
     
        end 
     
   genre_count

end 



end 