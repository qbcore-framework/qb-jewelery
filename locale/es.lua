local Translations = {
    error = {
        fingerprints = '¡Has dejado una huella en el cristal!',
        minimum_police = '¡Se necesita un mínimo de %{value} policías!',
        wrong_weapon = '¡Tu arma no es lo suficientemente fuerte!',
        to_much = '¡Tienes demasiado en el bolsillo!',
        player_banned = 'Jugador baneado',
        banned_for_exploiting = 'Has sido baneado permanentemente de este servidor por: Abusando funcionalidades',
        trigger_exploitable_event = "Intentando activar un evento con abuso de funcionalidad \"qb-jewellery:server:vitrineReward\"",
        exploiting = "Abusando funcionalidades",
        getting_flagged = "Has sido marcado por intentar abusar de funcionalidad del evento \"qb-jewellery:server:vitrineReward\""
    },
    success = {},
    info = {
        blip_name = 'Joyería Vangelico',
        progressbar = 'Rompiendo vitrina...',
        suspicious_activity = 'Actividad sospechosa',
        robbery_progress = 'Robo en progreso'    
    },
    general = {
        target_label = 'Rompe la vitrina',
        drawtextui_grab = '[E] - Romper vitrina',
        drawtextui_broken = 'La vitrina ya está rota'
    }
}

if GetConvar('qb_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
