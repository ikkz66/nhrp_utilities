fx_version 'cerulean'
game 'gta5'




   files {
  'audio/sfx/resident/explosions.awc',
  'audio/sfx/resident/weapons.awc',
  'audio/sfx/resident/vehicles.awc',
  'audio/sfx/weapons_player/lmg_combat.awc',
  'audio/sfx/weapons_player/lmg_mg_player.awc',
  'audio/sfx/weapons_player/mgn_sml_am83_vera.awc',
  'audio/sfx/weapons_player/mgn_sml_am83_verb.awc',
  'audio/sfx/weapons_player/mgn_sml_sc__l.awc',
  'audio/sfx/weapons_player/ptl_50cal.awc',
  'audio/sfx/weapons_player/ptl_combat.awc',
  'audio/sfx/weapons_player/ptl_pistol.awc',
  'audio/sfx/weapons_player/ptl_px4.awc',
  'audio/sfx/weapons_player/ptl_rubber.awc',
  'audio/sfx/weapons_player/sht_bullpup.awc',
  'audio/sfx/weapons_player/sht_pump.awc',
  'audio/sfx/weapons_player/smg_micro.awc',
  'audio/sfx/weapons_player/smg_smg.awc',
  'audio/sfx/weapons_player/snp_heavy.awc',
  'audio/sfx/weapons_player/snp_rifle.awc',
  'audio/sfx/weapons_player/spl_grenade_player.awc',
  'audio/sfx/weapons_player/spl_minigun_player.awc',
  'audio/sfx/weapons_player/spl_prog_ar_player.awc',
  'audio/sfx/weapons_player/spl_railgun.awc',
  'audio/sfx/weapons_player/spl_rpg_player.awc',
  'audio/sfx/weapons_player/spl_tank_player.awc',
}

data_file 'AUDIO_WAVEPACK' 'audio/sfx/resident'
data_file 'AUDIO_WAVEPACK' 'audio/sfx/weapons_player'     

files {
	'visualsettings.dat'
}

lua54 'on'
-- is_cfxv2 'yes'
-- use_fxv2_oal 'true'

ui_page {
    'html/index.html',
}

client_scripts {
	'config.lua',
	"client.lua"
}

files {
	'html/index.html',
	'html/*.js',
	'html/css/*.css',
}

client_script 'nhrp.lua'
server_script 'svreport.lua'







