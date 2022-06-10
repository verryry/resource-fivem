fx_version 'cerulean'
game 'gta5'

version '1.0.0'

server_scripts {
	'oxmysql/lib/MySQL.lua',
	'server/main.lua',
	'locales/en.lua',
	'locales/es.lua',
	'locales/fr.lua'
}

client_scripts {
	'client/main.lua',
	'locales/en.lua',
	'locales/es.lua',
	'locales/fr.lua'
}

shared_scripts {
	'@qb-core/shared/locale.lua',
	'config.lua',
}

lua54 'yes'
