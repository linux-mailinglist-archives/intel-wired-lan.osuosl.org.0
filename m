Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E99BFCBCBD9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 08:14:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4CCFC811D8;
	Mon, 15 Dec 2025 07:14:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dNdpldEJPE0g; Mon, 15 Dec 2025 07:14:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A0C1811E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765782856;
	bh=dW56P9tW+3gUCECfKxUWuOVVqifsv0FvVU0/3GAecI0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5Vgef7qtEOyRSWByzVowv3veuRCz1DMXMuunExywXI8CQ+SNe4iP0eCfAbsHU2tVQ
	 mlxcyvinSCYQIBuZtIfAkFWTUz8k4f0reMi//cXHdHGahq85KcirURbUfkz+HRAn21
	 zpQsbgl209WF8r/HLG3QcZW5leeei8+o2hpvaRnYtCEU5dT0VmGksF5W2SxngDJuZT
	 BwPIaTEnOPKGxmeIAFdcrd8laJWO+tojyySSXjfuxXXW+D0fmL9PcaWGR1b3BWoa35
	 S/kJIbzjdyhumtzufo3ImuxGbffnO969GAsQR/vH4jA893XxR9q53TrOfhsLIw873Q
	 4CllZJ5mD/ruA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A0C1811E3;
	Mon, 15 Dec 2025 07:14:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B34AE117
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 07:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A46F9811DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 07:14:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tEKCA5G50Oix for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 07:14:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 33C67811D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33C67811D8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 33C67811D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 07:14:12 +0000 (UTC)
X-CSE-ConnectionGUID: XDg3h6kLQIKiIN9b9ES1XA==
X-CSE-MsgGUID: EPLK2VsbTQmsk+UpwckiGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="78793847"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="78793847"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 23:14:12 -0800
X-CSE-ConnectionGUID: uCYMxcQwTCKbkMTtIdbldQ==
X-CSE-MsgGUID: Ka6vKAeRRWGZMgm2iV85Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="235037472"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2025 23:14:12 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 23:14:11 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 14 Dec 2025 23:14:11 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.6) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 14 Dec 2025 23:14:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ipLOSn1Yt6QjHM6Iz7jgRdSpsW+NMsHckA/UP5COtI6I4deZknqBrIhEZBdjbmVK4z8fP4rK9ao+k1MWyfhJYGuEy3H4hDVSvf8nt0SzAEuVXaybunVzIUddDuBW40vZI7ivtbjf8ftKlRnXwuDUpD427ltlXvGeD5b5py8W9X1cnpBfmC+ezvqPX0GM2E6UDcIdRCrxPRI1NhrtOPIOt+hTNgkq0QYvkv1nnO9xRyyq4I8+/HJJcaGM+r3eBAuwsrzAfFD7gR3r7RgU8tklztN7vvqHxb2rWww2jxhLuS1ZboWyivSeOPmCGCy/GegbsVbTtNc9MDwtBbnm47saUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dW56P9tW+3gUCECfKxUWuOVVqifsv0FvVU0/3GAecI0=;
 b=hZzjjdsgRZNiYfIOz/YkQrXgrFKQleFTrelxB+H+tlvPWWWohQn8tCFqBl/DW9OTFHsA7wN13dDduimTOI7GTVe1RPi8p6k4iZ+FLiEF2goxiiohhdW58Dil0rVygK2nQbLz2HGna+x+PlZfbN5ihEG+chUAh9iGJIfKCBUDKqClPzc6AelTG15fj8Xmksqjn1D17AcTeuq0Lr81WATikZveh8YmaT7l1+ZIT31KXOuOOMXxlqdQUjvKIKUjiGE0xRlnYHzrAJs9VoPe5MizGinVISaNh7OFxTnnCP82WEpKGeGaXLjlKKpCvqqv2+geXRbQ/24o7lw20jfJeUAMcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB5972.namprd11.prod.outlook.com (2603:10b6:8:5f::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.13; Mon, 15 Dec 2025 07:14:08 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.013; Mon, 15 Dec 2025
 07:14:08 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: =?utf-8?B?TWFya3VzIEJsw7ZjaGw=?= <markus@blochl.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>
CC: Richard Cochran <richardcochran@gmail.com>, "Bloechl, Markus"
 <markus.bloechl@ipetronik.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: fix ptp time increment
 while link is down
Thread-Index: AQHcYg1cF5jpEwQlR0a3sSG+Z9UcBLUiX4VQ
Date: Mon, 15 Dec 2025 07:14:08 +0000
Message-ID: <IA3PR11MB898686B5873D85A56CDE9CECE5ADA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251130-i40e_ptp_link_down-v2-1-8d6dfc10a661@blochl.de>
In-Reply-To: <20251130-i40e_ptp_link_down-v2-1-8d6dfc10a661@blochl.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB5972:EE_
x-ms-office365-filtering-correlation-id: 0e55a1a2-a0f8-41bc-3fa5-08de3ba989de
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?ZHlTaHJPYlp2RmovV1JMOENHZ1FZN1lpSkg1R1JLZlRaTm1iS0pQd3liZ0gw?=
 =?utf-8?B?bmt1a0FEbDQ3YmovWDVLbTg0dFFRejAyWDBCWS9FcndvckxQbnpJcnRNUlpG?=
 =?utf-8?B?U0hjL1NRK0pWc2QwT3hpem1VQzFtRUFWR3Z6Ry9PK1lpQVRuemVCemFyV0Rz?=
 =?utf-8?B?ZHlTVm81OXNvM2NuQjk3WkFXWlJxUVNqZ0tWV2tkZU1mT0RFNXpxdEFhMkVo?=
 =?utf-8?B?bGx5YkhWVUp2cmdTVi8reFRWNmJsSllwT3FlTHY0Y3QzQlh2VE0xNXFMbkwr?=
 =?utf-8?B?QzFpS0pWbEx6R0ZqMmFSSElNeUdMRWZoWXF0ZXQ3eTloZnZhSUV0cVV4TU15?=
 =?utf-8?B?ck4yUCtvYzQzS1M4M0NtWDNYSWJ3dUJZRTdvdUlsK0ljL0tIWk1JU05mdytB?=
 =?utf-8?B?enByblB0K21Yejk0Y3hzV3FoeDdrQnRUbzhUQVNSNHpkY0hZY1Z6SWJmWUsx?=
 =?utf-8?B?RnlvREtPaUQyWFFLK1hKK2NsK1ZFM0lyd0EyRDVvVGRTV2xsMFdYdjBUTHMy?=
 =?utf-8?B?QkNZT0szMDRFVVZjNlhURXBONjZzQ0xOYllpN1hDL04vN0kwZm9IK3RTd0hN?=
 =?utf-8?B?MXZYY1lETHdQaXIwOW9LWXM5RFo0MTJEZi85bElMYldwNlUzZXFqeTJyL3Qy?=
 =?utf-8?B?c1VucC9OYXhMWXBkbnY4Sk92bGlCS1pyb2dqYUt2VjRNY3FkbzZtK3VwaThU?=
 =?utf-8?B?cXRIVVo2SlMrT01IQ3J1NjQ0cFNJVHUxalRhVGhQMEJDNS9kNm5TR0JscFEy?=
 =?utf-8?B?NE5qL2VwQ25ybjRPVklEdjI0SFV6WTA2ejlja29DNGtLdFVsVnNHNXVpYWEw?=
 =?utf-8?B?ZEhUQWFTdlhOUGY5ZmNMb2tsSGxZK3gzcVlZZTlCZ0tHajVPK3ozVE5kdXU3?=
 =?utf-8?B?MG10ODFmbERBb202bm5rZ1VCNWNtOGxUcGE4WVU1VWlPUCtiYm5aY2R5NklN?=
 =?utf-8?B?RUt4YTY0MnJ6aDdtTFhEMG1EUjZiOE5mbDRJd1dFMGwvMlQ4R2szdU5ha1I4?=
 =?utf-8?B?QTVveFd6L3hpY1FMQzBtNWdpcUNXVDU2b3BnRzNMN0wyVmRURjREYVVrMFdh?=
 =?utf-8?B?UzE1MStBcENMZFhGUlRVNktxZzlsMHdDOEZVMjB4RUlLU2I0VVRIS1JSb0F4?=
 =?utf-8?B?YnQ3cmtlYklNcXRmU3I5bVkrTm83cko0MjlNMUFNSVRsYUcxVys2MEprZEps?=
 =?utf-8?B?SGNrQTQvQkc5a2Rad1B5OGVBMHU1Y216alRub2tEMnRWa21iMzYxaGZaclN0?=
 =?utf-8?B?NFJVZTBqdHVXTzJ5RWZLMlVadHJrMlpYQjFjZG9SWHhDVk1vWnRZd3dJakRO?=
 =?utf-8?B?MlhDVDgvVStYUkpaT1dJRUhwR1JJNXJucTRiMmZXbjdhQjBBbzZBMUowTEhC?=
 =?utf-8?B?R0d3cmNkNDFVdTJiKzdrZk9RTWFacnVranFtZ3RNQ2tCS1llWldTaUQ2ZXpt?=
 =?utf-8?B?TDJYK2VSUnE0MTRDWFlaOVl3elFRMFJ5UjZMZCtLL3d4SEJMZ3ppblhWdCtW?=
 =?utf-8?B?TXJ6MnVUNW5NTExaMldsd0IrK1c4VWlNaUZFa2krbC9RVjdtdlE1WUpFV2p5?=
 =?utf-8?B?anYyNW9MNVFKYTY1akxPK3FsOVV3bW8vT21rcUxURXJud1F0bXFlNitZMy9n?=
 =?utf-8?B?NExBQ2NFV0RUL1plNlp6SUtza0dTZ3dqS2sxNitzZmJuS1VtZzNwTStZb1g5?=
 =?utf-8?B?MzVpV0xwZkNEbEsxSmdyRUhFRTJFWVZnTWxBaGNTNW9DNi9rZ0Q1cGJyZ2gz?=
 =?utf-8?B?ZkpBUmVzYjRjMkxYN2tPVE9zL29IWC9URWc2QWc4L3gxVEs0eHV0cklvMXhE?=
 =?utf-8?B?L1JRZC83SlhXYjd0N3V0Zm1zUWVkQmFoVnFtSjRsc21YSmtYLzZXMHBodHdw?=
 =?utf-8?B?VmU0aC84UVR5Um1hcG5yRlgzZjc0U3UrenJJVG5iZXhFMXZ0Ulo0RnM1L05V?=
 =?utf-8?B?VE5xdDJhK3pmd1Fpek1ncjRrRmFVZXdzOWdxcUFXY20xYnhadVdEalI2Tlpa?=
 =?utf-8?B?ejlZMERRUWR0T0EzaHlvNWI4bmErMDFjanJZRXJIMm9OVGE4NUd0bStVcHE1?=
 =?utf-8?B?TUZ4MmZ6RVp4TUNieEVsVUYzcWkzd3B0YU4zUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFdhU3pqNnNPOFpWRThFaTBkOW9QcGZrR0xGU3dNbXBoTVNJelplQTJlRG8r?=
 =?utf-8?B?dElEc001aW0wSTMvWW1UUjgyYzdkTTRPenA2KzZ2Z09yNUFYOFlKQUNFdUJH?=
 =?utf-8?B?alVKWlUwam9YeklVcitDWDdqekJ6d2dGK3VOVThaV3pkSEZ1NEZTUXFHckVw?=
 =?utf-8?B?a3Z6M1pDelhCTUlveUYwbWZ5NnNaOURQUlNMUm5PeDlyN3FFUEwvRmFSeVl6?=
 =?utf-8?B?RU8wUnpBdTh4eEJHOHFPSUJBQ3l5SkNKTjVSOW10Nzh0NzI3Q0xqMDdEUTdr?=
 =?utf-8?B?cTg2N1REKzFpdm8wSnk1MGNlTnR2cVNKcjJIMnF0YlZ1SkdpMS9lWGM1bTMy?=
 =?utf-8?B?RFFHV1pqRit5b1NleitiaG1PajBycjdRZDJKY2duT0lxNW85b3ZOVkFLVGxR?=
 =?utf-8?B?SnlkUTlTTWNpbWFPc05UVTRJMHE1T1JGS1hiZVFRWUo5Ti9STHFnYmtvV0RL?=
 =?utf-8?B?TTROdndSMkw1SDdsTFdsMkhtbmJLbzIwdWZYNVdhdEQ1S2UyNFNkVVZ1eEo1?=
 =?utf-8?B?aHRSNWIrYkE5ckFINnltdktsWG0yTEJNNGxUb05YcUptNm90K3UzTGhVdGZ1?=
 =?utf-8?B?RWVseEc0KytYRW9rejlTNFB4ODVqTnBIa3M3cGFoYUZtd0hRaTdmcWRSRzd6?=
 =?utf-8?B?UWtNRTVqdnVEQStybTVsS283azFHMnpTc3JOZ0p4Z0MwUkErUVBBcnIyT0Rq?=
 =?utf-8?B?UjN0YmludTBzSWdabmtaUC8zcEtmWDRTK01ONktHSXl1SDA3eW9wS1VDVlcy?=
 =?utf-8?B?SHVYeW9wYjREYmFNY2hHcGQwZFY3a204U2RwVFVFQ0hTL1d5OC93ZlZpQ0Vt?=
 =?utf-8?B?c3JQMVJ4SUFvZXNiRC9kZU1YUWY0c3JOdzFUNzdaYi9YSzZqQUVsL3I3c2E1?=
 =?utf-8?B?dFBsS3VzNGpjekk3K1c4NkdpMDFhL0x6ejY3dXJ5NnU3S3RRcHNkUVhGNTg1?=
 =?utf-8?B?K0Jldng4dWsvdEZleDQ2UkQwRU80Tm8xRjh5VnQ0SVFCdjNkaXY2OUNYQkpT?=
 =?utf-8?B?OTlERkliVnFQdGZIdXp0ZVp2dittOVFMUU9POTFwUUNqTlpnUlE1S3Z1WWcy?=
 =?utf-8?B?ekxNU1RXdmJWQXMwWmhhbFl3aTlNOFE1UjVVZnVET0pqbmNTUEZLTDFJc1Yr?=
 =?utf-8?B?Nm5LQ3JKdWR5UUE4eVhGbXRwNzhxdkxyM0NNZWxta3ZlWklsemhxRFIyUitM?=
 =?utf-8?B?bXpRNzdtNnVHUFZXRkFxbGVGcGRxT0hiUjY5ZEZQbjlWbWpQYWE2ajVRTEZs?=
 =?utf-8?B?T3U5dHJuOWVEZW42Zk5TeXdQWjNrR1VpcmhTWUtwbVJ3dkFNaWwwaEFnYllv?=
 =?utf-8?B?cXFkM2JlWjV2aEZEL1VOQ3ZiUUxXQk01dENWazJuSGN6QmRYSUdyL0V0Q2Iy?=
 =?utf-8?B?NjAzT0xwT2ZHY2V1bHMyNFJMS3lMNm10TVpPVVEvRDJZNnNYM0hlVzlqODZo?=
 =?utf-8?B?aVgrVjZzQTVaNE1zK0hjdjFKOTZoR25RYWZhWXBXUzA0RUVTT1JzWHEvRCsx?=
 =?utf-8?B?Zkkxd215Q0I0SUlrQUNxWU9FdzNSb1VsTUptc1VaL2YyNFpBbDBCd2llMzJL?=
 =?utf-8?B?T1M2VHlyMzMxZzJqbVBQRDJSbjdLTVpHeWp4Tk5Nc2N5eFd2MUt4YXBqY1JV?=
 =?utf-8?B?VHppUHozWVE3NTZia0hYYWVwUEs5cnA5cjVEOVJxVXlLQlJyVXFKOExjMTR6?=
 =?utf-8?B?N0ZEK013d1RvMnJtSDNsZGxnMjY3RWZPQXRaczVHZVdwOTYvSTJZR05jZ3BJ?=
 =?utf-8?B?UHAybGlRcGxJa3NBTE1OOHRmdTl1aHJjK1F5SUs5dHFDd1V3c3NkN2kxWm5s?=
 =?utf-8?B?NVhpbWM4ZHU3cUF0NFZDZzJJZ1hBM0ZqcktORFVqS25IbnBwUW5NOHJzQXcz?=
 =?utf-8?B?WkZlZE5nbnlNVEtlVjdTODlMbU55Mm9lUUZGZ0ErVGc1RVNOR2xZZXBqTjAw?=
 =?utf-8?B?dmJDSDRRbXZOdUJ1azVpODE5OWhkWWllaWFKb1paa3dRWW5rMHJSYUQ3cG1z?=
 =?utf-8?B?TVg2NW5aOFdabGlBNXp2czg4N09rZDRnQ1RpaUhvME82YlFUdHpBUGxJeUVV?=
 =?utf-8?B?TXhxT3ExN3ZCektWR09hUHZKM0lDMjJieEpMcmhINWlGTnNDYUpENGlMYkYx?=
 =?utf-8?B?L3E4SEN5MTN0RXhzVFArUEpFOU45MmRGZUpEZVlPek1rT3pVMHZOTU1MMXVU?=
 =?utf-8?B?dFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e55a1a2-a0f8-41bc-3fa5-08de3ba989de
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2025 07:14:08.1196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WCHPR7fKEc0Djbr93KIRpeYS/GkVwZzQVIbgl2ezoRj/gjOgAVRqrn8ioY4QMGJNoweBpI5bwviz1RfhZdaO7NhOcdux+xLbxulLl3Q2eNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5972
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765782853; x=1797318853;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dW56P9tW+3gUCECfKxUWuOVVqifsv0FvVU0/3GAecI0=;
 b=P/41ju+I1yprC1jpG70F2yNbrCg2C/rTMw65oIwyr9Rb9gFp9r08DhFT
 eseYDB1NGGiu+OMglhrE1nQJ9RvKAVdUbUwurSDs+SDF4QBQ8XvdJiJgQ
 8+gYemMj1Mgj9hcW3r5BUUUrE2lXfiQBpkYCvJhMXiWzX8WYQRNcSTRiO
 ZVQT/W0x5ajxcB1FLoCpog5XU5sc+kd5PECcR0BuOWV6gsr8dYfXj/BPK
 5efntVPUFtK9N4GZylO94kFota9fAq1kjQtydIsijB2kCI5XI0qBG224X
 hzxSW9RP7Jo1iSiIwrcl7hYhRbE0sSiPl3MrXRn5XSKTzPDcgzXRf0toU
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P/41ju+I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: fix ptp time increment
 while link is down
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWFy
a3VzIEJsw7ZjaGwNCj4gU2VudDogU3VuZGF5LCBOb3ZlbWJlciAzMCwgMjAyNSA0OjI0IFBNDQo+
IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRz
emVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgS2VsbGVy
LCBKYWNvYiBFDQo+IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBBbmRyZXcgTHVubiA8YW5k
cmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQNCj4gUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQu
bmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsNCj4gSmFrdWIgS2ljaW5z
a2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT4NCj4g
Q2M6IFJpY2hhcmQgQ29jaHJhbiA8cmljaGFyZGNvY2hyYW5AZ21haWwuY29tPjsgQmxvZWNobCwg
TWFya3VzDQo+IDxtYXJrdXMuYmxvZWNobEBpcGV0cm9uaWsuY29tPjsgaW50ZWwtd2lyZWQtbGFu
QGxpc3RzLm9zdW9zbC5vcmc7DQo+IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmc7IE1hcmt1cyBCbMO2Y2hsDQo+IDxtYXJrdXNAYmxvY2hsLmRlPg0K
PiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0IHYyXSBpNDBlOiBmaXggcHRw
IHRpbWUgaW5jcmVtZW50DQo+IHdoaWxlIGxpbmsgaXMgZG93bg0KPiANCj4gV2hlbiBhbiBYNzEw
IGV0aGVybmV0IHBvcnQgd2l0aCBhbiBhY3RpdmUgcHRwIGRhZW1vbiAobGlrZSB0aGUgcHRwNGwN
Cj4gYW5kIHBoYzJzeXMgY29tYm8pIHN1ZGRlbmx5IGxvc2VzIGl0cyBsaW5rIGFuZCByZWdhaW5z
IGl0IGFmdGVyIGENCj4gd2hpbGUsIHRoZSBwdHAgZGFlbW9uIGhhcyBhIGhhcmQgdGltZSB0byBy
ZWNvdmVyIHN5bmNocm9uaXphdGlvbiBhbmQNCj4gc29tZXRpbWVzIGVudGlyZWx5IGZhaWxzIHRv
IGRvIHNvLg0KPiANCj4gVGhlIGlzc3VlIHNlZW1zIHRvIGJlIHJlbGF0ZWQgdG8gYSB3cm9uZ2x5
IGNvbmZpZ3VyZWQgaW5jcmVtZW50IHdoaWxlDQo+IHRoZSBsaW5rIGlzIGRvd24uIFRoaXMgY291
bGQgbm90IGJlIG9ic2VydmVkIHdpdGggdGhlIEludGVsIHJlZmVyZW5jZQ0KPiBkcml2ZXIuDQo+
IFdlIGlkZW50aWZpZWQgdGhlIGZpeCB0byBhcHBlYXIgaW4gSW50ZWxzIG9mZmljaWFsIGV0aGVy
bmV0LWxpbnV4LWk0MGUNCj4gcmVsZWFzZSB2ZXJzaW9uIDIuMTcuNC4NCj4gDQo+IEluY2x1ZGUg
dGhlIHJlbGV2YW50IGNoYW5nZXMgaW4gdGhlIGtlcm5lbCB2ZXJzaW9uIG9mIHRoaXMgZHJpdmVy
Lg0KPiANCj4gRml4ZXM6IGJlYjBkZmYxMjUxZCAoImk0MGU6IGVuYWJsZSBQVFAiKQ0KPiBDYzog
c3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBTaWduZWQtb2ZmLWJ5OiBNYXJrdXMgQmzDtmNobCA8
bWFya3VzQGJsb2NobC5kZT4NCj4gLS0tDQo+IFRlc3RlZCB3aXRoIGFuIFg3MTAgYXQgMTBHIGxp
bmsgc3BlZWQgYW5kIGtlcm5lbCB2ZXJzaW9uIDYuMTIuNDIuDQo+IC0tLQ0KPiBDaGFuZ2VzIGlu
IHYyOg0KPiAtIEZpeCBrZG9jIGFuZCBjb2RlIGZvcm1hdHRpbmcNCj4gLSBSZWJhc2Ugb250byBu
ZXQgdHJlZQ0KPiAtIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTEx
MTktaTQwZV9wdHBfbGlua19kb3duLQ0KPiB2MS0xLWIzNTFmZWQyNTRiM0BibG9jaGwuZGUNCj4g
LS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xX2NtZC5o
IHwgIDkgKysrDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfcHRwLmMg
ICAgICAgIHwgNjkNCj4gKysrKysrKysrKysrKysrKysrKysrLS0NCj4gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2k0MGUvaTQwZV9yZWdpc3Rlci5oICAgfCAgOSArKysNCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eXBlLmggICAgICAgfCAgOCArKysNCj4gIDQg
ZmlsZXMgY2hhbmdlZCwgOTAgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xX2Nt
ZC5oDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucV9jbWQu
aA0KPiBpbmRleCBjYzAyYTg1YWQ0MmIuLmVjMTc2ZTk1NjlhZCAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucV9jbWQuaA0KPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfYWRtaW5xX2NtZC5oDQo+IEBAIC0x
NDg4LDYgKzE0ODgsMTUgQEAgZW51bSBpNDBlX2FxX2xpbmtfc3BlZWQgew0KPiAgCUk0MEVfTElO
S19TUEVFRF8yNUdCCT0gQklUKEk0MEVfTElOS19TUEVFRF8yNUdCX1NISUZUKSwNCj4gIH07DQo+
IA0KPiArZW51bSBpNDBlX3BydF9tYWNfcGNzX2xpbmtfc3BlZWQgew0KPiArCUk0MEVfUFJUX01B
Q19QQ1NfTElOS19TUEVFRF9VTktOT1dOID0gMCwNCj4gKwlJNDBFX1BSVF9NQUNfUENTX0xJTktf
U1BFRURfMTAwTUIsDQo+ICsJSTQwRV9QUlRfTUFDX1BDU19MSU5LX1NQRUVEXzFHQiwNCj4gKwlJ
NDBFX1BSVF9NQUNfUENTX0xJTktfU1BFRURfMTBHQiwNCj4gKwlJNDBFX1BSVF9NQUNfUENTX0xJ
TktfU1BFRURfNDBHQiwNCj4gKwlJNDBFX1BSVF9NQUNfUENTX0xJTktfU1BFRURfMjBHQg0KPiAr
fTsNCj4gKw0KPiAgc3RydWN0IGk0MGVfYXFjX21vZHVsZV9kZXNjIHsNCj4gIAl1OCBvdWlbM107
DQo+ICAJdTggcmVzZXJ2ZWQxOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX3B0cC5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX3B0cC5jDQo+IGluZGV4IDMzNTM1NDE4MTc4Yi4uODlhYmUyZjIyMjE2IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfcHRwLmMNCj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3B0cC5jDQo+IEBAIC04NDcs
NiArODQ3LDY2IEBAIHZvaWQgaTQwZV9wdHBfcnhfaHd0c3RhbXAoc3RydWN0IGk0MGVfcGYgKnBm
LA0KPiBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCB1OCBpbmRleCkNCj4gIAlpNDBlX3B0cF9jb252ZXJ0
X3RvX2h3dHN0YW1wKHNrYl9od3RzdGFtcHMoc2tiKSwgbnMpOyAgfQ0KPiANCj4gKy8qKg0KPiAr
ICogaTQwZV9wdHBfZ2V0X2xpbmtfc3BlZWRfaHcgLSBnZXQgdGhlIGxpbmsgc3BlZWQNCj4gKyAq
IEBwZjogQm9hcmQgcHJpdmF0ZSBzdHJ1Y3R1cmUNCj4gKyAqDQo+ICsgKiBDYWxjdWxhdGUgbGlu
ayBzcGVlZCBkZXBlbmRpbmcgb24gdGhlIGxpbmsgc3RhdHVzLg0KPiArICoNCj4gKyAqIFJldHVy
bjogY3VycmVudCBsaW5rIHNwZWVkLg0KPiArICoqLw0KVGhlIGZ1bmN0aW9uIHVzZXMgaGFyZGNv
ZGVkIHBvcnQgaW5kZXggMCBpbiByZWdpc3RlciBhY2Nlc3NlcyAoSTQwRV9QUlRNQUNfTElOS1NU
QSgwKSwgSTQwRV9QUlRNQUNfUENTX0xJTktfU1RBVFVTMSgwKSksDQpidXQgdGhpcyBsaW1pdGF0
aW9uIGlzIG5vdCBkb2N1bWVudGVkLiBBZGRpdGlvbmFsbHksIHRoZSByZXR1cm4gdmFsdWUgZG9j
dW1lbnRhdGlvbiBpcyB2YWd1ZS4NCg0KDQo+ICtzdGF0aWMgZW51bSBpNDBlX2FxX2xpbmtfc3Bl
ZWQgaTQwZV9wdHBfZ2V0X2xpbmtfc3BlZWRfaHcoc3RydWN0DQo+ICtpNDBlX3BmICpwZikgew0K
PiArCWJvb2wgbGlua191cCA9IHBmLT5ody5waHkubGlua19pbmZvLmxpbmtfaW5mbyAmDQo+IEk0
MEVfQVFfTElOS19VUDsNCj4gKwllbnVtIGk0MGVfYXFfbGlua19zcGVlZCBsaW5rX3NwZWVkID0g
STQwRV9MSU5LX1NQRUVEX1VOS05PV047DQo+ICsJc3RydWN0IGk0MGVfaHcgKmh3ID0gJnBmLT5o
dzsNCj4gKw0KPiArCWlmIChsaW5rX3VwKSB7DQo+ICsJCXN0cnVjdCBpNDBlX2xpbmtfc3RhdHVz
ICpod19saW5rX2luZm8gPSAmaHctDQo+ID5waHkubGlua19pbmZvOw0KPiArDQo+ICsJCWk0MGVf
YXFfZ2V0X2xpbmtfaW5mbyhodywgdHJ1ZSwgTlVMTCwgTlVMTCk7DQo+ICsJCWxpbmtfc3BlZWQg
PSBod19saW5rX2luZm8tPmxpbmtfc3BlZWQ7DQo+ICsJfSBlbHNlIHsNCj4gKwkJZW51bSBpNDBl
X3BydF9tYWNfbGlua19zcGVlZCBwcnRtYWNfbGlua3N0YTsNCkkgdGhpbmsgTGludXgga2VybmVs
IGNvZGluZyBzdHlsZSBkaXNjb3VyYWdlcyBpbXBsaWNpdCBjb252ZXJzaW9ucyBiZXR3ZWVuIGVu
dW0gdHlwZXMgYW5kIGludGVnZXIgdHlwZXMgd2l0aG91dCBleHBsaWNpdCBjYXN0Lg0KQmV0dGVy
IGRlY2xhcmUgdTMyIHBydG1hY19saW5rc3RhOw0KDQo+ICsJCXU2NCBwcnRtYWNfcGNzX2xpbmtz
dGE7DQo+ICsNCj4gKwkJcHJ0bWFjX2xpbmtzdGEgPSAocmQzMihodywgSTQwRV9QUlRNQUNfTElO
S1NUQSgwKSkgJg0KPiArCQkJCSAgSTQwRV9QUlRNQUNfTElOS1NUQV9NQUNfTElOS19TUEVFRF9N
QVNLKQ0KPiA+Pg0KPiArCQkJCSAgSTQwRV9QUlRNQUNfTElOS1NUQV9NQUNfTElOS19TUEVFRF9T
SElGVDsNCj4gKwkJaWYgKHBydG1hY19saW5rc3RhID09IEk0MEVfUFJUX01BQ19MSU5LX1NQRUVE
XzQwR0IpIHsNCj4gKwkJCWxpbmtfc3BlZWQgPSBJNDBFX0xJTktfU1BFRURfNDBHQjsNCj4gKwkJ
fSBlbHNlIHsNCj4gKwkJCWk0MGVfYXFfZGVidWdfcmVhZF9yZWdpc3RlcihodywNCj4gKw0KPiBJ
NDBFX1BSVE1BQ19QQ1NfTElOS19TVEFUVVMxKDApLA0KPiArCQkJCQkJICAgICZwcnRtYWNfcGNz
X2xpbmtzdGEsDQo+ICsJCQkJCQkgICAgTlVMTCk7DQpCb3RoIGk0MGVfYXFfZ2V0X2xpbmtfaW5m
bygpIGFuZCBpNDBlX2FxX2RlYnVnX3JlYWRfcmVnaXN0ZXIoKSByZXR1cm4gZXJyb3Igc3RhdHVz
IGNvZGVzIChpNDBlX3N0YXR1c19jb2RlIC8gaW50KSwNCmJ1dCB0aGVzZSByZXR1cm4gdmFsdWVz
IGFyZSBjb21wbGV0ZWx5IGlnbm9yZWQuIElmIGVpdGhlciBhZG1pbiBxdWV1ZSBjb21tYW5kIGZh
aWxzLA0KdGhlIGZ1bmN0aW9uIHByb2NlZWRzIHdpdGggcG90ZW50aWFsbHkgc3RhbGUgb3IgdW5p
bml0aWFsaXplZCBkYXRhLg0KDQo+ICsNCj4gKwkJCXBydG1hY19wY3NfbGlua3N0YSA9IChwcnRt
YWNfcGNzX2xpbmtzdGEgJg0KPiArDQo+IEk0MEVfUFJUTUFDX1BDU19MSU5LX1NUQVRVUzFfTElO
S19TUEVFRF9NQVNLKSA+Pg0KPiArDQo+IEk0MEVfUFJUTUFDX1BDU19MSU5LX1NUQVRVUzFfTElO
S19TUEVFRF9TSElGVDsNCj4gKw0KPiArCQkJc3dpdGNoIChwcnRtYWNfcGNzX2xpbmtzdGEpIHsN
Cj4gKwkJCWNhc2UgSTQwRV9QUlRfTUFDX1BDU19MSU5LX1NQRUVEXzEwME1COg0KPiArCQkJCWxp
bmtfc3BlZWQgPSBJNDBFX0xJTktfU1BFRURfMTAwTUI7DQo+ICsJCQkJYnJlYWs7DQo+ICsJCQlj
YXNlIEk0MEVfUFJUX01BQ19QQ1NfTElOS19TUEVFRF8xR0I6DQo+ICsJCQkJbGlua19zcGVlZCA9
IEk0MEVfTElOS19TUEVFRF8xR0I7DQo+ICsJCQkJYnJlYWs7DQo+ICsJCQljYXNlIEk0MEVfUFJU
X01BQ19QQ1NfTElOS19TUEVFRF8xMEdCOg0KPiArCQkJCWxpbmtfc3BlZWQgPSBJNDBFX0xJTktf
U1BFRURfMTBHQjsNCj4gKwkJCQlicmVhazsNCj4gKwkJCWNhc2UgSTQwRV9QUlRfTUFDX1BDU19M
SU5LX1NQRUVEXzIwR0I6DQo+ICsJCQkJbGlua19zcGVlZCA9IEk0MEVfTElOS19TUEVFRF8yMEdC
Ow0KPiArCQkJCWJyZWFrOw0KPiArCQkJZGVmYXVsdDoNCj4gKwkJCQlsaW5rX3NwZWVkID0gSTQw
RV9MSU5LX1NQRUVEX1VOS05PV047DQo+ICsJCQl9DQo+ICsJCX0NCj4gKwl9DQo+ICsNCj4gKwly
ZXR1cm4gbGlua19zcGVlZDsNCj4gK30NCj4gKw0KPiAgLyoqDQo+ICAgKiBpNDBlX3B0cF9zZXRf
aW5jcmVtZW50IC0gVXRpbGl0eSBmdW5jdGlvbiB0byB1cGRhdGUgY2xvY2sNCj4gaW5jcmVtZW50
IHJhdGUNCj4gICAqIEBwZjogQm9hcmQgcHJpdmF0ZSBzdHJ1Y3R1cmUNCj4gQEAgLTg1NywxNiAr
OTE3LDE0IEBAIHZvaWQgaTQwZV9wdHBfcnhfaHd0c3RhbXAoc3RydWN0IGk0MGVfcGYgKnBmLA0K
PiBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCB1OCBpbmRleCkNCj4gICAqKi8NCj4gIHZvaWQgaTQwZV9w
dHBfc2V0X2luY3JlbWVudChzdHJ1Y3QgaTQwZV9wZiAqcGYpICB7DQo+IC0Jc3RydWN0IGk0MGVf
bGlua19zdGF0dXMgKmh3X2xpbmtfaW5mbzsNCj4gKwllbnVtIGk0MGVfYXFfbGlua19zcGVlZCBs
aW5rX3NwZWVkOw0KPiAgCXN0cnVjdCBpNDBlX2h3ICpodyA9ICZwZi0+aHc7DQo+ICAJdTY0IGlu
Y3ZhbDsNCj4gIAl1MzIgbXVsdDsNCj4gDQo+IC0JaHdfbGlua19pbmZvID0gJmh3LT5waHkubGlu
a19pbmZvOw0KPiArCWxpbmtfc3BlZWQgPSBpNDBlX3B0cF9nZXRfbGlua19zcGVlZF9odyhwZik7
DQo+IA0KPiAtCWk0MGVfYXFfZ2V0X2xpbmtfaW5mbygmcGYtPmh3LCB0cnVlLCBOVUxMLCBOVUxM
KTsNCj4gLQ0KPiAtCXN3aXRjaCAoaHdfbGlua19pbmZvLT5saW5rX3NwZWVkKSB7DQo+ICsJc3dp
dGNoIChsaW5rX3NwZWVkKSB7DQo+ICAJY2FzZSBJNDBFX0xJTktfU1BFRURfMTBHQjoNCj4gIAkJ
bXVsdCA9IEk0MEVfUFRQXzEwR0JfSU5DVkFMX01VTFQ7DQo+ICAJCWJyZWFrOw0KPiBAQCAtOTA5
LDYgKzk2Nyw3IEBAIHZvaWQgaTQwZV9wdHBfc2V0X2luY3JlbWVudChzdHJ1Y3QgaTQwZV9wZiAq
cGYpDQo+ICAJLyogVXBkYXRlIHRoZSBiYXNlIGFkanVzdGVtZW50IHZhbHVlLiAqLw0KPiAgCVdS
SVRFX09OQ0UocGYtPnB0cF9hZGpfbXVsdCwgbXVsdCk7DQo+ICAJc21wX21iKCk7IC8qIEZvcmNl
IHRoZSBhYm92ZSB1cGRhdGUuICovDQo+ICsJaTQwZV9wdHBfc2V0XzFwcHNfc2lnbmFsX2h3KHBm
KTsNCj4gIH0NCj4gDQo+ICAvKioNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV9yZWdpc3Rlci5oDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX3JlZ2lzdGVyLmgNCj4gaW5kZXggNDMyYWZiYjY0MjAxLi5jNDA1MWRiY2My
OTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9y
ZWdpc3Rlci5oDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9y
ZWdpc3Rlci5oDQo+IEBAIC01MzAsNiArNTMwLDE1IEBADQo+ICAjZGVmaW5lIEk0MEVfUFJUTUFD
X0hTRUNfQ1RMX1RYX1BBVVNFX1JFRlJFU0hfVElNRVJfU0hJRlQgMCAgI2RlZmluZQ0KPiBJNDBF
X1BSVE1BQ19IU0VDX0NUTF9UWF9QQVVTRV9SRUZSRVNIX1RJTUVSX01BU0sgSTQwRV9NQVNLKDB4
RkZGRiwgXA0KPiAgCUk0MEVfUFJUTUFDX0hTRUNfQ1RMX1RYX1BBVVNFX1JFRlJFU0hfVElNRVJf
U0hJRlQpDQo+ICsvKiBfaT0wLi4uMyAqLyAvKiBSZXNldDogR0xPQlIgKi8NCj4gKyNkZWZpbmUg
STQwRV9QUlRNQUNfUENTX0xJTktfU1RBVFVTMShfaSkgKDB4MDAwOEMyMDAgKyAoKF9pKSAqIDQp
KQ0KPiArI2RlZmluZSBJNDBFX1BSVE1BQ19QQ1NfTElOS19TVEFUVVMxX0xJTktfU1BFRURfU0hJ
RlQgMjQgI2RlZmluZQ0KPiArSTQwRV9QUlRNQUNfUENTX0xJTktfU1RBVFVTMV9MSU5LX1NQRUVE
X01BU0sgSTQwRV9NQVNLKDB4NywNCj4gK0k0MEVfUFJUTUFDX1BDU19MSU5LX1NUQVRVUzFfTElO
S19TUEVFRF9TSElGVCkNCj4gKyNkZWZpbmUgSTQwRV9QUlRNQUNfUENTX0xJTktfU1RBVFVTMiAw
eDAwMDhDMjIwDQo+ICsvKiBfaT0wLi4uMyAqLyAvKiBSZXNldDogR0xPQlIgKi8NCj4gKyNkZWZp
bmUgSTQwRV9QUlRNQUNfTElOS1NUQShfaSkgKDB4MDAxRTI0MjAgKyAoKF9pKSAqIDQpKSAjZGVm
aW5lDQo+ICtJNDBFX1BSVE1BQ19MSU5LU1RBX01BQ19MSU5LX1NQRUVEX1NISUZUIDI3ICNkZWZp
bmUNCj4gK0k0MEVfUFJUTUFDX0xJTktTVEFfTUFDX0xJTktfU1BFRURfTUFTSyBJNDBFX01BU0so
MHg3LA0KPiArSTQwRV9QUlRNQUNfTElOS1NUQV9NQUNfTElOS19TUEVFRF9TSElGVCkNCj4gICNk
ZWZpbmUgSTQwRV9HTE5WTV9GTEEgMHgwMDBCNjEwOCAvKiBSZXNldDogUE9SICovICAjZGVmaW5l
DQo+IEk0MEVfR0xOVk1fRkxBX0xPQ0tFRF9TSElGVCA2ICAjZGVmaW5lIEk0MEVfR0xOVk1fRkxB
X0xPQ0tFRF9NQVNLDQo+IEk0MEVfTUFTSygweDEsIEk0MEVfR0xOVk1fRkxBX0xPQ0tFRF9TSElG
VCkgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90
eXBlLmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHlwZS5oDQo+
IGluZGV4IGVkOGJiZGI1ODZkYS4uOThjOGM1NzA5ZTVmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHlwZS5oDQo+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eXBlLmgNCj4gQEAgLTExNSw2ICsxMTUsMTQgQEAg
ZW51bSBpNDBlX3F1ZXVlX3R5cGUgew0KPiAgCUk0MEVfUVVFVUVfVFlQRV9VTktOT1dODQo+ICB9
Ow0KPiANCj4gK2VudW0gaTQwZV9wcnRfbWFjX2xpbmtfc3BlZWQgew0KPiArCUk0MEVfUFJUX01B
Q19MSU5LX1NQRUVEXzEwME1CID0gMCwNCj4gKwlJNDBFX1BSVF9NQUNfTElOS19TUEVFRF8xR0Is
DQo+ICsJSTQwRV9QUlRfTUFDX0xJTktfU1BFRURfMTBHQiwNCj4gKwlJNDBFX1BSVF9NQUNfTElO
S19TUEVFRF80MEdCLA0KPiArCUk0MEVfUFJUX01BQ19MSU5LX1NQRUVEXzIwR0INCj4gK307DQo+
ICsNCj4gIHN0cnVjdCBpNDBlX2xpbmtfc3RhdHVzIHsNCj4gIAllbnVtIGk0MGVfYXFfcGh5X3R5
cGUgcGh5X3R5cGU7DQo+ICAJZW51bSBpNDBlX2FxX2xpbmtfc3BlZWQgbGlua19zcGVlZDsNCj4g
DQo+IC0tLQ0KPiBiYXNlLWNvbW1pdDogZTUyMzVlYjZjZmUwMmE1MTI1NjAxM2E3OGY3YjI4Nzc5
YTc3NDBkNQ0KPiBjaGFuZ2UtaWQ6IDIwMjUxMTE5LWk0MGVfcHRwX2xpbmtfZG93bi00NzkzNGY5
ZTE1NWQNCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gTWFya3VzIEJsw7ZjaGwgPG1hcmt1
c0BibG9jaGwuZGU+DQo+IA0KPiANCj4gLS0NCg0KV2l0aCB0aGUgYmVzdCByZWdhcmRzDQpBbGV4
DQo=
