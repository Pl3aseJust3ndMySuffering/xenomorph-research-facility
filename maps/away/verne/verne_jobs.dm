/datum/job/submap/CTI_professor
	title = "CTI Professor"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/verne/professor
	supervisors = "совет профессоров Технического Института Кита"
	info = "Вы - профессор престижного Технического Института Киты, отправленный для наблюдения и руководством за будущими выпускниками. \
	НИС Верне - новейшее судно, только сошедшее с конвеера, оборудованное всем, чтобы даже вдали от дома, студенты ВУЗа не отвыкали от \
	особой магии жизни в общаге. Большая часть задач выполняется автоматикой, из за чего большая часть экипажа - это студенты, которые \
	не получают зарплаты. В этом точно нет ничего опасного. Хотя вами и движет важнейшая миссия, вы уже не так молоды, как раньше, и в сферу \
	ваших интересов входит в том числе и соблазнение молоденьких аспиранток и употребление крепких спиртных напитков..."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_IPC,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_TRITONIAN,SPECIES_SKRELL)
	required_language = LANGUAGE_HUMAN_EURO
	min_skill = list(
		SKILL_EVA     = SKILL_EXPERT,
		SKILL_WEAPONS = SKILL_BASIC,
		SKILL_PILOT   = SKILL_BASIC,
		SKILL_SCIENCE = SKILL_MAX,
		SKILL_COMPUTER = SKILL_ADEPT,
		SKILL_DEVICES = SKILL_EXPERT,
		SKILL_BUREAUCRACY = SKILL_ADEPT,
		)

	max_skill = list()
	skill_points = 16

	economic_power = 4

	account_allowed = TRUE

/datum/job/submap/CTI_pilot
	title = "CTI Pilot"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/verne/pilot
	supervisors = "профессор ТИК во главе НИС Верне"
	info = "Вы - сотрудник на Научно-Исследовательском судне Верне, которое перевозит студентов Технического Института Киты, проводящих исследования \
	в глубинах космоса. Ваши обязанности до невозможного просты: пилотировать НИС Верне и НИС \"Почтенный Сом\"(Вы любите называть его просто Сомом), защищать студентов и помогать в их учениях. \
 	На судне не хватает некоторого важного экипажа, из за чего часть жизненно-важных систем выполняет автоматика. Это абсолютно безопасно."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_IPC,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_TRITONIAN,SPECIES_SKRELL)
	required_language = LANGUAGE_HUMAN_EURO
	min_skill = list(
		SKILL_EVA     = SKILL_BASIC,
		SKILL_WEAPONS = SKILL_ADEPT,
		SKILL_PILOT   = SKILL_ADEPT,
	)

	max_skill = list(
		SKILL_PILOT   = SKILL_MAX,
		SKILL_SCIENCE = SKILL_MAX,
	)
	skill_points = 20//skills copied from Torch pilot + gun


/datum/job/submap/CTI_medic
	title = "CTI Medical Doctor"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/verne/medic
	supervisors = "профессор ТИК во главе НИС Верне"
	info = "Вы - сотрудник на Научно-Исследовательском судне Верне, которое перевозит студентов Технического Института Киты, проводящих исследования \
	в глубинах космоса. Ваши обязанности до невозможного просты: Следите за здоровьем экипажа НИС Верне и НИС \"Почтенный Сом\", защищать студентов и помогать им учениях. \
	На судне не хватает некоторого важного экипажа, из за чего часть жизненно-важных систем выполняет автоматика. Сомнительно."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_IPC,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_TRITONIAN,SPECIES_SKRELL)
	required_language = LANGUAGE_HUMAN_EURO

	min_skill = list(
		SKILL_EVA		=	SKILL_BASIC,
		SKILL_MEDICAL	=	SKILL_BASIC,
		SKILL_ANATOMY	=	SKILL_BASIC
	)

	max_skill = list(
		SKILL_MEDICAL	=	SKILL_MAX,
		SKILL_VIROLOGY	=	SKILL_MAX
	)
	skill_points = 20
	alt_titles = list("CTI Chemist" = /decl/hierarchy/outfit/job/verne/medic/chemist)


