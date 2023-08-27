AddCSLuaFile()
SWEP.Base = "arc9_uplp_base"
SWEP.Category = "ARC9 - UPLP"
SWEP.Spawnable = true

//// FUNDAMENTALS

SWEP.Slot = 2 -- Which slot the weapon is in; starts at 0

//// Name, Description, Class, Category and Trivia
SWEP.PrintName = ARC9:GetPhrase("uplp_weapon_ar15")
SWEP.Description = ARC9:GetPhrase("uplp_weapon_ar15_desc")

SWEP.Class = ARC9:GetPhrase("uplp_class_weapon_ar") -- In the Customization Menu
SWEP.SubCategory = ARC9:GetPhrase("uplp_category_weapon_ar") -- In the Spawnmenu

SWEP.Trivia = {
    [ ARC9:GetPhrase( "uplp_manufacturer" ) ] = ARC9:GetPhrase( "uplp_manufacturer_uso" ),
    [ ARC9:GetPhrase( "uplp_caliber" ) ] = ARC9:GetPhrase( "uplp_caliber_5.56x45mm"),
    [ ARC9:GetPhrase( "uplp_mechanism" ) ] = string.format( ARC9:GetPhrase("uplp_mechanism_2" ), 
																		ARC9:GetPhrase( "uplp_mechanism_gasoperated" ),
																		ARC9:GetPhrase( "uplp_mechanism_rotatingbolt" ) ),
    [ ARC9:GetPhrase( "uplp_country" ) ] = ARC9:GetPhrase( "uplp_country_usa" ),
    [ ARC9:GetPhrase( "uplp_year" ) ] = string.format( ARC9:GetPhrase("uplp_year_present"), "1964" ),
}

SWEP.Credits = {
    [ ARC9:GetPhrase( "uplp_authors" ) ] = "Darsu | Moka",
    [ ARC9:GetPhrase( "uplp_assets" ) ] = "LIST ASSETS"
}

SWEP.StandardPresets = {

}

//// Muzzle Effects, Shell Effects, Camera
SWEP.MuzzleParticle = "muzzleflash_1"
SWEP.MuzzleEffectQCA = 1

SWEP.TracerNum = 1
SWEP.TracerSize = 1

SWEP.ShellModel = "models/weapons/arc9/uplp/shells/shell_762.mdl"
SWEP.ShellScale = 1.2
SWEP.ShellPitch = 90

SWEP.CaseEffectQCA = 2
SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)

//// View & Worldmodel
SWEP.ViewModel = "models/weapons/arc9/c_uplp_ar15.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
-- SWEP.WorldModelMirror = "models/weapons/arc9/c_uplp_ar15.mdl"
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
SWEP.DamageMax = 50 -- Damage dealt point-blank
SWEP.DamageMin = 30 -- Damage dealt after maximum range
SWEP.DamageType = DMG_BULLET

SWEP.Penetration = 30 -- Units of wood that can be penetrated
SWEP.ImpactForce = 8 -- How much kick things will have when hit

-- Range
SWEP.RangeMin = 75 * 39.37 -- How far in M the bullets go before starting to decrease in damage
SWEP.RangeMax = 200 * 39.37 -- How far in M the bullets need to go to deal DamageMin

-- Physical Bullets
SWEP.PhysBulletMuzzleVelocity = 715 * 39.37
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-- Magazine Info
SWEP.ChamberSize = 1
SWEP.ClipSize = 30

-- Recoil
SWEP.Recoil = 1.75
SWEP.RecoilUp = 0.7
SWEP.RecoilSide = 1.65

SWEP.RecoilRandomUp = 1
SWEP.RecoilRandomSide = 1.1

SWEP.RecoilRise = 0
SWEP.MaxRecoilBlowback = 0
SWEP.RecoilPunch = 0
SWEP.RecoilAutoControl = 1.75

SWEP.RecoilMultSights = 0.95
SWEP.RecoilMultCrouch = 0.75

