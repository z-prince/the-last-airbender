class AvatarsFacade
  def self.nation_members
    top_movies = MoviesService.get_top_rated

    top_movies[0..39].map do |movie|
      Movie.new(movie)
    end
  end
end
