-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

	-- Load and initialize the include file.
	include('Mote-Include.lua')
end


-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
	state.RangedMode:options('Normal', 'Acc')
	state.WeaponskillMode:options('Normal', 'Acc')
	state.OffenseMode:options('Normal', 'Melee', 'Acc')
	gear.default.weaponskill_neck = "Ocachi Gorget"
	gear.default.weaponskill_waist = "Elanid Belt"
	select_default_macro_book()
end



-- Set up all gear sets.

function init_gear_sets()
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs
	sets.precast.JA['Bounty Shot'] = {hands="Amini Glove. +1"}
	sets.precast.JA['Shadowbind'] = {
			head="Amini Gapette +1",
			neck="Iskur Gorget",
			ear1="Neritic Earring",
			ear2="Enervating Earring",
			body="Amini Caban +1",
			hands="Orion Bracers +2",
			ring1="Ilabrat Ring",
			ring2="Dingir Ring",
			 back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			waist="Scout's Belt",
			legs="Arc. Braccae +1",
			feet="Amini Bottillons +1"}
	sets.precast.JA['Camouflage'] = {body="Orion Jerkin +1"}
	sets.precast.JA['Scavenge'] = {feet="Orion Socks +1"}
	sets.precast.JA['Shadowbind'] = {hands="Orion Bracers +2"}
	sets.precast.JA['Sharpshot'] = {}
    sets.precast.JA["Eagle Eye Shot"] = {
			head="Meghanada Visor +1",
			neck="Iskur Gorget",
			ear1="Vulcan's Pearl",
			ear2="Telos Earring",
			body="Amini Caban +1",
			hands="Orion Bracers +2",
		    ring1="Ilabrat Ring",
			ring2="Dingir Ring",
			 back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
			waist="Yemaya Belt",
			legs="Arcadian Braccae +1",
			feet="Amini Bottillons +1"}

	-- Fast cast sets for spells

	sets.precast.FC = {
	head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    body={ name="Samnuha Coat", augments={'Mag. Acc.+11','"Mag.Atk.Bns."+10','"Fast Cast"+3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
    legs={ name="Crimson Cuisses", augments={'"Fast Cast"+3','VIT+2',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Baetyl Pendant",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring"}

	sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {neck="Magoraga Beads"})


	-- Ranged sets (snapshot) q ammo="Eradicating Bullet",
   -- head="Orion Beret +3",body="Oshosi Vest" hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},legs={ name="Adhemar Kecks", augments={'AGI+10','"Rapid Shot"+10','Enmity-5',}},feet="Meg. Jam. +2, neck="Iskur Gorget",waist="Yemaya Belt",left_ear="Enervating Earring",right_ear="Telos Earring",left_ring="Haverton Ring",right_ring="Regal Ring",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Snapshot"+10',}},--
	
	sets.precast.RA = {head="Orion Beret +2",
	body="Oshosi Vest",
	hands="Carmine Fin. Ga. +1",
	waist="Yemaya Belt",
	legs="Adhemar Kecks",
	feet="Meg. Jam. +2",
	neck="Iskur Gorget",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Snapshot"+10',}},
	right_ring="Haverton Ring",
	left_ring="Ilabrat Ring",
	right_ear="Sherida Earring",
	left_ear="Telos Earring",
	}
	
	--Double shot
	sets.precast.DoubleShot = {}
	sets.precast.DoubleShot = set_combine(sets.precast.Preshot, {body="Arc. jerkin +1"})


	-- Weaponskill sets
	-- Default set for any weaponskill that isn't any more specifically defined 
	sets.precast.WS = {head="Orion Beret +2",
    body="Meg. Cuirie +2",
    hands={ name="Herculean Gloves", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','DEX+14','Accuracy+9','Attack+2',}},
    legs="Jokushu Haidate",
    feet={ name="Herculean Boots", augments={'Rng.Atk.+28','Crit. hit damage +4%','DEX+10',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Vulcan's Pearl",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Ilabrat Ring",
    right_ring="Begrudging Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',"Magic Damage Taken-10%",}}}

	sets.precast.WS.Acc = set_combine(sets.precast.WS,{})
	
	
	
	sets.precast.WS["Evisceration"]   = set_combine(sets.precast.WS, {head="Mummu Bonnet +1",
    body="Meg. Cuirie +2",
    hands={ name="Herculean Gloves", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','DEX+14','Accuracy+9','Attack+2',}},
    legs="Jokushu Haidate",
    feet={ name="Herculean Boots", augments={'Rng.Atk.+28','Crit. hit damage +4%','DEX+10',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Telos Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Ilabrat Ring",
    right_ring="Begrudging Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}})

	-- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
	sets.precast.WS["Coronach"]     = set_combine(sets.precast.WS, {ammo="Chrono Bullet",
    head="Orion Beret +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs={ name="Herculean Trousers", augments={'Weapon skill damage +4%','AGI+5','Rng.Acc.+7','Rng.Atk.+2',}},
    feet={ name="Herculean Boots", augments={'Rng.Acc.+25 Rng.Atk.+25','Weapon skill damage +4%','AGI+9','Rng.Atk.+1',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Ilabrat Ring",
    right_ring="Dingir Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}})
	sets.precast.WS["Coronach"].Acc = set_combine(sets.precast.WS.Acc, {ring1="Ilabrat Ring"})

	sets.precast.WS['Last Stand']     = set_combine(sets.precast.WS,{
    main="Kustawi +1",
    sub="Nusku Shield",
    range="Fomalhaut",
    ammo="Chrono Bullet",
    head="Orion Beret +2",
    body={ name="Herculean Vest", augments={'Pet: DEX+5','"Dbl.Atk."+3','Weapon skill damage +7%','Accuracy+18 Attack+18','Mag. Acc.+2 "Mag.Atk.Bns."+2',}},
    hands="Meg. Gloves +2",
    legs="Meg. Chausses +2",
    feet="Meg. Jam. +2",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Ishvara Earring",
    left_ring="Regal Ring",
    right_ring="Ilabrat Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+1','Weapon skill damage +10%','Magic dmg. taken-10%',}},})
	
	sets.precast.WS['Detonator']     = set_combine(sets.precast.WS,{ammo="Chrono Bullet",
    head={ name="Herculean Helm", augments={'Rng.Atk.+24','Weapon skill damage +2%','AGI+9','Rng.Acc.+12',}},
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    legs={ name="Herculean Trousers", augments={'Weapon skill damage +4%','AGI+5','Rng.Acc.+7','Rng.Atk.+2',}},
    feet={ name="Herculean Boots", augments={'Rng.Acc.+25 Rng.Atk.+25','Weapon skill damage +4%','AGI+9','Rng.Atk.+1',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Ilabrat Ring",
    right_ring="Dingir Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}})
	
	sets.precast.WS['Last Stand'].Acc = set_combine(sets.precast.WS.Acc, {ammo="Chrono Bullet",
    --head={ name="Herculean Helm", augments={'Rng.Acc.+22 Rng.Atk.+22','Weapon skill damage +5%','DEX+8',}},
	head="Orion Beret +2",
    body="Meg. Cuirie +2",
    hands="Meg. Gloves +2",
    --legs={ name="Herculean Trousers", augments={'Weapon skill damage +4%','AGI+5','Rng.Acc.+7','Rng.Atk.+2',}},
	legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Rng.Acc.+25 Rng.Atk.+25','Weapon skill damage +4%','AGI+9','Rng.Atk.+1',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +25',}},
    left_ring="Ilabrat Ring",
    right_ring="Dingir Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}})
	

    sets.precast.WS['Wildfire'] = {ammo="Orichalc. Bullet",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+24','Crit.hit rate+2','STR+3','Mag. Acc.+15',}},
    neck="Sanctity Necklace",
	ear1="Friomisi Earring",
	ear2="Moonshade Earring",
    body={ name="Herculean Vest", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+4%','STR+7',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
	ring1="Ilabrat Ring",
    right_ring="Acumen Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+1','Weapon skill damage +10%','Magic dmg. taken-10%',}},
	waist="Eschan Stone",
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+1%',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},}

    
    sets.precast.WS['Trueflight'] = {ammo="Orichalc. Bullet",
    head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+24','Crit.hit rate+2','STR+3','Mag. Acc.+15',}},
    neck="Sanctity Necklace",
	ear1="Friomisi Earring",
	ear2="Moonshade Earring",
    body={ name="Herculean Vest", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+4%','STR+7',}},
    hands="Carmine Finger Gauntlets +1",
	ring1="Ilabrat Ring",
    right_ring="Acumen Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+1','Weapon skill damage +10%','Magic dmg. taken-10%',}},
	waist="Eschan Stone",
    legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+1%',}},
    feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+25','Weapon skill damage +5%','MND+5','Mag. Acc.+12',}},}


	--------------------------------------
	-- Midcast sets
	--------------------------------------

	-- Fast recast for spells
	
	sets.midcast.FastRecast = {head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    body={ name="Samnuha Coat", augments={'Mag. Acc.+11','"Mag.Atk.Bns."+10','"Fast Cast"+3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
    legs={ name="Crimson Cuisses", augments={'"Fast Cast"+3','VIT+2',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Baetyl Pendant",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring"}

	sets.midcast.Utsusemi = {}

	-- Ranged sets

	sets.midcast.RA = {ammo="Chrono Bullet",
    head="Meghanada Visor +2",
    body="Adhemar Jacket",
    hands="Oshosi Gloves",
    legs="Oshosi Trousers",
    feet="Meg. Jam. +2",
    neck="Iskur Gorget",
    waist="Yemaya Belt",
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring="Ilabrat Ring",
    right_ring="Regal Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Snapshot"+10',}},}
	
	sets.midcast.RA.Acc = set_combine(sets.midcast.RA,{head="Meghanada Visor +2",
	body="Mummu Jacket +2", 
	back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Snapshot+10',}},
	waist="Yemaya Belt",
	legs="Meg. Chausses +2 ",
	neck="Anu Torque",
	ring2="Regal",
	ring1="Ilabrat Ring",
	hands="Meg. Gloves +2",
	feet="Meg.Jambeux +2",})	

	sets.midcast.RA.Annihilator = set_combine(sets.midcast.RA)

	sets.midcast.RA.Annihilator.Acc = set_combine(sets.midcast.RA.Acc)

	sets.midcast.RA.Yoichinoyumi = set_combine(sets.midcast.RA, {ear2="Telos Earring",ring2="Rajas Ring"})

	sets.midcast.RA.Yoichinoyumi.Acc = set_combine(sets.midcast.RA.Acc, {ear2="Telos Earring"})
	
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------
	-- Idle sets
	sets.idle = {ammo="Chrono Bullet",
	head="Meghanada Visor +2",
    body="Adhemar Jacket +1",
    hands="Adhemar Wristbands +1",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    feet="Meg. Jam. +2",
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Genmei Earring",
    left_ring="Gelatinous Ring +1",
    right_ring="Defending Ring",
    back="Solemnity Cape"}
	
	-- Defense sets
	sets.defense.PDT = {
		head="Meghanada Visor +1",
    body="Meg. Cuirie +2",
    hands={ name="Herculean Gloves", augments={'Damage taken-3%','DEX+2','Attack+6',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    feet="Meg. Jam. +1",
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Odnowa Earring +1",
    right_ear="Genmei Earring",
    left_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -4%',}},
    right_ring="Defending Ring",
    back="Repulse Mantle"}

	sets.defense.MDT = {
		head="Meghanada Visor +1",
    body="Meg. Cuirie +2",
    hands={ name="Herculean Gloves", augments={'Damage taken-3%','DEX+2','Attack+6',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    feet="Meg. Jam. +1",
    neck="Loricate Torque +1",
    waist="Flume Belt +1",
    left_ear="Odnowa Earring +1",
    right_ear="Genmei Earring",
    left_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -4%',}},
    right_ring="Defending Ring",
    back="Repulse Mantle"}

	sets.Kiting = {legs="Carmine Cuisses +1" }


	--------------------------------------
	-- Engaged sets
	--------------------------------------

	sets.engaged = {
	head="Meghanada Visor +2",
    body="Adhemar Jacket +1",
    hands="Adhemar Wristbands +1",
    legs="Samnuha Tights",
    feet="Meg. Jam. +2",
    neck="Anu Torque",
    waist="Kentarch Belt +1",
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring="Petrov Ring",
    right_ring="Ilabrat Ring",
    back="Mecistopins Mantle"}
	
	sets.engaged.Melee = {
	head="Meghanada Visor +2",
    body="Adhemar Jacket +1",
    hands="Adhemar Wristbands +1",
    legs="Samnuha Tights",
    feet="Meg. Jam. +2",
    neck="Anu Torque",
    waist="Kentarch Belt +1",
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring="Petrov Ring",
    right_ring="Ilabrat Ring",
    back="Mecistopins Mantle"}

	sets.engaged.Acc = {
	head="Carmine Mask +1",
    body={ name="Herculean Vest", augments={'Accuracy+25 Attack+25','"Store TP"+6','DEX+8','Accuracy+13','Attack+5',}},
    hands={ name="Herculean Gloves", augments={'Accuracy+25 Attack+25','Crit.hit rate+3','DEX+14','Accuracy+9','Attack+2',}},
    legs={ name="Samnuha Tights", augments={'STR+8','DEX+9','"Dbl.Atk."+3','"Triple Atk."+2',}},
    feet={ name="Herculean Boots", augments={'"Triple Atk."+4','DEX+7','Accuracy+13',}},
    neck="Combatant's Torque",
    waist="Kentarch Belt +1",
    left_ear="Suppanomimi",
    right_ear="Telos Earring",
    left_ring="Epona's Ring",
    right_ring="Chirich Ring",
    --back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}}
	back="Lupine Cape"}

	--------------------------------------
	-- Custom buff sets
	--------------------------------------

	sets.buff.Barrage = {ammo="Chrono Bullet",head="Orion Beret +2",
    body="Mummu Jacket +1",
    hands="Orion Bracers +2",
    legs={ name="Herculean Trousers", augments={'Rng.Acc.+21 Rng.Atk.+21','STR+15','Rng.Acc.+15',}},
    feet={ name="Herculean Boots", augments={'Rng.Acc.+25 Rng.Atk.+25','DEX+10','Rng.Acc.+13',}},
    neck="Iskur Gorget",
    waist="Yemaya Belt",
    left_ear="Enervating Earring",
    right_ear="Telos Earring",
    left_ring="Ilabrat Ring",
    right_ring="Dingir Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}}}
	sets.buff.Camouflage = {body="Orion Jerkin +1"}
end




-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	set_macro_page(2, 5)
end

