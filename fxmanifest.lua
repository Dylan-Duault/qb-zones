fx_version 'cerulean'
game 'gta5'

description 'QB-Zones'
version '1.0.0'

shared_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'shared/config.lua'
}

client_scripts {
    'client/main.lua'
}

lua54 'yes'