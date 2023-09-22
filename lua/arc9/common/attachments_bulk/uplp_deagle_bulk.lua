----- Magazines -----

local ATT = {}

ATT.PrintName = "13-Round Extended"
ATT.CompactName = "13R Ext"
ATT.Description = ATT.PrintName
ATT.SortOrder = 100

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_deag_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.ClipSizeOverride = 13
ATT.DropMagazineTime = 0.733
ATT.DropMagazineModel = "models/weapons/arc9/uplp/deagle_mag_ext.mdl"

ATT.DeployTimeMult = 1.25
ATT.AimDownSightsTimeMult = 1.25
ATT.SprintToFireTimeMult = 1.25

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_ext"
end

ARC9.LoadAttachment(ATT, "uplp_deag_mag_ext")

-------------------------------------------

ATT = {}

ATT.PrintName = "7-Round Ergo Mag"
ATT.CompactName = "7R Ergo"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_deag_mag"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.DropMagazineModel = "models/weapons/arc9/uplp/deagle_mag_tac.mdl"

ATT.ReloadTimeMult = 0.9
ATT.SprintToFireTimeMult = 1.25

ARC9.LoadAttachment(ATT, "uplp_deag_mag_tac")

-------------------------------------------

ATT = {}

ATT.PrintName = "Rubberized Grip"
ATT.CompactName = "Rubber"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_deag_grip"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.AimDownSightsTimeMult = 1.05
ATT.DeployTimeMult = 0.75

ARC9.LoadAttachment(ATT, "uplp_deag_grip_tac")

-------------------------------------------

ATT = {}

ATT.PrintName = "Heavy Trigger and Hammer"
ATT.CompactName = "Heavy"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_deag_trig"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.RPMMult = 0.8
ATT.RecoilMult = 1.15
ATT.RecoilSideMult = 1.15
ATT.RecoilAutoControlMult = 2

ARC9.LoadAttachment(ATT, "uplp_deag_trig_heavy")

-------------------------------------------

ATT = {}

ATT.PrintName = "Lightweight Trigger and Hammer"
ATT.CompactName = "Light"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_deag_trig"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.RPMMult = 1.35
ATT.RecoilMult = 1.1
ATT.RecoilSideMult = 1.4

ARC9.LoadAttachment(ATT, "uplp_deag_trig_light")

-------------------------------------------

ATT = {}

ATT.PrintName = "Automatic Action"
ATT.CompactName = "Automatic"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_deag_trig"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.RPMMult = 1.6
ATT.Firemodes = { { Mode = -1 } }
ATT.RecoilMult = 1.25
ATT.RecoilSideMult = 1.5

ARC9.LoadAttachment(ATT, "uplp_deag_trig_sport")

-------------------------------------------

ATT = {}

ATT.PrintName = "Classic Barrel"
ATT.CompactName = "Classic"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_deag_barrel"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.ActivateElements = {"nomuz"}

ATT.AimDownSightsTimeMult = 1.15
ATT.RecoilSideMult = 0.65

ARC9.LoadAttachment(ATT, "uplp_deag_barrel_classic")

-------------------------------------------

ATT = {}

ATT.PrintName = "Long Classic Barrel"
ATT.CompactName = "Classic L"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_deag_barrel"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.ActivateElements = {"nomuz"}

ATT.AimDownSightsTimeMult = 1.35
ATT.RecoilMult = 0.9
ATT.RecoilSideMult = 0.65
ATT.RecoilAutoControlMult = 1.25

ARC9.LoadAttachment(ATT, "uplp_deag_barrel_long")

-------------------------------------------

ATT = {}

ATT.PrintName = "Tactical Barrel"
ATT.CompactName = "Tactical"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_deag_barrel"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.AimDownSightsTimeMult = 0.75
ATT.RecoilMult = 1.1
ATT.RecoilAutoControlMult = 0.95

ARC9.LoadAttachment(ATT, "uplp_deag_barrel_tac")

-------------------------------------------

ATT = {}

ATT.PrintName = "Long Tactical Barrel"
ATT.CompactName = "Tactical L"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_deag_barrel"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.ActivateElements = {"nomuz"}

ATT.AimDownSightsTimeMult = 1.2
ATT.RecoilMult = 0.75
ATT.RecoilSideMult = 1.35
ATT.RecoilAutoControlMult = 0.8

ARC9.LoadAttachment(ATT, "uplp_deag_barrel_longtac")

-------------------------------------------

ATT = {}

ATT.PrintName = "Vertical Compensator"
ATT.CompactName = "Vertical"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_deag_muzzle"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.AimDownSightsTimeMult = 1.15
ATT.RecoilMult = 0.95
ATT.RecoilUpMult = 0.5
ATT.RecoilAutoControlMult = 1.1

ARC9.LoadAttachment(ATT, "uplp_deag_muzzle_cut")

-------------------------------------------

ATT = {}

ATT.PrintName = "Heavy Compensator"
ATT.CompactName = "Heavy"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_deag_muzzle"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.AimDownSightsTimeMult = 1.25
ATT.RecoilMult = 0.8
ATT.RecoilUpMult = 0.6
ATT.RecoilSideMult = 3
ATT.RecoilRandomSideMult = 3
ATT.RecoilAutoControlMult = 2

ARC9.LoadAttachment(ATT, "uplp_deag_muzzle_heavy")

-------------------------------------------

ATT = {}

ATT.PrintName = "Horizontal Compensator"
ATT.CompactName = "Horizontal"
ATT.Description = ATT.PrintName

ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Category = "uplp_deag_muzzle"
ATT.MenuCategory = "ARC9 - Low Poly Attachments"

ATT.AimDownSightsTimeMult = 1.15
ATT.RecoilMult = 0.5
ATT.RecoilRandomUpMult = 5
ATT.RecoilAutoControlMult = 1.25

ARC9.LoadAttachment(ATT, "uplp_deag_muzzle_tri")