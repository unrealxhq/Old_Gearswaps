-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

	-- Load and initialize the include file.
	include('Mote-Include.lua')
	include('organizer-lib.lua') 
end


-- Setup vars that are user-independent.
function job_setup()
    -- Table of Staunch Tathlum +1
   
    -- entry = rune, index, expires
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

function user_setup()
    state.OffenseMode:options('LowAccTP', 'DT', 'HighAccTP')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('PetDT', 'DT')

	select_default_macro_book(1, 15)
end


function init_gear_sets()
		
	sets.Physical = {
		sub={ name="Arktoi", augments={'Accuracy+50','Pet: Accuracy+50','Pet: Attack+30',}},
		main="Pangu",
		head={ name="Valorous Mask", augments={'Pet: Attack+29 Pet: Rng.Atk.+29','Pet: Phys. dmg. taken -2%','Pet: VIT+7','Pet: Accuracy+14 Pet: Rng. Acc.+14',}},
		body={ name="Valorous Mail", augments={'Pet: Phys. dmg. taken -2%','Pet: MND+9','Pet: Accuracy+15 Pet: Rng. Acc.+15','Pet: Attack+12 Pet: Rng.Atk.+12',}},
		hands="Nukumi Manoplas +1",
		legs="Tali'ah Sera. +2",
		feet="Meg. Jam. +2",
		neck="Shulmanu Collar",
		waist="Incarnation Sash",
		left_ear="Sabong Earring",
		right_ear="Hypaspist Earring",
		left_ring="Varar Ring",
		right_ring="Varar Ring",
		back={ name="Artio's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10','System: 1 ID: 1246 Val: 4',}},}

	sets.MagicBP = {}
	
	sets.PetMacc = {}
	
	sets.Hybrid = {}
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs				

	sets.precast.JA['Reward'] = {body="Totemic jackcoat +1", 
		feet="Beast Gaiters"}


	
	-- Fast cast sets for spells
    sets.precast.FC = {
		ammo="Sapience Orb",
		head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+29','"Drain" and "Aspir" potency +10','Mag. Acc.+12',}},
		body="Zendik Robe",
		hands={ name="Merlinic Dastanas", augments={'Pet: Accuracy+19 Pet: Rng. Acc.+19','Blood Pact Dmg.+8','Pet: STR+6','Pet: "Mag.Atk.Bns."+13',}},
		legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
		feet={ name="Merlinic Crackows", augments={'"Drain" and "Aspir" potency +10','CHR+7','Mag. Acc.+15','"Mag.Atk.Bns."+1',}},
		neck="Loricate Torque +1",
		waist="Channeler's Stone",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Weather. Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','"Fast Cast"+10',}},}
		
			-- Fast Cast: 55% - 70% /rdm
			
			
		
		
-- 

	-- Weaponskill sets
	sets.precast.WS['Garland of Bliss'] = {}
	
	--------------------------------------
	-- Midcast sets
	--------------------------------------
	sets.midcast.pet['Sensilla Blades'] = sets.Physical
	
	sets.midcast.pet['Tegmina Buffet'] = sets.Physical
	
	sets.midcast.pet['Razor Fang'] = sets.Physical

	sets.midcast['Eerie Eye'] = sets.Physical

	sets.midcast['Crimson Howl'] = sets.Physical

	sets.midcast['Inferno Howl'] = sets.Physical

	sets.midcast['Rolling Thunder'] = sets.Physical

	sets.midcast['Lightning Armor'] = sets.Physical

	sets.midcast['Shock Squall'] = sets.Physical

	sets.midcast['Whispering Wind'] = sets.Physical

	sets.midcast['Aerial Armor'] = sets.Physical

	sets.midcast['Fleet Wind'] = sets.Physical

	sets.midcast['Hastega II'] = sets.Physical

	sets.midcast['Earthen Ward'] = sets.Physical
	
	sets.midcast['Earthen Armor'] = sets.Physical

	sets.midcast['Spring Water'] = sets.Physical

	sets.midcast['Slowga'] = sets.Physical

	sets.midcast['Tidal Roar'] = sets.Physical

	sets.midcast['Soothing Current'] = sets.Physical

	sets.midcast['Reraise II'] = sets.Physical

	sets.midcast['Frost Armor'] = sets.Physical

	sets.midcast['Sleepga'] = sets.Physical

	sets.midcast['Diamond Storm'] = sets.Physical

	sets.midcast['Crystal Blessing'] = sets.Physical

	sets.midcast['Somnolence'] = sets.Physical


	
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {
    main="Pangu",
    sub={ name="Arktoi", augments={'Accuracy+50','Pet: Accuracy+50','Pet: Attack+30',}},
    ammo="Meaty Broth",
    head={ name="Valorous Mask", augments={'Pet: Attack+29 Pet: Rng.Atk.+29','Pet: Phys. dmg. taken -2%','Pet: VIT+7','Pet: Accuracy+14 Pet: Rng. Acc.+14',}},
    body={ name="Valorous Mail", augments={'Pet: Phys. dmg. taken -2%','Pet: MND+9','Pet: Accuracy+15 Pet: Rng. Acc.+15','Pet: Attack+12 Pet: Rng.Atk.+12',}},
    hands={ name="Taeon Gloves", augments={'Pet: "Regen"+2','Pet: Damage taken -4%',}},
    legs="Tali'ah Sera. +2",
    feet="Meg. Jam. +2",
    neck="Shepherd's Chain",
    waist="Isa Belt",
    left_ear="Etiolation Earring",
    right_ear="Enmerkar Earring",
    left_ring="Defending Ring",
    right_ring="Gelatinous Ring +1",
    back={ name="Artio's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10','System: 1 ID: 1246 Val: 4',}},
}
			
	sets.idle.PetDT = {	    
    main="Pangu",
    sub={ name="Arktoi", augments={'Accuracy+50','Pet: Accuracy+50','Pet: Attack+30',}},
    ammo="Meaty Broth",
    head={ name="Valorous Mask", augments={'Pet: Attack+29 Pet: Rng.Atk.+29','Pet: Phys. dmg. taken -2%','Pet: VIT+7','Pet: Accuracy+14 Pet: Rng. Acc.+14',}},
    body={ name="Valorous Mail", augments={'Pet: Phys. dmg. taken -2%','Pet: MND+9','Pet: Accuracy+15 Pet: Rng. Acc.+15','Pet: Attack+12 Pet: Rng.Atk.+12',}},
    hands={ name="Taeon Gloves", augments={'Pet: "Regen"+2','Pet: Damage taken -4%',}},
    legs="Tali'ah Sera. +2",
    feet="Meg. Jam. +2",
    neck="Shepherd's Chain",
    waist="Isa Belt",
    left_ear="Etiolation Earring",
    right_ear="Enmerkar Earring",
    left_ring="Defending Ring",
    right_ring="Gelatinous Ring +1",
    back={ name="Artio's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10','System: 1 ID: 1246 Val: 4',}},
}
	
    sets.idle.DT = {
    main="Pangu",
    sub={ name="Arktoi", augments={'Accuracy+50','Pet: Accuracy+50','Pet: Attack+30',}},
    ammo="Meaty Broth",
    head={ name="Valorous Mask", augments={'Pet: Attack+29 Pet: Rng.Atk.+29','Pet: Phys. dmg. taken -2%','Pet: VIT+7','Pet: Accuracy+14 Pet: Rng. Acc.+14',}},
    body={ name="Valorous Mail", augments={'Pet: Phys. dmg. taken -2%','Pet: MND+9','Pet: Accuracy+15 Pet: Rng. Acc.+15','Pet: Attack+12 Pet: Rng.Atk.+12',}},
    hands={ name="Taeon Gloves", augments={'Pet: "Regen"+2','Pet: Damage taken -4%',}},
    legs="Tali'ah Sera. +2",
    feet="Meg. Jam. +2",
    neck="Shepherd's Chain",
    waist="Isa Belt",
    left_ear="Etiolation Earring",
    right_ear="Enmerkar Earring",
    left_ring="Defending Ring",
    right_ring="Gelatinous Ring +1",
    back={ name="Artio's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Attack+10 Pet: Rng.Atk.+10','Pet: "Regen"+10','System: 1 ID: 1246 Val: 4',}},
}
	

	sets.Kiting = 
	{Legs="Carmine Cuisses +1"}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Wakido Kote +2",
		legs={ name="Ryuo Hakama", augments={'Accuracy+20','"Store TP"+4','Phys. dmg. taken -3',}},
		feet="Flam. Gambieras +2",
		neck="Moonbeam Nodowa",
		waist="Ioskeha Belt",
		left_ear="Telos Earring",
		right_ear="Digni. Earring",
		left_ring="Flamma Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Smertrios's Mantle", augments={'Accuracy+20 Attack+20','Phys. dmg. taken-6%',}},}

	sets.engaged.HighAccTP = {
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Wakido Kote +2",
		legs={ name="Ryuo Hakama", augments={'Accuracy+20','"Store TP"+4','Phys. dmg. taken -3',}},
		feet="Flam. Gambieras +2",
		neck="Moonbeam Nodowa",
		waist="Ioskeha Belt",
		left_ear="Telos Earring",
		right_ear="Digni. Earring",
		left_ring="Flamma Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Smertrios's Mantle", augments={'Accuracy+20 Attack+20','Phys. dmg. taken-6%',}},}
	
	sets.engaged.DT = {
		ammo="Ginsen",
		head="Sulevia's Mask +2",
		body="Volte Haubert",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Loricate Torque +1",
		waist="Ioskeha Belt",
		left_ear="Telos Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},}
			
	
	
	organizer_items = {
      echos="Echo Drops",
	  curry="Red Curry Bun"}

end

------------------------------------------------------------------
-- Action events
------------------------------------------------------------------

-- Run after the default midcast() is done.

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'NIN' then
		set_macro_page(1, 15) 
		send_command('@input /lockstyleset 40')
		send_command('@input //lua r equipviewer')
		send_command('@input //lua r anchor')
	elseif player.sub_job == 'WHM' then
		set_macro_page(1, 15) 
		send_command('@input /lockstyleset 40')
		send_command('@input //lua r equipviewer')
		send_command('@input //lua r anchor')
	elseif player.sub_job == 'DNC' then
		set_macro_page(1, 15)
		send_command('@input /lockstyleset 40')

	else
		set_macro_page(1, 17)
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