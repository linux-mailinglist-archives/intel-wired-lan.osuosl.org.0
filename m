Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8131AC88686
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Nov 2025 08:24:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A9E660FA5;
	Wed, 26 Nov 2025 07:24:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8eO1cxG0i4zs; Wed, 26 Nov 2025 07:24:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A574961207
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764141886;
	bh=1b/emc6daRUwv8vfWQNzN0K529uOWahbRZBOJ/ni9tc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iILdlAOeXYrcgEM3kZspXwpOxvXWv96XAmN/ljZ3U/bAIkO8GHvAKWI1g3dzujwD0
	 BMfH4LmqCuSMJLpVKVJUAhaUAPON9hY9kFo7xwqYndxQmBaCXyUlvtOszj+fCbiH43
	 +mMvygJG3ihg+rPhKK+a2owGNeX1k84fl0u3M5K386l6Clc3upZemkeV0/D0swnJK/
	 IHdfraACnrOa0GurstZj7ly9jF0Y7+2mg9U1OZrr04yr8Gkt4Uu1e507exDkYyd3nU
	 bm6mbbtulTEO7hGSYzwzgzqWQvyDqTB10QQBHwZNypWUsvxuY2SeBfSiYNerd0UaJg
	 4s1aVas7x+VQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A574961207;
	Wed, 26 Nov 2025 07:24:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E5CB223F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 07:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CC2E84050E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 07:24:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2gGcanuO4DB4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Nov 2025 07:24:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 01B41404AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01B41404AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 01B41404AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 07:24:43 +0000 (UTC)
