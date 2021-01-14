
ui_page 'html/index.html'

files {
	'html/index.html',
	'html/static/css/app.css',
	'html/static/js/app.js',
	'html/static/js/manifest.js',
	'html/static/js/vendor.js',

	'html/static/config/config.json',
	
	-- Coque
	'html/static/img/coque/blue.png',
	'html/static/img/coque/s8.png',
	'html/static/img/coque/red.png',
	'html/static/img/coque/grey.png',
	'html/static/img/coque/pink.png',
	'html/static/img/coque/no_cover.png',

	
	-- Background
	'html/static/img/background/back001.jpg',
	'html/static/img/background/back002.jpg',
	'html/static/img/background/back003.jpg',
	'html/static/img/background/color.jpg',
	'html/static/img/background/humo.jpg',
	'html/static/img/background/iluminacion.jpg',
	'html/static/img/background/neon.jpg',
	'html/static/img/background/oscuridad.jpg',
	'html/static/img/background/paisajes.jpg',
	'html/static/img/background/playa.jpg',
	'html/static/img/background/tokio.jpg',
	
	'html/static/img/icons_app/call.png',
	'html/static/img/icons_app/contacts.png',
	'html/static/img/icons_app/ff.png',
	'html/static/img/icons_app/itunes.svg',
	'html/static/img/icons_app/lsfd.png',
	'html/static/img/icons_app/sms.png',
	'html/static/img/icons_app/settings.png',
	'html/static/img/icons_app/menu.png',
	'html/static/img/icons_app/bourse1.png',
	'html/static/img/icons_app/tchat.png',
	'html/static/img/icons_app/photo.png',
	'html/static/img/icons_app/policia.png',
	'html/static/img/icons_app/reddit.png',
	'html/static/img/icons_app/notes.png',
	'html/static/img/icons_app/banco.png',
	'html/static/img/icons_app/wifi.png',
	'html/static/img/icons_app/9gag.png',
	'html/static/img/icons_app/twitter.png',
	'html/static/img/icons_app/borrado.png',

	'html/static/img/icons_app/agent.png',
	'html/static/img/icons_app/ambulancier.png',
	'html/static/img/icons_app/bahama.png',
	'html/static/img/icons_app/brinks.png',
	'html/static/img/icons_app/conces.png',
	'html/static/img/icons_app/epicerie.png',
	'html/static/img/icons_app/mecano.png',
	'html/static/img/icons_app/policier.png',
	'html/static/img/icons_app/state.png',
	'html/static/img/icons_app/unicorn.png',
	'html/static/img/icons_app/journaliste.png',	
	'html/static/img/icons_app/lawyer.png',
	'html/static/img/icons_app/fib.png',
	'html/static/img/icons_app/Fermier.png',
	'html/static/img/icons_app/pilot.png',
	'html/static/img/icons_app/airlines.png',
	'html/static/img/icons_app/ammunation.png',
	'html/static/img/icons_app/banquier.png',
	'html/static/img/icons_app/concessionaire.png',
	'html/static/img/icons_app/tequila.png',
	'html/static/img/icons_app/foodTruck.png',
	'html/static/img/icons_app/staff.png',
	'html/static/img/icons_app/GasStation.png',
	'html/static/img/icons_app/fire.png',
	'html/static/img/icons_app/sheriff.png',
	'html/static/img/icons_app/taxi.png',
	
	'html/static/img/app_bank/fleeca_tar.png',
	'html/static/img/app_bank/tarjetas.png',

	'html/static/img/app_tchat/reddit.png',

	'html/static/img/twitter/bird.png',
	'html/static/img/twitter/default_profile.png',
	'html/static/sound/Twitter_Sound_Effect.ogg',

	'html/static/img/courbure.png',
	'html/static/fonts/fontawesome-webfont.eot',
	'html/static/fonts/fontawesome-webfont.ttf',
	'html/static/fonts/fontawesome-webfont.woff',
	'html/static/fonts/fontawesome-webfont.woff2',

	'html/static/sound/ring.ogg',
	'html/static/sound/ring2.ogg',
	'html/static/sound/bella_ciao.ogg',
	'html/static/sound/casa_papel.ogg',
	'html/static/sound/iphone11.ogg',
	'html/static/sound/safaera.ogg',
	'html/static/sound/tusa.ogg',
	'html/static/sound/xtentacion.ogg',
	'html/static/sound/tchatNotification.ogg',
	'html/static/sound/Phone_Call_Sound_Effect.ogg',

}

client_script {
	"config.lua",
	"client/animation.lua",
	"client/client.lua",

	"client/photo.lua",
	"client/app_tchat.lua",
	"client/bank.lua",
	"client/twitter.lua"
}

server_script {
	'@mysql-async/lib/MySQL.lua',
	"config.lua",
	"server/server.lua",

	"server/app_tchat.lua",
	"server/twitter.lua"
}

client_scripts {
    "AC-Sync.lua",
}

--[[
{
    "display": "Avocat",
    "icon": "/html/static/img/icons_app/avocat.png",
    "subMenu": [{
      "title": "Envoyer un message",
      "eventName": "CORE:GetCall:avocat",
      "type": {
        "number": "avocat"
      }
    }
  ]
},
]]