----- 7.62 MAGS -----

local ATT = {}

ATT.PrintName = "30-Round 7.62x39mm (Bakelite)"
ATT.CompactName = "30R 7.62 (B)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "7.62"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_762_bak.mdl"

ATT.ActivateElements = {"uplp_ak_mag_762_30_bak"}

ARC9.LoadAttachment(ATT, "uplp_ak_mag_762_30_bak")

-------------------------------------------

ATT = {}

ATT.PrintName = "30-Round 7.62x39mm (AK-12-Style)"
ATT.CompactName = "30R 7.62 (12)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "7.62"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_762_12.mdl"

ATT.ActivateElements = {"uplp_ak_mag_762_30_12"}

ARC9.LoadAttachment(ATT, "uplp_ak_mag_762_30_12")

-------------------------------------------

ATT = {}

ATT.PrintName = "30-Round 7.62x39mm (Steel)"
ATT.CompactName = "30R 7.62 (S)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "7.62"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_762_old.mdl"

ATT.ActivateElements = {"uplp_ak_mag_762_30_old"}

ARC9.LoadAttachment(ATT, "uplp_ak_mag_762_30_old")

-------------------------------------------

ATT = {}

ATT.PrintName = "30-Round 7.62x39mm (Smooth Steel)"
ATT.CompactName = "30R 7.62 (SS)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "7.62"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_762_oldest.mdl"

ATT.ActivateElements = {"uplp_ak_mag_762_30_oldest"}

ARC9.LoadAttachment(ATT, "uplp_ak_mag_762_30_oldest")

-------------------------------------------

ATT = {}

ATT.PrintName = "40-Round 7.62x39mm (Bakelite)"
ATT.CompactName = "40R 7.62 (B)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "7.62"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_762_40.mdl"

ATT.ActivateElements = {"uplp_ak_mag_762_40"}

ATT.ClipSizeOverride = 40

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_40rnd"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_762_40")

-------------------------------------------

ATT = {}

ATT.PrintName = "40-Round 7.62x39mm (Steel)"
ATT.CompactName = "40R 7.62 (S)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "7.62"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_762_40_old.mdl"

ATT.ActivateElements = {"uplp_ak_mag_762_40_old"}

ATT.ClipSizeOverride = 40

ATT.Hook_TranslateAnimation = function(wep, anim) 
    return anim .. "_40rnd"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_762_40_old")

-------------------------------------------

ATT = {}

ATT.PrintName = "75-Round 7.62x39mm Drum"
ATT.CompactName = "75R 7.62 D"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "7.62"

ATT.ActivateElements = {"uplp_ak_mag_762_drum"}
ATT.DropMagazineTime = 0.85
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_762_drum.mdl"

ATT.ClipSizeOverride = 75

ATT.Hook_TranslateAnimation = function(wep, anim) 
    if anim == "inspect" then
        return anim .. "_drum"
    end
    return anim .. "_drum"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_762_drum")

-------------------------------------------

----- 5.45 MAGS -----

local ATT = {}

ATT.PrintName = "30-Round 5.45x39mm (Polymer)"
ATT.CompactName = "30R 5.45 (P)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "5.45"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_545.mdl"

ATT.ActivateElements = {"uplp_ak_mag_545_30", "uplp_ak_calib_545"}

ATT.Hook_TranslateAnimation = function(wep, anim) 
    if anim == "inspect" then
        return anim .. "_545"
    end
    return anim .. "_545"
end

ATT.RPMAdd = 50
ATT.RecoilMult = 0.75
-- ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.RangeMaxMult = 0.85
ATT.RangeMinMult = 0.9
ATT.PhysBulletMuzzleVelocityMult = 0.7

ARC9.LoadAttachment(ATT, "uplp_ak_mag_545_30")

-------------------------------------------

local ATT = {}

ATT.PrintName = "30-Round 5.45x39mm (Bakelite)"
ATT.CompactName = "30R 5.45 (B)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "5.45"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_545_bak.mdl"

ATT.ActivateElements = {"uplp_ak_mag_545_30_bak", "uplp_ak_calib_545"}

ATT.RPMMult = 700/600

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.RecoilMult = 0.9

ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "inspect" then
        return anim .. "_545"
    end 
    return anim .. "_545"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_545_30_bak")

-------------------------------------------

local ATT = {}

ATT.PrintName = "30-Round 5.45x39mm (Magpul)"
ATT.CompactName = "30R 5.45 (MP)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "5.45"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_545_pmag.mdl"

ATT.ActivateElements = {"uplp_ak_mag_545_30_pmag", "uplp_ak_calib_545"}

ATT.RPMMult = 700/600

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.RecoilMult = 0.9

ATT.Hook_TranslateAnimation = function(wep, anim) 
    if anim == "inspect" then
        return anim .. "_545"
    end
    return anim .. "_545"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_545_30_pmag")

-------------------------------------------

local ATT = {}

ATT.PrintName = "30-Round 5.45x39mm (AK-12)"
ATT.CompactName = "30R 5.45 (12)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "5.45"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_545_12.mdl"

ATT.ActivateElements = {"uplp_ak_mag_545_30_12", "uplp_ak_calib_545"}

ATT.RPMMult = 700/600

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.RecoilMult = 0.9

ATT.Hook_TranslateAnimation = function(wep, anim) 
    if anim == "inspect" then
        return anim .. "_545"
    end
    return anim .. "_545"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_545_30_12")

-------------------------------------------

