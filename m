Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B017C8411F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 09:53:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCB7A6089F;
	Tue, 25 Nov 2025 08:53:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gb3QkFRjo8jf; Tue, 25 Nov 2025 08:53:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B354560905
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764060780;
	bh=SS5i2M6ySHGS566KLVgErG40Fh9ZX25YEiMz3idkY7M=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WKh6s5qigujlUc0q0rKTZmQcfnbY9VKjmNeOTXYkLj4t3MG5dG6jBeo0UqcL4vMqd
	 l3OB8/rC+MokAAqyxq1qbKW1UzUJhLyZ1vi0r87KEpM32gW0+1d1xYbI8MysoidPzV
	 JqJ23tvDvv0xsbyCIbq/Uv5+tiWL4CWRBQDsVgIYX1/4Gjdy/Erl3w/mxB+rCwdvmp
	 V16d0nDnOnmbahwP8z0PQ0t4cTQrk1iLTSOkVPE3IljEA4hYP6BhMStbKZaMaN5BDE
	 dq8w4ZNiohnozizLQJIwNLEBd83/fj7cZ8EpDP41KTK3P0J4kRY1HYq2005YB+/U5R
	 oOZ13uVO3++NA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B354560905;
	Tue, 25 Nov 2025 08:53:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 51AE6E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:52:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3089B40174
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:52:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 46G4LeF8u14O for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 08:52:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 43207400F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43207400F2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43207400F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 08:52:57 +0000 (UTC)
X-CSE-ConnectionGUID: uCMFSffKTsCi07Ph5O7bTA==
X-CSE-MsgGUID: ZFNoLLsPRGyj82w11X2sAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="69697750"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="69697750"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 00:52:58 -0800
X-CSE-ConnectionGUID: oNPxG65+Ruu/MWkEs+y+VA==
X-CSE-MsgGUID: hi58XAK1RGm8ucW1dq5brg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="191712682"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 00:52:58 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 00:52:56 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 00:52:56 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.24) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 00:52:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kx2R71bLZT0uCY7a3olAGfsf1reJpsIpVp5/FS+J8SQdSFcjjT9LE5Z8x5o7fKhTUw/BkIBkn/e1UGOu6/c8i4iBH1Y0j/lHM+dN/VIutr5/MXLh3/2j0R0OjeQDblnJfRzo5xFp11dDqzShq8mGvHO9pmxZGOcq79HxUQnGs0DSNug+rt+SbXpfgmeR3+V4JQ8dao9B9ZCNcJqKDa7Bgu/Gl/R3IM51FmP27Q7XxgHmGJTMYowvBOazreWoL4S7rvxGPsNwBLid21Q+yxrHLL1dO3AwGVYiwBWfdv99nPto1ik9LOTdYuKZ+8LTanq+n0csYGSgSjQZbPypxO39Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SS5i2M6ySHGS566KLVgErG40Fh9ZX25YEiMz3idkY7M=;
 b=wi1BrJxRAulzAI61OSUfJoL6jsHEwzvdh58IHi1aAddZAX7rDQ8mlRtx9Y7Qn/flcwcGVdSsykCl616c3ZNCujEw56sKd1uCKXbL54UtuBiE0wkuvS2hUEv0xpIlFJ+kLtb4mKu08Zu0hIiNun+5f2GWhLWWQtoQ/dG9E66RrJs1YPo1XonDhP5e8vd1FjLL6ne8jooGO0w10F1juH8VsHkEvjbAyu+Qlgd27/CpPpaM4bA2iX0WrMSGOYntRQgJwZvZVR5fKndyG5AsPIeBpTS0zq0D7YtDXmyp9Bie0SoKd2GN/9P16jwhPdswhGDi3eFhEkqY43A8AWgYkKYgxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB8204.namprd11.prod.outlook.com (2603:10b6:8:17d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 08:52:53 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 08:52:53 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Slepecki, Jakub" <jakub.slepecki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [PATCH iwl-next v2 5/8] ice: update mac, vlan rules when toggling
 between VEB and VEPA
Thread-Index: AQHcXeZwj7qoLAXCrku3q4UNIxO7jLUDFbKw
Date: Tue, 25 Nov 2025 08:52:53 +0000
Message-ID: <IA3PR11MB89867D7081F88828EAC0E107E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251125083456.28822-1-jakub.slepecki@intel.com>
 <20251125083456.28822-6-jakub.slepecki@intel.com>
In-Reply-To: <20251125083456.28822-6-jakub.slepecki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB8204:EE_
x-ms-office365-filtering-correlation-id: c2d2ab50-e00b-4eea-fcd9-08de2c000594
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?RjBZdTdiTVpDUEZ1S1gySm5ZTndFaGMwUVJiTTFEbDdDbnBpaEVqTklGMlU4?=
 =?utf-8?B?V0RMcUhHRzNmTldHdXpQVStTcDh0NXI1eGVuVnd1RE9CQU9jL2JzYXRCTjR1?=
 =?utf-8?B?bXpFaUw3SzFvYjAvYzc2TXBsQ1FwTU80S0NVQ0ROMTRLQW9hYTRIdVB6OXo5?=
 =?utf-8?B?S0ZzUTh0VkRuMThTZnpEdUtqK1VZYmpIVzQ1WjZwa0FVU29HNitZeVNvR2N0?=
 =?utf-8?B?aFhRV2NEZmpRQWxGZnRzVmJBZEVVblg3S296SUFtTUI5RkYzMFpkdWcvdWxo?=
 =?utf-8?B?U3BXQnFMWVZzenlpMHNSVTY1U1NJcW5hS04wN0lveUJuNTlsK1hBclNFanBO?=
 =?utf-8?B?eUJhTEU2emZOSHJmd2JaY2pBaDZCY042S29GWE5NSS81VE90K0tkNWpadity?=
 =?utf-8?B?NzJWSTB0emhMYm1FaXdxUnFwMXVkODhwVWFjT0pVanJjaUQ3cGhQYTZXT1hT?=
 =?utf-8?B?RGx0SzVTMCtnZFM3eUpxWlRwd1l6b3R6NUw0VCtJNzVqUEdQUjhGc3l5OE1F?=
 =?utf-8?B?TnRSd2lUR0JRQjVwMEFlM1VGbEV3YjRuWmdRNmVPdTdDUVVWUGhKL1k1Z1ln?=
 =?utf-8?B?K3BMZWdjeVMvdW5wblF0NHdyTjdpSDhUUXZrbUxrTWFGU1dWVm5NNEVCWmw5?=
 =?utf-8?B?TTZMTmhkNER4NmlodzRSYXdRa25NWEVVTEJTdXErNTR1ZXJBTWtURU9tL0F5?=
 =?utf-8?B?ZUtoQ1RtdFZ3TURGNVg1MG5hOENYaEtKa1o4aDk3cnRCTUZHVXNTT3ZlZm50?=
 =?utf-8?B?YlUrdEJBMk5uTkZNS2NhSHVISjkzdVd4WGdwS3ptM2JpNTY3TTEreTB5ZXlK?=
 =?utf-8?B?ZU1JL2NSTHZyQnlEblNNZUNKYmg5YkoveUNvazlEcnRFWisva0U5M2I3aExV?=
 =?utf-8?B?Y21UeEpFMmIvZzRiNnd4NlZscTAzbi8zMUNEd3VRMnRLMmV3N3hrSXVsbGkv?=
 =?utf-8?B?WTNEeFlpdXU3WmxEd25jeXBXOStJN2E5bVVRMCszRHdzb0MrR2pIcFFpd3Mw?=
 =?utf-8?B?R1lyNy90TU1IcW1CYXUxTDhmWHQwVFMzVXR2b3ROeFVla3RETldIUDJmeWdE?=
 =?utf-8?B?Y2Z4Wld1VFFueUR6YkVRYjl1eUdmQmlyQmVlU09xdTRJZEZWYSs1STdsTzlx?=
 =?utf-8?B?emRKdG83TjJaUzFKZ1dpenk0cmV6bHRzOGNSbE5UWEFaYWlJbnVVMUNiQ3ZU?=
 =?utf-8?B?Ky9UV242K0Z5aEp2RzhmLzc0OFFlY1d4OFBoMHhkc0EzZitrUGNNM1ZQZzBz?=
 =?utf-8?B?Ukk0OEk5RkZHdGZ3SnJCNU53T2RyNUJLQkVWQy94SnBnZ3Z1bmFQUzRZNEZP?=
 =?utf-8?B?Mk92NXE5V1VjamxCQnpmdFc5TU5iRTRGdkd4azdvTTJNSGoyVmJucjB2Q0xl?=
 =?utf-8?B?Vk4rSTlyRHZWanZwWWwrY2E1OTVQY0JicjZYaUZ6THBTZ2ZpazQ5dUtuVkds?=
 =?utf-8?B?MktucUc0NFVjaXZCOWxXY0d5NkJMcW9tWEIvM2JPUlhtdmNXZlRpbENjSkR1?=
 =?utf-8?B?cG83ME9UTG91NTZ3QjBPb09aS2gxbm5HeW5PMmdXQndoV0V0aXFDSjhNcUtN?=
 =?utf-8?B?VmtLRS9qSmpaaUtjNXNCZ0ZhbmVaVkw5bUJFK3FPUWVCUmFvaUd3OXRSTWg5?=
 =?utf-8?B?eHFURTM4ZTJPcC9yTXFNazI0QmxhZW04cUZvMXFmQzJjSkNsS1hyVUxWUU8r?=
 =?utf-8?B?L2U5VWhBaWZ2M2JGNStMdlJaaEFKd2xsdGFQMUpjdHFEcEY3TE9JUHhWOXc2?=
 =?utf-8?B?K2Y0bVZCR3M3SEJCbFhJR1R0SU5wMzA3QU5DeitoS29LQktKK1ZXSi9NMUha?=
 =?utf-8?B?ZEFmUTliQzRJS0M1SnpCcUF2MWszbWJndFJlOXFvWWVwT0Z1aTJsM0k0M3dK?=
 =?utf-8?B?OEhvVXdHRHlONlZJcHdXOUpidGdXdk4zZitzV1VFQktxT1J2N3o3MHlZU1l3?=
 =?utf-8?B?VDJlMkVJU3hYSW5sTWZvaFowMHMyTzhpcHVoS1ZIVWh1dThpWFZwSnZyTkRi?=
 =?utf-8?B?aVUvU1hhQ3ZUMTFmbVdGQkcxZHBSZFQybFBKbDJjMSthL1liM0NGNk53ZU80?=
 =?utf-8?Q?wZZryu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dlZybm1DdWRUSkQxVkJDQmFCcnBOZHVjallEb3RnU1FOVkZ1dHVJcW04SFJ0?=
 =?utf-8?B?MzhnRFRlV0dVNE0veU1Kb1VUc0NMWVhwRW9xcHlqOWphNktTWGR0ZDNLVlFI?=
 =?utf-8?B?WE5QUW5id2V2a0hPU216Q0FTZ2hPT09ocjNmVW9zRWF1Q3MwazQyS09sNHBJ?=
 =?utf-8?B?MFViUTE4a0VGWSttT1N2YWx3YzJISldUWUdzSXJjNEhsRklnK1hkd0IwajNj?=
 =?utf-8?B?bWhuYlo0Uk5JdlgyY1dHVW5ULzZDZEd2VklZY1AwSzFmekx4UFRwRFZac0pV?=
 =?utf-8?B?OTBrWnY2amx4cGV5YlZPVmlCUU9nMXMvNVMwZjByekVNdlNLb0Ewa21YY1pF?=
 =?utf-8?B?QUxib0ZCZEkvNmk3OUV3N1J4QjMrNis3VlJPR2NKd09YblJncHBYVTlXcXhZ?=
 =?utf-8?B?ZGlYWmYweU1LUDI1b1JEYVo0L09oazI4dkMxUXJXd3lMVThlaHdLY3FYZ0Vz?=
 =?utf-8?B?REFBMzBGYVlvZXBlbVdqRitRNVdrdUx4b0pqWTFvNUtZbEZUM21YM0UyUjdz?=
 =?utf-8?B?L0NHWTV4c0xrZXVwRGtzNDQzNGF5T295NUxBeUpya0dQV1gzTDJsMHFDMVV2?=
 =?utf-8?B?V2NJK2dpaHA4RXVqWDRQdEl3MXFDQVF6eUJwK2VOWlJBZlRDbEV0V1lHSWZF?=
 =?utf-8?B?a1BOWG5tYkpIMlVlMFFjNmlPSHBhSU1TbVg5bGJuSlNja0VmMzF2VzRPaWFW?=
 =?utf-8?B?OUw2TFRUNzM4T1B1eWhYTW9EVGF1TUcyOEo4a1hrdDMyQkpwQ3RlWmZ6Y1Rs?=
 =?utf-8?B?ODdXaWNFZm90bEU4bWZNU0lERUg5SWQxR05kdHFRMzV0c3BKNUQ4elR5NW0x?=
 =?utf-8?B?aEtYMHNXODlOWkcwcnozNDBpZW4zL2pqdjNGdUVRMHZZY3VkOERzR2dFTGtU?=
 =?utf-8?B?QW9QdG1RVGkzb0FzWXEzNW9mVmNiT1FDTXdrekVOQVkwM21JUWZpVktXNUZT?=
 =?utf-8?B?RjRycHo0MnlsQkFqUlZtRE05Mm9FRjVPMTg0dzNqcDQ3NWtrZDBlblVVN0NB?=
 =?utf-8?B?MU5pNUI5Q2syL29wNFZINnJ0VUVJUUl2TUFaak9vdUNMRlVDMXBaKzNGc0FS?=
 =?utf-8?B?aTN1bmFhSHhuMjczT0hIQU1HbU95OW4yNHJXR1VOcXRTZXlhMFlJU09UbFA3?=
 =?utf-8?B?ZXIrMDdVdjUvMWNUckk1OXhTUFM2bTEyVHhXN0JCb0VKejFTRzRRTldFSFNz?=
 =?utf-8?B?YjZJSVFvK2Z1MmVDV0p1YVZLT0RFU1hWZEphYnlHa2h2bGZ3dys5TmV0SFcv?=
 =?utf-8?B?dTY0Sm1yeGdwTFg3eTVJV2VQZVkrWEJ3eE4rQlgrUm5YLzJiMnRKaFdpOElG?=
 =?utf-8?B?UEZsZ3Q5RE1ITDBacUgyaTdCcVJuamNSQnFqN0sySGZYYTRzL0ROUlp1NjR4?=
 =?utf-8?B?WkxwUlU1NFNyS3piTHZaZ0wreWh3Q3VmUysrMkx1LzdLb2FKcmVlbDNFMjFP?=
 =?utf-8?B?eGwwQ0NHVFlQV1JYSG8xWGZqZ004VHp4NEVQQTNONml1UjVFYS9GNGRYZkZw?=
 =?utf-8?B?WHFNa2tXZFExRGZQRUR4YnAyajdWWXlmYWlOVjBzeVdjVlhtTG1hSFdSelZC?=
 =?utf-8?B?dWFSQzdqM1hQTkhnZ1d5cm1KYVMrazcxS0pyVGVkelg5c1VxeDlrVzlYM0lH?=
 =?utf-8?B?WW9uNkZsMXpxSVh6RmViRFhjWWRraUI1UnhnbGUzZy9JTkRES1RvWUxVQ08v?=
 =?utf-8?B?dmVsYm81ZWxlTUNwMktlU1BxQVhwYUZEckpSano2SWUvMnZJSmYrWHpBaFBL?=
 =?utf-8?B?YWxDQ2ZLR3YxM29SVklvTmJDRDV6YmtRNjR1N0F6WjFIMnFDZi96L2tvdis1?=
 =?utf-8?B?UEh0NXlyb2lBWDBwbkxQT3Rub2d2UXg3MVVKN3VsZ3luVVpTTk94TEZ3UTVm?=
 =?utf-8?B?WEVhRDFMdzgybEpqM2VyeDFodVhySlJIcDhTenMvRVRDdlZ2dVFIL2lQZytU?=
 =?utf-8?B?TTVJQy80bzhTa3ZnL3ZYSFNqNGl6bFRWRCtqbi9RQVhKaTErUEJoQzdFU3JW?=
 =?utf-8?B?ZVBkU3NFcURoVVUzckgxWi9IS3pvbFo1ZC9PZ3pVS3BGQkdOVUtHZk5OMk1V?=
 =?utf-8?B?aVdadC9ycXp3VnNqKzY4TlpNcnpjUUtUa2VSZ3ZyT0NnRTUyRFY2WWRoN2hD?=
 =?utf-8?B?ajRFa1NiWFZtenA5alBWWHcxWklEcEdMYVRUb0pleW1veS9FNDBqQ25KeVBB?=
 =?utf-8?B?Tnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2d2ab50-e00b-4eea-fcd9-08de2c000594
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2025 08:52:53.8373 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0MeMw9ovrTVL+9JdzzYo9F7Jj8B6+3UQtkfMYv9aL/jbGtVk2x5+M6IRdWOyETR6tlk+9gfCbhjii2gzS1J5Acx+6e5kQl6fu1mrXJAkukI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8204
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764060779; x=1795596779;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SS5i2M6ySHGS566KLVgErG40Fh9ZX25YEiMz3idkY7M=;
 b=LUVYaxk36YRctWXqePImxw7BhNZXcEynly5ixjKBSjYuRPde3pImtwgO
 YND32ELt5GvM/u/ee2BMQrs4V4Vanm+/+sq4SKNq1VmFrTpkCVi8GbT8X
 57kIaxxnhwhuo39LuYMDerQAOK5itoIEMHbjQaMrK7ueT2MI9TpXZfhn6
 XnL1AFxaMDlJO2fWLNm/Os0sQdPZog30k4oTK/9jVoXe/v51NdTaCEZZW
 byg3D6u1yKiW3X2AVOniA+Gl7dXTku9j7IKYOQemezLA9PveKqjDqR9pK
 1mamZ5BTKWS4znmFIrGh0LRM8+7zT9nGNu6ME8qhdXhYgNS6bitS60TRT
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LUVYaxk3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/8] ice: update mac,
 vlan rules when toggling between VEB and VEPA
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2xlcGVja2ksIEpha3Vi
IDxqYWt1Yi5zbGVwZWNraUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDI1
LCAyMDI1IDk6MzUgQU0NCj4gVG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+
IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3Jn
OyBLaXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsg
Tmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgbWljaGFs
LnN3aWF0a293c2tpQGxpbnV4LmludGVsLmNvbTsgU2xlcGVja2ksDQo+IEpha3ViIDxqYWt1Yi5z
bGVwZWNraUBpbnRlbC5jb20+OyBMb2t0aW9ub3YsIEFsZWtzYW5kcg0KPiA8YWxla3NhbmRyLmxv
a3Rpb25vdkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCBpd2wtbmV4dCB2MiA1LzhdIGlj
ZTogdXBkYXRlIG1hYyx2bGFuIHJ1bGVzIHdoZW4gdG9nZ2xpbmcNCj4gYmV0d2VlbiBWRUIgYW5k
IFZFUEENCj4gDQo+IFdoZW4gY2hhbmdpbmcgaW50byBWRVBBIG1vZGUgTUFDIHJ1bGVzIGFyZSBt
b2RpZmllZCB0byBmb3J3YXJkIGFsbCB0cmFmZmljDQo+IHRvIHRoZSB3aXJlIGluc3RlYWQgb2Yg
YWxsb3dpbmcgc29tZSBwYWNrZXRzIHRvIGdvIGludG8gdGhlIGxvb3BiYWNrLg0KPiBNQUMsVkxB
TiBydWxlcyBtYXkgYW5kIHdpbGwgYWxzbyBiZSB1c2VkIHRvIGZvcndhcmQgbG9vcGJhY2sgdHJh
ZmZpYyBpbiBWRUIsDQo+IHNvIHdoZW4gd2Ugc3dpdGNoIHRvIFZFUEEsIHdlIHdhbnQgdGhlbSB0
byBiZWhhdmUgc2ltaWxhcmx5IHRvIE1BQy1vbmx5DQo+IHJ1bGVzLg0KPiANCj4gaWNlX3ZzaV91
cGRhdGVfYnJpZGdlX21vZGUoKSB3aWxsIG5vdyBhdHRlbXB0IGEgcm9sbGJhY2sgb2Ygc3dpdGNo
IGZpbHRlcnMNCj4gaW4gY2FzZSBhbiB1cGRhdGUgZmFpbHMuICBJZiB0aGUgcm9sbGJhY2sgYWxz
byBmYWlscywgd2Ugd2lsbCBub3cgcmV0dXJuIHRoZQ0KPiByb2xsYmFjayBlcnJvciBpbnN0ZWFk
IG9mIHRoZSBpbml0aWFsIGVycm9yLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFrdWIgU2xlcGVj
a2kgPGpha3ViLnNsZXBlY2tpQGludGVsLmNvbT4NCj4gDQo+IC0tLQ0KPiBUZXN0aW5nIGhpbnRz
Og0KPiAgIE1BQyxWTEFOIHJ1bGVzIGFyZSBjcmVhdGVkIG9ubHkgaWYgZW50aXJlIHNlcmllcyBp
cyBhcHBsaWVkLg0KPiAgIFRoZSBlYXNpZXN0IHdheSB0byB0ZXN0IHRoYXQgcnVsZXMgd2VyZSBh
ZGp1c3RlZCBpcyB0byBydW4gdHJhZmZpYw0KPiAgIGFuZCBvYnNlcnZlIHdoYXQgcGFja2V0cyBh
cmUgc2VudCB0byBMQU4uICBWRVBBIGlzIGV4cGVjdGVkIHRvIGJlaGF2ZQ0KPiAgIHNhbWUgYXMg
YmVmb3JlIHRoZSBzZXJpZXMuICBWRUIgaXMgZXhwZWN0ZWQgdG8gKGEpIGJlaGF2ZSBsaWtlIFZF
UEENCj4gICBpZiBsb29wYmFjayB0cmFmZmljIHdvdWxkIGNyb3NzIFZMQU5zLCBvciAoYikgYmVo
YXZlIGFzIGJlZm9yZS4NCj4gICBUcmFmZmljIGZyb20vdG8gZXh0ZXJuYWwgaG9zdHMgaXMgZXhw
ZWN0ZWQgdG8gcmVtYWluIHVuY2hhbmdlZC4NCj4gDQpCZXR0ZXIgdG8gcHJvdmlkZSBleGFjdCBi
YXNoIGNvbW1hbmRzLg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5k
ci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KDQoNCj4gRHJvcHBpbmcgcmV2aWV3ZWQtYnkgTWljaGHF
giBkdWUgdG8gY2hhbmdlcy4NCj4gDQo+IENoYW5nZXMgaW4gdjI6DQo+ICAgLSBDbG9zZSBvcGVu
IHBhcmVudGhlc2lzIGluIGljZV92c2lfdXBkYXRlX2JyaWRnZV9tb2RlKCkgZGVzY3JpcHRpb24u
DQo+ICAgLSBFeHBsYWluIHJldHVybnMgaW4gaWNlX3ZzaV91cGRhdGVfYnJpZGdlX21vZGUoKS4N
Cj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyAgIHwg
NDggKysrKysrKysrKysrKysrKystLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3N3aXRjaC5jIHwgIDggKystLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3N3aXRjaC5oIHwgIDMgKy0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgNDYgaW5zZXJ0aW9u
cygrKSwgMTMgZGVsZXRpb25zKC0pDQo+IA0KDQo=
