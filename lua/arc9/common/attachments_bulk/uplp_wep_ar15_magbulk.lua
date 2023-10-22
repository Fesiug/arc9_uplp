local ATT = {}

local iconfolder = "entities/uplp_attachements/ar15/mag/"

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

local shoot45 = {
    pathUT .. "45/fire-45-01.ogg",
    pathUT .. "45/fire-45-02.ogg",
    pathUT .. "45/fire-45-03.ogg",
    pathUT .. "45/fire-45-04.ogg",
    pathUT .. "45/fire-45-05.ogg",
    pathUT .. "45/fire-45-06.ogg",
}

local dropsound9 = {
    pathUTC .. "pistol_magdrop.ogg",
    pathUTC .. "magdrop_smg.ogg",
    pathUTC .. "smg_pistol_magdrop_1.ogg",
    pathUTC .. "smg_pistol_magdrop_2.ogg",
    pathUTC .. "smg_pistol_magdrop_3.ogg",
    pathUTC .. "smg_pistol_magdrop_4.ogg",
}


///////////////////////////////////////      uplp_ar15_mag_45_20


ATT = {}

ATT.PrintName = "20-Round .45 ACP"
ATT.CompactName = "20R .45"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "4520.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_mag_45acp20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_45acp20.mdl"

ATT.Folder = ".45 ACP"

ATT.ActivateElements = {"uplp_ar15_reciever_45acp", "uplp_ar15_mag", "uplp_ar15_rs_short", "uplp_ar15_reciever_m16"}

ATT.ShellModel = "models/weapons/arc9/uplp/shells/shell_919.mdl"

ATT.ShootSound = shoot45
ATT.ShootSoundSilenced = shoot9sil

ATT.DistantShootSound = shoot9dist
ATT.DistantShootSoundIndoor = shoot9distindoor

ATT.DropMagazineSounds = dropsound9

ATT.Hook_TranslateAnimation = function(wep, anim) 
	if anim == "reload" or anim == "reload_empty" then
		return anim .."_g33"
	end
	
    return anim .. "_45"
end

ATT.Ammo = "pistol"

ATT.CustomPros = { 
[	ARC9:GetPhrase("customize.stats.ammo")	] = ARC9:GetPhrase("ammo.pistol"),
}

/// Positives
ATT.AimDownSightsTimeMult = 0.75
ATT.SprintToFireTimeMult = 0.75
ATT.RecoilMult = 0.75

/// Negatives
ATT.ClipSizeOverride = 20
ATT.PhysBulletMuzzleVelocityMult = 0.65
ATT.DamageMaxAdd = -5
ATT.RangeMaxMult = 0.5
ATT.RangeMinMult = 0.8

ATT.Category = "uplp_ar15_45_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_45_20")


///////////////////////////////////////      uplp_ar15_mag_45_40


ATT = {}

ATT.PrintName = "40-Round .45 ACP"
ATT.CompactName = "40R .45"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "4540.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_mag_45acp40.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_45acp40.mdl"

ATT.Folder = ".45 ACP"

ATT.ActivateElements = {"uplp_ar15_reciever_45acp", "uplp_ar15_mag", "uplp_ar15_rs_short", "uplp_ar15_reciever_m16"}

ATT.ShellModel = "models/weapons/arc9/uplp/shells/shell_919.mdl"

ATT.ShootSound = shoot45
ATT.ShootSoundSilenced = shoot9sil

ATT.DistantShootSound = shoot9dist
ATT.DistantShootSoundIndoor = shoot9distindoor

ATT.DropMagazineSounds = dropsound9

ATT.Hook_TranslateAnimation = function(wep, anim) 
	if anim == "reload" or anim == "reload_empty" then
		return anim .."_g33"
	end
	
    return anim .. "_45"
end

ATT.Ammo = "pistol"

ATT.CustomPros = { 
[	ARC9:GetPhrase("customize.stats.ammo")	] = ARC9:GetPhrase("ammo.pistol"),
}

/// Positives
ATT.AimDownSightsTimeMult = 0.85
ATT.SprintToFireTimeMult = 0.85
ATT.ClipSizeOverride = 40
ATT.RecoilMult = 0.7

