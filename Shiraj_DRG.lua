-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

	-- Load and initialize the include file.
	include('Mote-Include.lua')
	include('organizer-lib.lua') 
end


-- Setup vars that are user-independent.
function job_setup()
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

function user_setup()
    state.OffenseMode:options('LowAccTP', 'DT', 'HighAccTP')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('DT', 'idleMovement')

	select_default_macro_book(1, 16)
end


function init_gear_sets()
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs				
	
    sets.precast.JA['Spirit Surge'] = {}
	
	sets.precast.JA['Call Wyvern'] = {}
	
	sets.precast.JA['Ancient Circle'] = {}
	
	sets.precast.JA['Jump'] = sets.engaged.LowAccTP
	
	sets.precast.JA['High Jump'] = {}
	
	sets.precast.JA['Super Jump'] = {}
	
	sets.precast.JA['Soul Jump'] = {}
	
	sets.precast.JA['Angon'] = {
		Ammo="Angon"}
	
	sets.precast.JA['Spirit Jump'] = {}
	
	sets.precast.JA['Dragon Breaker'] = {}
	
	sets.precast.JA['Fly High'] = {}
	
	sets.precast.JA['Steady Wing'] = {}
	
	sets.precast.JA['Restoring Breath'] = {
		waist="Glassblower's Belt"}
	
	-- Fast cast sets for spells
    sets.precast.FC = {
		ammo="Sapience Orb",
        head="Carmine Mask +1", 
		neck="Loricate Torque +1", 
		ear1="Etiolation Earring", 
		ear2="Loquacious Earring",
        body="Vrikodara Jupon", 
		hands="Leyline Gloves", 
		ring1="Weatherspoon Ring", 
		ring2="Kishar Ring",
        back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}},
		waist="Flume Belt", 
		legs="Futhark Trousers +3", 
		feet="Carmine Greaves"}
		
			-- Fast Cast: 51% / -21% Enhancing Magic Casting Time / 36% Inspiration
			
		
		
		
    sets.precast.FC['Utsusemi: Ichi'] = set_combine(sets.precast.FC, {
		neck=''})
		
    sets.precast.FC['Utsusemi: Ni'] = set_combine(sets.precast.FC['Utsusemi: Ichi'], {})
-- 

	-- Weaponskill sets
    sets.precast.WS['Double Trust'] = {}
	
	sets.precast.WS['Thunder Thrust'] = {}
	
	sets.precast.WS['Raiden Thrust'] = {}
	
	sets.precast.WS['Leg Sweep'] = {}
	
	sets.precast.WS['Penta Thrust'] = {
		ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +1",
		feet="Flam. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	sets.precast.WS['Vorpal Thrust'] = {}
	
	sets.precast.WS['Skewer'] = {}
	
	sets.precast.WS['Wheeling Thrust'] = {
		ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body="Sulevia's Plate. +2",
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +1",
		feet="Sulev. Leggings +2",
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",}
	
	
	sets.precast.WS['Drakesbane'] = {    
		ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body="Sulevia's Plate. +2",
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +1",
		feet="Sulev. Leggings +2",
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",}
	
	sets.precast.WS['Sonic Thrust'] = {
	    ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body="Sulevia's Plate. +2",
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +1",
		feet="Sulev. Leggings +2",
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",}
	
	sets.precast.WS["Camlann's Torment"] = {
		ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body="Sulevia's Plate. +2",
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +1",
		feet="Sulev. Leggings +2",
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",}
	
	
	sets.precast.WS['Stardiver'] = {
		ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +1",
		feet="Flam. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Moonshade Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	--------------------------------------
	-- Midcast sets
	--------------------------------------
		
	

	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {
		head="Sulevia's Mask +2",
		body="Chozoron Coselete",
		hands="Sulev. Gauntlets +2",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		feet="Sulev. Leggings +2",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Etiolation Earring",
		right_ear="Genmei Earring",
		left_ring="Moonbeam Ring",
		right_ring="Defending Ring",
		back="Moonbeam Cape",}
			
	sets.idleMovement = {
		head="Sulevia's Mask +2",
		body="Chozoron Coselete",
		hands="Sulev. Gauntlets +2",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		feet="Sulev. Leggings +2",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Etiolation Earring",
		right_ear="Genmei Earring",
		left_ring="Moonbeam Ring",
		right_ring="Defending Ring",
		back="Moonbeam Cape",}
			
    sets.idle.DT = {
		ammo="Staunch Tathlum +1",
		head="Sulevia's Mask +2",
		body="Chozoron Coselete",
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +1",
		feet="Sulev. Leggings +2",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Etiolation Earring",
		right_ear="Genmei Earring",
		left_ring="Moonbeam Ring",
		right_ring="Defending Ring",
		back="Moonbeam Cape",}

	sets.Kiting = 
	{Legs="Carmine Cuisses +1"}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'AGI+6', 'Accuracy+29', 'Attack+14',}},
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +1",
		feet="Flam. Gambieras +2",
		neck="Shulmanu Collar",
		waist="Ioskeha Belt",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.engaged.HighAccTP = {
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Sulev. Gauntlets +2",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		neck="Shulmanu Collar",
		waist="Kentarch Belt +1",
		left_ear="Digni. Earring",
		right_ear="Telos Earring",
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	sets.engaged.DT = {
		ammo="Staunch Tathlum +1",
		head="Sulevia's Mask +2",
		body="Sulevia's Plate. +2",
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +1",
		feet="Sulev. Leggings +2",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Etiolation Earring",
		right_ear="Genmei Earring",
		left_ring="Moonbeam Ring",
		right_ring="Defending Ring",
		back="Moonbeam Cape",}
			
		
	sets.engaged.CC = {
		ammo="Staunch Tathlum +1",
        head="Halitus Helm", 
		neck="Loricate Torque +1", 
		ear1="Odnowa Earring", 
		ear2="Odnowa Earring +1",
        body="Erilaz Surcoat +1", 
		hands="Turms Mittens", 
		ring1="Defending Ring", 
		ring2="Moonbeam Ring",
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
		back="Moonbeam Cape", 
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
	if player.sub_job == 'DRK' then
		set_macro_page(1, 16) 
	elseif player.sub_job == 'NIN' then
		set_macro_page(1, 16)
	elseif player.sub_job == 'SAM' then
		set_macro_page(1, 16)
	else
		set_macro_page(1, 16)
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