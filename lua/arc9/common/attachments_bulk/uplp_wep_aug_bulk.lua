local ATT = {}

local iconfolder = "entities/uplp_attachements/aug/"
local iconfolderar = "entities/uplp_attachements/ar15/"
local iconfolderak = "entities/uplp_attachements/ak/"
local iconfolderax = "entities/uplp_attachements/awp/"

-------------------- TOP RAIL
---------- uplp_aug_top_scope

ATT = {}

ATT.PrintName = "AW-UG Scope"
ATT.CompactName = "Scope"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "scope.png", "mips smooth")

ATT.Category = "uplp_aug_scope"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_aug_top_scope", "uplp_optic_used"}

ATT.Model = "models/weapons/arc9/uplp/optic_aug_lense.mdl"
ATT.FoldSights = true

-- mid range magnified copy+pasted from optic bulk
local sway_mid = 2
local stats_mid = {
    -- SwayAddSights = 1,
    SpeedAddSights = -0.2,
    AimDownSightsTimeAdd = 0.05,

    CustomCons = { [ARC9:GetPhrase("uplp_stat_scopedsway")] = sway_mid },
}

ATT.Sights = {
    {
        Pos = Vector(-0.01, 9, 0.2825),
        Ang = Angle(0, -0, 0),
        Magnification = 1.25,
        ViewModelFOV = 30,
        RTScopeFOV = 57 / 3,

        SwayAddSights = sway_mid,
    },
}

ATT.ActivePosHook = function(swep, pos)
    return pos - Vector(0, 0, 0.5)
end

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 57 / 4
ATT.RTScopeReticle = Material("vgui/uplp_reticles/aug.png", "mips smooth")
ATT.RTScopeReticleScale = 1.1
ATT.RTScopeColorable = false 
ATT.RTScopeShadowIntensity = 10
ATT.RTScopeBlackBox = true
ATT.RTScopeBlackBoxShadow = true

ATT.ScopeScreenRatio = 0.66
ATT.ModelOffset = Vector(1.45, 0, 1.55)

table.Merge(ATT, stats_mid)

ARC9.LoadAttachment(ATT, "uplp_aug_top_scope")

-------------------- BOTTOM RAIL
---------- uplp_aug_bot_alt

ATT = {}

ATT.PrintName = "Tri-rail Underbarrel Mount"
ATT.CompactName = "Tri-Rail"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "altrail.png", "mips smooth")

ATT.Category = "uplp_aug_grip"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_aug_bot_alt"}

ARC9.LoadAttachment(ATT, "uplp_aug_bot_alt")

-------------------- BARRELS
---------- uplp_aug_brl_mg

ATT = {}

ATT.PrintName = "900mm HBAR Barrel"
ATT.CompactName = "900mm"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "hbar.png", "mips smooth")

ATT.Category = "uplp_aug_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Bipod = true

ATT.ActivateElements = {"uplp_aug_brl_mg"}

ATT.CustomizePos = Vector(13, 30, 4)

-- Positives
ATT.SpreadAdd = -0.006
ATT.RangeMaxAdd = 120 / ARC9.HUToM
ATT.RangeMinAdd = 40 / ARC9.HUToM
ATT.PhysBulletMuzzleVelocityMult = 1.5
ATT.RecoilPerShot = 1 / 18
ATT.RecoilMult = 0.7

-- Negatives
ATT.SpreadAddHipFire = 0.006 + 0.01
ATT.SpreadAddRecoil = 0.006 * 0.25
ATT.AimDownSightsTimeAdd = 0.04*2
ATT.SprintToFireTimeAdd = 0.05*2
ATT.SpeedMultSights = 0.8
ATT.BarrelLengthAdd = 7

ARC9.LoadAttachment(ATT, "uplp_aug_brl_mg")

---------- uplp_aug_brl_smg

ATT = {}

ATT.PrintName = "508mm Para Barrel"
ATT.CompactName = "508mm"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "short.png", "mips smooth")

ATT.Category = "uplp_aug_barrel"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_aug_brl_smg"}

ATT.CustomizePos = Vector(9, 28, 4)

-- Positives
ATT.SpreadAddHipFire = -0.005 - 0.01
ATT.SpreadAddRecoil = -0.005
ATT.AimDownSightsTimeAdd = -0.04
ATT.SprintToFireTimeAdd = -0.05
ATT.SpeedMultSights = 1.12
ATT.BarrelLengthAdd = -10

-- Negatives
ATT.RecoilMult = 1.25
ATT.SpreadAdd = 0.005
ATT.RangeMaxMult = 0.85
ATT.SweetSpotDamageMult = 0.76
ATT.SweetSpotPeakMult = 0.25
ATT.SweetSpotWidthMult = 0.5
ATT.RangeMinAdd = -4 / ARC9.HUToM
ATT.PhysBulletMuzzleVelocityMult = 0.8
ATT.RecoilPerShot = 1 / 6

ARC9.LoadAttachment(ATT, "uplp_aug_brl_smg")

