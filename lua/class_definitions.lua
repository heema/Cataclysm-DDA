-- Defines which attributes are exported by our C++ classes.

classes = {
    Character = {
        parent = "Creature",
        attributes = {
            name = { type = "string", writable = true },
            male = { type = "bool", writable = true },
            nv_cached = { type = "bool", writable = true }
        },
        functions = {
            is_warm = { rval = "bool", args = { } },
            symbol = { rval = "string", args = { } },
            move_effects = { rval = "bool", args = { } },
            recalc_hp = { rval = nil, args = { } },
            recalc_sight_limits = { rval = nil, args = { } },
            random_good_trait = { rval = "string", args = { } },
            random_bad_trait = { rval = "string", args = { } },
            has_trait = { rval = "bool", args = { "string" } },
            has_base_trait = { rval = "bool", args = { "string" } },
            trait_by_invlet = { rval = "string", args = { "int" } },
            toggle_trait = { rval = nil, args = { "string" } },
            toggle_mutation = { rval = nil, args = { "string" } },
            mutation_effect = { rval = nil, args = { "string" } },
            mutation_loss_effect = { rval = nil, args = { "string" } },
            has_active_mutation = { rval = "bool", args = { "string" } },
            has_bionic = { rval = "bool", args = { "string" } },
            has_active_bionic = { rval = "bool", args = { "string" } },
            is_worn = { rval = "bool", args = { "item" } },
            i_rem_keep_contents = { rval = nil, args = { "int" } },
            i_add_or_drop = { rval = "bool", args = { "item", "int" } },
            remove_mission_items = { rval = nil, args = { "int" } },
            weight_carried = { rval = "int", args = { } },
            volume_carried = { rval = "int", args = { } },
            weight_capacity = { rval = "int", args = { } },
            volume_capacity = { rval = "int", args = { } },
            can_pickVolume = { rval = "bool", args = { "int", "bool" } },
            can_pickWeight = { rval = "bool", args = { "int", "bool" } },
            worn_with_flag = { rval = "bool", args = { "string" } },
            get_turn_died = { rval = "int", args = { } },
            set_turn_died = { rval = nil, args = { "int" } },
            normalize = { rval = nil, args = { } },
            die = { rval = nil, args = { "Creature" } },
            reset_stats = { rval = nil, args = { } },
            has_nv = { rval = "bool", args = { } },
            empty_skills = { rval = nil, args = { } },
            pick_name = { rval = nil, args = { } },
            empty_traits = { rval = nil, args = { } },
            add_traits = { rval = nil, args = { } }
        }
    },
    player = {
        parent = "Character",
        attributes = {
            view_offset = { type = "tripoint", writable = true },
            in_vehicle = { type = "bool", writable = true },
            controlling_vehicle = { type = "bool", writable = true },
            grab_point = { type = "tripoint", writable = true },
            volume = { type = "int", writable = true },
            start_location = { type = "string", writable = true },
            next_climate_control_check = { type = "int", writable = true },
            last_climate_control_ret = { type = "bool", writable = true },
            move_mode = { type = "string", writable = true },
            power_level = { type = "int", writable = true },
            max_power_level = { type = "int", writable = true },
            hunger = { type = "int", writable = true },
            thirst = { type = "int", writable = true },
            fatigue = { type = "int", writable = true },
            stomach_food = { type = "int", writable = true },
            stomach_water = { type = "int", writable = true },
            tank_plut = { type = "int", writable = true },
            reactor_plut = { type = "int", writable = true },
            slow_rad = { type = "int", writable = true },
            oxygen = { type = "int", writable = true },
            stamina = { type = "int", writable = true },
            recoil = { type = "int", writable = true },
            driving_recoil = { type = "int", writable = true },
            scent = { type = "int", writable = true },
            dodges_left = { type = "int", writable = true },
            blocks_left = { type = "int", writable = true },
            stim = { type = "int", writable = true },
            pkill = { type = "int", writable = true },
            radiation = { type = "int", writable = true },
            cash = { type = "int", writable = true },
            movecounter = { type = "int", writable = true },
            pda_cached = { type = "bool", writable = true },
            focus_pool = { type = "int", writable = true },
            keep_hands_free = { type = "bool", writable = true },
            lastrecipe = { type = "string", writable = true },
            last_batch = { type = "int", writable = true }
        },
        functions = {
            normalize = { rval = nil, args = { } },
            disp_name = { rval = "string", args = { "bool" } },
            skin_name = { rval = "string", args = { } },
            is_player = { rval = "bool", args = { } },
            process_effects = { rval = nil, args = { } },
            vomit_mod = { rval = "float", args = { } },
            is_npc = { rval = "bool", args = { } },
            basic_symbol_color = { rval = "int", args = { } },
            load_info = { rval = nil, args = { "string" } },
            save_info = { rval = "string", args = { } },
            disp_info = { rval = nil, args = { } },
            disp_morale = { rval = nil, args = { } },
            reset_stats = { rval = nil, args = { } },
            process_turn = { rval = nil, args = { } },
            recalc_speed_bonus = { rval = nil, args = { } },
            action_taken = { rval = nil, args = { } },
            update_morale = { rval = nil, args = { } },
            apply_persistent_morale = { rval = nil, args = { } },
            update_mental_focus = { rval = nil, args = { } },
            calc_focus_equilibrium = { rval = "int", args = { } },
            update_bodytemp = { rval = nil, args = { } },
            bodytemp_color = { rval = "int", args = { "int" } },
            run_cost = { rval = "int", args = { "int", "bool" } },
            swim_speed = { rval = "int", args = { } },
            update_body_wetness = { rval = nil, args = { } },
            update_needs = { rval = nil, args = { } },
            regen = { rval = nil, args = { } },
            update_stamina = { rval = nil, args = { } },
            has_conflicting_trait = { rval = "bool", args = { "string" } },
            has_opposite_trait = { rval = "bool", args = { "string" } },
            has_lower_trait = { rval = "bool", args = { "string" } },
            has_higher_trait = { rval = "bool", args = { "string" } },
            crossed_threshold = { rval = "bool", args = { } },
            purifiable = { rval = "bool", args = { "string" } },
            set_cat_level_rec = { rval = nil, args = { "string" } },
            set_highest_cat_level = { rval = nil, args = { } },
            get_highest_category = { rval = "string", args = { } },
            get_category_dream = { rval = "string", args = { "string", "int" } },
            in_climate_control = { rval = "bool", args = { } },
            has_active_optcloak = { rval = "bool", args = { } },
            add_bionic = { rval = nil, args = { "string" } },
            remove_bionic = { rval = nil, args = { "string" } },
            uninstall_bionic = { rval = "bool", args = { "string" } },
            charge_power = { rval = nil, args = { "int" } },
            power_bionics = { rval = nil, args = { } },
            power_mutations = { rval = nil, args = { } },
            activate_bionic = { rval = "bool", args = { "int", "bool" } },
            deactivate_bionic = { rval = "bool", args = { "int", "bool" } },
            process_bionic = { rval = nil, args = { "int" } },
            remove_random_bionic = { rval = "bool", args = { } },
            num_bionics = { rval = "int", args = { } },
            active_light = { rval = "float", args = { } },
            mutation_ok = { rval = "bool", args = { "string", "bool", "bool" } },
            mutate = { rval = nil, args = { } },
            mutate_category = { rval = nil, args = { "string" } },
            mutate_towards = { rval = nil, args = { "string" } },
            remove_mutation = { rval = nil, args = { "string" } },
            has_child_flag = { rval = "bool", args = { "string" } },
            remove_child_flag = { rval = nil, args = { "string" } },
            pos = { rval = "tripoint", args = { } },
            sight_range = { rval = "int", args = { "int" } },
            unimpaired_range = { rval = "int", args = { } },
            overmap_los = { rval = "bool", args = { "tripoint", "int" } },
            overmap_sight_range = { rval = "int", args = { "int" } },
            clairvoyance = { rval = "int", args = { } },
            sight_impaired = { rval = "bool", args = { } },
            has_two_arms = { rval = "bool", args = { } },
            is_armed = { rval = "bool", args = { } },
            handle_melee_wear = { rval = "bool", args = { } },
            unarmed_attack = { rval = "bool", args = { } },
            has_pda = { rval = "bool", args = { } },
            has_alarm_clock = { rval = "bool", args = { } },
            has_watch = { rval = "bool", args = { } },
            sees_with_infrared = { rval = "bool", args = { "Creature" } },
            pause = { rval = nil, args = { } },
            toggle_move_mode = { rval = nil, args = { } },
            ma_static_effects = { rval = nil, args = { } },
            ma_onmove_effects = { rval = nil, args = { } },
            ma_onhit_effects = { rval = nil, args = { } },
            ma_onattack_effects = { rval = nil, args = { } },
            ma_ondodge_effects = { rval = nil, args = { } },
            ma_onblock_effects = { rval = nil, args = { } },
            ma_ongethit_effects = { rval = nil, args = { } },
            mabuff_tohit_bonus = { rval = "int", args = { } },
            mabuff_dodge_bonus = { rval = "int", args = { } },
            mabuff_block_bonus = { rval = "int", args = { } },
            mabuff_speed_bonus = { rval = "int", args = { } },
            mabuff_arm_bash_bonus = { rval = "int", args = { } },
            mabuff_arm_cut_bonus = { rval = "int", args = { } },
            mabuff_bash_mult = { rval = "float", args = { } },
            mabuff_bash_bonus = { rval = "int", args = { } },
            mabuff_cut_mult = { rval = "float", args = { } },
            mabuff_cut_bonus = { rval = "int", args = { } },
            is_throw_immune = { rval = "bool", args = { } },
            is_quiet = { rval = "bool", args = { } },
            can_melee = { rval = "bool", args = { } },
            digging = { rval = "bool", args = { } },
            is_on_ground = { rval = "bool", args = { } },
            is_dead_state = { rval = "bool", args = { } },
            is_elec_immune = { rval = "bool", args = { } },
            has_miss_recovery_tec = { rval = "bool", args = { } },
            has_grab_break_tec = { rval = "bool", args = { } },
            can_leg_block = { rval = "bool", args = { } },
            can_arm_block = { rval = "bool", args = { } },
            can_limb_block = { rval = "bool", args = { } },
            can_weapon_block = { rval = "bool", args = { } },
            skill_dispersion = { rval = "int", args = { "item", "bool" } },
            get_weapon_dispersion = { rval = "float", args = { "item", "bool" } },
            dodge_hit = { rval = nil, args = { "Creature", "int" } },
            on_dodge = { rval = nil, args = { "Creature", "int" } },
            base_damage = { rval = "int", args = { "bool", "int" } },
            base_to_hit = { rval = "int", args = { "bool", "int" } },
            get_hit_base = { rval = "int", args = { } },
            hit_roll = { rval = "int", args = { } },
            scored_crit = { rval = "bool", args = { "int" } },
            perform_special_attacks = { rval = nil, args = { "Creature" } },
            get_dodge_base = { rval = "int", args = { } },
            get_dodge = { rval = "int", args = { } },
            dodge_roll = { rval = "int", args = { } },
            get_melee = { rval = "int", args = { } },
            get_miss_reason = { rval = "cstring", args = { } },
            uncanny_dodge = { rval = "bool", args = { } },
            adjacent_tile = { rval = "tripoint", args = { } },
            throw_range = { rval = "int", args = { "int" } },
            ranged_dex_mod = { rval = "int", args = { } },
            ranged_per_mod = { rval = "int", args = { } },
            throw_dex_mod = { rval = "int", args = { "bool" } },
            aim_per_time = { rval = "int", args = { "item" } },
            read_speed = { rval = "int", args = { "bool" } },
            rust_rate = { rval = "int", args = { "bool" } },
            talk_skill = { rval = "int", args = { } },
            intimidation = { rval = "int", args = { } },
            mod_pain = { rval = nil, args = { "int" } },
            cough = { rval = nil, args = { "bool", "int" } },
            healall = { rval = nil, args = { "int" } },
            hurtall = { rval = nil, args = { "int", "Creature" } },
            hitall = { rval = "int", args = { "int", "int", "Creature" } },
            knock_back_from = { rval = nil, args = { "tripoint" } },
            hp_percentage = { rval = "int", args = { } },
            get_sick = { rval = nil, args = { } },
            update_health = { rval = nil, args = { "int" } },
            suffer = { rval = nil, args = { } },
            mend = { rval = nil, args = { } },
            vomit = { rval = nil, args = { } },
            drench = { rval = nil, args = { "int", "int" } },
            drench_mut_calc = { rval = nil, args = { } },
            drink_from_hands = { rval = "int", args = { "item" } },
            consume = { rval = "bool", args = { "int" } },
            consume_item = { rval = "bool", args = { "item" } },
            rooted_message = { rval = nil, args = { } },
            rooted = { rval = nil, args = { } },
            wield = { rval = "bool", args = { "item", "bool" } },
            pick_style = { rval = nil, args = { } },
            wear = { rval = "bool", args = { "int", "bool" } },
            wear_item = { rval = "bool", args = { "item", "bool" } },
            wield_contents = { rval = nil, args = { "item", "bool", "string", "int" } },
            store = { rval = nil, args = { "item", "item", "string", "int" } },
            sort_armor = { rval = nil, args = { } },
            use = { rval = nil, args = { "int" } },
            use_wielded = { rval = nil, args = { } },
            invoke_item = { rval = "bool", args = { "item" } },
            invoke_item = { rval = "bool", args = { "item", "string" } },
            consume_charges = { rval = "bool", args = { "item", "int" } },
            remove_gunmod = { rval = nil, args = { "item", "int" } },
            install_bionics = { rval = "bool", args = { "itype" } },
            read = { rval = nil, args = { "int" } },
            do_read = { rval = nil, args = { "item" } },
            has_identified = { rval = "bool", args = { "string" } },
            try_to_sleep = { rval = nil, args = { } },
            sleep_spot = { rval = "int", args = { "tripoint" } },
            can_sleep = { rval = "bool", args = { } },
            fall_asleep = { rval = nil, args = { "int" } },
            wake_up = { rval = nil, args = { } },
            is_snuggling = { rval = "string", args = { } },
            fine_detail_vision_mod = { rval = "float", args = { } },
            is_wearing_shoes = { rval = "bool", args = { "string" } },
            footwear_factor = { rval = "float", args = { } },
            adjust_for_focus = { rval = "int", args = { "int" } },
            practice = { rval = nil, args = { "string", "int", "int" } },
            cancel_activity = { rval = nil, args = { } },
            convert_weight = { rval = "float", args = { "int" } },
            morale_level = { rval = "int", args = { } },
            weapname = { rval = "string", args = { "bool" } },
            power_rating = { rval = "float", args = { } },
            process_active_items = { rval = nil, args = { } },
            i_at = { rval = "item", args = { "int" } },
            invlet_to_position = { rval = "int", args = { "int" } },
            get_item_position = { rval = "int", args = { "item" } },
            place_corpse = { rval = nil, args = { } },
            butcher_factor = { rval = "int", args = { } },
            pick_usb = { rval = "item", args = { } },
            leak_level = { rval = "int", args = { "string" } },
            has_container_for = { rval = "bool", args = { "item" } },
            has_item_with_flag = { rval = "bool", args = { "string" } },
            has_items_with_quality = { rval = "bool", args = { "string", "int", "int" } },
            has_item = { rval = "bool", args = { "int" } },
            has_item = { rval = "bool", args = { "item" } },
            has_mission_item = { rval = "bool", args = { "int" } },
            has_weapon = { rval = "bool", args = { } },
            can_pickup = { rval = "bool", args = { "bool" } },
            studied_all_recipes = { rval = "bool", args = { "itype" } },
            crafting_allowed = { rval = "bool", args = { } },
            crafting_can_see = { rval = "bool", args = { } },
            making_would_work = { rval = "bool", args = { "string", "int" } },
            craft = { rval = nil, args = { } },
            recraft = { rval = nil, args = { } },
            long_craft = { rval = nil, args = { } },
            make_craft = { rval = nil, args = { "string", "int" } },
            make_all_craft = { rval = nil, args = { "string", "int" } },
            complete_craft = { rval = nil, args = { } },
            disassemble = { rval = nil, args = { "int" } },
            complete_disassemble = { rval = nil, args = { } },
            invalidate_crafting_inventory = { rval = nil, args = { } },
            clear_destination = { rval = nil, args = { } },
            has_destination = { rval = "bool", args = { } },
            shift_destination = { rval = nil, args = { "int", "int" } },
            logistic = { rval = "float", args = { "float" } },
            logistic_range = { rval = "float", args = { "int", "int", "int" } },
            global_square_location = { rval = "tripoint", args = { } },
            global_sm_location = { rval = "tripoint", args = { } },
            global_omt_location = { rval = "tripoint", args = { } },
            posx = { rval = "int", args = { } },
            posy = { rval = "int", args = { } },
            posz = { rval = "int", args = { } },
            setx = { rval = nil, args = { "int" } },
            sety = { rval = nil, args = { "int" } },
            setz = { rval = nil, args = { "int" } },
            setpos = { rval = nil, args = { "tripoint" } },
            set_skill_level = { rval = nil, args = { "string", "int" } },
            boost_skill_level = { rval = nil, args = { "string", "int" } },
            copy_skill_levels = { rval = nil, args = { "player" } },
            dump_memorial = { rval = "string", args = { } },
            mod_stat = { rval = nil, args = { "string", "int" } },
            getID = { rval = "int", args = { } },
            setID = { rval = nil, args = { "int" } },
            is_underwater = { rval = "bool", args = { } },
            is_hallucination = { rval = "bool", args = { } },
            environmental_revert_effect = { rval = nil, args = { } },
            is_invisible = { rval = "bool", args = { } },
            is_deaf = { rval = "bool", args = { } },
            can_hear = { rval = "bool", args = { "tripoint", "int" } },
            hearing_ability = { rval = "float", args = { } },
            visibility = { rval = "int", args = { "bool", "int" } },
            get_stamina_max = { rval = "int", args = { } },
            burn_move_stamina = { rval = nil, args = { "int" } },
            knows_trap = { rval = "bool", args = { "tripoint" } },
            search_surroundings = { rval = nil, args = { } },
            save_zones = { rval = "bool", args = { } },
            load_zones = { rval = nil, args = { } },
            spores = { rval = nil, args = { } },
            blossoms = { rval = nil, args = { } },
            add_ammo_to_worn_quiver = { rval = "int", args = { "item" } },
            get_active_mission_target = { rval = "tripoint", args = { } }
        }
    },
    item = {
        attributes = {
            fridge = { type = "int", writable = true },
            type = { type = "itype", writable = true },
            invlet = { type = "int", writable = true },
            charges = { type = "int", writable = true },
            active = { type = "bool", writable = true },
            damage = { type = "int", writable = true },
            burnt = { type = "int", writable = true },
            bday = { type = "int", writable = true },
            item_counter = { type = "int", writable = true },
            mission_id = { type = "int", writable = true },
            player_id = { type = "int", writable = true }
        },
        functions = {
            make_corpse = { rval = nil, args = { "mtype", "int" } },
            make_corpse = { rval = nil, args = { "mtype", "int", "string" } },
            make_corpse = { rval = nil, args = { "string", "int" } },
            make_corpse = { rval = nil, args = { } },
            get_mtype = { rval = "mtype", args = { } },
            set_mtype = { rval = nil, args = { "mtype" } },
            is_corpse = { rval = "bool", args = { } },
            init = { rval = nil, args = { } },
            make = { rval = nil, args = { "string" } },
            clear = { rval = nil, args = { } },
            color = { rval = "int", args = { "player" } },
            color_in_inventory = { rval = "int", args = { } },
            tname = { rval = "string", args = { } },
            display_name = { rval = "string", args = { "int" } },
            use = { rval = nil, args = { } },
            burn = { rval = "bool", args = { "int" } },
            reload_time = { rval = "int", args = { "player" } },
            clip_size = { rval = "int", args = { } },
            sight_dispersion = { rval = "int", args = { "int" } },
            aim_speed = { rval = "int", args = { "int" } },
            noise = { rval = "int", args = { } },
            burst_size = { rval = "int", args = { } },
            pick_reload_ammo = { rval = "int", args = { "player", "bool" } },
            reload = { rval = "bool", args = { "player", "int" } },
            skill = { rval = "string", args = { } },
            load_info = { rval = nil, args = { "string" } },
            info = { rval = "string", args = { "bool" } },
            symbol = { rval = "int", args = { } },
            color = { rval = "int", args = { } },
            price = { rval = "int", args = { } },
            butcher_factor = { rval = "int", args = { } },
            invlet_is_okay = { rval = "bool", args = { } },
            stacks_with = { rval = "bool", args = { "item" } },
            merge_charges = { rval = "bool", args = { "item" } },
            add_rain_to_container = { rval = nil, args = { "bool", "int" } },
            weight = { rval = "int", args = { } },
            precise_unit_volume = { rval = "int", args = { } },
            volume = { rval = "int", args = { "bool", "bool" } },
            volume_contained = { rval = "int", args = { } },
            attack_time = { rval = "int", args = { } },
            damage_bash = { rval = "int", args = { } },
            damage_cut = { rval = "int", args = { } },
            has_flag = { rval = "bool", args = { "string" } },
            contains_with_flag = { rval = "bool", args = { "string" } },
            has_quality = { rval = "bool", args = { "string" } },
            has_quality = { rval = "bool", args = { "string", "int" } },
            active_gunmod = { rval = "item", args = { } },
            active_gunmod = { rval = "item", args = { } },
            goes_bad = { rval = "bool", args = { } },
            is_going_bad = { rval = "bool", args = { } },
            count_by_charges = { rval = "bool", args = { } },
            craft_has_charges = { rval = "bool", args = { } },
            num_charges = { rval = "int", args = { } },
            reduce_charges = { rval = "bool", args = { "int" } },
            rotten = { rval = "bool", args = { } },
            calc_rot = { rval = nil, args = { "tripoint" } },
            has_rotten_away = { rval = "bool", args = { } },
            get_relative_rot = { rval = "float", args = { } },
            set_relative_rot = { rval = nil, args = { "float" } },
            get_rot = { rval = "int", args = { } },
            brewing_time = { rval = "int", args = { } },
            ready_to_revive = { rval = "bool", args = { "tripoint" } },
            detonate = { rval = nil, args = { "tripoint" } },
            can_revive = { rval = "bool", args = { } },
            getlight_emit = { rval = "int", args = { } },
            getlight_emit_active = { rval = "int", args = { } },
            weapon_value = { rval = "int", args = { "player" } },
            melee_value = { rval = "int", args = { "player" } },
            bash_resist = { rval = "int", args = { } },
            cut_resist = { rval = "int", args = { } },
            acid_resist = { rval = "int", args = { } },
            is_two_handed = { rval = "bool", args = { "player" } },
            made_of = { rval = "bool", args = { "string" } },
            conductive = { rval = "bool", args = { } },
            flammable = { rval = "bool", args = { } },
            already_used_by_player = { rval = "bool", args = { "player" } },
            mark_as_used_by_player = { rval = nil, args = { "player" } },
            process = { rval = "bool", args = { "player", "tripoint", "bool" } },
            reset_cable = { rval = nil, args = { "player" } },
            needs_processing = { rval = "bool", args = { } },
            processing_speed = { rval = "int", args = { } },
            process_artifact = { rval = "bool", args = { "player", "tripoint" } },
            get_free_mod_locations = { rval = "int", args = { "string" } },
            destroyed_at_zero_charges = { rval = "bool", args = { } },
            is_null = { rval = "bool", args = { } },
            is_food = { rval = "bool", args = { "player" } },
            is_food_container = { rval = "bool", args = { "player" } },
            is_food = { rval = "bool", args = { } },
            is_food_container = { rval = "bool", args = { } },
            is_ammo_container = { rval = "bool", args = { } },
            is_drink = { rval = "bool", args = { } },
            is_weap = { rval = "bool", args = { } },
            is_bashing_weapon = { rval = "bool", args = { } },
            is_cutting_weapon = { rval = "bool", args = { } },
            is_gun = { rval = "bool", args = { } },
            is_silent = { rval = "bool", args = { } },
            is_gunmod = { rval = "bool", args = { } },
            is_bionic = { rval = "bool", args = { } },
            is_ammo = { rval = "bool", args = { } },
            is_armor = { rval = "bool", args = { } },
            is_book = { rval = "bool", args = { } },
            is_container = { rval = "bool", args = { } },
            is_watertight_container = { rval = "bool", args = { } },
            is_salvageable = { rval = "bool", args = { } },
            is_disassemblable = { rval = "bool", args = { } },
            is_container_empty = { rval = "bool", args = { } },
            is_container_full = { rval = "bool", args = { } },
            is_emissive = { rval = "bool", args = { } },
            is_tool = { rval = "bool", args = { } },
            is_tool_reversible = { rval = "bool", args = { } },
            is_software = { rval = "bool", args = { } },
            is_var_veh_part = { rval = "bool", args = { } },
            is_artifact = { rval = "bool", args = { } },
            set_snippet = { rval = nil, args = { "string" } },
            get_remaining_capacity_for_liquid = { rval = "int", args = { "item" } },
            components_to_string = { rval = "string", args = { } },
            get_curammo = { rval = "itype", args = { } },
            has_curammo = { rval = "bool", args = { } },
            unset_curammo = { rval = nil, args = { } },
            set_curammo = { rval = nil, args = { "item" } },
            on_wear = { rval = nil, args = { "player" } },
            on_wield = { rval = nil, args = { "player" } },
            type_name = { rval = "string", args = { "int" } },
            liquid_charges = { rval = "int", args = { "int" } },
            liquid_units = { rval = "int", args = { "int" } },
            set_var = { rval = nil, args = { "string", "int" } },
            get_var = { rval = "int", args = { "string", "int" } },
            set_var = { rval = nil, args = { "string", "int" } },
            get_var = { rval = "int", args = { "string", "int" } },
            set_var = { rval = nil, args = { "string", "string" } },
            get_var = { rval = "string", args = { "string", "string" } },
            get_var = { rval = "string", args = { "string" } },
            has_var = { rval = "bool", args = { "string" } },
            erase_var = { rval = nil, args = { "string" } },
            is_seed = { rval = "bool", args = { } },
            get_plant_epoch = { rval = "int", args = { } },
            get_plant_name = { rval = "string", args = { } },
            get_warmth = { rval = "int", args = { } },
            get_thickness = { rval = "int", args = { } },
            get_coverage = { rval = "int", args = { } },
            get_encumber = { rval = "int", args = { } },
            get_storage = { rval = "int", args = { } },
            get_env_resist = { rval = "int", args = { } },
            is_power_armor = { rval = "bool", args = { } },
            get_chapters = { rval = "int", args = { } },
            get_remaining_chapters = { rval = "int", args = { "player" } },
            mark_chapter_as_read = { rval = nil, args = { "player" } },
            deactivate_charger_gun = { rval = "bool", args = { } },
            activate_charger_gun = { rval = "bool", args = { "player" } },
            update_charger_gun_ammo = { rval = "bool", args = { } },
            is_charger_gun = { rval = "bool", args = { } },
            is_auxiliary_gunmod = { rval = "bool", args = { } },
            is_in_auxiliary_mode = { rval = "bool", args = { } },
            set_auxiliary_mode = { rval = nil, args = { } },
            get_gun_mode = { rval = "string", args = { } },
            set_gun_mode = { rval = nil, args = { "string" } },
            next_mode = { rval = nil, args = { } },
            gun_range = { rval = "int", args = { "player" } },
            gun_range = { rval = "int", args = { "bool" } },
            gun_recoil = { rval = "int", args = { "bool" } },
            gun_damage = { rval = "int", args = { "bool" } },
            gun_pierce = { rval = "int", args = { "bool" } },
            gun_dispersion = { rval = "int", args = { "bool" } },
            gun_skill = { rval = "string", args = { } },
            weap_skill = { rval = "string", args = { } },
            spare_mag_size = { rval = "int", args = { } },
            get_usable_item = { rval = "item", args = { "string" } },
            quiver_store_arrow = { rval = "int", args = { "item" } },
            max_charges_from_flag = { rval = "int", args = { "string" } }
        }
    },
    point = {
        by_value = true,
        attributes = {
            x = {
                type = "int",
                writable = true
            },
            y = {
                type = "int",
                writable = true
            }
        },
        functions = {
        }
    },
    tripoint = {
        by_value = true,
        attributes = {
            x = {
                type = "int",
                writable = true
            },
            y = {
                type = "int",
                writable = true
            },
            z = {
                type = "int",
                writable = true
            }
        },
        functions = {
        }
    },
    uimenu = {
        attributes = {
            title = {
                type = "string",
                writable = true
            },
            selected = {
                type = "int",
                writable = false
            }
        },
        functions = {
            show = {
                args = {},
                rval = nil
            },
            query = {
                args = { "bool" },
                rval = nil
            },
            addentry = {
                args = { "string" },
                rval = nil
            }
        }
    },
    map = {
        attributes = {
        },
        functions = {
            ter = {
                args = {"int", "int"},
                rval = "int"
            },
            ter_set = {
                args = {"int", "int", "string"},
                rval = nil
            },
            ter_iset = {
                cpp_name = "ter_set",
                args = {"int", "int", "int"},
                rval = nil
            },

            furn = {
                args = {"int", "int"},
                rval = "int"
            },
            furn_set = {
                args = {"int", "int", "string"},
                rval = nil
            },
            line_ter = {
                cpp_name = "draw_line_ter",
                args = {"string", "int", "int", "int", "int"},
                rval = nil
            },
            line_furn = {
                cpp_name = "draw_line_furn",
                args = {"string", "int", "int", "int", "int"},
                rval = nil
            },
            fill_background = {
                cpp_name = "draw_fill_background",
                args = {"string"},
                rval = nil
            },
            square_ter = {
                cpp_name = "draw_square_ter",
                args = {"string", "int", "int", "int", "int"},
                rval = nil
            },
            square_furn = {
                cpp_name = "draw_square_furn",
                args = {"string", "int", "int", "int", "int"},
                rval = nil
            },
            rough_circle = {
                cpp_name = "draw_rough_circle",
                args = {"string", "int", "int", "int"},
                rval = nil
            },
            place_items = {
                args = {"string", "int", "int", "int", "int",  "int", "bool", "int"},
                rval = nil
            }
        }
    },
    ter_t = {
        attributes = {
            name = {
                type = "string",
                writable = false
            },
            id = {
                type = "string",
                writable = false
            },
            loadid = {
                type = "int",
                writable = false
            },
            movecost = {
                type = "int",
                writable = false
            }
        },
        functions = {
        }
    },
    Creature = {
        attributes = {
            str_max = { type = "int", writable = true },
            dex_max = { type = "int", writable = true },
            per_max = { type = "int", writable = true },
            int_max = { type = "int", writable = true },
            str_cur = { type = "int", writable = true },
            dex_cur = { type = "int", writable = true },
            per_cur = { type = "int", writable = true },
            int_cur = { type = "int", writable = true },
            pain = { type = "int", writable = true },
            underwater = { type = "bool", writable = true }
        },
        functions = {
            is_player = { rval = "bool", args = { } },
            is_npc = { rval = "bool", args = { } },
            is_monster = { rval = "bool", args = { } },
            is_fake = { rval = "bool", args = { } },
            set_fake = { rval = nil, args = { "bool" } },
            normalize = { rval = nil, args = { } },
            process_turn = { rval = nil, args = { } },
            reset = { rval = nil, args = { } },
            reset_bonuses = { rval = nil, args = { } },
            reset_stats = { rval = nil, args = { } },
            sees = { rval = "bool", args = { "Creature" } },
            sees = { rval = "bool", args = { "int", "int" } },
            sees = { rval = "bool", args = { "tripoint" } },
            sees = { rval = "bool", args = { "point" } },
            melee_attack = { rval = nil, args = { "Creature", "bool" } },
            deal_melee_attack = { rval = "int", args = { "Creature", "int" } },
            digging = { rval = "bool", args = { } },
            is_warm = { rval = "bool", args = { } },
            is_immune = { rval = "bool", args = { "string" } },
            check_dead_state = { rval = nil, args = { } },
            pos3 = { rval = "tripoint", args = { } },
            move_effects = { rval = "bool", args = { } },
            clear_effects = { rval = nil, args = { } },
            set_value = { rval = nil, args = { "string", "string" } },
            remove_value = { rval = nil, args = { "string" } },
            get_value = { rval = "string", args = { "string" } },
            process_effects = { rval = nil, args = { } },
            has_trait = { rval = "bool", args = { "string" } },
            update_health = { rval = nil, args = { "int" } },
            mod_pain = { rval = nil, args = { "int" } },
            mod_moves = { rval = nil, args = { "int" } },
            set_moves = { rval = nil, args = { "int" } },
            in_sleep_state = { rval = "bool", args = { } },
            get_killer = { rval = "Creature", args = { } },
            get_str = { rval = "int", args = { } },
            get_dex = { rval = "int", args = { } },
            get_per = { rval = "int", args = { } },
            get_int = { rval = "int", args = { } },
            get_str_base = { rval = "int", args = { } },
            get_dex_base = { rval = "int", args = { } },
            get_per_base = { rval = "int", args = { } },
            get_int_base = { rval = "int", args = { } },
            get_str_bonus = { rval = "int", args = { } },
            get_dex_bonus = { rval = "int", args = { } },
            get_per_bonus = { rval = "int", args = { } },
            get_int_bonus = { rval = "int", args = { } },
            get_healthy = { rval = "int", args = { } },
            get_healthy_mod = { rval = "int", args = { } },
            get_num_blocks = { rval = "int", args = { } },
            get_num_dodges = { rval = "int", args = { } },
            get_num_blocks_bonus = { rval = "int", args = { } },
            get_num_dodges_bonus = { rval = "int", args = { } },
            get_armor_bash_bonus = { rval = "int", args = { } },
            get_armor_cut_bonus = { rval = "int", args = { } },
            get_speed = { rval = "int", args = { } },
            get_dodge = { rval = "int", args = { } },
            get_melee = { rval = "int", args = { } },
            get_hit = { rval = "int", args = { } },
            get_material = { rval = "string", args = { } },
            uncanny_dodge = { rval = "bool", args = { } },
            get_speed_base = { rval = "int", args = { } },
            get_dodge_base = { rval = "int", args = { } },
            get_hit_base = { rval = "int", args = { } },
            get_speed_bonus = { rval = "int", args = { } },
            get_dodge_bonus = { rval = "int", args = { } },
            get_block_bonus = { rval = "int", args = { } },
            get_hit_bonus = { rval = "int", args = { } },
            get_bash_bonus = { rval = "int", args = { } },
            get_cut_bonus = { rval = "int", args = { } },
            get_bash_mult = { rval = "float", args = { } },
            get_cut_mult = { rval = "float", args = { } },
            get_melee_quiet = { rval = "bool", args = { } },
            get_grab_resist = { rval = "int", args = { } },
            get_throw_resist = { rval = "int", args = { } },
            set_str_bonus = { rval = nil, args = { "int" } },
            set_dex_bonus = { rval = nil, args = { "int" } },
            set_per_bonus = { rval = nil, args = { "int" } },
            set_int_bonus = { rval = nil, args = { "int" } },
            mod_str_bonus = { rval = nil, args = { "int" } },
            mod_dex_bonus = { rval = nil, args = { "int" } },
            mod_per_bonus = { rval = nil, args = { "int" } },
            mod_int_bonus = { rval = nil, args = { "int" } },
            mod_stat = { rval = nil, args = { "string", "int" } },
            set_healthy = { rval = nil, args = { "int" } },
            set_healthy_mod = { rval = nil, args = { "int" } },
            mod_healthy = { rval = nil, args = { "int" } },
            mod_healthy_mod = { rval = nil, args = { "int" } },
            set_num_blocks_bonus = { rval = nil, args = { "int" } },
            set_num_dodges_bonus = { rval = nil, args = { "int" } },
            set_armor_bash_bonus = { rval = nil, args = { "int" } },
            set_armor_cut_bonus = { rval = nil, args = { "int" } },
            set_speed_base = { rval = nil, args = { "int" } },
            set_speed_bonus = { rval = nil, args = { "int" } },
            set_dodge_bonus = { rval = nil, args = { "int" } },
            set_block_bonus = { rval = nil, args = { "int" } },
            set_hit_bonus = { rval = nil, args = { "int" } },
            set_bash_bonus = { rval = nil, args = { "int" } },
            set_cut_bonus = { rval = nil, args = { "int" } },
            mod_speed_bonus = { rval = nil, args = { "int" } },
            mod_dodge_bonus = { rval = nil, args = { "int" } },
            mod_block_bonus = { rval = nil, args = { "int" } },
            mod_hit_bonus = { rval = nil, args = { "int" } },
            mod_bash_bonus = { rval = nil, args = { "int" } },
            mod_cut_bonus = { rval = nil, args = { "int" } },
            set_bash_mult = { rval = nil, args = { "float" } },
            set_cut_mult = { rval = nil, args = { "float" } },
            set_melee_quiet = { rval = nil, args = { "bool" } },
            set_grab_resist = { rval = nil, args = { "int" } },
            set_throw_resist = { rval = nil, args = { "int" } },
            weight_capacity = { rval = "int", args = { } },
            symbol_color = { rval = "int", args = { } },
            basic_symbol_color = { rval = "int", args = { } },
            symbol = { rval = "string", args = { } },
            is_symbol_highlighted = { rval = "bool", args = { } }
        }
    },
    monster = {
        parent = "Creature",
        attributes = {
            wander_pos = { type = "tripoint", writable = true },
            wandf = { type = "int", writable = true },
            def_chance = { type = "int", writable = true },
            friendly = { type = "int", writable = true },
            anger = { type = "int", writable = true },
            morale = { type = "int", writable = true },
            mission_id = { type = "int", writable = true },
            type = { type = "mtype" },
            no_extra_death_drops = { type = "bool", writable = true },
            no_corpse_quiet = { type = "bool", writable = true },
            made_footstep = { type = "bool", writable = true },
            unique_name = { type = "string", writable = true },
            hallucination = { type = "bool", writable = true },
            ignoring = { type = "int", writable = true },
            staircount = { type = "int", writable = true }
        },
        functions = {
            is_monster = { rval = "bool", args = { } },
            poly = { rval = nil, args = { "mtype" } },
            can_upgrade = { rval = "bool", args = { } },
            update_check = { rval = nil, args = { } },
            spawn = { rval = nil, args = { "tripoint" } },
            get_hp = { rval = "int", args = { } },
            get_hp_max = { rval = "int", args = { } },
            get_material = { rval = "string", args = { } },
            hp_percentage = { rval = "int", args = { } },
            name = { rval = "string", args = { "int" } },
            name_with_armor = { rval = "string", args = { } },
            disp_name = { rval = "string", args = { "bool" } },
            skin_name = { rval = "string", args = { } },
            basic_symbol_color = { rval = "int", args = { } },
            symbol_color = { rval = "int", args = { } },
            symbol = { rval = "string", args = { } },
            is_symbol_highlighted = { rval = "bool", args = { } },
            color_with_effects = { rval = "int", args = { } },
            can_see = { rval = "bool", args = { } },
            can_hear = { rval = "bool", args = { } },
            can_submerge = { rval = "bool", args = { } },
            can_drown = { rval = "bool", args = { } },
            digging = { rval = "bool", args = { } },
            can_act = { rval = "bool", args = { } },
            sight_range = { rval = "int", args = { "int" } },
            made_of = { rval = "bool", args = { "string" } },
            load_info = { rval = nil, args = { "string" } },
            debug = { rval = nil, args = { "player" } },
            move_target = { rval = "tripoint", args = { } },
            attack_target = { rval = "Creature", args = { } },
            shift = { rval = nil, args = { "int", "int" } },
            wander = { rval = "bool", args = { } },
            can_move_to = { rval = "bool", args = { "tripoint" } },
            will_reach = { rval = "bool", args = { "int", "int" } },
            turns_to_reach = { rval = "int", args = { "int", "int" } },
            wander_to = { rval = nil, args = { "tripoint", "int" } },
            move = { rval = nil, args = { } },
            footsteps = { rval = nil, args = { "tripoint" } },
            friendly_move = { rval = nil, args = { } },
            scent_move = { rval = "tripoint", args = { } },
            wander_next = { rval = "tripoint", args = { } },
            calc_movecost = { rval = "int", args = { "tripoint", "tripoint" } },
            move_to = { rval = "bool", args = { "tripoint", "bool" } },
            attack_at = { rval = "bool", args = { "tripoint" } },
            bash_at = { rval = "bool", args = { "tripoint" } },
            bash_skill = { rval = "int", args = { } },
            bash_estimate = { rval = "int", args = { } },
            group_bash_skill = { rval = "int", args = { "tripoint" } },
            stumble = { rval = nil, args = { "bool" } },
            knock_back_from = { rval = nil, args = { "tripoint" } },
            is_fleeing = { rval = "bool", args = { "player" } },
            process_triggers = { rval = nil, args = { } },
            is_underwater = { rval = "bool", args = { } },
            is_on_ground = { rval = "bool", args = { } },
            is_warm = { rval = "bool", args = { } },
            has_weapon = { rval = "bool", args = { } },
            is_dead_state = { rval = "bool", args = { } },
            is_elec_immune = { rval = "bool", args = { } },
            dodge_hit = { rval = nil, args = { "Creature", "int" } },
            deal_melee_attack = { rval = "int", args = { "Creature", "int" } },
            explode = { rval = nil, args = { } },
            die_in_explosion = { rval = nil, args = { "Creature" } },
            heal = { rval = nil, args = { "int" } },
            set_hp = { rval = nil, args = { "int" } },
            process_effects = { rval = nil, args = { } },
            move_effects = { rval = "bool", args = { } },
            power_rating = { rval = "float", args = { } },
            get_dodge = { rval = "int", args = { } },
            get_melee = { rval = "int", args = { } },
            hit_roll = { rval = "int", args = { } },
            dodge_roll = { rval = "int", args = { } },
            fall_damage = { rval = "int", args = { } },
            on_dodge = { rval = nil, args = { "Creature", "int" } },
            reset_special = { rval = nil, args = { "int" } },
            reset_special_rng = { rval = nil, args = { "int" } },
            set_special = { rval = nil, args = { "int", "int" } },
            die = { rval = nil, args = { "Creature" } },
            drop_items_on_death = { rval = nil, args = { } },
            make_fungus = { rval = "bool", args = { } },
            make_friendly = { rval = nil, args = { } },
            make_ally = { rval = nil, args = { "monster" } },
            is_hallucination = { rval = "bool", args = { } },
            is_dead = { rval = "bool", args = { } },
            setpos = { rval = "bool", args = { "tripoint", "bool" } },
            pos = { rval = "tripoint", args = { } },
            posx = { rval = "int", args = { } },
            posy = { rval = "int", args = { } },
            posz = { rval = "int", args = { } },
            init_from_item = { rval = nil, args = { "item" } },
            get_last_load = { rval = "int", args = { } },
            set_last_load = { rval = nil, args = { "int" } },
            reset_last_load = { rval = nil, args = { } }
        }
    },
    mtype = {
        attributes = {
            id = { type = "string", writable = true },
            description = { type = "string", writable = true },
            sym = { type = "string", writable = true },
            color = { type = "int", writable = true },
            mat = { type = "string", writable = true },
            difficulty = { type = "int", writable = true },
            agro = { type = "int", writable = true },
            morale = { type = "int", writable = true },
            vision_day = { type = "int", writable = true },
            vision_night = { type = "int", writable = true },
            speed = { type = "int", writable = true },
            melee_skill = { type = "int", writable = true },
            melee_dice = { type = "int", writable = true },
            melee_sides = { type = "int", writable = true },
            melee_cut = { type = "int", writable = true },
            sk_dodge = { type = "int", writable = true },
            armor_bash = { type = "int", writable = true },
            armor_cut = { type = "int", writable = true },
            death_drops = { type = "string", writable = true },
            luminance = { type = "float", writable = true },
            hp = { type = "int", writable = true },
            def_chance = { type = "int", writable = true },
            upgrade_min = { type = "int", writable = true },
            half_life = { type = "int", writable = true },
            base_upgrade_chance = { type = "float", writable = true },
            upgrade_group = { type = "string", writable = true },
            upgrades_into = { type = "string", writable = true }
        },
        functions = {
            same_species = { rval = "bool", args = { "mtype" } },
            nname = { rval = "string", args = { "int" } },
            has_flag = { rval = "bool", args = { "string" } },
            set_flag = { rval = nil, args = { "string", "bool" } },
            in_category = { rval = "bool", args = { "string" } },
            in_species = { rval = "bool", args = { "string" } },
            in_species = { rval = "bool", args = { "int" } }
        }
    },
    mongroup = {
        attributes = {
            type = {
                type = "string",
                writable = true
            },
            posx = {
                type = "int",
                writable = true
            },
            posy = {
                type = "int",
                writable = true
            },
            posz = {
                type = "int",
                writable = true
            },
            tx = {
                type = "int",
                writable = false
            },
            ty = {
                type = "int",
                writable = false
            },
            dying = {
                type = "bool",
                writable = true
            },
            horde = {
                type = "bool",
                writable = true
            },
            diffuse = {
                type = "bool",
                writable = true
            },
            radius = {
                type = "int",
                writable = true
            },
            population = {
                type = "int",
                writable = true
            }
        },
        functions = {
            set_target = {
                args = {"int", "int"},
                rval = nil
            },
            inc_interest = {
                args = {"int"},
                rval = nil
            },
            dec_interest = {
                args = {"int"},
                rval = nil
            },
            set_interest = {
                args = {"int"},
                rval = nil
            }
        }
    },
    overmap = {
        attributes = {
        },
        functions = {
            get_bottom_border = {
                args = {},
                rval = "int"
            },
            get_top_border = {
                args = {},
                rval = "int"
            },
            get_left_border = {
                args = {},
                rval = "int"
            },
            get_right_border = {
                args = {},
                rval = "int"
            },
        }
    },
    itype = {
        attributes = {
            id = {
                type = "string",
                writable = false,
                desc = "The unique string identifier of the item type, as defined in the JSON."
            },
            description = {
                type = "string",
                writable = true
            },
            volume = {
                type = "int",
                writable = true
            },
            stack_size = {
                type = "int",
                writable = true
            },
            weight = {
                type = "int",
                writable = true
            },
            bashing = {
                type = "int",
                cpp_name = "melee_dam",
                writable = true
            },
            cutting = {
                type = "int",
                cpp_name = "melee_cut",
                writable = true
            },
            to_hit = {
                type = "int",
                cpp_name = "m_to_hit",
                writable = true
            },
            price = {
                type = "int",
                writable = true
            }
        },
        functions = {
            nname = {
                args = { "int" },
                argnames = { "quantity" },
                rval = "string",
                desc = "Get a translated name for the item with the given quantity."
            }
        }
    },
    it_comest = {
        parent = "itype",
        attributes = {
            quench = {
                type = "int",
                writable = true
            },
            nutrition = {
                type = "int",
                cpp_name = "nutr",
                writable = true
            },
            spoils_in = {
                type = "int",
                cpp_name = "spoils",
                writable = true
            },
            addiction_potential = {
                type = "int",
                cpp_name = "addict",
                writable = true
            },
            def_charges = {
                type = "int",
                writable = true
            },
            stim = {
                type = "int",
                writable = true
            },
            healthy = {
                type = "int",
                writable = true
            },
            brewtime = {
                type = "int",
                writable = true
            },
            fun = {
                type = "int",
                writable = true
            },
            tool = {
                type = "string",
                writable = true
            },
            comestible_type = {
                type = "string",
                cpp_name = "comesttype",
                writable = true
            }
        },
        functions = {
        }
    },
    it_tool = {
        parent = "itype",
        attributes = {
            ammo_id = {
                type = "string",
                writable = true
            },
            max_charges = {
                type = "int",
                writable = true
            },
            def_charges = {
                type = "int",
                writable = true
            },
            charges_per_use = {
                type = "int",
                writable = true
            },
            turns_per_charge = {
                type = "int",
                writable = true
            }
        },
        functions = {
        }
    }
}

