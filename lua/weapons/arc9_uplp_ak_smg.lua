AddCSLuaFile()
SWEP.Base = "arc9_uplp_base"
SWEP.Category = "ARC9 - UPLP"
SWEP.Spawnable = true

//// FUNDAMENTALS

SWEP.Slot = 2 -- Which slot the weapon is in; starts at 0

//// Name, Description, Class, Category and Trivia
SWEP.PrintName = ARC9:GetPhrase("uplp_weapon_ak_smg")
SWEP.Description = ARC9:GetPhrase("uplp_weapon_ak_smg_desc")

SWEP.Class = ARC9:GetPhrase("uplp_class_weapon_smg") -- In the Customization Menu
SWEP.SubCategory = ARC9:GetPhrase("uplp_category_weapon_smg") -- In the Spawnmenu

SWEP.Trivia = {
    [ ARC9:GetPhrase( "uplp_realname" ) ] = ARC9:GetPhrase("uplp_weapon_ak_smg_real"),

    [ ARC9:GetPhrase( "uplp_manufacturer" ) ] = ARC9:GetPhrase( "uplp_manufacturer_izhmash" ),
    [ ARC9:GetPhrase( "uplp_caliber" ) ] = ARC9:GetPhrase( "uplp_caliber_9x19mm"),
    [ ARC9:GetPhrase( "uplp_mechanism" ) ] = string.format( ARC9:GetPhrase("uplp_mechanism_2" ), 
																		ARC9:GetPhrase( "uplp_mechanism_gasoperated" ),
																		ARC9:GetPhrase( "uplp_mechanism_rotatingbolt" ) ),
    [ ARC9:GetPhrase( "uplp_country" ) ] = ARC9:GetPhrase( "uplp_country_russia" ),
    [ ARC9:GetPhrase( "uplp_year" ) ] = string.format( ARC9:GetPhrase("uplp_year_present"), "2008" ),
}

SWEP.Credits = {
    [ ARC9:GetPhrase( "uplp_lua" ) ] = "Moka, Cylowalker",
    [ ARC9:GetPhrase( "uplp_assets" ) ] = "Kaan, TastyTony",
    [ ARC9:GetPhrase( "uplp_animations" ) ] = "Partexedd",
    [ ARC9:GetPhrase( "uplp_sounds" ) ] = "???",
    [ ARC9:GetPhrase( "uplp_general" ) ] = "Darsu",
}


SWEP.StandardPresets = {

}

//// Muzzle Effects, Shell Effects, Camera
SWEP.MuzzleParticle = "muzzleflash_mp5"
SWEP.MuzzleEffectQCA = 1

SWEP.TracerNum = 1
SWEP.TracerSize = 1

SWEP.ShellModel = "models/weapons/arc9/uplp/shells/shell_919.mdl"
SWEP.ShellScale = 1.2
SWEP.ShellPitch = 90

SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)

//// View & Worldmodel
SWEP.ViewModel = "models/weapons/arc9/c_uplp_ak_smol.mdl"
SWEP.WorldModel = "models/weapons/arc9/w_uplp_ak_smol.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
-- SWEP.WorldModelMirror = "models/weapons/arc9/c_uplp_ak.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-3.5, 3, -8),
    Ang = Angle(0, 0, 180),
    TPIKPos = Vector(-4.5, 2, -7),
    TPIKAng = Angle(0, 0, 180),
    Scale = 1
}

SWEP.ViewModelFOVBase = 75

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC

//// Weapon Stats and Behaviour
-- Damage
SWEP.DamageMax = 35 -- Damage dealt point-blank
SWEP.DamageMin = 20 -- Damage dealt after maximum range
SWEP.DamageType = DMG_BULLET

SWEP.Penetration = 15 -- Units of wood that can be penetrated
SWEP.ImpactForce = 5 -- How much kick things will have when hit

-- Range
SWEP.RangeMin = 15 * 39.37 -- How far in M the bullets go before starting to decrease in damage
SWEP.RangeMax = 100 * 39.37 -- How far in M the bullets need to go to deal DamageMin

-- Physical Bullets
SWEP.PhysBulletMuzzleVelocity = 715 * 39.37
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-- Magazine Info
SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1
SWEP.ClipSize = 30

-- Recoil
SWEP.Recoil = 1.5
SWEP.RecoilUp = 0.7
SWEP.RecoilSide = 1.15