/datum/job/submap/CTI_psionic
	title = "CTI Psi-Councler"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/verne/psionic
	supervisors = "профессор ТИК во главе НИС Верне и руководства Фонда Кучелейн"
	info = "Вы - псионик, работающий по контракту Фонда Кучелейн с Техническим Институтом Кита, будущие выпускники которого, проводят исследования \
	в глубинах космоса. Ваши обязанности до невозможного просты: Поддерживайте моральное и психическое благополучение экипажа НИС Верне и НИС \"Почтенный Сом\", \
	используя свои пси-способности, защищайте студентов и помогайте им в их учениях. Я припрятал баночку с Три-Глазом(Хорошенький наркотик для псиоников) в пожарном \
	шкафчике, справа от нашего челнока."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_TRITONIAN)
	required_language = LANGUAGE_HUMAN_EURO
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_BASIC
	)
	max_skill = list(
		SKILL_MEDICAL = SKILL_MAX
	)


/datum/job/submap/CTI_psionic/equip(var/mob/living/carbon/human/H)
	psi_faculties = list("[PSI_COERCION]" = PSI_RANK_GRANDMASTER)
	return ..()


/datum/job/submap/CTI_engineer
	title = "CTI Engineer"
	total_positions = 2
	alt_titles = list("CTI Experimental Engine Technican" = /decl/hierarchy/outfit/job/verne/engineer/engine)
	outfit_type = /decl/hierarchy/outfit/job/verne/engineer
	supervisors = "профессор ТИК во главе НИС Верне"
	info = "Вы - сотрудник на Научно-Исследовательском судне Верне, которое перевозит студентов Технического Института Киты, проводящих исследования \
	в глубинах космоса. Ваши обязанности до невозможного просты: Заниматься обслуживанием НИС Верне и НИС \"Почтенный Сом\", защищать студентов и помогать в их учениях. \
 	На судне не хватает некоторого важного экипажа, из за чего часть жизненно-важных систем выполняет автоматика. Абсолтно безопасно."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_IPC,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_TRITONIAN, SPECIES_ADHERENT, SPECIES_SKRELL)
	required_language = LANGUAGE_HUMAN_EURO
	min_skill = list(
		SKILL_COMPUTER     = SKILL_BASIC,
		SKILL_EVA          = SKILL_BASIC,
		SKILL_CONSTRUCTION = SKILL_ADEPT,
		SKILL_ELECTRICAL   = SKILL_BASIC,
		SKILL_ATMOS        = SKILL_BASIC,
		SKILL_ENGINES      = SKILL_BASIC,
	)

	max_skill = list(
		SKILL_CONSTRUCTION = SKILL_MAX,
		SKILL_ELECTRICAL   = SKILL_MAX,
		SKILL_ATMOS        = SKILL_MAX,
		SKILL_ENGINES      = SKILL_MAX,
	)
	skill_points = 20//skills copied from torch eng

/datum/job/submap/CTI_Psionic_Trainee
	title = "CTI Psionic Trainee"
	supervisors = "профессор ТИК во главе НИС Верне и представитель фонда Кучулейн на судне"
	total_positions = 2
	outfit_type = /decl/hierarchy/outfit/job/verne/psionic_trainee
	info = "Вы - студент престижного Технического Института Кита, одарённый псионическими способностями. \
	Ваша группа проводит исследования в глубинах космоса, а кроме того, Вас будет сопровождать наставник из \
	фонда Кучулейн, который ответственен за обучение Вас вашим способностям. Кроме того, у вас будет товарищ, \
	проявивший потенциал в той же школе псионики, что и вы."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_TRITONIAN)
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_BASIC,
		SKILL_COMPUTER    = SKILL_BASIC,
		SKILL_DEVICES     = SKILL_BASIC,
		SKILL_SCIENCE     = SKILL_ADEPT,
	)

	max_skill = list(
		SKILL_ANATOMY = SKILL_MAX,
		SKILL_DEVICES = SKILL_MAX,
		SKILL_SCIENCE = SKILL_MAX,
	)
	skill_points = 20//skills copied from Torch sci


/datum/job/submap/CTI_Psionic_Trainee/equip(var/mob/living/carbon/human/H)
	psi_faculties = list("[PSI_REDACTION]" = PSI_RANK_OPERANT)
	return ..()