global_functions = {
    add_msg = {
        cpp_name = "add_msg_wrapper",
        args     = { "string" },
        argnames = { "message" },
        rval = nil,
        desc = "Write a message to the game's standard message window."
    },
    popup = {
        cpp_name = "popup_wrapper",
        args = { "string" },
        rval = nil
    },
    string_input_popup = {
        cpp_name = "string_input_popup",
        args = { "string", "int", "string" },
        rval = "string"
    },
    create_uimenu = {
        cpp_name = "create_uimenu",
        args = {},
        rval = "uimenu"
    },
    get_terrain_type = {
        cpp_name = "get_terrain_type",
        args = {"int"},
        rval = "ter_t"
    },
    rng = {
        cpp_name = "rng",
        args = {"int", "int"},
        rval = "int"
    },
    one_in = {
        cpp_name = "one_in",
        args = {"int"},
        rval = "bool"
    },
    distance = {
        cpp_name = "rl_dist",
        args = {"int", "int", "int", "int"},
        rval = "int"
    },
    trig_dist = {
        cpp_name = "trig_dist",
        args = {"int", "int", "int", "int"},
        rval = "int"
    },
    remove_item = {
        cpp_name = "game_remove_item",
        args = {"int", "int", "item"},
        rval = nil
    },
    get_current_overmap = {
        cpp_name = "get_current_overmap",
        args = { },
        rval = "overmap"
    },
    add_item_to_group = {
        cpp_name = "item_controller->add_item_to_group",
        args = { "string", "string", "int" },
        rval = "bool"
    },
    get_comestible_type = {
        cpp_name = "get_comestible_type",
        args = { "string" },
        rval = "it_comest"
    },
    zombie = {
        cpp_name = "g->zombie",
        args = { "int" },
        rval = "monster",
        desc = "Returns a reference to the zombie of given index (starts at 0), use num_zombies to get the number of zombies. Parameters must be in the range [0, num_zombies-1]"
    },
    num_zombies = {
        cpp_name = "g->num_zombies",
        args = {},
        rval = "int",
        desc = "Returns the number of monsters currently existing in the reailty bubble."
    },
    create_monster = {
        cpp_name = "create_monster",
        args = { "string", "tripoint" },
        rval = "monster",
        desc = "Creates and spawns a new monster of given type. Returns a refernce to it, *or* nil if it could not be spawned."
    },
    get_tool_type = {
        cpp_name = "get_tool_type",
        args = { "string" },
        rval = "it_tool"
    }
}