-- Visual Recoil
SWEP.VisualRecoil = 0.5
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilCenter = Vector(2, 11, 2)
SWEP.VisualRecoilUp = -0.15 -- Vertical tilt
SWEP.VisualRecoilSide = -0.015 -- Horizontal tilt
SWEP.VisualRecoilRoll = 30 -- Roll tilt
SWEP.VisualRecoilPunch = 20 -- How far back visual recoil moves the gun
SWEP.VisualRecoilDampingConst = 80
SWEP.VisualRecoilSpringMagnitude = 0.44
SWEP.VisualRecoilPositionBumpUp = .25

SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilUpHipFire = 2
SWEP.VisualRecoilSideHipFire = -0.1
SWEP.VisualRecoilRollHipFire = 20
SWEP.VisualRecoilPunchHipFire = 2
SWEP.VisualRecoilDampingConstHipFire = 45
SWEP.VisualRecoilPositionBumpUpHipFire = .5

-- Accuracy and Spread
SWEP.Spread = 0
SWEP.SpreadAddHipFire = 0.02

SWEP.SpreadAddRecoil = 0.08
SWEP.SpreadAddMove = 0.04

SWEP.SpreadMultSights = 0.001
SWEP.SpreadMultMove = 1

SWEP.RecoilDissipationRate = 5
SWEP.RecoilDissipationRateSights = 10
SWEP.RecoilResetTime = 0
SWEP.RecoilPerShot = 0.25
SWEP.RecoilMax = 1

SWEP.RecoilModifierCapSights = 0.1

-- Weapon handling
SWEP.SpeedMult = 0.9 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.65 -- When aiming

SWEP.AimDownSightsTime = 0.5 -- Time it takes to fully enter ADS
SWEP.SprintToFireTime = 0.5 -- Time it takes to fully enter sprint

-- Shooting and Firemodes
SWEP.RPM = 800 -- How fast gun shoot

SWEP.Num = 1 -- How many bullets shot at once

SWEP.Firemodes = {
    { Mode = -1, -- Full
	PoseParam = 1 },
    { Mode = 1, -- Semi
	RecoilMult = 0.5,
	RPM = 555,
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
     Pos = Vector(-2.275, -3, 0.35),
     Ang = Angle(0.35, 0.125, -3),
     Magnification = 1.15,
     ViewModelFOV = 65,
}

SWEP.IronSightsHook = function(self) -- If any attachments equipped should alter Irons
    local attached = self:GetElements()

     if attached["uplp_ar15_rs_mbus"] or attached["uplp_ar15_rs_type1"] or attached["uplp_ar15_rs_type3"] then
		if (attached["uplp_ar15_fs_m4"] 
		or attached["uplp_ar15_fs_scalar"]
		or attached["uplp_ar15_fs_type2"]
		or attached["uplp_ar15_fs_utg"]
		or attached["uplp_ar15_gasblock_m16"]
		or attached["uplp_ar15_gasblock_m16rail"]
		) then
			return { -- if incorrect front size
				 Pos = Vector(-2.275, -3, 0.125),
				 Ang = Angle(0.35, 0.8, -3),
				 Magnification = 1.15,
				 ViewModelFOV = 65,
			}
		end
        return { -- if matching front size
			Pos = Vector(-2.275, -3, 0.225),
			Ang = Angle(0.35, 0.125, -3),
			Magnification = 1.15,
			ViewModelFOV = 65,
        }
    end

end

-- Customization Menu Info
SWEP.CustomizePos = Vector(12.5, 32.5, 5)
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizeRotateAnchor = Vector(12.5, -2, -3)

SWEP.CustomizeSnapshotPos = Vector(0, 5, 0)
SWEP.CustomizeSnapshotFOV = 90

-- Dropped Magazine
SWEP.ShouldDropMag = true
SWEP.ShouldDropMagEmpty = true
SWEP.DropMagazineModel = "models/weapons/arc9/uplp/ak762_mag_pmag.mdl"
SWEP.DropMagazineTime = 0.3
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 5, -3)
SWEP.DropMagazineAng = Angle(90, 90, 90)
SWEP.DropMagazineVelocity = Vector(0, 0, 2)

//// Sounds
local path = "weapons/arccw/xhr50/"
local pathDist = "weapons/arccw/hk416/"
local pathXC = "weapons/arccw/xcrm/"
local pathCSR = "weapons/arccw/csr338/"

