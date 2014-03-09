#!/usr/bin/ruby
music_directory = "/tmp/music"
music_files = Dir["#{music_directory}/**/*.{MP3,mp3}"]


def shuffle array
  shuffled = []

  while array.length > 0
    index = rand(array.length)
    shuffled.push(array[index])
    array.delete_at(index)
  end

  return shuffled
end


# optional shuffle
music_files = shuffle(music_files)

File.open "#{music_directory}/playlist.m3u", 'w' do |file|
  music_files.each do |music_file|
    file.write music_file + "\n"
  end
end
