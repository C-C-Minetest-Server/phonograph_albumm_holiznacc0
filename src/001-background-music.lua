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

for _, data in ipairs {
    { "01-creppy-piano-1",                  S("Creppy Piano 1"),                    nil },
    { "02-creppy-piano-2",                  S("Creppy Piano 2"),                    nil },
    { "03-creppy-piano-3",                  S("Creppy Piano 3"),                    nil },
    { "04-creppy-piano-4",                  S("Creppy Piano 4"),                    nil },
    { "05-dangerous-voyage",                S("Dangerous Voyage"),                  nil },
    { "06-dangerous-voyage-music-box",      S("Dangerous Voyage (Music Box)"),      nil },
    { "07-a-small-town-on-pluto-music-box", S("A Small Town on Pluto (Music Box)"), nil },
    { "08-a-small-town-on-pluto-composed",  S("A Small Town on Pluto (Composed)"),  nil },
    { "09-cabin-fever",                     S("Cabin Fever"),                       nil },
    { "10-spring-on-the-horizon",           S("Spring On The Horizon"),             nil },
} do
    local id, title, short_description = unpack(data)
    album:register_song(id, {
        title = title,
        short_description = short_description,
        long_description = nil,
        artist = nil,
        spec = {
            filepath = songpath(id),
        },
        multichannel_specs = {
            {
                filepath = songpath(id .. "_ch0"),
            },
            {
                filepath = songpath(id .. "_ch1"),
            },
        },

    })
end
