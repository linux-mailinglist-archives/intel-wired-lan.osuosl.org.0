Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31933AFCE57
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 16:58:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC32980E7D;
	Tue,  8 Jul 2025 14:58:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EwSZP4w02_Jh; Tue,  8 Jul 2025 14:58:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09DEA811C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751986694;
	bh=NnLFEl70ylagDr5A9YqA8kMqUdo3DMAjzO/18l5zxoo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WpQbGnVx57Lo2ewAFErudIA+VW+km48l9wjXp7noz3Cc9U3o49RLaeLgO/auJQArf
	 JU5lZQzDU93H6OqMSO4erO6E+bZA9RktyqkPn4p7Wrez0vcUAmJH2MVff6MsYBzr/P
	 3gV0PtU0cREibRAXkbhjXdGgfK4K062Av6mt/DNDxJnHsbSp5Hwjb3D3MtVobo2e8X
	 RhGeyakMC0HhsB7n4tn/04tL6X6nqSQKGZbD0Umg2eSP4AaGGrvfyWflytza5aDxU+
	 xFDWZavrRskntf7f8dS8BGMMWG91on/SzA79R5L3t0xNe81umKkHvLVAl9OnKWv4ln
	 QLooEFxYfHVbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09DEA811C6;
	Tue,  8 Jul 2025 14:58:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A67B51BF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 14:58:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8CE0840BEF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 14:58:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3OtuKnZ_nL6w for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 14:58:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DDCDC40B99
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDCDC40B99
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DDCDC40B99
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 14:58:11 +0000 (UTC)
X-CSE-ConnectionGUID: zySnMWYTQ0SM2O4XmLCE5w==
X-CSE-MsgGUID: yIrW2n4ITmmyykKewskd5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="64477465"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="64477465"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 07:58:11 -0700
X-CSE-ConnectionGUID: QFQESKB9SA28N3vHsiStow==
X-CSE-MsgGUID: T7IU7dteRlOUe3xomEYO1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="155608423"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 07:58:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 07:58:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 8 Jul 2025 07:58:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.58) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 07:58:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H4dVznuVro7kVaUuvLWBcUFzcZW8UdY0+g2pBYAwZH/vw7IoiUIKWsKIIM4eqzrkAYX3QmARi8gXBvAs5B+lLNER+rCmmdc3R+EEy9zQrtWLu8TelwAQeF9Y4LCdQ8tkBayrinhX8fnQe7OjLLAFeZf8pzMTRuPM+FhT9slSC9DrZQFXCrHtdYNcEkJ/gOD9AUjSj0kfWYCnXIjRbcEUIh8PtSaKKdJnsiEcHZ88m2suIUH2X92Iotjy1Gp2DQqJax+9qEE8pk2PUXT5x/SZk1GfRJ0+/ty0yN3tnG5DHFwiWHxzRgCxLdyobX6qfWft8NTYhpdeJBJcRoE/0roT9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NnLFEl70ylagDr5A9YqA8kMqUdo3DMAjzO/18l5zxoo=;
 b=sBuybwqj1zDoBfFQcrXpmFrGf6YMfPH0n9yZ/MrX+YDBdQ5tGK0dX4OCJj3q0/bWGden/Bm1WnyjMEqu2d1eiEAaBpYCAJw4nYvpO/IjvE3C7vRHGbX3Rn0le36p7R6CL2nffAsBizKezv5eDno4Q/awFTXMLlcOWX1mlyfD1CydtyejsvDE5VSny+HtlR/ASSlYBCLQ9gjeQDjaL5TabYrelxKSyOuDrV6ioEiwGFTKfDA1P3FIrD/BD7qLMZZ4/E9yjoKfprJ0gj5HtBl593MWZHf0C9oFA4Isrfys5nvrgpWvXTksoEL76/DQARDBsT8c2XVR967Eo3PW3jgfaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Tue, 8 Jul
 2025 14:58:00 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%6]) with mapi id 15.20.8769.022; Tue, 8 Jul 2025
 14:58:00 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Chittim, Madhu" <madhu.chittim@intel.com>, "Cao,
 Yahui" <yahui.cao@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 7/8] ice: avoid rebuilding if
 MSI-X vector count is unchanged
