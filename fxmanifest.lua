fx_version 'cerulean'
game 'gta5'

author 'null'
description ''
version '1.0.0'

lua54 'yes'

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/style.css',
    'ui/script.js'
}

client_script 'client/cl_main.lua'

server_scripts {
    'server/sv_main.lua',
    'server/version_check.lua'
}

shared_scripts {
    'config.lua',
    'locales/*.lua'
}

dependencies {
    'qb-core'
}

escrow_ignore {
    'config.lua',
    'locales/*.lua'
}
