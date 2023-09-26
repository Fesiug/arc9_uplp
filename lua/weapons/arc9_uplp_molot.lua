AddCSLuaFile()
SWEP.Base = "arc9_uplp_base"
SWEP.Category = "ARC9 - UPLP"
SWEP.Spawnable = true

//// FUNDAMENTALS

SWEP.Slot = 2 -- Which slot the weapon is in; starts at 0

//// Name, Description, Class, Category and Trivia
SWEP.PrintName = ARC9:GetPhrase("uplp_weapon_molot")
SWEP.Description = ARC9:GetPhrase("uplp_weapon_molot_desc")

SWEP.Class = ARC9:GetPhrase("uplp_class_weapon_shotgun") -- In the Customization Menu
SWEP.SubCategory = ARC9:GetPhrase("uplp_category_weapon_shotgun") -- In the Spawnmenu

SWEP.SubCategory = ARC9:GetPhrase("uplp_category_weapon_heavy")

SWEP.Trivia = {
    [ ARC9:GetPhrase( "uplp_realname" ) ] = ARC9:GetPhrase("uplp_weapon_molot_real"),

    [ ARC9:GetPhrase( "uplp_manufacturer" ) ] = ARC9:GetPhrase( "uplp_manufacturer_izhmash" ),
    [ ARC9:GetPhrase( "uplp_caliber" ) ] = ARC9:GetPhrase( "uplp_caliber_12gauge"),
    [ ARC9:GetPhrase( "uplp_mechanism" ) ] = string.format( ARC9:GetPhrase("uplp_mechanism_2" ), 
																		ARC9:GetPhrase( "uplp_mechanism_gasoperated" ),
																		ARC9:GetPhrase( "uplp_mechanism_rotatingbolt" ) ),
    [ ARC9:GetPhrase( "uplp_country" ) ] = ARC9:GetPhrase( "uplp_country_russia" ),
    [ ARC9:GetPhrase( "uplp_year" ) ] = string.format( ARC9:GetPhrase("uplp_year_present"), "2003" ),
}

SWEP.Credits = {
    [ ARC9:GetPhrase( "uplp_lua" ) ] = "Moka",
    [ ARC9:GetPhrase( "uplp_assets" ) ] = "TastyTony, Darsu",
    [ ARC9:GetPhrase( "uplp_animations" ) ] = "Partexedd, Darsu",
    [ ARC9:GetPhrase( "uplp_sounds" ) ] = "???",
    [ ARC9:GetPhrase( "uplp_general" ) ] = "Darsu",
}

SWEP.StandardPresets = {

}

//// Muzzle Effects, Shell Effects, Camera
SWEP.MuzzleParticle = "muzzleflash_m3"
SWEP.MuzzleEffectQCA = 1

SWEP.TracerNum = 1
SWEP.TracerSize = 1

SWEP.ShellModel = "models/weapons/arc9/uplp/shells/shell_red.mdl"
SWEP.ShellScale = 1.3
SWEP.ShellPitch = 90

SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)

//// View & Worldmodel
SWEP.ViewModel = "models/weapons/arc9/c_uplp_vepr.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
-- SWEP.WorldModelMirror = "models/weapons/arc9/c_uplp_vepr.mdl"
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
SWEP.DamageMax = 20 -- Damage dealt point-blank
SWEP.DamageMin = 5 -- Damage dealt after maximum range
SWEP.DamageType = DMG_BULLET

SWEP.Penetration = 5 -- Units of wood that can be penetrated
SWEP.ImpactForce = 2 -- How much kick things will have when hit

-- Range
SWEP.RangeMin = 10 * 39.37 -- How far in M the bullets go before starting to decrease in damage
SWEP.RangeMax = 50 * 39.37 -- How far in M the bullets need to go to deal DamageMin

-- Physical Bullets
SWEP.PhysBulletMuzzleVelocity = 475 * 39.37
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-- Magazine Info
SWEP.ChamberSize = 1
SWEP.ClipSize = 5
SWEP.Ammo = "buckshot"

