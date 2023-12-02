AddCSLuaFile()
SWEP.Base = "arc9_uplp_base"
SWEP.Category = "ARC9 - Poly Arms"
SWEP.Spawnable = true

---- FUNDAMENTALS

SWEP.Slot = 1 -- Which slot the weapon is in; starts at 0

---- Name, Description, Class, Category and Trivia
SWEP.PrintName = ARC9:GetPhrase("uplp_weapon_spas")
SWEP.Description = ARC9:GetPhrase("uplp_weapon_spas_desc")

SWEP.Class = ARC9:GetPhrase("uplp_class_weapon_shotgun") -- In the Customization Menu
SWEP.SubCategory = ARC9:GetPhrase("uplp_category_weapon_shotgun") -- In the Spawnmenu

SWEP.Trivia = {
    [ ARC9:GetPhrase( "uplp_realname" ) ] = ARC9:GetPhrase("uplp_weapon_spas_real"),

    [ ARC9:GetPhrase( "uplp_manufacturer" ) ] = ARC9:GetPhrase( "uplp_manufacturer_franchi" ),
    [ ARC9:GetPhrase( "uplp_caliber" ) ] = ARC9:GetPhrase( "uplp_caliber_12gauge"),
    [ ARC9:GetPhrase( "uplp_mechanism" ) ] = ARC9:GetPhrase( "uplp_mechanism_gasoperated" ) .. " / " .. ARC9:GetPhrase( "uplp_mechanism_gasoperated" ),
    [ ARC9:GetPhrase( "uplp_country" ) ] = ARC9:GetPhrase( "uplp_country_italy" ),
    [ ARC9:GetPhrase( "uplp_year" ) ] = string.format( ARC9:GetPhrase("uplp_year_present"), "1979" ),
}

SWEP.Credits = {
    [ ARC9:GetPhrase( "uplp_lua" ) ] = "Moka, 8Z",
    [ ARC9:GetPhrase( "uplp_assets" ) ] = "TastyTony",
    [ ARC9:GetPhrase( "uplp_animations" ) ] = "Partexedd, Darsu",
    [ ARC9:GetPhrase( "uplp_sounds" ) ] = "rzen1th",
    [ ARC9:GetPhrase( "uplp_general" ) ] = "Darsu",
}
SWEP.StandardPresets = {

}


---- Muzzle Effects, Shell Effects, Camera
SWEP.MuzzleParticle = "muzzleflash_m3"
SWEP.MuzzleEffectQCA = 1

SWEP.TracerNum = 1
SWEP.TracerSize = 1

SWEP.ShellModel = "models/weapons/arc9/uplp/shells/shell_red.mdl"
SWEP.ShellScale = 1.3
SWEP.ShellPitch = 90
SWEP.ShellSounds = {
    "arc9/casings/casing_12ga_1.wav",
    "arc9/casings/casing_12ga_2.wav",
    "arc9/casings/casing_12ga_3.wav",
    "arc9/casings/casing_12ga_4.wav",
    "arc9/casings/casing_12ga_1.wav",
    "arc9/casings/casing_12ga_2.wav",
    "arc9/casings/casing_12ga_3.wav",
    "arc9/casings/casing_12ga_4.wav",
}

SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)

---- View & Worldmodel
SWEP.ViewModel = "models/weapons/arc9/c_uplp_spas.mdl"
-- SWEP.WorldModel = "models/weapons/arc9/w_uplp_spas.mdl"
SWEP.WorldModel = "models/weapons/arc9/w_uplp_molot.mdl"

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

SWEP.ViewModelFOVBase = 66

SWEP.BobSettingsMove =  {0.85, -0.45, 0.5,    0.9, -1.5, 1.15}
SWEP.BobSettingsSpeed = {0.9, 1, 0.92,    1, 0.92, 0.8}

SWEP.ActivePos = Vector(-0.1, -1, -0.6)
SWEP.ActiveAng = Angle(0, 0, -0)

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC

---- Weapon Stats and Behaviour
-- Damage
SWEP.DamageMax = 120
SWEP.DamageMin = 48
SWEP.DistributeDamage = true
SWEP.HeadshotDamage = 1
SWEP.DamageType = DMG_BULLET + DMG_BUCKSHOT

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

SWEP.Penetration = 2 -- Units of wood that can be penetrated
SWEP.ImpactForce = 3 -- How much kick things will have when hit

