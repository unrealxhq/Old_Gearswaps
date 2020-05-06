


-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

	-- Load and initialize the include file.
	include('Mote-Include.lua')
	include('Mote-Mappings.lua')
	include('organizer-lib.lua') 
	
end


-- Setup vars that are user-independent.
function job_setup()
	--Healing Magic = S{'Cure','Cure II','Cure III','Cure IV'}

end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

function user_setup()
    state.OffenseMode:options('MaxDT', 'RefreshDT')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('idleRefresh', 'MaxDT')
    state.CastingMode:options('Freenuke', 'Magicburst')
	
	select_default_macro_book(1, 15)
	send_command ('bind numpad9 send @all input /follow Shiraj')	
	send_command ('bind numpad5 send @all input /t Shiraj cp')	
	send_command ('bind numpad7 send @all //ring')
	send_command ("bind numpad4 send @all /item 'Warp Ring' <me>")
	send_command ('bind numpad3 send @all /mount Raptor <me>')
end


function init_gear_sets()
	sets.Warp = {ring1="Warp Ring"}
	
	sets.perpetuance = {hands="Arbatel Bracers"}
	
	sets.Obi = {waist="Hachirin-no-Obi"}
	
	sets.Klima = {feet="Arbatel Loafers +1"}
	
	
	
	sets.Regen = {
		main="Bolelabunga",
		sub="Ammurapi Shield",
	    ammo="Sapience Orb",
		head="Arbatel Bonnet",
		body={ name="Telchine Chasuble", augments={'Enh. Mag. eff. dur. +10',}},
		hands="Telchine Gloves",
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +8',}},
		neck="Enhancing Torque",
		waist="Olympus Sash",
		left_ear="Andoaa Earring",
		right_ear="Mendi. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Lugh's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}
		
	sets.EnhancingSkill = {
		main="Pedagogy Staff",
		sub="Enki Strap",
	    ammo="Sapience Orb",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Telchine Chasuble", augments={'Enh. Mag. eff. dur. +10',}},
		hands="Telchine Gloves",
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +8',}},
		neck="Enhancing Torque",
		waist="Olympus Sash",
		left_ear="Andoaa Earring",
		right_ear="Mendi. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring +1",
		back={ name="Lugh's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}
		
	sets.Helix = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+9%','Mag. Acc.+11','"Mag.Atk.Bns."+8',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Magic burst dmg.+9%','Mag. Acc.+11','"Mag.Atk.Bns."+8',}},
		feet="Mallquis Clogs +2",
		neck="Argute Stole +1",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Friomisi Earring",
		left_ring="Freke Ring",
		right_ring="Stikini Ring +1",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}
		
	sets.MBHelix = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+23','Magic burst dmg.+9%','INT+3','Mag. Acc.+14',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+9%','Mag. Acc.+11','"Mag.Atk.Bns."+8',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Magic burst dmg.+9%','Mag. Acc.+11','"Mag.Atk.Bns."+8',}},
		feet="Mallquis Clogs +2",
		neck="Argute Stole +1",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Hermetic Earring",
		left_ring="Locus Ring",
		right_ring="Stikini Ring +1",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}
		
	sets.Cure = {
		main="Iridal Staff",
		sub="Enki Strap",
		ammo="Hydrocera",
		head={ name="Kaykaus Mitra", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		body={ name="Kaykaus Bliaut", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +8',}},
		legs="Acad. Pants +1",
		feet={ name="Kaykaus Boots", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%',}},
		neck="Nodens Gorget",
		waist="Luminary Sash",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Ephedra Ring",
		right_ring="Stikini Ring +1",
		back={ name="Lugh's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}

	sets.Macc = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Hydrocera",
		head="Acad. Mortar. +2",
		body="Acad. Gown +2",
		hands="Jhakri Cuffs +2",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Cure" potency +9%',	'Mag. Acc.+13','"Mag.Atk.Bns."+15',}},
		feet="Mallquis Clogs +2",
		neck="Argute Stole +1",
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Digni. Earring",
		left_ring="Kishar Ring",
		right_ring="Stikini Ring +1",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}

	
	sets.Freenuke = {
		main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Enki Strap",
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body={ name="Amalric Doublet +1", augments={'MP+80','"Mag.Atk.Bns."+25','"Fast Cast"+4',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet="Amalric Nails +1",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Friomisi Earring",
		left_ring="Freke Ring",
		right_ring="Stikini Ring +1",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}

	
	sets.Magicburst = {
		main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Enki Strap",
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst dmg.+9%','Mag. Acc.+11','"Mag.Atk.Bns."+8',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','Magic burst dmg.+9%','Mag. Acc.+11','"Mag.Atk.Bns."+8',}},
		feet="Arbatel Loafers +1",
		neck="Mizu. Kubikazari",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Hermetic Earring",
		left_ring="Mujin Band",
		right_ring="Locus Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}
	
	set.DrainAspir = {
		main="Akademos",
		sub="Niobid Strap",
		ammo="Pemphredo Tathlum",
		head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+29','"Drain" and "Aspir" potency +10','Mag. Acc.+12',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+24 "Mag.Atk.Bns."+24','INT+9','Mag. Acc.+12',}},
		hands={ name="Merlinic Dastanas", augments={'Mag. Acc.+29','"Drain" and "Aspir" potency +6','VIT+6',}},
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+27','"Conserve MP"+2','"Mag.Atk.Bns."+10',}},
		feet={ name="Merlinic Crackows", augments={'"Drain" and "Aspir" potency +10','CHR+7','Mag. Acc.+15','"Mag.Atk.Bns."+1',}},
		neck="Erra Pendant",
		waist="Fucho-no-Obi",
		left_ear="Digni. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},}

	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs				
	sets.precast.JA['Tabula Rasa'] = {}
	
	sets.precast.JA['Light Arts'] = {}
	
	sets.precast.JA['Dark Arts'] = {}
	
	sets.precast.JA['Modus Veritas'] = {}
	
	------------------------------------
	------ Light Arts Section ----------
	------------------------------------
	sets.precast.JA['Sublimation'] = {head="Acad. Mortar. +2"}
	
	sets.precast.JA['Libra'] = {}
	
	sets.precast.JA['Caper Emissarius'] = {}
	
	sets.precast.JA['Penury'] = {}
	
	sets.precast.JA['Celerity'] = {}
	
	sets.precast.JA['Rapture'] = {head="Arbatel Bonnet"}
	
	sets.precast.JA['Accession'] = {}

	sets.precast.JA['Addendum: White'] = {}

	sets.precast.JA['Perpetuance'] = {}

	------------------------------------
	------ Dark Arts Section -----------
	------------------------------------
	sets.precast.JA['Parismony'] = {}
	
	sets.precast.JA['Alacrity'] = {}

	sets.precast.JA['Ebullience'] = {head="Arbatel Bonnet"}

	sets.precast.JA['Manifestation'] = {}

	sets.precast.JA['Addendum: Black'] = {}
	
	sets.precast.JA['Immanence'] = {}
	
	-- Fast cast sets for spells
    sets.precast.FC = {
	    main="Oranyan",
		sub="Niobid Strap",
		ammo="Sapience Orb",
		head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		body="Zendik Robe",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Pinga Pants",
		feet="Amalric Nails +1",
		neck="Loricate Torque +1",
		waist="Channeler's Stone",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back={ name="Lugh's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}
		
			-- Fast Cast: 50% / -21% Enhancing Magic Casting Time 
			
		
		
		
-- 

	-- Weaponskill sets
	
	--------------------------------------
	-- Midcast sets
	--------------------------------------
	sets.midcast['Protect V'] = sets.EnhancingSkill
	
	sets.midcast['Shell V'] = sets.EnhancingSkill

	sets.midcast['Aquaveil'] = sets.EnhancingSkill

	sets.midcast['Stoneskin'] = sets.EnhancingSkill

	sets.midcast['Blink'] = sets.EnhancingSkill

	sets.midcast['Barfire'] = sets.EnhancingSkill
	
	sets.midcast['Barblizzard'] = sets.EnhancingSkill
		
	sets.midcast['Baraero'] = sets.EnhancingSkill
	
	sets.midcast['Barstone'] = sets.EnhancingSkill
		
	sets.midcast['Barthunder'] = sets.EnhancingSkill
		
	sets.midcast['Barwater'] = sets.EnhancingSkill
	
	sets.midcast['Regen IV'] = sets.Regen
	
	sets.midcast['Regen V'] = sets.Regen
	
	sets.midcast['Barpoison'] = sets.EnhancingSkill
		
	sets.midcast['Barparalyze'] = sets.EnhancingSkill
		
	sets.midcast['Barsleep'] = sets.EnhancingSkill
		
	sets.midcast['Baramnesia'] = sets.EnhancingSkill
		
	sets.midcast['Barblind'] = sets.EnhancingSkill
	
	sets.midcast['Barpetrify'] = sets.EnhancingSkill
		
	sets.midcast['Barvirus'] = sets.EnhancingSkill
		
	sets.midcast['Barsilence'] = sets.EnhancingSkill

	sets.midcast['Haste'] = sets.EnhancingSkill
	
	sets.midcast['Refresh'] = sets.EnhancingSkill

	sets.midcast['Phalanx'] = sets.EnhancingSkill

	sets.midcast['Sandstorm II'] = sets.EnhancingSkill

	sets.midcast['Rainstorm II'] = sets.EnhancingSkill

	sets.midcast['Windstorm II'] = sets.EnhancingSkill

	sets.midcast['Firestorm II'] = sets.EnhancingSkill

	sets.midcast['Hailstorm II'] = sets.EnhancingSkill

	sets.midcast['Thunderstorm II'] = sets.EnhancingSkill

	sets.midcast['Voidstorm II'] = sets.EnhancingSkill

	sets.midcast['Aurorastorm II'] = sets.EnhancingSkill
	
	sets.midcast['Adloquim'] = sets.EnhancingSkill
	
	sets.midcast['Flurry'] = sets.EnhancingSkill
---------------------------------------------------------------	
	sets.midcast['Distract'] = sets.Macc
	
	sets.midcast['Frazzle'] = sets.Macc
	
	sets.midcast['Dispel'] = sets.Macc
	
	sets.midcast['Gravity'] = sets.Macc
	
	sets.midcast['Sleep'] = sets.Macc
	
	sets.midcast['Dia II'] = sets.Macc
	
	sets.midcast['Slow'] = sets.Macc
	
	sets.midcast['Paralyze'] = sets.Macc
	
	sets.midcast['Silence'] = sets.Macc
	
	sets.midcast['Sleep II'] = sets.Macc
	
	sets.midcast['Blind'] = sets.Macc
	
	sets.midcast['Break'] = sets.Macc
	---------------------------------------------------
	sets.midcast['Geohelix'] = sets.Helix
	
	sets.midcast['Hydrohelix'] = sets.Helix
	
	sets.midcast['Anemohelix'] = sets.Helix
	
	sets.midcast['Pyrohelix'] = sets.Helix
	
	sets.midcast['Cryohelix'] = sets.Helix
	
	sets.midcast['Ionohelix'] = sets.Helix
	
	sets.midcast['Noctohelix'] = sets.Helix
	
	sets.midcast['Luminohelix'] = sets.Helix
	
	sets.midcast['Geohelix II'] = sets.Helix
	
	sets.midcast['Hydrohelix II'] = sets.Helix
	
	sets.midcast['Anemohelix II'] = sets.Helix
	
	sets.midcast['Pyrohelix II'] = sets.Helix
	
	sets.midcast['Cryohelix II'] = sets.Helix
	
	sets.midcast['Ionohelix II'] = sets.Helix
	
	sets.midcast['Noctohelix II'] = sets.Helix
	
	sets.midcast['Luminohelix II'] = sets.Helix
	----------------------------------------------------
	sets.midcast['Geohelix'].Magicburst = sets.MBHelix
	
	sets.midcast['Hydrohelix'].Magicburst = sets.MBHelix
	
	sets.midcast['Anemohelix'].Magicburst = sets.MBHelix
	
	sets.midcast['Pyrohelix'].Magicburst = sets.MBHelix
	
	sets.midcast['Cryohelix'].Magicburst = sets.MBHelix
	
	sets.midcast['Ionohelix'].Magicburst = sets.MBHelix
	
	sets.midcast['Noctohelix'].Magicburst = sets.MBHelix
	
	sets.midcast['Luminohelix'].Magicburst = sets.MBHelix
	
	sets.midcast['Geohelix II'].Magicburst = sets.MBHelix
	
	sets.midcast['Hydrohelix II'].Magicburst = sets.MBHelix
	
	sets.midcast['Anemohelix II'].Magicburst = sets.MBHelix
	
	sets.midcast['Pyrohelix II'].Magicburst = sets.MBHelix
	
	sets.midcast['Cryohelix II'].Magicburst = sets.MBHelix
	
	sets.midcast['Ionohelix II'].Magicburst = sets.MBHelix
	
	sets.midcast['Noctohelix II'].Magicburst = sets.MBHelix
	
	sets.midcast['Luminohelix II'].Magicburst = sets.MBHelix
	
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
-----------------------------------------------------------------	
	sets.midcast['Curaga'] = sets.cure
	
	sets.midcast['Curaga II'] = sets.cure
	
	sets.midcast['Cure'] = sets.Cure
	
	sets.midcast['Cure II'] = sets.Cure
	
	sets.midcast['Cure III'] = sets.Cure
	
	sets.midcast['Cure IV'] = sets.Cure
		
	sets.midcast['Klimaform'] = sets.EnhancingSkill
	
	
	
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {
		main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Enki Strap",
		ammo="Homiliary",
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Assid. Pants +1",
		feet="Mallquis Clogs +2",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Stikini Ring +1",
		back={ name="Lugh's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}
			
	sets.idleRefresh = {
		main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Enki Strap",
		ammo="Homiliary",
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Assid. Pants +1",
		feet="Mallquis Clogs +2",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Stikini Ring +1",
		back={ name="Lugh's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}
			
    sets.idle.MaxDT = {
		main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Enki Strap",
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Assid. Pants +1",
		feet="Mallquis Clogs +2",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Lugh's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}
		
	sets.Kiting = 
	{Legs="Carmine Cuisses +1"}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.MaxDT = {
		main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Enki Strap",
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Assid. Pants +1",
		feet="Mallquis Clogs +2",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Lugh's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}
		
	sets.engaged.RefreshDT = {		
		main={ name="Akademos", augments={'INT+15','"Mag.Atk.Bns."+15','Mag. Acc.+15',}},
		sub="Enki Strap",
		ammo="Homiliary",
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Assid. Pants +1",
		feet="Mallquis Clogs +2",
		neck="Loricate Torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation Earring",
		right_ear="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Stikini Ring +1",
		back={ name="Lugh's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},}

	
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
	if player.sub_job == 'RDM' then
		set_macro_page(1, 14) 
		send_command('@input /lockstyleset 56')
	elseif player.sub_job == 'BLM' then
		set_macro_page(1, 14)
		send_command('@input /lockstyleset 56')
	elseif player.sub_job == 'WHM' then
		set_macro_page(1, 14)
		send_command('@input /lockstyleset 56')
	else
		set_macro_page(1, 14)
	end
end


	if buffactive.perpetuance then 
	equip(sets.EnhancingSkill) send_command('@input /echo Enhancing')
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
    if buff == 'Perpetuance' then
        if gain then
            equip(sets.perpetuance)
            disable('hands')
        else
            enable('hands')
        end
    end
end

function job_post_midcast(spell, action, spellMap, eventArgs)
    if buffactive['Rainstorm'] and 'Elemental Magic' then 
		equip(sets.Obi) 
	elseif buffactive['Firestorm'] and 'Elemental Magic' then 
		equip(sets.Obi)
	elseif buffactive['Windstorm'] and 'Elemental Magic' then 
		equip(sets.Obi)
	elseif buffactive['Sandstorm'] and 'Elemental Magic' then 
		equip(sets.Obi)
	elseif buffactive['Hailstorm'] and 'Elemental Magic' then 
		equip(sets.Obi)
	elseif buffactive['Thunderstorm'] and 'Elemental Magic' then 
		equip(sets.Obi)
	elseif buffactive['Voidstorm'] and 'Elemental Magic' then 
		equip(sets.Obi)
	elseif buffactive['Aurorastorm'] and 'Elemental Magic' then 
		equip(sets.Obi)
	end	
	
	if buffactive['Klimaform'] and 'Elemental Magic' then 
		equip(sets.Klima)
	end
	
	if buffactive['Aurorastorm'] and 'Healing Magic' then
			equip(sets.Obi)
		end	
	

end
	



















