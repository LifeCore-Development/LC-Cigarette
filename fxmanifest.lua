name "LC-Cigarette"
author "LifeCore"
description "Smoke Cigs to Reduce Stress"
fx_version "cerulean"
game "gta5"
lua54 'yes'

shared_scripts {
    'config.lua'
}

client_scripts {
    'client/client.lua',
    'client/menus.lua'
}

server_script {
    'server/server.lua',
	'server/UsableItems.lua'
}