/datum/job/submap/CTI_Serviceman
	title = "CTI Serviceman"
	supervisors = "профессор ТИК во главе НИС Верне"
	total_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/verne/service
	info = "Вы - доброволец, вызвавшийся быть обслуживающим персоналом на НИС Верне, судне престижного \
	Технического Института Кита, несущего на себе студентов, которые проводят свои исследования в глубинах \
	космоса. Вы не имеете никакого отношения к группе высадки, и скорее всего никогда не выйдите в открытый космос. \
	Всё, что входит в ваши задачи - это обеспечение экипажа пищей, выращивая её в корабельной гидропонике, а также \
	создание аналогов недоступных на судне продуктов, вроде кофе или табака, всё в том же отсеке..."
	whitelisted_species = null
	blacklisted_species = list(SPECIES_ALIEN, SPECIES_GOLEM, SPECIES_MANTID_GYNE, SPECIES_MANTID_ALATE, SPECIES_MONARCH_WORKER, SPECIES_MONARCH_QUEEN, SPECIES_XENO)
	required_language = LANGUAGE_HUMAN_EURO

	min_skill = list(	SKILL_COOKING   = SKILL_ADEPT,
						SKILL_BOTANY    = SKILL_BASIC,
						SKILL_CHEMISTRY = SKILL_BASIC)

/datum/job/submap/CTI_Undergraduate_Xenoscience_Researcher
	title = "CTI Undergraduate Xenoscience Researcher"
	supervisors = "профессор ТИК во главе НИС Верне"
	total_positions = 8
	outfit_type = /decl/hierarchy/outfit/job/verne/researcher
	info = "Вы - студент престижного Технического Институты Кита, проводящий исследования в глубинах космоса, \
	вместе с вашей группой. Вас будет сопровождать команда частников, которая будет помогать Вам в ваших исследованиях и защищать вас. \
	На судне не хватает некоторого важного экипажа, из за чего часть жизненно-важных систем выполняет автоматика. Безопасность превыше всего"
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_TRITONIAN, SPECIES_SKRELL)
	required_language = LANGUAGE_HUMAN_EURO
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_BASIC,
		SKILL_COMPUTER    = SKILL_BASIC,
		SKILL_DEVICES     = SKILL_BASIC,
		SKILL_SCIENCE     = SKILL_ADEPT,
	)

	max_skill = list(
		SKILL_ANATOMY = SKILL_MAX,
		SKILL_DEVICES = SKILL_MAX,
		SKILL_SCIENCE = SKILL_MAX,
	)
	skill_points = 20//skills copied from Torch sci


/datum/job/submap/CTI_Undergraduate_Xenoscience_Researcher/equip(var/mob/living/carbon/human/H)
	. = ..(H)
	var/vernefaculties = list("Industrial Piloting and Exploration",
	"Anomalies",
	"Xenobotany",
	"Xenobiology",
	//"Psionics",
	"Xenoscience")

	var/vernefaculty = input(H, "Выберите ваш факультет") as null|anything in vernefaculties
	var/obj/item/card/id/C = H.wear_id
	if (vernefaculty == "Industrial Piloting and Exploration")
		C.assignment = "CTI Amateur Pilot"
		return
	else
		C.assignment = "CTI undergraduate [vernefaculty] Researcher"
		return



#define VERNE_OUTFIT_JOB_NAME(job_name) ("CTI Research Vessel - Job - " + job_name)
/decl/hierarchy/outfit/job/verne
	hierarchy_type = /decl/hierarchy/outfit/job/verne
	pda_type = null
	pda_slot = null
	id_types = list(/obj/item/card/id/verne)
	l_ear = /obj/item/device/radio/headset/map_preset/verne

/decl/hierarchy/outfit/job/verne/professor
	name = VERNE_OUTFIT_JOB_NAME("Professor")
	uniform = /obj/item/clothing/under/rank/research_director
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/rd
	shoes = /obj/item/clothing/shoes/laceup
	belt = /obj/item/device/taperecorder
	id_types = list(/obj/item/card/id/verne/professor)
	r_ear = /obj/item/pen/multi/cmd/captain
	r_pocket = /obj/item/folder/red
	l_pocket = /obj/item/folder/yellow

/decl/hierarchy/outfit/job/verne/pilot
	name = VERNE_OUTFIT_JOB_NAME("Pilot")
	uniform = /obj/item/clothing/under/suit_jacket/navy
	shoes = /obj/item/clothing/shoes/dress/caretakershoes
	id_types = list(/obj/item/card/id/verne/pilot)
	belt = /obj/item/storage/belt/holster/general
	r_pocket = /obj/item/gun/energy/gun/small
	l_pocket = /obj/item/crowbar/prybar

/decl/hierarchy/outfit/job/verne/medic
	name = VERNE_OUTFIT_JOB_NAME("Medic")
	uniform = /obj/item/clothing/under/sterile
	suit = /obj/item/clothing/suit/storage/toggle/fr_jacket
	shoes = /obj/item/clothing/shoes/jackboots
	belt = /obj/item/device/scanner/health
	r_pocket = /obj/item/device/radio/off