-------------------- MAGAZINES
---------- uplp_aug_mag_556_30p

ATT = {}

ATT.PrintName = "30-Round 5.56x45mm (Plastic)"
ATT.CompactName = "30R 5.56 (P)"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "30p.png", "mips smooth")

ATT.DropMagazineModel = "models/weapons/arc9/uplp/aug_mag_556_30_pmag.mdl"

ATT.Category = "uplp_aug_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

local pathUT = "uplp_urban_temp/ar15/"

ATT.HookP_TranslateSound = function(self, data) -- that is metal mag
    if data.sound == pathUT .. "magout.ogg" then
        data.sound = pathUT .. "pmagout.ogg"
    elseif data.sound == pathUT .. "magin.ogg" then
        data.sound = pathUT .. "pmagin.ogg"
    end
    return data
end

ATT.ActivateElements = {"uplp_aug_mag_556_30p"}

ARC9.LoadAttachment(ATT, "uplp_aug_mag_556_30p")

---------- uplp_aug_mag_556_40

ATT = {}

ATT.PrintName = "40-Round 5.56x45mm"
ATT.CompactName = "40R 5.56"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "40.png", "mips smooth")

ATT.DropMagazineModel = "models/weapons/arc9/uplp/aug_mag_556_40.mdl"

ATT.Category = "uplp_aug_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_aug_mag_556_40"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_40"
end

ATT.ClipSizeOverride = 40

-- Negatives
ATT.SpreadAddHipFire = 0.005
ATT.AimDownSightsTimeAdd = 0.03
ATT.SprintToFireTimeAdd = 0.02
ATT.DeployTimeMult = 1.15
ATT.SwayMultSights = 1.1
ATT.SpeedMultSights = 0.9
ATT.ReloadTimeMult = 1.05

ARC9.LoadAttachment(ATT, "uplp_aug_mag_556_40")

---------- uplp_aug_mag_556_52

ATT = {}

ATT.PrintName = "52-Round 5.56x45mm Drum"
ATT.CompactName = "52R 5.56"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "60.png", "mips smooth")

ATT.DropMagazineModel = "models/weapons/arc9/uplp/aug_mag_556_60.mdl"
ATT.DropMagazineTime = 0.65
ATT.DropMagazineQCA = 4
ATT.DropMagazineVelocity = Vector(0, -10, -5)

ATT.Category = "uplp_aug_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_aug_mag_556_52"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_52"
end

-- Positives
ATT.ClipSizeOverride = 52

-- Negatives
ATT.SpreadAddHipFire = 0.03
ATT.AimDownSightsTimeAdd = 0.07
ATT.SprintToFireTimeAdd = 0.09
ATT.DeployTimeMult = 1.5
ATT.SwayAddSights = 0.3
ATT.SwayMultSights = 1.4
ATT.SpeedAdd = -0.05
ATT.SpeedMultSights = 0.65

ARC9.LoadAttachment(ATT, "uplp_aug_mag_556_52")

---------- uplp_aug_mag_919_25

local pathUT = "uplp_urban_temp/ar15/"
local pathUTC = "uplp_urban_temp/common/"

local shoot9 = {
    pathUT .. "9mm/fire_9.ogg",
}

local shoot9sil = {
    pathUT .. "9mm/fire-sup-01.ogg",
    pathUT .. "9mm/fire-sup-02.ogg",
    pathUT .. "9mm/fire-sup-03.ogg",
    pathUT .. "9mm/fire-sup-04.ogg",
    pathUT .. "9mm/fire-sup-05.ogg",
    pathUT .. "9mm/fire-sup-06.ogg",
}

local shoot9dist = {
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-ext-01.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-ext-02.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-ext-03.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-ext-04.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-ext-05.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-ext-06.ogg",
}

local shoot9distindoor = {
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-01.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-02.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-03.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-04.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-05.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-06.ogg",
}

local dropsound9 = {
    pathUTC .. "pistol_magdrop.ogg",
    pathUTC .. "magdrop_smg.ogg",
    pathUTC .. "smg_pistol_magdrop_1.ogg",
    pathUTC .. "smg_pistol_magdrop_2.ogg",
    pathUTC .. "smg_pistol_magdrop_3.ogg",
    pathUTC .. "smg_pistol_magdrop_4.ogg",
}

local stat9 = {
    SpreadAdd = 0.0015,
    RPMAdd = -20,
    RecoilAdd = -0.4,
    DamageMinAdd = -4,
    RangeMaxMult = 0.75,
    RangeMinMult = 0.25,
    PhysBulletMuzzleVelocity = 370 / ARC9.HUToM,
}

ATT = {}

ATT.PrintName = "25-Round 9x19mm"
ATT.CompactName = "25R 9x19"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "925.png", "mips smooth")

ATT.DropMagazineModel = "models/weapons/arc9/uplp/aug_mag_919_25.mdl"
ATT.DropMagazineTime = 0.6

