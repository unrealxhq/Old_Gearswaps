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

	select_default_macro_book(1, 19)
	
	
end


function init_gear_sets()
	sets.enmity = {}
		
	sets.Absorb = {
		ammo="Hydrocera",
		head="Fallen's Burgeonet +1",		
		body="Flamma Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Heathen's Flanchard",
		feet="Ratri Sollerets",
		neck="Erra Pendant",
		waist="Eschan Stone",
		left_ear="Hermetic Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",}

	
		
	sets.Macc = {
		ammo="Hydrocera",
		head="Flam. Zucchetto +2",
		body="Flamma Korazin +2",
		hands="Flam. Manopolas +1",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		neck="Erra Pendant",
		waist="Eschan Stone",
		left_ear="Hermetic Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.Nuke = {}
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs				
	sets.precast.JA['Last Resort'] = {
		back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},}

	
	sets.precast.JA['Dark Seal'] = {
		head="Fallen's Burgeonet +1"}

	sets.precast.JA['Nether Void'] = {
		legs="Heathen's Flanchard"}
	
	-- Fast cast sets for spells
    sets.precast.FC = {
		ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Volte Haubert",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		feet="Carmine Greaves",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Defending Ring",
		right_ring="Weather. Ring",
		back={ name="Ankou's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}
		
			-- Fast Cast: 49% 
			
			
		
		
		
    sets.precast.FC['Utsusemi: Ichi'] = set_combine(sets.precast.FC, {
		neck=''})
		
    sets.precast.FC['Utsusemi: Ni'] = set_combine(sets.precast.FC['Utsusemi: Ichi'], {})
-- 

	-- Weaponskill sets
    sets.precast.WS['Torcleaver'] = {
	    ammo="Knobkierrie",
		head={ name="Odyssean Helm", augments={'Accuracy+23','Weapon skill damage +2%','DEX+2','Attack+3',}},
		body="Ignominy Cuirass +2",
		hands={ name="Odyssean Gauntlets", augments={'Accuracy+10','Weapon skill damage +4%','Attack+12',}},
		legs={ name="Odyssean Cuisses", augments={'Accuracy+3 Attack+3','Weapon skill damage +3%','Accuracy+11','Attack+11',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Kentarch Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},}
	
    sets.precast.WS['Resolution'] = {
		ammo="Seething Bomblet",
		head={ name="Argosy Celata", augments={'STR+10','DEX+10','Attack+15',}},
		body={ name="Argosy Hauberk +1", augments={'HP+65','Accuracy+13','Attack+20',}},
		hands="Sulev. Gauntlets +2",
		legs="Ig. Flanchard +2",
		feet={ name="Argosy Sollerets", augments={'STR+10','DEX+10','Attack+15',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Cessance Earring",
		left_ring="Regal Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	sets.precast.WS['Ground Strike'] = {
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
		
		
	sets.precast.WS['Guillotine'] = {}
	
	sets.precast.WS['Cross Reaper'] = {
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

	
	sets.precast.WS['Entropy'] = {
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


		
	sets.precast.WS['Insurgency'] = {
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

	
	sets.precast.WS['Quietus'] = {
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

	
		
		
	
	--------------------------------------
	-- Midcast sets
	--------------------------------------
	sets.midcast['Drain II'] = sets.Absorb	
	
	sets.midcast['Drain'] = sets.Absorb	
	
	sets.midcast['Aspir'] = sets.Absorb	
	
	sets.midcast['Aspir II'] = sets.Absorb	
	
	sets.midcast['Drain III'] = sets.Absorb	
	
	sets.midcast['Stun'] = sets.Macc
	
	sets.midcast['Absorb-TP'] = sets.Absorb
	
	sets.midcast['Absorb-STR'] = sets.Absorb
	
	sets.midcast['Absorb-DEX'] = sets.Absorb
	
	sets.midcast['Absorb-VIT'] = sets.Absorb
	
	sets.midcast['Absorb-INT'] = sets.Absorb

	sets.midcast['Absorb-AGI'] = sets.Absorb

	sets.midcast['Absorb-ACC'] = sets.Absorb

	sets.midcast['Absorb-Attri'] = sets.Absorb

	sets.midcast['Break'] = sets.Macc

	sets.midcast['Sleep II'] = sets.Macc

	sets.midcast['Sleep'] = sets.Macc

	sets.midcast['Bind'] = sets.Macc
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {
		ammo="Staunch Tathlum +1",
		head="Volte Cap",
		body="Volte Haubert",
		hands="Sulev. Gauntlets +2",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		feet="Sulev. Leggings +2",
		neck="Ainia Collar",
		waist="Ioskeha Belt",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

			
	sets.idleMovement = {	    
		ammo="Staunch Tathlum +1",
		head="Volte Cap",
		body="Volte Haubert",
		hands="Sulev. Gauntlets +2",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		feet="Sulev. Leggings +2",
		neck="Ainia Collar",
		waist="Ioskeha Belt",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	
    sets.idle.DT = {
		ammo="Staunch Tathlum +1",
		head="Volte Cap",
		body="Volte Haubert",
		hands="Sulev. Gauntlets +2",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		feet="Sulev. Leggings +2",
		neck="Ainia Collar",
		waist="Ioskeha Belt",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Moonbeam Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	

	sets.Kiting = 
	{Legs="Carmine Cuisses +1"}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Sulev. Gauntlets +2",
		legs="Ig. Flanchard +2",
		feet="Flam. Gambieras +2",
		neck="Ainia Collar",
		waist="Ioskeha Belt",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Petrov Ring",
		right_ring="Regal Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.engaged.HighAccTP = {
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body={ name="Valorous Mail", augments={'Accuracy+29','AGI+6','Attack+14',}},
		hands="Sulev. Gauntlets +2",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		neck="Sanctity Necklace",
		waist="Kentarch Belt +1",
		left_ear="Telos Earring",
		right_ear="Digni. Earring",
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	sets.engaged.DT = {
		ammo="Ginsen",
		head="Volte Cap",
		body="Volte Haubert",
		hands="Sulev. Gauntlets +2",
		legs="Sulevi. Cuisses +1",
		feet="Sulev. Leggings +2",
		neck="Ainia Collar",
		waist="Ioskeha Belt",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Defending Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
			
		
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
	if player.sub_job == 'WAR' then
		send_command('@input /lockstyleset 20')
		set_macro_page(1, 19) 
	elseif player.sub_job == 'NIN' then
		send_command('@input /lockstyleset 20')
		set_macro_page(1, 19)
	elseif player.sub_job == 'SAM' then
		send_command('@input /lockstyleset 20')
		send_command('@input //lua r equipviewer')
		send_command('@input //lua r anchor')
		set_macro_page(1, 19)
	else
		set_macro_page(1, 19)
	end
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	if spell.english == 'Poisonga' then 
		send_command('@input /echo <t> Poisonga')
	end	
end
		
function job_post_midcast(spell, action, spellMap, eventArgs)
	if spell.english == 'Resolution' then 
		send_command('@input /echo Fragmentation/ Scission/ Light')
	end	
end
	
function job_post_midcast(spell, action, spellMap, eventArgs)
	if spell.english == 'Torcleaver' then 
		send_command('@input /echo Distorion/ Light')
	end	
end

function job_post_midcast(spell, action, spellMap, eventArgs)
	if spell.english == 'Herculean Slash' then 
		send_command('@input /echo Induration/ Detonation/ Impaction')
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


function aftercast(action)
	if spell.action_type == 'Weaponskill' then
		add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
	end
end

function job_post_midcast(spell, action, spellMap, eventArgs)
    if buffactive['Dark Seal'] and S{"Drain III","Absorb-STR","Absorb-DEX","Absorb-VIT","Absorb-ACC", "Drain II",}:contains(spell.english)then
        equip({head="Fall. Burgeonet +1"})
    end
end	

function job_post_midcast(spell, action, spellMap, eventArgs)
    if buffactive['Nether Void'] and S{"Drain III","Absorb-STR","Absorb-DEX","Absorb-VIT","Absorb-ACC", "Drain II",}:contains(spell.english)then
        equip({legs="Heathen's Flanchard"})
	end
end
	

function get_obi(element)
    if element and elements.obi_of[element] then
        return (player.inventory[elements.obi_of[element]] or player.wardrobe[elements.obi_of[element]]) and elements.obi_of[element]
    end	
end