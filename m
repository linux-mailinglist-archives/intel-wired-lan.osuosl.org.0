Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FA5AC0E02
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:25:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8230817B0;
	Thu, 22 May 2025 14:25:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wNZ1p130Xw6b; Thu, 22 May 2025 14:25:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 213A5817B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747923922;
	bh=rE7dLsghmedqnJ4KpxE29uf575BiRSvSbA24xdosyjA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MUw5hgjcwW5NI5LViSg55hcJrwt+6RciVk3TlAzloIi7qlYWWYCzwPQTk3InCuXm5
	 I9K8GVXy55IufOdtj+aAtF58K+h9F+CRGo/byjYD0bFsHY13tzmqkf9dAG1I7Q2/Iu
	 yzC2gwfTX/pMI+jRgdOFgBbppntmoC28kNPWLg57wuamzJDPZOySn0S2oBqmLnMuFH
	 tRWOelzk/N53cxnrjEGxmluk1FLY3arrjy+N0upXmnUAfWH1c9d0jMVtZGm5jCAB7d
	 bTFFJBY9fgQtSEM4WCk7ew2HRHNeRNNVnFvVKOqtoK7unpKcEpuksML7Wjnz4hbKeM
	 OE32N6yoa7tKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 213A5817B5;
	Thu, 22 May 2025 14:25:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E65B6BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD11141ED2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:25:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mExM12tEGrBd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:25:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 357D640018
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 357D640018
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 357D640018
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:25:20 +0000 (UTC)
X-CSE-ConnectionGUID: 4zuUffMiRFyVhp1P/vg/sA==
X-CSE-MsgGUID: UEKr9aJlRUO/rY68uH9rdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="50097799"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="50097799"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:25:20 -0700
X-CSE-ConnectionGUID: 99yFh6/gQDeQvY8RHHK80A==
X-CSE-MsgGUID: Z1bMbMslQoqoHkV4b5mvAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="140488576"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:25:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:25:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:25:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:25:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q0CCCa56eFp3i+b57c4/auGpWqcHjWKe3Aj0uDjGBCsYGl95TZ3kAzn7UU2+Npve19WA975n5WlhbTPABtuGfJDqsEMJy7bK3xnFbwmBvpSPKJWCTaW/9otxqL2l5DTqrKSkVpr4yb0iQdvTeOkbcPAdHSDKEuNE7VXYahSI2UpvFafzV4VJXyvetNIsvzqHG6C5qG8CH28CkwaDSK+3/6dxRV6aTFn34tjZ9PttpqupWZn9UE9lZQA/xTCaQZLYRsHKUd9lQauU00AnQrbzx8Lu6EGH555eahyLRO6PyDywZxwEF+NjmR7UM3F3f3kyTimK1HWB48zudbMeFevSWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rE7dLsghmedqnJ4KpxE29uf575BiRSvSbA24xdosyjA=;
 b=UsQ1CYd6DyLmSlryaAmgUZqwP2yaeNYnBHsM8gH3Uuu6lknphPYa/pcIP6Gk4YQK6dFw19GsYW+cTANuKxJV4ssLzWcahwmVdvyyZHzx7MrSMusQ9ZNuAE8/ICO2KtHcIbQUdZvZVbVXiMsmNvLOcTi91D1ZfdTaGqAHVAnQ26zSHl1mcDZuEkael4izfRUH96dUNpgqMA7/PQ5yExDfD+0GzXBHtAjwWeoFED8anuyTCnO9HE72p3wEQ7OvzDPFfG59/oBH91drCHFVY5KAFtlkINodCOyj2yrQaiWlv4oqzd9ewAtylMAsYPBML0og8jQaQKtT6EpP+6KxGAKFkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MW4PR11MB5934.namprd11.prod.outlook.com (2603:10b6:303:189::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Thu, 22 May
 2025 14:24:49 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:24:49 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v4 07/15] ice: add
 ICE_READ/WRITE_CGU_REG_OR_DIE helpers
