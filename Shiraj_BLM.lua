-----------------------------------------------------------------------------------------------OffenseMode = F9. Weaponskill Mode = Windows Key + F9.   Idle mode = CTRL + F12.--------------
-------Casting Mode = CTRL + F11.

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

	-- Load and initialize the include file.
	include('Mote-Include.lua')
	include('organizer-lib.lua') 
	
end


function job_setup()
end


function user_setup()
    state.OffenseMode:options('DT')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('Refresh', 'DTRefresh')
    state.CastingMode:options('Freenuke', 'Magicburst')

	select_default_macro_book(1, 9)
end


function init_gear_sets()
	sets.cure = {
		ammo="Hydrocera",
		head="Befouled Crown",
		body="Vrikodara Jupon",
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +8',}},
		legs="Assid. Pants +1",
		feet="Skaoi Boots",
		neck="Nodens Gorget",
		waist="Luminary Sash",
		left_ear="Roundel Earring",
		right_ear="Mendi. Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back="Solemnity Cape",}
	
	sets.REnhancing = {
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
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}

	sets.Enhancing = {
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
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}

	
	sets.macc = {
		main="Lathi",
		sub="Niobid Strap",
		ammo="Pemphredo Tathlum",
		head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','INT+9','Mag. Acc.+12',}},
		hands="Jhakri Cuffs +1",
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+27','"Conserve MP"+2','"Mag.Atk.Bns."+10',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Conserve MP"+2','INT+3','Mag. Acc.+7','"Mag.Atk.Bns."+1',}},
		neck="Erra Pendant",
		waist="Luminary Sash",
		left_ear="Digni. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}
		
		
	sets.drain = {
		main="Lathi",
		sub="Niobid Strap",
		ammo="Pemphredo Tathlum",
		head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+29','"Drain" and "Aspir" potency +10','Mag. Acc.+12',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','INT+9','Mag. Acc.+12',}},
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+29','"Drain" and "Aspir" potency +6','VIT+6',}},
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+27','"Conserve MP"+2','"Mag.Atk.Bns."+10',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','"Conserve MP"+2','INT+3','Mag. Acc.+7','"Mag.Atk.Bns."+1',}},
		neck="Erra Pendant",
		waist="Fucho-no-Obi",
		left_ear="Digni. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}
	
	sets.Freenuke = {
		main="Lathi",
		sub="Enki Strap",
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body="Amalric Doublet +1",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Hermetic Earring",
		right_ear="Friomisi Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}
	
	sets.Magicburst = {
		main={ name="Lathi", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Niobid Strap",
		ammo="Pemphredo Tathlum",
		head="Ea Hat",
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+9%','Mag. Acc.+11','"Mag.Atk.Bns."+8',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Ea Slops",
		feet="Ea Pigaches",
		neck="Mizu. Kubikazari",
		waist="Hachirin-no-Obi",
		left_ear="Hermetic Earring",
		right_ear="Friomisi Earring",
		left_ring="Locus Ring",
		right_ring="Mujin Band",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}
		
		--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs				
	
	-- Fast cast sets for spells
    sets.precast.FC = {
		sub="Niobid Strap",
		ammo="Sapience Orb",
		head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		body="Zendik Robe",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
		neck="Sanctity Necklace",
		waist="Channeler's Stone",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}
		
			-- Fast Cast: 69% / -??% Enhancing Magic Casting Time 
	
	
	
	


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
	
	sets.midcast['Fire VI'] = sets.Freenuke

	sets.midcast['Fire VI'].Magicburst = sets.Magicburst
	
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
	
	sets.midcast['Blizzard VI'] = sets.Freenuke

	sets.midcast['Blizzard VI'].Magicburst = sets.Magicburst

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
	
	sets.midcast['Aero VI'] = sets.Freenuke

	sets.midcast['Aero VI'].Magicburst = sets.Magicburst
	
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
	
	sets.midcast['Stone VI'] = sets.Freenuke

	sets.midcast['Stone VI'].Magicburst = sets.Magicburst
	
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
	
	sets.midcast['Thunder VI'] = sets.Freenuke

	sets.midcast['Thunder VI'].Magicburst = sets.Magicburst

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
	
	sets.midcast['Water VI'] = sets.Freenuke

	sets.midcast['Water VI'].Magicburst = sets.Magicburst
	
	sets.midcast['Flood'] = sets.Freenuke

	sets.midcast['Flood'].Magicburst = sets.Magicburst
	
	sets.midcast['Flood II'] = sets.Freenuke

	sets.midcast['Flood II'].Magicburst = sets.Magicburst
	
	sets.midcast['Flare'] = sets.Freenuke

	sets.midcast['Flare'].Magicburst = sets.Magicburst
	
	sets.midcast['Flare II'] = sets.Freenuke

	sets.midcast['Flare II'].Magicburst = sets.Magicburst
	
	sets.midcast['Freeze'] = sets.Freenuke

	sets.midcast['Freeze'].Magicburst = sets.Magicburst
	
	sets.midcast['Freeze II'] = sets.Freenuke

	sets.midcast['Freeze II'].Magicburst = sets.Magicburst
	
	sets.midcast['Tornado'] = sets.Freenuke

	sets.midcast['Tornado'].Magicburst = sets.Magicburst
	
	sets.midcast['Tornado II'] = sets.Freenuke

	sets.midcast['Tornado II'].Magicburst = sets.Magicburst
	
	sets.midcast['Quake'] = sets.Freenuke

	sets.midcast['Quake'].Magicburst = sets.Magicburst
	
	sets.midcast['Quake II'] = sets.Freenuke

	sets.midcast['Quake II'].Magicburst = sets.Magicburst
	
	sets.midcast['Burst'] = sets.Freenuke

	sets.midcast['Burst'].Magicburst = sets.Magicburst
	
	sets.midcast['Burst II'] = sets.Freenuke

	sets.midcast['Burst II'].Magicburst = sets.Magicburst

	sets.midcast['Firaja'] = sets.Freenuke

	sets.midcast['Firaja'].Magicburst = sets.Magicburst

	sets.midcast['Blizzaja'] = sets.Freenuke

	sets.midcast['Blizzaja'].Magicburst = sets.Magicburst

	sets.midcast['Aeroja'] = sets.Freenuke

	sets.midcast['Aeroja'].Magicburst = sets.Magicburst

	sets.midcast['Stoneja'] = sets.Freenuke

	sets.midcast['Stoneja'].Magicburst = sets.Magicburst

	sets.midcast['Thundaja'] = sets.Freenuke

	sets.midcast['Thundaja'].Magicburst = sets.Magicburst

	sets.midcast['Waterja'] = sets.Freenuke

	sets.midcast['Waterja'].Magicburst = sets.Magicburst

	sets.midcast['Comet'] = sets.Freenuke

	sets.midcast['Comet'].Magicburst = sets.Magicburst

	sets.midcast['Meteor'] = sets.Freenuke

	sets.midcast['Meteor'].Magicburst = sets.Magicburst
	
	sets.midcast['Firaga'] = sets.Freenuke

	sets.midcast['Firaga'].Magicburst = sets.Magicburst
	
	sets.midcast['Firaga II'] = sets.Freenuke

	sets.midcast['Firaga II'].Magicburst = sets.Magicburst

	sets.midcast['Firaga III'] = sets.Freenuke

	sets.midcast['Firaga III'].Magicburst = sets.Magicburst

	sets.midcast['Blizzaga'] = sets.Freenuke

	sets.midcast['Blizzaga'].Magicburst = sets.Magicburst
	
	sets.midcast['Blizzaga II'] = sets.Freenuke

	sets.midcast['Blizzaga II'].Magicburst = sets.Magicburst

	sets.midcast['Blizzaga III'] = sets.Freenuke

	sets.midcast['Blizzaga III'].Magicburst = sets.Magicburst

	sets.midcast['Aeroga'] = sets.Freenuke

	sets.midcast['Aeroga'].Magicburst = sets.Magicburst
	
	sets.midcast['Aeroga II'] = sets.Freenuke

	sets.midcast['Aeroga II'].Magicburst = sets.Magicburst

	sets.midcast['Aeroga III'] = sets.Freenuke

	sets.midcast['Aeroga III'].Magicburst = sets.Magicburst

	sets.midcast['Stonega'] = sets.Freenuke

	sets.midcast['Stonega'].Magicburst = sets.Magicburst
	
	sets.midcast['Stonega II'] = sets.Freenuke

	sets.midcast['Stonega II'].Magicburst = sets.Magicburst

	sets.midcast['Stonega III'] = sets.Freenuke

	sets.midcast['Stonega III'].Magicburst = sets.Magicburst

	sets.midcast['Thundaga'] = sets.Freenuke

	sets.midcast['Thundaga'].Magicburst = sets.Magicburst
	
	sets.midcast['Thundaga II'] = sets.Freenuke

	sets.midcast['Thundaga II'].Magicburst = sets.Magicburst

	sets.midcast['Thundaga III'] = sets.Freenuke

	sets.midcast['Thundaga III'].Magicburst = sets.Magicburst

	sets.midcast['Waterga'] = sets.Freenuke

	sets.midcast['Waterga'].Magicburst = sets.Magicburst
	
	sets.midcast['Waterga II'] = sets.Freenuke

	sets.midcast['Waterga II'].Magicburst = sets.Magicburst

	sets.midcast['Waterga III'] = sets.Freenuke

	sets.midcast['Waterga III'].Magicburst = sets.Magicburst



















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
		main="Lathi",
		sub="Niobid Strap",
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Assid. Pants +1",
		feet="Mallquis Clogs",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}
			
	sets.idle.DTRefresh = {
		main="Lathi",
		sub="Niobid Strap",
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Assid. Pants +1",
		feet="Mallquis Clogs +2",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}
		
	sets.idle.Refresh = {
		main="Lathi",
		sub="Niobid Strap",
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Assid. Pants +1",
		feet="Mallquis Clogs +2",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}
			
    sets.idle.DT = {}
	

	sets.Kiting = 
	{Legs="Carmine Cuisses +1"}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {}

	sets.engaged.HighAccTP = {}
	
	sets.engaged.DT = {
		main="Lathi",
		sub="Niobid Strap",
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Assid. Pants +1",
		feet="Mallquis Clogs",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}
			
		
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
		set_macro_page(1, 9) send_command('@input /lockstyleset 55')
		send_command('@input //lua r anchor') 
		send_command('@input //lua r equipviewer') 
		
	elseif player.sub_job == 'WHM' then
		set_macro_page(1, 9)
	elseif player.sub_job == 'BLM' then
		set_macro_page(1, 9)
	else
		set_macro_page(1, 9)
	end
end