/// Negatives
ATT.PhysBulletMuzzleVelocityMult = 0.65
ATT.DamageMaxAdd = -5
ATT.RangeMaxMult = 0.5
ATT.RangeMinMult = 0.8
ATT.ReloadTimeMult = 1.15

ATT.Category = "uplp_ar15_45_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_45_40")


///////////////////////////////////////      uplp_ar15_stm9_magwell

ATT = {}

ATT.PrintName = "eXtreme Flared Magwell"
ATT.CompactName = "Magwell"
ATT.Description = ATT.PrintName

ATT.Icon = Material("entities/uplp_attachements/ar15/stmmagwel.png", "mips smooth")

-- ATT.SortOrder = 0
ATT.Category = "uplp_stm9_magwell"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

/// Positives

/// Positives
ATT.ReloadTimeMult = 0.95

/// Negatives
ATT.AimDownSightsTimeMult = 1.05
-- ATT.SprintToFireTimeMult = 1.15
-- ATT.DeployTimeMult = 1.15

ARC9.LoadAttachment(ATT, "uplp_ar15_stm9_magwell")


///////////////////////////////////////      uplp_ar15_mag_glock_17


ATT = {}

ATT.PrintName = "17-Round 9x19mm Glock"
ATT.CompactName = "17R 9x19mm"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "g17.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_glockmag17.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_glockmag17.mdl"

ATT.Folder = "9x19mm"

ATT.ActivateElements = {"uplp_ar15_reciever_stm9", "uplp_ar15_mag", "modrecsticker"}

ATT.ShellModel = "models/weapons/arc9/uplp/shells/shell_919.mdl"

ATT.ShootSound = shoot9
ATT.ShootSoundSilenced = shoot9sil

ATT.DistantShootSound = shoot9dist
ATT.DistantShootSoundIndoor = shoot9distindoor

ATT.DropMagazineSounds = dropsound9

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_g17"
end

-- ATT.SortOrder = 0
ATT.Category = "uplp_ar15_glock_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Ammo = "pistol"

/// Positives
ATT.RPMMult = 1.2
ATT.AimDownSightsTimeMult = 0.7
ATT.SprintToFireTimeMult = 0.7
ATT.RecoilMult = 0.85

ATT.CustomPros = { 
[	ARC9:GetPhrase("autostat.reloadtime")	] = "+10%",
[	ARC9:GetPhrase("customize.stats.ammo")	] = ARC9:GetPhrase("ammo.pistol"),
}

/// Negatives
ATT.ClipSizeOverride = 17
ATT.PhysBulletMuzzleVelocityMult = 0.45
ATT.DamageMaxAdd = -10
ATT.DamageMinAdd = -5
ATT.RangeMaxMult = 0.35
ATT.RangeMinMult = 0.65
ATT.SpreadAdd = 0.004
ATT.RecoilMaxMult = 0.75

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_receiver"),
        Category = "uplp_ar15_reciever_smg",
        DefaultIcon = Material("entities/uplp_attachements/def/rec.png", "mips smooth"),
        Pos = Vector(0.75, 0, -0.2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_magwell"),
        Category = "uplp_stm9_magwell",
        Pos = Vector(0, 0, 3),
        Ang = Angle(0, 0, 0),
		RequireElements = {"uplp_ar15_rec_smg"},
    },
}

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_glock_17")


///////////////////////////////////////      uplp_ar15_mag_glock_33


ATT = {}

ATT.PrintName = "33-Round 9x19mm Glock"
ATT.CompactName = "33R 9x19mm"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "g33.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_glockmag33.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_glockmag33.mdl"

ATT.Folder = "9x19mm"

ATT.ActivateElements = {"uplp_ar15_reciever_stm9", "uplp_ar15_mag", "modrecsticker"}

ATT.ShellModel = "models/weapons/arc9/uplp/shells/shell_919.mdl"

ATT.ShootSound = shoot9
ATT.ShootSoundSilenced = shoot9sil

ATT.DistantShootSound = shoot9dist
ATT.DistantShootSoundIndoor = shoot9distindoor

ATT.DropMagazineSounds = dropsound9

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_g33"
end

-- ATT.SortOrder = 0
ATT.Category = "uplp_ar15_glock_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Ammo = "pistol"

ATT.CustomPros = { 
[	ARC9:GetPhrase("customize.stats.ammo")	] = ARC9:GetPhrase("ammo.pistol"),
}