local path556 = path

local pathsound = "uplp_temp/ak/"
local pathreloadsound = pathsound .. "reload/wpfoly_ak47_reload_"
local shootsoundsupp = pathsound .. "shoot/suppressed/h1_wpn_supp_ar1_"
local shootsound762 = pathsound .. "shoot/762/wpn_h1_ak47_"
local shootsound545 = pathsound .. "shoot/545/wpn_h1_ak74u_"
local shootsound556 = pathsound .. "shoot/556/wpn_h1_mp44_"
local shootsound308 = pathsound .. "shoot/308/wpn_h1_g3_"

SWEP.ShootSound = {path .. "fire-01.ogg", path .. "fire-02.ogg",
path .. "fire-03.ogg", path .. "fire-04.ogg",
path .. "fire-05.ogg", path .. "fire-06.ogg"}

SWEP.DistantShootSound = {path .. "fire-dist-01.ogg",
path .. "fire-dist-02.ogg",
path .. "fire-dist-03.ogg",
path .. "fire-dist-04.ogg",
path .. "fire-dist-05.ogg",
path .. "fire-dist-06.ogg"}

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
}

-- SWEP.HideBones = {
    -- "fakemag",
    -- "fakerounds",
    -- "bullet1",
    -- "bullet2",
    -- "bullet3",
    -- "bullet4",
-- }

-- SWEP.ReloadHideBoneTables = {
    -- [1] = {
        -- "mag",
        -- "fakerounds",
    -- },
    -- [2] = {
        -- "fakemag",
        -- "bullet1",
        -- "bullet2",
        -- "bullet3",
        -- "bullet4",
    -- }
-- }

