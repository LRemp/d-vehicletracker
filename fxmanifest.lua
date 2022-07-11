fx_version 'cerulean'
games 'gta5'

author 'L_Remp'
description 'Basic vehicle tracker'
version '1.0.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
	'locales/en.lua',
    'config.lua'
}

client_scripts {
    'client/main.lua'
}

server_script {
    'client/main.lua'
}

lua54 'yes'