SWEP.RecoilRandomUp = 0.9
SWEP.RecoilRandomSide = 0.9

SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.RecoilPunch = 0
SWEP.RecoilAutoControl = 0.85

SWEP.RecoilMultSights = 0.95
SWEP.RecoilMultCrouch = 0.75

-- Visual Recoil
SWEP.VisualRecoil = 0.5
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilCenter = Vector(2, 11, 2)
SWEP.VisualRecoilUp = 0.1 -- Vertical tilt
SWEP.VisualRecoilSide = -0.015 -- Horizontal tilt
SWEP.VisualRecoilRoll = 10 -- Roll tilt
SWEP.VisualRecoilPunch = 2.5 -- How far back visual recoil moves the gun
SWEP.VisualRecoilDampingConst = 80
SWEP.VisualRecoilSpringMagnitude = 0.44
SWEP.VisualRecoilPositionBumpUp = .1

SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilUpHipFire = 2
SWEP.VisualRecoilSideHipFire = -0.2
SWEP.VisualRecoilRollHipFire = 20
SWEP.VisualRecoilPunchHipFire = 0.5
SWEP.VisualRecoilDampingConstHipFire = 45
SWEP.VisualRecoilPositionBumpUpHipFire = .5

-- Accuracy and Spread
SWEP.Spread = 0
SWEP.SpreadAddHipFire = 0.02

SWEP.SpreadAddRecoil = 0.06
SWEP.SpreadAddMove = 0.04

SWEP.SpreadMultSights = 0.001
SWEP.SpreadMultMove = 1

SWEP.RecoilDissipationRate = 5
SWEP.RecoilDissipationRateSights = 10
SWEP.RecoilResetTime = 0
SWEP.RecoilPerShot = 0.25
SWEP.RecoilMax = 1

SWEP.RecoilModifierCapSights = 0.15

-- Weapon handling
SWEP.SpeedMult = 0.9 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.65 -- When aiming

SWEP.AimDownSightsTime = 0.5 -- Time it takes to fully enter ADS
SWEP.SprintToFireTime = 0.35 -- Time it takes to fully enter sprint

-- Shooting and Firemodes
SWEP.RPM = 800 -- How fast gun shoot

SWEP.Num = 1 -- How many bullets shot at once

SWEP.Firemodes = {
    { Mode = -1, -- Full
	PoseParam = 1 }, 
    { Mode = 1, -- Semi
	RPM = 450, 
	PoseParam = 2 }
}

SWEP.ShootPitch = 90
SWEP.ShootVol = 120

-- HoldType Info
SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "smg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeNPC = nil

-- NPC Info
SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Iron Sight and Sight Info
SWEP.IronSights = {
     Pos = Vector(-2.3, -3, 0.975),
     Ang = Angle(0.375, 0, -2.5),
     Magnification = 1.15,
     ViewModelFOV = 55,
}

SWEP.IronSightsHook = function(self) -- If any attachments equipped should alter Irons
    local attached = self:GetElements()

     if attached["uplp_ak_smg_rec_ppk20"] then
        return {
			 Pos = Vector(-2.29, -3, 0.865),
			 Ang = Angle(0.375, 0.1, -2.5),
			 Magnification = 1.15,
			 ViewModelFOV = 60,
        }
    end
	
     if attached["uplp_ak_smg_rec_bizon"] then
        return {
			 Pos = Vector(-2.29, -3, 1.125),
			 Ang = Angle(0.375, 0.1, -2.5),
			 Magnification = 1.15,
			 ViewModelFOV = 60,
        }
    end
end

-- Customization Menu Info
SWEP.CustomizePos = Vector(15, 32.5, 5)
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizeRotateAnchor = Vector(15, -2, -3)

SWEP.CustomizeSnapshotPos = Vector(0, 5, 0)
SWEP.CustomizeSnapshotFOV = 90

-- Dropped Magazine
SWEP.ShouldDropMag = true
SWEP.ShouldDropMagEmpty = true
SWEP.DropMagazineModel = "models/weapons/arc9/uplp/ak_mag_919.mdl"
SWEP.DropMagazineTime = 0.75
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(90, 95, 90)
SWEP.DropMagazineVelocity = Vector(0, 80, -80)

//// Sounds
local path556 = "weapons/arccw/xhr50/"