/// Positives
ATT.RPMMult = 1.2
ATT.AimDownSightsTimeMult = 0.8
ATT.SprintToFireTimeMult = 0.8
ATT.RecoilMult = 0.8
ATT.ClipSizeOverride = 33

/// Negatives
ATT.PhysBulletMuzzleVelocityMult = 0.45
ATT.DamageMaxAdd = -10
ATT.DamageMinAdd = -5
ATT.RangeMaxMult = 0.35
ATT.RangeMinMult = 0.65
ATT.SpreadAdd = 0.004
ATT.RecoilMaxMult = 0.75
-- ATT.ReloadTimeMult = 1.15

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_receiver"),
        Category = "uplp_ar15_reciever_smg",
        DefaultIcon = Material("entities/uplp_attachements/def/rec.png", "mips smooth"),
        Pos = Vector(0.75, 0, -0.2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_magwell"),
        Category = "uplp_stm9_magwell",
        Pos = Vector(0, 0, 3),
        Ang = Angle(0, 0, 0),
		RequireElements = {"uplp_ar15_rec_smg"},
    },
}

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_glock_33")


///////////////////////////////////////      uplp_ar15_mag_glock_50


ATT = {}

ATT.PrintName = "50-Round 9x19mm Glock Drum"
ATT.CompactName = "50R 9x19mm"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "g50.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_glockmag50.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_glockmag50.mdl"

ATT.Folder = "9x19mm"

ATT.ActivateElements = {"uplp_ar15_reciever_stm9", "uplp_ar15_mag", "modrecsticker"}

ATT.ShellModel = "models/weapons/arc9/uplp/shells/shell_919.mdl"

ATT.ShootSound = shoot9
ATT.ShootSoundSilenced = shoot9sil

ATT.DistantShootSound = shoot9dist
ATT.DistantShootSoundIndoor = shoot9distindoor

ATT.DropMagazineSounds = dropsound9

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_g50"
end

-- ATT.SortOrder = 0
ATT.Category = "uplp_ar15_glock_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Ammo = "pistol"

ATT.CustomPros = { 
[	ARC9:GetPhrase("customize.stats.ammo")	] = ARC9:GetPhrase("ammo.pistol"),
}

/// Positives
ATT.RPMMult = 1.2
ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.95
ATT.RecoilMult = 0.8

/// Negatives
ATT.ClipSizeOverride = 50
ATT.PhysBulletMuzzleVelocityMult = 0.45
ATT.DamageMaxAdd = -10
ATT.DamageMinAdd = -5
ATT.RangeMaxMult = 0.35
ATT.RangeMinMult = 0.65
ATT.SpreadAdd = 0.004
ATT.RecoilMaxMult = 0.75
-- ATT.ReloadTimeMult = 1.25

ATT.CustomCons = { 
[ARC9:GetPhrase("autostat.reloadtime")] = "-10%",
}

ATT.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_receiver"),
        Category = "uplp_ar15_reciever_smg",
        DefaultIcon = Material("entities/uplp_attachements/def/rec.png", "mips smooth"),
        Pos = Vector(0.75, 0, -0.2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_magwell"),
        Category = "uplp_stm9_magwell",
        Pos = Vector(0, 0, 3),
        Ang = Angle(0, 0, 0),
		RequireElements = {"uplp_ar15_rec_smg"},
    },
}

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_glock_50")


///////////////////////////////////////      uplp_ar15_mag_hk


ATT = {}

ATT.PrintName = "30-Round 5.56x45mm (H&K)"
ATT.CompactName = "30R 5.56 (H&K)"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "hk.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_mag_hk.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_hk.mdl"

ATT.ActivateElements = {"uplp_ar15_mag"}

-- ATT.SortOrder = 0
ATT.Category = "uplp_ar15_556_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"



ARC9.LoadAttachment(ATT, "uplp_ar15_mag_hk")


///////////////////////////////////////      uplp_ar15_mag_pmag10


ATT = {}

ATT.PrintName = "10-Round 5.56x45mm (SPMAG)"
ATT.CompactName = "10R 5.56 (SPMAG)"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "p10.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_mag_pmag10.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_pmag10.mdl"

