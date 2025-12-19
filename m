Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 78353CCE464
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Dec 2025 03:35:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 204AB40A5C;
	Fri, 19 Dec 2025 02:35:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EtheLfvhPG1P; Fri, 19 Dec 2025 02:35:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6253840985
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766111712;
	bh=IteP/oVj9abQB36K94WBAdL/FS/A5xl4osG/pWExkfI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YMDoRQb4R/84luayShhCRwVgSPqEdjs6XoVIXWbDJ8yYvF8yMW7wdJleejN6SGc5u
	 XWQWUKLsdX/wG5hHudEseNTSIEEokXDmb/CkFmJyuErdkuTTSC9WlOPw+D1wBh+EI+
	 qjzYb/ictLOxyB05EeYus5RpeB+b5bCZ9D8bvKXwebYPtebSA3p54fKWzidyqLiYxt
	 Eh/Mc5d7w6Vh2UMAadDIYmzHM5+XyRzDNpS0l60kIHI0LLCb+11psRSIopvK5P5WQc
	 kNSLOV01Vz9jW16y92Kyu6kwWZRhQvD/RE9zUIV3+8Txjp4qQ71PFHBgiVf/D3NwTA
	 HasasEmFjCPQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6253840985;
	Fri, 19 Dec 2025 02:35:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 186BF293
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 02:35:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1FF7606EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 02:35:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kKsiJcIIoRXK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Dec 2025 02:35:09 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 19 Dec 2025 02:35:08 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B2C8F606DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2C8F606DA
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B2C8F606DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 02:35:08 +0000 (UTC)
X-CSE-ConnectionGUID: FZMsyAb7TlmDP+gr7hk5IQ==
X-CSE-MsgGUID: L7x45DtySwq8+Z9iw9+0wQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="68113642"
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="68113642"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 18:28:01 -0800
X-CSE-ConnectionGUID: 8/Cgf2V9Tz+zyzbaWtz5VQ==
X-CSE-MsgGUID: Fm33qeicSum+JkkOlaE6Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="197890096"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 18:28:01 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 18:28:00 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 18:28:00 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.28) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 18:27:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z1qSFackfbAB9E7+sCQFXW43VbsPYuleofx7troHw5k9FykewJmhVcAMxTp0LgQENMEVd0DGwzn3pAl8cs1O9esYPdLuxUkdEIwXY6GJc6CQgKWe1jNNQryB/A3QWutkmOcMxh8bRoB5qmz79IqR3q96d0v6EdeH9aFowQZMIoSB8KQwxeBwXF9yvrhSxmiNjeo8hN2v7ot9GC9CRdpAJfe6HYWhzqvOQ0keMw4vmSQJoFLh3hZZ/fI/4bL+h1acmHMKyiz37oKykMqjhe7HJDQ1cWz9kflXRG9ndC0Mybv5AvQ1zoRpM7BrrEEkWzxgb+VQeKaw+les/5JWLN9qAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IteP/oVj9abQB36K94WBAdL/FS/A5xl4osG/pWExkfI=;
 b=XQ1Y5KZ5nyr+4CEDUn5ctx6a4GQupj+n/hLTtpdB0HZ01szqoT5RhwLKL6tnhyI5THPxIm1BfXHeRRMEokQpi/3uxYzD+NE5tAxkxq5tg7HyQBRONaftqH8Ofg9w082IASFzZsFEdA87I3tLVixi2tIvgWws6HFTNBfp7gnLjcgqfMyMkp1D03FHH/ftoHziv8JUCtqAff/1AhabuIAJ1Zw7wUzTDYxezLjU0fIii5pZ1Qo3/K1mxljosmHNk1X3ySFDoIEyM8BmLMU5x2WYFW91LuQXZZmsJCVWjZ5w2piAODsUywRHc41bIgem3VTpx1kDybz3D3HJp2Sul9Ps2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9254.namprd11.prod.outlook.com (2603:10b6:208:573::10)
 by IA1PR11MB7173.namprd11.prod.outlook.com (2603:10b6:208:41b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.8; Fri, 19 Dec
 2025 02:27:35 +0000
Received: from IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7]) by IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7%3]) with mapi id 15.20.9434.001; Fri, 19 Dec 2025
 02:27:35 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Behera, Vivek"
 <vivek.behera@siemens.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
Thread-Index: AQHccG/QY5lprG1C00GEUUogGPs1DLUoLZbQ
Date: Fri, 19 Dec 2025 02:27:35 +0000
Message-ID: <IA3PR11MB9254A7D9E765717CC1DC5039D8A9A@IA3PR11MB9254.namprd11.prod.outlook.com>
References: <20251215122052.412327-1-vivek.behera@siemens.com>
 <PH7PR11MB5983787A7ACBB87D70DD6327F3AAA@PH7PR11MB5983.namprd11.prod.outlook.com>
 <AS1PR10MB53924EF63D14B5B1D735F3928FA8A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <196b561a-f23e-405c-8bb1-164d4cf63752@intel.com>
