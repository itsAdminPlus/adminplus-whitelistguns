fx_version 'adamant'
game 'gta5'
lua54 'yes'

author 'AdminPlus'
description 'AdminPlus Whitelisted Job Guns'

client_scripts {
    'client/*',
}

shared_scripts {
	'@ox_lib/init.lua',
	'@es_extended/imports.lua'
}

server_scripts {
	'server/*',
}

dependencies {
	'es_extended'
}