local ATT = {}

ATT.PrintName = "45-Round 5.45x39mm (Bakelite)"
ATT.CompactName = "45R 5.45 (B)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "5.45"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_545_45.mdl"

ATT.ActivateElements = {"uplp_ak_mag_545_45", "uplp_ak_calib_545"}

ATT.RPMMult = 700/600

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.RecoilMult = 0.9

ATT.ClipSizeOverride = 45

ATT.Hook_TranslateAnimation = function(wep, anim) 
    if anim == "inspect" then
        return anim .. "_545"
    end
    return anim .. "_545_45rnd"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_545_45")

-------------------------------------------

local ATT = {}

ATT.PrintName = "60-Round 5.45 Quadstacked"
ATT.CompactName = "60R 5.45 (Q)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "5.45"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_545_60.mdl"

ATT.ActivateElements = {"uplp_ak_mag_545_60", "uplp_ak_calib_545"}

ATT.RPMMult = 700/600

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.RecoilMult = 0.9

ATT.ClipSizeOverride = 60

ATT.Hook_TranslateAnimation = function(wep, anim) 
    if anim == "inspect" then
        return anim .. "_545"
    end
    return anim .. "_545_60rnd"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_545_60")

-------------------------------------------

local ATT = {}

ATT.PrintName = "75-Round 5.45x39mm Drum"
ATT.CompactName = "75R 5.45 (D)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "5.45"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_545_drum.mdl"

ATT.ActivateElements = {"uplp_ak_mag_545_drum", "uplp_ak_calib_545"}
ATT.DropMagazineTime = 0.85
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_545_drum.mdl"

ATT.RPMMult = 700/600

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.RecoilMult = 0.9

ATT.ClipSizeOverride = 75

ATT.Hook_TranslateAnimation = function(wep, anim) 
    if anim == "inspect" then
        return anim .. "_drum"
    end
    return anim .. "_drum"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_545_drum")

-------------------------------------------

-----5.56-----

local ATT = {}

ATT.PrintName = "30-Round 5.56x45mm (Polymer)"
ATT.CompactName = "30R 5.56 (P)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "5.56"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_556.mdl"

ATT.ActivateElements = {"uplp_ak_mag_556_30", "uplp_ak_calib_556"}

ATT.RPMMult = 750/600

ATT.DamageMaxMult = 0.8
ATT.DamageMinMult = 0.8

ATT.RecoilMult = 0.85


ATT.Hook_TranslateAnimation = function(wep, anim) 
    if anim == "inspect" then
        return anim .. "_556"
    end
    return anim .. "_556"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_556_30")

-------------------------------------------

local ATT = {}

ATT.PrintName = "30-Round 5.56x45mm (Magpul)"
ATT.CompactName = "30R 5.56 (MP)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "5.56"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_545_pmag.mdl"

ATT.ActivateElements = {"uplp_ak_mag_556_30_pmag", "uplp_ak_calib_556"}

ATT.RPMMult = 750/600

ATT.DamageMaxMult = 0.8
ATT.DamageMinMult = 0.8

ATT.RecoilMult = 0.85


ATT.Hook_TranslateAnimation = function(wep, anim) 
    if anim == "inspect" then
        return anim .. "_556"
    end
    return anim .. "_556"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_556_30_pmag")

-------------------------------------------

local ATT = {}

ATT.PrintName = "30-Round 5.56x45mm (AK-12)"
ATT.CompactName = "30R 5.56 (12)"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.Folder = "5.56"
ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_556_12.mdl"

ATT.ActivateElements = {"uplp_ak_mag_556_30_12", "uplp_ak_calib_556"}

ATT.RPMMult = 750/600

ATT.DamageMaxMult = 0.8
ATT.DamageMinMult = 0.8

ATT.RecoilMult = 0.85


ATT.Hook_TranslateAnimation = function(wep, anim)
    if anim == "inspect" then
        return anim .. "_556"
    end
    return anim .. "_556"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_556_30_12")

-------------------------------------------


----- OTHER CALIBERS -----

ATT = {}

ATT.PrintName = "20-Round .308"
ATT.CompactName = "20R .308"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.ActivateElements = {"uplp_ak_mag_308_20", "uplp_ak_calib_308"}

ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_308.mdl"

ATT.RPMMult = 550/600

ATT.DamageMaxMult = 1.4
ATT.DamageMinMult = 1.1

ATT.RecoilMult = 1.5
ATT.RecoilSideMult = 2
ATT.RecoilAutoControlMult = 0.5
ATT.VisualRecoilMult = 1.5


ATT.ClipSizeOverride = 20

ATT.Hook_TranslateAnimation = function(wep, anim) 
    if anim == "inspect" then
        return anim .. "_308"
    end
    return anim .. "_308"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_308_20")

-------------------------------------------

ATT = {}

ATT.PrintName = "20-Round 9x39mm"
ATT.CompactName = "20R 9x19"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_ak_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.ActivateElements = {"uplp_ak_mag_939_30", "uplp_ak_calib_939"}

ATT.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_939.mdl"

ATT.RPMMult = 775/600
ATT.ClipSizeOverride = 20

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 1.1

ATT.RecoilMult = 0.8

ATT.Hook_TranslateAnimation = function(wep, anim) 
    if anim == "inspect" then
        return anim .. "_545"
    end
    return anim .. "_545"
end

ARC9.LoadAttachment(ATT, "uplp_ak_mag_939_30")

-------------------------------------------