In-Reply-To: <196b561a-f23e-405c-8bb1-164d4cf63752@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9254:EE_|IA1PR11MB7173:EE_
x-ms-office365-filtering-correlation-id: aeec342f-3601-45cb-3feb-08de3ea62ba6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NUh0UUFkdHRyeERaL05BOENFelJGSkdJQWNMb01NSWMvcDdUbmFsVGdYVkJu?=
 =?utf-8?B?RHhtdGdQTVZnYm1XZkoyaHFlYW9sZ0g0Vm5UTEE1aVpaUGZTT0hTYk8vZ05i?=
 =?utf-8?B?cTh4LzJRbWoyalFBMlRocGJCT1VYV2JMdVdSTVV0V3ZkQ3NPVWlEYTR1endR?=
 =?utf-8?B?V3NXOE05QTVkVldNNEs1bklNVWM3TU9yV3NpZXg2Tkl3RjJZbFhRSWM5R3lZ?=
 =?utf-8?B?ZSs1S3VVZkNpYURocXM3cnA1dE9UbUpSUFVNbUtvUkVWYVpaM1FPSzBLZkhW?=
 =?utf-8?B?VTc5cnpFV284dmpKRmRGYmE1RzFad1JZb1RzQ0ZLcXh6Zk5sQ2NDdG93VmV2?=
 =?utf-8?B?VnhzaDV1dXIxQmNSejdDdmFsWktkRnhGY3VBMHpaK2p2YU5GNm12dVFoaVpy?=
 =?utf-8?B?Y2EyUktybHNGc1FIRnoyTG12eTNMWGlMRGpZY3l3VTBCY0Mrdkdub0ZVUmdV?=
 =?utf-8?B?akhXNENTeGxXdEREZ3BEcmZDc0tWWmx6SUVFdDdXbjhpT0tmMzRDRmpsLzJy?=
 =?utf-8?B?bEF4RGRpVENmdTNxVklqcHBjOFIvaEloNzFUbEZFYjIzeW9NWjhqem9IZCs0?=
 =?utf-8?B?SU5PbGNIcVVEK3dSV3psWk1QWVU5Y1ZkYWVpQjBHRUczQUZTNzN5TnJLZkxk?=
 =?utf-8?B?bHVBMTR3QzBXSkZqLzZIbmxOVDNLMGxIQ1AvaWZ3SGF0OGVjNFFLOHhTaDJh?=
 =?utf-8?B?MmsvYzZSR0YvWGJjQ0NtclVqRlZQaEtxdzBtU20yU0pINFI2UllzWEJIOXNS?=
 =?utf-8?B?bUNKTHlOZDd2anB3dmk4SUd3cy9QQTd6bWpkUy9HTDBKdEFmeERHTjR5TXU4?=
 =?utf-8?B?MndQL093N0xxM2hxVU5HZkp0VWY3UGRkUmJqQnpYcmpLOW1YY2xpd2NhNWxG?=
 =?utf-8?B?NFliRzVlQzBsQ2loMjRjWEowdkxYaDBSNCtBaUlHd1JsRWFlOEVqVEhINWF6?=
 =?utf-8?B?eHBtdGt4ZmgyQnVYYjAyQzlVdzF1NjVyZ25TeXpvZDlBWjA3N05WV0hKdTdK?=
 =?utf-8?B?RmY2RVUwQUNTK3RZMWZ2UTM3RC9xVEJmYWhRRUtZaHo3YzBLYmFacXdvWk5X?=
 =?utf-8?B?OUxPcG9QUmtrSGxuY3FKdS9yalVFWWV5L1QrL3FUN0Y5cElpbFZLSnFuczNX?=
 =?utf-8?B?NXVaMnhjR2plc1FFVWU2MWMrWkR0eXZQU1dzOXJKV1VEdG9xUkxvN1laZGFm?=
 =?utf-8?B?dGxzV3RVSjlzbHBiMmFGSjk1dWdjSkI4U0VLbjVnazlOSzZrRllkcW9oVkJS?=
 =?utf-8?B?ZFFaN2tDNlk1d0QrQk1YaS9yL1dva3k0MnBQVzVoNUxHc3h3cTlvRjJjVXEz?=
 =?utf-8?B?Y2kzM0FNa2d2MGJhU1ZCL2pOTU1hSWc0RGEwUnYxSEhKSHRmdk9pdm42UUVB?=
 =?utf-8?B?aURKNGdaejJmbS8raTl5RTNINzg4Um9ONlM1S1BaRTJnbGtqY1lEUit6YWpE?=
 =?utf-8?B?YkU3U1MzYWphK1d5OXJiZDF2MEp5NU8wWU1pcXIvYnBtWEZpakpLT0cxTzZr?=
 =?utf-8?B?blJLWVNwNEdETExyUGQ3eU1Qb1NtdVkxTlpEZjl6MVovQUJQVW1oaUNsSjQ0?=
 =?utf-8?B?bGgvM05PTmErMDhrYXJYQTVmK0JCZVBLdlpwU1U5Y1ZJKzZJUnB3L1h6TkdM?=
 =?utf-8?B?QTR0TEhNNXV6ZVhzOGxYVVRJZERUWitFamF5UWVSeThGT2RHYTlEM2wzVnR5?=
 =?utf-8?B?NTM1R1VtaWFkODJ4dHI0RlNDdWM4YVBza0hsUWVobXJKOVFkUzBoMER1dFRa?=
 =?utf-8?B?T090dlU1VHlLNVJZbGtsR0g2VTFxdEhRVVFINFM0Vk1hcTFsdXRVeTltQjNr?=
 =?utf-8?B?SElTNStka2pId2dTY0dXRFBvZ3l4Q2RMc294U2tLZ2tsZVZvQWRXVWZJNVJt?=
 =?utf-8?B?eGJ0V0NQUVc1N0Z2TEcveXpHR2NOaExwU1QxYWVZMWJraituWHQwQzRCTU56?=
 =?utf-8?B?dGlwRUtKOGpSRmsyQS9vUFc3WHZ4ZmU0YTdmTlRMd0xpZ3dQdE8vRVBYbHlh?=
 =?utf-8?B?Z20renVGcG9pUk4rNWxYemg2NFZWUGNqMklOcmQyWUxISUttV1NKQWU1dExj?=
 =?utf-8?B?eGpSdTUzaGZpQkVRYmdFMm10TkNSbzRmMkpMQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9254.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Uk5qeFRLeGY0bi83T2Y1ek9EYlJaR1VYQVJZNzEwOWZtSzVnTmNuU1kzRzdl?=
 =?utf-8?B?bSt4SjB3QVRDcElhRVBSN2hiVVdjei95OFpRVGRTVlY4WGovSXh5UTg4NDRU?=
 =?utf-8?B?aTkrL3NNK0dIN1pjdXpYRGh6aTFpQVV0djV0MjBreHNJd20yU3R0Q043cjVy?=
 =?utf-8?B?RDdXL3BBS29HdHdBd0VraDZyUndpbDRmR1dYY3lNUWhXUExMZTN3LzlkVEFG?=
 =?utf-8?B?YkJjeWI2MndMaVlYR0VGQ2wzVHFCNGFqZ3VXRU1TUUkxTmdTSXBDRmFCS2kz?=
 =?utf-8?B?UGIrNXpQbXRKVVdWT1F4djZQSHR6eDYyTmpQUDBrTkNpSzdkK1lIZjZOUTRL?=
 =?utf-8?B?cU5reFN6RktiOGx1V2pHTm5wWTRCa1R3YTJvTjI3WnROaVBveW9qVUUvZGVj?=
 =?utf-8?B?aDlETXVWMFNDdGJOMEZoanhKUGYyWmowNFRadkgzZDY0emVadlBuWGlQSWNO?=
 =?utf-8?B?ZjlUUC8yTXRrUS93STBJYXR1dnRoVUVCaXNqeldqcXdaVUN2ZjVWNERGcEMw?=
 =?utf-8?B?MnBXeElaYmhXQlQ0c1YwUklQK1pQMEpQWW1XNU1XSnFacnp5RkFjN2UxemRV?=
 =?utf-8?B?ZllWbTczVDNkbXRYQlBadm1xcTdzQ0ZaRFVjcUhpa09CVDlxODJWdlJyOUh0?=
 =?utf-8?B?VERPaDhLeWE5RGpFSStRekZBdnc2eW1CUXFaVXlFdWpKaklFaHgwZEkyYnMx?=
 =?utf-8?B?c1ppOW1xRDErS0lyVC9VUy9aWnRad0xnU1hSUTQxSVliUDY3YXhIdXoyb0Vh?=
 =?utf-8?B?b1dzREJ2L1dpS0lHRTlQL2tyOEQ5V3Qxd0YyK0ZXR3k3RlR4UUxmNE5JZmM2?=
 =?utf-8?B?Z1B1TUdmN01qVHJxV0J0SGkyN1F1NEJWZnVRdWUxaXRMNzhRRFRjQlQ5d3RR?=
 =?utf-8?B?ZC9LZ3YvcU9VNkZGMzNaZnY2R3g1MXA4d2cwdDRGVmNacDVvRUovWGMxL1NE?=
 =?utf-8?B?blAwRWNBZ0ZXUzUvbWlVaS9SNXpwSlB1eXhUYXJyb2xzSnpobTJsWG9lZDJ3?=
 =?utf-8?B?bjlyc0lud3IvMnZNcVRLZnh5aHUxZG1sdXRrRnp2T3dQNGIrdW5xZGQzSnBn?=
 =?utf-8?B?S2lsaExJSEFzemhMcW55UWkyRGlYSER5QkVyNE9JekpXdk9oTHdFN20rajBR?=
 =?utf-8?B?ZEdNekFTYnRwc1ZuamgwRDhYNGJLUTFuUWdnV210OGVRaUdUNTVRVXVPeklE?=
 =?utf-8?B?WVZxcmNXK25sWVJrdWFpWU43d25ySm95VEFzcWw1VUFhdGxqMmc0YTZuM0dO?=
 =?utf-8?B?WEp4ZjZKSmFvNzZiWnI1OUw0T3FDbHByNnF3cGFScXpFWFNsQzFtVlNVNTdY?=
 =?utf-8?B?THlva2hwVTBTTVhEZGJ4ZU5ublhtZUQzaFkzMjNNR3U0c0ZRUFp0WkN3MW5R?=
 =?utf-8?B?eEVMTjlMWnJHd1pLeGhMakgyU09raDNJOG9EbVozYkE3WHA5bDlndTFNZ3dI?=
 =?utf-8?B?S1pPVTMvbXNJQmE4TlRzcWZpNlAySWFKV3ppbjdZTVVucWZMdWhWWFRjWHJx?=
 =?utf-8?B?WGdzSEdPYnFPUXYvMllRWlIxLy9PMnJzM3dYakpCNXlESXpiZ1k4SXgyYzYx?=
 =?utf-8?B?cmppNXhWUVJvZCtZWG9nL3doZ2ErdktSUGRmY01ucEVBOTQramRSeElqUDhQ?=
 =?utf-8?B?ak9aRDVRQjV3OUNEd0dtdmQyYm4zR1pSNXFBQm9BSjVZVGlKYjlOV25LZFhH?=
 =?utf-8?B?YXFsTzFXRVNmZncvYUdlVDZaK1FKaFFhakk2bktzcjRHS3RSQWhXUTdWUUow?=
 =?utf-8?B?aGJHeVdKRVNuekZpbGF0dkhYYUxpbzBCWHZxeXBIT2xJdTRORko5bndGSUkv?=
 =?utf-8?B?Qk5RY0RhN2poYXo4a3c2VVdRaCtGSnB2K3o4VG1GMlNiSHhqT29hUDNPT1Rh?=
 =?utf-8?B?bzlsSG1pVlZlUVlscy9yUkdxVFhMM3BndUFIb2tOVHM5K2pEM3h4MmwxSWpS?=
 =?utf-8?B?bHhyWkJwY3JlNldzMnJvcVh1RG9FS2hTSVlyeW1zLzJDdi9HRVVkdVhaek5v?=
 =?utf-8?B?cENabGhZUVhXV2VUVHczeGw5dHdpYVM1aHRjMGs5UkVHNlNHbGl1ZUJzVkFJ?=
 =?utf-8?B?dmZzNXhLWU1vTXhIMGx6TG5BTzRRTTE0N3kzTDllWVFzS2l6M2F5RTBpNk13?=
 =?utf-8?B?V0QwSEI3WkxPYmJjNEZhSFQ5RnROTUU1SlJ2cFFUSnJWcVR5NkF4U1dVOXNW?=
 =?utf-8?B?aVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9254.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aeec342f-3601-45cb-3feb-08de3ea62ba6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2025 02:27:35.0439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wk0PLh/hscStjmBjG1InCEjQ+hN2h3R3QaJSIC4BFiBd50aDMWDkLQ/EPqfO939nBZAdjV4ha1ppA1htTDv8+Kb8ySG72Vhdc/WmVDgeQN4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7173
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766111709; x=1797647709;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IteP/oVj9abQB36K94WBAdL/FS/A5xl4osG/pWExkfI=;
 b=YsKr6rKciblWrJTCCk94orYAKDw0pYyw95eeBjN6GNsBk532TIzchL+g
 nmNIIkMvfjEa6XDurgidOqbNeEhFd3/o9dgb8s3WJcp+BAZBsssY7iHSK
 atxAFFHvW3hAlRD2YaovZb0pFe6Thr8FOSo4VHRSsehu99yyJXNgR74bc
 mpl1DPifK6gI+ip/0CHGvfajlHbIKXOVpXIzbQkMxGGrw/FH+aRXzI3Bt
 TmdI79gLyGQlCnGBegyeXsx8mBv5tuF4DLX4tJzoX4Vk6gmab/jXfkt42
 mIp0jUYu2RmOduJwcKiYC0eDRr3qxfxW7UnGPEFX1rKmVGnWm+HTre73S
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YsKr6rKc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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

