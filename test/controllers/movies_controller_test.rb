require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
   
  test "should get index" do
      get movies_url
      assert_response :success
    end

    test "should get movie title" do
      get movies_url, params: { :title => "The Matrix" }
      assert_response :success
    end

    test "should get release year " do
      get movies_url, params: { :year => "2001" }
      assert_response :success
    end

    test "should get country" do
      get movies_url, params: { :country => "USA"}
      assert_response :success
    end

    test "should show a movie" do
      get movie_url(movies(:one))
      assert_response :success
    end

    test "should create a movie" do
      assert_difference('Movie.count') do
        post movies_url, params: { movie: { title: "The Matrix", year: "2001", country: "USA", genre: "Action", published_at: "01/01/2001", description: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers." } }
      end
      assert_response :success
    end

    test "should update a movie" do
      patch movie_url(movies(:one)), params: { movie: { title: "The Matrix", year: "2001", country: "USA", genre: "Action", published_at: "01/01/2001", description: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers." } }
      assert_response :success
    end

    test "should destroy a movie" do
      assert_difference('Movie.count', -1) do
        delete movie_url(movies(:one))
      end
      assert_response :success
    end
end
