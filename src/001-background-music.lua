-- phonograph_album_holiznacc0/src/001-background-music.lua
-- Background Music (https://freemusicarchive.org/music/holiznacc0/background-music)
-- SPDX-License-Identifier: LGPL-2.1-or-later
-- Track license: CC0

local S = minetest.get_translator("phonograph_album_holiznacc0")

local MP = minetest.get_modpath("phonograph_album_holiznacc0")
local function songpath(name)
    return table.concat({
        MP,
        "phonographs", "001-background-music",
        "phonograph_album_holiznacc0_001-" .. name .. ".ogg"
    }, DIR_DELIM)
end

local album = phonograph.register_album("phonograph_album_holiznacc0:001-background-music", {
    short_title = S("HoliznaCC0's BGM"),
    title = S("Background Music"),
    short_description = nil,
    long_description = nil,
    -- cover = "phonograph_album_holiznacc0_cover_001.jpg",
    artist = S("HoliznaCC0"),
    license = phonograph.licenses.CC0,
})

album:register_song("01-creppy-piano-1", {
    title = S("Creppy Piano 1"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("01-creppy-piano-1"),
    spec = {},
})

album:register_song("02-creppy-piano-2", {
    title = S("Creppy Piano 2"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("02-creppy-piano-2"),
    spec = {},
})

album:register_song("03-creppy-piano-3", {
    title = S("Creppy Piano 3"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("03-creppy-piano-3"),
    spec = {},
})

album:register_song("04-creppy-piano-4", {
    title = S("Creppy Piano 4"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("04-creppy-piano-4"),
    spec = {},
})

album:register_song("05-dangerous-voyage", {
    title = S("Dangerous Voyage"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("05-dangerous-voyage"),
    spec = {},
})

album:register_song("06-dangerous-voyage-music-box", {
    title = S("Dangerous Voyage (Music Box)"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("06-dangerous-voyage-music-box"),
    spec = {},
})

album:register_song("07-a-small-town-on-pluto-music-box", {
    title = S("A Small Town on Pluto (Music Box)"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("07-a-small-town-on-pluto-music-box"),
    spec = {},
})

album:register_song("08-a-small-town-on-pluto-composed", {
    title = S("A Small Town on Pluto (Composed)"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("08-a-small-town-on-pluto-composed"),
    spec = {},
})

album:register_song("09-cabin-fever", {
    title = S("Cabin Fever"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("09-cabin-fever"),
    spec = {},
})

album:register_song("10-spring-on-the-horizon", {
    title = S("Spring On The Horizon"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("10-spring-on-the-horizon"),
    spec = {},
})
