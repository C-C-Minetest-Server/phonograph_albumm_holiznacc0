-- phonograph_album_holiznacc0/init.lua
-- Songs by HoliznaCC0
-- SPDX-License-Identifier: LGPL-2.1-or-later

assert(phonograph.send_song,
    "Please upgrade your Phonograph mod to commit f689f79 or later.")

local MP = minetest.get_modpath("phonograph_album_holiznacc0")

dofile(MP .. "/src/001-background-music.lua")
dofile(MP .. "/src/002-winter-lofi.lua")
