require( 'minitest/autorun' )
require_relative('../models/artist')

class TestArtist < MiniTest::Test

  def setup
    options = {
      'artist_name' => 'Papa',
      'album_name' => 'Teeeno'
    }

  @artist = Artist.new( options )
 end

 def test_artist_name()
  assert_equal('Papa', @artist.artist_name)
 end    

 def test_album_name()
  assert_equal('Teeeno', @artist.album_name)
 end  

end   