Thread-Index: AQHb4J/xETwE/ONnSkOKS0JTpwO017QocBQw
Date: Tue, 8 Jul 2025 14:58:00 +0000
Message-ID: <IA3PR11MB89857CBBB9B57DF4CB1B23878F4EA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
 <20250618-e810-live-migration-jk-migration-prep-v1-7-72a37485453e@intel.com>
In-Reply-To: <20250618-e810-live-migration-jk-migration-prep-v1-7-72a37485453e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|CH3PR11MB7300:EE_
x-ms-office365-filtering-correlation-id: 33dbf6e5-2d64-4b0d-404b-08ddbe2fd522
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TXNNNXl5V3ZwZFB0SXd5OFRYRERWT0dzOHhDSUY4WitCWHZlTDZDQU9iN01D?=
 =?utf-8?B?QUMreFRzclZIeFB2WVp3eURpSVR4b1NiZ1k1Q1ljRmNTbnVqVjRUdEtUVXN2?=
 =?utf-8?B?MjJKZmg2Q0ZHOHZGYUd5UXVDNnhtZkl6T1NWMWd5TjR6TGdLM0ZQVVlPZjRj?=
 =?utf-8?B?R281SkhqbEpxbnEzT3p1WUFiR3JmSHcvQXRIQ1VZbERHZkRWVHBKY0lqSW1V?=
 =?utf-8?B?bnJ5RTE1OHgzMTdrTVgzcEdVdk1qLytXNUtPYnA0SU1DenZwbWZiSWpxdEd5?=
 =?utf-8?B?QmpvREx3WUlaMWVUWFZOT25XTlVTc25uczJoSEhZRzhIanJ1T2hzM3NzcHpT?=
 =?utf-8?B?YWpvTko4eXhQa3lRdzZVMy9rRzFadzVRT01PdkxvZkpLNUZkbE90djNLR1c4?=
 =?utf-8?B?M1lzeFVaZnhuUG1UV0J1MkNoR3paZUQvcG9NMkNIUFRHa1lubjM2N05qRGdJ?=
 =?utf-8?B?ekE4WmNza3d5Q3B6eURLWUQzckVwbDBaM04wTzMrWEExRjczb3ptTkowZzJE?=
 =?utf-8?B?ZmovSDAzRmNiZlJHbEwvbkhJaE4xMUZmU29wZGFTbkptd0Y1ZEVHZEVwcVl3?=
 =?utf-8?B?WElRTlhObTV2TE1IZG5EK2xTektTODZOOC9hWmUrY3dqa3F4SjlVWFFIZVU5?=
 =?utf-8?B?T1M5MFl5UnYvR0NNeWVsb1B3L0NiSmxSVnlyVkdOU05GMmpoaHhDdFVmR0Nn?=
 =?utf-8?B?eVV2UDJXZ1Z5cDRiWS9HckkwUDBpTGI3UklweWY4T1VaZDFKQUI0SEx2T0VK?=
 =?utf-8?B?U3IyMmdrMWZoeEhQVUY5NFdVbjZOc0NVWnQvVm00U2orNFFyQ2tHWFFrTGxy?=
 =?utf-8?B?YnF4amlPK0xjUUxLcXhmTWZQMVBKcmpOUFo3WVAyTmJ3aGFWbDlRenV2OUVp?=
 =?utf-8?B?cW9TejdpNVUrcXV0SHJzWjBscGN3VEZFSzB3TW13SHkzck9Za0pML1VTWUhD?=
 =?utf-8?B?UWhZNHhYNmQ1MDd2TXlneGY5NnhBTVJiMlA1Yi9EejRzUzR4NGVQMVVXa09t?=
 =?utf-8?B?SWtnb2FQZE9PK2NrV2NMNzBHaitrSGVaZjRtbXRZY1JraGtIUEZzVjRZRllN?=
 =?utf-8?B?blJndXRvUW93RVM1b3cxNXFXL1dWb3FGSUJ0c1lJOElIR1V3ZHhwVExjRmZL?=
 =?utf-8?B?RFpGVmNQNnRSRkVYRGRaQm9FNnAwdEJvMFNnTjVFdDQ5V2dTWnFTd2FCQjZT?=
 =?utf-8?B?czhnNG9RcndDK2JMb3ZLVmxRcnNTdlNvNWgzNU5yM2FIejFneUdUa3ROK0JU?=
 =?utf-8?B?MnpJSnc2Y25nWGdDZEVtUUtSY0dYalpaZ1hTb0ZmSlpabEVHVS9jNGp2RFNW?=
 =?utf-8?B?dFlNNzh4YmxtZmk1S2FEYzB5cXdCM2hrS1lGdDE5bnV3ZEtyREhDaHA5OFNE?=
 =?utf-8?B?bVZnTXRJS1Vxa09oNXJjc0k1bzF2eTZBS01vc0lVU05aME52WWxWbHFpRXJJ?=
 =?utf-8?B?Yms5bXJ2UGlnMVRRUDVzMEV3NVBJTXk2WUxqNzJIRHNjYzRtd2dWV0ZVRDh3?=
 =?utf-8?B?dGJGWExRWStuMWI5UkxpVWxwQllDcUErUWxRM3NQaDE5MHBGdmxGeEtPNW9Z?=
 =?utf-8?B?UXAwV2FVNE5aMDdwSzQ0ZTVML0E1T0xONHd3RDVmcEV1TWxMRnQ1Zk1TbDlj?=
 =?utf-8?B?WWErUUpSS0pqNWZFeDZ4dXUrSzNubVViYlMxMmJSeHpERitkeGsycnczOGxF?=
 =?utf-8?B?Rk9UR09LSkh3bkVESWZyeGxGeFlUS2Rqc09sSVk4RVRHcW9PMnBNU3BzZ0FW?=
 =?utf-8?B?Yng2UmQ2NTB2dnRlU0U3WFFoa2JCWmlNbU5XVVhFT0lRSGJIMmNCVk1JY1o5?=
 =?utf-8?B?VkNkak81TjROWUhUY0VDRWpCTVlhbm1YWG1xc3MvY2pWclozQmRYQVhwZklI?=
 =?utf-8?B?UVpwVTFEMXJraDczZDQwc1RpRk9ZZzRDM2c2SFI0bXl1cTh2ODR6eUk1VDU2?=
 =?utf-8?B?cjNIMloxdnlNWDRCWjlOeGdKQVIwYU5VMURaQjRTSXhkTUtDaXlORTZuaytr?=
 =?utf-8?B?dGVjVnhYZ3dBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3hUb1B0d1RwOW9XakRsYXhmTFJ5VFl6RkxFWnIxdnA0VG1TREFvbVJUOXQr?=
 =?utf-8?B?bUlqb0h4K2ZGd3VrSXU3NDFJWTdZZ0R4RVBWSUhveFgyV0lGY3dvTmUwektO?=
 =?utf-8?B?MDJaUkczc2s5THRRSE1UcU52d2Z0Y0g5NGhOWG5LUjdvK3lXYTgxa28rM25N?=
 =?utf-8?B?S2gxWmJZUEtXcWU2Rm1XWFpJZ0JPc3IwcUtEblk2RkU2WW50dmNTMERJZlMy?=
 =?utf-8?B?ZExMOFhmcnNQRittWndqL0FBQ3pYVEZZcjlQRHNQZUNXSGRuaitCaHhVN1E1?=
 =?utf-8?B?MGJvMFQ2ekY2YlVPMDN2UTkyMDgzMWNkSzVYeEQxU2FaRW1sL3RnNGJXYXVk?=
 =?utf-8?B?cFU3bjcxZFAxWkpHekdiUHhmU2p5L051TUI1SXdUMVQ3R3Yxd3c1eXAyZkxE?=
 =?utf-8?B?Ni9kQnNsbHJrZFhlWXJLRkJGT1U2TzBPMGVyU0FkTFhHVjdkVkpQQmVoOEFj?=
 =?utf-8?B?M2VnVGRjOEQvakE0N0NpdHgvYnR5Q1hlcHNKSkorckFIMG9IOWh3a2J0bmpx?=
 =?utf-8?B?NDkvWHk2cVVES1N3ZmljVmRQOUwxUlNjbjRSQmNTU21wbGlLZnBVZTM3MTdR?=
 =?utf-8?B?L1pjMXJweE9DaWxQVjBGUVhiSVNsdjhmMkM1UlpxdTl1eTJydis4OEZTbTIz?=
 =?utf-8?B?Z2Q3aXdiSEgrbEk1SWhlbWFidWVjbjZ0aUhXd0xKbkJ3NmEwaXQ3Q29Vdnd2?=
 =?utf-8?B?TlVSaXE4V0JvMW9Gd0xaNEFkakp3QzBQRkRnK0pvd1NSZDF2cWZlU2pwYWRl?=
 =?utf-8?B?U3dXNXd6ODZYVUxWK3hVYnE5M0lLNjlKeldzZWVIQkR0dkJQSWxLdHAvUmxH?=
 =?utf-8?B?eEMzMzZxMEwrRExTT0RXMDgveGp0VXFpdURCQkE2Y2NCWWlxMzJnM0FFMVJK?=
 =?utf-8?B?Z0pGVEd4MEZSMWpybHIvR2o2ZFZ5M2h6OERITXFySmx4c3ZSeGh2TDhIcWV4?=
 =?utf-8?B?bmFDOERJU2ptVnlpL044eEJHQzArV2dqSDhtSnYzNjB5a2NRcElKUUZ5cFFZ?=
 =?utf-8?B?aE0zYzZlZnh5ZVBXZVFtNTgxa3p5THhyK3RMYTNNWEoveUM1bjY4SWtwdEg0?=
 =?utf-8?B?UEMvL1NyaE9pVU4xLzIyVzhua21sckJ5NFBrQ1ZmN1NxWXcwMnM4TzBpbW0v?=
 =?utf-8?B?bFF5Q25laEVIUGV3bmdVQlF1ZDRsMnVNK2JsRk12WFZBRnMrdGNKLzVKcURt?=
 =?utf-8?B?YTBoZGlwUHR2WUtwdXo4Y1QrdTNLRGhtVEx2S2Jyejh0Y3lFM21rd1pXZ0VG?=
 =?utf-8?B?dDBnNk01endyRWVIck1aK2ovUDhTT1U3NmxmSWhlWDJxNWVGSVhUQWFJM0Ux?=
 =?utf-8?B?U2l2R05MNUQ3N0NFdW84aU5GNnVUQ0doYjlQR1BETDF0YnJEb3pQbDg2Tlkw?=
 =?utf-8?B?ejlWbEVCYVJnbE53blJ6TklCZlFhdWlKc1hkNDIxeEl4bm90UzkxMjdsbWt6?=
 =?utf-8?B?MnFvS2VPVUkrY0xlcjdnRzBJRS96Y2I3SmQ3dVVSdS9qZjJiSUphRHN6cGhu?=
 =?utf-8?B?YXZ6SkFmeUZ1ZTc5eG13WThvTTI4ckZpZWRMSW5wMG8rSWR6TW85QnlrZjcv?=
 =?utf-8?B?Y2FHZG0rUWt1TjltRHlmRlRaVnJxRjZaRllvb0Z3NEU5RWxtZWJvckZmdnpp?=
 =?utf-8?B?eWZQNGRiaTJKMzZoSnp1ZVZQdnNhL0xGVmx2Rzlic2RwcUlXQ0I3WW8va2E1?=
 =?utf-8?B?eUFROG5jbFpCcFAyeklnL0FrT054S2pRVlBMeVdLNnJQQ1o5a3JOdWRMWlFM?=
 =?utf-8?B?cXg0R2h0QkpINUpRVjR4aEMyYWFOKzk4OTJLUjNPUHZselM1Wk5nYzA2S0JV?=
 =?utf-8?B?cDU0YjdvcjBGTmltVnk5R2JUMEhSdVI4QzUyVERsUUhxM0E5czZaTmN6UE5o?=
 =?utf-8?B?MWUrall1empWakdJbEZNcWpsL3Eyd0lydkRDaklFazU5ckdsaWVMMHNRK3ZS?=
 =?utf-8?B?U2RYK29KL2F2c2dSNE1IUFlWSEJ1ejVCeWhFK2tzNjBUVWdPTlBCK294b3Fl?=
 =?utf-8?B?UUw0dXBqWGhrYUMwbExHSUMzcFB4V0xJUnVvN1Rhb0ptNVh6Wm5taTFEQXp5?=
 =?utf-8?B?VXR6VGtuNzBDWkxEN1d3WWQ3Ukw1V0FZZDJCWDR2MlQ4MHVEY0l5TTlaU3B3?=
 =?utf-8?B?N3BxV1hFWDJEalpVREdwS29JelcrNjd4NmdpLyswM1gwVkJwMG4yWGFjV2hs?=
 =?utf-8?B?MEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33dbf6e5-2d64-4b0d-404b-08ddbe2fd522
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2025 14:58:00.4509 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k7LD+Zj2j/r7bKK87ZZWJbuLiFHqd+ddbtIYx057v/90P4VHFYspFSbftZwo5Tmjj8sw2m5PreouSQHQI4EOEtyMhzJu3VP50MXm8lGNM58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7300
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751986692; x=1783522692;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NnLFEl70ylagDr5A9YqA8kMqUdo3DMAjzO/18l5zxoo=;
 b=ijsiIgT6fie/X190HHAZL14UErPTu4NYELqrTS0NI/CXeSgnZ3x+x4tw
 mDn2x9iR5y2bvb/O8FneMy+Fk/BoIZTB5Kc/MXAKRrkETfUlC1tekA2Lw
 bD49EykuSgAB3H4HlhcIr6XjtfQ0VxpOSiUkhluChJDq61VPn56m6Y3h3
 5kkXV7pk3r0gBuxEKJX49Vh5uRmF0+zQU41NOem+ir/4Tfhsj2d5bsEjY
 xvwyKD/1MYOlAoCz92mxBwOlkfVTV8gI4P94onsi4eEoQSnNRChaUtfCC
 sfmmZzKSJx7tbf//3fGjpusAouw/Q1YGnOLCA+sqj0q9Jwqvtoc6sPm8c
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ijsiIgT6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 7/8] ice: avoid rebuilding if
 MSI-X vector count is unchanged
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBKYWNvYiBL
ZWxsZXINCj4gU2VudDogVGh1cnNkYXksIEp1bmUgMTksIDIwMjUgMTI6MjUgQU0NCj4gVG86IElu
dGVsIFdpcmVkIExBTiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+DQo+IENjOiBL
ZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7DQo+IENoaXR0aW0sIE1hZGh1IDxtYWRodS5jaGl0dGltQGludGVsLmNvbT47IENh
bywgWWFodWkNCj4gPHlhaHVpLmNhb0BpbnRlbC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50
aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+Ow0KPiBLaXRzemVsLCBQcnplbXlzbGF3IDxwcnplbXlz
bGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFU
Q0ggaXdsLW5leHQgNy84XSBpY2U6IGF2b2lkIHJlYnVpbGRpbmcgaWYgTVNJLVgNCj4gdmVjdG9y
IGNvdW50IGlzIHVuY2hhbmdlZA0KPiANCj4gQ29tbWl0IDA1YzE2Njg3ZTBjYyAoImljZTogc2V0
IE1TSS1YIHZlY3RvciBjb3VudCBvbiBWRiIpIGFkZGVkIHN1cHBvcnQNCj4gdG8gY2hhbmdlIHRo
ZSB2ZWN0b3IgY291bnQgZm9yIFZGcyBhcyBwYXJ0IG9mIGljZV9zcmlvdl9zZXRfbXNpeF92ZWNf
Y291bnQoKS4NCj4gVGhpcyBmdW5jdGlvbiBtb2RpZmllcyBhbmQgcmVidWlsZHMgdGhlIHRhcmdl
dCBWRiB3aXRoIHRoZSByZXF1ZXN0ZWQgbnVtYmVyDQo+IG9mIE1TSS1YIHZlY3RvcnMuDQo+IA0K
PiBGdXR1cmUgc3VwcG9ydCBmb3IgbGl2ZSBtaWdyYXRpb24gd2lsbCBhZGQgYSBjYWxsIHRvDQo+
IGljZV9zcmlvdl9zZXRfbXNpeF92ZWNfY291bnQoKSB0byBlbnN1cmUgdGhhdCBhIG1pZ3JhdGVk
IFZGIGhhcyB0aGUgcHJvcGVyDQo+IE1TSS1YIHZlY3RvciBjb3VudC4gSW4gbW9zdCBjYXNlcywg
dGhpcyByZXF1ZXN0IHdpbGwgYmUgdG8gc2V0IHRoZSBNU0ktWCB2ZWN0b3INCj4gY291bnQgdG8g
aXRzIGN1cnJlbnQgdmFsdWUuIEluIHRoYXQgY2FzZSwgbm8gd29yayBpcyBuZWNlc3NhcnkuDQo+
IFJhdGhlciB0aGFuIHJlcXVpcmluZyB0aGUgY2FsbGVyIHRvIGNoZWNrIHRoaXMsIHVwZGF0ZSB0
aGUgZnVuY3Rpb24gdG8gY2hlY2sgYW5kDQo+IGV4aXQgZWFybHkgaWYgdGhlIHZlY3RvciBjb3Vu
dCBpcyBhbHJlYWR5IGF0IHRoZSByZXF1ZXN0ZWQgdmFsdWUuDQo+IFRoaXMgYXZvaWRzIGFuIHVu
bmVjZXNzYXJ5IFZGIHJlYnVpbGQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIg
PGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3NyaW92LmMgfCA2ICsrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2Vfc3Jpb3YuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2Vfc3Jpb3YuYw0KPiBpbmRleA0KPiA0YzA5NTViZTJhZDIwYzM5MDJjZjg5MWE2NmY4NTc1ODVm
Y2FiOThiLi45NjRjNDc0MzIyMTk2ZmE4ODc1NzYNCj4gN2FjMjY2N2JlNWQ1NTBhNjc2NSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zcmlvdi5jDQo+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3Jpb3YuYw0KPiBAQCAt
OTY2LDYgKzk2NiwxMiBAQCBpbnQgaWNlX3NyaW92X3NldF9tc2l4X3ZlY19jb3VudChzdHJ1Y3Qg
cGNpX2Rldg0KPiAqdmZfZGV2LCBpbnQgbXNpeF92ZWNfY291bnQpDQo+ICAJCXJldHVybiAtRU5P
RU5UOw0KPiAgCX0NCj4gDQo+ICsJLyogTm8gbmVlZCB0byByZWJ1aWxkIGlmIHdlJ3JlIHNldHRp
bmcgdG8gdGhlIHNhbWUgdmFsdWUgKi8NCj4gKwlpZiAobXNpeF92ZWNfY291bnQgPT0gdmYtPm51
bV9tc2l4KSB7DQo+ICsJCWljZV9wdXRfdmYodmYpOw0KPiArCQlyZXR1cm4gMDsNCj4gKwl9DQo+
ICsNCj4gIAlwcmV2X21zaXggPSB2Zi0+bnVtX21zaXg7DQo+ICAJcHJldl9xdWV1ZXMgPSB2Zi0+
bnVtX3ZmX3FzOw0KPiANCj4gDQo+IC0tDQo+IDIuNDguMS4zOTcuZ2VjOWQ2NDljYzY0MA0KDQoN
ClRlc3RlZC1ieTogUmFmYWwgUm9tYW5vd3NraSA8cmFmYWwucm9tYW5vd3NraUBpbnRlbC5jb20+
DQoNCg0K