ATT.Category = "uplp_aug_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_aug_mag_919_25", "uplp_aug_smg"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_9_25"
end

ATT.ShootSound = shoot9
ATT.ShootSoundSilenced = shoot9sil

ATT.DistantShootSound = shoot9dist
ATT.DistantShootSoundIndoor = shoot9distindoor

ATT.DropMagazineSounds = dropsound9

ATT.Ammo = "pistol"

table.Merge(ATT, stat9)

ATT.AimDownSightsTimeAdd = -0.02
ATT.SprintToFireTimeAdd = -0.02

ATT.SpreadAddHipFire = -0.006

ATT.CustomPros = {
    [	ARC9:GetPhrase("autostat.reloadtime")	] = "+5%",
    [	ARC9:GetPhrase("customize.stats.ammo")	] = ARC9:GetPhrase("ammo.pistol"),
}

ATT.ClipSizeOverride = 25

ARC9.LoadAttachment(ATT, "uplp_aug_mag_919_25")

---------- uplp_aug_mag_919_40

ATT = {}

ATT.PrintName = "40-Round 9x19mm"
ATT.CompactName = "25R 9x19"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "940.png", "mips smooth")

ATT.DropMagazineModel = "models/weapons/arc9/uplp/aug_mag_919_40.mdl"

ATT.Category = "uplp_aug_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_aug_mag_919_40", "uplp_aug_smg"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_9_40"
end

ATT.ShootSound = shoot9
ATT.ShootSoundSilenced = shoot9sil

ATT.DistantShootSound = shoot9dist
ATT.DistantShootSoundIndoor = shoot9distindoor

ATT.DropMagazineSounds = dropsound9

ATT.Ammo = "pistol"

table.Merge(ATT, stat9)

ATT.AimDownSightsTimeAdd = -0.02
ATT.SprintToFireTimeAdd = -0.02

ATT.SpreadAddHipFire = -0.006

ATT.CustomPros = {
    -- [	ARC9:GetPhrase("autostat.reloadtime")	] = "+5%",
    [	ARC9:GetPhrase("customize.stats.ammo")	] = ARC9:GetPhrase("ammo.pistol"),
}

ATT.ClipSizeOverride = 40

ARC9.LoadAttachment(ATT, "uplp_aug_mag_919_40")

---------- uplp_aug_mag_300_10

ATT = {}

ATT.PrintName = "10-Round .300 SP"
ATT.CompactName = "10R .300"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "10.png", "mips smooth")

ATT.DropMagazineModel = "models/weapons/arc9/uplp/aug_mag_300blk_10.mdl"

ATT.Category = "uplp_aug_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_aug_mag_300_10"}

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_10"
end

ATT.Firemodes = {
    { Mode = 1, -- Semi
    PoseParam = 2 }
}

-- Mag
ATT.AimDownSightsTimeAdd = -0.03
ATT.SprintToFireTimeAdd = -0.02
ATT.SwayMultSights = 0.9
ATT.SpeedMultSights = 1.1
ATT.Ammo = "ar2"
-- Positives
ATT.PhysBulletMuzzleVelocityMult = 1.15
ATT.DamageMaxAdd = -1 -- from 40
ATT.DamageMinAdd = 10 -- from 28
ATT.RangeMaxAdd = 10 / ARC9.HUToM -- f

ATT.SweetSpot = true
ATT.SweetSpotDamage = 50
ATT.SweetSpotRange = 50 / ARC9.HUToM
ATT.SweetSpotWidth = 30 / ARC9.HUToM
ATT.SweetSpotPeak = 10 / ARC9.HUToM

ATT.CustomPros = {
    [ARC9:GetPhrase("autostat.reloadtime")] = "-10%",
}

-- Negatives
ATT.RPMMult = 0.75
ATT.RecoilUpAdd = 0.6
ATT.RecoilSideAdd = 1.5
ATT.ClipSizeOverride = 10

ARC9.LoadAttachment(ATT, "uplp_aug_mag_300_10")

-------------------- STOCKS
---------- uplp_aug_stock_white

ATT = {}

ATT.PrintName = "White Stock"
ATT.CompactName = "White"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "whit.png", "mips smooth")

ATT.Category = "uplp_aug_stock"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_aug_stock_white"}

ARC9.LoadAttachment(ATT, "uplp_aug_stock_white")

---------- uplp_aug_stock_tan

ATT = {}

ATT.PrintName = "Tan Stock"
ATT.CompactName = "Tan"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "tan.png", "mips smooth")

ATT.Category = "uplp_aug_stock"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_aug_stock_tan"}

ARC9.LoadAttachment(ATT, "uplp_aug_stock_tan")

---------- uplp_aug_stock_black

ATT = {}

ATT.PrintName = "Black Stock"
ATT.CompactName = "Black"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "blk.png", "mips smooth")

ATT.Category = "uplp_aug_stock"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.ActivateElements = {"uplp_aug_stock_black"}

ARC9.LoadAttachment(ATT, "uplp_aug_stock_black")