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
    state.OffenseMode:options('LowAccTP', 'DT', 'MEva', 'Counter', 'Impetus')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('DT', 'idleMovement')

	select_default_macro_book(1, 11)

	send_command ('bind numpad9 send @all input /follow Shiraj')	
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
	
		
	
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs
				
	
    sets.precast.JA['Provoke'] = sets.enmity
	
	sets.precast.JA['Warcry'] = sets.enmity
	
	sets.precast.JA['Defender'] = {}
	
	sets.precast.JA['Focus'] = {head="Anchorite's Crown +1"}
	
	sets.precast.JA['Dodge'] = {feet="Anchorite's Gaiters +1"}
	
	sets.precast.JA['Chakra'] = {body="Anchorite's Cyclas"}
	
	sets.precast.JA['Boost'] = {hands="Anchorite's Gloves +1"}
	
	sets.precast.JA['Counterstance'] = {}
	
	sets.precast.JA['Chi Blast'] = {}
	
	sets.precast.JA['Perfect Counter'] = {}
	
	sets.precast.JA['Impetus'] = {}
	
	sets.precast.JA['Hundred Fists'] = {}
	
	sets.precast.JA['Inner Strength'] = {}
	
	sets.precast.JA['Footwork'] = {feet="Shukuyu Sune-Ate"}
	
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
		
		

	
	 sets.precast.WS["Rudra's Storm"] = {
		ammo="Yetshila",
		head={ name="Herculean Helm", augments={'Accuracy+4 Attack+4','Weapon skill damage +3%','STR+2','Accuracy+12',}},
		body={ name="Herculean Vest", augments={'Pet: DEX+5','"Dbl.Atk."+3','Weapon skill damage +7%',	'Accuracy+18 Attack+18','Mag. Acc.+2 "Mag.Atk.Bns."+2',}},
		hands="Meg. Gloves +2",
		legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		feet={ name="Lustra. Leggings +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Ilabrat Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},}

		
	--------------------------------------
	-- Midcast sets
	--------------------------------------
		
    sets.midcast['Phalanx'] = set_combine(sets.midcast['Enhancing Magic'], {
		head={ name="Fu. Bandeau +3", augments={'Enhances "Battuta" effect',}},
		body={ name="Taeon Tabard", augments={'Phalanx +3',}},
		hands={ name="Taeon Gloves", augments={'Phalanx +3',}},
		legs={ name="Taeon Tights", augments={'Phalanx +2',}},
		feet={ name="Taeon Boots", augments={'Phalanx +2',}},})
    
	

	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {
		ammo="Staunch Tathlum +1",
		head="Genmei Kabuto",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		legs="Mummu Kecks +2",
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Moonbow Belt",		
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape",}
			
	sets.idleMovement = {
		ammo="Staunch Tathlum +1",
		head="Genmei Kabuto",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		legs="Mummu Kecks +2",
		feet="Hermes' Sandals",
		neck="Loricate Torque +1",
		waist="Moonbow Belt",		
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape",}
			
    sets.idle.DT = {
		ammo="Staunch Tathlum +1",
		head="Genmei Kabuto",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		legs="Mummu Kecks +2",
		feet="Ahosi Leggings",
		neck="Loricate Torque +1",
		waist="Moonbow Belt",		
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape",}
			

	sets.Kiting = 
		{body="Bhikku Cyclas +1"}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {
		ammo="Yamarang",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Attack+5','Crit.hit rate+1','Quadruple Attack +3','Accuracy+10 Attack+10','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
		neck="Anu Torque",
		waist="Kentarch Belt +1",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Petrov Ring",
		right_ring="Moonlight Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},}

	sets.engaged.MEva = {
		ammo="Staunch Tathlum +1",
		head="Ken. Jinpachi",
		body="Ken. Samue",
		hands="Ken. Tekko",
		legs="Ken. Hakama",
		feet="Ken. Sune-Ate",
		neck="Loricate Torque +1",
		waist="Moonbow Belt",		
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape",}
	
	sets.engaged.Counter = {    
		ammo="Staunch Tathlum +1",
		head="Rao Kabuto",
		body="Reiki Osode",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Anch. Hose +2",
		feet={ name="Herculean Boots", augments={'Attack+5','Crit.hit rate+1','Quadruple Attack +3','Accuracy+10 Attack+10','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
		neck="Loricate Torque +1",
		waist="Moonbow Belt",		
		left_ear="Genmei Earring",
		right_ear="Cryptic Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},}

	
	
	sets.engaged.DT = {
		ammo="Staunch Tathlum +1",
		head="Genmei Kabuto",
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands="Kurys Gloves",
		legs="Mummu Kecks +2",
		feet="Ahosi Leggings",
		neck="Loricate Torque +1",
		waist="Moonbow Belt",		
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape",}
		
		sets.engaged.Clubs = {
		ammo="Yamarang",
		head={ name="Dampening Tam", augments={'DEX+9','Accuracy+13','Mag. Acc.+14','Quadruple Attack +2',}},
		body={ name="Herculean Vest", augments={'Accuracy+24 Attack+24','"Triple Atk."+3','DEX+1','Accuracy+15','Attack+1',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Anu Torque",
		waist="Kentarch Belt +1",
		left_ear="Telos Earring",
		right_ear="Sherida Earring",
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','HP+2','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}
		
	sets.engaged.Impetus = {	
		ammo="Ginsen",
		head="Adhemar Bonnet +1",
		body="Bhikku Cyclas +1",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Attack+5','Crit.hit rate+1','Quadruple Attack +3','Accuracy+10 Attack+10','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
		neck="Monk's Nodowa",
		waist="Moonbow Belt",				
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},}
		
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
	if player.sub_job == 'WAR' then
		set_macro_page(1, 11) send_command('@input /lockstyleset 37')
		send_command('@input //lua r equipviewer')
		send_command('@input //lua r anchor')
	elseif player.sub_job == 'NIN' then
		set_macro_page(1, 11)
	elseif player.sub_job == 'SAM' then
		set_macro_page(1, 11)
	else
		set_macro_page(1, 11)
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


function job_buff_change(buff, gain)
	end


function job_post_precast(spell, action, spellMap, eventArgs)
    if buffactive['Impetus'] and spell.english == 'Victory Smite' then 
		equip(sets.VS)
	end
end
function on_action_for_impetus(action)
    if state.Buff.Impetus then
        -- count melee hits by player
        if action.actor_id == player.id then
            if action.category == 1 then
                for _,target in pairs(action.targets) do
                    for _,action in pairs(target.actions) do
                        -- Reactions (bitset):
                        -- 1 = evade
                        -- 2 = parry
                        -- 4 = block/guard
                        -- 8 = hit
                        -- 16 = JA/weaponskill?
                        -- If action.reaction has bits 1 or 2 set, it missed or was parried. Reset count.
                        if (action.reaction % 4) > 0 then
                            info.impetus_hit_count = 0
                        else
                            info.impetus_hit_count = info.impetus_hit_count + 1
                        end
                    end
                end
            elseif action.category == 3 then
                -- Missed weaponskill hits will reset the counter.  Can we tell?
                -- Reaction always seems to be 24 (what does this value mean? 8=hit, 16=?)
                -- Can't tell if any hits were missed, so have to assume all hit.
                -- Increment by the minimum number of weaponskill hits: 2.
                for _,target in pairs(action.targets) do
                    for _,action in pairs(target.actions) do
                        -- This will only be if the entire weaponskill missed or was parried.
                        if (action.reaction % 4) > 0 then
                            info.impetus_hit_count = 0
                        else
                            info.impetus_hit_count = info.impetus_hit_count + 2
                        end
                    end
                end
            end
        elseif action.actor_id ~= player.id and action.category == 1 then
            -- If mob hits the player, check for counters.
            for _,target in pairs(action.targets) do
                if target.id == player.id then
                    for _,action in pairs(target.actions) do
                        -- Spike effect animation:
                        -- 63 = counter
                        -- ?? = missed counter
                        if action.has_spike_effect then
                            -- spike_effect_message of 592 == missed counter
                            if action.spike_effect_message == 592 then
                                info.impetus_hit_count = 0
                            elseif action.spike_effect_animation == 63 then
                                info.impetus_hit_count = info.impetus_hit_count + 1
                            end
                        end
                    end
                end
            end
        end
        
        --add_to_chat(123,'Current Impetus hit count = ' .. tostring(info.impetus_hit_count))
    else
        info.impetus_hit_count = 0
    end
    
end