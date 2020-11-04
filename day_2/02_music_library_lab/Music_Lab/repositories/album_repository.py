from db.run_sql import run_sql
from models.album import Album
from models.artist import Artist
from repositories import artist_repository

def save_album(album):
    sql = "INSERT INTO albums (title, genre, artist_id) VALUES (%s, %s, %s)RETURNING *"
    values = [album.title, album.genre, album.artist.id]
    results = run_sql(sql, values)
    id = results[0]['id']
    album.id = id
    return album    

def list_albums():
    albums = []
    sql = "SELECT * FROM albums"
    results = run_sql(sql)
    for row in results:
        album = Album(row['title'], row['genre'], row['id'], row['artist_id'])
        albums.append(album)
    return albums

def list_albums_by_artist(artist):
    list_a_b_a = []
    sql = "SELECT * FROM albums WHERE artist_id = %s"
    values = [artist.id]
    results = run_sql(sql, values)
    for row in results:
        album = Album(row['title'], row['genre'], row['id'], artist)
        list_a_b_a.append(album)
    return list_a_b_a

def find_artist_by_album(album):
    artist = None
    sql = "SELECT * FROM album WHERE album_title = %s"
    values = [album.title]
    results = run_sql(sql, values)
    if results != None:
        artist = artist_repository.select(result['artist_id'])
        album = Album(result['title'], result['genre'], result['id'], artist)
    return artist