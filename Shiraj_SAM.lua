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
    state.IdleMode:options('DT', 'idleMovement')

	select_default_macro_book(1, 19)
	send_command ('bind numpad9 send @all input /follow Shiraj')	
	send_command ('bind numpad7 input //gfra')	
	send_command ('bind numpad4 input //ifury')	
	send_command ('bind numpad3 input lullaby')	
	send_command ('bind numpad1 input finale')	
	send_command ('bind numpad5 input /tell Nurzejoy dia')	
end


function init_gear_sets()
	sets.enmity = {}
		
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs				
	sets.precast.JA['Third Eye'] = {}
	
	sets.precast.JA['Meditate'] = {}
	
	sets.precast.JA['Hasso'] = {}
	
	sets.precast.JA['Warding Circle'] = {}
	
	sets.precast.JA['Seigan'] = {}
	
	sets.precast.JA['Sekkanoki'] = {}
	
	sets.precast.JA['Sengikori'] = {}
	
	sets.precast.JA['Hamanoha'] = {}
	
	sets.precast.JA['Hagakure'] = {}
	
	sets.precast.JA['Konzen-ittai'] = {}
	
	-- Fast cast sets for spells
    sets.precast.FC = {
	    ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Sulevia's Plate. +2",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Sulevi. Cuisses +1",
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
    sets.precast.WS['Tachi: Enpi'] = {}

    sets.precast.WS['Tachi: Hobaku'] = {}

    sets.precast.WS['Tachi: Goten'] = {}

    sets.precast.WS['Tachi: Kagero'] = {}

    sets.precast.WS['Tachi: Jinpu'] = {
		ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Wakido Kote +2",
		legs="Hiza. Hizayoroi +2",
		feet={ name="Founder's Greaves", augments={'VIT+9','"Mag.Atk.Bns."+12','Mag. Evasion+9',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Smertrios's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-6%',}},}

	sets.precast.WS['Tachi: Koki'] = {}

    sets.precast.WS['Tachi: Yukikaze'] = {
		ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Wakido Kote +2",
		legs="Hiza. Hizayoroi +2",
		feet={ name="Founder's Greaves", augments={'VIT+9','"Mag.Atk.Bns."+12','Mag. Evasion+9',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Smertrios's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-6%',}},}
	
    sets.precast.WS['Tachi: Gekko'] = {
	    ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Wakido Kote +2",
		legs="Hiza. Hizayoroi +2",
		feet="Flam. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Smertrios's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-6%',}},}
	
    sets.precast.WS['Tachi: Ageha'] = {
		head="Flam. Zucchetto +2",
		body="Flamma Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",}
	
    sets.precast.WS['Tachi: Fudo'] = {
	    ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Wakido Kote +2",
		legs="Hiza. Hizayoroi +2",
		feet="Flam. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Smertrios's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-6%',}},}

	
    sets.precast.WS['Tachi: Shoha'] = {
	    ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Wakido Kote +2",
		legs="Hiza. Hizayoroi +2",
		feet="Flam. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Smertrios's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-6%',}},}

    sets.precast.WS['Tachi: Kasha'] = {
	    ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Wakido Kote +2",
		legs="Hiza. Hizayoroi +2",
		feet="Flam. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Smertrios's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-6%',}},}

		sets.precast.WS['Tachi: Rana'] = {
	    ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Wakido Kote +2",
		legs="Hiza. Hizayoroi +2",
		feet="Flam. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Smertrios's Mantle", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-6%',}},}
	
	--------------------------------------
	-- Midcast sets
	--------------------------------------
		

	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {
	    ammo="Staunch Tathlum +1",
		head="Genmei Kabuto",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Kurys Gloves",
		Legs="Ryuo Hakama",
		feet="Flamma Gambieras +2",
		neck="Loricate Torque +1",
		waist="Ioskeha Belt",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		ring1="Defending Ring",
		ring2="Gelatinous Ring +1",
		back="Moonlight Cape"}

			
	sets.idleMovement = {	    
	    ammo="Staunch Tathlum +1",
		head="Genmei Kabuto",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Kurys Gloves",
		Legs="Ryuo Hakama",
		feet="Flamma Gambieras +2",
		neck="Loricate Torque +1",
		waist="Ioskeha Belt",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		ring1="Defending Ring",
		ring2="Gelatinous Ring +1",
		back="Moonlight Cape"}

	
    sets.idle.DT = {
	    ammo="Staunch Tathlum +1",
		head="Genmei Kabuto",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Kurys Gloves",
		Legs="Ryuo Hakama",
		feet="Flamma Gambieras +2",
		neck="Loricate Torque +1",
		waist="Ioskeha Belt",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		ring1="Defending Ring",
		ring2="Gelatinous Ring +1",
		back="Moonlight Cape"}

	

	sets.Kiting = 
	{Legs="Carmine Cuisses +1"}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body="Ken. Samue",
		hands="Wakido Kote +2",
		legs="Ken. Hakama",
		feet="Flam. Gambieras +2",
		neck="Ainia Collar",
		waist="Ioskeha Belt",
		left_ear="Telos Earring",
		right_ear="Digni. Earring",
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.engaged.HighAccTP = {
		ammo="Ginsen",
		head="Ken. Jinpachi",
		body="Ken. Samue",
		hands="Ken. Tekko",
		legs="Ken. Hakama",
		feet="Ken. Sune-Ate",
		neck="Moonbeam Nodowa",
		waist="Ioskeha Belt",
		left_ear="Telos Earring",
		right_ear="Digni. Earring",
		left_ring="Flamma Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	sets.engaged.DT = {
		ammo="Ginsen",
		head="Genmei Kabuto",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Ken. Tekko",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		neck="Loricate Torque +1",
		waist="Ioskeha Belt",
		left_ear="Telos Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
			
	
	
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
		set_macro_page(1, 12) 
		send_command('@input /lockstyleset 42')
		send_command('@input //lua r equipviewer')
		send_command('@input //lua r anchor')
	elseif player.sub_job == 'WAR' then
		set_macro_page(1, 12) 
		send_command('@input /lockstyleset 42')
		send_command('@input //lua r equipviewer')
		send_command('@input //lua r anchor')
	elseif player.sub_job == 'DRK' then
		set_macro_page(1, 12)
		send_command('@input /lockstyleset 40')

	else
		set_macro_page(1, 14)
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