-- Recoil
SWEP.Recoil = 2
SWEP.RecoilUp = 1.5
SWEP.RecoilSide = 1

SWEP.RecoilRandomUp = 1.15
SWEP.RecoilRandomSide = 0.9

SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.RecoilPunch = 0
SWEP.RecoilAutoControl = 1.25

SWEP.RecoilMultSights = 0.95
SWEP.RecoilMultCrouch = 0.75

-- Visual Recoil
SWEP.VisualRecoil = 0.5
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilCenter = Vector(2, 11, 2)
SWEP.VisualRecoilUp = -0.15 -- Vertical tilt
SWEP.VisualRecoilSide = -0.015 -- Horizontal tilt
SWEP.VisualRecoilRoll = 30 -- Roll tilt
SWEP.VisualRecoilPunch = 2.5 -- How far back visual recoil moves the gun
SWEP.VisualRecoilDampingConst = 80
SWEP.VisualRecoilSpringMagnitude = 0.44
SWEP.VisualRecoilPositionBumpUp = .1

SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilUpHipFire = 5
SWEP.VisualRecoilSideHipFire = -0.2
SWEP.VisualRecoilRollHipFire = 20
SWEP.VisualRecoilPunchHipFire = 0.5
SWEP.VisualRecoilDampingConstHipFire = 45
SWEP.VisualRecoilPositionBumpUpHipFire = .5

-- Accuracy and Spread
SWEP.Spread = 0.06
SWEP.SpreadAddHipFire = 0.015

SWEP.SpreadAddRecoil = 0.04
SWEP.SpreadAddMove = 0.04
SWEP.SpreadAddSights = 0

-- SWEP.SpreadMultSights = 0.001
SWEP.SpreadMultMove = 1

SWEP.RecoilDissipationRate = 5
SWEP.RecoilDissipationRateSights = 10
SWEP.RecoilResetTime = 0
SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 1

SWEP.RecoilModifierCapSights = 1

-- Weapon handling
SWEP.SpeedMult = 0.9 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.65 -- When aiming

SWEP.AimDownSightsTime = 0.5 -- Time it takes to fully enter ADS
SWEP.SprintToFireTime = 0.35 -- Time it takes to fully enter sprint

-- Shooting and Firemodes
SWEP.RPM = 400 -- How fast gun shoot

SWEP.Num = 8 -- How many bullets shot at once

