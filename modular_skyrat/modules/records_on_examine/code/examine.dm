/mob/living/carbon/human/get_medhud_examine_info(mob/living/user, datum/record/crew/target_record)
	. = ..()

	if (target_record?.past_medical_records)
		. += "<a href='byond://?src=[REF(src)];hud=m;medrecords=1;examine_time=[world.time]'>\[View medical records\]</a>"
	if (target_record?.past_general_records)
		. += "<a href='byond://?src=[REF(src)];hud=m;genrecords=1;examine_time=[world.time]'>\[View general records\]</a>"

/mob/living/carbon/human/get_sechud_examine_info(mob/living/user, datum/record/crew/target_record)
	. = ..()

	if (target_record?.past_security_records)
		. += "<a href='byond://?src=[REF(src)];hud=s;secrecords=1;examine_time=[world.time]'>\[View past security records\]</a>"
	if (target_record?.past_general_records)
		. += "<a href='byond://?src=[REF(src)];hud=m;genrecords=1;examine_time=[world.time]'>\[View general records\]</a>"
