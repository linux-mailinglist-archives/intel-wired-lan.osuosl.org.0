Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C69BCE7409
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Dec 2025 16:50:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDF0D6078B;
	Mon, 29 Dec 2025 15:50:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T1k_WNJ7IbuT; Mon, 29 Dec 2025 15:50:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3663D6086A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767023440;
	bh=ltmBDw7q7xs1jlQ9H8dsxONU1t3bFWgwP/nqUKceYak=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YGiJJK0Siwno9YQSO4cu7k/1zCZLUUwFTNyHvDsfFShkXsRz5Syn8s71dz9lr20wh
	 i+W6R58kaDp+N2GKmH2rgmXn1t14wNqJqGi8ivspoF9P1O/qaSOR8Y5f03ipeVYPNE
	 mLNycdoJboB+1twwIMNkK0FssduUA7A2W3Izj60Rh9mBDmzjFoko0iaEYesh6r0P/F
	 9EMBmhQIg5D3F2jNe8lQNtHIkFQ+E1CrvAfldSsvzw/bLcBsjrEh0DxjaOIxNkaeNX
	 SCwohitjhy69sg67c9hlQ2L8IMlfGfUVDxDMfQko7fH0dbmKpifqYnmPX+UhLe27vk
	 iL7lBnpQ5fdSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3663D6086A;
	Mon, 29 Dec 2025 15:50:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C7DBBB9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 15:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BA3E04060F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 15:50:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dwxBJl9kvI4V for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Dec 2025 15:50:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DFF3D405E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFF3D405E6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DFF3D405E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 15:50:37 +0000 (UTC)
X-CSE-ConnectionGUID: M56uFzVDQDmbPviTiE2odQ==
X-CSE-MsgGUID: eovfv4rPTvGBRrP+CvwfUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="68792568"
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="68792568"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 07:50:37 -0800
X-CSE-ConnectionGUID: hwNExwvqS8isroP+Ne5CjQ==
X-CSE-MsgGUID: cOt/HOmOSceCxhS6Ia4dtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="200663766"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 07:50:37 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 07:50:36 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 29 Dec 2025 07:50:36 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.31) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 07:50:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WgE/WHwVKfH1sE9kV/pLd39dPgPe0cY1voIHboHV7l8yBNJir2lNcLX3gx9YZ2TuXC4gxCCrxk2lY/2eTheeKvTHkbGDDG0BuprQaX35InsTGyT2Lv5YFF7LyN7/isBwO+4RvvweGNbUhcbR3H8HotqKT8n52TQRhUQna2QEGBI5JdsFlOFxKLUcCT+U3XaHJ/IvZ3EzaNboMvwmj0DKe3KSx9szH9ghulFYp+MbP/RYq4BwNCXNYIUv4Dd4SuwEvMfLg+BTtMujFgHtyXqTnu3m3sUWRdHYGWvJ4P0iKJPbVUWFm6hEFqFH1Q7ouLOJG1xZPD/johYw8Dzxev5HDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ltmBDw7q7xs1jlQ9H8dsxONU1t3bFWgwP/nqUKceYak=;
 b=QIsw1h58ST9d6Cbep1YsDvUjF6rXRyIezpuzSZ0j4QBOFb40diqizCyn3XEqMDrW1cVYW2VxKvZ9wCLYYjJ6Sj7gwvLsG/eFUvLEWhNy2XxUctckGOLdphn7S9IMzxs/DJiRykhlWdlKxB/j0C0y1kJ6TiBkOxXOeLVEHLMyOiF5NSyMdws09oKNnAA5Zi1+88rRISZAaPkzOkHLX77dk5gEK1wiGOiKbuabAcFxDBzaJAfRRBkHNSfnHVwzarVgMuDYPwKdj+GpGD7ddaAcnaL2gSNeVNn3fdam1gDaKFKVS9dqo9tNOPJTOFjlrE3niuyNrVEmZLZ42v10O02/og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB9480.namprd11.prod.outlook.com (2603:10b6:8:28d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 15:50:35 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 15:50:35 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 2/2] e1000e: clear DPG_EN
 after reset to avoid autonomous power-gating
Thread-Index: AQHcdOh1tmHZ9rXxqkWMw8DuQnIATrU4xf/g
Date: Mon, 29 Dec 2025 15:50:35 +0000
Message-ID: <IA3PR11MB898639C66F21BA59FD4C9563E5BFA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251224151720.1427716-1-vitaly.lifshits@intel.com>
 <20251224151720.1427716-3-vitaly.lifshits@intel.com>
