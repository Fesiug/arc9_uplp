AddCSLuaFile()
SWEP.Base = "arc9_uplp_base"
SWEP.Category = "ARC9 - Poly Arms"
SWEP.Spawnable = true

---- FUNDAMENTALS

SWEP.Slot = 1 -- Which slot the weapon is in; starts at 0

---- Name, Description, Class, Category and Trivia
SWEP.PrintName = ARC9:GetPhrase("uplp_weapon_m9")
SWEP.Description = ARC9:GetPhrase("uplp_weapon_m9_desc")

SWEP.Class = ARC9:GetPhrase("uplp_class_weapon_pistol") -- In the Customization Menu
SWEP.SubCategory = ARC9:GetPhrase("uplp_category_weapon_pistol") -- In the Spawnmenu

SWEP.Trivia = {
    [ ARC9:GetPhrase( "uplp_realname" ) ] = ARC9:GetPhrase("uplp_weapon_m9_real"),
    
    [ ARC9:GetPhrase( "uplp_manufacturer" ) ] = ARC9:GetPhrase( "uplp_weapon_m9_manufacturer" ),
    [ ARC9:GetPhrase( "uplp_caliber" ) ] = ARC9:GetPhrase( "uplp_caliber_9x19mm"),
    [ ARC9:GetPhrase( "uplp_mechanism" ) ] = ARC9:GetPhrase( "uplp_mechanism_delayed"),
    [ ARC9:GetPhrase( "uplp_country" ) ] = ARC9:GetPhrase( "uplp_country_italy" ),
    [ ARC9:GetPhrase( "uplp_year" ) ] = string.format( ARC9:GetPhrase("uplp_year_present"), "1976" ),
}

SWEP.Credits = {
    [ ARC9:GetPhrase( "uplp_lua" ) ] = "Moka",
    [ ARC9:GetPhrase( "uplp_assets" ) ] = "Darsu",
    [ ARC9:GetPhrase( "uplp_animations" ) ] = "Partexedd",
    [ ARC9:GetPhrase( "uplp_sounds" ) ] = "rzen1th",
    [ ARC9:GetPhrase( "uplp_general" ) ] = "Darsu",
}

SWEP.StandardPresets = {

}

---- Muzzle Effects, Shell Effects, Camera
SWEP.MuzzleParticle = "muzzleflash_1"
SWEP.MuzzleEffectQCA = 1

SWEP.TracerNum = 1
SWEP.TracerSize = 1

SWEP.ShellModel = "models/weapons/arc9/uplp/shells/shell_919.mdl"
SWEP.ShellScale = 1.2
SWEP.ShellPitch = 90

SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)

---- View & Worldmodel
SWEP.ViewModel = "models/weapons/arc9/c_uplp_beretta.mdl"
SWEP.WorldModel = "models/weapons/arc9/w_uplp_fn57.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.TPIKParentToSpine4 = true  
-- SWEP.WorldModelMirror = "models/weapons/arc9/c_uplp_deagle.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-8, 3, -4.5),
    Ang = Angle(0, 0, 180),
    TPIKPos = Vector(7, -7, -4),
    TPIKAng = Angle(-10, 65, 90),
    Scale = 1
}

SWEP.ViewModelFOVBase = 75

SWEP.BobSettingsMove =  {0.85, -0.45, 0.5,    0.9, -1.5, 1.15}
SWEP.BobSettingsSpeed = {0.9, 1, 0.92,    1, 0.92, 0.8}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC

---- Weapon Stats and Behaviour
-- Damage
SWEP.DamageMax = 28
SWEP.DamageMin = 16
SWEP.DamageType = DMG_BULLET

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
}

SWEP.Penetration = 40 -- Units of wood that can be penetrated
SWEP.ImpactForce = 8 -- How much kick things will have when hit

-- Range
SWEP.RangeMin = 10 / ARC9.HUToM
SWEP.RangeMax = 30 / ARC9.HUToM

-- Physical Bullets
SWEP.PhysBulletMuzzleVelocity = 625 * 39.37
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-- Magazine Info
SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1
SWEP.ClipSize = 15

-- Recoil
SWEP.Recoil = 1.5
SWEP.RecoilUp = 1
SWEP.RecoilSide = 0.9

SWEP.RecoilRandomUp = 0.4
SWEP.RecoilRandomSide = 0.75

SWEP.RecoilRise = 10
SWEP.MaxRecoilBlowback = 0
SWEP.RecoilPunch = 0
SWEP.RecoilAutoControl = 1.15