/decl/hierarchy/outfit/job/verne/service
	name = VERNE_OUTFIT_JOB_NAME("Serviceman")
	uniform = /obj/item/clothing/under/rank/chef
	suit = /obj/item/clothing/suit/chef
	shoes = /obj/item/clothing/shoes/white

/decl/hierarchy/outfit/job/verne/medic/chemist
	name = VERNE_OUTFIT_JOB_NAME("Chemist")
	uniform = /obj/item/clothing/under/rank/chemist
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/chemist

/decl/hierarchy/outfit/job/verne/psionic
	name = VERNE_OUTFIT_JOB_NAME("Psi-Councler")
	uniform = /obj/item/clothing/under/rank/psych/turtleneck/sweater
	suit = /obj/item/clothing/suit/snakeskin
	shoes = /obj/item/clothing/shoes/jackboots


/decl/hierarchy/outfit/job/verne/psionic_trainee
	name = VERNE_OUTFIT_JOB_NAME("Psionic Trainee")
	uniform = /obj/item/clothing/under/syndicate/tacticool
	shoes = /obj/item/clothing/shoes/black


/decl/hierarchy/outfit/job/verne/psionic/equip_ids(var/mob/living/carbon/human/H, var/rank, var/assignment, var/equip_adjustments)
	. = ..()
	var/obj/item/card/id/foundation_civilian/regis_card = new
	if(rank)
		regis_card.rank = rank
	if(assignment)
		regis_card.assignment = assignment
	H.set_id_info(regis_card)
	H.equip_to_slot_or_store_or_drop(regis_card)

/decl/hierarchy/outfit/job/verne/psionic_trainee/equip_ids(var/mob/living/carbon/human/H, var/rank, var/assignment, var/equip_adjustments)
	. = ..()
	var/obj/item/card/id/foundation_civilian/regis_card = new
	if(rank)
		regis_card.rank = rank
	if(assignment)
		regis_card.assignment = assignment
	H.set_id_info(regis_card)
	H.equip_to_slot_or_store_or_drop(regis_card)

/decl/hierarchy/outfit/job/verne/engineer
	name = VERNE_OUTFIT_JOB_NAME("Engineer")
	uniform = /obj/item/clothing/under/rank/engineer
	shoes = /obj/item/clothing/shoes/workboots
	belt = /obj/item/storage/belt/utility/full
	r_pocket = /obj/item/device/radio/map_preset/verne
	l_pocket = /obj/item/crowbar/prybar

/decl/hierarchy/outfit/job/verne/engineer/engine
	name = VERNE_OUTFIT_JOB_NAME("Experimental Engine Technican")
	uniform = /obj/item/clothing/under/hazard
	suit = /obj/item/clothing/suit/storage/hazardvest

/decl/hierarchy/outfit/job/verne/engineer/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/storage/backpack/industrial
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/storage/backpack/satchel/eng
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/storage/backpack/messenger/engi

/decl/hierarchy/outfit/job/verne/researcher
	name = VERNE_OUTFIT_JOB_NAME("Undergraduate Xenoscience Researcher")
	uniform = /obj/item/clothing/under/rank/psych/turtleneck
	suit = /obj/item/clothing/suit/storage/toggle/hoodie/cti
	shoes = /obj/item/clothing/shoes/black

/obj/effect/submap_landmark/spawnpoint/CTI_professor
	name = "CTI Professor"

/obj/effect/submap_landmark/spawnpoint/CTI_pilot
	name = "CTI Pilot"

/obj/effect/submap_landmark/spawnpoint/CTI_engineer
	name = "CTI Engineer"

/obj/effect/submap_landmark/spawnpoint/CTI_Undergraduate_Xenoscience_Researcher
	name = "CTI Undergraduate Xenoscience Researcher"

/obj/effect/submap_landmark/spawnpoint/CTI_medic
	name = "CTI Medical Doctor"

/obj/effect/submap_landmark/spawnpoint/CTI_psionic
	name =  "CTI Psi-Councler"

/obj/effect/submap_landmark/spawnpoint/CTI_psionic_trainee
	name = "CTI Psionic Trainee"

/obj/effect/submap_landmark/spawnpoint/CTI_chef
	name = "CTI Serviceman"

#undef VERNE_OUTFIT_JOB_NAME