X-CSE-ConnectionGUID: lsFM9waVT6+GEYHEe7ctVg==
X-CSE-MsgGUID: V2o8FfEPRDWTxuAptQlM1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="69793715"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="69793715"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 23:24:43 -0800
X-CSE-ConnectionGUID: Y9/2Sw0KSc+uDDhrd3+Z7A==
X-CSE-MsgGUID: e84SsxnKQqGM8QuT0OsQ+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="192502880"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 23:24:43 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 23:24:42 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 23:24:42 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.31) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 23:24:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G4gOIO9n+0l90Fa+2vtPqBLWsRTCVZjJiWWzZe6yh/84+IawkZnmKTkdTFxFqv3X1XT6cV+vXQgb0uIWQndmTxLEmhDeTKZcf4V2lpabRnCC1LO9oxST/LwccUyHXic8fVW1DtU2+jzjmdnjWtq2VUs4J2u77eXCFRRULnJvoSyQrJLiZoh4foR6xV2pwDO+cgufwmWcb7RyuQW+q7MRh0ded8C0yzix8fp7CtqZ8yxg6N1xNt2QViBQO420x4QlchGMysnUhFeAs4D4RCsm3bMpoRsuNXdo4tHDJXgNZs1S7V1PmNtW9E+w4KT8kCNwo8C4r5q8iXLEUIel07EiYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1b/emc6daRUwv8vfWQNzN0K529uOWahbRZBOJ/ni9tc=;
 b=wN+7zj4zBDd2jw5Oa9f+0TMhK4Q+aPiZ8wmR90RRXaOrvVZz1OMHzEEx7VYcQZOM3AnlWq7qUceEhdd4+EP9VQq7t9B+/4YHZk0tAmaMTF7rk3Rby+DmP2YZ7M8o/TooqcsPVOFZNye+XLe6sp0pd8YVTx8BVQduBHcp+eGWrBoH1S9hoPzjfPUG2DiUzAt+M4t/MvFlr0DHc8SVzU0jhYG1crNyBBvf89k9a7ETYM5Ixo7/aCYNMEK3TU3Ea+QHCkVKxST1CVcvDiVXVUjJTCxJiOo4kkvVjY208RyWLhiu5wu0aN3f20iRFJ4nb7/8yEwj/4JJ4Hlmnk/lvCIjNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB8204.namprd11.prod.outlook.com (2603:10b6:8:17d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Wed, 26 Nov
 2025 07:24:40 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.016; Wed, 26 Nov 2025
 07:24:40 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>
Thread-Topic: [PATCH net v1 1/1] idpf: Fix kernel-doc descriptions to avoid
 warnings
Thread-Index: AQHcXp4lCuKnKhB+dUKOi/arzrfXIrUEi8pw
Date: Wed, 26 Nov 2025 07:24:40 +0000
Message-ID: <IA3PR11MB8986A3FDF77D49598C5F4C89E5DEA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251124174239.941037-1-andriy.shevchenko@linux.intel.com>
 <abf25d3d-30af-479f-9342-9955ec23d92f@intel.com>
In-Reply-To: <abf25d3d-30af-479f-9342-9955ec23d92f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB8204:EE_
x-ms-office365-filtering-correlation-id: ee3de887-fc57-4e36-ecbe-08de2cbcdcf9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Zm5qbitEaUNCbkJlWFFOeTMwenNGd2lBSnRsL2hBenVSZ0R1ZHh3Nks1UHAr?=
 =?utf-8?B?bzZ2L3l4TnRmWHhtSjBIUENlYXM0cWE1cUhMM3h5NTh2M1duaEcwR3Nkckgr?=
 =?utf-8?B?QjgyaERxRSs4QzZzOXNCMDdqNmRDMVRPbVd2YVB4YW50UGYxZjdtdTJ5UDZX?=
 =?utf-8?B?YllzZEMza2VmSll6WXdKelVIQUpUNGNmKzh1bkp1U3E0d3FTOGZEekREL1Ez?=
 =?utf-8?B?aVQ2MWZtb1NUbG9uTmdRWUdZemxLeWxxSEhXZzdlSTZxdHlVVkdQYXJLM2c2?=
 =?utf-8?B?TGo0VVNxSWsrcHZ6dzl3eGYycWJjVVIrMUNuc29TMmdCYk94UnMyQm1xdmFJ?=
 =?utf-8?B?RTFTL3RVR1ZxRjI2amg3UFZxLzF5bDlEN1Y5ckhUL3htc2FkdTMvZU1MK2Rk?=
 =?utf-8?B?UEFXMUpScG8xa1kybUVuYUcxYW41R0VDVDVzYkM1N0FPSUVsSlFsNzJwUE9t?=
 =?utf-8?B?UVlHa0pDNHNacXpOdHN3b0p0VTRscnhPbVhxUU9YSFdLSWVzRE90bFRtM2Vx?=
 =?utf-8?B?OWVXYVkvRDZsaCtZcXN1RG44OVFCMkNhb0JyODhvY3FKY1hZWnpmNjUydUlo?=
 =?utf-8?B?T2F3RnVFTmJ2dURxWTNCTTQxVFZjaVVWRzFGV3ZDK1hyNGU5c3RVejV5S2Fp?=
 =?utf-8?B?ekwrMTJhTm1LckJwMThlQlgzemE0Sityd3NQaUdhanJ3WWhiUE45UE1BUE1J?=
 =?utf-8?B?S0ROeVNBeVdKMVRvaWVyTk9LWTZWOFBBUExNbzZiV29FL1RubEtNb1FJS0NK?=
 =?utf-8?B?N3V1K1I5eDBwV0s4Q2J0NEJIejB1K1F1VXRqN2tBWXhlSGtmeU1BemJ6Ymc5?=
 =?utf-8?B?MW1aeTZBYVBDVmROOTZjUk9PSURQaG1GQVJZNFp3WU5MYjNyTHUrU0V3QTdt?=
 =?utf-8?B?QVZQV1Fma0RyZTVmZDg3MlBDZVNZbWFIWHZvR2JTaDR3Q0taMTI5ckwxVFNX?=
 =?utf-8?B?UGR0blBUZ2dRbG0xQmd1MEZCTGFYYjJhMDl5bDhUM3ByaWI4ME4zRXM3QW5P?=
 =?utf-8?B?Z0VibTZDY1FkclJUS1F5cnh3OU95R1hLdzZVVnZibmxDU2J5Zm1xZ0YwMmE5?=
 =?utf-8?B?M2ZuVi82V05hUEFIM0VvRTZnem1ZVGNDSnFqQ2Y0clY4UVcxYXdkUGRKWXpy?=
 =?utf-8?B?Tk0xRDl6N1ZtM3NMWE5iQ01IOTExVWJUWnMwSzcwdWhxRUFaNTRCMlh6bmIv?=
 =?utf-8?B?ZHl4bGJvRlJ5NC8xM1J2WXNNcFhOOG5BZ2xEZEpvUzY2RndSbkplMnZnQUhD?=
 =?utf-8?B?WFJKM1FyeGNBQ2NHc3Z5bFR4UDFIbjF1M0U3bWcxUDVSRk9xL29QZkd1aW0w?=
 =?utf-8?B?enYrTWlEckt0YVArcXRZRTQ4aVRycEk5cTQ3YzRXNG1vSmpaVlIvR3gzckxi?=
 =?utf-8?B?VzlIRytVUEVsUWh6dklmNENGWjZDTFk0LytsS3ZIOTFib0ZrTlBST0NWQkpo?=
 =?utf-8?B?aVVDRUc2QnpjYXV3ekx2aU5qNUJDNnhEdStDdTNCY0E3Y01yWkJlMDdjQnlk?=
 =?utf-8?B?NEU4KzRsRmM4eHdNVGtsOW9iZzBHWjZqaFNEbUIzNy9aWmx2YzJOcUFmcVc4?=
 =?utf-8?B?Z29NQThkSE1vOWFNK0xPejdnVnJtRlQ5WXdLU1B1OXdwV3JYYm9CaWN2L0lH?=
 =?utf-8?B?elByc3NBMnNFdGttUzlCZ1RYOGRxcUlHY0pUb0Z6d00rdkluTlNKeTRKWGRp?=
 =?utf-8?B?V1VYcjNwMVNGallGeVgrSmtOY3o4WG4xRkZuNWh4cFpxWlBRZFpvOWNQaDFQ?=
 =?utf-8?B?M29OVEtQNkNZbHc0ZStSU2RoaTM3WVdIQW4zcXdBbE5rU0l0eGR6M3pyMUtP?=
 =?utf-8?B?TTJBdzk4QzNYOWIxQWJLWm12bWw3ZUsvamVvRnkyOXNMaE1FVU5IMzhOa0Z0?=
 =?utf-8?B?a0J3L3lmTkVWT0VvaFdDeC9QWFdNNDd4WTk2alZBVGt0QmYzeWJ5VTkvbXFN?=
 =?utf-8?B?eE1HaUQvc09uQ01uYWJHbmNjdnJYZC9aRDFJd2h2OGJvRXo4azhVbnVYSmZv?=
 =?utf-8?B?WWxZR25ncHpHSEZPWndkUkpiREloKy85NWZYT2cyWU1kblhOeExsM00vMWFv?=
 =?utf-8?Q?/wGq2F?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RFk5M3E0dnNTdVpqRzF4RHROZk9TSDZFZWxOUzRzNGo2dG1QNEdBSlFtZDVl?=
 =?utf-8?B?UDlyV2N6dG9wNXl2dWdSUkttNWl0c1VTYjZzY204Smt1YTRtSlpvaWFrc29J?=
 =?utf-8?B?YkJjWXA1dDJHSVA1TVZwemxKZFVXdCtCbWlFeXFvMXJiWCt1ZDhPVGYvYU5V?=
 =?utf-8?B?WFViVThKZGNaWjgvcXIzUW5Zb2VuekhaYkEzeHhaRTVBOTVvYWRpczRzckZY?=
 =?utf-8?B?NTcrbVh3WGNZYVIzbzMwWXNDZFFGaVVNL1pidWEya1FvUFZRZDc3cUFRZWtZ?=
 =?utf-8?B?THl1MjZ0T3dvVkZlS09rcWw5b2Y1WThMSStGNzVPc2FvVzB5TU05eEVaL214?=
 =?utf-8?B?SlJRNkdELzJCMUlTa0pDN1Rzd01UNnFIWHhGU3JvekE5WjJxMktuL3hmR2lU?=
 =?utf-8?B?bnlvUmZoVHM2UXM0ZjlHT2tqU1VIR0h4N1JCRlN3ajEzL2NXY1NaNjhxWHF0?=
 =?utf-8?B?bHhPcERUVGZCam9yT3U1TGx1Zy81NE1DVlhXNnZtcTRkQzNqdVF2UDNvcSth?=
 =?utf-8?B?eFQ3dWorWkdLZjRab1pYZTFUaXg1Tmo1VXJKVjM2bUI0MU90by9JaWtFYmx1?=
 =?utf-8?B?LzQyeVlmbTRia2d6V1FCOTZGbTNrTlFCWHRGTkxEOHQwcFJmNU5OTWQrbkRr?=
 =?utf-8?B?ODFOdlhkZE1Gend2Y0ZlUVF3VjUwZVdNc1grZlQvZWwyV0NlMy82RVVzME5w?=
 =?utf-8?B?TjluaUNOd1VnMnI4TDhIaEgrNGNEYWNpZmZpbFFUelhjVUhncVgyVlQ0Uzdj?=
 =?utf-8?B?dDIvUzVWWDlTRnppcmVjTGhCY3dWNU8vL1d6NE1BYnM3UTc3S1hvbGtKTVJ3?=
 =?utf-8?B?MnZ2Nk5nTEdCWnZrNkZzU0paS3lnNk9qYnBsNks1alQ3Z0thVUFPUmR3NlJ4?=
 =?utf-8?B?aHZUMmdNaWVLT0pGaGpBZ1lCSHgrQlNhMS9weTc4cUR6dWdpS29idmN0OWtt?=
 =?utf-8?B?aWIwYzBXcWJBQm90aTZjcE53Vyt3c0VRaVk2L1Z5RGYwWDNwUzU1T3d3YSsx?=
 =?utf-8?B?dUJTSk1CQzFpaE9OYjBYcGdLc1Y4MFFUWlhmS1hPK0czVzVHSHQ5RytTSlkv?=
 =?utf-8?B?VVBUT3BxR3BSb2hhRlc2UnlTd3dTcHlqRC9uLzNYTjZUcUYwZTUrUStQbzA0?=
 =?utf-8?B?K0dvM0M3dlp5QThuNFJJeC9BcHdxQ1hmK3JPc3BnbGtwOHdaU01LbmFLUG1W?=
 =?utf-8?B?dStYUzdYZlEvSHQwRUlKbkgwL2RMZ0preWpRd3d4aTFrN3BBZ0s4YUdDdEl0?=
 =?utf-8?B?S2NKYVBmUXhNR1ZkbUZULzNYcHJkZ2R1eWNSUHhRQWR0OThwRE0rSnZMY0Y1?=
 =?utf-8?B?Nm5ZbkxGNGYwVnllKzBsQzNLZW92TXRjVVArL1MzOFF0MHpPenloUmVwZWZR?=
 =?utf-8?B?aEFTbGpQYXQ1NVhZNU1hM05Pc2ZRNW00SUNKNkNLcVpvUjQwMDBSYUZuTGpS?=
 =?utf-8?B?NjNHdXVna0phcGxHL3k3QW9LN1pSY3k3V2s5K3lxcnU5amVLb0RmeXJzZmQv?=
 =?utf-8?B?aFIwNmVGV3RRV2JMK1lOMHRPMEx3cTcybktHRnRjL0xlWmhZVUQ1YVNYS0lr?=
 =?utf-8?B?bHJtb3Bwdk1hdFQyd3lCOUQzVmFPRjh6dHMvVExEaHZtUHpwM2pXN0Z2RHFh?=
 =?utf-8?B?ODE3VzZlTmNPVGZMRkgrS3JPV04rQkp1WG1Ibit1THYzdHV5T1pYcVJNWW9N?=
 =?utf-8?B?OU1oRGxPRklIZE05V0kyNzdicnVaejJTSXpYcTdobEdVbU1QNzYzZEEya0xP?=
 =?utf-8?B?R0VDOEdRMFR4MnA0cmYvcmd4ZmZpb0ZERkdwNkpoczNwRnlnRHYyYmdUOVpC?=
 =?utf-8?B?R3lBY3V2UXlPMGREUWVnL2pjUDRIaEVuT3I3ZlRqbklqb0d0TnlBcndoalBE?=
 =?utf-8?B?eUFKeUFzYWNqT3RNN3pmYmtzMXdxOVlyUUFjQzg4ZzNWSlIxUkpDWkk3RWUr?=
 =?utf-8?B?QzJ5NEk0TGc2aU5ZdFR0RjNLNGt6eENNMFJYWUVCb28vaU1GT0tPamh3UVFV?=
 =?utf-8?B?aC9sSEdBMGx2YWsxVTNhaS9VdCtpSWMvWjF4Q2VoZGtOM0JvUEl2d1VyWDBs?=
 =?utf-8?B?TU9zeUo5RlpRSjQxR1BRNVZqakhOR2RSd1U1dWFDaElvQjFTV0dJT1N3a0pU?=
 =?utf-8?B?bnJuaTVSNGlXUGVSQWlOci82ak4zbjZmZjZHRURUKzUrRWE2emlDVlplaGE0?=
 =?utf-8?B?QkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee3de887-fc57-4e36-ecbe-08de2cbcdcf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2025 07:24:40.5963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K05Xwc4aOpnb6E0lg43RyYKyXEJzxmTqhP57I2Q2bfovNqbnkcu6PwmOSgbXdcX/SgiSJWujYb6hcI6InghGJjyZY8AIdvT0lSlmQ02pHU8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8204
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764141884; x=1795677884;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1b/emc6daRUwv8vfWQNzN0K529uOWahbRZBOJ/ni9tc=;
 b=cNMrSEvvg3PP+jombj5SR5oGi5Iy+1f1FE8GC1a/Wu4ckpStFrn64GxF
 yDaAQxm3B/dIRILQ6ir2J+x3GtarpcsdcPmnm6ZBtOALiJZXisolEB1hn
 ebHyqMNJuJ11xPeQRS16iNaRhHMUR3joSBPObnBp4IfvQRRbu/262L3sw
 sPT8LNt2eSNnoAiQhCfg5QHw9hcdAueRCMBNT7gbj4DF9b/2wOcpaL8Wu
 lPdMHFBnW7F/v6hBysJMdJlBHsc+hnJ6q8jf9yec25NSI/XLGOhmywubY
 srAcTW4H5iuAkOxujzK+l3IAJSla7tPYjE7PNaCZm8NSm44ep3s2u/gU8
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cNMrSEvv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/1] idpf: Fix kernel-doc
 descriptions to avoid warnings
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2l0c3plbCwgUHJ6ZW15
c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBO
b3ZlbWJlciAyNiwgMjAyNSA3OjMwIEFNDQo+IFRvOiBBbmR5IFNoZXZjaGVua28gPGFuZHJpeS5z
aGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255
Lmwubmd1eWVuQGludGVsLmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOw0K
PiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRy
Lmxva3Rpb25vdkBpbnRlbC5jb20+DQo+IENjOiBBbmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBs
dW5uLmNoPjsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgRGF2aWQNCj4gUy4gTWlsbGVy
IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29t
PjsgSmFrdWINCj4gS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJl
bmlAcmVkaGF0LmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCBuZXQgdjEgMS8xXSBpZHBmOiBG
aXgga2VybmVsLWRvYyBkZXNjcmlwdGlvbnMgdG8gYXZvaWQNCj4gd2FybmluZ3MNCj4gDQo+IE9u
IDExLzI0LzI1IDE4OjQyLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6DQo+ID4gSW4gbWFueSBmdW5j
dGlvbnMgdGhlIFJldHVybiBzZWN0aW9uIGlzIG1pc3NpbmcuIEZpeCBrZXJuZWwtZG9jDQo+ID4g
ZGVzY3JpcHRpb25zIHRvIGFkZHJlc3MgdGhhdCBhbmQgb3RoZXIgd2FybmluZ3MuDQo+ID4NCj4g
PiBCZWZvcmUgdGhlIGNoYW5nZToNCj4gPg0KPiA+ICQgc2NyaXB0cy9rZXJuZWwtZG9jIC1ub25l
IC1XcmV0dXJuDQo+ID4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cngu
YyAyPiYxIHwgd2MgLWwNCj4gPiA4NQ0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5keSBTaGV2
Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhyeC5jIHwgOTYgKysrKysr
KysrKysrKy0tLS0tLS0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNTkgaW5zZXJ0aW9ucygrKSwg
MzcgZGVsZXRpb25zKC0pDQo+IA0KPiB0aGlzIGlzIHNtYWxsIGNoYW5nZSBhbmQgbGVhdmVzIHRo
ZSBkcml2ZXIgZ29vZCBmb3IgbG9uZyBmdXR1cmUgdG8gY29tZSBJDQo+IHRoaW5rIGl0IGlzIG5l
dC1wb3NpdGl2ZSBpbiB0ZXJtcyBvZiBtaW5vciBhbm5veWFuY2VzIGZvciByZWJhc2Ugb3INCj4g
YmFja3BvcnRzLCBzbzoNCj4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xh
dy5raXRzemVsQGludGVsLmNvbT4NCj4gDQo+IHNpZGUgbm90ZToNCj4gQWxleCBkaWQgYW5hbG9n
b3VzIHdvcmsgZm9yIHRoZSBpY2UgZHJpdmVyLCBhbmQgSSBzdG9wcGVkIGhpbSBnb2luZyBwdWJs
aWMsDQo+IGFzIGl0IHdhcyBjb3VudGVkIGluIHRob3VzYW5kcyBsaW5lcyBjaGFuZ2VzIGZvciBs
aXR0bGUgYmVuZWZpdA0KPiANCj4gdXN1YWwgcmFudCBhYm91dCBrZG9jIHdhcm5pbmdzOg0KPiBh
Z2dociEhDQo+IA0KDQouLi4NCg0KPiA+ICAgLyoqDQo+ID4gLSAqIGlkcGZfdHhfc3BsaXRxX2hh
c19yb29tIC0gY2hlY2sgaWYgZW5vdWdoIFR4IHNwbGl0cSByZXNvdXJjZXMgYXJlDQo+ID4gYXZh
aWxhYmxlDQo+ID4gKyAqIGlkcGZfdHhxX2hhc19yb29tIC0gY2hlY2sgaWYgZW5vdWdoIFR4IHNw
bGl0cSByZXNvdXJjZXMgYXJlDQo+ID4gKyBhdmFpbGFibGUNCj4gPiAgICAqIEB0eF9xOiB0aGUg
cXVldWUgdG8gYmUgY2hlY2tlZA0KPiA+ICAgICogQGRlc2NzX25lZWRlZDogbnVtYmVyIG9mIGRl
c2NyaXB0b3JzIHJlcXVpcmVkIGZvciB0aGlzIHBhY2tldA0KPiA+ICAgICogQGJ1ZnNfbmVlZGVk
OiBudW1iZXIgb2YgVHggYnVmZmVycyByZXF1aXJlZCBmb3IgdGhpcyBwYWNrZXQgQEANCj4gPiAt
MjUyNyw2ICsyNTMwLDggQEAgdW5zaWduZWQgaW50IGlkcGZfdHhfcmVzX2NvdW50X3JlcXVpcmVk
KHN0cnVjdA0KPiBpZHBmX3R4X3F1ZXVlICp0eHEsDQo+ID4gICAgKiBpZHBmX3R4X3NwbGl0cV9i
dW1wX250dSAtIGFkanVzdCBOVFUgYW5kIGdlbmVyYXRpb24NCj4gPiAgICAqIEB0eHE6IHRoZSB0
eCByaW5nIHRvIHdyYXANCj4gPiAgICAqIEBudHU6IHJpbmcgaW5kZXggdG8gYnVtcA0KPiA+ICsg
Kg0KPiA+ICsgKiBSZXR1cm46IHRoZSBuZXh0IHJpbmcgaW5kZXggaG9wcGluZyB0byAwIHdoZW4g
d3JhcHMgYXJvdW5kDQo+ID4gICAgKi8NCj4gPiAgIHN0YXRpYyB1bnNpZ25lZCBpbnQgaWRwZl90
eF9zcGxpdHFfYnVtcF9udHUoc3RydWN0IGlkcGZfdHhfcXVldWUgKnR4cSwNCj4gdTE2IG50dSkN
ClN0cmFuZ2UgaWRwZl90eF9zcGxpdHFfYnVtcF9udHUoKSBpcyBub3QgaWRwZl90eHFfaGFzX3Jv
b20gDQpDYW4geW91IGRvdWJsZWNoZWNrPw0KDQpPdGhlcndpc2UgbG9va3MgZ29vZA0KQWxleCDw
n5iKDQoNCi4uLg0K
