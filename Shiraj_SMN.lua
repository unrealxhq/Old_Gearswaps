-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

	-- Load and initialize the include file.
	include('Mote-Include.lua')
	include('organizer-lib.lua') 
end


-- Setup vars that are user-independent.
function job_setup()
    -- Table of Staunch Tathlum +1
   
    -- entry = rune, index, expires
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

function user_setup()
    state.OffenseMode:options('LowAccTP', 'DT', 'HighAccTP')
    state.WeaponskillMode:options('Normal', 'Acc')
    state.PhysicalDefenseMode:options('DT', 'Resist')
    state.IdleMode:options('Refresh', 'DT')

	select_default_macro_book(1, 17)
end


function init_gear_sets()
	sets.BPtimer = {}
		
	sets.VoltStrike = {
		}

	sets.MagicBP = {}
	
	sets.PetMacc = {}
	
	sets.Hybrid = {}
	--------------------------------------
	-- Precast sets
	--------------------------------------

	-- Precast sets to enhance JAs				
	
	-- Fast cast sets for spells
    sets.precast.FC = {}		
			-- Fast Cast: 55% - 70% /rdm
			
			
		
		
-- 

	-- Weaponskill sets
	
	--------------------------------------
	-- Midcast sets
	--------------------------------------

	
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------

    sets.idle = {
}
			
	sets.idleMovement = {	    
}
	
    sets.idle.DT = {
}
	

	sets.Kiting = 
	{Legs="Carmine Cuisses +1"}


	--------------------------------------
	-- Engaged sets
	--------------------------------------

    sets.engaged.LowAccTP = {
}
	sets.engaged.HighAccTP = {
}	
	sets.engaged.DT = {
}			
	
	
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
		set_macro_page(1, 17) 
		send_command('@input /lockstyleset 55')
		send_command('@input //lua r equipviewer')
		send_command('@input //lua r anchor')
	elseif player.sub_job == 'WHM' then
		set_macro_page(1, 17) 
		send_command('@input /lockstyleset 55')
		send_command('@input //lua r equipviewer')
		send_command('@input //lua r anchor')
	elseif player.sub_job == 'BLM' then
		set_macro_page(1, 17)
		send_command('@input /lockstyleset 55')

	else
		set_macro_page(1, 17)
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