SWEP.Firemodes = {
    { Mode = 1, -- Semi
	}
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
SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 60

-- Iron Sight and Sight Info
SWEP.IronSights = {
     Pos = Vector(-2.3, -3, 0.975),
     Ang = Angle(0, 0.2, 0),
     Magnification = 1.15,
     ViewModelFOV = 55,
}

SWEP.IronSightsHook = function(self) -- If any attachments equipped should alter Irons
    local attached = self:GetElements()

     -- if attached["uplp_ak_brl_su"] then
        -- return {
			 -- Pos = Vector(-2.3, -3, 0.8),
			 -- Ang = Angle(0.375, 0, -2.5),
			 -- Magnification = 1.15,
			 -- ViewModelFOV = 60,
        -- }
    -- end
	
     -- if attached["uplp_ak_brl_109"] then
        -- return {
			 -- Pos = Vector(-2.3, -3, 0.875),
			 -- Ang = Angle(0.34, 0, -2.5),
			 -- Magnification = 1.15,
			 -- ViewModelFOV = 60,
        -- }
    -- end
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
SWEP.DropMagazineModel = "models/weapons/arc9/uplp/vepr_mag_std.mdl"
SWEP.DropMagazineTime = 0.85
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(0, 0, 0)
SWEP.DropMagazineVelocity = Vector(0, 80, -80)

//// Sounds
local path556 = "weapons/arccw/xhr50/"

local pathsound = "uplp_temp/ak/"
local pathreloadsound = pathsound .. "reload/wpfoly_ak47_reload_"

local pathsoundshoot = "uplp_temp/molot/"
local shootsoundsupp = pathsoundshoot .. "shoot/suppressed/h1_wpn_supp_ar1_"
local shootsound = pathsoundshoot .. "shoot/wpn_h1_m1014_"

SWEP.ShootSound = {shootsound .. "shot_01.ogg",
shootsound .. "shot_02.ogg",
shootsound .. "shot_03.ogg",
shootsound .. "shot_04.ogg"}

SWEP.DistantShootSound = {shootsound .. "tail_ext_01.ogg"}

SWEP.ShootSoundSilenced = {shootsoundsupp .. "01.ogg",
shootsoundsupp .. "02.ogg",
shootsoundsupp .. "03.ogg",
shootsoundsupp .. "04.ogg"}

SWEP.DistantShootSoundSilenced = {pathsound .. "shoot/suppressed/wpn_tail_hol_smooth_01.ogg"}

SWEP.DropMagazineSounds = {path556 .. "magdrop.ogg"}

//// Animations
-- HideBones, BulletBones, etc.
SWEP.BulletBones = {
    [1] = "chamberround",
    [2] = "round1",
    [3] = "round2",
    [4] = "round3",
    [5] = "round4",
    [6] = "round5",
    [7] = "round6",
    [8] = "round7",
    [9] = "round8",
    [10] = "round9",
    [11] = "round10",
    [12] = "round11",
    [13] = "round12",
    [14] = "round13",
    [15] = "round14",
    [16] = "round15",
    [17] = "round16",
    [18] = "round17",
    [19] = "round18",
    [20] = "round19",
}

SWEP.HideBones = {
    "fakemag",
    "fakerounds",
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mag",
        "round1",
        "round2",
        "round3",
        "round4",
        "round5",
        "round6",
        "round7",
        "round8",
        "round9",
        "round10",
        "round11",
        "round12",
        "round13",
        "round14",
        "round15",
        "round16",
        "round17",
        "round18",
        "round19",
    },
    [2] = {
        "fakemag",
        "fakerounds",
    }
}

