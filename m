Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 18125AFF062
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jul 2025 20:03:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D0D7608B9;
	Wed,  9 Jul 2025 18:03:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZpusRh1XDK8L; Wed,  9 Jul 2025 18:03:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DB2560905
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752084235;
	bh=ajRPNGU4s82SivJmTMx9VEKcj64uD+LogtYbm/2Zg78=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AJmUUGTnKrBBaT9IxY8F5x3hQfvhPnHD31BZF3gQFacNX8hXt1lXCDkJEtQj2oVKP
	 lGjKxZBcJZc+euHepol41GBnV93EgksZQ+r5HWv8J7uU0r7KZh/KbJ2z2yFHSU+p95
	 9z1u8kybKKpUUUWRdGsbAkcB+CA61EFl1fTAkY4/naK3rmqtgO83NufXi76PSUKRcP
	 ze4yVSeCCLt/PZPr/rx4qT/EoujeHYngNnCUW76HLjicFzp2laEePvURmJG2sPkJj4
	 mg3qBZoFwkLk5lf3KA9NI9IoDT/3ysWysFw8k7QgrMcik+/qT5ZAB+qZ4VdcRthA/A
	 HsG3QdUYmA47w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DB2560905;
	Wed,  9 Jul 2025 18:03:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A5D569
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 18:03:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3FE6240A06
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 18:03:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lz3fQg2UIdOo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jul 2025 18:03:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2A1BA409BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A1BA409BA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A1BA409BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 18:03:51 +0000 (UTC)
X-CSE-ConnectionGUID: 3ZX//pedQJ6y+/YK7gkB4A==
X-CSE-MsgGUID: E4Z7+1YvQVeUp0YznnbbzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="58160751"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="58160751"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 11:03:51 -0700
X-CSE-ConnectionGUID: FZkqA9lRQ66A697P74PiKg==
X-CSE-MsgGUID: qX+zx+lwRHWz41spkcfSpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="179531757"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 11:03:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 11:03:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 9 Jul 2025 11:03:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.82)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 11:03:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nU/Ym3FRu4goNGLsLFeJgzhqnpedcaLCAiBX1xzxEpMsiCv6ouTY/RN+Cfvw8W5Z9hcroXphnvaJtDsUEVDfv+uFDsPN+g9OhR5OJVdYYlIZ/ryW501KQAMWCxZCNpPHV/rQNwYlsTyKdL6MSCc61mxEcrqI+YOALp3+OdAzjVUnSYDUrbvmBmcNoOpzkzfh9QNDSaPBWUuRq0YcrRoJmS7KAD06/UuLyVvwaLCX5kZv4luhSPYKLqQZx9LxztInwkgkKFwHZLzjQj8bwd2kLm3QfR27ZUOAivhW6OyvZMe2Ef+Kf45MCxuSlY+xGrUD/IQJxZdLCj51smt5gf0neg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ajRPNGU4s82SivJmTMx9VEKcj64uD+LogtYbm/2Zg78=;
 b=JJVjKu8fNYuFnhK4px1VNWbkkkJOP7Y5/1AdCN656YN138bWdRN189+juLp/jRZflpdwfZjsowSp3Nl6il1dHy8yJRfcKzKyN90AcBjwkdnyKWgs7Zfmy1Riw45EVPYI7AO0RLgOmftW0B6aVg+X7JuZJYSOZozOTe8MJPg9AY2BUSNMN1JML4ETQ0vHEvSFsiRU8rC4Yr9Z8mEL9sq/5AETzWolorb9l8q9kAp2VWJUN4WWWwVDPKAdR/o2FF+r9mdJWmCjjJzHlUx55qClbjUS3VI7mtPPd6dnLYKf9XCwEGTxH0ojfIogfh6tnORmAdARlW3mV0H9Nw74+6m+4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB8561.namprd11.prod.outlook.com (2603:10b6:610:1ad::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.19; Wed, 9 Jul
 2025 18:03:30 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%7]) with mapi id 15.20.8769.022; Wed, 9 Jul 2025
 18:03:29 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: =?utf-8?B?TWFya3VzIEJsw7ZjaGw=?= <markus@blochl.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Richard Cochran <richardcochran@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>
