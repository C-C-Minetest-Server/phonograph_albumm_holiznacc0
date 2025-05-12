-- phonograph_album_holiznacc0/src/002-winter-lofi.lua
-- Winter Lofi (https://freemusicarchive.org/music/holiznacc0/winter-lofi)
-- SPDX-License-Identifier: LGPL-2.1-or-later
-- Track license: CC0

local S = minetest.get_translator("phonograph_album_holiznacc0")

local MP = minetest.get_modpath("phonograph_album_holiznacc0")
local function songpath(name)
    return table.concat({
        MP,
        "phonographs", "002-winter-lofi",
        "phonograph_album_holiznacc0_002-" .. name .. ".ogg"
    }, DIR_DELIM)
end

local album = phonograph.register_album("phonograph_album_holiznacc0:002-winter-lofi", {
    short_title = nil,
    title = S("Winter Lofi"),
    short_description = nil,
    long_description = nil,
    -- cover = "phonograph_album_holiznacc0_cover_001.jpg",
    artist = S("HoliznaCC0"),
    license = phonograph.licenses.CC0,
})

album:register_song("01-2-hour-delay", {
    title = S("2 Hour Delay"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("01-2-hour-delay"),
    spec = {},
})

album:register_song("02-fire-place", {
    title = S("Fire Place"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("02-fire-place"),
    spec = {},
})

album:register_song("03-snow-drift", {
    title = S("Snow Drift"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("03-snow-drift"),
    spec = {},
})

album:register_song("04-first-snow", {
    title = S("First Snow"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("04-first-snow"),
    spec = {},
})

album:register_song("05-winter-blues", {
    title = S("Winter Blues"),
    short_description = nil,
    long_description = nil,
    artist = nil,
    filepath = songpath("05-winter-blues"),
    spec = {},
})
