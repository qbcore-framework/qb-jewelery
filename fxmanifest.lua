fx_version 'cerulean'
game 'gta5'

description 'QB-Jewelry'
version '1.0.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locale/en.lua', -- replace with desired language
    'config.lua'
}

client_script {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    'client/main.lua'
}
server_script 'server/main.lua'

lua54 'yes'
