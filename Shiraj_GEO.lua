-----------------------------------------------------------------------------------------------OffenseMode = F9. Weaponskill Mode = Windows Key + F9.   Idle mode = CTRL + F12.--------------
-------Casting Mode = CTRL + F11.

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
	
	AutoRemedy = false 
	AutoEcho = false 

end


function job_setup()
	geo_timer = ''
		indi_timer = ''
		indi_duration = 268
		entrust_timer = ''
		entrust_duration = 308
		entrust = 0
		newLuopan = 0
end


function user_setup()
    state.OffenseMode:options('DT')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('PetRegenDT', 'Refresh', 'DTRefresh')
    state.CastingMode:options('Freenuke', 'Magicburst', 'ConserveMP')
	state.UseCustomTimers 	  = M(true, 'Use Custom Timers')
	state.DisplayMode  	  	  = M(true, 'Display Mode')

	select_default_macro_book(1, 8)
	send_command ('bind numpad9 send @all input //hb follow Shiraj')	
	send_command ('bind numpad5 send @all input //lua r healbot')	
	send_command ('bind numpad6 send @all input //hb follow dist 1')	
	send_command ('bind numpad7 send @all //ring')
	send_command ("bind numpad4 send @all /item 'Warp Ring' <me>")
	send_command ('bind numpad3 send @all /mount Raptor <me>')
	
end


