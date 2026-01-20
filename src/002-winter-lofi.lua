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
    -- cover = "phonograph_album_holiznacc0_cover_002.jpg",
    artist = S("HoliznaCC0"),
    license = phonograph.licenses.CC0,
})


for _, data in ipairs {
    { "01-2-hour-delay", S("2 Hour Delay"), nil },
    { "02-fire-place",   S("Fire Place"),   nil },
    { "03-snow-drift",   S("Snow Drift"),   nil },
    { "04-first-snow",   S("First Snow"),   nil },
    { "05-winter-blues", S("Winter Blues"), nil },
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