local pathsound = "uplp_temp/ak/"
local pathreloadsound = pathsound .. "reload/wpfoly_ak47_reload_"
local shootsoundsupp = pathsound .. "shoot/suppressed/h1_wpn_supp_ar1_"
local shootsound762 = pathsound .. "shoot/762/wpn_h1_ak47_"
local shootsound545 = pathsound .. "shoot/545/wpn_h1_ak74u_"
local shootsound556 = pathsound .. "shoot/556/wpn_h1_mp44_"
local shootsound308 = pathsound .. "shoot/308/wpn_h1_g3_"

SWEP.ShootSound = {shootsound762 .. "shot_01.ogg",
shootsound762 .. "shot_02.ogg",
shootsound762 .. "shot_03.ogg",
shootsound762 .. "shot_04.ogg"}

SWEP.DistantShootSound = {shootsound762 .. "tail_ext.ogg"}

SWEP.ShootSoundSilenced = {shootsoundsupp .. "01.ogg",
shootsoundsupp .. "02.ogg",
shootsoundsupp .. "03.ogg",
shootsoundsupp .. "04.ogg"}

SWEP.DistantShootSoundSilenced = {pathsound .. "shoot/suppressed/wpn_tail_hol_smooth_01.ogg"}

SWEP.DropMagazineSounds = {path556 .. "magdrop.ogg"}

//// Animations
-- HideBones, BulletBones, etc.
SWEP.BulletBones = {
    [1] = "bullet1",
	[2] = "bullet2",
	[3] = "bullet3",
	[4] = "bullet4",
}

SWEP.HideBones = {
    "fakemag",
    "fakerounds",
    "bullet1",
    "bullet2",
    "bullet3",
    "bullet4",
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mag",
        "fakerounds",
    },
    [2] = {
        "fakemag",
        "bullet1",
        "bullet2",
        "bullet3",
        "bullet4",
    }
}

