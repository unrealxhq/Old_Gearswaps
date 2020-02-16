-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

	-- Load and initialize the include file.
	include('Mote-Include.lua')
	include('organizer-lib.lua') 
end


-- Setup vars that are user-independent.
function job_setup()
    -- Table of Staunch Tathlum +1 +1
    rune_timers = T{}
    -- entry = rune, index, expires
    
    if player.main_job_level >= 65 then
        max_runes = 3
    elseif player.main_job_level >= 35 then
        max_runes = 2
    elseif player.main_job_level >= 5 then
        max_runes = 1
    else
        max_runes = 0
    end
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

function user_setup()
    state.OffenseMode:options('LowAccTP', 'DT', 'HighAccTP')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('DT', 'idleMovement')

	select_default_macro_book(1, 13)
	
	send_command ('bind numpad9 send @all input /follow Shiraj')	
	send_command ('bind numpad5 send @all input /t Shiraj cp')	
	send_command ('bind numpad7 input Protect')	
	send_command ('bind numpad1 input Shell')	
	
end


function init_gear_sets()
	sets.enmity = {}
		

	sets.Macc = {}

	sets.Nuke = {}
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs				
	sets.precast.JA['Berserk'] = {
		body="Pummeler's Lorica",
		feet="Agoge Calligae +1",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	
	sets.precast.JA['Hasso'] = {}
	
	sets.precast.JA['Warcry'] = {
		head="Agoge Mask +1"}	
	
	sets.precast.JA['Meditate'] = {}	
	
	sets.precast.JA['Might Strikes'] = {
		hands="Agoge Mufflers +1"}
	
	sets.precast.JA['Defender'] = {}

	sets.precast.JA['Provoke'] = {}	

	sets.precast.JA['Aggressor'] = {
		head="Pummeler's Mask",
		body="Agoge Lorica +1"}	

	sets.precast.JA['Retaliation'] = {
		hands="Pummeler's Mufflers"}

	sets.precast.JA['Blood Rage'] = {
		body="Boii Lorica +1"}

	sets.precast.JA['Restraint'] = {}	

	sets.precast.JA["Warrior's Charge"] = {}	

	sets.precast.JA['Brazen Rush'] = {}	
	
	-- Fast cast sets for spells
    sets.precast.FC = {
	    ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Sulevia's Plate. +2",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Sulevi. Cuisses +2",
		feet="Carmine Greaves",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back="Moonlight Cape",}
		
			-- Fast Cast: 43% 
			
			
		
		
		
    sets.precast.FC['Utsusemi: Ichi'] = set_combine(sets.precast.FC, {
		neck=''})
		
    sets.precast.FC['Utsusemi: Ni'] = set_combine(sets.precast.FC['Utsusemi: Ichi'], {})
-- 

	-- Weaponskill sets
    sets.precast.WS['Herculean Slash'] = {
	    ammo="Knobkierrie",
		head={ name="Odyssean Helm", augments={'Accuracy+23','Weapon skill damage +2%','DEX+2','Attack+3',}},
		body="Ignominy Cuirass +2",
		hands={ name="Odyssean Gauntlets", augments={'Accuracy+10','Weapon skill damage +4%','Attack+12',}},
		legs={ name="Odyssean Cuisses", augments={'Accuracy+3 Attack+3','Weapon skill damage +3%','Accuracy+11','Attack+11',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},}
	
    sets.precast.WS['Resolution'] = {
		ammo="Ginsen",
		head={ name="Argosy Celata", augments={'STR+10','DEX+10','Attack+15',}},
		body="Argosy Hauberk +1",
		hands={ name="Argosy Mufflers", augments={'STR+15','"Dbl.Atk."+2','Haste+2%',}},
		legs="Pumm. Cuisses +2",
		feet="Pumm. Calligae +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Niqmaddu Ring",
		right_ring="Regal Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},}
	
	sets.precast.WS['Ground Strike'] = {
		ammo="Knobkierrie",
		head={ name="Odyssean Helm", augments={'Accuracy+23','Weapon skill damage +2%','DEX+2','Attack+3',}},
		body="Sulevia's Plate. +2",
		hands={ name="Odyssean Gauntlets", augments={'Accuracy+10','Weapon skill damage +4%','Attack+12',}},
		legs={ name="Odyssean Cuisses", augments={'Accuracy+3 Attack+3','Weapon skill damage +3%','Accuracy+11','Attack+11',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-2%',}},}
		
		
	sets.precast.WS['Scourge'] = {
		ammo="Knobkierrie",
		head={ name="Odyssean Helm", augments={'Accuracy+23','Weapon skill damage +2%','DEX+2','Attack+3',}},
		body="Ignominy Cuirass +2",
		hands={ name="Odyssean Gauntlets", augments={'Accuracy+10','Weapon skill damage +4%','Attack+12',}},
		legs={ name="Odyssean Cuisses", augments={'Accuracy+3 Attack+3','Weapon skill damage +3%','Accuracy+11','Attack+11',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},}

	
	sets.precast.WS['Upheaval'] = {
		ammo="Knobkierrie",
		head={ name="Odyssean Helm", augments={'Accuracy+23','Weapon skill damage +2%','DEX+2','Attack+3',}},
		body="Sulevia's Plate. +2",
		hands={ name="Odyssean Gauntlets", augments={'Accuracy+10','Weapon skill damage +4%','Attack+12',}},
		legs={ name="Odyssean Cuisses", augments={'Accuracy+3 Attack+3','Weapon skill damage +3%','Accuracy+11','Attack+11',}},
		feet="Sulev. Leggings +2",
		neck="War. Beads +1",
		waist="Ioskeha Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-2%',}},}

	
	sets.precast.WS['Fell Cleave'] = {
		ammo="Knobkierrie",
		head={ name="Odyssean Helm", augments={'Accuracy+23','Weapon skill damage +2%','DEX+2','Attack+3',}},
		body="Sulevia's Plate. +2",
		hands={ name="Odyssean Gauntlets", augments={'Accuracy+10','Weapon skill damage +4%','Attack+12',}},
		legs={ name="Odyssean Cuisses", augments={'Accuracy+3 Attack+3','Weapon skill damage +3%','Accuracy+11','Attack+11',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-2%',}},}


		
	sets.precast.WS['Full Break'] = {
		ammo="Pemphredo Tathlum",
		head="Flam. Zucchetto +2",
		body="Flamma Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Gwati Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-2%',}},}

	
	sets.precast.WS['Armor Break'] = {
		ammo="Pemphredo Tathlum",
		head="Flam. Zucchetto +2",
		body="Flamma Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Gwati Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-2%',}},}

	sets.precast.WS['Savage Blade'] = {
		main="Reikiko",
		sub="Blurred Shield",
		ammo="Knobkierrie",
		head={ name="Odyssean Helm", augments={'Accuracy+23','Weapon skill damage +2%','DEX+2','Attack+3',}},
		body="Sulevia's Plate. +2",
		hands={ name="Odyssean Gauntlets", augments={'Accuracy+10','Weapon skill damage +4%','Attack+12',}},
		legs={ name="Odyssean Cuisses", augments={'Accuracy+3 Attack+3','Weapon skill damage +3%','Accuracy+11','Attack+11',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-2%',}},}
		
	sets.precast.WS['Stardiver'] = {
		ammo="Knobkierrie",
		head={ name="Odyssean Helm", augments={'Accuracy+23','Weapon skill damage +2%','DEX+2','Attack+3',}},
		body="Sulevia's Plate. +2",
		hands={ name="Odyssean Gauntlets", augments={'Accuracy+10','Weapon skill damage +4%','Attack+12',}},
		legs={ name="Odyssean Cuisses", augments={'Accuracy+3 Attack+3','Weapon skill damage +3%','Accuracy+11','Attack+11',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-2%',}},}


	sets.precast.WS['Hexa Strike'] = {
		ammo="Knobkierrie",
		head={ name="Odyssean Helm", augments={'Accuracy+23','Weapon skill damage +2%','DEX+2','Attack+3',}},
		body="Sulevia's Plate. +2",
		hands={ name="Odyssean Gauntlets", augments={'Accuracy+10','Weapon skill damage +4%','Attack+12',}},
		legs={ name="Odyssean Cuisses", augments={'Accuracy+3 Attack+3','Weapon skill damage +3%','Accuracy+11','Attack+11',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-2%',}},}

	sets.precast.WS['Judgement'] = {
		ammo="Knobkierrie",
		head={ name="Odyssean Helm", augments={'Accuracy+23','Weapon skill damage +2%','DEX+2','Attack+3',}},
		body="Sulevia's Plate. +2",
		hands={ name="Odyssean Gauntlets", augments={'Accuracy+10','Weapon skill damage +4%','Attack+12',}},
		legs={ name="Odyssean Cuisses", augments={'Accuracy+3 Attack+3','Weapon skill damage +3%','Accuracy+11','Attack+11',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-2%',}},}

	sets.precast.WS['Black Halo'] = {
		ammo="Knobkierrie",
		head={ name="Odyssean Helm", augments={'Accuracy+23','Weapon skill damage +2%','DEX+2','Attack+3',}},
		body="Sulevia's Plate. +2",
		hands={ name="Odyssean Gauntlets", augments={'Accuracy+10','Weapon skill damage +4%','Attack+12',}},
		legs={ name="Odyssean Cuisses", augments={'Accuracy+3 Attack+3','Weapon skill damage +3%','Accuracy+11','Attack+11',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-2%',}},}










	--------------------------------------
	-- Midcast sets
	--------------------------------------
		

	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {
	    ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		body="Volte Haubert",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		Legs="Carmine Cuisses +1",
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Ainia Collar",
		waist="Ioskeha Belt",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",		
		back="Moonlight Cape"}

			
	sets.idleMovement = {	    
	    ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		body="Volte Haubert",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		Legs="Carmine Cuisses +1",
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Ainia Collar",
		waist="Ioskeha Belt",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",		
		back="Moonlight Cape"}

	
    sets.idle.DT = {
	    ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		body="Volte Haubert",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Ainia Collar",
		waist="Ioskeha Belt",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",		
		back="Moonlight Cape"}

	

	sets.Kiting = 
	{Legs="Carmine Cuisses +1"}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {
		ammo="Aurgelmir Orb",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+26','"Dbl.Atk."+4','AGI+2','Attack+7',}},
		hands="Sulev. Gauntlets +2",
		legs="Pumm. Cuisses +2",
		feet="Pumm. Calligae +2",
		neck="War. Beads +1",
		waist="Ioskeha Belt",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Flamma Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},}

	sets.engaged.HighAccTP = {
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Sulev. Gauntlets +2",
		legs="Pummeler's Cuisses +2",
		feet="Pummeler's Calligae +2",
		neck="War. Beads +1",
		waist="Kentarch Belt +1",
		left_ear="Telos Earring",
		right_ear="Digni. Earring",
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	sets.engaged.DT = {
		ammo="Staunch Tathlum +1",
		head="Volte Cap",
		body="Volte Haubert",
		hands="Sulev. Gauntlets +2",
		legs="Pumm. Cuisses +2",
		feet="Pumm. Calligae +2",
		neck="War. Beads +1",
		waist="Ioskeha Belt",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},}
			
	
	sets.engaged.Fencer = {}
	
	sets.engaged.CC = {}

		sets.engaged.HP = {}
	
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
	if player.sub_job == 'RUN' then
		set_macro_page(1, 13) 
		send_command('@input /lockstyleset 40')
	elseif player.sub_job == 'NIN' then
		send_command('@input /lockstyleset 54')
		set_macro_page(1, 13)
	elseif player.sub_job == 'SAM' then
		set_macro_page(1, 13)
		send_command('@input /lockstyleset 40')

	else
		set_macro_page(1, 13)
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
if spell.type == 'WeaponSkill' and player.target.distance > (3.4 + player.target.model_size) then 
        add_to_chat(123, spell.name..' Canceled: [Out of Range]')
        eventArgs.cancel = true        
        return
    end
end 	   
	   
function job_aftercast(spell, action, eventArgs)
	if spell.type == "WeaponSkill" then 
		add_to_chat(217, 'TP Return: '..tostring(player.tp))
    end
end	