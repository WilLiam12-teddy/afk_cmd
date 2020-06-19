minetest.register_chatcommand("afk", {
    description = "Tell everyone you are afk.",
	privs = {interact=true},
    func = function ( name, param )
        local player = minetest.get_player_by_name(name)
        minetest.chat_send_all(name.." is AFK! "..param)
        return true
    end,
})