SWEP.RecoilMultSights = 0.95
SWEP.RecoilMultCrouch = 0.75

-- Visual Recoil
SWEP.VisualRecoil = 0.5
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilCenter = Vector(2, 11, 2)
SWEP.VisualRecoilUp = -0.15 -- Vertical tilt
SWEP.VisualRecoilSide = 0 -- Horizontal tilt
SWEP.VisualRecoilRoll = 10 -- Roll tilt
SWEP.VisualRecoilPunch = 2.5 -- How far back visual recoil moves the gun
SWEP.VisualRecoilDampingConst = 50
SWEP.VisualRecoilSpringMagnitude = 0.44
SWEP.VisualRecoilPositionBumpUp = .25

SWEP.VisualRecoilMultHipFire = 1
-- SWEP.VisualRecoilUpHipFire = 2
-- SWEP.VisualRecoilSideHipFire = -0.1
-- SWEP.VisualRecoilRollHipFire = 20
-- SWEP.VisualRecoilPunchHipFire = 2
-- SWEP.VisualRecoilDampingConstHipFire = 45
-- SWEP.VisualRecoilPositionBumpUpHipFire = .5

-- Accuracy and Spread
SWEP.Spread = 0.006
SWEP.SpreadAddHipFire = 0.015

SWEP.SpreadAddRecoil = 0.014
SWEP.SpreadAddMove = 0.008
SWEP.SpreadAddMidAir = 0.05

SWEP.SpreadMultSights = 1
SWEP.SpreadMultMove = 1

SWEP.RecoilDissipationRate = 3
SWEP.RecoilResetTime = 0.02
SWEP.RecoilPerShot = 1 / 3
SWEP.RecoilModifierCap = 1
SWEP.RecoilMax = 1

-- Weapon handling
SWEP.SpeedMult = 1 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.85 -- When aiming

SWEP.AimDownSightsTime = 0.2 -- Time it takes to fully enter ADS
SWEP.SprintToFireTime = 0.18 -- Time it takes to fully enter sprint

-- Shooting and Firemodes
SWEP.RPM = 550 -- How fast gun shoot

SWEP.Num = 1 -- How many bullets shot at once

SWEP.Firemodes = {
    { Mode = 1 }, -- Semi
}

SWEP.ShootPitch = 90
SWEP.ShootVol = 120

-- HoldType Info
SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "pistol"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeNPC = nil

-- NPC Info
SWEP.NPCWeaponType = "weapon_357"
SWEP.NPCWeight = 60

-- Iron Sight and Sight Info
SWEP.IronSights = {
     Pos = Vector(-1.92, -2, 0.79),
     Ang = Angle(0, 0.25, 0),
     Magnification = 1.1,
     ViewModelFOV = 70,
}

SWEP.PeekPos = Vector(-1, 1, -3)
SWEP.PeekAng = Angle(-0.25, 0.5, -40)

-- Customization Menu Info
SWEP.CustomizePos = Vector(14, 30, 2.5)
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizeRotateAnchor = Vector(14, -1.93, -3)

SWEP.CustomizeSnapshotPos = Vector(0, 5, 0)
SWEP.CustomizeSnapshotFOV = 70

-- Dropped Magazine
SWEP.ShouldDropMag = true
SWEP.ShouldDropMagEmpty = true
SWEP.DropMagazineModel = "models/weapons/arc9/uplp/fn57_mag_std.mdl"
SWEP.DropMagazineTime = 0.4*1.1
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(80, 90, 90)
SWEP.DropMagazineVelocity = Vector(0, -40, 0)

---- Sounds

local pathRZ = "uplp_rz/57/"
-- urbna!
local pathUT = "uplp_urban_temp/57/"
local pathUTC = "uplp_urban_temp/common/"
local pathUO = "uplp_unofficial/"


SWEP.ShootSound = {
    pathRZ .. "rzenith_57_outdoor1.ogg",
    pathRZ .. "rzenith_57_outdoor2.ogg",
    pathRZ .. "rzenith_57_outdoor3.ogg",
    pathRZ .. "rzenith_57_outdoor4.ogg",
    pathRZ .. "rzenith_57_outdoor5.ogg",
    pathRZ .. "rzenith_57_outdoor6.ogg",
}

SWEP.ShootSoundIndoor = {
    pathRZ .. "rzenith_57_indoor1.ogg",
    pathRZ .. "rzenith_57_indoor2.ogg",
    pathRZ .. "rzenith_57_indoor3.ogg",
    pathRZ .. "rzenith_57_indoor4.ogg",
    pathRZ .. "rzenith_57_indoor5.ogg",
    pathRZ .. "rzenith_57_indoor6.ogg",
}