-- Range
SWEP.RangeMin = 3 / ARC9.HUToM
SWEP.RangeMax = 30 / ARC9.HUToM

-- Physical Bullets
SWEP.PhysBulletMuzzleVelocity = 420 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 2

-- Magazine Info
SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 1
SWEP.ClipSize = 8

-- Recoil
SWEP.Recoil = 1 + 1
SWEP.RecoilUp = 1.75
SWEP.RecoilSide = 1.4

-- Additional recoil when firing rapidly
SWEP.RecoilMultRecoil = 2

SWEP.RecoilRandomUp = 1.1
SWEP.RecoilRandomSide = 1.25

SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.RecoilPunch = 0
SWEP.RecoilAutoControl = 1.25

SWEP.RecoilMultSights = 1
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
SWEP.UseDispersion = true

SWEP.Spread = 0.04

SWEP.DispersionSpread = 0
SWEP.DispersionSpreadAddHipFire = 0.02

SWEP.DispersionSpreadAddRecoil = 0.05
SWEP.DispersionSpreadAddMove = 0.03
SWEP.DispersionSpreadAddMidAir = 0.05

SWEP.RecoilDissipationRate = 2
SWEP.RecoilResetTime = 0
SWEP.RecoilPerShot = 1 / 2
SWEP.RecoilMax = 1
SWEP.RecoilModifierCap = 1

-- Weapon handling
SWEP.SpeedMult = 0.8 + 0.05 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.65 / 0.85 -- When aiming

SWEP.AimDownSightsTime = 0.45 - 0.1 -- Time it takes to fully enter ADS
SWEP.SprintToFireTime = 0.42 - 0.1 -- Time it takes to fully enter sprint

SWEP.SwayAddSights = 1
SWEP.BarrelLength = 42

-- Shooting and Firemodes
SWEP.RPM = 1300 -- How fast gun shoot 

SWEP.Num = 8 -- How many bullets shot at once

SWEP.Firemodes = {
    { Mode = 1, -- Semi
    }
}

SWEP.ShootPitch = 90
SWEP.ShootVolume = 120

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



-- Customization Menu Info
SWEP.CustomizePos = Vector(15, 32.5, 5)
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizeRotateAnchor = Vector(15, -2, -3)

SWEP.CustomizeSnapshotPos = Vector(0, 5, 0)
SWEP.CustomizeSnapshotFOV = 90

-- Dropped Magazine
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false 
-- SWEP.DropMagazineModel = "models/weapons/arc9/uplp/deagle_mag_std.mdl"
-- SWEP.DropMagazineTime = 0.66
-- SWEP.DropMagazineQCA = 4
-- SWEP.DropMagazinePos = Vector(0, 0, 0)
-- SWEP.DropMagazineAng = Angle(80, 90, 90)
-- SWEP.DropMagazineVelocity = Vector(0, -40, 0)

---- Sounds

-- urbna!
local pathUT = "uplp_urban_temp/vepr/"
local pathUTC = "uplp_urban_temp/common/"


SWEP.ShootSound = {
    pathUT .. "fire-01.ogg",
    pathUT .. "fire-02.ogg",
    pathUT .. "fire-03.ogg",
    pathUT .. "fire-04.ogg",
    pathUT .. "fire-05.ogg",
    pathUT .. "fire-06.ogg",
}

SWEP.ShootSoundSilenced = {
    pathUT .. "fire-sup-01.ogg",
    pathUT .. "fire-sup-02.ogg",
    pathUT .. "fire-sup-03.ogg",
    pathUT .. "fire-sup-04.ogg",
    pathUT .. "fire-sup-05.ogg",
    pathUT .. "fire-sup-06.ogg",
}

SWEP.ShootSoundSilencedIndoor = SWEP.ShootSoundSilenced

SWEP.DistantShootSound = {
    pathUTC .. "12gatails/fire-dist-12ga-pasg-ext-01.ogg",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-ext-02.ogg",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-ext-03.ogg",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-ext-04.ogg",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-ext-05.ogg",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-ext-06.ogg",
}
SWEP.DistantShootSoundIndoor = {
    pathUTC .. "12gatails/fire-dist-12ga-pasg-int-01.ogg",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-int-02.ogg",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-int-03.ogg",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-int-04.ogg",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-int-05.ogg",
    pathUTC .. "12gatails/fire-dist-12ga-pasg-int-06.ogg",
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
    pathUTC .. "generictails/fire-dist-int-pistol-light-01.ogg",
    pathUTC .. "generictails/fire-dist-int-pistol-light-02.ogg",
    pathUTC .. "generictails/fire-dist-int-pistol-light-03.ogg",
    pathUTC .. "generictails/fire-dist-int-pistol-light-04.ogg",
    pathUTC .. "generictails/fire-dist-int-pistol-light-05.ogg",
    pathUTC .. "generictails/fire-dist-int-pistol-light-06.ogg",
}


