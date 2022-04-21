local Translations = {
    error = {
        fingerprints = '您在玻璃上留下了指紋',
        minimum_police = '至少需要 %{value} 名值勤員警',
        wrong_weapon = '您的武器不夠強韌..',
        to_much = '您身上裝不下更多東西了'
    },
    success = {},
    info = {
        progressbar = '正在砸展示櫃',
        blipname = '凡潔莉寇珠寶',
    },
    general = {
        target_label = '將展示櫃砸碎',
        drawtextui_grab = '[E] 將展示櫃砸碎',
        drawtextui_broken = '展示櫃已被砸碎'
    }
}

Lang = Locale:new({phrases = Translations})
