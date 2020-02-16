-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

	-- Load and initialize the include file.
	include('Mote-Include.lua')
	include('organizer-lib.lua') 
	include('no_interruptions.lua')
	
	rangedDelay = 600
    cast_speed = 1.0
    holdMovement = 0
    require('string')
end


-- Setup vars that are user-independent.
function job_setup()
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

function user_setup()
    state.OffenseMode:options('TP', 'DT', 'Clubs')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('idleRefresh', 'DT', 'Nuke')

	send_command ('bind numpad9 send @all input /follow Shiraj')	

	select_default_macro_book(1,3)
end


function init_gear_sets()
    sets.enmity = {
    ammo="Sapience Orb",
    head="Halitus Helm",
    body="Emet Harness +1",
    hands="Kurys Gloves",
    legs="Eri. Leg Guards +1",
    feet="Ahosi Leggings",
    neck="Warder's Charm",
    waist="Trance Belt",
    left_ear="Friomisi Earring",
    right_ear="Loquac. Earring",
    left_ring="Supershear Ring",
    right_ring="Begrudging Ring",
    back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Parrying rate+5%',}},
	}
	
	sets.Macc = {
		ammo="Pemphredo Tathlum",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+1','AGI+6','Mag. Acc.+15',}},
		feet="Skaoi Boots",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Hermetic Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}
	
	sets.Nuking = {
	ammo="Pemphredo Tathlum",
    head="Jhakri Coronal +2",
    body={ name="Amalric Doublet +1", augments={'MP+80','"Mag.Atk.Bns."+25','"Fast Cast"+4',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Hermetic Earring",
    right_ear="Friomisi Earring",
    left_ring="Acumen Ring",
    right_ring="Freke Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.Cure = {		
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Vrikodara Jupon",
		hands="Weath. Cuffs +1",
		legs="Eri. Leg Guards +1",
		feet={ name="Taeon Boots", augments={'Phalanx +2',}},
		neck="Loricate Torque +1",
		waist="Siegel Sash",
		left_ear="Roundel Earring",
		right_ear="Mendi. Earring",
		left_ring="Asklepian Ring",
		right_ring="Weather. Ring",
		back="Solemnity Cape",}
		
	
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs
    sets.precast.JA['Provoke'] = sets.enmity
	

	-- Fast cast sets for spells
    sets.precast.FC = {
		ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Vrikodara Jupon",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Pinga Pants",
		feet="Carmine Greaves",
		neck="Loricate Torque +1",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Etiolation Earring",
		left_ring="Weather. Ring",
		right_ring="Kishar Ring",
		back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
		}
		
			-- Fast Cast: 51% / -21% Enhancing Magic Casting Time / 36% Inspiration
			
    sets.precast.FC['Utsusemi: Ichi'] = set_combine(sets.precast.FC, {
		neck=''})
		
    sets.precast.FC['Utsusemi: Ni'] = set_combine(sets.precast.FC['Utsusemi: Ichi'], {})
-- 

	-- Weaponskill sets
    sets.precast.WS['Hexastrike'] = {
		ammo="Ginsen",
		head={ name="Lilitu Headpiece", augments={'STR+9','DEX+9','Attack+13','Weapon skill damage +2%',}},
		body={ name="Herculean Vest", augments={'Rng.Atk.+14','Pet: Haste+2','Weapon skill damage +8%','Accuracy+5 Attack+5',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Petrov Ring",
		right_ring="Ilabrat Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
		}
		
    sets.precast.WS['Hexastrike'].Acc = set_combine(sets.precast.WS['Hexastrike'].Normal, 
        {ammo="Floestone"})
		
    sets.precast.WS['Chant du Cygne'] = {
		ammo="Ginsen",
		head={ name="Dampening Tam", augments={'DEX+9','Accuracy+13','Mag. Acc.+14','Quadruple Attack +2',}},
		body="Abnoba Kaftan",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Attack+12','"Triple Atk."+3','STR+4','Accuracy+14',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Begrudging Ring",
		right_ring="Ilabrat Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
		}
		
    sets.precast.WS['Chant du Cygne'].Acc = set_combine(sets.precast.WS['Chant du Cygne'].Normal, 
        {ammo="Jukukik Feather"})
		
    sets.precast.WS['Flat Blade'] = {
		ammo="Seething Bomblet",
		head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+24','Crit.hit rate+2','STR+3','Mag. 	Acc.+15',}},
		body={ name="Herculean Vest", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+4%','STR+7',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+1%',}},
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hermetic Earring",
		left_ring="Mujin Band",
		right_ring="Acumen Ring",
		back={ name="Ogma's cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+3',}},}
		
		
	sets.precast.WS['Swift Blade'] = {
		ammo="Seething Bomblet +1", 
		head="Adhemar Bonnet", 
		neck="Fotia Gorget", 
		ear1="Moonshade Earring", 
		ear2="Sherida Earring",
        body="Adhemar Jacket", 
		hands={ name="Herculean Gloves", augments={'Accuracy+25 Attack+25','Magic dmg. taken -2%','STR+14',}}, 
		ring1="Shukuyu Ring", 
		ring2="Niqmaddu Ring", 
		feet={ name="Herculean Boots", augments={'Accuracy+29','STR+15','Attack+12',}},
		back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}}, waist="Fotia Belt", 
		legs="Meghanada Chausses +2"}
		
	sets.precast.WS['Savage Blade'] = {
		ammo="Ginsen",
		head={ name="Lilitu Headpiece", augments={'STR+9','DEX+9','Attack+13','Weapon skill damage +2%',}},
		body={ name="Herculean Vest", augments={'Rng.Atk.+14','Pet: Haste+2','Weapon skill damage +8%','Accuracy+5 Attack+5',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Petrov Ring",
		right_ring="Ilabrat Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
		}
	sets.precast.WS['Sanguine Blade'] = sets.Nuking
		
    sets.precast.WS['Requiescat'] = {
		ammo="Seething Bomblet +1",
		head="Adhemar Bonnet",
		neck="Fotia Gorget", 
		ear1="Telos Earring", 
		ear2="Moonshade Earring",
		body="Adhemar Jacket",
		hands="Meghanada Gloves +2",
		ring1="Rufescent Ring",
		ring2="Leviathan Ring",
		back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10',}},waist="Fotia Belt",
		legs="Meghanada Chausses +2",
		feet="Runeist's Boots +3"}
		
		
	sets.precast.WS['Judgment'] = {
		ammo="Ginsen",
		head={ name="Lilitu Headpiece", augments={'STR+9','DEX+9','Attack+13','Weapon skill damage +2%',}},
		body={ name="Herculean Vest", augments={'Rng.Atk.+14','Pet: Haste+2','Weapon skill damage +8%','Accuracy+5 Attack+5',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Petrov Ring",
		right_ring="Ilabrat Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
		}
		
	sets.precast.WS['True Strike'] = {
		ammo="Ginsen",
		head={ name="Lilitu Headpiece", augments={'STR+9','DEX+9','Attack+13','Weapon skill damage +2%',}},
		body={ name="Herculean Vest", augments={'Rng.Atk.+14','Pet: Haste+2','Weapon skill damage +8%','Accuracy+5 Attack+5',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Petrov Ring",
		right_ring="Ilabrat Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
		}
	
	--------------------------------------
	-- Midcast sets
	--------------------------------------
	
    sets.midcast.FastRecast = {}
    sets.midcast['Enhancing Magic'] = {
		head="Telchine Cap", 
		ear1="Odnowa Earring", 
		ear2="Odnowa Earring +1", 
		hands="Telchinechine Gloves", 
		body="Futhark Coat +2",
	    neck="Incanter's Torque", 
		waist="Olympus Sash", 
		legs="Telchine Braconi", 
		feet="Telchine Pigaches", 
		back="Evasionist's Cape"}
		
    sets.midcast['Phalanx'] = set_combine(sets.midcast['Enhancing Magic'], {
		head={ name="Fu. Bandeau +3", augments={'Enhances "Battuta" effect',}},
		body={ name="Taeon Tabard", augments={'Phalanx +3',}},
		hands={ name="Taeon Gloves", augments={'Phalanx +3',}},
		legs={ name="Taeon Tights", augments={'Phalanx +2',}},
		feet={ name="Taeon Boots", augments={'Phalanx +2',}},})
    
	sets.midcast['Regen'] = {
		head="Runeist's Bandeau +3", 
		legs="Futhark Trousers +3", 
		hands="Kurys Gloves"}
    
	sets.midcast['Stoneskin'] = {
		waist="Siegel Sash"}
	
	sets.midcast['Flash'] = sets.enmity
	
	sets.midcast['Refresh'] = {
		head="Erilaz Galea +1", 
		legs="Futhark Trousers +3", 
		hands="Kurys Gloves"}
    
    sets.midcast.Cure = {
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Vrikodara Jupon",
		hands="Weath. Cuffs +1",
		legs="Eri. Leg Guards +1",
		feet={ name="Taeon Boots", augments={'Phalanx +2',}},
		neck="Loricate Torque +1",
		waist="Siegel Sash",
		left_ear="Roundel Earring",
		right_ear="Mendi. Earring",
		left_ring="Asklepian Ring",
		right_ring="Weather. Ring",
		back="Solemnity Cape",}
	
	sets.midcast['Wild Carrot'] = {
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Vrikodara Jupon",
		hands="Weath. Cuffs +1",
		legs="Eri. Leg Guards +1",
		feet={ name="Taeon Boots", augments={'Phalanx +2',}},
		neck="Loricate Torque +1",
		waist="Siegel Sash",
		left_ear="Roundel Earring",
		right_ear="Mendi. Earring",
		left_ring="Asklepian Ring",
		right_ring="Weather. Ring",
		back="Solemnity Cape",}
	
	sets.midcast['Healing Breeze'] = {
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Vrikodara Jupon",
		hands="Weath. Cuffs +1",
		legs="Eri. Leg Guards +1",
		feet={ name="Taeon Boots", augments={'Phalanx +2',}},
		neck="Loricate Torque +1",
		waist="Siegel Sash",
		left_ear="Roundel Earring",
		right_ear="Mendi. Earring",
		left_ring="Asklepian Ring",
		right_ring="Weather. Ring",
		back="Solemnity Cape",}
	
	sets.midcast['Geist Wall'] = sets.enmity
	
	sets.midcast['Blank Gaze'] = sets.enmity
	
	sets.midcast['Jettatura'] = sets.enmity
	
	sets.midcast['Soporific'] = sets.enmity
	
	sets.midcast['Sheep Song'] = sets.enmity
	
	sets.midcast['Subduction'] = sets.Nuking
	
	sets.midcast['Spectral Floe'] = sets.Nuking
	
	sets.midcast['Anvil Lightning'] = sets.Nuking

	sets.midcast['Tenebral Crush'] = sets.Nuking

	sets.midcast['Dark Orb'] = sets.Nuking
	
	sets.midcast['Dream Flower'] = sets.Macc
	
	sets.midcast['Entomb'] = sets.Nuking
	
	sets.midcast['Magic Fruit'] = sets.Cure
	
	
	
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {
		ammo="Staunch Tathlum +1",
		head="Rawhide Mask",
		body="Jhakri Robe +2",
		hands="Kurys Gloves",
		legs="Carmine Cuisses +1",
		feet="Erilaz Greaves +1",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Hearty Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring",
		back="Moonlight Cape",}
			
	sets.idleRefresh = {
		ammo="Staunch Tathlum +1",
		head="Rawhide Mask",
		body="Jhakri Robe +2",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+1%',}},
		feet="Ahosi Leggings",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring",
		back="Moonlight Cape",
		}

		
    sets.idle.DT = {
		ammo="Staunch Tathlum +1",
		head={ name="Dampening Tam", augments={'DEX+9','Accuracy+13','Mag. Acc.+14','Quadruple Attack +2',}},
		body="Ayanmo Corazza +2",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+1%',}},
		feet="Ahosi Leggings",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring",
		back="Moonlight Cape",
		}
		
	sets.idle.Nuke = {
		ammo="Staunch Tathlum +1", 
		head="Erilaz Galea +1", 
		neck="Loricate Torque +1", 
		ear1="Etiolation Earring", 
		ear2="Odnowa Earring +1",
        body="Futhark Coat +3", 
		hands="Kurys Gloves", 
		ring1="Defending Ring", 
		ring2="Moonbeam Ring",
        back="Evasionist's Cape", 
		waist="Engraved Belt", 
		legs="Futhark Trousers +3", 
		feet="Erilaz Greaves +1"}
           

	sets.Kiting = 
	{Legs="Carmine Cuisses +1",}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.TP = {
		ammo="Ginsen",
		head={ name="Dampening Tam", augments={'DEX+9','Accuracy+13','Mag. Acc.+14','Quadruple Attack +2',}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Attack+12','"Triple Atk."+3','STR+4','Accuracy+14',}},
		neck="Ainia Collar",
		waist="Kentarch Belt +1",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Ilabrat Ring",
		right_ring="Petrov Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-2%',}}, 
		}
	
	sets.engaged.DT = {
		ammo="Staunch Tathlum +1 +1",
		head={ name="Dampening Tam", augments={'DEX+9','Accuracy+13','Mag. Acc.+14','Quadruple Attack +2',}},
		body="Ayanmo Corazza +2",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+1%',}},
		feet="Ahosi Leggings",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring",
		back="Moonlight Cape",
		}
		
		sets.engaged.Clubs = {}
		 
		
		
		
	sets.engaged.CC = {
		ammo="Staunch Tathlum +1",
        head="Halitus Helm", 
		neck="Loricate Torque +1", 
		ear1="Odnowa Earring", 
		ear2="Odnowa Earring +1",
        body="Erilaz Surcoat +1", 
		hands="Turms Mittens", 
		ring1="Defending Ring", 
		ring2="Moonbeam Ring",
        back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}},
		waist="Flume Belt", 
		legs="Erilaz Leg Guards +1", 
		feet="Turms Leggings"}

		sets.engaged.HP = {
		ammo="Staunch Tathlum +1",
        head="Runeist's Bandeau +3", 
		neck="Loricate Torque +1", 
		ear1="Etiolation Earring", 
		ear2="Odnowa Earring +1",
        body="Runeist's Coat +3", 
		hands="Runeist's Mitons +3", 
		ring1="Defending Ring", 
		ring2="Moonbeam Ring", 
		back="Moonlight Cape", 
		waist="Flume Belt", 
		legs="Runeist's Trousers +3", 
		feet="Runeist's Boots +3"}
	
	organizer_items = {
      echos="Echo Drops",
	  curry="Red Curry Bun"}

end

------------------------------------------------------------------
-- Action events
------------------------------------------------------------------

-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.english == 'Lunge' or spell.english == 'Swipe' then
        local obi = get_obi(get_rune_obi_element())
        if obi then
            equip({waist=obi})
        end
    end
end

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'RUN' then
		set_macro_page(1, 3)
	elseif player.sub_job == 'NIN' then
		set_macro_page(1, 3)
	elseif player.sub_job == 'SAM' then
		set_macro_page(1, 3)
	else
		set_macro_page(1, 3)
	end
end

function get_rune_obi_element()
    weather_rune = buffactive[elements.rune_of[world.weather_element] or '']
    day_rune = buffactive[elements.rune_of[world.day_element] or '']
    
    local found_rune_element
    
    if weather_rune and day_rune then
        if weather_rune > day_rune then
            found_rune_element = world.weather_element
        else
            found_rune_element = world.day_element
        end
    elseif weather_rune then
        found_rune_element = world.weather_element
    elseif day_rune then
        found_rune_element = world.day_element
    end
    
    return found_rune_element
end

function get_obi(element)
    if element and elements.obi_of[element] then
        return (player.inventory[elements.obi_of[element]] or player.wardrobe[elements.obi_of[element]]) and elements.obi_of[element]
    end	
end


function job_precast(spell, action, spellMap, eventArgs)
    currentCast = spell.english
    if spell.type == 'Misc' then
        holdMovement = os.clock() + math.ceil((rangedDelay/106)*cast_speed)
    elseif spell.type == 'Item' then
        holdMovement = 0
    elseif spell.type == 'JobAbility' or spell.type == 'PetCommand' or spell.type == 'Scholar' or spell.cast_time == nil then
        holdMovement = 0
    else
        if spell.english == 'Stoneskin' then
            holdMovement = os.clock() + math.ceil((10*cast_speed))
        else
            holdMovement = os.clock() + math.ceil(((spell.cast_time)*cast_speed))
        end
    end
    
    
end

function job_aftercast(spell, action, spellMap, eventArgs)
    holdMovement = 0
end
