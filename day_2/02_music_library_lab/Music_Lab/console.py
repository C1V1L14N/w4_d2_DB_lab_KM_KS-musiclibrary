import pdb
from models.album import Album
from models.artist import Artist
import repositories.album_repository as album_repository
import repositories.artist_repository as artist_repository


artist_1 = Artist('U2')
artist_repository.save_artist(artist_1)
artist_2 = Artist('Smashing Pumpkins')
artist_repository.save_artist(artist_2)
artist_3 = Artist('Postal Service')
artist_repository.save_artist(artist_3)

album_1 = Album('Joshua Tree', 'pop', artist_1)
album_repository.save_album(album_1)
album_2 = Album('Siamese Dream', 'rock', artist_2)
album_repository.save_album(album_2)
album_3 = Album('Give Up', 'electro', artist_3)
album_repository.save_album(album_3)




pdb.set_trace()