CC: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "Bloechl, Markus" <markus.bloechl@ipetronik.com>, "John
 Stultz" <jstultz@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] e1000e: Populate entire
 system_counterval_t in get_time_fn() callback
Thread-Index: AQHb8Pb4oXPIc6UOLkmuH961Jd6n0rQqFX/Q
Date: Wed, 9 Jul 2025 18:03:29 +0000
Message-ID: <IA3PR11MB8986940A36E601871BFCCEC5E549A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250709-e1000e_crossts-v2-1-2aae94384c59@blochl.de>
In-Reply-To: <20250709-e1000e_crossts-v2-1-2aae94384c59@blochl.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB8561:EE_
x-ms-office365-filtering-correlation-id: f8af064b-ec14-4b89-0cb6-08ddbf12e932
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cER6RFZEV01jRU5oYmpra0I1UHVYMlExTWVsWFkvTzhrY0t4dGtIRUQ0OFJs?=
 =?utf-8?B?N3M1Mk1jaDRycHpveE9jMU90bGM3eldScXp2TjVUV0tPa3k5TklLSWVycWly?=
 =?utf-8?B?N0RRUkpseUJNREJQNFpZejgxTGJzVkxORUZVTzVzc2U2UEJiQlN6Sm5mbDBX?=
 =?utf-8?B?WUxZN08wajZjN0tEUkl3K2FXcTExNzVWK2RvSnlqUm5hWTllSEJsaERIMWxh?=
 =?utf-8?B?L2MrNHcrWWxlNkZGaFdvU3NVZFhrU3dLdXRsbmhqZ1RZb1hvZ3AzTnNZb2E5?=
 =?utf-8?B?bTVnS21SRjJaTHRnMERvVnBVRzFJc2JvdmMzZUcvNW1mVmZrSVZIa2VncXhT?=
 =?utf-8?B?UnRiY3h1K1pnZzlVNzR6bTJFeWhUVWdEbmR0Q3hPMkp2azRlbU5LYmtVTHJo?=
 =?utf-8?B?K0tKdVA3dWtHSEtXTDFMUXRUQzA2ajJreHhZQW91blNvOWhFZVpKdHpRZVda?=
 =?utf-8?B?SGptOW1NY0lkUnppaG0veC9LUCtSWExrSkFxSkFOSkdrSmQvMzRPZVlIalc4?=
 =?utf-8?B?MFVuRnRWSHpVVFgzQUdpNkFVNCtsZkkzaHk1SjVrampVaWRSVExMZGR2Rmp1?=
 =?utf-8?B?YTVCSkk1M3F5a2NnWkRpQWhsbXB4dDhhV3RubWZuc2xiTWtSMjBkejd1ekRB?=
 =?utf-8?B?Mll5QUxPRHFBZWowUTVOa09jWHp5NmJ1cURzNnE5cHlkTWNRci9GMldNNTlF?=
 =?utf-8?B?Z1pLbU5FdWY2SmVyVzhFRmlGV1o3ZzJzTmYvdlAybmxVUHY1OFhUM3JiU1Zl?=
 =?utf-8?B?SFkyS1dvV05tYitMbEhSUDVDRkV1WmhMbXpLR1lBRkcwWmFUU2Jjdm5ld2ZE?=
 =?utf-8?B?SGxocFZUd1NpalFMY0x6U0hVdi9nTkVDZjJnRHRiNEhaL2g2d3R4dStaNU5j?=
 =?utf-8?B?M1cvL2tiaDZFN0pDaEYzVFFGQnNObUVBaGU3Ky9Xa3RTck9ZZ2hBR3FpQ1Bq?=
 =?utf-8?B?UVpSaHptb0p4SklJanpnNEJRYytyeXRmUyt6clNKWmtZbHpxRFhqTFpNL1JN?=
 =?utf-8?B?RWNSMUdCN0NiMXZpQUZ4MkVVNHZmSm5xVHJIaXRJZzNsRlAvY20zdE11eGZW?=
 =?utf-8?B?ay9tU1pVUG1JcmJPaTV1WVozYlAzS0l5K2FzdjlVemFkckVUVVJubUNWLzAv?=
 =?utf-8?B?endwRDhRVExuVllRbEw2VHZMZWovSkJ1OWFtT0lSNmQrMlNPeTkyVS9JVjVV?=
 =?utf-8?B?SElkR0hxVENzS2o2YWNCU2hSVEdLSy9SR0x6SkVBaWxIbG9reGlraHZMdmho?=
 =?utf-8?B?Vmh0RmliUmxSdStoVkY3d3BkeWhjUmIrR2J2NjkxMFFpOVJjNlRFN3h3YUZN?=
 =?utf-8?B?S3dFWDhTUUtxeWpCV0lmeTZjcmxwa3pMUjJMVmNhK2sxdjNRWExYeHBGR3lJ?=
 =?utf-8?B?N0xPbSt4aDM1cENBT2NyQ0VkYXVxaERudzhEaDRBaEs5bEpQamF3c0xCTjls?=
 =?utf-8?B?NXRNbzM4YnY0dDA1bEs1Y2lDd2N5LytRWjJ0NS9ZakluNnhqOHVmRmcvcjhv?=
 =?utf-8?B?WmRNdy9FOUJ6bFBPalJwZXdUcnNuU2JpSkdYZWNTZ0JXMnZoRUpLeDM2TkM5?=
 =?utf-8?B?eURUWHZaK1M2bmFURnRrSHFvREpxN2g1NWswekRCK1pmNmp4clArTmZPUyty?=
 =?utf-8?B?WnhkbzNXU2tra3dFaUdFc3RMUHgxVjAvekU5L0tFTDZRcHBNQ2pDWTlrTG1s?=
 =?utf-8?B?aERvazZmOWRRdUxNdEg2THgxMUJSYm1DbVZ1SERjZzQ3ZEFvd2xUOHh1b3pj?=
 =?utf-8?B?VVN0NkxsNis2WlpMTHNTSFpEc1I1MXl1ZDFxMTlIcHU1Q0pXQWRqRHJ4Ykc1?=
 =?utf-8?B?VkZiWUlrL1NwQnRBT3RnYVpsRi9iSTZtSEJsQjJZRlgwYjZoaUlXRTRDckFx?=
 =?utf-8?B?T1hmcEl0aDRzaVowY1I5MFNPL1RlLzRmRGMxODBsQVhkWStBWktENFE1eHdt?=
 =?utf-8?Q?6KCm66LP0K0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QVA3TTBER3lSbjFLRWJHVlBXZFo2VjBNSzdBTkdSVGdTOEh6M0hESFZzbFNx?=
 =?utf-8?B?aHZRTHhpSHNPYkNCcWhGdXlReU8zZEFRczVNRm5CTXBwQW81WTlsM202cUFQ?=
 =?utf-8?B?b0pxUGY4Zy9KV0Y4ME5ETk1jaUp5NkMzMDNObFAxRXpQNjh2VW9PSkRnVnVW?=
 =?utf-8?B?Uzg0VEduME9mZ1V6ZVFxQW0xZjYzRnVObkxwYUh6V2NPUEdtb0NmU251bDVn?=
 =?utf-8?B?QjI3OFNCaU5naWI1Wjl0ZzBUcnNsU2FCRk0xTzZyNHA2a0pKY1JkTnFXdno5?=
 =?utf-8?B?WGV0ZTg3SjU0bzR2b0NlNmRDQm9PdVNBKzNBOHRKL0VtbEZMREFJMHJvbVg2?=
 =?utf-8?B?Ynpvc1BwUkFJTkRLTVJLdmhCSGxOZzRIMVpsMGtmU0lOVDZXVmdIdTErUjg2?=
 =?utf-8?B?MjVOY2xkQmZBR3FwOTdCbXVDNXk2ZittVGhkUGJ0WVdsT3lORWl3M1Nzc1Nk?=
 =?utf-8?B?N0JkeEMwdjdmNmpUTys4dStXbm5oZFgxbnVpWTVjS2Ywd3U5MGd5Rkh0WlJM?=
 =?utf-8?B?aTZvbk1pRytnTlRXWUJJNFh6N24zbmxhOEdvblhIRnZrU3BmOTlxSXpOUmd1?=
 =?utf-8?B?WU9YdHBJUUg2NVRyMllSdVhzZHAzVW50SVFiUGJuTVlUUVVxVjNxNnJITHRx?=
 =?utf-8?B?ckcwSUVqeEMwUFdlODllVlNaQXFEeUFrY2htRGVOQWJmOGVjN1B5WDhrb0ps?=
 =?utf-8?B?YkUyNk16SVBmWHZFZHI1OTJISTRiOHV4TkFTT3Roc3Vmb0RRQThOOUNnYms2?=
 =?utf-8?B?VEV0NjYyb3lIcHo3UUVYbEwvRGwyWkJob3hFMnJUcXYrdUdrMjJVVWxwLzJT?=
 =?utf-8?B?Tkg1eTF3QU83b0l1VDdheVM1eHBycmN4SDFMY0J4MTNDMEZVTjJ1K0Y3NWRv?=
 =?utf-8?B?K2MxOFRkTFFHZnk3TzFac3BYZDVyUmZQNy9FNkRQdUZsQnIxUWR3UVBaWlBD?=
 =?utf-8?B?TTgybDlqaFNNUVV1YXJrRktHVmlmTU80V2g4VGhqa2x2N09oa3BEZHUvUlJv?=
 =?utf-8?B?clZQcG9DcHBTVGQyTVpMaElpMGVuWVMzQ1ZPWDBhM2J5UEQ0TEN4dWZqTTFU?=
 =?utf-8?B?MFFkYVc0a2VRM3JiSEE2b1JQZG1oWE9vZmVjMjlySWpSN3k2VjFHMU56ZXZo?=
 =?utf-8?B?QjFpYW0zd2RZODJBR0dvSm1GOVVEdVZ1T3FWU0RNK1lWTmUwaUhHaWdDN2h5?=
 =?utf-8?B?bll4NVhrOHdKYkQ4K3E2VUUvS00ybFBCNkw0YTRNY2lJQ2kyQ1k5U3dOakVX?=
 =?utf-8?B?bVZSdVJvcTdTMnpjMXdabVYxbFE4K0FjSk16WjVoV0gxM0JqZE5qUDNRN2hK?=
 =?utf-8?B?b0QvcUFUNVVYR3hnTEJLVE0xYm50c0RGaVZGZThYVjRRY1dJU053RmgweWtT?=
 =?utf-8?B?YXBMMFVOSFRoM1JPSjV4dUk0WmdGbEx6L0lIbzVyNzNVR25pcFFFYTVzOEhN?=
 =?utf-8?B?U3NwTUdsZXVmT2RvbXNCWU5QSnY4OExGczNwQWU1d0hvNUpuaUZFaDRzUEdz?=
 =?utf-8?B?cGNKSndOcmhxeUVFeURUWEY2YnN0VTJIWFFxM0ZPeGJ4ZXNIOXUrMHNqMWpJ?=
 =?utf-8?B?czFnY0tHOFc2d1JPTk5CMjR1VjBFWVprYUdzSVNWd2s5ZXFOQlV6NVJCTWl2?=
 =?utf-8?B?bkM0MzhtQ1R4bEZJVERvTGVOd2ZZTFdNblhyQm9FR0ZCaTVKVmhobTIyOURm?=
 =?utf-8?B?VytkUzhobGEyZlpGRWY3M25HS0wwb1pDK0dwdS9iN3JITnhOTWVoRzRVMTFy?=
 =?utf-8?B?bEZtejN3SjR5VStRdi9zaHdGVHlJZW0wUk5XaTVOVHRIT0tDSGlJS2NHbXl5?=
 =?utf-8?B?cFVXanlYWDNLUk5jYVhWa0hFUjFFTkJvKzdqMWZqU082d2NzeHlaZTJQVG9m?=
 =?utf-8?B?by96bm5oTVJETGZTa3B3bmhSQjZSb2JYczBXZlNKSE1adjV5aGxRMkpCdlgx?=
 =?utf-8?B?NGd4TTh3K0tCRFd5d0NNbERiMGNwKzVkNEtOckFJaVExYjVrem9uRjNCM3NY?=
 =?utf-8?B?aDVBWk5ZMVZXQW9VLzBXYW5PeWtXcGRvc3F1VVBWNDFGK0xjWTB4WERKekJ4?=
 =?utf-8?B?YjlWem5GODl2M1A2OEVQNTlKSzErT0FRUmx0dStPc1JWNDRHMmxYL0lRbVY1?=
 =?utf-8?B?QWQvZ1hNY09HS3dROEo5bHdQNXVpeG5jMFVYRTBqdUk2endkejZFK2VLSkpU?=
 =?utf-8?B?bmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8af064b-ec14-4b89-0cb6-08ddbf12e932
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2025 18:03:29.8718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lBUDPX8vbB3rR+Ry2NDDZxZKEPAyiQDLQjgZaIw/N1Kkj0JKlXC4skLX7QyG8ttUjyndokZsC+SbmYt5F23AvbDeHa49trdVR26yqE1x4so=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8561
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752084232; x=1783620232;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ajRPNGU4s82SivJmTMx9VEKcj64uD+LogtYbm/2Zg78=;
 b=ajAIkHPkBVU+A3GcLyxifwHojISP7ItBc+wty0nRys0R16qMfAjO0XUZ
 oyUrfkMjm1nhI0qTGFVslI0r3E8YaOHhQlN9+KruFNWNAQI7QfPxxtbJW
 D8GUNDPXrSyNqhTVk0C/1g94+kdbhM9oFlaVkm8gToq75XA8SX9ZqNlKL
 uxGwBKS7jwye0Q24iibKDxyg+FkrNnQf361NdZKfzjpcXeFSUu42IKUBv
 5dsA414Q0zt9iRHJn8z55oVZ1fpAz/dNM5G2+L13vhw6x9v/usEG0+gSD
 sAQoPAb8r+hQf9Cuyth78Uv79Exb9Iysn9zc8923uEXgbd19fFBEz0A6b
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ajAIkHPk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Populate entire
 system_counterval_t in get_time_fn() callback
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
a3VzIEJsw7ZjaGwNCj4gU2VudDogV2VkbmVzZGF5LCBKdWx5IDksIDIwMjUgNzoyOCBQTQ0KPiBU
bzogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3pl
bCwNCj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IFJpY2hhcmQg
Q29jaHJhbg0KPiA8cmljaGFyZGNvY2hyYW5AZ21haWwuY29tPjsgVGhvbWFzIEdsZWl4bmVyIDx0
Z2x4QGxpbnV0cm9uaXguZGU+DQo+IENjOiBMYWtzaG1pIFNvd2phbnlhIEQgPGxha3NobWkuc293
amFueWEuZEBpbnRlbC5jb20+OyBBbmRyZXcgTHVubg0KPiA8YW5kcmV3K25ldGRldkBsdW5uLmNo
PjsgRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYw0KPiBEdW1hemV0
IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47
IFBhb2xvDQo+IEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT47IEJsb2VjaGwsIE1hcmt1cw0KPiA8
bWFya3VzLmJsb2VjaGxAaXBldHJvbmlrLmNvbT47IEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdvb2ds
ZS5jb20+Ow0KPiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIu
a2VybmVsLm9yZzsgbGludXgtDQo+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IE1hcmt1cyBCbMO2
Y2hsIDxtYXJrdXNAYmxvY2hsLmRlPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFU
Q0ggdjJdIGUxMDAwZTogUG9wdWxhdGUgZW50aXJlDQo+IHN5c3RlbV9jb3VudGVydmFsX3QgaW4g
Z2V0X3RpbWVfZm4oKSBjYWxsYmFjaw0KPiANCj4gZ2V0X3RpbWVfZm4oKSBjYWxsYmFjayBpbXBs
ZW1lbnRhdGlvbnMgYXJlIGV4cGVjdGVkIHRvIGZpbGwgb3V0IHRoZQ0KPiBlbnRpcmUgc3lzdGVt
X2NvdW50ZXJ2YWxfdCBzdHJ1Y3QgYXMgaXQgbWF5IGJlIGluaXRpYWxseQ0KPiB1bmluaXRpYWxp
emVkLg0KPiANCj4gVGhpcyBicm9rZSB3aXRoIHRoZSByZW1vdmFsIG9mIGNvbnZlcnRfYXJ0X3Rv
X3RzYygpIGhlbHBlciBmdW5jdGlvbnMNCj4gd2hpY2ggbGVmdCB1c2VfbnNlY3MgdW5pbml0aWFs
aXplZC4NCj4gDQo+IEFzc2lnbiB0aGUgZW50aXJlIHN0cnVjdCBhZ2Fpbi4NCj4gDQo+IEZpeGVz
OiBiZDQ4YjUwYmU1MGEgKCJlMTAwMGU6IFJlcGxhY2UgY29udmVydF9hcnRfdG9fdHNjKCkiKQ0K
PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBTaWduZWQtb2ZmLWJ5OiBNYXJrdXMgQmzD
tmNobCA8bWFya3VzQGJsb2NobC5kZT4NClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92
IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg0KPiAtLS0NCj4gTm90ZXM6DQo+ICAg
ICBSZWxhdGVkLVRvOg0KPiA8aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC90eHlycjI2aHhl
M3hwcTNlYnFiNWV3a2d2aHZwN3hhbG90YW91d2x1DQo+IGRqdGppZm5haDJAN3RtZ2N6bG40YW9v
Lz4NCj4gDQo+IENoYW5nZXMgaW4gdjI6DQo+IC0gQWRkIExha3NobWkgaW4gQ2M6DQo+IC0gQWRk
IFNpZ25lZC1vZmYtYnk6IHRyYWlsZXIgd2hpY2ggd2FzIGxvc3QgaW4gYjQgd29ya2Zsb3cNCj4g
LSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNzA5LWUxMDAwZV9j
cm9zc3RzLXYxLTEtDQo+IGY4YTgwYzc5MmU0ZkBibG9jaGwuZGUNCj4gLS0tDQo+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvcHRwLmMgfCA3ICsrKysrLS0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL3B0cC5jDQo+IGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL3B0cC5jDQo+IGluZGV4DQo+IGVhM2MzZWIyZWYyMDIw
ZDUxM2Q0OWMxMzY4Njc5ZjI3ZDE3ZWRiMDQuLmYwMTUwNjUwNGVlM2ExMTgyMjkzMDExNWU5ZWQN
Cj4gMDc2NjFkODE1MzJjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9lMTAwMGUvcHRwLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBl
L3B0cC5jDQo+IEBAIC0xMjQsOCArMTI0LDExIEBAIHN0YXRpYyBpbnQgZTEwMDBlX3BoY19nZXRf
c3luY2RldmljZXRpbWUoa3RpbWVfdA0KPiAqZGV2aWNlLA0KPiAgCXN5c19jeWNsZXMgPSBlcjMy
KFBMVFNUTVBIKTsNCj4gIAlzeXNfY3ljbGVzIDw8PSAzMjsNCj4gIAlzeXNfY3ljbGVzIHw9IGVy
MzIoUExUU1RNUEwpOw0KPiAtCXN5c3RlbS0+Y3ljbGVzID0gc3lzX2N5Y2xlczsNCj4gLQlzeXN0
ZW0tPmNzX2lkID0gQ1NJRF9YODZfQVJUOw0KPiArCSpzeXN0ZW0gPSAoc3RydWN0IHN5c3RlbV9j
b3VudGVydmFsX3QpIHsNCj4gKwkJLmN5Y2xlcyA9IHN5c19jeWNsZXMsDQo+ICsJCS5jc19pZCA9
IENTSURfWDg2X0FSVCwNCj4gKwkJLnVzZV9uc2VjcyA9IGZhbHNlLA0KPiArCX07DQo+IA0KPiAg
CXJldHVybiAwOw0KPiAgfQ0KPiANCj4gLS0tDQo+IGJhc2UtY29tbWl0OiA3MzM5MjMzOTdmZDk1
NDA1YTQ4ZjE2NWM5YjFmYmM4YzRiMGE0NjgxDQo+IGNoYW5nZS1pZDogMjAyNTA3MDktZTEwMDBl
X2Nyb3NzdHMtNzc0NTY3NGY2ODJhDQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IC0tDQo+IE1hcmt1
cyBCbMO2Y2hsIDxtYXJrdXNAYmxvY2hsLmRlPg0KDQo=