-- Animations
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        IKTimeLine = { { t = 0, lhik = 1 } },
    },
    ["ready"] = {
        Source = "ready",
        EventTable = {
            { s = path .. "start.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = path .. "charge.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = path .. "end.ogg", t = 21 / 30, c = ca, v = 0.8 },
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
            { s = path .. "start.ogg", t = 0 / 30, c = ca, v = 0.8 },
            -- { s = path .. "charge.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = path .. "end.ogg", t = 21 / 30, c = ca, v = 0.8 },
        },
    },
    ["holster"] = {
        Source = "holster",
		MinProgress = 0.5,
        EventTable = {
            { s = path .. "start.ogg", t = 0 / 30, c = ca, v = 0.8 },
            -- { s = path .. "charge.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = path .. "end.ogg", t = 21 / 30, c = ca, v = 0.8 },
        },
        IKTimeLine = { { t = 0, lhik = 1 } },
    },    
    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {
            { s = path .. "start.ogg", t = 0 / 30, c = ca, v = 0.8 },
            -- { s = path .. "charge.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = path .. "end.ogg", t = 21 / 30, c = ca, v = 0.8 },
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
		MinProgress = 0.5,
        EventTable = {
            { s = path .. "start.ogg", t = 0 / 30, c = ca, v = 0.8 },
            -- { s = path .. "charge.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = path .. "end.ogg", t = 21 / 30, c = ca, v = 0.8 },
        },
        IKTimeLine = { { t = 0, lhik = 1 } },
    },


    ["fire"] = {
        Source = {"fire_01","fire_02","fire_03"},
        ShellEjectAt = 0.01,
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        ShellEjectAt = 0.01,
        IKTimeLine = { { t = 0, lhik = 1 } },
        EventTable = {{ s = "weapons/arccw/arx160/lowpolyarx160_empty.ogg", t = 0.03 }},
    },

    -- Reloads --

    ["reload"] = {
        Source = "reload",
        EventTable = {
            { s = path .. "start.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = path .. "magout_metal.ogg", t = 5 / 30, c = ca, v = 0.8 },
            { s = path .. "magdrop_metal.ogg", t = 11 / 30, c = ca, v = 1 },
            { s = path .. "magin_metal.ogg", t = 16 / 30, c = ca, v = 0.8 },
            { s = path .. "end.ogg", t = 27 / 30, c = ca, v = 0.8 },
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
        EventTable = {
            { s = path .. "start.ogg", t = 0 / 30, c = ca, v = 0.8 },
            { s = path .. "magout_metal.ogg", t = 5 / 30, c = ca, v = 0.8 },
            { s = path .. "magdrop_metal.ogg", t = 11 / 30, c = ca, v = 1 },
            { s = path .. "magin_metal.ogg", t = 16 / 30, c = ca, v = 0.8 },
            { s = path .. "chamber.ogg", t = 28 / 30, c = ca, v = 0.8 },
            { s = path .. "end.ogg", t = 36 / 30, c = ca, v = 0.8 },
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
        FireASAP = true,
		MinProgress = 0.925,
        EventTable = {
            { s = pathsound .. "inspect_01.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_03.wav", t = 40 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_02.wav", t = 70 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.825, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },    
    ["inspect_empty"] = {
        Source = "inspect_empty",
        FireASAP = true,
		MinProgress = 0.925,
        EventTable = {
            { s = pathsound .. "inspect_01.wav", t = 0 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_03.wav", t = 40 / 30, c = ca, v = 0.8 },
            { s = pathsound .. "inspect_02.wav", t = 70 / 30, c = ca, v = 0.8 },
            {hide = 1, t = 0},
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 0 },
            { t = 0.825, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },
    -- Firemodee -- 

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
    -- same
    ["firemode_1_empty"] = {
        Source = "firemode_0_empty",
    },
    ["firemode_2_empty"] = {
        Source = "firemode_1_empty",
    },
    ["toggle_empty"] = {
        Source = "modeswitch_empty",
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
SWEP.Hook_ModifyBodygroups = function(wep, data)
    local eles = data.elements
    local mdl = data.model
    if eles["uplp_ar15_reciever_m16"] or eles["uplp_ar15_reciever_45acp"] then
        if eles["uplp_optic_small"] or eles["uplp_optic_mid"] or eles["uplp_optic_big"] then
            mdl:SetBodygroup(1,1)
        end
    end
end

SWEP.AttachmentElements = {
	-- BARRELS
    ["uplp_ar15_barrel_10"] = { Bodygroups = { { 3, 1 } } },
    ["uplp_ar15_barrel_14"] = { Bodygroups = { { 3, 2 } } },
    ["uplp_ar15_barrel_20"] = { Bodygroups = { { 3, 3 } } },
    ["uplp_ar15_barrel_22"] = { Bodygroups = { { 3, 4 } } },

	-- RECEIVERS
    ["uplp_ar15_reciever_m16"] = { Bodygroups = { { 0, 1 } }, AttPosMods = {[2] = { Pos = Vector(0.045, -1.7, 1.5) }}},
    ["uplp_ar15_reciever_modern"] = { Bodygroups = { { 0, 3 } } },
	
    ["uplp_ar15_reciever_45acp"] = { Bodygroups = { { 0, 2 }, { 4, 4 } }, AttPosMods = {[2] = { Pos = Vector(0.045, -1.7, 1.5) }}},
    ["uplp_ar15_reciever_stm9"] = { Bodygroups = { { 0, 4 }, { 4, 3 } } },

    -- HANDGUARDS
    ["uplp_ar15_hg_risshort"] = { Bodygroups =      { { 2, 1 } } },
    ["uplp_ar15_hg_m16"] = { Bodygroups =           { { 2, 2 } } },
    ["uplp_ar15_hg_m16short"] = { Bodygroups =      { { 2, 3 } } },
    ["uplp_ar15_hg_grenadier"] = { Bodygroups =     { { 2, 4 } } },

    ["uplp_ar15_hg_tac"] = { Bodygroups =           { { 2, 5 } } },
    ["uplp_ar15_hg_tac_red"] = { Bodygroups =       { { 2, 6 } } },
    ["uplp_ar15_hg_tacshort"] = { Bodygroups =      { { 2, 7 } } },
    ["uplp_ar15_hg_tacshort_red"] = { Bodygroups =  { { 2, 8 } } },

    ["uplp_ar15_hg_mlok"] = { Bodygroups =          { { 2, 9 } } },
    ["uplp_ar15_hg_mlokshort"] = { Bodygroups =     { { 2, 10 } } },

    ["uplp_ar15_hg_nwsu_s15"] = { Bodygroups =      { { 2, 11 } } },
    ["uplp_ar15_hg_nwsu_s15_xl"] = { Bodygroups =   { { 2, 13 } } },
    ["uplp_ar15_hg_nwsu_s15_red"] = { Bodygroups =  { { 2, 12 } } },
    ["uplp_ar15_hg_nwsu_s15_xl_red"] = { Bodygroups={ { 2, 14 } } },
	
	-- PISTOL GRIPS
    ["uplp_ar15_pgrip"] = { Bodygroups={ { 5, 1 } } },
	
	-- CHARGING HANDLES
    ["uplp_ar15_chandle"] = { Bodygroups={ { 6, 1 } } },
	
	-- MAGAZINES
    ["uplp_ar15_mag"] = { Bodygroups={ { 7, 1 } } },
	
	-- OTHER
    ["uplp_ar15_stm9_magwell"] = { Bodygroups = { { 1, 2 } }},
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("uplp_category_sight_rear"),
        Category = {"uplp_ar15_rs"},
        ExcludeElements = {"uplp_ar15_reciever_m16", "uplp_ar15_reciever_45acp"},
        Bone = "body",
        Installed = "uplp_ar15_rs_m4",
        Pos = Vector(0.045, -0.2, 0.326),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_optic"),
        Category = {"uplp_optic_small", "uplp_optic_mid", "uplp_optic_big"},
        Bone = "body",
        CorrectiveAng = Angle(0.4, -0.4, 0),
        Pos = Vector(0.045, -0.1, 1.326),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_stock"),
        Category = {"uplp_ar15_stock", "uplp_ar15_stock_shorttube"},
        Bone = "body",
        Installed = "uplp_ar15_stock_m4",
        Pos = Vector(0.045, 0.99, -2.98),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_pistol_grip"),
        Category = {"uplp_ar15_pgrip"},
		ActiveElements = {"uplp_ar15_pgrip"},
        Bone = "body",
        RejectAttachments = {
		["uplp_ar15_pgrip_std"] = true,
		},
        Pos = Vector(0.045, 3.2, -0.56),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_charginghandle"),
        Category = {"uplp_ar15_chandle"},
        Bone = "chandle",
		ActiveElements = {"uplp_ar15_chandle"},
        RejectAttachments = {
		["uplp_ar15_chandle_std"] = true,
		},
        Pos = Vector(-0.01, 0.094, -0.05),
        Ang = Angle(90, 90, 180),
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_barrel"),
        Category = {"uplp_ar15_barrel"},
        Bone = "body",
        Pos = Vector(0.045, 0.633, 5.672),
        Ang = Angle(90, 90, 180),
        Integral = true,
        Installed = "uplp_ar15_barrel_10",
        Integral = "uplp_ar15_barrel_10",
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_handguard"),
        Category = {"uplp_ar15_hg"},
        Bone = "body",
        Pos = Vector(0.045, -0.2, 7.703),
        Ang = Angle(90, 90, 180),
        Icon_Offset = Vector(0, 0, -1),
        Integral = true,
        Installed = "uplp_ar15_hg_risshort",
        Integral = "uplp_ar15_hg_risshort",
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_receiver"),
        Category = {"uplp_ar15_reciever"},
        ExcludeElements = {"uplp_ar15_reciever_stm9", "uplp_ar15_reciever_45acp"},
        Bone = "body",
        RejectAttachments = {
		["uplp_ar15_reciever_m4"] = true,
		["uplp_ar15_reciever_stm9"] = true,
		["uplp_ar15_reciever_45acp"] = true,
		},
        Pos = Vector(0, 1, 2),
        Ang = Angle(90, 90, 180),
        Integral = false,
    },
    {
        PrintName = ARC9:GetPhrase("uplp_category_magazine"),
        Category = {"uplp_ar15_556_mag", "uplp_ar15_45_mag", "uplp_ar15_glock_mag"},
        RejectAttachments = {
		["uplp_ar15_mag_stanag30"] = true,
		},
        Bone = "mag",
        Pos = Vector(0.04, -2.406, -2.428),
        Ang = Angle(90, 90, 180),
        Icon_Offset = Vector(1.5, 0, -3),
    },
}