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
    state.OffenseMode:options('LowAccTP', 'DT')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('DT','MEva')
	state.CastingMode:options('Normal', 'Macc')

	select_default_macro_book(1, 6)
	
	send_command ('bind numpad9 send @all input /follow Shiraj')	
end


function init_gear_sets()
	sets.cure = {
		head={ name="Kaykaus Mitra", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		body="Vrikodara Jupon",
		hands={ name="Kaykaus Cuffs", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		legs="Inyanga Shalwar +2",
		feet={ name="Kaykaus Boots", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		neck="Nodens Gorget",
		waist="Luminary Sash",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},}

	sets.enhancing = {
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +8',}},
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +8',}},
		neck="Nodens Gorget",
		waist="Luminary Sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},}


	sets.Buffing = {
		main="Kali",
		range="Gjallarhorn",
		head="Fili Calot +1",
		body="Fili Hongreline +1",
		hands="Fili Manchettes +1",
		legs="Inyanga Shalwar +2",
		feet="Brioso Slippers +3",
		neck="Moonbow Whistle",
		waist="Luminary Sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},}

		
	sets.Macc = {
		sub="Ammurapi Shield",
		range="Gjallarhorn",
		head="Brioso Roundlet +2",
		body="Brioso Justau. +2",
		hands="Brioso Cuffs +2",
		legs="Brioso Cannions +2",
		feet="Brioso Slippers +3",
		neck="Moonbow Whistle",
		waist="Luminary Sash",
		left_ear="Hermetic Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},}
	
	sets.Duration = set_combine (sets.Macc,  {
		body="Fili Hongreline +1",
		legs="Inyanga Shalwar +2",
		feet="Brioso Slippers +3",
		})

	sets.Threnody = set_combine (sets.Macc,  {
		body="Mousai Manteel"
		})
		
	sets.Carol = set_combine (sets.Buffing,  {
		body="Mousai Gages"
		})
		--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs				
	
	-- Fast cast sets for spells
    sets.precast.FC = {
		head="Haruspex Hat",
		body="Inyanga Jubbah +2",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Aya. Cosciales +2",
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +8',}},
		neck="Moonbow Whistle",
		waist="Channeler's Stone",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},}
		
			-- Fast Cast: 51% / -21% Enhancing Magic Casting Time 
	
	
	


	-- Weaponskill sets
	sets.precast.WS["Rudra's Storm"] = {
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		feet={ name="Lustra. Leggings +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear="Telos Earring",
		left_ring="Petrov Ring",
		right_ring="Ilabrat Ring",
		back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	sets.precast.WS['Savage Blade'] = {
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		feet={ name="Lustra. Leggings +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear="Telos Earring",
		left_ring="Petrov Ring",
		right_ring="Ilabrat Ring",
		back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
	
	--------------------------------------
	-- Midcast sets
	--------------------------------------
	sets.Buffing = {
		main="Kali",
		head="Fili Calot +1",
		body="Fili Hongreline +1",
		hands="Fili Manchettes +1",
		legs="Inyanga Shalwar +2",
		feet="Brioso Slippers +3",
		neck="Moonbow Whistle",
		waist="Luminary Sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},}


	
	
	sets.midcast['Blade Madrigal'] = sets.Buffing
	sets.midcast['Sword Madrigal'] = sets.Buffing
	sets.midcast['Valor Minuet'] = sets.Buffing
	sets.midcast['Valor Minuet II'] = sets.Buffing
	sets.midcast['Valor Minuet III'] = sets.Buffing
	sets.midcast['Valor Minuet IV'] = sets.Buffing
	sets.midcast['Valor Minuet V'] = sets.Buffing
	
	sets.midcast["Archer's Prelude"] = sets.Buffing
	sets.midcast["Hunter's Prelude"] = sets.Buffing
	
	sets.midcast['Dragonfoe Mambo'] = sets.Buffing
	sets.midcast['Sheepfoe Mambo'] = sets.Buffing

	sets.midcast["Army's Paeon"] = sets.Buffing
	sets.midcast["Army's Paeon II"] = sets.Buffing
	sets.midcast["Army's Paeon III"] = sets.Buffing
	sets.midcast["Army's Paeon IV"] = sets.Buffing
	sets.midcast["Army's Paeon V"] = sets.Buffing
	sets.midcast["Army's Paeon VI"] = sets.Buffing
	
	sets.midcast["Mage's Ballad"] = sets.Buffing
	sets.midcast["Mage's Ballad II"] = sets.Buffing
	sets.midcast["Mage's Ballad III"] = sets.Buffing
	
	sets.midcast["Knight's Minne"] = sets.Buffing
	sets.midcast["Knight's Minne II"] = sets.Buffing
	sets.midcast["Knight's Minne III"] = sets.Buffing
	sets.midcast["Knight's Minne IV"] = sets.Buffing
	sets.midcast["Knight's Minne V"] = sets.Buffing
	
	sets.midcast['Fowl Aubade'] = sets.Buffing
	sets.midcast['Herb Pastoral'] = sets.Buffing
	sets.midcast['Shining Fantasia'] = sets.Buffing
	sets.midcast["Scop's Operetta"] = sets.Buffing
	sets.midcast["Puppet's Operetta"] = sets.Buffing
	sets.midcast['Gold Capriccio'] = sets.Buffing
	sets.midcast['Warding Round'] = sets.Buffing
	sets.midcast['Goblin Gavotte'] = sets.Buffing
	
	sets.midcast['Battlefield Elegy'] = sets.Macc
	sets.midcast['Carnage Elegy'] = sets.Macc
	
	sets.midcast['Sinewy Etude'] = sets.Buffing
	sets.midcast['Dextrous Etude'] = sets.Buffing
	sets.midcast['Vivacious Etude'] = sets.Buffing
	sets.midcast['Quick Etude'] = sets.Buffing
	sets.midcast['Learned Etude'] = sets.Buffing
	sets.midcast['Spirited Etude'] = sets.Buffing
	sets.midcast['Enchanting Etude'] = sets.Buffing
	sets.midcast['Herculean Etude'] = sets.Buffing
	sets.midcast['Uncanny Etude'] = sets.Buffing
	sets.midcast['Vital Etude'] = sets.Buffing
	sets.midcast['Swift Etude'] = sets.Buffing
	sets.midcast['Sage Etude'] = sets.Buffing
	sets.midcast['Logical Mambo'] = sets.Buffing
	sets.midcast['Bewitching Mambo'] = sets.Buffing
	
	sets.midcast['Fire Carol'] = sets.Carol
	sets.midcast['Fire Carol II'] = sets.Carol
	
	sets.midcast['Ice Carol'] = sets.Carol
	sets.midcast['Ice Carol II'] = sets.Carol
	
	sets.midcast['Wind Carol'] = sets.Carol
	sets.midcast['Wind Carol II'] = sets.Carol
	
	sets.midcast['Earth Carol'] = sets.Carol
	sets.midcast['Earth Carol II'] = sets.Carol
	
	sets.midcast['Lightning Carol'] = sets.Carol
	sets.midcast['Lightning Carol II'] = sets.Carol
	
	sets.midcast['Water Carol'] = sets.Carol
	sets.midcast['Water Carol II'] = sets.Carol
	
	sets.midcast['Light Carol'] = sets.Carol
	sets.midcast['Light Carol II'] = sets.Carol
	
	sets.midcast['Dark Carol'] = sets.Carol
	sets.midcast['Dark Carol II'] = sets.Carol

	sets.midcast['Fire Threnody'] = sets.Threnody
	sets.midcast['Fire Threnody II'] = sets.Threnody
	
	sets.midcast['Ice Threnody'] = sets.Threnody
	sets.midcast['Ice Threnody II'] = sets.Threnody
	
	sets.midcast['Wind Threnody'] = sets.Threnody
	sets.midcast['Wind Threnody II'] = sets.Threnody
	
	sets.midcast['Earth Threnody'] = sets.Threnody
	sets.midcast['Earth Threnody II'] = sets.Threnody
	
	sets.midcast['Lightning Threnody'] = sets.Threnody
	sets.midcast['Lightning Threnody II'] = sets.Threnody
	
	sets.midcast['Water Threnody'] = sets.Threnody
	sets.midcast['Water Threnody II'] = sets.Threnody
	
	sets.midcast['Light Threnody'] = sets.Threnody
	sets.midcast['Light Threnody II'] = sets.Threnody
	
	sets.midcast['Dark Threnody'] = sets.Threnody
	sets.midcast['Dark Threnody II'] = sets.Threnody
	
	sets.midcast['Magic Finale'] = sets.Macc
	sets.midcast["Goddess's Hymnus"] = sets.Buffing
	sets.midcast['Raptor Mazurka'] = sets.Buffing
	sets.midcast['Chocobo Mazurka'] = sets.Buffing
	sets.midcast["Maiden's Virelai"] = sets.Macc
	sets.midcast["Sentinel's Scherzo"] = sets.Buffing
	sets.midcast['Pining Nocturne'] = sets.Macc
	
	sets.midcast['Foe Requiem'] = sets.Macc
	sets.midcast['Foe Requiem II'] = sets.Macc
	sets.midcast['Foe Requiem III'] = sets.Macc
	sets.midcast['Foe Requiem IV'] = sets.Macc
	sets.midcast['Foe Requiem V'] = sets.Macc
	sets.midcast['Foe Requiem VI'] = sets.Macc
	sets.midcast['Foe Requiem VII'] = sets.Macc
	
	sets.midcast['Foe Lullaby'] = sets.Duration
	sets.midcast['Foe Lullaby II'] = sets.Duration
	
	sets.midcast['Foe Lullaby'].Macc = sets.Macc
	sets.midcast['Foe Lullaby II'].Macc = sets.Macc

	
	sets.midcast['Horde Lullaby'] = sets.Duration
	sets.midcast['Horde Lullaby II'] = sets.Duration
	
	sets.midcast['Horde Lullaby'].Macc = sets.Macc
	sets.midcast['Horde Lullaby II'].Macc = sets.Macc
	
	sets.midcast['Honor March']= {		
		main="Kali",
		range="Marsyas",
		head="Fili Calot +1",
		body="Fili Hongreline +1",
		hands="Fili Manchettes +1",
		legs="Inyanga Shalwar +2",
		feet="Brioso Slippers +3",
		neck="Moonbow Whistle",
		waist="Luminary Sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},}

	sets.midcast['Victory March']= {		
		main="Kali",
		range="Gjallarhorn",
		head="Fili Calot +1",
		body="Fili Hongreline +1",
		hands="Fili Manchettes +1",
		legs="Inyanga Shalwar +2",
		feet="Brioso Slippers +3",
		neck="Moonbow Whistle",
		waist="Luminary Sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},}
	sets.midcast['Cure'] = sets.cure
	
	sets.midcast['Cure II'] = sets.cure

	sets.midcast['Cure III'] = sets.cure

	sets.midcast['Cure IV'] = sets.cure
	
	sets.midcast['Curaga'] = sets.cure
	
	sets.midcast['Curaga II'] = sets.cure
		
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
	
	sets.midcast['Banish'] = sets.cure
	
	sets.midcast['Banish II'] = sets.cure
	
	sets.midcast['Protect'] = sets.enhancing
	
	sets.midcast['Protect II'] = sets.enhancing
	
	sets.midcast['Protect III'] = sets.enhancing
	
	sets.midcast['Shell'] = sets.enhancing
	
	sets.midcast['Shell II'] = sets.enhancing
	
	sets.midcast['Blink'] = sets.enhancing
	
	sets.midcast['Stoneskin'] = sets.enhancing
	
	sets.midcast['Aquaveil'] = sets.enhancing
	
	sets.midcast['Haste'] = sets.enhancing
	
	sets.midcast['Barfira'] = sets.enhancing
	
	sets.midcast['Barblizzara'] = sets.enhancing
	
	sets.midcast['Baraera'] = sets.enhancing
	
	sets.midcast['Barstonra'] = sets.enhancing
	
	sets.midcast['Barthundra'] = sets.enhancing
	
	sets.midcast['Barwatera'] = sets.enhancing
	
	sets.midcast['Barsleepra'] = sets.enhancing
	
	sets.midcast['Barpoisonra'] = sets.enhancing
	
	sets.midcast['Barparalyzra'] = sets.enhancing
	
	sets.midcast['Barblindra'] = sets.enhancing
	
	sets.midcast['Barsilencera'] = sets.enhancing
	
	sets.midcast['Barpetra'] = sets.enhancing
	
	sets.midcast['Barvira'] = sets.enhancing
	
	sets.midcast['Baramnesra'] = sets.enhancing
	
	sets.midcast['Auspice'] = sets.enhancing
	
	sets.midcast['Regen'] = sets.regen
	
	sets.midcast['Regen II'] = sets.regen
	
	sets.midcast['Flash'] = sets.macc
	
	sets.midcast['Slow'] = sets.enfeeble
	
	sets.midcast['Paralyze'] = sets.enfeeble
	
	sets.midcast['Silence'] = sets.enfeeble
	
	sets.midcast['Addle'] = sets.enfeeble
	
	sets.midcast['Dispel'] = sets.macc
	
	sets.midcast['Aspir'] = sets.drain
	
	sets.midcast['Drain'] = sets.drain
	
	sets.midcast['Sandstorm'] = sets.enhancing
	
	sets.midcast['Rainstorm'] = sets.enhancing
	
	sets.midcast['Windstorm'] = sets.enhancing
	
	sets.midcast['Firestorm'] = sets.enhancing
	
	sets.midcast['Hailstorm'] = sets.enhancing
	
	sets.midcast['Thunderstorm'] = sets.enhancing
	
	sets.midcast['Voidstorm'] = sets.enhancing
	
	sets.midcast['Aurorastorm'] = sets.enhancing
	

	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {}
			
	sets.idle.MEva = {
		head="Inyanga Tiara +2",
		body="Inyanga Jubbah +2",
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet="Inyan. Crackows +2",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Etiolation Earring",
		right_ear="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},}
		
    sets.idle.DT = {
		head="Volte Cap",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Aya. Cosciales +2",
		feet="Aya. Gambieras +2",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Etiolation Earring",
		right_ear="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},}

	sets.Kiting = 
	{Legs="Carmine Cuisses +1"}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Aya. Cosciales +2",
		feet="Aya. Gambieras +2",
		neck="Ainia Collar",
		waist="Kentarch Belt +1",
		left_ear="Telos Earring",
		right_ear="Brutal Earring",
		left_ring="Hetairoi Ring",
		right_ring="Moonlight Ring",
		back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}

	sets.engaged.HighAccTP = {}
	
	sets.engaged.DT = {
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Aya. Cosciales +2",
		feet="Aya. Gambieras +2",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Telos Earring",
		right_ear="Brutal Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},}
			
		
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
	if player.sub_job == 'NIN' then
		set_macro_page(1, 6) send_command('@input /lockstyleset 54')
		send_command('@input //lua r equipviewer')
		send_command('@input //lua r anchor') 
	elseif player.sub_job == 'WHM' then
		set_macro_page(1, 6)
	elseif player.sub_job == 'RDM' then
		set_macro_page(1, 6)
	else
		set_macro_page(1, 6)
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