-- Animations
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
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
    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 6 / 30, c = ca, v = 0.8 },
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
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
			shootsound .. "boom_02.ogg",
			shootsound .. "boom_03.ogg",
			shootsound .. "boom_04.ogg",
			}, t = 0, v = 0.75 },
        },
    },

    ["fire_empty"] = {
        Source = "fire_empty",
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {
            { s = {
			shootsound .. "boom_02.ogg",
			shootsound .. "boom_03.ogg",
			shootsound .. "boom_04.ogg",
			}, t = 0, v = 0.75 },
        },
    },

    -- Reloads --

    ["reload"] = {
        Source = "reload",
		MinProgress= 0.75,
		-- Mult = 1.15,
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 20 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipin_v4.wav", t = 37.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "lift_v4.wav", t = 50 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
            {hide = 0, t = 0.25},
            {hide = 2, t = 0.86},
        },
        DropMagAt = 0.86,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress= 0.75,
		-- Mult = 1.15,
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 20 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipin_v4.wav", t = 37.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "chamber_v4.wav", t = 52.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "lift_v4.wav", t = 62.5 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
            {hide = 0, t = 0.25},
            {hide = 2, t = 0.86},
        },
        DropMagAt = 0.86,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 0.925, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    --LONG MAG--

    ["reload_long"] = {
        Source = "reload_long",
		MinProgress= 0.75,
		-- Mult = 1.15,
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 27.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipin_v4.wav", t = 50 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "lift_v4.wav", t = 60 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
            {hide = 0, t = 0.3},
            {hide = 2, t = 1.35},
        },
        DropMagAt = 1.35,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.7, lhik = 0 },
            { t = 0.925, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty_long"] = {
        Source = "reload_long_empty",
		MinProgress= 0.825,
		-- Mult = 1.15,
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 27.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipin_v4.wav", t = 50 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "chamber_v4.wav", t = 67.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "lift_v4.wav", t = 72.5 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
            {hide = 0, t = 0.3},
            {hide = 2, t = 1.35},
        },
        DropMagAt = 1.35,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 0.925, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    --DRUM MAG--

    ["reload_drum"] = {
        Source = "reload_drum",
		MinProgress= 0.75,
        MagSwapTime = 1.3,
		-- Mult = 1.15,
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 15 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipin_v4.wav", t = 55 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_grab.wav", t = 62.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "lift_v4.wav", t = 82.5 / 30, c = ca, v = 0.8 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 0.925, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty_drum"] = {
        Source = "reload_drum_empty",
		MinProgress= 0.85,
        MagSwapTime = 1.3,
		-- Mult = 1.15,
        EventTable = {
            { s = pathreloadsound .. "lift_v4.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 15 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipin_v4.wav", t = 55 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_grab.wav", t = 62.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "chamber_v4.wav", t = 87.5 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "lift_v4.wav", t = 95 / 30, c = ca, v = 0.8 },
            {hide = 0, t = 0.3},
            {hide = 2, t = 0.85},
        },
        DropMagAt = 0.85,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.85, lhik = 0 },
            { t = 0.95, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    ["1_inspect"] = {
        Source = {"look"},
        -- MinProgress = 0.1,
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
    ["1_inspect_empty"] = {
        Source = {"look_empty"},
        -- MinProgress = 0.1,
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
	
    ["1_inspect_long"] = {
        Source = {"look_long"},
        -- MinProgress = 0.1,
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
    ["1_inspect_long_empty"] = {
        Source = {"look_long_empty"},
        -- MinProgress = 0.1,
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
	
    ["1_inspect_drum"] = {
        Source = {"look_drum"},
        -- MinProgress = 0.1,
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

    ["inspect"] = {
        Source = {"check"},
        -- MinProgress = 0.1,
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
	
    ["inspect_empty"] = {
        Source = {"check_empty"},
        -- MinProgress = 0.1,
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
	
    ["inspect_long"] = {
        Source = {"check_long"},
        -- MinProgress = 0.1,
        FireASAP = true,
        EventTable = {
            { s = pathsound .. "inspect_01.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 14 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_grab.wav", t = 57.5 / 30, c = ca, v = 0.8 },
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
    ["inspect_long_empty"] = {
        Source = {"check_long_empty"},
        -- MinProgress = 0.1,
        FireASAP = true,
        EventTable = {
            { s = pathsound .. "inspect_01.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 14 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_grab.wav", t = 57.5 / 30, c = ca, v = 0.8 },
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
	
    ["inspect_drum"] = {
        Source = {"check_drum"},
        -- MinProgress = 0.1,
        FireASAP = true,
        EventTable = {
            { s = pathsound .. "inspect_01.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipout_v5.wav", t = 17 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_grab.wav", t = 62.5 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_03.wav", t = 65 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_02.wav", t = 120 / 30, c = ca, v = 0.8 },
            { s = pathreloadsound .. "clipin_v4.wav", t = 130 / 30, c = ca, v = 0.8 },
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

    ["toggle"] = {
        Source = "modeswitch",
        EventTable = {
            { s = {"eft_shared/weapon_light_switcher1.wav", "eft_shared/weapon_light_switcher2.wav", "eft_shared/weapon_light_switcher3.wav"}, t = 0 },
        }
    },
    ["toggle_empty"] = {
        Source = "modeswitch_empty",
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
    ["switchsights_empty"] = {
        Source = "modeswitch_empty",
        EventTable = {
            { s = {"eft_shared/weapon_light_switcher1.wav", "eft_shared/weapon_light_switcher2.wav", "eft_shared/weapon_light_switcher3.wav"}, t = 0 },
        }
    },
}


//// Attachments
local aaaaaa = {
    ["uplp_sg_shell_red"] = 6,
    ["uplp_sg_shell_blue"] = 7,
    ["uplp_sg_shell_black"] = 8,
    ["uplp_sg_shell_green"] = 9,
    ["uplp_sg_shell_orange"] = 10,
    ["uplp_sg_shell_yellow"] = 11,
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local eles = data.elements
    local mdl = data.model

    if eles["uplp_molot_mag_drum"] then -- many shells on drum
        for k, v in pairs(aaaaaa) do
            if eles[k] then
                mdl:SetBodygroup(6, v)
            end
        end
    end

    if eles["uplp_molot_hg_cool"] or eles["uplp_molot_hg_cool2"] then -- rail instead of handstop on hgs
        if wep:GetValue("LHIK") then
            mdl:SetBodygroup(4, 2)
        end
    end
    
    if eles["uplp_molot_brl_mini"] then
        if eles["uplp_molot_hg_tac"] then mdl:SetBodygroup(3, 6) end
        if eles["uplp_molot_hg_tac_b"] then mdl:SetBodygroup(3, 9) end
        if eles["uplp_molot_hg_tac_w"] then mdl:SetBodygroup(3, 12) end
        if eles["uplp_molot_hg_cool"] then mdl:SetBodygroup(3, 15) end
        if eles["uplp_molot_hg_cool2"] then mdl:SetBodygroup(3, 18) end
    elseif eles["uplp_molot_brl_micro"] then
        if eles["uplp_molot_hg_tac"] then mdl:SetBodygroup(3, 7) end
        if eles["uplp_molot_hg_tac_b"] then mdl:SetBodygroup(3, 10) end
        if eles["uplp_molot_hg_tac_w"] then mdl:SetBodygroup(3, 13) end
        if eles["uplp_molot_hg_cool"] then mdl:SetBodygroup(3, 16) end
        if eles["uplp_molot_hg_cool2"] then mdl:SetBodygroup(3, 19) end
    end
end

SWEP.AttachmentElements = {
	-- INTERNALS
    ["uplp_molot_bolt_light"] = { Bodygroups = { { 1, 2 } } },
    ["uplp_molot_bolt_heavy"] = { Bodygroups = { { 1, 1 } } },
    
	-- BARRELS
    -- ["uplp_molot_brl_std"] =    { Bodygroups = { { 2, 0 } } },
    ["uplp_molot_brl_long"] =   { Bodygroups = { { 2, 1 } }, AttPosMods = {[2] = { Pos = Vector(0, 1.75, 26.02) } } },
    ["uplp_molot_brl_compact"] ={ Bodygroups = { { 2, 2 } }, AttPosMods = {[2] = { Pos = Vector(0, 1.75, 18.28) } } },
    ["uplp_molot_brl_mini"] =   { Bodygroups = { { 2, 3 }, { 3, 20 } }, AttPosMods = {[2] = { Pos = Vector(0, 1.75, 18.45) } } },
    ["uplp_molot_brl_micro"] =  { Bodygroups = { { 2, 4 }, { 3, 21 } }, AttPosMods = {[2] = { Pos = Vector(0, 1.75, 17.35) } } },
    
	-- HANDGUARDS
    ["uplp_molot_hg_100"] =     { Bodygroups = { { 3, 1 } } },
    ["uplp_molot_hg_wood"] =    { Bodygroups = { { 3, 2 } } },
    ["uplp_molot_hg_azen"] =     { Bodygroups = { { 3, 3 } } },
    ["uplp_molot_hg_azen_c"] =   { Bodygroups = { { 3, 4 } } },
    ["uplp_molot_hg_tac"] =     { Bodygroups = { { 3, 5 } } },
    ["uplp_molot_hg_tac_b"] =   { Bodygroups = { { 3, 8 } } },
    ["uplp_molot_hg_tac_w"] =   { Bodygroups = { { 3, 11 } } },
    ["uplp_molot_hg_cool"] =    { Bodygroups = { { 3, 14 }, { 4, 1 } } },
    ["uplp_molot_hg_cool2"] =   { Bodygroups = { { 3, 17 }, { 4, 1 } } },

	-- MAGAZINES
    ["uplp_molot_mag_long"] = { Bodygroups = { { 5, 1 } } },
    ["uplp_molot_mag_drum"] = { Bodygroups = { { 5, 2 } } },

	-- SHELLS
    ["uplp_sg_shell_red"] = { Bodygroups = { { 6, 0 } } },
    ["uplp_sg_shell_blue"] = { Bodygroups = { { 6, 1 } } },
    ["uplp_sg_shell_black"] = { Bodygroups = { { 6, 2 } } },
    ["uplp_sg_shell_green"] = { Bodygroups = { { 6, 3 } } },
    ["uplp_sg_shell_orange"] = { Bodygroups = { { 6, 4 } } },
    ["uplp_sg_shell_yellow"] = { Bodygroups = { { 6, 5 } } },
	
	
    -- PISTOL GRIPS
    ["uplp_ak_grip"] =       { Bodygroups = { { 7, 1 } } },
	
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_optic"),
        Category = {"uplp_optic_small", "uplp_optic_mid", "uplp_optic_big"},
        Bone = "body",
        Pos = Vector(0, -0.175, 1.5),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_muzzle"),
        Category = {"uplp_molot_muzzle"},
        Bone = "body",
        Pos = Vector(0, 1.75, 21.08),
        Ang = Angle(90, 90, 180),
        Installed = "uplp_sg_mz_vepr",
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_internals"),
        Category = {"uplp_molot_bolt"},
        Bone = "body",
        Pos = Vector(0.045, 1.25, 5.25),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_barrel"),
        Category = {"uplp_molot_barrel"},
        Bone = "body",
        Pos = Vector(0.045, 1.5, 13),
		Icon_Offset = Vector(-5, 0, 0.5),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_handguard"),
        Category = {"uplp_molot_handguard"},
        Bone = "body",
        Pos = Vector(0.045, 2.5, 16.5),
		Icon_Offset = Vector(-5, 0, 0.5),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_magazine"),
        Category = {"uplp_molot_mag"},
        Bone = "body",
        Pos = Vector(0.045, 6.5, 6.5),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_ammo"),
        Category = {"uplp_sg_ammo"},
        Bone = "body",
        Pos = Vector(0.045, 4, 5.5),
        Ang = Angle(90, 90, 180),
        Installed = "uplp_sg_shell_red",
        Integral = "uplp_sg_shell_red",
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_pistol_grip"),
        Category = {"uplp_ak_grip"},
		ActiveElements = {"uplp_ak_grip"},
        Bone = "body",
        RejectAttachments = {
		["uplp_ak_grip_molot"] = true,
		},
        Pos = Vector(0.045, 5, -1.1),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_stock"),
        Category = {"uplp_ak_stock"},
        RejectAttachments = {
		["uplp_ak_stock_fold"] = true,
		["uplp_ak_stock_underfold"] = true,
		["uplp_ak_stock_old"] = true
		},
        Bone = "body",
        Pos = Vector(0.045, 2.044, -3.0),
        Ang = Angle(90, 90, 180),
        Installed = "uplp_ak_stock_molot",
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_backup"),
        Category = {"uplp_backup_optic"},
        Bone = "body",
        Pos = Vector(0, -0.175, 0.5),
        Ang = Angle(90, 90, 180),
		ExcludeElements = {"uplp_no_backup"},
        CorrectiveAng = Angle(0, 0, 0),
		Icon_Offset = Vector(-1, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_backup"),
        Category = {"uplp_backup_optic_front"},
        Bone = "body",
        Pos = Vector(0, -0.175, 6.5),
        Ang = Angle(90, 90, 180),
        RequireElements = {"uplp_backup_optic_is"},
        Installed = "uplp_backup_optic_is_front",
        Integral = "uplp_backup_optic_is_front",
		Hidden = true,
    },
}