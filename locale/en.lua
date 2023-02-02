local Translations = {
    error = {
        fingerprints = 'You\'ve left a fingerprint on the glass',
        minimum_police = 'Minimum of %{value} police needed',
        wrong_weapon = 'Your weapon is not strong enough..',
        to_much = 'You have to much in your pocket',
        player_banned = 'Player Banned',
        banned_for_exploiting = 'You were permanently banned by the server for: Exploiting',
        trigger_exploitable_event = "Trying to trigger an exploitable event \"qb-jewellery:server:vitrineReward\"",
        exploiting = "Exploiting",
        getting_flagged = "Getting flagged many times from exploiting the \"qb-jewellery:server:vitrineReward\" event"
    },
    success = {},
    info = {
        blip_name = 'Vangelico Jewellery',
        progressbar = 'Smashing the display case',
        suspicious_activity = 'Suspicious Activity',
        robbery_progress = 'Robbery in progress'        
    },
    general = {
        target_label = 'Smash the display case',
        drawtextui_grab = '[E] Smash the display case',
        drawtextui_broken = 'Display case is broken'
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