Thread-Index: AQHbuuwbyIDgsloMWk+sspNpunUv0rPe1E1Q
Date: Thu, 22 May 2025 14:24:49 +0000
Message-ID: <IA1PR11MB62417C69C9A619268595F21B8B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-7-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-7-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MW4PR11MB5934:EE_
x-ms-office365-filtering-correlation-id: cfdc867d-2e8d-47f5-e7b7-08dd993c68cc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?d0JUQ0Vua1ppTExsWk9xZTBnT3hIWGxqQXNBSm9QSW0vRDBhQUFMWG1pRHll?=
 =?utf-8?B?TnVpOU1hRmJ0NGxGZ1BISUN4ODBjSUR5d1pWd0pFQXI4R3VOVVEwVlgwaHRE?=
 =?utf-8?B?eGhBZTJJaVROdWJtdVVndG5hRzlqVFVIUllPUkp2Ujk5UGI0YVNIbUlZY2wx?=
 =?utf-8?B?T2duOTNFV09pbFYzZmtFMGdWTlA1K0lweDFLN2YvdTEvRXc5L3c3NVhsdWor?=
 =?utf-8?B?bWs2Y1RidFNoYmloWSs4SnI2NE1Db0RJaXVyZGR0NnNiemxLUW1KMU9JVG9a?=
 =?utf-8?B?MVRKZDB0RXpsa1l6UUl2b0oyUVJHQlJGYmF5d0xMc0ZkYkE3OTZCZW9pSHVG?=
 =?utf-8?B?YXZGZE8wakFSRGthWmFPa0V6TWg2aTFlMDU2ekpSUjE0OS9lcEZUREE3RlZP?=
 =?utf-8?B?aEVZSldsWDBNenRwTVd4cGE4bXUvZUp4RTJUbkVCSCtNRFZhUTV4SmdwOTVi?=
 =?utf-8?B?ZUdHWERZRnlOWGJqaG56UEpnWjgrc2VGeEhLRmVTUCsxMUkzZGVDQ055ZGRr?=
 =?utf-8?B?ZGZDWWlKVUJsdXpNZUNaNkxnT3Nnb2lvZHhJcXY5SFI0ODg2VlFMNy9UdmJV?=
 =?utf-8?B?Rnc2L3FLazEzU0xoWU1IUjVTUllnM0k3YXJkbzJJd2FzbXVxSEhFTTJRNll6?=
 =?utf-8?B?dUE5Wm5BRndjL0lRTTgzbnVIR2Q4WmNlRXBUUXBhdjJsaEpFZURZcTlOSTZ6?=
 =?utf-8?B?VXhPVnBlc3Y4VDlmNjdWUldjaEtqckU5NnBrOHYrQWpoQktxVmhnUzJzVDQr?=
 =?utf-8?B?RTR5WW1kMjMwTGYxNlkza2J5RTZvV1dlTlc2K2JWckRwTUVhcWc1YjN6Yk9t?=
 =?utf-8?B?alJPYmNvWWJmRzJUcjZaSytOeDd4S2VydWxHNk9KT0d1bitONnl5Vmxkb2xk?=
 =?utf-8?B?eWJ6ZS9XTXc5Q0U0Sk50UmZnK2ZRanhyTDBGVGFsY2NOSDRJZitkOFkzazdE?=
 =?utf-8?B?T1hiRkFZaEV3c1N2Z0hLV0xxbGhqQ0lqV3ZLR284UlY3ZXlPME9xQmZTeEhy?=
 =?utf-8?B?eHE2b2lja0V6WGpHOEJQcEVrV3dzU2RhVHArNnlrOFRDNmMrNTBTY1M2N2Zp?=
 =?utf-8?B?LzkwNlRod2dTaCtaQzYvTUkvN1o3SjlOT003cWFldWhselZRdnNsVmR6WFZh?=
 =?utf-8?B?TkhSUGNvWHd1SHYveGQyNG05WVRyLzJybnRKL0t6SWRuSHN0T1BlMzRUWGxx?=
 =?utf-8?B?SHhnck5FUXpEYmJ0bWFvTW15bDN2am5BTlpRWDhQZU92clU2UGRXZjlMeG40?=
 =?utf-8?B?U2dYcVFNTmJIK1pWQm9mTlExdWhaNWFXY2VQaGJ2MnVldDVKWmZZTlBsUkxo?=
 =?utf-8?B?SzRJdjZ1L0tYSGtKbVRoeDFHeGlUS3RvYmd5ajhCTFYzLzkrdEJNTzVsMm1u?=
 =?utf-8?B?Slp3bmt3U00rb2VBSTc5WWpCaENoWE1tMG1BQUFwNzh1LzdScVhYTTR0aG1k?=
 =?utf-8?B?OWpZQzU0MitUQlZoMGh0aCtlcjdibFV4cnlabktseWRPc3IzV0p1L2thSG1N?=
 =?utf-8?B?bHorNWQxYzhDZmVmMnRiL1AzcGRZSm9xQ0dGMmp4R0lhdGdiL3k1VlNxZ0o2?=
 =?utf-8?B?bm83a3d2RzFkZTZMSHdyd0dickxPejNENVQ1bFFONmlvWG5VRCsrbDZROE0x?=
 =?utf-8?B?aER6ODI4VDV1Yjh3enRrdkNpVVU3dU02K1pYNElJNVNVR3ZRcWJsUG1hdysr?=
 =?utf-8?B?ck02ZmZWd284eWNBb3hlSTI4a1VnYWFHVmxvMUZGYkc3Y3VkTTkzZW5wT3lQ?=
 =?utf-8?B?aWxSejBVY0tFRExGYjF5SlZWQnM4ZytuYklkcEVWMGh4R1RpQUZJakZ2UHlL?=
 =?utf-8?B?andDRC83Rk1LaUZPdzNhRk9pbjZzaWUzYkQ5YlhrTkFLU2lCWjJOZnBJemlu?=
 =?utf-8?B?VmJkT0FFMys5Mjg5YzVZR2hOSG1HbXQwVmRaN1FVZWhBUVdkMEFIMWM1M3Ry?=
 =?utf-8?B?ZHBycEwvTmY3YkFFQ3ZCMU1nWFQ5S0trZWhsU2lHc3lWbzY0Qm0rZjhmSmpj?=
 =?utf-8?B?bzhTSm5sY0lBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UDJTN01kWHFMWWdCRVk1eGtyc3IzTE4rWlBxUThzcktObkJzWmtvbGJLRGZT?=
 =?utf-8?B?bHVGSzRtYkNJWnlrUnI0MDJMU2pGODdCR1BXcGRCT05FaTQ2ZkpRTHo1azkw?=
 =?utf-8?B?S3YxK2FraEQwTXlmb3dCazJ5ZU9iMnZJcW5UUHJnTlZaV2VsNWhteUR2aTU0?=
 =?utf-8?B?K0xHSXVScFNEOTZnclkwVDRPQ3ErT0ZJMWJtR1Z6SS9Oa1cwVlF2eDIrc3l6?=
 =?utf-8?B?RTlrV0xYSXNDY1dUL1VsVjM1MnhNNW11UHJMUzM4M1prRlNXY0REV3hjMW5P?=
 =?utf-8?B?RFM2V1NBbHUzT3pQWEJaWlFmeExtbEZDS2kva2JlOXVvNEcxdzZjMEFpRUl3?=
 =?utf-8?B?aW1hSnJDMWJqUTlVUjFRWTFkbmNYcHRNOURMRTRpdjFjQzllU0NSM21nS0R6?=
 =?utf-8?B?SDAxTmUycHoyaXhRMDBadGQ0dDRLaUdVSE1xYkRHRUJiMTRadDVXR0xOai9k?=
 =?utf-8?B?REN0dVBDREhMZUtmSUJBdHpMaFUvOU5rSldrRFJVbHA0WnJHNGpVZy9PclNX?=
 =?utf-8?B?Yi8reVdNYTEwM2VORmxCaXFua3BwNVU1UXI5dWV1cnBSeExrVUk3K3BrQXlh?=
 =?utf-8?B?M0tpeUFnNzZBUFZ0VW5LS0tZczZsSmt0NVIzQkRsMjVSVFBveDBrbitwSFdO?=
 =?utf-8?B?R25yb3QxME1LKzZJZHkySWJ3aDZOdWQrczZyMTJITmR1d1BpY1Zzb3ZkeUtR?=
 =?utf-8?B?RFRuZHpTRmNrTk5pM3krNE1YamtEeURxV2prUXpRZm9hb2hwaDJBNEdwcUts?=
 =?utf-8?B?eXJHVVlkUVdsV3ZBQ2xSdVBsQjRKYTZhc2NnV3BUZno1NTdNQnZHS1d3eDBp?=
 =?utf-8?B?YjVNMHk1RS9qZEJOYTd6bFh2QmsxbWZoOUxuTDNoQkF5dE5HOUtGYWFTRlA2?=
 =?utf-8?B?MXU0Znlmcy9ZSm9OWXZMYmhJaVlsTUEvRE5sZkpRVklKN28wc0ExMktHMCtH?=
 =?utf-8?B?cmFib2JISlU2WGdjZHU2M2l5WTJDTWhFVjIyT1F1STd0dENQZXJERTlMOTFQ?=
 =?utf-8?B?dDc4TVlKdDlaQ0d5N29lWmF4MVNsUXRhangwdy9peHE1ZmViUU9PUWd0aXpn?=
 =?utf-8?B?Ny9wUlV3NkNhVU05UzBpbXI5SWplWTJXaExONjZGYkVCUDZvQm8wVlFUS2hR?=
 =?utf-8?B?ZTVkUHk2dy9BSDFEUWtQY3V2R3dJTHJWZHFLMHY2aXF4TTE2Mm1SZTVhZHZX?=
 =?utf-8?B?cFJ6UmgyUzRKcDJrZjBnQzB0VWp3c3dYZG9FMVVSZlFWbHY1WXkrS2VuM05Q?=
 =?utf-8?B?QllyUU9OYWZMVUR2bDJDOGVaaWRWNFZsUjEyTG9PVWhPV1RxVjdZdjVxWmd1?=
 =?utf-8?B?K0dZVm16bGdmK1BiUUdWbDlLYzExWHU4NEhoeTl1QXJlNm0vYXhSSEwzK29y?=
 =?utf-8?B?cFVpMklhUXZVUFJLeStZR1RYOXYxblY2aW5NYy85ZDBjUkw0RTFTSXAvTllu?=
 =?utf-8?B?cFdxMDFwK2J5UzlxK1YyU0xkV3hSOVErOHRqemkwdFhmZUY1aUlxeXlNK2JB?=
 =?utf-8?B?UHczZERXL0Y3YW5TNnM3RmpJaTBCL2MzZ3VPTG9rNXBRa0dkRkplbHVpUVo3?=
 =?utf-8?B?VmdWOG0ycyt1UlhTakV1UEZkTkZmODB1MzFKMUNjQ1Q4c0ZyL29IbkNmY3FJ?=
 =?utf-8?B?WWh0b1NaejY3Um56cENyRWtxa0FaZlR5M0xVblR2SzZZVUg0MUorVklBbVpY?=
 =?utf-8?B?Wkd5dXFmaG1mVEdmblcyNkh2cUN2ZEdzTXUyRkJSdks0MHAwemZUL1RjR1cr?=
 =?utf-8?B?VHVUNzIvRTVONWxsOG5kZzdmQ2hsK2loaGxpcjR5N21ad29UOHNoZ0xTYk53?=
 =?utf-8?B?eDdadEViQko5RDJiTGsySXRobDVxa0NwN2g3MXBUUEJRT2s0NDZDTy91VU1n?=
 =?utf-8?B?dlYrY0w3M3VKUmVpQUUrZEFPaTNvREsyQy80QjlQSVlsVHZXVlVHdjR6VFZs?=
 =?utf-8?B?L0ZmM2phQXZYb20zWnNrQWZVV3QvaFd3S2hDNXhCWUZpcWJQOVRPVmZnd1Bi?=
 =?utf-8?B?M1hyYWtDdnMvRXk4Y0c5Q3lVUVJVMTFjU2NFb0VtcFJXTjlHdHQyTFJ6eXY5?=
 =?utf-8?B?eFpHNTAxMWZVbHlJMkNWelFFVE1FZE1Ea0hvQmN2QXBVdE1ialNrOWRnL3dV?=
 =?utf-8?Q?15STrnKyHsgSay2jdVgiP7lmv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfdc867d-2e8d-47f5-e7b7-08dd993c68cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:24:49.1489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ye5ET6TiL3nwzftXTzXvK/r1AE7/xY9lAzKLbhgPjUuSDrm5DrUqpsJ/M21KjlkBP7OLTUWJTBsqnfc+StMy+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5934
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747923920; x=1779459920;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rE7dLsghmedqnJ4KpxE29uf575BiRSvSbA24xdosyjA=;
 b=PNZgDDndWKjOj2wErIKvwFGOOyjlCGt0/DLjgoOy7Bz+CEG2YmeoacfU
 MO6tfiWnSUS4HE08PaBcXWLaSTxUdnMZkiHnPfeKPSTJdqhf4W9iLqeVv
 rtTveaeBmybk6i4O9H8L5UhdUB2CNwRpytTD/boTEnuvuA7ni1nwWhLhq
 2Hl6E3htcK4HYxZFUJp+U+AoodGnQ6Q/K9wjhg7PrftBc6yXZVy9OhwYJ
 n1SpxwgAasGVF7m3SwcQg+LSKK8Snpl2a43w6pyGUBRdGtpytNKoTufSY
 3Gt/OVs3Vd2k4DVYzMRoR/P95wWlbEVbMEot6ss+VYk3XwksgGp3vaLvo
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PNZgDDnd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 07/15] ice: add
 ICE_READ/WRITE_CGU_REG_OR_DIE helpers
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgTWF5IDIwMjUgMDQ6MjQNCj4gVG86IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEt1Ymlhaywg
TWljaGFsIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtvbGFjaW5za2ksIEthcm9sIDxrYXJvbC5r
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPjsg
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIHY0IDA3LzE1XSBpY2U6IGFkZCBJQ0VfUkVBRC9XUklURV9DR1VfUkVH
X09SX0RJRSBoZWxwZXJzDQo+DQo+IEZyb206IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtvbGFj
aW5za2lAaW50ZWwuY29tPg0KPg0KPiBBZGQgSUNFX1JFQURfQ0dVX1JFR19PUl9ESUUoKSBhbmQg
SUNFX1dSSVRFX0NHVV9SRUdfT1JfRElFKCkgaGVscGVycyB0byBhdm9pZCBtdWx0aXBsZSBlcnJv
ciBjaGVja3MgYWZ0ZXIgY2FsbGluZyByZWFkL3dyaXRlIGZ1bmN0aW9ucy4NCj4NCj4gU3VnZ2Vz
dGVkLWJ5OiBQcnplbWVrIEtpdHN6ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+
IFJldmlld2VkLWJ5OiBNaWNoYWwgS3ViaWFrIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT4NCj4g
UmV2aWV3ZWQtYnk6IE1pbGVuYSBPbGVjaCA8bWlsZW5hLm9sZWNoQGludGVsLmNvbT4NCj4gU2ln
bmVkLW9mZi1ieTogS2Fyb2wgS29sYWNpbnNraSA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+
DQo+IC0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5oIHwg
IDE1ICsrKyAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90c3BsbC5jICB8IDE2
MCArKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IDIgZmlsZXMgY2hhbmdlZCwgNDcgaW5z
ZXJ0aW9ucygrKSwgMTI4IGRlbGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8
c3gucmluaXRoYUBpbnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0KDQo=
