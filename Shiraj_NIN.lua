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
    state.OffenseMode:options('LowAccTP', 'DT', 'HighAccTP', 'Tank')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('DT', 'idleMovement')

	select_default_macro_book(1, 2)
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
		head="Volte Cap",
		body={ name="Samnuha Coat", augments={'Mag. Acc.+8','"Mag.Atk.Bns."+11','"Dual Wield"+2',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Mummu Kecks +2",
		feet="Mummu Gamash. +2",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Digni. Earring",
		right_ear="Hermetic Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
		
	sets.mab = {
		ammo="Pemphredo Tathlum",
		head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Phys. dmg. taken -2%','Mag. Acc.+6',}},
		body={ name="Samnuha Coat", augments={'Mag. Acc.+8','"Mag.Atk.Bns."+11','"Dual Wield"+2',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+1','AGI+6','Mag. Acc.+15',}},
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Digni. Earring",
		right_ear="Hermetic Earring",
		left_ring="Locus Ring",
		right_ring="Mujin Band",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs
		
	
    sets.precast.JA['Provoke'] = sets.enmity
	
	-- Fast cast sets for spells
    sets.precast.FC = {
		ammo="Sapience Orb",
		head={ name="Herculean Helm", augments={'Accuracy+17','"Triple Atk."+4','STR+6','Attack+7',}},
		body={ name="Taeon Tabard", augments={'Phalanx +3',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Arjuna Breeches",
		feet="Ahosi Leggings",
		neck="Magoraga Beads",
		waist="Flume Belt",
		left_ear="Loquac. Earring",
		right_ear="Etiolation Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back={ name="Andartia's Mantle", augments={'"Fast Cast"+10',}},}
		
			-- Fast Cast: 51% / -21% Enhancing Magic Casting Time / 36% Inspiration
			
		
		
-- 

	-- Weaponskill sets
    sets.precast.WS['Blade: Rin'] = {
		ammo="Happo Shuriken",
		head={ name="Lilitu Headpiece", augments={'STR+9','DEX+9','Attack+13','Weapon skill damage +2%',}},
		body={ name="Herculean Vest", augments={'Rng.Atk.+14','Pet: Haste+2','Weapon skill damage +8%','Accuracy+5 Attack+5',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Hiza. Hizayoroi +2",
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Brutal Earring",
		left_ring="Regal Ring",
		right_ring="Ilabrat Ring +1",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}
	
	-- Blade: Retsu Ice based, Paralysis effect 30%. Macc based/Mab based. --	
    sets.precast.WS['Blade: Retsu'] = {
		ammo="Pemphredo Tathlum",
		head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Phys. dmg. taken -2%','Mag. Acc.+6',}},
		body={ name="Samnuha Coat", augments={'Mag. Acc.+8','"Mag.Atk.Bns."+11','"Dual Wield"+2',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+1','AGI+6','Mag. Acc.+15',}},
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Digni. Earring",
		right_ear="Hermetic Earring",
		left_ring="Locus Ring",
		right_ring="Mujin Band",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
		
		
	sets.precast.WS['Blade: Teki'] = {
		ammo="Knobkierrie",
        head="Adhemar Bonnet", 
		neck="Caro Necklace", 
		ear1="Moonshade Earring", 
		ear2="Sherida Earring",
        body="Adhemar Jacket", 
		hands={ name="Herculean Gloves", augments={'Accuracy+25 Attack+25','Magic dmg. taken -2%','STR+14',}}, 
		ring1="Rufescent Ring", 
		ring2="Shukuyu Ring", 
		feet={ name="Herculean Boots", augments={'Accuracy+29','STR+15','Attack+12',}},
		back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+8','Weapon skill damage +10%',}}, 
		waist="Grunfeld Rope", 
		legs="Samnuha Tights"}
		
	sets.precast.WS['Blade: To'] = {       
		head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Phys. dmg. taken -2%','Mag. Acc.+6',}},
		body={ name="Samnuha Coat", augments={'Mag. Acc.+8','"Mag.Atk.Bns."+11','"Dual Wield"+2',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+1','AGI+6','Mag. Acc.+15',}},
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Digni. Earring",
		right_ear="Hermetic Earring",
		left_ring="Locus Ring",
		right_ring="Mujin Band",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	-- Blade: Chi hybrid - Mab, Acc, Macc, WSD --
	sets.precast.WS['Blade: Chi'] = {		
		head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+24','Crit.hit rate+2','STR+3','Mag. Acc.+15',}},
		body={ name="Herculean Vest", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+4%','STR+7',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+1%',}},
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Friomisi Earring",
		right_ear="Hermetic Earring",
		left_ring="Stikini Ring",
		right_ring="Acumen Ring",}

	
	sets.precast.WS['Blade: Ei'] = {}
	
	sets.precast.WS['Blade: Jin'] = {
		ammo="Happo Shuriken",
		head={ name="Lilitu Headpiece", augments={'STR+9','DEX+9','Attack+13','Weapon skill damage +2%',}},
		body={ name="Herculean Vest", augments={'Rng.Atk.+14','Pet: Haste+2','Weapon skill damage +8%','Accuracy+5 Attack+5',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Hiza. Hizayoroi +2",
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Brutal Earring",
		left_ring="Regal Ring",
		right_ring="Ilabrat Ring +1",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.precast.WS['Blade: Ten'] = {
		ammo="Happo Shuriken",
		head={ name="Herculean Helm", augments={'Accuracy+4 Attack+4','Weapon skill damage +3%','STR+2','Accuracy+12',}},
		body={ name="Herculean Vest", augments={'Rng.Atk.+14','Pet: Haste+2','Weapon skill damage +8%','Accuracy+5 Attack+5',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Hiza. Hizayoroi +2",
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Ilabrat Ring",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-2%',}},}
	
	
	-- Blade: Yu MAB based --
	sets.precast.WS['Blade: Yu'] = {}
	
	-- Blade: Hi Agi Modifier, WSD, 2 hit -- 
	sets.precast.WS['Blade: Hi'] = {
		ammo="Happo Shuriken",
		head="Mummu Bonnet +2",
		body="Mummu Jacket +2",
		hands="Mummu Wrists +1",
		legs="Hiza. Hizayoroi +2",
		feet="Mummu Gamash. +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Brutal Earring",
		left_ring="Regal Ring",
		right_ring="Ilabrat Ring +1",
		back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','"Store TP"+10',}},
		}
	
	sets.precast.WS['Blade: Shun'] = {
		ammo="Seki Shuriken",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Samnuha Tights",
		feet={ name="Herculean Boots", augments={'Attack+5','Crit.hit rate+1','Quadruple Attack +3','Accuracy+10 Attack+10','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},		
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Brutal Earring",
		left_ring="Regal Ring",
		right_ring="Ilabrat Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.precast.WS['Evisceration'] = {
		ammo="Happo Shuriken",
		head={ name="Herculean Helm", augments={'Accuracy+4 Attack+4','Weapon skill damage +3%','STR+2','Accuracy+12',}},
		body={ name="Herculean Vest", augments={'Rng.Atk.+14','Pet: Haste+2','Weapon skill damage +8%','Accuracy+5 Attack+5',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Hiza. Hizayoroi +2",
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},
		neck="Caro Necklace",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Regal Ring",
		right_ring="Ilabrat Ring",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-2%',}},}
	
	sets.precast.WS['Aeolian Edge'] = sets.mab
	--------------------------------------
	-- Midcast sets
	--------------------------------------
		
    sets.midcast['Utsusemi: Ni'] = sets.midcast['Utsusemi: Ichi']
    
    sets.midcast['Utsusemi: San'] = sets.midcast['Utsusemi: Ichi']
	
	sets.midcast['Utsusemi: Ichi'] = set_combine(sets.enmity, {
	neck="Magoraga Bead Necklace",
	feet="Hattori Kyahan +1",
	back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},})
	
	sets.midcast['Jubaku: Ichi'] = sets.Macc
	
	sets.midcast['Hojo: Ichi'] = sets.Macc
	
	sets.midcast['Hojo: Ni'] = sets.Macc
	
	sets.midcast['Kurayami: Ichi'] = sets.Macc
	
	sets.midcast['Kurayami: Ni'] = sets.Macc
	
	sets.midcast['Aisha: Ichi'] = sets.Macc

	sets.midcast['Dokumori: Ichi'] = sets.Macc
	
	
	sets.midcast['Katon: Ichi'] = sets.mab
	sets.midcast['Katon: Ni'] = sets.mab
	sets.midcast['Katon: San'] = sets.mab

	sets.midcast['Hyoton: Ichi'] = sets.mab
	sets.midcast['Hyoton: Ni'] = sets.mab
	sets.midcast['Hyoton: San'] = sets.mab
	
	sets.midcast['Huton: Ichi'] = sets.mab
	sets.midcast['Huton: Ni'] = sets.mab
	sets.midcast['Huton: San'] = sets.mab
	
	sets.midcast['Doton: Ichi'] = sets.mab
	sets.midcast['Doton: Ni'] = sets.mab
	sets.midcast['Doton: San'] = sets.mab
	
	sets.midcast['Raiton: Ichi'] = sets.mab
	sets.midcast['Raiton: Ni'] = sets.mab
	sets.midcast['Raiton: San'] = sets.mab
	
	sets.midcast['Suiton: Ichi'] = sets.mab
	sets.midcast['Suiton: Ni'] = sets.mab
	sets.midcast['Suiton: San'] = sets.mab
	

	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {
    ammo="Staunch Tathlum +1",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Ken. Tekko +1",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Hearty Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Gelatinous Ring +1",
    back="Moonlight Cape",
}			
	sets.idleMovement = {
    ammo="Staunch Tathlum +1",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Ken. Tekko +1",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Hearty Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Gelatinous Ring +1",
    back="Moonlight Cape",
}			
    sets.idle.DT = {
    ammo="Staunch Tathlum +1",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Ken. Tekko +1",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Hearty Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Gelatinous Ring +1",
    back="Moonlight Cape",
}			

	sets.Kiting = 
	{back="Mecisto. Mantle"}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {
		ammo="Seki Shuriken",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Malignance Tights",
		feet="Ken. Sune-Ate +1",
		neck="Ainia Collar",
		waist="Kentarch Belt +1",
		left_ear="Telos Earring",
		right_ear="Brutal Earring",
		left_ring="Gere Ring",
		right_ring="Ilabrat Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},}

	sets.engaged.HighAccTP = {
		ammo="Happo Shuriken",
		head="Ken. Jinpachi",
		body="Ken. Samue",
		hands="Ken. Tekko",
		legs="Ken. Hakama",
		feet="Ken. Sune-Ate",
		neck="Sanctity Necklace",
		waist="Kentarch Belt +1",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Petrov Ring",
		right_ring="Ilabrat Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	sets.engaged.DT = {
		ammo="Seki Shuriken",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Ken. Tekko +1",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Hearty Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
		
		sets.engaged.Tank = {}

		
	sets.engaged.CC = {
		ammo="Staunch Tathlum +1",
        head="Halitus Helm", 
		neck="Loricate Torque +1", 
		ear1="Odnowa Earring", 
		ear2="Odnowa Earring +1",
        body="Erilaz Surcoat +1", 
		hands="Turms Mittens", 
		ring1="Defending Ring", 
		ring2="Moonlight Ring",
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
		ring2="Moonlight Ring", 
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
		set_macro_page(1, 2)send_command('@input /lockstyleset 54')
		send_command('@input //lua r equipviewer')
		send_command('@input //lua r anchor')
	elseif player.sub_job == 'RDM' then
		set_macro_page(1, 2)
	elseif player.sub_job == 'SAM' then
		set_macro_page(1, 2)
	else
		set_macro_page(1, 2)
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

function job_aftercast(spell, action, eventArgs)
	if spell.type == "WeaponSkill" then 
		add_to_chat(217, 'TP Return: '..tostring(player.tp))
    end
end	


function job_precast(spell, action, spellMap, eventArgs)    
if spell.type == 'WeaponSkill' and player.target.distance > (3.4 + player.target.model_size) then 
        add_to_chat(123, spell.name..' Canceled: [Out of Range]')
        eventArgs.cancel = true        
        return
    elseif spell.type == 'WeaponSkill' and player.tp < 1000 then
        add_to_chat(123, spell.name..' Canceled: [Not Enough TP]')
        eventArgs.cancel = true
        return
    end
end 	   