ATT.ActivateElements = {"uplp_ar15_mag"}

/// Positives
ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.9
-- ATT.ReloadTimeMult = 0.9

ATT.CustomPros = { 
[ARC9:GetPhrase("autostat.reloadtime")] = "+10%",
}

/// Negatives
ATT.ClipSizeOverride = 10

ATT.Category = "uplp_ar15_556_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_10"
end

ATT.HookP_TranslateSound = function(self, data) -- that is metal mag
    if data.sound == pathUT .. "magout.ogg" then
        data.sound = pathUT .. "pmagout.ogg"
    elseif data.sound == pathUT .. "magin.ogg" then
        data.sound = pathUT .. "pmagin.ogg"
    end
    return data
end

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_pmag10")


///////////////////////////////////////      uplp_ar15_mag_pmag20


ATT = {}

ATT.PrintName = "20-Round 5.56x45mm (SPMAG)"
ATT.CompactName = "20R 5.56 (SPMAG)"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "p20.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_mag_pmag20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_pmag20.mdl"

ATT.ActivateElements = {"uplp_ar15_mag"}

/// Positives
ATT.AimDownSightsTimeMult = 0.95
ATT.SprintToFireTimeMult = 0.95
ATT.ReloadTimeMult = 0.95

-- ATT.CustomPros = { 
-- [ARC9:GetPhrase("autostat.reloadtime")] = "+5%",
-- }

/// Negatives
ATT.ClipSizeOverride = 20

ATT.Category = "uplp_ar15_556_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_20"
end

ATT.HookP_TranslateSound = function(self, data) -- that is metal mag
    if data.sound == pathUT .. "magout.ogg" then
        data.sound = pathUT .. "pmagout.ogg"
    elseif data.sound == pathUT .. "magin.ogg" then
        data.sound = pathUT .. "pmagin.ogg"
    end
    return data
end

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_pmag20")


///////////////////////////////////////      uplp_ar15_mag_pmag30


ATT = {}

ATT.PrintName = "30-Round 5.56x45mm (SPMAG)"
ATT.CompactName = "30R 5.56 (SPMAG)"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "p30.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_mag_pmag30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_pmag30.mdl"

ATT.ActivateElements = {"uplp_ar15_mag"}

-- ATT.SortOrder = 0
ATT.Category = "uplp_ar15_556_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.HookP_TranslateSound = function(self, data) -- that is metal mag
    if data.sound == pathUT .. "magout.ogg" then
        data.sound = pathUT .. "pmagout.ogg"
    elseif data.sound == pathUT .. "magin.ogg" then
        data.sound = pathUT .. "pmagin.ogg"
    end
    return data
end

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_pmag30")


///////////////////////////////////////      uplp_ar15_mag_stanag20


ATT = {}

ATT.PrintName = "20-Round 5.56x45mm (Aluminium)"
ATT.CompactName = "20R 5.56 (A)"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "20.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_mag_stanag20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_stanag20.mdl"

ATT.ActivateElements = {"uplp_ar15_mag"}

/// Positives
ATT.AimDownSightsTimeMult = 0.95
ATT.SprintToFireTimeMult = 0.95
ATT.ReloadTimeMult = 0.95

-- ATT.CustomPros = { 
-- [ARC9:GetPhrase("autostat.reloadtime")] = "+5%",
-- }

/// Negatives
ATT.ClipSizeOverride = 20

ATT.Category = "uplp_ar15_556_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_20"
end

ATT.ModelOffset = Vector(0.075, 0, 0)

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_stanag20")


///////////////////////////////////////      uplp_ar15_mag_stanag30


ATT = {}

ATT.PrintName = "30-Round 5.56x45mm (Aluminium)"
ATT.CompactName = "30R 5.56 (A)"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "30.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_mag_stanag30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_stanag30.mdl"

ATT.ActivateElements = {"uplp_ar15_mag"}

-- ATT.SortOrder = 0
ATT.Category = "uplp_ar15_556_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_stanag30")


///////////////////////////////////////      uplp_ar15_mag_stanag40


ATT = {}

ATT.PrintName = "40-Round 5.56x45mm (Aluminium)"
ATT.CompactName = "40R 5.56 (A)"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "40.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_mag_stanag40.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_stanag40.mdl"