T24gRnJpZGF5LCBEZWNlbWJlciAxOSwgMjAyNSA2OjQ0IEFNLCBOZ3V5ZW4sIEFudGhvbnkgTCA8
YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+IHdyb3RlOg0KPk9uIDEyLzE3LzIwMjUgMTE6MjEg
UE0sIEJlaGVyYSwgVklWRUsgd3JvdGU6DQo+PiBIZWxsbyBjb2xsZWFndWVzLA0KPj4NCg0KWy4u
Ll0NCg0KPj4+Pg0KPj4+PiBUaGlzIHBhdGNoIGFkZHJlc3NlcyB0aGUgaXNzdWUgd2hlcmUgdGhl
IGlnY194c2tfd2FrZXVwIGZ1bmN0aW9uIHdhcw0KPj4+IHRyaWdnZXJpbmcgYW4gaW5jb3JyZWN0
IElSUSBmb3IgdHgtMCB3aGVuIHRoZSBpMjI2IGlzIGNvbmZpZ3VyZWQgd2l0aCBvbmx5IDINCj4+
PiBjb21iaW5lZCBxdWV1ZXMgb3IgaW4gYW4gZW52aXJvbm1lbnQgd2l0aCAyIGFjdGl2ZSBDUFUg
Y29yZXMuDQo+Pj4+IFRoaXMgcHJldmVudGVkIFhEUCBaZXJvLWNvcHkgc2VuZCBmdW5jdGlvbmFs
aXR5IGluIHN1Y2ggc3BsaXQgSVJRDQo+Pj4gY29uZmlndXJhdGlvbnMuDQo+Pj4+DQo+Pj4+IFRo
ZSBmaXggaW1wbGVtZW50cyB0aGUgY29ycmVjdCBsb2dpYyBmb3IgZXh0cmFjdGluZyBxX3ZlY3Rv
cnMgc2F2ZWQgZHVyaW5nIHJ4DQo+Pj4gYW5kIHR4IHJpbmcgYWxsb2NhdGlvbiBhbmQgdXRpbGl6
ZXMgZmxhZ3MgcHJvdmlkZWQgYnkgdGhlIG5kb194c2tfd2FrZXVwIEFQSSB0bw0KPj4+IHRyaWdn
ZXIgdGhlIGFwcHJvcHJpYXRlIElSUS4NCj4+Pj4NCg0KVGhhbmsgeW91LCBWaXZlaywgZm9yIHRo
ZSBmaXguDQpPdmVyYWxsLCB5b3VyIHBhdGNoIGxvb2tzIGdvb2QgdG8gbWUsIGp1c3Qgc29tZSBt
aW5vciBjaGFuZ2VzIGFyZSBuZWVkZWQuDQoNCj4+Pj4gRml4ZXM6IGZjOWRmMmEwYjUyMCAoImln
YzogRW5hYmxlIFJYIHZpYSBBRl9YRFAgemVyby1jb3B5IikNCj4+Pj4gRml4ZXM6IDE1ZmQwMjFi
YzQyNyAoImlnYzogQWRkIFR4IGhhcmR3YXJlIHRpbWVzdGFtcCByZXF1ZXN0IGZvciBBRl9YRFAN
Cj4+Pj4gemVyby1jb3B5IHBhY2tldCIpDQo+Pj4+IFNpZ25lZC1vZmYtYnk6IFZpdmVrIEJlaGVy
YSA8dml2ZWsuYmVoZXJhQHNpZW1lbnMuY29tPg0KPj4+PiBSZXZpZXdlZC1ieTogSmFjb2IgS2Vs
bGVyIDxqYWNvYi5rZWxsZXJAaW50ZWwuY29tPg0KPj4+PiBSZXZpZXdlZC1ieTogQWxla3NhbmRy
IGxva3Rpbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4+Pj4gUmV2aWV3ZWQt
Ynk6IFByemVteXNsYXcgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4+
Pj4gUmV2aWV3ZWQtYnk6IFRvbnkgTmd1eWVuIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT4N
Cj4NCj5Vbmxlc3MgeW91IGhhdmUgcmVjZWl2ZWQgYSBSZXZpZXdlZC1ieSB0YWcgZXhwbGljaXRs
eSBmcm9tIHRoZSBwZXJzb24sDQo+eW91IHNob3VsZG4ndCBhZGQgaXQuDQo+DQo+Li4uDQo+DQo+
Pj4+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIHwgOTAgKysrKysr
KysrKysrKysrKysrLS0tLS0NCj4+Pj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2ln
Y19wdHAuYyAgfCAgMiArLQ0KPj4+PiAyIGZpbGVzIGNoYW5nZWQsIDczIGluc2VydGlvbnMoKyks
IDE5IGRlbGV0aW9ucygtKQ0KPj4+Pg0KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2MvaWdjX21haW4uYw0KPj4+PiBpbmRleCA3YWFmYTYwYmEwYzguLjc2ZTQ3OTBiZDNj
MCAxMDA2NDQNCj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19t
YWluLmMNCj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWlu
LmMNCj4+Pj4gQEAgLTY5MDgsMjEgKzY5MDgsMTMgQEAgc3RhdGljIGludCBpZ2NfeGRwX3htaXQo
c3RydWN0IG5ldF9kZXZpY2UgKmRldiwgaW50DQo+Pj4gbnVtX2ZyYW1lcywNCj4+Pj4gCXJldHVy
biBueG1pdDsNCj4+Pj4gfQ0KPj4+Pg0KPj4+PiAtc3RhdGljIHZvaWQgaWdjX3RyaWdnZXJfcnh0
eHFfaW50ZXJydXB0KHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlciwNCj4+Pj4gLQkJCQkJc3Ry
dWN0IGlnY19xX3ZlY3RvciAqcV92ZWN0b3IpDQo+Pj4+IC17DQo+Pj4+IC0Jc3RydWN0IGlnY19o
dyAqaHcgPSAmYWRhcHRlci0+aHc7DQo+Pj4+IC0JdTMyIGVpY3MgPSAwOw0KPj4+PiAtDQo+Pj4+
IC0JZWljcyB8PSBxX3ZlY3Rvci0+ZWltc192YWx1ZTsNCj4+Pj4gLQl3cjMyKElHQ19FSUNTLCBl
aWNzKTsNCj4+Pj4gLX0NCj4+Pj4gLQ0KPj4+PiBpbnQgaWdjX3hza193YWtldXAoc3RydWN0IG5l
dF9kZXZpY2UgKmRldiwgdTMyIHF1ZXVlX2lkLCB1MzIgZmxhZ3MpICB7DQo+Pj4+IAlzdHJ1Y3Qg
aWdjX2FkYXB0ZXIgKmFkYXB0ZXIgPSBuZXRkZXZfcHJpdihkZXYpOw0KPj4+PiArCXN0cnVjdCBp
Z2NfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Ow0KPj4+PiAJc3RydWN0IGlnY19xX3ZlY3RvciAqcV92
ZWN0b3I7DQo+Pj4+IAlzdHJ1Y3QgaWdjX3JpbmcgKnJpbmc7DQo+Pj4+ICsJdTMyIGVpY3MgPSAw
Ow0KPj4+Pg0KPj4+PiAJaWYgKHRlc3RfYml0KF9fSUdDX0RPV04sICZhZGFwdGVyLT5zdGF0ZSkp
DQo+Pj4+IAkJcmV0dXJuIC1FTkVURE9XTjsNCj4+Pj4gQEAgLTY5MzAsMTggKzY5MjIsODAgQEAg
aW50IGlnY194c2tfd2FrZXVwKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsIHUzMg0KPj4+IHF1ZXVl
X2lkLCB1MzIgZmxhZ3MpDQo+Pj4+IAlpZiAoIWlnY194ZHBfaXNfZW5hYmxlZChhZGFwdGVyKSkN
Cj4+Pj4gCQlyZXR1cm4gLUVOWElPOw0KPj4+Pg0KPj4+PiAtCWlmIChxdWV1ZV9pZCA+PSBhZGFw
dGVyLT5udW1fcnhfcXVldWVzKQ0KDQpudW1fcnhfcXVldWVzIGFuZCBudW1fdHhfcXVldWVzIGFs
d2F5cyBoYXZpbmcgdGhlIHNhbWUgdmFsdWUuIFRodXMsIGl0IGlzIHNhZmUgZm9yDQp5b3UgdG8g
a2VlcCB0aGUgb3JpZ2luYWwgcXVldWVfaWQgY2hlY2tpbmcgYXQgdGhlIGJlZ2lubmluZyBvZiB0
aGUgZnVuY3Rpb24sIGFzIGJlbG93LA0KYW5kIHJlbW92ZSBhbGwgdGhlIG90aGVyIHF1ZXVlX2lk
IGNoZWNrIGluIHlvdXIgY29kZS4NCg0KCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fcnhf
cXVldWVzKQ0KCQlyZXR1cm4gLUVJTlZBTDsNCg0KPj4+PiArCWlmICgoZmxhZ3MgJiBYRFBfV0FL
RVVQX1JYKSAmJiAoZmxhZ3MgJiBYRFBfV0FLRVVQX1RYKSkgew0KPj4+PiArCQkvKiBJZiBib3Ro
IFRYIGFuZCBSWCBuZWVkIHRvIGJlIHdva2VuIHVwICovDQo+Pj4+ICsJCS8qIGNoZWNrIGlmIHF1
ZXVlIHBhaXJzIGFyZSBhY3RpdmUuICovDQo+DQo+bml0OiBUaGlzIGNhbiBqdXN0IGJlIG9uZSBj
b21tZW50LCBubyBuZWVkIHRvIGJyZWFrIGl0IGludG8gdHdvIGNvbW1lbnQNCj5ibG9ja3MNCj4N
Cj4JCS8qIElmIGJvdGggVFggYW5kIFJYIG5lZWQgdG8gYmUgd29rZW4gdXANCj4JCSAqIGNoZWNr
IGlmIHF1ZXVlIHBhaXJzIGFyZSBhY3RpdmUuDQo+CQkgKi8NCj4NCj4NCj4+Pj4gKwkJaWYgKChh
ZGFwdGVyLT5mbGFncyAmIElHQ19GTEFHX1FVRVVFX1BBSVJTKSkgew0KPj4+PiArCQkJLyogSnVz
dCBnZXQgdGhlIHJpbmcgcGFyYW1zIGZyb20gUnggKi8NCj4+Pj4gKwkJCWlmIChxdWV1ZV9pZCA+
PSBhZGFwdGVyLT5udW1fcnhfcXVldWVzKQ0KPj4+PiArCQkJCXJldHVybiAtRUlOVkFMOw0KPj4+
PiArCQkJcmluZyA9IGFkYXB0ZXItPnJ4X3JpbmdbcXVldWVfaWRdOw0KPj4+PiArCQl9IGVsc2Ug
ew0KPj4+PiArCQkJLyogVHdvIGlycXMgZm9yIFJ4IEFORCBUeCBuZWVkIHRvIGJlIHRyaWdnZXJl
ZCAqLw0KPj4+PiArCQkJdTMyIGVpY3NfdHggPSAwOw0KPj4+PiArCQkJdTMyIGVpY3NfcnggPSAw
Ow0KPj4+PiArCQkJc3RydWN0IG5hcGlfc3RydWN0ICpyeF9uYXBpOw0KPj4+PiArCQkJc3RydWN0
IG5hcGlfc3RydWN0ICp0eF9uYXBpOw0KPg0KPlRoaXMgc2hvdWxkIGJlIFJDVCwgbG9uZ2VzdCBh
cmd1bWVudCB0byBzaG9ydGVzdCwgc28gdGhlIHN0cnVjdHMgc2hvdWxkDQo+YmUgZmlyc3QuDQo+
DQo+Pj4+ICsNCj4+Pj4gKwkJCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fcnhfcXVldWVz
KQ0KPj4+PiArCQkJCXJldHVybiAtRUlOVkFMOw0KPj4+PiArDQo+Pj4+ICsJCQlpZiAocXVldWVf
aWQgPj0gYWRhcHRlci0+bnVtX3R4X3F1ZXVlcykNCj4+Pj4gKwkJCQlyZXR1cm4gLUVJTlZBTDsN
Cj4+Pj4gKw0KPj4+PiArCQkJLyogSVJRIHRyaWdnZXIgcHJlcGFyYXRpb24gZm9yIFJ4ICovDQo+
Pj4+ICsJCQlyaW5nID0gYWRhcHRlci0+cnhfcmluZ1txdWV1ZV9pZF07DQo+Pj4+ICsJCQlpZiAo
IXJpbmctPnhza19wb29sKQ0KPj4+PiArCQkJCXJldHVybiAtRU5YSU87DQo+Pj4+ICsJCQlxX3Zl
Y3RvciA9IHJpbmctPnFfdmVjdG9yOw0KPj4+PiArCQkJcnhfbmFwaSA9ICZxX3ZlY3Rvci0+bmFw
aTsNCj4+Pj4gKwkJCS8qIEV4dGVuZCB0aGUgQklUIG1hc2sgZm9yIGVpY3MgKi8NCj4+Pj4gKwkJ
CWVpY3NfcnggfD0gcmluZy0+cV92ZWN0b3ItPmVpbXNfdmFsdWU7DQoNCklNSE8sICIgZWljc19y
eCA9IHJpbmctPnFfdmVjdG9yLT5laW1zX3ZhbHVlICIgd2lsbCBiZSBtb3JlIHJlYWRhYmxlLA0K
Y2F1c2UgeW91IGp1c3QgT1Igd2l0aCB6ZXJvLg0KDQo+Pj4+ICsNCj4+Pj4gKwkJCS8qIElSUSB0
cmlnZ2VyIHByZXBhcmF0aW9uIGZvciBUeCAqLw0KPj4+PiArCQkJcmluZyA9IGFkYXB0ZXItPnR4
X3JpbmdbcXVldWVfaWRdOw0KPj4+PiArCQkJaWYgKCFyaW5nLT54c2tfcG9vbCkNCj4+Pj4gKwkJ
CQlyZXR1cm4gLUVOWElPOw0KPj4+PiArCQkJcV92ZWN0b3IgPSByaW5nLT5xX3ZlY3RvcjsNCj4+
Pj4gKwkJCXR4X25hcGkgPSAmcV92ZWN0b3ItPm5hcGk7DQo+Pj4+ICsJCQkvKiBFeHRlbmQgdGhl
IEJJVCBtYXNrIGZvciBlaWNzICovDQo+Pj4+ICsJCQllaWNzX3R4IHw9IHJpbmctPnFfdmVjdG9y
LT5laW1zX3ZhbHVlOw0KDQpJTUhPLCAiIGVpY3NfdHggPSByaW5nLT5xX3ZlY3Rvci0+ZWltc192
YWx1ZSAiIHdpbGwgYmUgbW9yZSByZWFkYWJsZSwNCmNhdXNlIHlvdSBqdXN0IE9SIHdpdGggemVy
by4NCg0KPj4+PiArDQo+Pj4+ICsJCQkvKiBDaGVjayBhbmQgdXBkYXRlIG5hcGkgc3RhdGVzIGZv
ciByeCBhbmQgdHggKi8NCj4+Pj4gKwkJCWlmICghbmFwaV9pZl9zY2hlZHVsZWRfbWFya19taXNz
ZWQocnhfbmFwaSkpDQo+Pj4+ICsJCQkJZWljcyB8PSBlaWNzX3J4Ow0KPj4+PiArCQkJaWYgKCFu
YXBpX2lmX3NjaGVkdWxlZF9tYXJrX21pc3NlZCh0eF9uYXBpKSkNCj4+Pj4gKwkJCQllaWNzIHw9
IGVpY3NfdHg7DQo+Pj4+ICsNCj4+Pj4gKwkJCS8qIE5vdyB3ZSB0cmlnZ2VyIHRoZSByZXF1aXJl
ZCBpcnFzIGZvciBSeCBhbmQgVHggKi8NCj4+Pj4gKwkJCWlmIChlaWNzKQ0KPj4+PiArCQkJCXdy
MzIoSUdDX0VJQ1MsIGVpY3MpOw0KPj4+PiArDQo+Pj4+ICsJCQlyZXR1cm4gMDsNCj4+Pj4gKwkJ
fQ0KPj4+PiArCX0gZWxzZSBpZiAoZmxhZ3MgJiBYRFBfV0FLRVVQX1RYKSB7DQo+Pj4+ICsJCWlm
IChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fdHhfcXVldWVzKQ0KPj4+PiArCQkJcmV0dXJuIC1F
SU5WQUw7DQo+Pj4+ICsJCS8qIEdldCB0aGUgcmluZyBwYXJhbXMgZnJvbSBUeCAqLw0KPj4+PiAr
CQlyaW5nID0gYWRhcHRlci0+dHhfcmluZ1txdWV1ZV9pZF07DQo+Pj4+ICsJfSBlbHNlIGlmIChm
bGFncyAmIFhEUF9XQUtFVVBfUlgpIHsNCj4+Pj4gKwkJaWYgKHF1ZXVlX2lkID49IGFkYXB0ZXIt
Pm51bV9yeF9xdWV1ZXMpDQo+Pj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsNCj4+Pj4gKwkJLyogR2V0
IHRoZSByaW5nIHBhcmFtcyBmcm9tIFJ4ICovDQo+Pj4+ICsJCXJpbmcgPSBhZGFwdGVyLT5yeF9y
aW5nW3F1ZXVlX2lkXTsNCj4+Pj4gKwl9IGVsc2Ugew0KPj4+PiArCQkvKiBJbnZhbGlkIEZsYWdz
ICovDQo+Pj4+IAkJcmV0dXJuIC1FSU5WQUw7DQo+Pj4+IC0NCj4+Pj4gLQlyaW5nID0gYWRhcHRl
ci0+cnhfcmluZ1txdWV1ZV9pZF07DQo+Pj4+IC0NCj4+Pj4gKwl9DQo+Pj4+ICsJLyogUHJlcGFy
ZSB0byB0cmlnZ2VyIHNpbmdsZSBpcnEgKi8NCj4+Pj4gCWlmICghcmluZy0+eHNrX3Bvb2wpDQo+
Pj4+IAkJcmV0dXJuIC1FTlhJTzsNCj4+Pj4NCj4+Pj4gLQlxX3ZlY3RvciA9IGFkYXB0ZXItPnFf
dmVjdG9yW3F1ZXVlX2lkXTsNCj4+Pj4gLQlpZiAoIW5hcGlfaWZfc2NoZWR1bGVkX21hcmtfbWlz
c2VkKCZxX3ZlY3Rvci0+bmFwaSkpDQo+Pj4+IC0JCWlnY190cmlnZ2VyX3J4dHhxX2ludGVycnVw
dChhZGFwdGVyLCBxX3ZlY3Rvcik7DQo+Pj4+IC0NCj4+Pj4gKwlxX3ZlY3RvciA9IHJpbmctPnFf
dmVjdG9yOw0KPj4+PiArCWlmICghbmFwaV9pZl9zY2hlZHVsZWRfbWFya19taXNzZWQoJnFfdmVj
dG9yLT5uYXBpKSkgew0KPj4+PiArCQllaWNzIHw9IHFfdmVjdG9yLT5laW1zX3ZhbHVlOw0KDQpJ
TUhPLCAiZWljcyA9IHFfdmVjdG9yLT5laW1zX3ZhbHVlIiB3aWxsIGJlIG1vcmUgcmVhZGFibGUs
DQpjYXVzZSB5b3UganVzdCBPUiB3aXRoIHplcm8uDQoNCj4+Pj4gKwkJd3IzMihJR0NfRUlDUywg
ZWljcyk7DQo+Pj4+ICsJfQ0KPj4+PiAJcmV0dXJuIDA7DQo+Pj4+IH0NCj4+Pj4NCj4+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMNCj4+Pj4g
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jDQo+Pj4+IGluZGV4IGI3
YjQ2ZDg2M2JlZS4uNmQ4YzJkNjM5Y2Q3IDEwMDY0NA0KPj4+PiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jDQo+Pj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMNCj4+Pj4gQEAgLTU1MCw3ICs1NTAsNyBAQCBzdGF0aWMg
dm9pZCBpZ2NfcHRwX2ZyZWVfdHhfYnVmZmVyKHN0cnVjdCBpZ2NfYWRhcHRlcg0KPj4+ICphZGFw
dGVyLA0KPj4+PiAJCXRzdGFtcC0+YnVmZmVyX3R5cGUgPSAwOw0KPj4+Pg0KPj4+PiAJCS8qIFRy
aWdnZXIgdHhyeCBpbnRlcnJ1cHQgZm9yIHRyYW5zbWl0IGNvbXBsZXRpb24gKi8NCj4+Pj4gLQkJ
aWdjX3hza193YWtldXAoYWRhcHRlci0+bmV0ZGV2LCB0c3RhbXAtPnhza19xdWV1ZV9pbmRleCwg
MCk7DQo+Pj4+ICsJCWlnY194c2tfd2FrZXVwKGFkYXB0ZXItPm5ldGRldiwgdHN0YW1wLT54c2tf
cXVldWVfaW5kZXgsDQo+Pj4+ICtYRFBfV0FLRVVQX1RYKTsNCj4+Pj4NCg0KVGhlIHByZWZlcnJl
ZCBsaW1pdCBvbiB0aGUgbGVuZ3RoIG9mIGEgc2luZ2xlIGxpbmUgaXMgODAgY29sdW1ucywgcGxl
YXNlIG1vdmUgDQpYRFBfV0FLRVVQX1RYIHRvIG5ldyBsaW5lIGFzIGJlbG93Og0KDQoJCWlnY194
c2tfd2FrZXVwKGFkYXB0ZXItPm5ldGRldiwgdHN0YW1wLT54c2tfcXVldWVfaW5kZXgsDQoJCQkg
ICAgICAgWERQX1dBS0VVUF9UWCk7DQoNCj4+Pj4gCQlyZXR1cm47DQo+Pj4+IAl9DQo+Pj4+IC0t
DQo+Pj4+IDIuMzQuMQ0KPj4+DQo+Pj4gUmV2aWV3ZWQtYnk6IFBpb3RyIEt3YXB1bGluc2tpIDxw
aW90ci5rd2FwdWxpbnNraUBpbnRlbC5jb20+DQo+Pg0KPj4gVGhhbmtzIGZvciBhbGwgdGhlIHJl
dmlld3MuIEFyZSB0aGVyZSBhbnkgc3VnZ2VzdGlvbnMgYmVmb3JlIEkgYWRkIG5ldGRldkAgYW5k
DQo+bGludXgta2VybmVsQCB0byB0aGUgbGlzdCBmb3IgZnVydGhlciByZXZpZXcNCj4NCj5Gb3Ig
dGhpcyBwYXRjaCwgSSBkb24ndCB0aGluayBJIHdvdWxkIHJlLWFkZCB0aGVtLiBBcyBwYXJ0IG9m
IG5vcm1hbA0KPnByb2Nlc3MgKGZ1dHVyZSBwYXRjaGVzKSwgeWVzLCBidXQgdGhpcyBvbmUgd2Fz
IGFza2VkIHRvIGJlIGV4Y2x1ZGVkDQo+d2hpbGUgdGhlIGtpbmtzIG9mIHRoZSB1cHN0cmVhbSBw
cm9jZXNzIHdlcmUgd29ya2VkIG91dC4gQXMgdGhpcyBpcyB0aGUNCj5saXN0IHlvdSdyZSB0YXJn
ZXRpbmcgeW91ciBwYXRjaCBmb3IgYW5kIEknbGwgYmUgc2VuZGluZyB0aGlzIHRvIG5ldGRldg0K
PmZvbGxvd2luZyBvdXIgdmFsaWRhdGlvbiwgaXQgd2lsbCBnZXQgaXRzIHJldmlldyBmcm9tIG5l
dGRldiBhdCB0aGF0IHRpbWUuDQo+DQo+QWxzbywgYWRkaW5nIFNpYW5nIHdobyBpcyBvbmUgb2Yg
dGhlIGF1dGhvcnMgZnJvbSB0aGUgRml4ZXM6DQo+DQoNClRoYW5rIHlvdSwgVG9ueSwgZm9yIGJy
aW5naW5nIHRoaXMgcGF0Y2ggdG8gbXkgYXR0ZW50aW9uLg0KDQo+VGhhbmtzLA0KPlRvbnkNCj4+
DQo+PiBSZWdhcmRzDQo+Pg0KPj4gVml2ZWsNCg0KVGhhbmtzICYgUmVnYXJkcw0KU2lhbmcNCg0K