function init_gear_sets()
	sets.cure = {
		main="Raetic Rod +1",
		sub="Sors Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Vrikodara Jupon",
		hands="Geo. Mitaines +2",
		legs="Assid. Pants +1",
		feet={ name="Bagua Sandals +1", augments={'Enhances "Radial Arcana" effect',}},
		neck="Nodens Gorget",
		waist="Isa Belt",
		left_ear="Mendi. Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Ephedra Ring",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','Mag. Acc.+8','Pet: "Regen"+10','Pet: "Regen"+5',}},}
	
	sets.REnhancing = {
		main="Mafic Cudgel",
		sub="Ammurapi Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Amalric Coif +1",
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +8',}},
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +8',}},
		neck="Loricate Torque +1",
		waist="Siegel Sash",
		left_ear="Hearty Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}

	sets.Enhancing = {
		main="Mafic Cudgel",
		sub="Ammurapi Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +8',}},
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +8',}},
		neck="Loricate Torque +1",
		waist="Siegel Sash",
		left_ear="Hearty Earring",
		right_ear="Etiolation Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}

	
	sets.macc = {
		main="Idris",
		sub="Ammurapi Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		body="Geomancy Tunic +2",
		hands="Geo. Mitaines +2",
		legs="Geomancy Pants +2",
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Conserve MP"+2','INT+3','Mag. Acc.+7','"Mag.Atk.Bns."+1',}},
		neck="Erra Pendant",
		waist="Fucho-no-Obi",
		left_ear="Digni. Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','Mag. Acc.+8','Pet: "Regen"+10','Pet: "Regen"+5',}},}
		
	sets.regen = {}

	sets.geocolure = {
		main="Idris",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Geomancy Tunic +2",
		hands="Geo. Mitaines +2",
		legs="Assid. Pants +1",
		feet={ name="Bagua Sandals +1", augments={'Enhances "Radial Arcana" effect',}},
		neck="Loricate Torque +1",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','Mag. Acc.+8','Pet: "Regen"+10','Pet: "Regen"+5',}},}
	
	sets.indicolure = {
		main="Idris",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Geomancy Tunic +2",
		hands="Geo. Mitaines +2",
		legs={ name="Bagua Pants +1", augments={'Enhances "Mending Halation" effect',}},
		feet="Azimuth Gaiters",
		neck="Loricate Torque +1",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','Mag. Acc.+8','Pet: "Regen"+10','Pet: "Regen"+5',}},}
		
	sets.drain = {
		main="Idris",
		sub="Ammurapi Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Bagua Galero +1", augments={'Enhances "Primeval Zeal" effect',}},
		body={ name="Amalric Doublet +1", augments={'MP+80','"Mag.Atk.Bns."+25','"Fast Cast"+4',}},
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+29','"Drain" and "Aspir" potency +6','VIT+6',}},
		legs="Geomancy Pants +2",
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Conserve MP"+2','INT+3','Mag. Acc.+7','"Mag.Atk.Bns."+1',}},
		neck="Erra Pendant",
		waist="Fucho-no-Obi",
		left_ear="Digni. Earring",
		right_ear="Hermetic Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Nantosuelta's Cape", augments={'INT+4','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +9','"Mag.Atk.Bns."+10',}},}
	
	sets.Freenuke = {
		main="Idris",
		sub="Ammurapi Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Jhakri Coronal +2",
		body="Amalric Doublet +1",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
		neck="Mizu. Kubikazari",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Nantosuelta's Cape", augments={'INT+4','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +9','"Mag.Atk.Bns."+10',}},}
	
	sets.Magicburst = {
		main="Idris",
		sub="Ammurapi Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Ea Hat",
		body="Amalric Doublet +1",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Ea Slops",
		feet="Ea Pigaches",
		neck="Mizu. Kubikazari",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Mujin Band",
		right_ring="Locus Ring",
		back={ name="Nantosuelta's Cape", augments={'INT+4','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +9','"Mag.Atk.Bns."+10',}},}
		
		--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs				
	
	-- Fast cast sets for spells
    sets.precast.FC = {
		main="Idris",
		sub="Genmei Shield",
		head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		body="Zendik Robe",
		hands="Turms Mittens +1",
		legs="Geomancy Pants +2",
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
		neck="Loricate Torque +1",
		waist="Channeler's Stone",
		left_ear="Loquac. Earring",
		right_ear="Etiolation Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}
		
			-- Fast Cast: ??% / -??% Enhancing Magic Casting Time 
	
	
	sets.precast.JA.Bolster = {body="Bagua Tunic +1"}
	sets.precast.JA['Life Cycle'] = {body="Geo. Tunic +2",back=gear.idle_jse_back}
	sets.precast.JA['Radial Arcana'] = {feet="Bagua Sandals +1"}
	sets.precast.JA['Mending Halation'] = {legs="Bagua Pants +1"}
	sets.precast.JA['Full Circle'] = {head="Azimuth Hood +1",hands="Bagua Mitaines +1"}
	


	-- Weaponskill sets
	
	--------------------------------------
	-- Midcast sets
	--------------------------------------
	sets.midcast['Cure'] = sets.cure
	
	sets.midcast['Cure II'] = sets.cure

	sets.midcast['Cure III'] = sets.cure

	sets.midcast['Cure IV'] = sets.cure
	
	sets.midcast['Curaga'] = sets.cure
	
	sets.midcast['Curaga II'] = sets.cure
	
--------------------------------------------------------------	

	sets.midcast['Geo-Frailty'] = sets.geocolure
	
	sets.midcast['Geo-Malaise'] = sets.geocolure

	sets.midcast['Geo-Voidance'] = sets.geocolure

	sets.midcast['Geo-Focus'] = sets.geocolure

	sets.midcast['Geo-Attunement'] = sets.geocolure

	sets.midcast['Geo-Wilt'] = sets.geocolure

	sets.midcast['Geo-Fade'] = sets.geocolure

	sets.midcast['Geo-Torpor'] = sets.geocolure

	sets.midcast['Geo-Vex'] = sets.geocolure

	sets.midcast['Geo-Slow'] = sets.geocolure

	sets.midcast['Geo-Gravity'] = sets.geocolure

	sets.midcast['Geo-Precision'] = sets.geocolure

	sets.midcast['Geo-Fend'] = sets.geocolure

	sets.midcast['Geo-Acumen'] = sets.geocolure

	sets.midcast['Geo-Barrier'] = sets.geocolure

	sets.midcast['Geo-Fury'] = sets.geocolure

	sets.midcast['Geo-CHR'] = sets.geocolure

	sets.midcast['Geo-STR'] = sets.geocolure

	sets.midcast['Geo-INT'] = sets.geocolure
	
	sets.midcast['Geo-DEX'] = sets.geocolure
	
	sets.midcast['Geo-MND'] = sets.geocolure

	sets.midcast['Geo-VIT'] = sets.geocolure
	
	sets.midcast['Geo-AGI'] = sets.geocolure

	sets.midcast['Geo-Refresh'] = sets.geocolure
	
	sets.midcast['Geo-Regen'] = sets.geocolure

	sets.midcast['Geo-Poison'] = sets.geocolure
	
	sets.midcast['Geo-Haste'] = sets.geocolure
	
--------------------------------------------------------------	

	sets.midcast['Indi-Frailty'] = sets.indicolure
	
	sets.midcast['Indi-Malaise'] = sets.indicolure

	sets.midcast['Indi-Voidance'] = sets.indicolure

	sets.midcast['Indi-Focus'] = sets.indicolure

	sets.midcast['Indi-Attunement'] = sets.indicolure

	sets.midcast['Indi-Wilt'] = sets.indicolure

	sets.midcast['Indi-Fade'] = sets.indicolure

	sets.midcast['Indi-Torpor'] = sets.indicolure

	sets.midcast['Indi-Vex'] = sets.indicolure

	sets.midcast['Indi-Slow'] = sets.indicolure

	sets.midcast['Indi-Gravity'] = sets.indicolure

	sets.midcast['Indi-Precision'] = sets.indicolure

	sets.midcast['Indi-Fend'] = sets.indicolure

	sets.midcast['Indi-Acumen'] = sets.indicolure

	sets.midcast['Indi-Barrier'] = sets.indicolure

	sets.midcast['Indi-Fury'] = sets.indicolure

	sets.midcast['Indi-CHR'] = sets.indicolure

	sets.midcast['Indi-STR'] = sets.indicolure

	sets.midcast['Indi-INT'] = sets.indicolure
	
	sets.midcast['Indi-DEX'] = sets.indicolure
	
	sets.midcast['Indi-MND'] = sets.indicolure

	sets.midcast['Indi-VIT'] = sets.indicolure
	
	sets.midcast['Indi-AGI'] = sets.indicolure

	sets.midcast['Indi-Refresh'] = sets.indicolure
	
	sets.midcast['Indi-Regen'] = sets.indicolure

	sets.midcast['Indi-Poison'] = sets.indicolure
	
	sets.midcast['Indi-Haste'] = sets.indicolure

--------------------------------------------------------------	
	
	sets.midcast['Fire'] = sets.Freenuke

	sets.midcast['Fire'].Magicburst = sets.Magicburst
	
	sets.midcast['Fire II'] = sets.Freenuke

	sets.midcast['Fire II'].Magicburst = sets.Magicburst

	sets.midcast['Fire III'] = sets.Freenuke

	sets.midcast['Fire III'].Magicburst = sets.Magicburst

	sets.midcast['Fire IV'] = sets.Freenuke

	sets.midcast['Fire IV'].Magicburst = sets.Magicburst

	sets.midcast['Fire V'] = sets.Freenuke

	sets.midcast['Fire V'].Magicburst = sets.Magicburst

	sets.midcast['Blizzard'] = sets.Freenuke

	sets.midcast['Blizzard'].Magicburst = sets.Magicburst

	sets.midcast['Blizzard II'] = sets.Freenuke

	sets.midcast['Blizzard II'].Magicburst = sets.Magicburst

	sets.midcast['Blizzard III'] = sets.Freenuke

	sets.midcast['Blizzard III'].Magicburst = sets.Magicburst

	sets.midcast['Blizzard IV'] = sets.Freenuke

	sets.midcast['Blizzard IV'].Magicburst = sets.Magicburst

	sets.midcast['Blizzard V'] = sets.Freenuke

	sets.midcast['Blizzard V'].Magicburst = sets.Magicburst

	sets.midcast['Aero'] = sets.Freenuke

	sets.midcast['Aero'].Magicburst = sets.Magicburst

	sets.midcast['Aero II'] = sets.Freenuke

	sets.midcast['Aero II'].Magicburst = sets.Magicburst

	sets.midcast['Aero III'] = sets.Freenuke

	sets.midcast['Aero III'].Magicburst = sets.Magicburst

	sets.midcast['Aero IV'] = sets.Freenuke

	sets.midcast['Aero IV'].Magicburst = sets.Magicburst

	sets.midcast['Aero V'] = sets.Freenuke

	sets.midcast['Aero V'].Magicburst = sets.Magicburst

	sets.midcast['Stone'] = sets.Freenuke

	sets.midcast['Stone'].Magicburst = sets.Magicburst

	sets.midcast['Stone II'] = sets.Freenuke

	sets.midcast['Stone II'].Magicburst = sets.Magicburst

	sets.midcast['Stone III'] = sets.Freenuke

	sets.midcast['Stone III'].Magicburst = sets.Magicburst

	sets.midcast['Stone IV'] = sets.Freenuke

	sets.midcast['Stone IV'].Magicburst = sets.Magicburst

	sets.midcast['Stone V'] = sets.Freenuke

	sets.midcast['Stone V'].Magicburst = sets.Magicburst
	
	sets.midcast['Thunder'] = sets.Freenuke

	sets.midcast['Thunder'].Magicburst = sets.Magicburst

	sets.midcast['Thunder II'] = sets.Freenuke

	sets.midcast['Thunder II'].Magicburst = sets.Magicburst

	sets.midcast['Thunder III'] = sets.Freenuke

	sets.midcast['Thunder III'].Magicburst = sets.Magicburst

	sets.midcast['Thunder IV'] = sets.Freenuke

	sets.midcast['Thunder IV'].Magicburst = sets.Magicburst

	sets.midcast['Thunder V'] = sets.Freenuke

	sets.midcast['Thunder V'].Magicburst = sets.Magicburst

	sets.midcast['Water'] = sets.Freenuke

	sets.midcast['Water'].Magicburst = sets.Magicburst

	sets.midcast['Water II'] = sets.Freenuke

	sets.midcast['Water II'].Magicburst = sets.Magicburst

	sets.midcast['Water III'] = sets.Freenuke

	sets.midcast['Water III'].Magicburst = sets.Magicburst

	sets.midcast['Water IV'] = sets.Freenuke

	sets.midcast['Water IV'].Magicburst = sets.Magicburst

	sets.midcast['Water V'] = sets.Freenuke

	sets.midcast['Water V'].Magicburst = sets.Magicburst
	
	sets.midcast['Fira'] = sets.Freenuke
	
	sets.midcast['Fira II'] = sets.Freenuke
	
	sets.midcast['Fira III'] = sets.Freenuke
	
	sets.midcast['Blizzara'] = sets.Freenuke
	
	sets.midcast['Blizzara II'] = sets.Freenuke
	
	sets.midcast['Blizzara III'] = sets.Freenuke
	
	sets.midcast['Aera'] = sets.Freenuke
	
	sets.midcast['Aera II'] = sets.Freenuke
	
	sets.midcast['Aera III'] = sets.Freenuke
	
	sets.midcast['Stonera'] = sets.Freenuke
	
	sets.midcast['Stonera II'] = sets.Freenuke
	
	sets.midcast['Stonera III'] = sets.Freenuke
	
	sets.midcast['Thundara'] = sets.Freenuke
	
	sets.midcast['Thundara II'] = sets.Freenuke
	
	sets.midcast['Thundara III'] = sets.Freenuke
	
	sets.midcast['Watera'] = sets.Freenuke
	
	sets.midcast['Watera II'] = sets.Freenuke
	
	sets.midcast['Watera III'] = sets.Freenuke

--------------------------------------------------------------	
	
	sets.midcast['Haste'] = sets.Enhancing

	sets.midcast['Flurry'] = sets.Enhancing

	sets.midcast['Aquaveil'] = sets.REnhancing

	sets.midcast['Stoneskin'] = sets.Enhancing

	sets.midcast['Blink'] = sets.Enhancing

	sets.midcast['Refresh'] = sets.REnhancing

	sets.midcast['Dia'] = sets.macc

	sets.midcast['Dia II'] = sets.macc

	sets.midcast['Diaga'] = sets.macc

	sets.midcast['Slow'] = sets.macc

	sets.midcast['Paralyze'] = sets.macc

	sets.midcast['Silence'] = sets.macc

	sets.midcast['Poison'] = sets.macc
	
	sets.midcast['Poison II'] = sets.macc
	
	sets.midcast['Sleep'] = sets.macc

	sets.midcast['Sleep II'] = sets.macc

	sets.midcast['Blind'] = sets.macc

	sets.midcast['Bind'] = sets.macc

	sets.midcast['Dispel'] = sets.macc

	sets.midcast['Gravity'] = sets.macc

	sets.midcast['Distract'] = sets.macc

	sets.midcast['Frazzle'] = sets.macc

	sets.midcast['Bio'] = sets.macc

	sets.midcast['Bio II'] = sets.macc

	sets.midcast['Drain'] = sets.drain

	sets.midcast['Aspir'] = sets.drain

	sets.midcast['Aspir II'] = sets.drain

	sets.midcast['Aspir III'] = sets.drain
	
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {
		main="Idris",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Geomancy Tunic +2",
		hands="Geo. Mitaines +2",
		legs="Assid. Pants +1",
		feet={ name="Bagua Sandals +1", augments={'Enhances "Radial Arcana" effect',}},
		neck="Loricate Torque +1",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','Mag. Acc.+8','Pet: "Regen"+10','Pet: "Regen"+5',}},}
			
	sets.idle.DTRefresh = {
		main="Bolelabunga",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands={ name="Bagua Mitaines +1", augments={'Enhances "Curative Recantation" effect',}},
		legs="Assid. Pants +1",
		feet={ name="Bagua Sandals +1", augments={'Enhances "Radial Arcana" effect',}},
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}
		
		sets.idle.Refresh = {
		main="Bolelabunga",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands={ name="Bagua Mitaines +1", augments={'Enhances "Curative Recantation" effect',}},
		legs="Assid. Pants +1",
		feet={ name="Bagua Sandals +1", augments={'Enhances "Radial Arcana" effect',}},
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','Mag. Acc.+8','Pet: "Regen"+10','Pet: "Regen"+5',}},}
			
    sets.idle.DT = {}
	
	sets.idle.PetRegenDT = {
		main="Idris",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Geomancy Tunic +2",
		hands="Geo. Mitaines +2",
		legs="Assid. Pants +1",
		feet={ name="Bagua Sandals +1", augments={'Enhances "Radial Arcana" effect',}},
		neck="Loricate Torque +1",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','Mag. Acc.+8','Pet: "Regen"+10','Pet: "Regen"+5',}},}

	sets.Kiting = 
	{Legs="Carmine Cuisses +1"}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {}

	sets.engaged.HighAccTP = {}
	
	sets.engaged.DT = {
		main="Idris",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body="Geomancy Tunic +2",
		hands="Geo. Mitaines +2",
		legs="Assid. Pants +1",
		feet={ name="Bagua Sandals +1", augments={'Enhances "Radial Arcana" effect',}},
		neck="Loricate Torque +1",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Eva.+20 /Mag. Eva.+20','Mag. Acc.+8','Pet: "Regen"+10','Pet: "Regen"+5',}},}
			
		
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

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'RDM' then
		set_macro_page(1, 8) send_command('@input /lockstyleset 54')
		send_command('@input //lua r anchor') 
		send_command('@input //lua r equipviewer') 
		
	elseif player.sub_job == 'WHM' then
		set_macro_page(1, 8)
	elseif player.sub_job == 'BLM' then
		set_macro_page(1, 8)
	else
		set_macro_page(1, 8)
	end
end


function pretarget(spell,action)
	if not buffactive['Muddle'] then
		-- Auto Remedy --
		if AutoRemedy and (spell.action_type == 'Magic' or spell.type == 'JobAbility') then
			if buffactive['Paralysis'] or (buffactive['Silence'] and not AutoEcho) then
				cancel_spell()
				send_command('input /item "Remedy" <me>')
			end
		end
		-- Auto Echo Drop --
		if AutoEcho and spell.action_type == 'Magic' and buffactive['Silence'] then
			cancel_spell()
			send_command('input /item "Echo Drops" <me>')
		end
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
		
    if not spell.interrupted then
		if spell.english:startswith('Geo') then
            geo_timer = spell.english
			send_command('@timers c "'..geo_timer..'" 600 down spells/00136.png')
		elseif spell.english:startswith('Indi') then
			if entrust == 1 then
				entrust_timer = spell.english
				send_command('@timers c "'..entrust_timer..' ['..spell.target.name..']" '..entrust_duration..' down spells/00136.png')
				entrust = 0
			else
				send_command('@timers d "'..indi_timer..'"')
				indi_timer = spell.english
				send_command('@timers c "'..indi_timer..'" '..indi_duration..' down spells/00136.png')
			end
        elseif spell.english == "Sleep II" then
            send_command('@timers c "Sleep II ['..spell.target.name..']" 90 down spells/00259.png')
        elseif spell.english == "Sleep" or spell.english == "Sleepga" then -- Sleep & Sleepga Countdown --
            send_command('@timers c "Sleep ['..spell.target.name..']" 60 down spells/00253.png')
        elseif spell.english:startswith('Geo-') or spell.english == "Life Cycle" then
            newLuopan = 1
        end
    end
end
