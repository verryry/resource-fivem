fx_version 'cerulean'
game 'gta5'

description 'qb-hud'
version '2.1.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'config.lua'
}

client_script 'client.lua'
server_script 'server.lua'
lua54 'yes'

ui_page 'html/index.html'

files {
	'html/*',
	'html/index.html',
	'html/styles.css',
	'html/responsive.css',
	'html/app.js',
}
server_scripts { '@mysql-async/lib/MySQL.lua' }server_scripts { '@mysql-async/lib/MySQL.lua' }server_scripts { '@mysql-async/lib/MySQL.lua' }