-- Animations
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["ready"] = {
        Source = "ready",
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "chamber_v4.wav", t = 4 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "lift_v4.wav", t = 18 / 30, c = ca, v = 0.8 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.01, lhik = 0 },
            { t = 0.6, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 6 / 30, c = ca, v = 0.8 },
        },
    },
    ["holster"] = {
        Source = "holster",
		MinProgress = 0.5,
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 0 / 30, c = ca, v = 0.8 },
        },
    },    

    ["fire"] = {
        Source = {"fire_01","fire_02","fire_03"},
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = {
			shootsound762 .. "mech_01.ogg",
			shootsound762 .. "mech_02.ogg",
			shootsound762 .. "mech_03.ogg",
			shootsound762 .. "mech_04.ogg",
			}, t = 0 },
            { s = shootsound762 .. "punch.ogg", t = 0 },
        },
    },

    ["fire_bizon"] = {
        Source = {"fire_01_bizon","fire_02_bizon","fire_03_bizon"},
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = {
			shootsound762 .. "mech_01.ogg",
			shootsound762 .. "mech_02.ogg",
			shootsound762 .. "mech_03.ogg",
			shootsound762 .. "mech_04.ogg",
			}, t = 0 },
            { s = shootsound762 .. "punch.ogg", t = 0 },
        },
    },

    -- Reloads --

    ["reload"] = {
        Source = "reload_9mm",
		MinProgress= 0.6,
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 12.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipin_v4.wav", t = 27.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "lift_v4.wav", t = 35 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
            {hide = 0, t = 0.29},
            {hide = 2, t = 0.75}
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty_9mm",
		MinProgress= 0.7,
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 10 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipin_v4.wav", t = 22.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "chamber_v4.wav", t = 35 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "lift_v4.wav", t = 42.5 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
            {hide = 0, t = 0.29},
            {hide = 2, t = 0.75}
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 0.925, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    ["reload_bizon"] = {
        Source = "reload_bizon",
		MinProgress= 0.6,
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 15 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipin_v4.wav", t = 37.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "lift_v4.wav", t = 45 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
            {hide = 0, t = 0.29},
            {hide = 2, t = 0.75}
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty_bizon"] = {
        Source = "reload_empty_bizon",
		MinProgress= 0.7,
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 15 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipin_v4.wav", t = 37.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "chamber_v4.wav", t = 52.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "lift_v4.wav", t = 65 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
            {hide = 0, t = 0.29},
            {hide = 2, t = 0.75}
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 0.925, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    -- Inspect

    ["inspect"] = {
        Source = {"inspect_9mm"},
        FireASAP = true,
        EventTable = {
            { s = pathsound .. "inspect_01.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 14 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_grab.wav", t = 55 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_03.wav", t = 60 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_02.wav", t = 110 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipin_v4.wav", t = 120 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },  
    ["1_inspect"] = {
        Source = {"inspect0"},
        FireASAP = true,
        EventTable = {
            { s = pathsound .. "inspect_01.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_03.wav", t = 50 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_02.wav", t = 90 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },  

    ["inspect_bizon"] = {
        Source = {"inspect_bizon"},
        FireASAP = true,
        EventTable = {
            { s = pathsound .. "inspect_01.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 17.5 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_02.wav", t = 35 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipin_v4.wav", t = 45 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },  
    ["1_inspect_bizon"] = {
        Source = {"inspect0"},
        FireASAP = true,
        EventTable = {
            { s = pathsound .. "inspect_01.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_03.wav", t = 50 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_02.wav", t = 90 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },  

    ["firemode_1"] = {
        Source = "firemode_0",
    },
    ["firemode_2"] = {
        Source = "firemode_1",
    },
	
    ["toggle"] = {
        Source = "modeswitch",
        EventTable = {
            { s = {"eft_shared/weapon_light_switcher1.wav", "eft_shared/weapon_light_switcher2.wav", "eft_shared/weapon_light_switcher3.wav"}, t = 0 },
        }
    },
    ["switchsights"] = {
        Source = "modeswitch",
        EventTable = {
            { s = {"eft_shared/weapon_light_switcher1.wav", "eft_shared/weapon_light_switcher2.wav", "eft_shared/weapon_light_switcher3.wav"}, t = 0 },
        }
    },    
}


//// Attachments
SWEP.Hook_ModifyBodygroups = function(wep, data)
    local eles = data.elements
    local mdl = data.model
    if eles["uplp_ak_smg_conf_ppk20"] then
        mdl:SetBodygroup(4, 8) -- Remove handguard
		
		if eles["uplp_ak_smg_brl_ppk20_long"] then
			mdl:SetBodygroup(2, 3) -- Remove irons when backup or optics on
		end
		
		if eles["uplp_optic_used"] or eles["uplp_backup_optic"] then
			mdl:SetBodygroup(8, 0) -- Remove irons when backup or optics on
		end
    end

    -- if eles["uplp_ak_smg_conf_bizon"] then
		-- if eles["uplp_ak_smg_dc_rail"] then
			-- mdl:SetBodygroup(3, 3) -- Remove irons when backup or optics on
		-- end
    -- end

end

-- SWEP.Hook_ModifyElements = function(self, eles)

	-- if eles["uplp_ak_smg_rec_ppk20"] and eles["uplp_ak_smg_brl_ppk20_long"] then
		-- AttPosMods = {[2] = { Pos = Vector(0, 1.7, 20) } }
	-- end

-- end

SWEP.AttachmentElements = {

    -- RECIEVERS
    ["uplp_ak_smg_rec_ppk20"] =         { Bodygroups = { { 0, 1 } } },
    ["uplp_ak_smg_rec_bizon"] =          { Bodygroups = { { 0, 2 } } },
    ["uplp_ak_smg_rec_bizonm"] =       { Bodygroups = { { 0, 3 } } },

    -- FIRE SELECTORS
    ["uplp_ak_smg_fs_12"] =         { Bodygroups = { { 1, 1 } } },
    ["uplp_ak_smg_fs_m"] =          { Bodygroups = { { 1, 2 } } },

    -- BARRELS
    ["uplp_ak_smg_brl_long"] = { Bodygroups = { { 2, 1 } } , AttPosMods = {[2] = { Pos = Vector(0, 1.625, 20.625), }}},
    ["uplp_ak_smg_brl_ppk20"] =  { Bodygroups = { { 2, 2 } } , AttPosMods = {[2] = { Pos = Vector(0, 1.55, 12.6), }}},
    ["uplp_ak_smg_brl_ppk20_long"] =  { Bodygroups = { { 2, 3 } } , AttPosMods = {[2] = { Pos = Vector(0, 1.55, 21.625), }}},
    ["uplp_ak_smg_brl_ppk20_bizon"] =  { Bodygroups = { { 2, 4 } } , AttPosMods = {[2] = { Pos = Vector(0, 1.8, 13.775), }}},

    -- DUST COVERS
    ["uplp_ak_smg_dc_rail"] =           { Bodygroups = { { 3, 1 } } },
    ["uplp_ak_smg_dc_bizon"] =          { Bodygroups = { { 3, 2 } } },
    ["uplp_ak_smg_dc_bizon_rail"] =           { Bodygroups = { { 3, 3 } } , AttPosMods = {
	[1] = { Pos = Vector(0, 0.225, 1.5), },
	[13] = { Pos = Vector(0, 0.225, 0.5), },
	[14] = { Pos = Vector(0, 0.225, 5.25), },
	}},

    -- HANDGUARDS
    ["uplp_ak_hg_100"] =   { Bodygroups = { { 4, 1 } } },
    ["uplp_ak_hg_old"] =   { Bodygroups = { { 4, 2 } } },
    ["uplp_ak_hg_beryl"] = { Bodygroups = { { 4, 3 } } },
    ["uplp_ak_hg_tac"] =   { Bodygroups = { { 4, 4 } } },
    ["uplp_ak_hg_wood"] =  { Bodygroups = { { 4, 5 } } },
    ["uplp_ak_hg_dong"] =  { Bodygroups = { { 4, 6 } } },
    ["uplp_ak_hg_azen_c"] = { Bodygroups = { { 4, 7 } } },
    ["uplp_ak_hg_bizon"] = { Bodygroups = { { 4, 8 } } },

    --CALIBERS
    ["uplp_ak_smg_calib_bizon"] = { Bodygroups = { { 5, 1 } } },

    -- MAGAZINES
    ["uplp_ak_smg_mag_tac"] = { Bodygroups = { { 6, 1 } } },
    ["uplp_ak_smg_mag_bizon"] = { Bodygroups = { { 6, 2 } } },
    ["uplp_ak_smg_mag_bizon_old"] = { Bodygroups = { { 6, 3 } } },
    
    -- NMounts
    ["uplp_ak_smg_nmount"] =  { Bodygroups = { { 7, 1 } } },
    ["uplp_ak_smg_nmount_c"] =  { Bodygroups = { { 7, 2 } } },

    -- Alternative Irons
    ["uplp_ak_smg_ppk20_irons"] =  { Bodygroups = { { 8, 1 } } },

    -- PISTOL GRIPS
    ["uplp_ak_grip"] =       { Bodygroups = { { 9, 1 } } },

}

local defatt = "arc9/def_att_icons/"
local defatt2 = "entities/uplp_attachements/def/"

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_optic"),
        Category = {"uplp_optic_small", "uplp_optic_mid", "uplp_optic_big"},
        DefaultIcon = Material(defatt .. "optic.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0, -0.05, 1.5),
        Ang = Angle(90, 90, 180),
        RequireElements = {"use_optics"},
        CorrectiveAng = Angle(0.4, -0.35, 0),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_muzzle"),
        Category = {"uplp_muzzle", "uplp_ak_muzzle_smg"},
        Bone = "body",
        Pos = Vector(0, 1.625, 14.45),
        Ang = Angle(90, 90, 180),
		Icon_Offset = Vector(1.5, 0, 0),
        Installed = "uplp_ak_mz_vityaz",
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_barrel"),
        Category = {"uplp_ak_barrel_smg"},
        DefaultIcon = Material(defatt2 .. "akbar.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0.045, 2, 19),
		Icon_Offset = Vector(-5, 0, 0.5),
        Ang = Angle(90, 90, 180),
		ExcludeElements = {"uplp_ak_smg_rec_bizon", "uplp_ak_smg_rec_ppk20"},
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_barrel"),
        Category = {"uplp_ak_barrel_smg_ppk20"},
        DefaultIcon = Material(defatt2 .. "akbar.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0.045, 2, 18),
		Icon_Offset = Vector(-5, 0, 0.5),
        Ang = Angle(90, 90, 180),
		RequireElements = {"uplp_ak_smg_rec_ppk20"},
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_handguard"),
        Category = {"uplp_handguard_normal"},
        DefaultIcon = Material(defatt2 .. "akhg.png", "mips smooth"),
        Bone = "body",
        RejectAttachments = {
		["uplp_ak_hg_azen"] = true,
		},
        Pos = Vector(0.045, 1.5, 14.5),
        Ang = Angle(90, 90, 180),
		Icon_Offset = Vector(-6.5, 0, -0.5),
		ExcludeElements = {"uplp_ak_smg_rec_bizon", "uplp_ak_smg_rec_ppk20"},
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_receiver"),
        Category = {"uplp_ak_smg_config"},
        DefaultIcon = Material(defatt2 .. "rec.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0.045, 1.5, 3),
        Ang = Angle(90, 90, 180),
		ExcludeElements = {"uplp_ak_smg_rec_bizon"},
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_dustcover"),
        Category = {"uplp_ak_dc_smg"},
        DefaultIcon = Material(defatt2 .. "dc.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0.045, 0.5, 6.5),
        Ang = Angle(90, 90, 180),
		ExcludeElements = {"uplp_ak_smg_rec_bizon", "uplp_ak_smg_rec_ppk20"},
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_dustcover"),
        Category = {"uplp_ak_dc_smg_bizon"},
        DefaultIcon = Material(defatt2 .. "dc.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0.045, 0.5, 6.5),
        Ang = Angle(90, 90, 180),
		RequireElements = {"uplp_ak_smg_rec_bizon"},
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_magazine"),
        Category = {"uplp_ak_smg_rec"},
        Bone = "body",
        Installed = "uplp_ak_smg_rec_vityaz",
        Integral = "uplp_ak_smg_rec_vityaz",
        Pos = Vector(0.045, 5, 5),
        Ang = Angle(90, 90, 180),
	},
    {
        PrintName = ARC9:GetPhrase("uplp_category_pistol_grip"),
        Category = {"uplp_ak_grip", "uplp_ak_grip_smg"},
        DefaultIcon = Material(defatt2 .. "akgrip.png", "mips smooth"),
		ActiveElements = {"uplp_ak_grip"},
        Bone = "body",
        Installed = "uplp_ak_grip_vityaz",
        RejectAttachments = {
		["uplp_ak_grip_std"] = true,
		},
        Pos = Vector(0.045, 5, -1),
        Ang = Angle(90, 90, 180),
		ExcludeElements = {"uplp_ak_smg_rec_ppk20"},
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_pistol_grip"),
        Category = {"uplp_ak_grip_12"},
        DefaultIcon = Material(defatt2 .. "akgrip.png", "mips smooth"),
		ActiveElements = {"uplp_ak_grip"},
        Bone = "body",
        Installed = "uplp_ak_grip_vityaz",
        Pos = Vector(0.045, 5, -1),
        Ang = Angle(90, 90, 180),
		Installed = "uplp_ak_grip_12evo",
		Integral = "uplp_ak_grip_12evo",
		RequireElements = {"uplp_ak_smg_rec_ppk20"},
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_stock"),
        Category = {"uplp_ak_stock", "uplp_ak_stock_smg"},
        DefaultIcon = Material(defatt2 .. "akstock.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0.045, 2, -3),
        Ang = Angle(90, 90, 180),
        RejectAttachments = {
		["uplp_ak_stock_fold"] = true,
		["uplp_ak_stock_old"] = true,
		["uplp_ak_stock_rpk"] = true,
		["uplp_ak_stock_rpk74"] = true,
		["uplp_ak_stock_wood"] = true,
		["uplp_ak_stock_poly"] = true,
		["uplp_ak_stock_molot"] = true,
		["uplp_ak_stock_underfold"] = true,
		},
        Installed = "uplp_ak_stock_skele",
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_backup"),
        Category = {"uplp_backup_optic"},
        DefaultIcon = Material(defatt .. "optic.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0, -0.05, 0.5),
        Ang = Angle(90, 90, 180),
		ExcludeElements = {"uplp_no_backup"},
        RequireElements = {"use_optics"},
        CorrectiveAng = Angle(0.4, -0.35, 0),
		Icon_Offset = Vector(-1, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_backup"),
        Category = {"uplp_backup_optic_front"},
        Bone = "body",
        Pos = Vector(0, -0.05, 5.5),
        Ang = Angle(90, 90, 180),
        RequireElements = {"uplp_backup_optic_is"},
        Installed = "uplp_backup_optic_is_front",
        Integral = "uplp_backup_optic_is_front",
		Hidden = true,
    },
}