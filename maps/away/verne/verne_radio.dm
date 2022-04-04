/obj/item/device/radio/headset/verne
	name = "CTI headset"
	desc = "An updated, modular intercom that fits over the head. Takes encryption keys. This one sports the logo of the Ceti Technical Institute; sleek!"
	icon_state = "nt_headset"
	ks1type = /obj/item/device/encryptionkey/verne

/obj/item/device/radio/headset/verne/Initialize()
	. = ..()
	set_frequency(SCI_FREQ)	//Not going to be random or just set to the common frequency, but can be set later.
	
/obj/item/device/radio/intercom/department/verne
	name = "intercom (Verne)"
	frequency = SCI_FREQ

/obj/item/device/encryptionkey/verne
	name = "Verne radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Verne" = 1)


//This is the telecomms server we're using on the old-radio version. It is prone to a very annoying bug where it shuts itself off. I think you can fix it by reconstructing it or by an apc reset? dunno. old code.
/obj/item/weapon/stock_parts/circuitboard/telecomms/allinone/verne
	build_path = /obj/machinery/telecomms/allinone/verne

/obj/machinery/telecomms/allinone/verne
	listening_freqs = list(SCI_FREQ)
	channel_color = COMMS_COLOR_SCIENCE
	channel_name = "Verne"
	circuitboard = /obj/item/weapon/stock_parts/circuitboard/telecomms/allinone/verne
