class SongsController < ApplicationController
  def show
    q = params["id"].to_i
    render json: Songs.find_by(id: q)
  end
  def index
    render json: Song.all
  end
  def create
    Songs.title = params["title"]
    Songs.album = params["album"]
    Songs.artist = params["artist"]
    Songs.year = params["year"]
    Songs.save
    render json: Songs.last
  end
  def destroy
    q = params["id"].to_i
    Songs.destroy_by(id: q)
  end
  def update
    Songs.title = params["title"] || Songs.title
    Songs.album = params["album"] || Songs.album
    Songs.artist = params["artist"] || Songs.artist
    Songs.year = params["year"] || Songs.year
    Songs.save
  end
end
