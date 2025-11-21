Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AA0C7BCC0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 22:53:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1B3582C5E;
	Fri, 21 Nov 2025 21:53:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F5xw65NQZP_J; Fri, 21 Nov 2025 21:53:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CF4482893
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763761993;
	bh=3m1+jgqU/rIEmunpeRC+GUDswU6zSxuNWjOqoRGIbio=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Uftn0WLjnyVQiw6987puOLA46XkyGKYD0cGoaHWexcw3Atfb8/YR/YYdtsqZmW5kN
	 qGc62ojKT/VNo4Za0voEh/fFlWrr7cynTH1kPGWFlTR+ybG87BY/Wv1GUFl1PZ9PJp
	 x5NqVkeCq+A/Ex3j6tFfQK6OTF/QJ/xk5TXZDkbw/rwvxGEXMdqYWoumcnAsUEmAjZ
	 FGhArwYU/sI1usyVIKighM3qzxoM2NMexngGDDrGgC7DMxX7UgCzdqfhIxaPLmSszh
	 Vx+bD/L4EeP8kuIpWuZmEqLxPCnylviIychtMlra0i0/9KiV07ms9tsnjZKDhmDh9L
	 wWCciyQrNgv4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4CF4482893;
	Fri, 21 Nov 2025 21:53:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BB29D1CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 21:53:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AD04C40160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 21:53:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ycZymYS_MtSQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 21:53:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D9D3F40204
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9D3F40204
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D9D3F40204
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 21:53:10 +0000 (UTC)
X-CSE-ConnectionGUID: cgZa1IElSwSTSEINW8pAqQ==
X-CSE-MsgGUID: bmf03Ru7R86g53JVeEDT6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="91344350"
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="91344350"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 13:53:10 -0800
X-CSE-ConnectionGUID: f6UCS6bGS5CCVBixBk3ulw==
X-CSE-MsgGUID: B1uLL9GIQTSZBFJzFdog5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="191682547"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 13:53:09 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 13:53:09 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 13:53:09 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.20) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 13:53:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wrDks0s409Yq4wRzKpu5e5cXJF9lvOvk4bzBksOrL29FpjMFE5p6w8yJ75uTRyReLDIb3IZpYcIIHNz6EgdB2FnaiPzBpnMyavCify8i1tFx8Tg4y8cr1w9NxQGgTFWZ0PaP96x9lbCDXKRTT8gnjloY7xnakr8l2D5BNNdeYu6npJ964DwJhLwWPLIKtfembdRfJnuhHPqEPKrDLsHaARkhQOzWTuoszq+1Atbbl7UOHWPw33TqIgNMA3YIV3B052VPUNtPUC4EqCNaUQpGkvoVAuYwHrjqKVQjjdH4TNFv8qEpu0p377k8j3pQwf5J75lcamWPZyGGkBunF0Mckw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3m1+jgqU/rIEmunpeRC+GUDswU6zSxuNWjOqoRGIbio=;
 b=a/tiqaHC0i1VBACBgemU0hEi5K87/FZte5S7NvjPIQhCn1joMc+aQkQgP7J4MV+n5nxovAyfrAio2nr+uVPY+zZzWSTXYFDBtYBZA17qcr0dn9aK5lc9XFbe48ERJWkN8AObosZEE5Dg1b8VaZDq7bIULctQ6sv5MEY9y810I/qaMNn3vvBCHW8T335FzKLJRYdimWfQzJFqomu4N3oWUvQTtHrHqfEQMsZBPlb1ZUPhfra+J2gc/QzII0rHUnp6R+5FP0qehDrf/hVs5nBi0eWA8eSpBouuPhQPFTbKN95+m02/PYwO1VOzFf2p+uewh/AfdkkbS6jFauEGlkB3cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6289.namprd11.prod.outlook.com (2603:10b6:208:3e7::9)
 by PH0PR11MB4791.namprd11.prod.outlook.com (2603:10b6:510:43::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Fri, 21 Nov
 2025 21:53:06 +0000
Received: from IA1PR11MB6289.namprd11.prod.outlook.com
 ([fe80::bd8a:8f94:f384:bf93]) by IA1PR11MB6289.namprd11.prod.outlook.com
 ([fe80::bd8a:8f94:f384:bf93%5]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 21:53:06 +0000
From: "Joshi, Sreedevi" <sreedevi.joshi@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [PATCH iwl-net 2/3] idpf: Fix RSS LUT configuration on down
 interfaces
Thread-Index: AQHcWEMN2T6LnHeNQ02V+PvT3I/4sbT9qr6AgAAGdhA=
Date: Fri, 21 Nov 2025 21:53:05 +0000
Message-ID: <IA1PR11MB628988BEDBE721E28252D46D89D5A@IA1PR11MB6289.namprd11.prod.outlook.com>
References: <20251118042228.381667-1-sreedevi.joshi@intel.com>
 <20251118042228.381667-3-sreedevi.joshi@intel.com>
 <f5ec8890-c2e2-482e-a913-8cf943f5966f@intel.com>
In-Reply-To: <f5ec8890-c2e2-482e-a913-8cf943f5966f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6289:EE_|PH0PR11MB4791:EE_
x-ms-office365-filtering-correlation-id: 501f246a-189c-4a98-ed95-08de29485a2c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?T2pabDBhTkRic1M5N1p3Qm5JM0x3QUUwSWIzS2o1S0gxQmdKbm5WV1VwZnZJ?=
 =?utf-8?B?bDl6M3QxZGFVMHdVRGxRelMwUC9EODVWSDBUb0dmK3htbW1Yc25HZFhIMW43?=
 =?utf-8?B?NWZBZ2JWb0VMTmdOSWFmeWZkcUp4aUphL3BtQnIyeHROZ21uL25pMVYxMk9O?=
 =?utf-8?B?Y0VPTERNKzNDN1Myc0t2NlAxK2RabUtxclVTRDJLMWcyRDZOUGJzSXNBQ3Jy?=
 =?utf-8?B?WUVwKzRFSjRvV1pOUVI3Q3lQOTBFald1dFAyai9MRzVVeXpybVBtanMzVW84?=
 =?utf-8?B?cEp1YnR1TXFiREJ4QjNZVVZ5N3pnS3FPYTExZnpTWWVoTnNHRDRLbG1KclpM?=
 =?utf-8?B?cGpxRytiODlUUkxjNG9aNHUzZjhwMWY1a3V5U2pVWncrcUs4dDM4RGJBV09y?=
 =?utf-8?B?ajYySWpLcFhqS3Boak4rWUN1TmdMSCtJRlZOVFRxd1c1S00waHNwN2R2OVdx?=
 =?utf-8?B?YW9ybnl0V3pNTjlSaWZHTnZ3Q3o4OTJuZGo3VXpHUnB5Q2o1Q1NyWk5TUHBT?=
 =?utf-8?B?L2ZlY2R5ZlMzTkF5TW5yemhYUVRlWmNVVitHN28rc3U1VjF2QVBVQklFaVpq?=
 =?utf-8?B?RjdvRzJrOG1YMU5zdEY1UnVtY3k4MFZsR0orRWZiQ0ZDUEw0ZktYalRpakJV?=
 =?utf-8?B?RG9veHB5THFEcGJIT2R0Q2traFh6ZUlMejJQV1ZqZlowTXVuNHB3Nm9sMUph?=
 =?utf-8?B?MVE4dlV5eWdYdnBSdkRndHU5dUR5Q3R3YUJUQUR1YXFldWd5cm9Nek1LeFZp?=
 =?utf-8?B?c2YveEVSNWIrYXJWU1ZheVBNajRucGQ0bSsvZGY3VzNsZTdIY2dvaFlXaVBZ?=
 =?utf-8?B?SG9WR1huZmorMDFKanVMbWduMDFnMjRHYmxZT2Z3Q2xXaHpoSXdFdW0xRzdR?=
 =?utf-8?B?dStqT1NFcVE1YSsvYUtmSE5RVHVvRUxBME5BTmRkN0h0eU5QTVg5Qk5la2hI?=
 =?utf-8?B?Mk9lK3hXL29GeEFteDJqajc1bks5bW1neWpmNGVWTTA4eFVCem1rN0dYQVdk?=
 =?utf-8?B?RkNwQTlVaUhDOHdKamdwYTduZjNiTFUzNkx5UzloWkZ0NjVNM3FnZHBUMFVD?=
 =?utf-8?B?RkNiWVQ4M1RBTThkMW1TUkZnZitDajdwZ2FweWRkaXpyL2xsQUVWUTBUY0Fl?=
 =?utf-8?B?Nmpwa3FaYVduS2dRY2hLR1FrbDNGN0FSQzlkSzBXMDdtczZ4QzdMTjBlTFZr?=
 =?utf-8?B?bEx3SElXRVZ1anJhQWdSK1F2d3ZJRHNFNDVFeFJ2bVJ1ZzRremsrVVVZclh5?=
 =?utf-8?B?dXRFL1Ztd1FPNjcwbWR0YkR3NDdFY3N3Q3Nkemo3bDkyMlF2TEtlenIyUU44?=
 =?utf-8?B?U3k4M2FBY0g1UEVkVVNIOTNtNmExOG1GOUhxNFZnR0tJQ2lnTkljc3lFV01J?=
 =?utf-8?B?OU5iQkJlWnZHS0JUMTN1dmYxQnFHU0ZsZytlZGVMWXZBcXZIT0RQSkNwZFBC?=
 =?utf-8?B?dDVyS2dhNy9MTnNJa2QwRjlrcExUcEx0L0tyNVRFdFNoK2swWUtmZEtrVHcz?=
 =?utf-8?B?VTVVbTRPV0NjUTdwcmtxbDkrTEZlQzZWYVNGa05HazBReC9sSnU4N0Fkb2xF?=
 =?utf-8?B?YXgyWVg1Y1d5SGtlc1phR1ZLY0xQYmhzR2M1VHJHVENsUU9vdU1GYjBvdnVB?=
 =?utf-8?B?d3lZZ2kyV2hzUUh3eVk5WllVekhyZnpyUloxb2J1c2pwU3JmdTlLejZrMVdW?=
 =?utf-8?B?NXNidWJ1Yi9Uck9KRldBbDB1TTZHTDREZ0dqRVdhKzJuTHZKL3pQWCtXVXM0?=
 =?utf-8?B?QU02QnVBMmNLRE1xVkVCZ0plWW1BaHBicmdDZzI2c2JCd0dtdEM1NWtURkZO?=
 =?utf-8?B?SkFabE44NWVhTHpPNnh4R0lyUDRNMVFmb1paT0V3K0t6UEJvL3dCZjAzelVC?=
 =?utf-8?B?OXZaN3hWbzhNeXpScGVZdFk2ZzM3RGE2ZldwMDhRQ3lXUk4wcjUyWTI3TUYy?=
 =?utf-8?B?blRmZjFydDlPY3J1K3FwcGl4SjViLzRtdzB1NzhUKzFBdnc2M3dqckRhTEVo?=
 =?utf-8?B?K3Q4TkI3Nk9zckErckhXR2QxZ0xnMFVTMG1lWmpxSlBFWWg1TTJKdEVvQy8v?=
 =?utf-8?Q?w5ihNn?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6289.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a0Q1NFRxb3RkMmU3MUpRVm1YRTdYWnROQUxGTGo0V21qbkxMNUtNWGJ1dytU?=
 =?utf-8?B?V3M0aFI4SXpxY2VCVWRrOWJ5ZXJMT2VWUFhaL3RveEVuNHZsS2lZdVBQdzJz?=
 =?utf-8?B?N3d3QUlOQmZ2aWVQSE5XUVRlSFNLWGpFSksvblNxR21vTVFyOENyMFMrWmIr?=
 =?utf-8?B?Y2lESk1zRkg0V2Vad1UweC9qQ3liS0ZpSy91NlVYWHFwckJDUXVWUnl5NDR0?=
 =?utf-8?B?dTl5MU9VRGpySnpsZC8vRFVFb1REcDZCYmJhalM2WDJvYTJTeFJRSjVUdERS?=
 =?utf-8?B?NWNjQUg4d1hXcGFyZFZGSzgyMmxRZzA5bzlrSk5yYWtmZUhPUGFZRzk5RGM1?=
 =?utf-8?B?eGFIVFhPOGdDRUpDRHMzb3M1bXNEdHgwVURWN3VpamYxSGJtZlpTWjJPVno0?=
 =?utf-8?B?R3JMc3NkZUplbThueHVSQ1VTeXlvZ0hIY0V0QVV2R3lsVEUxM0lESGN4Qll0?=
 =?utf-8?B?UTd0SnJIWWlvSGQvR0xWS3FHWXQ1Qm5jUHhwMFgyMGRoc0xpbmNWUGhBMllL?=
 =?utf-8?B?eHFKbU5GUnUwMFFSNjdmSEZpeDNJRThqZ2pIUDlsalZweXFOdnNraFpSOElq?=
 =?utf-8?B?SHpocWJnSHhHblRMSGVIZHlOdmI4OXBZY0xoS25BZkhSbGgvRW5iZURYcGR2?=
 =?utf-8?B?K01Vdko1S2dDM08vSWF6bE1NTmxDdmZ3cVd2cW9IaktoU0ZZYy9XUDhEQU9Z?=
 =?utf-8?B?K0dIMEcxMHlES0FqVUZmWDlVZVhLNmpvVElBR2RhOGw0S1kwWjlhcTR1bnJK?=
 =?utf-8?B?V0Nkek1Ga2djWXNzY0s3QUJFcGtYcWdSejV4dlRZOG50b2EzQTBrWjhyRGJG?=
 =?utf-8?B?M0hmZjh5VWhDM2JIWHZnMXljQlZtZzN5SW9GbzVna1RBZDdYQjY4ZElvc2tl?=
 =?utf-8?B?aDkxdmpjaVBBMURnSEM1azFzS0J0UnF2L2VDNGMxdzZ4WklDQmJVTkVZbm84?=
 =?utf-8?B?eVRrZ3dGbTJuSjZWQXNmYkUyQWUxMXM1a3BLeUlMQ3VCR05EWEkweDVSSVlo?=
 =?utf-8?B?aU5Cb05oTmZLM1NlRTk1K3RUTUZwRUF6bTRtcHVJZy9DbEFTSjNHZlNWZHN5?=
 =?utf-8?B?Y1B1aEhtNlhUYTBvZkM4aGdLODNJQ2ZkV3RhSjdFbDRBcThrYnhDemVuNnVr?=
 =?utf-8?B?NmVsYWJiQnduaTljbWF2dzJsd25zaUd4U0hnTWMzNkpaV0Y3dTZZL0laUGhp?=
 =?utf-8?B?dmdJY2tlV2dkQlZtWXdQZ0xwSXpjd25MdmMxWGpudXhlUnZFUXlmR0YyL0hh?=
 =?utf-8?B?YUxqbEJqRkxDekdGdTl0Q1d1VTZEVzFxT2Rsc0grTEx1bG52L3FadzRxNWhy?=
 =?utf-8?B?NU5vUVpaaGU1NEplYnJOQnc5ZHhER3p5SjlwT2NjSGczaUlVUHA0SjRVN2pm?=
 =?utf-8?B?WS8rdUprTWtua2VYSFZodVVyRGw1YkYvalRubU9wU3ZKNkV5V0t2dGNxc2NS?=
 =?utf-8?B?bzhzT1JUZ0MrSFZyZVk4N1VDTU9CQ3JkZEt2QmhwKzhOZ0l6bkV5Tk9CRzVL?=
 =?utf-8?B?ZWxuY2h4NC9Tc0U3cG1rNWpkU1U2Wk9BbE8wc0IwbWZoU1R2bDNoVStoNzQw?=
 =?utf-8?B?UWJ5YXBWWmE2eG9DaWgzaFNzNENZbzFwU0Ztd1JQK1IveHd2V1o1cjBWR29L?=
 =?utf-8?B?M1ZMUDlDNytKaHRJTzNQWTNBdkdSV1d0N2NjNmRiQnZjdnY3R0k4ZDV5RjZn?=
 =?utf-8?B?cVFnd0FMcTJLditQakpLMWlnMkp2dmcwSWJxQzFFZVc4amV3cU82MFNDdDJ4?=
 =?utf-8?B?YzdaeG9VOUFmcTZqNWt1MllTbHJwTlB4ajAzcGRpOVdpb0V1N2pPYTBCZjUy?=
 =?utf-8?B?U3Q1eEF0ZUt4QkQzMjU5cWM1bEdnN3FWUzhsZkFTV2ZWUG91TC9uRFl5NTUr?=
 =?utf-8?B?WFFsVCt6a3RSalFmeTZ2OEFrdW10dnl2eDlxV0QwVElzSTVxNW50SU1sRkgw?=
 =?utf-8?B?eW4xTlNBQm1YWm9WK1kzK0M2Y01aVzQ5ZW9XTHhCSml6WDZOb1B3U002Nmhz?=
 =?utf-8?B?Y3ZzTmtUUUdrZHM3SmFGaVU4NytmR0VHUWNUaE5DQ1NPbkI3SklIQUNBL0t3?=
 =?utf-8?B?YjlEdmxyWk82NTloeCtTRThFczZxd0RrWFd5SHJzcnlEWjNJaDlVaTBjQzFn?=
 =?utf-8?Q?YRmhmORE4ufDB1LXGlgPEnDQw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6289.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 501f246a-189c-4a98-ed95-08de29485a2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2025 21:53:05.9960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IOGQLSWCPRe1PvIefaeBNVYOTXRPFtr9ngvDkEr810Zzv5dh20VFwzFeaxyfuKPsSWdsJTrwowptZAi5dHbD917DNOOGx2awUHwFKLqYKbw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4791
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763761991; x=1795297991;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3m1+jgqU/rIEmunpeRC+GUDswU6zSxuNWjOqoRGIbio=;
 b=UoN4PgXaY12g+2YaJnEU1lidkAR9qR1aiyh+D6ZvH9PKDNbK0G/GB+To
 TF99kxKWw1tcS46PNddSDUPU7sLsvVj6eUwjXJcf2wh1Tz6bEWDJbuwdF
 cpSg2lL1//WuAaesuBYHVI9gAYl1ex0/8YzuN5CllbWiLsUtQxCgy3ACu
 gZmlayu/RB1speCnqkVag1yjK7UFPvlZ8wPFHHdihPardZBu++fUTf3H0
 xXOU8HRa4TIRegFCPBms80HFOkcpRkJZADwRUnY/waUtutW8RnOPsYJgH
 9KYzRTuorimIGaqt8QiQnN1XTdDIecliYVpEvrkHXKREDIM30Gviye5Tp
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UoN4PgXa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/3] idpf: Fix RSS LUT
 configuration on down interfaces
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOZ3V5ZW4sIEFudGhvbnkgTCA8
YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTm92ZW1iZXIgMjEs
IDIwMjUgNDoyNyBQTQ0KPiBUbzogSm9zaGksIFNyZWVkZXZpIDxzcmVlZGV2aS5qb3NoaUBpbnRl
bC5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPjsgU2FtdWRyYWxhLCBTcmlkaGFyDQo+IDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRl
bC5jb20+OyBUYW50aWxvdiwgRW1pbCBTIDxlbWlsLnMudGFudGlsb3ZAaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXQgMi8zXSBpZHBmOiBGaXggUlNTIExVVCBjb25maWd1
cmF0aW9uIG9uIGRvd24gaW50ZXJmYWNlcw0KPiANCj4gDQo+IA0KPiBPbiAxMS8xNy8yMDI1IDg6
MjIgUE0sIFNyZWVkZXZpIEpvc2hpIHdyb3RlOg0KPiA+IFJTUyBMVVQgcHJvdmlzaW9uaW5nIGFu
ZCBxdWVyaWVzIG9uIGEgZG93biBpbnRlcmZhY2UgY3VycmVudGx5IHJldHVybg0KPiA+IHNpbGVu
dGx5IHdpdGhvdXQgZWZmZWN0LiBVc2VycyBzaG91bGQgYmUgYWJsZSB0byBjb25maWd1cmUgUlNT
IHNldHRpbmdzDQo+ID4gZXZlbiB3aGVuIHRoZSBpbnRlcmZhY2UgaXMgZG93bi4NCj4gPg0KPiA+
IEZpeCBieSBtYWludGFpbmluZyBSU1MgY29uZmlndXJhdGlvbiBjaGFuZ2VzIGluIHRoZSBkcml2
ZXIncyBzb2Z0IGNvcHkgYW5kDQo+ID4gZGVmZXJyaW5nIEhXIHByb2dyYW1taW5nIHVudGlsIHRo
ZSBpbnRlcmZhY2UgY29tZXMgdXAuDQo+ID4NCj4gPiBGaXhlczogMDJjYmZiYTFhZGQ1ICgiaWRw
ZjogYWRkIGV0aHRvb2wgY2FsbGJhY2tzIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBTcmVlZGV2aSBK
b3NoaSA8c3JlZWRldmkuam9zaGlAaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBBbGVrc2Fu
ZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4gPiBSZXZpZXdl
ZC1ieTogU3JpZGhhciBTYW11ZHJhbGEgPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT4NCj4g
PiBSZXZpZXdlZC1ieTogRW1pbCBUYW50aWxvdiA8ZW1pbC5zLnRhbnRpbG92QGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9ldGh0
b29sLmMgfCAxNyArKysrKysrKysrKy0tLS0tLQ0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2V0aHRvb2wuYyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lkcGYvaWRwZl9ldGh0b29sLmMNCj4gPiBpbmRleCA0YzZlNTIyNTNhZTQu
LmQ5OTAzYTIxOTcyYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZHBmL2lkcGZfZXRodG9vbC5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWRwZi9pZHBmX2V0aHRvb2wuYw0KPiA+IEBAIC0zOTMsNyArMzkzLDEwIEBAIHN0YXRpYyB1
MzIgaWRwZl9nZXRfcnhmaF9pbmRpcl9zaXplKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYpDQo+
ID4gICAgKiBAbmV0ZGV2OiBuZXR3b3JrIGludGVyZmFjZSBkZXZpY2Ugc3RydWN0dXJlDQo+ID4g
ICAgKiBAcnhmaDogcG9pbnRlciB0byBwYXJhbSBzdHJ1Y3QgKGluZGlyLCBrZXksIGhmdW5jKQ0K
PiA+ICAgICoNCj4gPiAtICogUmVhZHMgdGhlIGluZGlyZWN0aW9uIHRhYmxlIGRpcmVjdGx5IGZy
b20gdGhlIGhhcmR3YXJlLiBBbHdheXMgcmV0dXJucyAwLg0KPiA+ICsgKiBSU1MgTFVUIGFuZCBL
ZXkgaW5mb3JtYXRpb24gYXJlIHJlYWQgZnJvbSBkcml2ZXIncyBjYWNoZWQNCj4gPiArICogY29w
eS4gV2hlbiByeGhhc2ggaXMgb2ZmLCByc3MgbHV0IHdpbGwgYmUgZGlzcGxheWVkIGFzIHplcm9z
Lg0KPiA+ICsgKg0KPiA+ICsgKiBSZXR1cm5zIDAgb24gc3VjY2Vzcy4NCj4gDQo+IENhbiB5b3Ug
bWFrZSB0aGlzIFJldHVybjogdG8gbWFrZSBrZG9jIGhhcHB5Pw0KV2lsbCBkby4gDQpCVFcsIGxv
b2tzIGxpa2UgdGhlcmUgYXJlIG90aGVyIG9jY3VycmVuY2VzIG9mIHRoaXMgaW4gdGhhdCBmaWxl
Lg0KPiANCj4gPiAgICAqLw0KPiA+ICAgc3RhdGljIGludCBpZHBmX2dldF9yeGZoKHN0cnVjdCBu
ZXRfZGV2aWNlICpuZXRkZXYsDQo+ID4gICAJCQkgc3RydWN0IGV0aHRvb2xfcnhmaF9wYXJhbSAq
cnhmaCkNCj4gPiBAQCAtNDAxLDEwICs0MDQsMTMgQEAgc3RhdGljIGludCBpZHBmX2dldF9yeGZo
KHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsDQo+ID4gICAJc3RydWN0IGlkcGZfbmV0ZGV2X3By
aXYgKm5wID0gbmV0ZGV2X3ByaXYobmV0ZGV2KTsNCj4gPiAgIAlzdHJ1Y3QgaWRwZl9yc3NfZGF0
YSAqcnNzX2RhdGE7DQo+ID4gICAJc3RydWN0IGlkcGZfYWRhcHRlciAqYWRhcHRlcjsNCj4gPiAr
CXN0cnVjdCBpZHBmX3Zwb3J0ICp2cG9ydDsNCj4gPiArCWJvb2wgcnhoYXNoX2VuYTsNCj4gPiAg
IAlpbnQgZXJyID0gMDsNCj4gPiAgIAl1MTYgaTsNCj4gPg0KPiA+ICAgCWlkcGZfdnBvcnRfY3Ry
bF9sb2NrKG5ldGRldik7DQo+ID4gKwl2cG9ydCA9IGlkcGZfbmV0ZGV2X3RvX3Zwb3J0KG5ldGRl
dik7DQo+ID4NCj4gPiAgIAlhZGFwdGVyID0gbnAtPmFkYXB0ZXI7DQo+ID4NCj4gPiBAQCAtNDE0
LDkgKzQyMCw4IEBAIHN0YXRpYyBpbnQgaWRwZl9nZXRfcnhmaChzdHJ1Y3QgbmV0X2RldmljZSAq
bmV0ZGV2LA0KPiA+ICAgCX0NCj4gPg0KPiA+ICAgCXJzc19kYXRhID0gJmFkYXB0ZXItPnZwb3J0
X2NvbmZpZ1tucC0+dnBvcnRfaWR4XS0+dXNlcl9jb25maWcucnNzX2RhdGE7DQo+ID4gLQlpZiAo
bnAtPnN0YXRlICE9IF9fSURQRl9WUE9SVF9VUCkNCj4gPiAtCQlnb3RvIHVubG9ja19tdXRleDsN
Cj4gPg0KPiA+ICsJcnhoYXNoX2VuYSA9IGlkcGZfaXNfZmVhdHVyZV9lbmEodnBvcnQsIE5FVElG
X0ZfUlhIQVNIKTsNCj4gPiAgIAlyeGZoLT5oZnVuYyA9IEVUSF9SU1NfSEFTSF9UT1A7DQo+ID4N
Cj4gPiAgIAlpZiAocnhmaC0+a2V5KQ0KPiA+IEBAIC00MjQsNyArNDI5LDcgQEAgc3RhdGljIGlu
dCBpZHBmX2dldF9yeGZoKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYsDQo+ID4NCj4gPiAgIAlp
ZiAocnhmaC0+aW5kaXIpIHsNCj4gPiAgIAkJZm9yIChpID0gMDsgaSA8IHJzc19kYXRhLT5yc3Nf
bHV0X3NpemU7IGkrKykNCj4gPiAtCQkJcnhmaC0+aW5kaXJbaV0gPSByc3NfZGF0YS0+cnNzX2x1
dFtpXTsNCj4gPiArCQkJcnhmaC0+aW5kaXJbaV0gPSAocnhoYXNoX2VuYSkgPyByc3NfZGF0YS0+
cnNzX2x1dFtpXSA6IDA7DQo+IA0KPiBQYXJlbnMgbm90IG5lZWRlZA0KT2suIFdpbGwgZml4Lg0K
DQpUaGFua3MgZm9yIHRoZSByZXZpZXchDQpSZWdhcmRzLA0KU3JlZWRldmkNCj4gDQo+ID4gICAJ
fQ0KPiA+DQo+ID4gICB1bmxvY2tfbXV0ZXg6DQo+ID4gQEAgLTQ2NCw4ICs0NjksNiBAQCBzdGF0
aWMgaW50IGlkcGZfc2V0X3J4Zmgoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwNCj4gPiAgIAl9
DQo+ID4NCj4gPiAgIAlyc3NfZGF0YSA9ICZhZGFwdGVyLT52cG9ydF9jb25maWdbdnBvcnQtPmlk
eF0tPnVzZXJfY29uZmlnLnJzc19kYXRhOw0KPiA+IC0JaWYgKG5wLT5zdGF0ZSAhPSBfX0lEUEZf
VlBPUlRfVVApDQo+ID4gLQkJZ290byB1bmxvY2tfbXV0ZXg7DQo+ID4NCj4gPiAgIAlpZiAocnhm
aC0+aGZ1bmMgIT0gRVRIX1JTU19IQVNIX05PX0NIQU5HRSAmJg0KPiA+ICAgCSAgICByeGZoLT5o
ZnVuYyAhPSBFVEhfUlNTX0hBU0hfVE9QKSB7DQo+ID4gQEAgLTQ4MSw2ICs0ODQsOCBAQCBzdGF0
aWMgaW50IGlkcGZfc2V0X3J4Zmgoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwNCj4gPiAgIAkJ
CXJzc19kYXRhLT5yc3NfbHV0W2x1dF0gPSByeGZoLT5pbmRpcltsdXRdOw0KPiA+ICAgCX0NCj4g
Pg0KPiA+ICsJaWYgKG5wLT5zdGF0ZSAhPSBfX0lEUEZfVlBPUlRfVVApDQo+ID4gKwkJZ290byB1
bmxvY2tfbXV0ZXg7DQo+ID4gICAJZXJyID0gaWRwZl9jb25maWdfcnNzKHZwb3J0KTsNCj4gPg0K
PiA+ICAgdW5sb2NrX211dGV4Og0KDQo=