ATT.ActivateElements = {"uplp_ar15_mag"}
-- ATT.ActivateElements = {"uplp_ar15_mag", "uplp_ar15_mag_ext"}
-- ATT.ExcludeElements = {"uplp_ar15_ammo"}

/// Positives
ATT.ClipSizeOverride = 40

/// Negatives
ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.1
ATT.DeployTimeMult = 1.05
-- ATT.ReloadTimeMult = 1.1

ATT.CustomCons = { 
[ARC9:GetPhrase("autostat.reloadtime")] = "-10%",
}

ATT.ModelOffset = Vector(0.15, 0, 0)

ATT.Category = "uplp_ar15_556_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_40"
end

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_stanag40")


///////////////////////////////////////      uplp_ar15_mag_pmag60


ATT = {}

ATT.PrintName = "52-Round 5.56x45mm Drum"
ATT.CompactName = "52R 5.56 D"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "p60.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_mag_pmag60.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_pmag60.mdl"

ATT.ActivateElements = {"uplp_ar15_mag", "uplp_ar15_mag_ext"}
ATT.ExcludeElements = {"uplp_ar15_ammo"}

/// Positives
ATT.ClipSizeOverride = 52

/// Negatives
ATT.AimDownSightsTimeMult = 1.25
ATT.SprintToFireTimeMult = 1.2
ATT.DeployTimeMult = 1.2
-- ATT.ReloadTimeMult = 1.2

ATT.CustomCons = { 
[ARC9:GetPhrase("autostat.reloadtime")] = "-20%",
}

ATT.Category = "uplp_ar15_556_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_60"
end

ATT.HookP_TranslateSound = function(self, data) -- that is metal mag
    if data.sound == pathUT .. "magout.ogg" then
        data.sound = pathUT .. "pmagout.ogg"
    elseif data.sound == pathUT .. "magin.ogg" then
        data.sound = pathUT .. "pmagin.ogg"
    end
    return data
end

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_pmag60")


///////////////////////////////////////      uplp_ar15_mag_stanag60


ATT = {}

ATT.PrintName = "52-Round 5.56x45mm Quadstacked"
ATT.CompactName = "52R 5.56 (Q)"
ATT.Description = ATT.PrintName

ATT.Icon = Material(iconfolder .. "60.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_mag_stanag60.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_stanag60.mdl"

ATT.ActivateElements = {"uplp_ar15_mag", "uplp_ar15_mag_ext"}
ATT.ExcludeElements = {"uplp_ar15_ammo"}

/// Positives
ATT.ClipSizeOverride = 52

/// Negatives
ATT.AimDownSightsTimeMult = 1.25
ATT.SprintToFireTimeMult = 1.2
ATT.DeployTimeMult = 1.2
-- ATT.ReloadTimeMult = 1.2

ATT.CustomCons = { 
[ARC9:GetPhrase("autostat.reloadtime")] = "-20%",
}

ATT.Category = "uplp_ar15_556_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_60"
end

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_stanag60")


///////////////////////////////////////      uplp_ar15_mag_drum


ATT = {}

ATT.PrintName = "90-Round 5.56x45mm Beta C-Mag"
ATT.CompactName = "90R 5.56 Drum"
ATT.Description = ATT.PrintName
ATT.SortOrder = 100

ATT.Icon = Material(iconfolder .. "100.png", "mips smooth")

ATT.Model = "models/weapons/arc9/uplp/ar15_mag_drum.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ar15_mag_drum.mdl"

ATT.ActivateElements = {"uplp_ar15_mag", "uplp_ar15_mag_ext"}
ATT.ExcludeElements = {"uplp_ar15_ammo"}

/// Positives
ATT.ClipSizeOverride = 90

/// Negatives
ATT.AimDownSightsTimeMult = 1.3
ATT.SprintToFireTimeMult = 1.3
ATT.DeployTimeMult = 1.35
-- ATT.ReloadTimeMult = 1.3

ATT.CustomCons = { 
[ARC9:GetPhrase("autostat.reloadtime")] = "-30%",
}

ATT.Category = "uplp_ar15_556_mag"
ATT.MenuCategory = "ARC9 - Poly Arms Attachments"

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_100"
end

ARC9.LoadAttachment(ATT, "uplp_ar15_mag_drum")