---- Animations
-- HideBones, BulletBones, etc.
SWEP.BulletBones = {
    [1] = "bullet2",
}

SWEP.HideBones = {
--     "magb",
}

SWEP.ReloadHideBoneTables = {
    -- [1] = {
    --     "magb",
    -- },
    -- [2] = {
    --     "mag",
    --     "bullet1",
    --     "bullet2",
    --     "bullet3",
    --     "bullet4",
    --     "bullet5",
    --     "bullet6",
    --     "bullet7",
    -- },
    -- [3] = {
    --     "magb",
    --     "mag",
    --     "bullet1",
    --     "bullet2",
    --     "bullet3",
    --     "bullet4",
    --     "bullet5",
    --     "bullet6",
    --     "bullet7",
    -- }
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

SWEP.ShotgunReload = true
SWEP.ManualAction = true
SWEP.ManualActionNoLastCycle = true
SWEP.ManualActionEjectAnyway = false

SWEP.Hook_TranslateAnimation = function(swep, anim)
    -- local elements = swep:GetElements()
    
    if !IsValid(swep:GetOwner()) then return end

    if anim == "reload_start" then
        if swep:Clip1() == 0 and swep:GetOwner():GetAmmoCount(swep.Ammo) <= 1 then 
            swep.dontcontinuereload = true
            return "reload_start_empty_only"
        end
    elseif anim == "reload_finish" or anim == "reload_insert" then
        if swep.dontcontinuereload then
            swep.dontcontinuereload = nil
            return "idle"
        end
    end

    return anim
end

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
            { s = "uplp_urban_temp/57/draw.ogg", t = 0 / 60, c = ca, v = 0.8 },
            { s = pathUTC .. "raise.ogg", t = 0 / 60, c = ca },
            { s = pathUT .. "slidepull.ogg", t = 11 / 60, c = ca },
            { s = pathUT .. "chamber.ogg", t = 21 / 60, c = ca },
            { s = pathUTC .. "cloth_4.ogg", t = 29 / 60, c = ca },
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
            { s = "uplp_urban_temp/57/draw.ogg", t = 0 / 60, c = ca, v = 0.8 },
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
            { s = pathUTC .. "rattle2.ogg", t = 0 / 60, c = ca },
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
            { s = "uplp_urban_temp/57/draw.ogg", t = 0 / 60, c = ca, v = 0.8 },
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
            { s = pathUTC .. "rattle2.ogg", t = 0 / 60, c = ca },
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
        Source = "fire",
        -- Time = 1,
        ShellEjectAt = 0.01,
        EventTable = { { s = mech, t = 0 } },
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        -- Time = 1,
        ShellEjectAt = 0.01,
        EventTable = { { s = mech, t = 0 } },
    },

    ["cycle"] = {
        Source = "cycle",
        -- MinProgress = 0.55,
        EventTable = {
            -- { s = pathUTC .. "magpouch_pull_small.ogg", t = 0.0, v = 0.6 },
        },
    },

    -- Reloads --

    ["reload_start"] = {
        Source = "reload_start",
        RestoreAmmo = 1,
        -- MinProgress = 0.55,
        EventTable = {
            -- { s = pathUTC .. "magpouch_pull_small.ogg", t = 0.0, v = 0.6 },
            -- { s = pathUTC .. "pistol_rattle_2.ogg", t = 0 / 60, c = ca },
            -- { s = pathUT .. "magout.ogg", t = 12.5 / 60, c = ca },
            -- { s = pathUT .. "magin.ogg", t = 50 / 60, c = ca },
            -- { s = pathUTC .. "magpouch_replace_small.ogg", t = 70 / 60, c = ca },
            -- {hide = 1, t = 0},
            -- {hide = 0, t = 0.2},
            -- {hide = 2, t = 1.44}
        },
        IKTimeLine = {
            -- { t = 0, lhik = 1 },
            -- { t = 0.15, lhik = 0 },
            -- { t = 0.65, lhik = 0 },
            -- { t = 0.92, lhik = 1 },
            -- { t = 1, lhik = 1 },
        },
    },
    ["reload_start_empty"] = {
        Source = "reload_start_empty",
        RestoreAmmo = 2,
        -- MinProgress = 0.55,
        EventTable = {
            -- { s = pathUTC .. "magpouch_pull_small.ogg", t = 0.0, v = 0.6 },
            -- { s = pathUTC .. "pistol_rattle_2.ogg", t = 0 / 60, c = ca },
            -- { s = pathUT .. "magout.ogg", t = 12.5 / 60, c = ca },
            -- { s = pathUT .. "magin.ogg", t = 50 / 60, c = ca },
            -- { s = pathUTC .. "magpouch_replace_small.ogg", t = 70 / 60, c = ca },
            -- {hide = 1, t = 0},
            -- {hide = 0, t = 0.2},
            -- {hide = 2, t = 1.44}
        },
        IKTimeLine = {
            -- { t = 0, lhik = 1 },
            -- { t = 0.15, lhik = 0 },
            -- { t = 0.65, lhik = 0 },
            -- { t = 0.92, lhik = 1 },
            -- { t = 1, lhik = 1 },
        },
    },
    ["reload_insert"] = {
        Source = "reload_insert",
        -- MinProgress = 0.55,
        EventTable = {
            -- { s = pathUTC .. "magpouch_pull_small.ogg", t = 0.0, v = 0.6 },
            -- { s = pathUTC .. "pistol_rattle_2.ogg", t = 0 / 60, c = ca },
            -- { s = pathUT .. "magout.ogg", t = 12.5 / 60, c = ca },
            -- { s = pathUT .. "magin.ogg", t = 50 / 60, c = ca },
            -- { s = pathUTC .. "magpouch_replace_small.ogg", t = 70 / 60, c = ca },
            -- {hide = 1, t = 0},
            -- {hide = 0, t = 0.2},
            -- {hide = 2, t = 1.44}
        },
        IKTimeLine = {
            -- { t = 0, lhik = 1 },
            -- { t = 0.15, lhik = 0 },
            -- { t = 0.65, lhik = 0 },
            -- { t = 0.92, lhik = 1 },
            -- { t = 1, lhik = 1 },
        },
    },
    ["reload_finish"] = {
        Source = "reload_end",
        -- MinProgress = 0.55,
        EventTable = {
            -- { s = pathUTC .. "magpouch_pull_small.ogg", t = 0.0, v = 0.6 },
            -- { s = pathUTC .. "pistol_rattle_2.ogg", t = 0 / 60, c = ca },
            -- { s = pathUT .. "magout.ogg", t = 12.5 / 60, c = ca },
            -- { s = pathUT .. "magin.ogg", t = 50 / 60, c = ca },
            -- { s = pathUTC .. "magpouch_replace_small.ogg", t = 70 / 60, c = ca },
            -- {hide = 1, t = 0},
            -- {hide = 0, t = 0.2},
            -- {hide = 2, t = 1.44}
        },
        IKTimeLine = {
            -- { t = 0, lhik = 1 },
            -- { t = 0.15, lhik = 0 },
            -- { t = 0.65, lhik = 0 },
            -- { t = 0.92, lhik = 1 },
            -- { t = 1, lhik = 1 },
        },
    },
    ["reload_start_empty_only"] = {
        Source = "reload_start_empty_only",
        RestoreAmmo = 1,
        -- MinProgress = 0.55,
        EventTable = {
            -- { s = pathUTC .. "magpouch_pull_small.ogg", t = 0.0, v = 0.6 },
            -- { s = pathUTC .. "pistol_rattle_2.ogg", t = 0 / 60, c = ca },
            -- { s = pathUT .. "magout.ogg", t = 12.5 / 60, c = ca },
            -- { s = pathUT .. "magin.ogg", t = 50 / 60, c = ca },
            -- { s = pathUTC .. "magpouch_replace_small.ogg", t = 70 / 60, c = ca },
            -- {hide = 1, t = 0},
            -- {hide = 0, t = 0.2},
            -- {hide = 2, t = 1.44}
        },
        IKTimeLine = {
            -- { t = 0, lhik = 1 },
            -- { t = 0.15, lhik = 0 },
            -- { t = 0.65, lhik = 0 },
            -- { t = 0.92, lhik = 1 },
            -- { t = 1, lhik = 1 },
        },
    },

    -- Inspecc --

    ["inspect"] = {
        Source = "look",
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
        Source = "look_empty",
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
    -- if eles["uplp_ar15_reciever_m16"] or eles["uplp_ar15_reciever_45acp"] then
        -- if eles["uplp_optic_small"] or eles["uplp_optic_mid"] or eles["uplp_optic_big"] then
            -- mdl:SetBodygroup(1,1)
        -- end
    -- end
end

SWEP.AttachmentElements = {
    ["uplp_spas_short"] = { Bodygroups = { { 1, 1 }, { 2, 1 } } },
    ["uplp_spas_stock_fixed"] = { Bodygroups = { { 3, 1 } } },
    ["uplp_spas_stock_no"] = { Bodygroups = { { 3, 2 } } },
    ["uplp_spas_stock_folded"] = { Bodygroups = { { 3, 3 } } },
    -- ["uplp_spas_stock_hook"] = { Bodygroups = { { 4, 1 } } },

    ["uplp_spas_rail"] = { Bodygroups = { { 5, 1 } } },
    
    -- SHELLS
    ["uplp_sg_shell_red"] = { Bodygroups = { { 6, 0 } } },
    ["uplp_sg_shell_blue"] = { Bodygroups = { { 6, 1 } } },
    ["uplp_sg_shell_black"] = { Bodygroups = { { 6, 2 } } },
    ["uplp_sg_shell_green"] = { Bodygroups = { { 6, 3 } } },
    ["uplp_sg_shell_orange"] = { Bodygroups = { { 6, 4 } } },
    ["uplp_sg_shell_yellow"] = { Bodygroups = { { 6, 5 } } },
}

local defatt = "arc9/def_att_icons/"
local defatt2 = "entities/uplp_attachements/def/"

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_optic"),
        Category = {"uplp_optic_small", "uplp_optic_mid"},
        DefaultIcon = Material(defatt .. "optic.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0, -3, 5),
        ExtraSightDistance = 4,
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_barrel"),
        Category = {"uplp_deag_barrel"},
        DefaultIcon = Material(defatt2 .. "deagbr.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0, -2.75, 3.5),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_muzzle"),
        Category = {"uplp_deag_muzzle"},
        Bone = "body",
        Pos = Vector(0, -2.5, 10),
        Ang = Angle(90, 90, 180),
        ExcludeElements = {"nomuz"}
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_magazine"),
        Category = {"uplp_deag_mag"},
        DefaultIcon = Material(defatt .. "mag_pistol.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0, 2, 0.6),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_internals"),
        Category = {"uplp_deag_trig"},
        DefaultIcon = Material(defatt2 .. "trigger.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0, -0.5, 3),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_pistol_grip"),
        Category = {"uplp_deag_grip"},
        DefaultIcon = Material(defatt2 .. "argrip.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0, 0, 0.7),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_tactical"),
        Category = {"uplp_tac_pistol"},
        ExcludeElements = {"notac"},
        Bone = "body",
        Pos = Vector(0, -1.05, 7),
        Ang = Angle(90, 90, 0),
    },

    {
        Hidden = true,
        PrintName = ARC9:GetPhrase("uplp_category_optic"),
        DefaultIcon = Material(defatt .. "optic.png", "mips smooth"),
        Category = {"uplp_optic_direct"},
        Bone = "slide",
        Pos = Vector(0, -1.1, -0.85),
        Scale = 0.85,
        ExtraSightDistance = 2,
        Ang = Angle(90, 90, 180),
        MergeSlots = {1}
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_appearance"),
        Category = {"uplp_deagle_skin"},
        DefaultIcon = Material(defatt .. "skin.png", "mips smooth"),
        Bone = "body",
        Pos = Vector(0, 0, -1),
        Ang = Angle(90, 90, 180),
        CosmeticOnly = true,
    },



    -- Cosmetic shit
    {
        PrintName = ARC9:GetPhrase("uplp_category_sticker") .. " A",
        StickerModel = "models/weapons/arc9/uplp/stickers/deagle_1.mdl",
        Category = "stickers",
        Bone = "body",
        Pos = Vector(0.55, -2.5, 2),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_charm"),
        Category = "charm",
        Bone = "body",
        Pos = Vector(0.55, -1.9, 8.5),
        Ang = Angle(90, 0, -90),
    },
}

SWEP.HookP_NameChange = function(self, name)
    local att = self:GetElements()

    if att["uplp_deagle_skin_gold"] then
        name = ARC9:GetPhrase("uplp_weapon_deagle_gold")
    end

    return name
end