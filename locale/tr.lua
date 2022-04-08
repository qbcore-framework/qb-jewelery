local Translations = {
    error = {
        fingerprints = 'Camda parmak izi bıraktın',
        minimum_police = 'En az %{value} polis gerekli',
        wrong_weapon = 'Silahın yeterince güçlü değil..',
        to_much = 'Cebinde çok şey var'
    },
    success = {},
    info = {
        progressbar = 'Vitrin parçalanıyor',
    },
    general = {
        target_label = 'Vitrini Kır',
        drawtextui_grab = '[E] Vitrini Kır',
        drawtextui_broken = 'Vitrin Kırılmış'
    }
}

Lang = Locale:new({phrases = Translations})
