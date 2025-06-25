RequestScriptAudioBank('DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_LSPD_NEW', false)
RequestScriptAudioBank('DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_LSSD_NEW', false)
RequestScriptAudioBank('DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_BCSO_NEW', false)
RequestScriptAudioBank('DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_SAHP_NEW', false)
RequestScriptAudioBank('DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_FIB_NEW', false)
RequestScriptAudioBank('DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_LSFD_NEW', false)
RequestScriptAudioBank('DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_BCFD_NEW', false)
RequestScriptAudioBank('DLC_SERVERSIDEAUDIO\\OISS_SSA_VEHAUD_SANFIRE_NEW', false)

local sirens = {}

sirens.audio = {
	{ --[[1]]
		name = 'SIRENS_AIRHORN',
		ref = 0
	},
	{ --[[2]]
		name = 'VEHICLES_HORNS_SIREN_1',
		ref = 0
	},
	{ --[[3]]
		name = 'VEHICLES_HORNS_SIREN_2',
		ref = 0
	},
	{ --[[4]]
		name = 'VEHICLES_HORNS_POLICE_WARNING',
		ref = 0
	},
	{ --[[5]]
		name = 'RESIDENT_VEHICLES_SIREN_WAIL_01',
		ref = 0
	},
	{ --[[6]]
		name = 'RESIDENT_VEHICLES_SIREN_WAIL_02',
		ref = 0
	},
	{ --[[7]]
		name = 'RESIDENT_VEHICLES_SIREN_WAIL_03',
		ref = 0
	},
	{ --[[8]]
		name = 'RESIDENT_VEHICLES_SIREN_QUICK_01',
		ref = 0
	},
	{ --[[9]]
		name = 'RESIDENT_VEHICLES_SIREN_QUICK_02',
		ref = 0
	},
	{ --[[10]]
		name = 'RESIDENT_VEHICLES_SIREN_QUICK_03',
		ref = 0
	},
	{ --[[11]]
		name = 'VEHICLES_HORNS_AMBULANCE_WARNING',
		ref = 0
	},
	{ --[[12]]
		name = 'VEHICLES_HORNS_FIRETRUCK_WARNING',
		ref = 0
	},
	{ --[[13]]
		name = 'RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01',
		ref = 0
	},
	{ --[[14]]
		name = 'RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01',
		ref = 0
	},
	{ --[[15]]
		name = 'OISS_SSA_VEHAUD_LSPD_NEW_HORN',
		ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET'
	},
	{ --[[16]]
		name = 'OISS_SSA_VEHAUD_LSPD_NEW_SIREN_ADAM',
		ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET'
	},
	{ --[[17]]
		name = 'OISS_SSA_VEHAUD_LSPD_NEW_SIREN_BOY',
		ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET'
	},
	{ --[[18]]
		name = 'OISS_SSA_VEHAUD_LSPD_NEW_SIREN_CHARLES',
		ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET'
	},
	{ --[[19]]
		name = 'OISS_SSA_VEHAUD_LSPD_NEW_SIREN_DAVID',
		ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET'
	},
	{ --[[20]]
		name = 'OISS_SSA_VEHAUD_LSPD_NEW_SIREN_EDWARD',
		ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET',
	},
	{ --[[21]]
		name = 'OISS_SSA_VEHAUD_LSSD_NEW_HORN',
		ref = 'OISS_SSA_VEHAUD_LSSD_NEW_SOUNDSET'
	},
	{ --[[22]]
		name = 'OISS_SSA_VEHAUD_LSSD_NEW_SIREN_ADAM',
		ref = 'OISS_SSA_VEHAUD_LSSD_NEW_SOUNDSET'
	},
	{ --[[23]]
		name = 'OISS_SSA_VEHAUD_LSSD_NEW_SIREN_BOY',
		ref = 'OISS_SSA_VEHAUD_LSSD_NEW_SOUNDSET'
	},
	{ --[[24]]
		name = 'OISS_SSA_VEHAUD_LSSD_NEW_SIREN_CHARLES',
		ref = 'OISS_SSA_VEHAUD_LSSD_NEW_SOUNDSET'
	},
	{ --[[25]]
		name = 'OISS_SSA_VEHAUD_LSSD_NEW_SIREN_DAVID',
		ref = 'OISS_SSA_VEHAUD_LSSD_NEW_SOUNDSET',
	},
	{ --[[26]]
		name = 'OISS_SSA_VEHAUD_LSSD_NEW_SIREN_EDWARD',
		ref = 'OISS_SSA_VEHAUD_LSSD_NEW_SOUNDSET'
	},
	{ --[[27]]
		name = 'OISS_SSA_VEHAUD_BCSO_NEW_HORN',
		ref = 'OISS_SSA_VEHAUD_BCSO_NEW_SOUNDSET'
	},
	{ --[[28]]
		name = 'OISS_SSA_VEHAUD_BCSO_NEW_SIREN_ADAM',
		ref = 'OISS_SSA_VEHAUD_BCSO_NEW_SOUNDSET'
	},
	{ --[[29]]
		name = 'OISS_SSA_VEHAUD_BCSO_NEW_SIREN_BOY',
		ref = 'OISS_SSA_VEHAUD_BCSO_NEW_SOUNDSET'
	},
	{ --[[30]]
		name = 'OISS_SSA_VEHAUD_BCSO_NEW_SIREN_CHARLES',
		ref = 'OISS_SSA_VEHAUD_BCSO_NEW_SOUNDSET'
	},
	{ --[[31]]
		name = 'OISS_SSA_VEHAUD_BCSO_NEW_SIREN_DAVID',
		ref = 'OISS_SSA_VEHAUD_BCSO_NEW_SOUNDSET'
	},
	{ --[[32]]
		name = 'OISS_SSA_VEHAUD_BCSO_NEW_SIREN_EDWARD',
		ref = 'OISS_SSA_VEHAUD_BCSO_NEW_SOUNDSET',
	},
	{ --[[33]]
		name = 'OISS_SSA_VEHAUD_SANFIRE_NEW_HORN',
		ref = 'OISS_SSA_VEHAUD_SANFIRE_NEW_SOUNDSET'
	},
	{ --[[34]]
		name = 'OISS_SSA_VEHAUD_SANFIRE_NEW_SIREN_ADAM',
		ref = 'OISS_SSA_VEHAUD_SANFIRE_NEW_SOUNDSET'
	},
	{ --[[35]]
		name = 'OISS_SSA_VEHAUD_SANFIRE_NEW_SIREN_BOY',
		ref = 'OISS_SSA_VEHAUD_SANFIRE_NEW_SOUNDSET'
	},
	{ --[[36]]
		name = 'OISS_SSA_VEHAUD_SANFIRE_NEW_SIREN_CHARLES',
		ref = 'OISS_SSA_VEHAUD_SANFIRE_NEW_SOUNDSET'
	},
	{ --[[37]]
		name = 'OISS_SSA_VEHAUD_SANFIRE_NEW_SIREN_DAVID',
		ref = 'OISS_SSA_VEHAUD_SANFIRE_NEW_SOUNDSET'
	},
	{ --[[38]]
		name = 'OISS_SSA_VEHAUD_SANFIRE_NEW_SIREN_EDWARD',
		ref = 'OISS_SSA_VEHAUD_SANFIRE_NEW_SOUNDSET'
	},
	{ --[[39]]
		name = 'OISS_SSA_VEHAUD_LSFD_NEW_HORN',
		ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET'
	},
	{ --[[40]]
		name = 'OISS_SSA_VEHAUD_LSFD_NEW_SIREN_ADAM',
		ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET'
	},
	{ --[[41]]
		name = 'OISS_SSA_VEHAUD_LSFD_NEW_SIREN_BOY',
		ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET'
	},
	{ --[[42]]
		name = 'OISS_SSA_VEHAUD_LSFD_NEW_SIREN_CHARLES',
		ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET'
	},
	{ --[[43]]
		name = 'OISS_SSA_VEHAUD_LSFD_NEW_SIREN_DAVID',
		ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET'
	},
	{ --[[44]]
		name = 'OISS_SSA_VEHAUD_LSFD_NEW_SIREN_EDWARD',
		ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET'
	}
}

