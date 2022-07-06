require "test_helper"

class MovieTest < ActiveSupport::TestCase
    test "valid movie" do
        movie = Movie.new(
             title: "The Matrix",
             year: "2001", 
             country: "USA", 
             genre: "Action", 
             published_at: "01/01/2001", 
             description: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.")
        assert movie.valid?
    end
end