SWEP.ShootSoundSilenced = {
    pathUT .. "ar57/fire-sup-01.ogg",
    pathUT .. "ar57/fire-sup-02.ogg",
    pathUT .. "ar57/fire-sup-03.ogg",
    pathUT .. "ar57/fire-sup-04.ogg",
    pathUT .. "ar57/fire-sup-05.ogg",
    pathUT .. "ar57/fire-sup-06.ogg",
}

SWEP.ShootSoundSilencedIndoor = SWEP.ShootSoundSilenced

SWEP.DistantShootSound = {
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-ext-01.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-ext-02.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-ext-03.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-ext-04.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-ext-05.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-ext-06.ogg",
}
SWEP.DistantShootSoundIndoor = {
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-01.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-02.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-03.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-04.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-05.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-06.ogg",
}

SWEP.DistantShootSoundSilenced = {
    pathUTC .. "generictails/sup-tail-01.ogg",
    pathUTC .. "generictails/sup-tail-02.ogg",
    pathUTC .. "generictails/sup-tail-03.ogg",
    pathUTC .. "generictails/sup-tail-04.ogg",
    pathUTC .. "generictails/sup-tail-05.ogg",
    pathUTC .. "generictails/sup-tail-06.ogg",
    pathUTC .. "generictails/sup-tail-07.ogg",
    pathUTC .. "generictails/sup-tail-08.ogg",
    pathUTC .. "generictails/sup-tail-09.ogg",
    pathUTC .. "generictails/sup-tail-10.ogg"
}

SWEP.DistantShootSoundSilencedIndoor = {
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-01.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-02.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-03.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-04.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-05.ogg",
    pathUTC .. "9mmtails/fire-dist-9x19-pistol-int-06.ogg",
}

SWEP.DropMagazineSounds = {
    pathUTC .. "smg_pistol_magdrop_1.ogg",
    pathUTC .. "smg_pistol_magdrop_2.ogg",
    pathUTC .. "smg_pistol_magdrop_3.ogg",
    pathUTC .. "smg_pistol_magdrop_4.ogg",
}

---- Animations
-- HideBones, BulletBones, etc.
SWEP.BulletBones = {
    [1] = "bullet1",
    [2] = "bullet2",
    [3] = "bullet3",
}

SWEP.HideBones = {
    -- "magb",
}

SWEP.ReloadHideBoneTables = {
    -- [1] = {
        -- "magb",
    -- },
    -- [2] = {
        -- "mag",
        -- "bullet1",
        -- "bullet2",
        -- "bullet3",
        -- "bullet4",
        -- "bullet5",
        -- "bullet6",
        -- "bullet7",
    -- },
    -- [3] = {
        -- "magb",
        -- "mag",
        -- "bullet1",
        -- "bullet2",
        -- "bullet3",
        -- "bullet4",
        -- "bullet5",
        -- "bullet6",
        -- "bullet7",
    -- }
}

local mechh = {
    pathUT .. "mech-01.ogg",
    pathUT .. "mech-02.ogg",
    pathUT .. "mech-03.ogg",
    pathUT .. "mech-04.ogg",
    pathUT .. "mech-05.ogg",
    pathUT .. "mech-06.ogg",
}

local UTCrattle = {
    pathUTC .. "pistol_rattle_1.ogg",
    pathUTC .. "pistol_rattle_2.ogg",
    pathUTC .. "pistol_rattle_3.ogg",
    pathUTC .. "pistol_rattle_4.ogg",
}

local thetoggle = {{
    s = {
        "arc9/toggles/flashlight_laser_toggle_off_01.ogg",
        "arc9/toggles/flashlight_laser_toggle_off_02.ogg",
        "arc9/toggles/flashlight_laser_toggle_off_03.ogg",
        "arc9/toggles/flashlight_laser_toggle_on_01.ogg",
        "arc9/toggles/flashlight_laser_toggle_on_02.ogg",
        "arc9/toggles/flashlight_laser_toggle_on_03.ogg",
    }, t = 0
}}

