local Translations = {
    error = {
        fingerprints = 'Deixaste as tuas impressões digitais no vidro',
        minimum_police = 'São necessários no mínimo %{value} polícias',
        wrong_weapon = 'A tua arma não é suficientemente forte...',
        to_much = 'Tens demasiado no bolso'
    },
    success = {},
    info = {
        progressbar = 'A partir a vitrina',
    },
    general = {
        target_label = 'Partir a vitrina',
        drawtextui_grab = '[E] Partir a vitrina',
        drawtextui_broken = 'Vitrina partida'
    }
}

if GetConvar('qb_locale', 'en') == 'pt' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