In-Reply-To: <20251224151720.1427716-3-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB9480:EE_
x-ms-office365-filtering-correlation-id: 839ca809-fd09-449c-8e2b-08de46f2019b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?V1NYL3NKbytwMjJ4eHJOTnd6eHVTVngwN3hhdUU0d204czVUeUlNTUVwNjNN?=
 =?utf-8?B?M3lXL2xNUCtwVnJzNFhHcDRjUXRPZHJ3aDFWL052YVAzNXZtMEhrbnNYTTQ3?=
 =?utf-8?B?MkNZRWJuemhwZkQ5MG1Xd1VjOUwvdTZsMzdRcVl2SEtLZnNiYkk4cGlxYWhE?=
 =?utf-8?B?d3lKWDQzQzZTeGptbXAxeElyNWdzdFF3R2VNY3drSkhNYnFCZkliZ3Y0dXJa?=
 =?utf-8?B?NVFUSFR4Y2VzWHZJbHdHeng1VnBkM2RUZU1JbWJRTTZCeURLSjdsemdoNW1B?=
 =?utf-8?B?aUwzV0lxR0tkbUhva212ODN5SDhiTTRjVjM1U3hMbVZWMWJJQXVFRmtSTWc2?=
 =?utf-8?B?MHgyR05MR09NbGJzTXVwQ3ZjU28yWEpBOStHT1BSQXp2YU1oK0R5aHhKRCtj?=
 =?utf-8?B?aUpsNXE3azM4Ry9Tb09FWnVFdkVoS2dPaGFiT3R6NXRDd0czdTZUenlGcnBl?=
 =?utf-8?B?LzV5TVhDeWtlQTF0T3BhVXVyc3BGWm9lR0dHK0pDaXFqV1AxeHo0d0srZkxF?=
 =?utf-8?B?YU5vTUZOL2hkbjg0Y09mbk1VU09GYWEzUWltYmFvN2YvSm1rejlDbUhBeGdp?=
 =?utf-8?B?UkthVG1uWGFZK0lkSm9vVEZJZGtvMm9Td1Iwd0pGRERyZlJ6YW1ZZEovZ3Fn?=
 =?utf-8?B?ZS9lekt6SUsraHB4MXdvbkRFUVorSGFNUlhoYTBlbzgwTUxTV1ZZRFloc2VL?=
 =?utf-8?B?ODN5cWVhMzFIcWdXd1hrU0crKzZmQzdTeXVEdlVuQTRKcUhVRjdUSjdzZHlN?=
 =?utf-8?B?SjEvYWR6VmhOQndzSFBuelpvbks4WFMzTEZ5dmZxNTRRdkwwNjA3c3YvVmxK?=
 =?utf-8?B?T0ViYi90cUozbGVHUGxCVjBjSzF6K0h6QVRwdnhUNWIwTzB1YzY3UElia3RD?=
 =?utf-8?B?MDU3ZjQyNmU4Zkx5TWxzM2NGbjRwSThOVldkK25mYjVsT2FhTlVsMnVHL0Za?=
 =?utf-8?B?UjhET0pXbExOUGh2enRjYXVsaHlHeXl6MW8vR0FRbFNoTDJYd1h1N0p4c1kr?=
 =?utf-8?B?OEd2dWxjdWthMDVKVk1hek1RaURoaFNlZUw1Sm5MZUdtbCtnQk9QaVJOZkRm?=
 =?utf-8?B?am5hdUdIdXBneFd3ckxrRUc5Vm5tQXdnVS9xZTBuV01EYVhsWTRYQldDMElo?=
 =?utf-8?B?MGw3Ym9CV25oeGl2Z3pTdkxqSkNVdWdBdEI1WW5POUo5bncvWVI2Q0pyaUFK?=
 =?utf-8?B?eXRYR1VFN1JhYTUxU1RyeFNjcUh1bnFtYTlGYWY4T3hTME9vSURWb3lhdEtX?=
 =?utf-8?B?eFVrelJiZjZnN25GMm81ZERtTVpGQzU1aGRCQ0pyL2MyeGI3YlFiL3ZJdTdM?=
 =?utf-8?B?ZXU5cTgzOWRtL3V0dEtwRlJYeXU3bW5laGpJSEhWZmpNenZLZXlJRlZ3L3lX?=
 =?utf-8?B?UlRUMzNabWNtN3dnU3l4RW5TazJ5UVJlLzlmTTJRbktPdGEyTkxNeWVqaVlQ?=
 =?utf-8?B?Q2xuY290T2k2eXNkTFROV0JWQ29NWWUxRmtKZ2Mwc2ZYMzdhM3JkVXBmQ0Jt?=
 =?utf-8?B?dXJDSzRNQnFlNmhYVHVvWitWenZqQ3k5Y05EVkdic1dqOFUvMHIwZHhHUllu?=
 =?utf-8?B?YW5taFJ5b1d1VTluWFJ1ZlM1RHVTT01WSlgvSG02dXpkSm5JT2Z0NElBT1pm?=
 =?utf-8?B?Uk4vZ3FvMWFZOXN0dW1tblpjWWRad1RQdjlweUpiVVdyMjFUb0NLU3BiZStn?=
 =?utf-8?B?K3dHcS9uT1RoZURIOWJySmd3WC9hMndHS0xPbTNJWnpuV2h2VXhVU2JJVmFm?=
 =?utf-8?B?SnA4Zzgzc1pzVmFRWTBhK0gzR3JzMFBLWG91eS9zSDVGbUR4VXFRdHArNTRF?=
 =?utf-8?B?WnVmbXF6MDBYVnZtVGFFYU13aHUvZVF1eGpwK3NGVzlsaC9KUHZhUDJRdkJK?=
 =?utf-8?B?OEtoQ1grNTNoRDQvUFQwUTVVenN5ckl2QVdrN0QvSkZNRWZiNUlhRXdZYUFR?=
 =?utf-8?B?aHNFYkNoSEdseEh4dW9id3Awdm5FK3ZpekFlaVYydmI0cVVRcXV4aFlpRjVS?=
 =?utf-8?B?Y1JsZjFUeFJPbXhsVjNHeE9jdTRsNEJ4bDdXK2dxcCt2Q3MySXZkR3BxK3V2?=
 =?utf-8?Q?UWcNeY?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUE0aHR2Y0ZQcUovbTdyYVA4ZnMwVjlINmQ0bVIrOVBVZmxWRzBNbjJnMWJC?=
 =?utf-8?B?NmxYZm9Va0dmWVFabXNWWXVVVDRscVhtRHU2OHNyenJQazZDMXRYQy91VElo?=
 =?utf-8?B?b1NWbjNIUnBOQUVJWVdEVXRwQ2d6d0NvblIvbTN5cjJsRjJ6MjhtckU0MVRu?=
 =?utf-8?B?SjhFdmpCZjRlNEw4WlFKQkxpdmxBbXpoZ2dkb1RFOHFROHlGQStrNXo2eVBl?=
 =?utf-8?B?S1oyT09Pc080U3UzSjFySEFiUktVYTNhWWJ0RWQxMElKdFdWQ1RGeDdTS0ky?=
 =?utf-8?B?SGJxMHlhWmkyRzVIRFQ5M25uOHV6T1JDOGtWTHhKZmlkT1VsalJ4bENzbm9M?=
 =?utf-8?B?MlpzVW1YY0c1S3ZxRzZiWThscVFaS1Rra3RCNHhCMFZJVWZMeC9KbXRzMFJK?=
 =?utf-8?B?YTB1N3JLMVVQOHRYQ3N3elRqamJVSXl4bEQwazAzZnBxUFhuSVZYb2tYMVJ2?=
 =?utf-8?B?M0FmVWFnSjF1UWUzTUVNdTlWRS9HZ3BwbzZYVnhDLzdPYjFMQ1hyUEExZUZ5?=
 =?utf-8?B?WmZOZWVoUm9CZ3BNYXZQcHVoSHJZekNTUWdQejJKa1JpQ2NURW03MUhDaXd6?=
 =?utf-8?B?d3Nmb3FTVFp3VjRhMFR4TEZid2NUdEhKN2M0WFVmS3hocCswbmF1MDlCR3FX?=
 =?utf-8?B?bTN3MHUyM01zNEsxb1lVcUZXYzBTaGxTODlsRkIvZkdSM1U4OVZzejlnNXVw?=
 =?utf-8?B?TDRkTW1odXRzcDNRbFZla3dyKy9qaEM2NHB1cEFoY2ROc3RidnBaOERDV0Fv?=
 =?utf-8?B?OHI0QWpXY0dQTXNid3VMcXR3LzkrN3hoYWt5VzhZeGpLSWt2bmxtTkRoSkxn?=
 =?utf-8?B?R2pzVmswYjRRY05LWHZCeWpmTW9EOHVWdTBFc2wzZldlNFRwTmdJeDk3SVRD?=
 =?utf-8?B?dWJZakdnRUJSTDljNjlLYm9DSmlLZXZiZWJGNjBXQ0g3QmJsZFBlNFduUkJk?=
 =?utf-8?B?SE1GVDByWDZLRXpDVkVaZmoycEhNN1ovOTRuSlBkb0tvZUdFSnQzOTNiRHpW?=
 =?utf-8?B?RTdoNG5SWi8zaXNnUHUrek9QQ3BBNFg0RFV1UUR1UmU0MHA2cmdDaFdqbHJk?=
 =?utf-8?B?MVJlTFNGbklQWmpkZ2hQUzFWaHZVS0I4OWY4eFN3ZjRCWDhDaWNGU2I2bUhs?=
 =?utf-8?B?ZzdTaUd5cGZ4dFRxMXJXOGpyM0xQQTEyZGxIS1hoM2UzSXVUU0lCMVBUTyt6?=
 =?utf-8?B?Wm11VXQ4bHpzUW0xWTlOUUJ5Zng4ZlBNUXYybEpZRVRKcUdZN1J6RXp4Y2Zm?=
 =?utf-8?B?VkRjUkZlckw4d2IwVjJSUnM2RTA4SkdDTFZaeEZkajBJTmowOFQ1eW9NUzlE?=
 =?utf-8?B?WlRmWjVCdCt2eDhTZ1Y0UnppT1NFMzBMNTA0SDVMQU9RUmNCWlVPaWRjTnFu?=
 =?utf-8?B?OEM0L0VkTC9NV0xtWUJLMzUranFSU2IzQzlsTmwyelM2V1EyRklSVGdXZnpz?=
 =?utf-8?B?MVl2azZIVmpXbWsvbStpVEg4QTRwcXBwQ3VaQ1BoUUJkQmVyWUQ2L0xtbkFy?=
 =?utf-8?B?U2pYSU01aitkd2w4Y2NpaWlLbVRobW8rMFRCRDlXdGV5S0NlRGxJOUVwM096?=
 =?utf-8?B?dWJGSWRmVi9mVUw1VHhFdHFBbXNiOWNmYXRWWWsyN2xPRWNzcVVlWmlEVXhs?=
 =?utf-8?B?QmpxbDBDWWVnbjd5RXdMMFBVQllOUlhobm9sbFlaWTRvYi9WVy92aHNYS0ww?=
 =?utf-8?B?WDAxSFNPWXNLdWJjbEI4YVY1Rkg1WHZwbXVJbVJwTWtRdUFTdnBlNmRxck44?=
 =?utf-8?B?U01QRndFOFhyOU5qZnhsamx4eGpDWVFNNUxUUzZ3TS9SdlFHUXAwOHV3dEIv?=
 =?utf-8?B?V3VXclgzNDZNS1Rxd0hYaWpFVUFNdytnb3gvWlNnOUoyOWJRYVZRVEQwWmxl?=
 =?utf-8?B?ZER2MVptR2t4aDhGWFljTTRSeXlURFU2bHU0eFpuRlNNMStvT3g1OHYzRmY0?=
 =?utf-8?B?TDN5aWJYZjdiSnI3UUxhTmVKNUR5SG1YMGJFbjk1RElKTDFBamxma2RLWWxW?=
 =?utf-8?B?THhhcy9WN1dZQkR6U3RUSndyS0hSdE1UcndGejg4SWprc0l3RzRaVkdhbU53?=
 =?utf-8?B?dE55RTRoLzBhWWxVNi9WdG56L2FQR1dBY2pLMTBVNC8xNTduMXR0TWtiSHdU?=
 =?utf-8?B?bWIyVVRLRVhGRXZmd0p1SDdQRDJXU0NXbnM2aXVZcVFRbzNtblNUYlZ3bjMy?=
 =?utf-8?B?K0ExNEVoVWNxcVNiTE9uV29HcEhsWnVhSDRmejhSKzRRUDZVTjVjeXZoNDVu?=
 =?utf-8?B?ak5DcC9tODJHRWVRM2pYU0NWK3BpQm1NZFBiclE4VGgwTlZQMzZPamt4N3lj?=
 =?utf-8?B?TmNINEx6ZXRrcXNVbVJ1cUZDOXZQMnNFamM2UkFwVGtCMnR0Qi9Ubk1tbUtx?=
 =?utf-8?Q?rwkmJ+mqG54NT3hE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 839ca809-fd09-449c-8e2b-08de46f2019b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Dec 2025 15:50:35.6037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: scZEnsglrMnjMvzLMZEZEmefg7PGAnZkG637y0fyxouhib918pS3et4Ula7iZOomDm3Bu/CoCNkk3DSpRqy+PGoulY+0+NKkytx5Z7wZS9w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB9480
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767023438; x=1798559438;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ltmBDw7q7xs1jlQ9H8dsxONU1t3bFWgwP/nqUKceYak=;
 b=icz/VpCHPNqCBkn2/J3LxHEuj3/0l3UKtlrmo1AWogjo8Ux8fJSF6vJT
 31l5+owDTCcMGvdRai7TCo8ViWk6jlsx0Gvi7rZS7THMNuVWLpTvMBuco
 xU57N6xFSSEeNSA3gbY35fjX33AdKJikSD17Tz+v3zjdCKpLAK5MT1b/l
 J9HB1VaBd5Lz8HSqEcf/unMQp7mq0j+gkVv/s+GmOdJBCAbT5CpZhlRwV
 nO72rzDin8w2aYC6cei43+Flxm/8y8+RL5j2tVcBYMF6V3Qnhw8riFrb5
 JRWfzJGSDhibQGfdFoiLAf+y4GkESpLiIVYXe74zoelR6PE+nyAXceosS
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=icz/VpCH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] e1000e: clear DPG_EN
 after reset to avoid autonomous power-gating
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgVml0
YWx5IExpZnNoaXRzDQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgMjQsIDIwMjUgNDoxNyBQ
TQ0KPiBUbzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IExpZnNoaXRz
LCBWaXRhbHkgPHZpdGFseS5saWZzaGl0c0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13
aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0IHYyIDIvMl0gZTEwMDBlOiBjbGVhciBEUEdfRU4NCj4g
YWZ0ZXIgcmVzZXQgdG8gYXZvaWQgYXV0b25vbW91cyBwb3dlci1nYXRpbmcNCj4gDQo+IFBhbnRo
ZXIgTGFrZSBzeXN0ZW1zIGludHJvZHVjZWQgYW4gYXV0b25vbW91cyBwb3dlciBnYXRpbmcgZmVh
dHVyZSBmb3INCj4gdGhlIGludGVncmF0ZWQgR2lnYWJpdCBFdGhlcm5ldCBpbiBzaHV0ZG93biBz
dGF0ZSAoUzUpIHN0YXRlLiBBcyBwYXJ0DQo+IG9mIGl0LCB0aGUgcmVzZXQgdmFsdWUgb2YgRFBH
X0VOIGJpdCB3YXMgY2hhbmdlZCB0byAxLiBDbGVhciB0aGlzIGJpdA0KPiBhZnRlciBwZXJmb3Jt
aW5nIGhhcmR3YXJlIHJlc2V0IHRvIGF2b2lkIGVycm9ycyBzdWNoIGFzIFR4L1J4IGhhbmdzLA0K
PiBvciBwYWNrZXQgbG9zcy9jb3JydXB0aW9uLg0KPiANCj4gRml4ZXM6IDBjOTE4M2NlNjFiYyAo
ImUxMDAwZTogQWRkIHN1cHBvcnQgZm9yIHRoZSBuZXh0IExPTQ0KPiBnZW5lcmF0aW9uIikNCj4g
U2lnbmVkLW9mZi1ieTogVml0YWx5IExpZnNoaXRzIDx2aXRhbHkubGlmc2hpdHNAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gdjI6IGZpeCBhIHR5cG8gaW4gYSBtYWNybw0KPiB2MTogaW5pdGlhbCB2ZXJz
aW9uDQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2RlZmluZXMu
aCB8IDEgKw0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jIHwg
OSArKysrKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9kZWZpbmVzLmgN
Cj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvZGVmaW5lcy5oDQo+IGluZGV4
IGJhMzMxODk5ZDE4Ni4uZDRhMTA0MWU0NTZkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9lMTAwMGUvZGVmaW5lcy5oDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2UxMDAwZS9kZWZpbmVzLmgNCj4gQEAgLTMzLDYgKzMzLDcgQEANCj4gDQo+ICAv
KiBFeHRlbmRlZCBEZXZpY2UgQ29udHJvbCAqLw0KPiAgI2RlZmluZSBFMTAwMF9DVFJMX0VYVF9M
UENEICAweDAwMDAwMDA0ICAgICAvKiBMQ0QgUG93ZXIgQ3ljbGUgRG9uZQ0KPiAqLw0KPiArI2Rl
ZmluZSBFMTAwMF9DVFJMX0VYVF9EUEdfRU4JMHgwMDAwMDAwOCAvKiBEeW5hbWljIFBvd2VyIEdh
dGluZw0KPiBFbmFibGUgKi8NCj4gICNkZWZpbmUgRTEwMDBfQ1RSTF9FWFRfU0RQM19EQVRBIDB4
MDAwMDAwODAgLyogVmFsdWUgb2YgU1cgRGVmaW5hYmxlDQo+IFBpbiAzICovICAjZGVmaW5lIEUx
MDAwX0NUUkxfRVhUX0ZPUkNFX1NNQlVTIDB4MDAwMDA4MDAgLyogRm9yY2UgU01CdXMNCj4gbW9k
ZSAqLw0KPiAgI2RlZmluZSBFMTAwMF9DVFJMX0VYVF9FRV9SU1QgICAgMHgwMDAwMjAwMCAvKiBS
ZWluaXRpYWxpemUgZnJvbQ0KPiBFRVBST00gKi8NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jDQo+IGluZGV4IGVlYWQ4MGJiYTZmNC4uN2UyNzc4MTE3
MDJkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNo
OGxhbi5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFu
LmMNCj4gQEAgLTQ5MzIsNiArNDkzMiwxNSBAQCBzdGF0aWMgczMyIGUxMDAwX3Jlc2V0X2h3X2lj
aDhsYW4oc3RydWN0DQo+IGUxMDAwX2h3ICpodykNCj4gIAlyZWcgfD0gRTEwMDBfS0FCR1RYRF9C
R1NRTEJJQVM7DQo+ICAJZXczMihLQUJHVFhELCByZWcpOw0KPiANCj4gKwkvKiBUaGUgcmVzZXQg
dmFsdWUgb2YgRFBHX0VOIGJpdCB3YXMgY2hhbmdlZCB0byAxDQo+ICsJICogY2xlYXIgaXQgdG8g
YXZvaWQgdW5leHBlY3RlZCBhdXRvbm9tb3VzIHBvd2VyLWdhdGluZw0KPiArCSAqLw0KRm9yIG11
bHRp4oCRbGluZSBjb21tZW50cywgdGhlIHByZWZlcnJlZCBmb3JtYXQgaXMgdG8gc3RhcnQgd2l0
aCBhbiBlbXB0eSAvKiBsaW5lLA0KcHV0IGNvbnRlbnQgb24gbGluZXMgcHJlZml4ZWQgd2l0aCAq
LCBhbmQgZW5kIHdpdGggKi8gb24gYSBsaW5lIGJ5IGl0c2VsZi4NCkknZCByZWNvbW1lbmQgdG8g
dXNlIGNvbXBsZXRlIHNlbnRlbmNlcywgY2FwaXRhbGl6ZSB0aGUgZmlyc3Qgd29yZCwgYW5kIGVu
ZCB3aXRoIGEgcGVyaW9kDQpBbmQgYSB2b2lkIGFtYmlndW91cyBwcm9ub3VucyAo4oCcaXTigJ0p
Og0KLyoNCiAqIFRoZSBoYXJkd2FyZSByZXNldCB2YWx1ZSBvZiB0aGUgRFBHX0VOIGJpdCBpcyAx
Lg0KICogQ2xlYXIgRFBHX0VOIHRvIHByZXZlbnQgdW5leHBlY3RlZCBhdXRvbm9tb3VzIHBvd2Vy
IGdhdGluZy4NCiAqLw0KDQo+ICsJaWYgKGh3LT5tYWMudHlwZSA+PSBlMTAwMF9wY2hfcHRwKSB7
DQo+ICsJCXJlZyA9IGVyMzIoQ1RSTF9FWFQpOw0KPiArCQlyZWcgJj0gfkUxMDAwX0NUUkxfRVhU
X0RQR19FTjsNCj4gKwkJZXczMihDVFJMX0VYVCwgcmVnKTsNCj4gKwl9DQo+ICsNCj4gIAlyZXR1
cm4gMDsNCj4gIH0NCj4gDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
