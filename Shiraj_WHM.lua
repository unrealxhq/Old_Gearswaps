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
    state.OffenseMode:options('DT')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('DT', 'Refresh', 'DTRefresh')

	select_default_macro_book(1, 7)
	
	send_command ('bind numpad9 send @all input /follow Shiraj')	
end


function init_gear_sets()
	sets.cure = {
		main="Raetic Rod +1",
		sub="Sors Shield",
		ammo="Hydrocera",
		head={ name="Kaykaus Mitra", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		body="Theo. Briault +3",
		hands="Theophany Mitts +3",
		legs="Ebers Pant. +1",
		feet={ name="Kaykaus Boots", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		neck="Cleric's Torque",
		waist="Korin Obi",
		left_ear="Nourish. Earring +1",
		right_ear="Glorious Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+8','"Cure" potency +10%',}},}

	sets.barspell = {
		main="Queller rod",
		sub="Ammurapi shield",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands="Inyan. Dastanas +2",
		legs="Piety Pantaloons",
		feet="Theo. Duckbills +2",
		neck="Enhancing Torque",
		waist="Cascade Belt",
		left_ear="Andoaa Earring",
		right_ear="Etiolation Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Moonlight Cape",}
	
	sets.enhancing = {
		main="Queller rod",
		sub="Ammurapi shield",
		head="Befouled Crown",
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands="Inyan. Dastanas +2",
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet={ name="Kaykaus Boots", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		neck="Enhancing Torque",
		waist="Cascade Belt",
		left_ear="Andoaa Earring",
		right_ear="Etiolation Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Moonlight Cape",}
		
	sets.duration = {
		sub="Ammurapi Shield",
		ammo="Staunch Tathlum +1",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +8',}},
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +8',}},
		neck="Loricate Torque +1",
		waist="Cascade Belt",
		left_ear="Andoaa Earring",
		right_ear="Gwati Earring",
		left_ring="Defending Ring",
		right_ring="Stikini Ring",
		back="Moonlight Cape",}

	sets.naspell = {
		main="Yagrush",
		sub="Sors Shield",
		ammo="Staunch Tathlum +1",
		head="Inyanga Tiara +2",
		body="Inyanga Jubbah +2",
		hands="Ebers Mitts +1",
		legs="Inyanga Shalwar +2",
		feet="Inyan. Crackows +2",
		neck="Cleric's Torque",
		waist="Luminary Sash",
		left_ear="Genmei Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+8','"Cure" potency +10%',}},}

	sets.macc = {
		main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Inyanga Tiara +2",
		body="Theo. Briault +3",
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Inyan. Crackows +2",
		neck="Erra Pendant",
		waist="Luminary Sash",
		left_ear="Digni. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring",
		right_ring="Weather. Ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+8','"Cure" potency +10%',}},}
		
	sets.enfeeble = {
		main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Inyanga Tiara +2",
		body="Theo. Briault +3",
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Theo. Duckbills +1",
		neck="Erra Pendant",
		waist="Luminary Sash",
		left_ear="Digni. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+8','"Cure" potency +10%',}},}
		
	sets.cursna = {
		main="Yagrush",
	    ammo="Hydrocera",
		head={ name="Kaykaus Mitra", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		body="Theo. Briault +3",
		hands="Fanatic Gloves",
		legs="Theo. Pantaloons",
		feet={ name="Kaykaus Boots", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		neck="Malison Medallion",
		waist="Korin Obi",
		left_ear="Nourish. Earring +1",
		right_ear="Mendi. Earring",
		left_ring="Ephedra Ring",
		right_ring="Ephedra Ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+8','"Cure" potency +10%',}},}

	sets.regen = {
	    main="Bolelabunga",
		sub="Ammurapi Shield",
		ammo="Hydrocera",
		head="Inyanga Tiara +2",
		body="Piety Briault",
		hands="Ebers Mitts +1",
		legs="Th. Pantaloons +2",
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +8',}},
		neck="Enhancing Torque",
		waist="Cascade Belt",
		left_ear="Andoaa Earring",
		right_ear="Etiolation Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Moonlight Cape",}

		
	sets.curaga = {
		main="Raetic Rod +1",
		sub="Sors Shield",
		ammo="Hydrocera",
		head={ name="Kaykaus Mitra", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		body="Theo. Briault +3",
		hands="Theophany Mitts +3",
		legs="Ebers Pant. +1",
		feet={ name="Kaykaus Boots", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		neck="Cleric's Torque",
		waist="Luminary Sash",
		left_ear="Nourish. Earring +1",
		right_ear="Glorious Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Alaunus's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+8','"Cure" potency +10%',}},}
		
		
		--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs				
	
	-- Fast cast sets for spells
    sets.precast.FC = {
		ammo="Sapience Orb",
		head="Haruspex Hat",
		body="Zendik Robe",
		hands="Fanatic Gloves",
		legs="Pinga Pants",
		feet={ name="Kaykaus Boots", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		neck="Cleric's Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Etiolation Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back={ name="Alaunus's Cape", augments={'HP+60','"Fast Cast"+10',}},}
		
			-- Fast Cast: 51% / -21% Enhancing Magic Casting Time 
	
	
	sets.precast['Cursna'] = sets.cure
	
	


	-- Weaponskill sets
	sets.precast['Mystic Boon'] = {}
	
	--------------------------------------
	-- Midcast sets
	--------------------------------------
	sets.midcast['Cure'] = sets.cure
	
	sets.midcast['Cure II'] = sets.cure

	sets.midcast['Cure III'] = sets.cure

	sets.midcast['Cure IV'] = sets.cure
	
	sets.midcast['Cure V'] = sets.cure
	
	sets.midcast['Cure VI'] = sets.cure
	
	sets.midcast['Curaga'] = sets.curaga
	
	sets.midcast['Curaga II'] = sets.curaga
	
	sets.midcast['Curaga III'] = sets.curaga
	
	sets.midcast['Curaga IV'] = sets.curaga
	
	sets.midcast['Curaga V'] = sets.curaga
	
	sets.midcast['Poisona'] = sets.naspell
	
	sets.midcast['Paralyna'] = sets.naspell
	
	sets.midcast['Blindna'] = sets.naspell
	
	sets.midcast['Silena'] = sets.naspell
	
	sets.midcast['Stona'] = sets.naspell
	
	sets.midcast['Viruna'] = sets.naspell
	
	sets.midcast['Cursna'] = sets.cursna
	
	sets.midcast['Sacrifice'] = sets.naspell
	
	sets.midcast['Esuna'] = sets.naspell
	
	sets.midcast['Erase'] = sets.naspell
	
	sets.midcast['Reraise'] = sets.cure
	
	sets.midcast['Reraise II'] = sets.cure
	
	sets.midcast['Reraise III'] = sets.cure
	
	sets.midcast['Reraise IV'] = sets.cure
	
	sets.midcast['Holy'] = sets.cure
	
	sets.midcast['Holy II'] = sets.cure
	
	sets.midcast['Banish'] = sets.cure
	
	sets.midcast['Banish II'] = sets.cure
	
	sets.midcast['Banish III'] = sets.cure
	
	sets.midcast['Banishga'] = sets.cure
	
	sets.midcast['Banishga II'] = sets.cure
	
	sets.midcast['Protect'] = sets.duration
	
	sets.midcast['Protect II'] = sets.duration
	
	sets.midcast['Protect III'] = sets.duration
	
	sets.midcast['Protect IV'] = sets.duration
	
	sets.midcast['Protect V'] = sets.duration
	
	sets.midcast['Shell'] = sets.duration
	
	sets.midcast['Shell II'] = sets.duration
	
	sets.midcast['Shell III'] = sets.duration
	
	sets.midcast['Shell IV'] = sets.duration

	sets.midcast['Shell V'] = sets.duration

	sets.midcast['Protectra'] = sets.duration
	
	sets.midcast['Protectra II'] = sets.duration
	
	sets.midcast['Protectra III'] = sets.duration
	
	sets.midcast['Protectra IV'] = sets.duration
	
	sets.midcast['Protectra V'] = sets.duration
	
	sets.midcast['Shellra'] = sets.duration
	
	sets.midcast['Shellra II'] = sets.duration
	
	sets.midcast['Shellra III'] = sets.duration
	
	sets.midcast['Shellra IV'] = sets.duration
	
	sets.midcast['Shellra V'] = sets.duration
	
	sets.midcast['Blink'] = sets.enhancing
	
	sets.midcast['Stoneskin'] = sets.duration
	
	sets.midcast['Aquaveil'] = sets.duration
	
	sets.midcast['Haste'] = sets.duration
	
	sets.midcast['Barfira'] = sets.barspell
	
	sets.midcast['Barblizzara'] = sets.barspell
	
	sets.midcast['Baraera'] = sets.barspell
	
	sets.midcast['Barstonra'] = sets.barspell
	
	sets.midcast['Barthundra'] = sets.barspell
	
	sets.midcast['Barwatera'] = sets.barspell
	
	sets.midcast['Barsleepra'] = sets.barspell
	
	sets.midcast['Barpoisonra'] = sets.barspell
	
	sets.midcast['Barparalyzra'] = sets.barspell
	
	sets.midcast['Barblindra'] = sets.barspell
	
	sets.midcast['Barsilencera'] = sets.barspell
	
	sets.midcast['Barpetra'] = sets.barspell
	
	sets.midcast['Barvira'] = sets.barspell
	
	sets.midcast['Baramnesra'] = sets.barspell
	
	sets.midcast['Auspice'] = sets.duration
	
	sets.midcast['Regen'] = sets.regen
	
	sets.midcast['Regen II'] = sets.regen
	
	sets.midcast['Regen III'] = sets.regen
	
	sets.midcast['Regen IV'] = sets.regen
	
	sets.midcast['Flash'] = sets.macc
	
	sets.midcast['Boost-STR'] = sets.duration
	
	sets.midcast['Boost-DEX'] = sets.duration
	
	sets.midcast['Boost-VIT'] = sets.duration
	
	sets.midcast['Boost-AGI'] = sets.duration
	
	sets.midcast['Boost-MND'] = sets.duration
	
	sets.midcast['Boost-INT'] = sets.duration
	
	sets.midcast['Boost-CHR'] = sets.duration
	
	sets.midcast['Slow'] = sets.enfeeble
	
	sets.midcast['Paralyze'] = sets.enfeeble
	
	sets.midcast['Silence'] = sets.enfeeble
	
	sets.midcast['Addle'] = sets.enfeeble
	
	sets.midcast['Dispel'] = sets.macc
	
	sets.midcast['Aspir'] = sets.drain
	
	sets.midcast['Drain'] = sets.drain
	
	sets.midcast['Sandstorm'] = sets.duration
	
	sets.midcast['Rainstorm'] = sets.duration
	
	sets.midcast['Windstorm'] = sets.duration
	
	sets.midcast['Firestorm'] = sets.duration
	
	sets.midcast['Hailstorm'] = sets.duration
	
	sets.midcast['Thunderstorm'] = sets.duration
	
	sets.midcast['Voidstorm'] = sets.duration
	
	sets.midcast['Aurorastorm'] = sets.duration
	
	sets.midcast['Repose'] = sets.macc
	
	sets.midcast['Cura III'] = sets.cure
	
	sets.midcast['Arise'] = sets.cure
	

	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {
		main="Asclepius",
		sub="Genmei Shield",
		ammo="Hydrocera",
		head="Befouled Crown",
		body="Theo. Briault +3",
		hands="Theophany Mitts +3",
		legs="Assid. Pants +1",
		feet="Inyan. Crackows +2",
		neck="Loricate Torque +1",
		waist="Luminary Sash",
		left_ear="Nourish. Earring +1",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape"}
			
	sets.DTRefresh = {
		main="Asclepius",
		sub="Genmei Shield",
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		body="Theo. Briault +3",
		hands="Theophany Mitts +3",
		legs="Assid. Pants +1",
		feet="Inyan. Crackows +2",
		neck="Loricate Torque +1",
		waist="Luminary Sash",
		left_ear="Nourish. Earring +1",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape"}
		
		sets.Refresh = {
		main="Asclepius",
		sub="Genmei Shield",
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		body="Theo. Briault +3",
		hands="Theophany Mitts +3",
		legs="Assid. Pants +1",
		feet="Inyan. Crackows +2",
		neck="Loricate Torque +1",
		waist="Luminary Sash",
		left_ear="Genmei Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape"}
			
    sets.idle.DT = {
		main="Asclepius",
		sub="Genmei Shield",
		ammo="Staunch Tathlum +1",
		head="Inyanga Tiara +2",
		body="Inyanga Jubbah +2",
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Inyan. Crackows +2",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Genmei Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Moonlight Cape",}

	sets.Kiting = 
		{body="Annoint. Kalasiris"}


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
		back="Moonlight Cape",}
			
		
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
	if player.sub_job == 'SCH' then
		set_macro_page(1, 7) send_command('@input /lockstyleset 54')
		send_command('@input //lua r equipviewer')
		send_command('@input //lua r anchor') 
	elseif player.sub_job == 'RDM' then
		set_macro_page(1, 7)
	elseif player.sub_job == 'BLM' then
		set_macro_page(1, 7)
	else
		set_macro_page(1, 7)
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