sirens.vehicles = {
	[`police`] = {
		sirens.audio[1],
		sirens.audio[2],
		sirens.audio[3],
		sirens.audio[4]
	},
	[`lcv8jdrl`] = {
		sirens.audio[1],
		sirens.audio[2],
		sirens.audio[3],
		sirens.audio[4]
	},
	[`almerapol`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`ambulancef550`] = {
		sirens.audio[21],
		sirens.audio[31],
		sirens.audio[32],
		sirens.audio[29]
	},
	[`ambulancetransit`] = {
		sirens.audio[21],
		sirens.audio[31],
		sirens.audio[32],
		sirens.audio[29]
	},
	[`BARRACUDA`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`R1200GSP`] = {
		sirens.audio[15],
		sirens.audio[16],
		sirens.audio[17],
		sirens.audio[18],
		sirens.audio[19],
		sirens.audio[20]
	},
	[`R1200RTP`] = {
		sirens.audio[15],
		sirens.audio[16],
		sirens.audio[17],
		sirens.audio[18],
		sirens.audio[19],
		sirens.audio[20]
	},
	[`buspolisi`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`dapcwolf`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`dmaxpolisi`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`elantrapjr`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`fjr1300polantas`] = {
		sirens.audio[15],
		sirens.audio[16],
		sirens.audio[17],
		sirens.audio[18],
		sirens.audio[19],
		sirens.audio[20]
	},
	[`hiluxbrimob`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`lancerpol`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`landcruiserv8`] = {
		sirens.audio[21],
		sirens.audio[22],
		sirens.audio[23],
		sirens.audio[24],
		sirens.audio[25],
		sirens.audio[26]
	},
	[`Mazda6PJR`] = {
		sirens.audio[15],
		sirens.audio[16],
		sirens.audio[17],
		sirens.audio[18],
		sirens.audio[19],
		sirens.audio[20]
	},
	[`2006MAZDA6`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`mazda6sabhara`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`rangerpolantas`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`samsatkeliling`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`sanchezemergency`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`tritonsabhara`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`trukbrimob`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`truksabhara`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`RIOT2`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	[`xj900polantas`] = {
		sirens.audio[21],
		sirens.audio[28],
		sirens.audio[29],
		sirens.audio[30]
	},
	--[`pemadam`] = {
	--    sirens.audio[39],
	--    sirens.audio[41],
	--    sirens.audio[40],
	--    sirens.audio[42]
	--},
	[`jetbushdd2`] = {
		sirens.audio[43],
		sirens.audio[44],
		sirens.audio[38],
		sirens.audio[37],
		sirens.audio[36],
		sirens.audio[35],
		sirens.audio[34]
	},
	[`jetbushdd2setra`] = {
		sirens.audio[43],
		sirens.audio[44],
		sirens.audio[38],
		sirens.audio[37],
		sirens.audio[36],
		sirens.audio[35],
		sirens.audio[34]
	},
	[`jetbusshd2+`] = {
		sirens.audio[43],
		sirens.audio[44],
		sirens.audio[38],
		sirens.audio[37],
		sirens.audio[36],
		sirens.audio[35],
		sirens.audio[34]
	},
	[`jetbussdd2+`] = {
		sirens.audio[43],
		sirens.audio[44],
		sirens.audio[38],
		sirens.audio[37],
		sirens.audio[36],
		sirens.audio[35],
		sirens.audio[34]
	},
	[`jetbusshd3+`] = {
		sirens.audio[43],
		sirens.audio[44],
		sirens.audio[38],
		sirens.audio[37],
		sirens.audio[36],
		sirens.audio[35],
		sirens.audio[34]
	},
	[`jetbusuhd3+`] = {
		sirens.audio[43],
		sirens.audio[44],
		sirens.audio[38],
		sirens.audio[37],
		sirens.audio[36],
		sirens.audio[35],
		sirens.audio[34]
	},
	[`E350CAR`] = {
		sirens.audio[21],
		sirens.audio[31],
		sirens.audio[32],
		sirens.audio[29]
	}
}

return sirens