-- Animations
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        EventTable = {
            {hide = 1, t = 0},
        },
        -- Time = 0.1,
    },
    ["ready"] = {
        Source = "ready",
        Mult = 1.1,
        EventTable = {
            { s = pathUT .. "draw.ogg", t = 0 / 60, c = ca, v = 0.8 },
            { s = pathUT .. "slidepull.ogg", t = 5 / 60, c = ca, v = 0.8 },
            { s = pathUT .. "slidedrop.ogg", t = 13 / 60, c = ca, v = 0.8 },
            {s = pathUTC .. "cloth_4.ogg", t = 22 / 60},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = pathUT .. "draw.ogg", t = 0 / 60, c = ca, v = 0.8 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {
            { s = pathUT .. "draw.ogg", t = 0 / 60, c = ca, v = 0.8 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["holster"] = {
        Source = "holster",
		MinProgress = 0.5,
        EventTable = {
            {s = pathUTC .. "cloth_2.ogg", t = 0},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },    
    ["holster_empty"] = {
        Source = "holster_empty",
		MinProgress = 0.5,
        EventTable = {
            {s = pathUTC .. "cloth_2.ogg", t = 0},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },    

    ["fire"] = {
        Source = {"fire"},
        -- Time = 1,
        ShellEjectAt = 0.01,
        EventTable = { { s = mechh, t = 0 } },
    },

    ["fire_empty"] = {
        Source = "fire_empty",
        -- Time = 1,
        ShellEjectAt = 0.01,
        EventTable = { { s = mechh, t = 0 } },
    },

    -- Reloads --
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.55,
        Mult = 1.02,
        EventTable = {
            { s = pathUTC .. "pistol_rattle_2.ogg", t = 0 / 60, c = ca },
            { s = pathUT .. "magout1.ogg", t = 2 / 60, c = ca },
            { s = pathUTC .. "magpouch_pull_small.ogg", t = 4 / 60, v = 0.3 },
            { s = pathUT .. "magin.ogg", t = 22.5 / 60, c = ca },
            { s = UTCrattle, t = 30 / 60, c = ca },
            {hide = 1, t = 0},
            {hide = 0, t = 0.2},
            {hide = 2, t = 1.44}
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.7,
        Mult = 1.02,
        EventTable = {
            { s = pathUTC .. "pistol_rattle_2.ogg", t = 0 / 60, c = ca },
            { s = pathUT .. "magout1.ogg", t = 2 / 60, c = ca },
            { s = pathUTC .. "magpouch_pull_small.ogg", t = 4 / 60, v = 0.3 },
            { s = pathUT .. "magin.ogg", t = 22.5 / 60, c = ca },
            { s = pathUT .. "slide_rel_new.ogg", t = 47.5 / 60, c = ca },
            { s = UTCrattle, t = 60 / 60, c = ca },

            -- {hide = 1, t = 0},
            -- {hide = 3, t = 0.66},
            -- {hide = 1, t = 0.8},
            -- {hide = 1, t = 2},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    ["reload_ext"] = {
        Source = "reload_ext",
		MinProgress = 0.55,
        Mult = 1.05,
        EventTable = {
            { s = pathUTC .. "pistol_rattle_2.ogg", t = 0 / 60, c = ca },
            { s = pathUT .. "magout1.ogg", t = 2 / 60, c = ca },
            { s = pathUTC .. "magpouch_pull_small.ogg", t = 6 / 60, v = 0.3 },
            { s = pathUT .. "magin.ogg", t = 22.5 / 60, c = ca },
            { s = UTCrattle, t = 60 / 60, c = ca },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["reload_empty_ext"] = {
        Source = "reload_empty_ext",
		MinProgress = 0.7,
        Mult = 1.05,
        EventTable = {
            { s = pathUTC .. "pistol_rattle_2.ogg", t = 0 / 60, c = ca },
            { s = pathUT .. "magout1.ogg", t = 2 / 60, c = ca },
            { s = pathUTC .. "magpouch_pull_small.ogg", t = 6 / 60, v = 0.3 },
            { s = pathUT .. "magin.ogg", t = 27.5 / 60, c = ca },
            { s = pathUT .. "slide_rel_new.ogg", t = 50 / 60, c = ca },
            { s = pathUTC .. "magpouch_replace_small.ogg", t = 70 / 60, c = ca },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },

    -- Inspecc --

    ["inspect"] = {
        Source = "inspect",
        EventTable = {
            { s = pathUTC .. "cloth_2.ogg", t = 5 / 30, c = ca },
            { s = pathUTC .. "movement-pistol-02.ogg", t = 52 / 30, c = ca },
            { s = pathUTC .. "cloth_4.ogg", t = 56 / 30, c = ca, v = 0.5 },
            { s = pathUTC .. "cloth_1.ogg", t = 92 / 30, c = ca },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },  
    ["inspect_empty"] = {
        Source = "inspect_empty",
        EventTable = {
            { s = pathUTC .. "cloth_2.ogg", t = 5 / 30, c = ca },
            { s = pathUTC .. "movement-pistol-02.ogg", t = 52 / 30, c = ca },
            { s = pathUTC .. "cloth_4.ogg", t = 56 / 30, c = ca, v = 0.5 },
            { s = pathUTC .. "cloth_1.ogg", t = 92 / 30, c = ca },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.65, lhik = 0 },
            { t = 0.92, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },  

    ["toggle"] = {
        Source = "modeswitch",
        EventTable = thetoggle
    },
    ["toggle_empty"] = {
        Source = "modeswitch_empty",
        EventTable = thetoggle
    },
	
    ["switchsights"] = {
        Source = "modeswitch",
        EventTable = thetoggle
    },
    ["switchsights_empty"] = {
        Source = "modeswitch_empty",
        EventTable = thetoggle
    },
	
}

---- Attachments
SWEP.Hook_ModifyBodygroups = function(wep, data)
    local eles = data.elements
    local mdl = data.model

	if eles["uplp_optic_small"] then
		if eles["uplp_m9_receiver_raffica"] then
			mdl:SetBodygroup(1, 4)
		else
			mdl:SetBodygroup(1, 3)
		end
	end
	
	if eles["uplp_m9_mag_20"] then
		mdl:SetBodygroup(2, 2)
	end
	
	-- if eles["uplp_muzzle_pistol"] then mdl:SetBodygroup(5, 1) end
end

SWEP.AttachmentElements = {
    ["uplp_m9_receiver_raffica"] = { Bodygroups = { { 0, 1 }, { 1, 1 } }, AttPosMods = {
	[2] = { Pos = Vector(0, -0.9, -1.65), },
	}},
    ["uplp_m9_receiver_a3"] = { Bodygroups = { { 0, 2 } } },
    ["uplp_m9_receiver_a3t"] = { Bodygroups = { { 0, 3 }, { 2, 1 } } },
    ["uplp_m9_receiver_sc"] = { Bodygroups = { { 0, 4 }, { 1, 2 } } },
    ["uplp_m9_receiver_robocop"] = { Bodygroups = { { 0, 5 } } },
	
    -- ["uplp_m9_mag_20"] = { Bodygroups = { { 2, 2 } } },

    -- ["uplp_optic_tacrds"] = { AttPosMods = {
	-- [2] = { Pos = Vector(0, -0.9, -1.55), Scale = 1 },
	-- }},
	
}

-- local fuckthis = 0
-- SWEP.Hook_Think = function(swep)
	-- if fuckthis < CurTime() then
		-- fuckthis = CurTime() + 1
		-- local vm, wm = swep:GetVM(), swep:GetWM()
		-- if IsValid(vm) then vm:SetPoseParameter("raffica", 1) end -- different animations for raffica
		-- if IsValid(wm) then wm:SetPoseParameter("raffica", 1) end -- tpik
	-- end
-- end

local defatt = "arc9/def_att_icons/"
local defatt2 = "entities/uplp_attachements/def/"

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_receiver"),
        Category = {"uplp_m9_receiver"},
        Bone = "body",
        Pos = Vector(0, -1.25, 0.75),
        Ang = Angle(90, 90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_optic"),
        Category = {"uplp_optic_small"},
        DefaultIcon = Material(defatt .. "optic.png", "mips smooth"),
        Bone = "slide",
        Pos = Vector(0, -0.8, -1.8),
        ExtraSightDistance = 1,
        Ang = Angle(90, 90, 180),
		Scale = 1.2
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_muzzle"),
        Category = {"uplp_muzzle_pistol"},
        Bone = "body",
        Pos = Vector(0, -2.465, 7.75),
        Ang = Angle(90, 90, 180),
        Scale = 0.85
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_tactical"),
        Category = {"uplp_tac_pistol"},
        Bone = "body",
        Pos = Vector(0, -1.05, 6),
        Ang = Angle(90, 90, 0),
		RequireElements = {"uplp_can_tac"},
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_magazine"),
        Category = {"uplp_m9_mag"},
        Bone = "body",
        Pos = Vector(0, 1.5, 0.25),
        Ang = Angle(90, 90, 0),
    },
 
    -- Cosmetic shit
    {
        PrintName = ARC9:GetPhrase("uplp_category_charm"),
        Category = "charm",
        Bone = "slide",
        Pos = Vector(0.625, 0.05, 3),
        Ang = Angle(90, 0, -90),
    },
}