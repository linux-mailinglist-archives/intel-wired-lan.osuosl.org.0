Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52225C8CF5A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 07:52:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF42860AA1;
	Thu, 27 Nov 2025 06:52:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bQ_7WHh1M3f8; Thu, 27 Nov 2025 06:52:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D1A160868
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764226342;
	bh=gUw2b4csQz7XiKdG+3z9Fjf2N9dAECRaDJ6vCQbZM/s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4oJC6Wjo6AKOfzCJ/j6QZOWi1kMKar0CNDJI2+vY1WBZCnWMJWFXEHo1gklzRJiNq
	 AwqCyHfF9eimnT95R3aqCpGp0tAv6JUFvPgWuJwp4FjCQsrBowiD7howOvP0zHfuP9
	 hrB5Mnb+gG8yTD/P5gLtccZg3BBaJIKuUv5W30EATnjCLKHI0RCgk7UcvqNNaKrVRK
	 WIOJ6ONL7OZNk0BV5yAqnL0NfrWiYMv5rOvji9psmZPDCdD+OdjqLVV8c45EWCCdzM
	 TLiFmB1Cjdo5cDmju+iC3KvnPP7a4+simcmliSrh3Eq77zzF++8k/zZ4sKaTC99ntC
	 I8D5w5PpVCr6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D1A160868;
	Thu, 27 Nov 2025 06:52:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A0E48708
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 06:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9332D40C4A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 06:52:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D4cbllUBFXTt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 06:52:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B5EBE40B73
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5EBE40B73
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B5EBE40B73
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 06:52:18 +0000 (UTC)
X-CSE-ConnectionGUID: VwGXyO3zSbCzYjZ08Jp/eg==
X-CSE-MsgGUID: twZSgraHSh6n8xHb1OmvzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="88914627"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="88914627"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 22:52:17 -0800
X-CSE-ConnectionGUID: m89DVl6OS+6RHAt2LrR4SA==
X-CSE-MsgGUID: Pj7jAspNSS6YTwvMpKh3cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="197636214"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 22:52:18 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 22:52:17 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 26 Nov 2025 22:52:17 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 22:52:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ov/mp8wHM2nPuzCKmm7GVml8AzIp8TBTSv7hyhTF1RnlYXLM7yTiI2jWAsv6GRndh8dknk6djl1SaG6EylrmSPnQSZorekJFqNtKJ9mqGmiT4cCtcz9RFwGtEbJrDwuKKZiMTA0u/UTweu81Uhe+Vttp4YFd3lpNZE5SofQm021/2+zduSAs3JkzzxKGhxvDXG9uVJJjGTVjMZEWZ1cPAWrkJ7Q/ITtsWY4hFcX/9IoNZ/HcwNrOFdMOyI2o+xwbgqAtfunceUYTB5rgmDWz6EMOkd1jqCa9+WYsUeU9PArJW39IQsSxW/2Y1QAHFUc2CQ1zaluMJ9tfEtsFclaL6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gUw2b4csQz7XiKdG+3z9Fjf2N9dAECRaDJ6vCQbZM/s=;
 b=DxS03hW8pRgRimLY5rwVdsl02xnRk8spWo4wEMlblAbpreOVby3pYk9NwI8bMvsSxvJ0tWb7y7LG/Uh/ALSRfAicqwN5NfupXqTHl+af8wPhCDJ2gr+Lw/1xLuhqIbwxabiFafsCKXz5hCnvU1BPJBCycWiKnzvGS9km2ojVdYX1KsssbMXF4V19WFdilWLSQ755TEKTrovpmjng1im+octA9FhGsQszHKOQzDHfu9380nV+5pQOk5uFdFCtCPyiYCeB/B991OIFA4AEaRtsgc64Ms3pNtXGqdSXT8xj4kla8Za2wki8eyfub6Kc3fWT6iiMXdLrKQ8XO1vGqaQvdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB7016.namprd11.prod.outlook.com (2603:10b6:806:2b6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 06:52:09 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9366.009; Thu, 27 Nov 2025
 06:52:08 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Choong, Chwee Lin" <chwee.lin.choong@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, "Gomes, Vinicius" <vinicius.gomes@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Shalev, Avi"
 <avi.shalev@intel.com>, "Song, Yoong Siang" <yoong.siang.song@intel.com>,
 "Choong, Chwee Lin" <chwee.lin.choong@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] igc: fix race condition in
 TX timestamp read for register 0
Thread-Index: AQHcX2Vu/TW0TyslP0SEzu+f/S1ho7UGFTig
Date: Thu, 27 Nov 2025 06:52:08 +0000
Message-ID: <IA3PR11MB8986EDF2AFFE142291974FBCE5DFA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251127134927.2133-1-chwee.lin.choong@intel.com>
In-Reply-To: <20251127134927.2133-1-chwee.lin.choong@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB7016:EE_
x-ms-office365-filtering-correlation-id: 666542f1-f57d-41ba-381a-08de2d817b9b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?MWV0bnFBbk02d2drNDFKVGI2NHo1K3FhZU9uaHhrR25rVTdUQWRpSEV2bjNC?=
 =?utf-8?B?NE1FRzhuZ3NTTFA1NlRXdTVDUWZhQzQ0bDZqK3pTRGpTekh2U2JscVpVU0ph?=
 =?utf-8?B?bStmUWxMYUk0SU9DY3MvNzNoMVFMSUVNbktRWGlJeDROcysrYmUvckR6TEg0?=
 =?utf-8?B?b0dnMWlWeHRtM2o1Nk0wWWRldlo0RUhsaVlINi9ISVRKOHYwY01NYk96TGpv?=
 =?utf-8?B?R2pFUGtXTTlCMFhlSVF3TGlxUm1zVkd5VHFuanR1SmlZKzFQd0M5Wk15Ky9E?=
 =?utf-8?B?MXZiM0UrRDJWR3dVTTRuL29OWU0xQlRRc1l6d2RZU0RGaFU3amxDenNSTEdh?=
 =?utf-8?B?RFJyVFMwcERkZzhQWnJkT25WNW14eVZpTkRhREpUUFpYWXRJNHBLL2dFNTk2?=
 =?utf-8?B?SzdUM090WWhQZGtKcXB4cGl2eGF0SzR1L2ViS2RhMzd0MnI2cWk2VVBMbGVj?=
 =?utf-8?B?OTR2VVFlM24xdFN2R0pEbmdtRWo3dnlDSFBGRlZkbU1nVzA1bFdrbEs1dytT?=
 =?utf-8?B?KzNBbWVwZUU0YklhVkxnRFpwenhRbnk0alh0ZHNuK0dKeVV3bzVaTSt0Nldx?=
 =?utf-8?B?eWNiNk1FUld4c1VwNjNGQ25GMmtocmYxYkxaMlBseHplV0dIWlJJNm5PQkhT?=
 =?utf-8?B?amsyY2gvMVFtenFGRDQ4WHQyUDNzZWxGY011VUNIbDFJZEZFS3JzdUtVU01j?=
 =?utf-8?B?clJOaUg4OVNkZG5iWGd6b2NtTSt3Y3EwVTRUSXc3YnplZkFVcHo1OFdLaGxi?=
 =?utf-8?B?RGJUaGt2V3hHR1g5Ui9UVWk2dEFlam8reldBaEE3dVNOV0JWQm1RM3NFVXNO?=
 =?utf-8?B?eUl0ZTZxNWZ2aUNwMXdiWUJ6ZmNaeE1vTXozZkNDSEJ6ZzNrMHVhVkVlNHds?=
 =?utf-8?B?WWE5RTc5TmxIVi8xNzZsK2l5MERGZ1FvdjJDblhHS3Y0aE03cmcxS21lTUdH?=
 =?utf-8?B?SUJEVFZEQ2hNTEZFbUdtTzJUbCtJS2xrRG00aUdWTktmKzJGWUgvU1NXZHJV?=
 =?utf-8?B?U0NGbFNoZ1JGMTY1NzdJWm8zblUxQXVxNUhhSG9yNDRSTm8rNUJSMVdmTVJH?=
 =?utf-8?B?SCt4d29qTmdMMk9HZVFiWEg5bFZPMGtkcDFyNXZZU04weTVHb3NIcFdYUUZ2?=
 =?utf-8?B?c1QrbTFIZTlFWi9WODQvNVlvMWZkZnN1d0h3WDA0bFMxMzE5bEU4WTdLV25k?=
 =?utf-8?B?UGlPZHl2SVhxQzZiWGVHajhTQXV2U2p3Wm1pdHBFRHBvclBvSkFJK1Ewcmwz?=
 =?utf-8?B?SG9uWVgzR2lkY2RrUnlYUFVHZXF4b0JYUld4VFpOQXFCT3lScXRIS3FHeGdt?=
 =?utf-8?B?K0Y3MHc4enlId0ZwRGFZL0FBWVJzZDJzemtSWGpxNUQ0S1luUGNnNGFPMld3?=
 =?utf-8?B?RW55Smsram1ReE9sNE5BYm5KWE5YMGx2TjZ1WWNVbTVRS1pvNWdWaTFxUzZp?=
 =?utf-8?B?ZU13T2cvc1JOQVA1Wno4MXVTRlI0eDBRbTZCRS9YdnhWSjdhVHVGK3NGcmxK?=
 =?utf-8?B?bzhHZi8wdmQyanlPMGxRMHdTVGJsaXA2TGh0UW1ZR0xOL05mMzQ3NktPTnVY?=
 =?utf-8?B?UktCVGhucGh0SW9XbFdxRnBhbUxrMFp2ajFaWGRtbUd2MTJPWDlZcUw0ZVJa?=
 =?utf-8?B?NUl0cnc1b0ltVFFsNU93NUt2amdPM29PR3l6Sno1Zmt0RW8xOTJrT2tXYUhl?=
 =?utf-8?B?Uy9rYkliVmdRMW5UTk9nM0ljdUxMbnBpQ01FRy9zT01Ddmo0ZUlkTXZQNVBl?=
 =?utf-8?B?dDl1OHJveEM0MGJDc21xM3I0NzA4ZmJ4YU5pS2NqMmFvN1N6YWJGZmxad0xT?=
 =?utf-8?B?Q2Ywb1dlZnhOWkN1RVhBK0wwMWtsT25KSjdCK3ZERW5KNUovOU5pV21ObWda?=
 =?utf-8?B?RURRVERRK3lIdUdONldSME9zajhpd2FiV0xTbS9aWmVwNEZQY0JGVktVWVZa?=
 =?utf-8?B?SDJXSWJRcTUxYzRvUkdGUFRSYXB1emkvVlFiK2laZlNMSkRxelY4YThxWXkw?=
 =?utf-8?B?b296VE90MlJTb0cwaEs5NGlSUmdsOXBDdU9pWXpLMDB1U3l4dGRaSTh5eDVL?=
 =?utf-8?B?cE5FSkhXZ3NMMXpvQjV5ajNhZ0VhQ1RyRTMrQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?amdqSnNaRGhETk5IREhXNnc4eW9pc0oxa2Q1SVVBTzhiZXVra2xkeUxlUDAw?=
 =?utf-8?B?SGIydU42aXV2VmpkMFRwMkVHQlRLSTFDKzhjcHdNOHZOdWZ1LzYyYlg3RWIy?=
 =?utf-8?B?VTh4L0s0bzhlbm8yWkkvakNpZ292YVBLbmRwWFZ1eGFyczI3cGtONG5lQ09Q?=
 =?utf-8?B?VDRFR0liQ0UzWDVQWjB6MXFEaXdTL0krZi81Wm8vN1Q3eHdCWFZsbHcyN0Nh?=
 =?utf-8?B?S0VaRDFMTDZ6NUdCaG90VHlSOE1GOGd4Tm9VWldrUTB0a2k3VTNnK25ZcHRk?=
 =?utf-8?B?R1hHQUp3RGJERUlmNGRGT2o2NHRGWi9vSVJ3RHZzT1ZxNVNhVVNkR0twcFdt?=
 =?utf-8?B?ZitEaTAwaGVqQnNHcDdQckhpS3hRdGtOUG5qTFQ2eWExK1hVcmp4UGhyMFpQ?=
 =?utf-8?B?VXlwY3dFRzNEdnJsZjVDZFh2THBUTVpwaG5TMGVpYTM0Q1ZWTVhCRTllK2o1?=
 =?utf-8?B?UXRuSGk0ZVYzQTZNdFVQWFZFeklqUlRFK0luMEh0MmVrOXQxbDVnZ3cwcUZx?=
 =?utf-8?B?QjFvcU1pc0Y4UXBpN3g2SXoyVXBNZDlXRTFrRHg0cnpCOEZyQkhObWJxMTd4?=
 =?utf-8?B?eTBtRFZ3TkxmWkNBRCtVODFsdDJBOFNnd0NxRmdxYkpCVFp5UitsamliNHF0?=
 =?utf-8?B?b3grWWZTMU9nOVRhQVZxb2dFQnl2SUR4dTBwR3lYbjY3bGRTV3BoSllydVJM?=
 =?utf-8?B?YUdSQUtLQzI1RTZBV042TTFaOGRnMEVkS3R2NGhmMWtMS3VObWI2YVZRMTR2?=
 =?utf-8?B?aDZFZlRlR2tHa1V3dm9SR1lZUHh2RXdRUFk3UDQ5eStwM2VtZS90U2kwY0ZX?=
 =?utf-8?B?eVYzRWRYRkxKZFNEZ2dUdUcwS2NXQ1gzTTVLdlZpc1JUSkF3ZHlKc3NscWFU?=
 =?utf-8?B?NktNVkJCL1ZPUTZkdFRYaWVyQmlSeFNQNVFWQnM5dXhmSzZycjV3QzFWWFQv?=
 =?utf-8?B?SktaUnVCcXFsZlp0L0hQZXJSTWN3OUtDcDE4dEhLcVFYVHFJV2R2OVQrWE5W?=
 =?utf-8?B?Y3ZHNkR0ekpqMmtXOUdmeVp6b0NzcGxGbGxMUW1vY0JUNjhjSTVSSk0yVFdP?=
 =?utf-8?B?S01MeGQ2eUZ2SENPTkwxV0pBc0kxQmtlY2tvSEpKL2NZSGxIQngxWTd1MVFZ?=
 =?utf-8?B?aDNrTFVJblF3aWJwMTFHci9vMzlQL2Q3TWdZOEp6NXlQNmxTUlRwU0R4UTQ1?=
 =?utf-8?B?VEg2eUY1REtNdG1pTWRzaWVTZ3YvZVc0dzliK0RhTHdBVGdnTk5rd3hod29G?=
 =?utf-8?B?VXk3YzNzMGV0Y3VDRG9nQnFWNTJURW80Y0Z5aWZCZnZmaDBBSUtQMkRTcU9v?=
 =?utf-8?B?UUN3c1BSMmplUTlQM2Y1RUJrTmtvVzRMU2t1VkpOZFROcnNzdHVoS3R5Y3Jl?=
 =?utf-8?B?SDl4amp4N0FrWEJUWDZhOVNhYkdRM2owS04rdW1pZG4wTWFyNHA3OE8wRkEr?=
 =?utf-8?B?VWcrMC9reGY0NFFRMjJYcDJzRkJROWpIV1A3NFFmaU9ZY2x0bkN4UEFJdzNQ?=
 =?utf-8?B?dEhSZktza3FTSFVVay9kN3ZUQjYrdzJKZU5WZk9GeVhmUUp2a1FJSG9BZ2xI?=
 =?utf-8?B?dE9CSTZGdXFQMC8xb1NJM3Q5aUVuaTJuOVRhNVNaV1FIeXBKNWc5dTlQTUFG?=
 =?utf-8?B?NlhaSEx3enltWnZuSHpCSXFuU2xnUUtGY2Q2cnRHNWl3Z0hld2xDNWhjTURQ?=
 =?utf-8?B?Z3ZRZG5wVGVnUnMvdFd1LzluZnpwU0hTejhPQ1NOaVQ2MUgrQ2MxeGJxZlFP?=
 =?utf-8?B?a2hnUjdwbFNCbmlRZmtRbVV3K0tYWTZiN1JmNGQyY2xweXVYVk1FVU8xZVF0?=
 =?utf-8?B?MXhybU81QmcxdUNFT2J0K0U1d3l5eG5OakhqbTdXVzZrRXdJdEtvYmtCMUtC?=
 =?utf-8?B?aFhHU2VRU0kwaUtWTC9XM2FaVHBKZllWUFhJTEE0MUNlQUNVaHhmU2ZDTE5u?=
 =?utf-8?B?UkFCTEdVSFZKWnVhQXZjOVZrcWM4bkxONnA1N3hMS1ZVZEJndEl3eFU0R2N6?=
 =?utf-8?B?N3lYUmFOTWZ6VXFNMXIxT1ZxMjhuby9iaU5lRG10Tk5tYk9lbFFtZ0IybmhI?=
 =?utf-8?B?T040bjV1dlJhdTRKbVY5T3dWenBZVEw4bXlnSkNJMmw1dFpxVGdWaGQxM0Vq?=
 =?utf-8?B?aVFRUG9VeFpDYldKem83QjZQbmR2akRrbDUwQ3gxOW5EdnRWUWYzWllueUlQ?=
 =?utf-8?B?MXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 666542f1-f57d-41ba-381a-08de2d817b9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2025 06:52:08.0959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sxDB5e9PZdX4CySLgePNRkO6Dzcjg6Ge2AxyRqG7qMAFDlGutDjqQp/oJlvk3DSTAfUeV2xZElDd3E4EcmtzlHldoXIkrB2cbJ5TjQqS+20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7016
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764226339; x=1795762339;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gUw2b4csQz7XiKdG+3z9Fjf2N9dAECRaDJ6vCQbZM/s=;
 b=N3fpvNWFTjHaeADA0betCvBm8utcxjKP9C1QmG7WdrL5VKafbHv9lvd/
 hVZMba75NjC8swyr8WzmLyonEC+X7egJzyak1gcV3XRtkmgy/Cy00bduc
 bpVg3qn+9/4xI9XjecP2gnAkb+3LwZxqO5px1nO5vTIkGe/arTBVtep2R
 oMkeFuKvcdOi1rGIe4/QHXphiSVZ6TbHl4dxCi484Q7Ns+8pZ0A2iArJ9
 Un9ETqsE8/cnnDwhutlUluNhXHV8tf8dz0CJ4wNFaCXnZJV0QPfoxKZBV
 CMG7gsd5OaNRPtcnH7/MKx4ZHRK6Jq1cB/rnMcwXr+GETLZfhGPEFrhlI
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N3fpvNWF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: fix race condition in
 TX timestamp read for register 0
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gQ2h3
ZWUtTGluIENob29uZw0KPiBTZW50OiBUaHVyc2RheSwgTm92ZW1iZXIgMjcsIDIwMjUgMjo0OSBQ
TQ0KPiBUbzogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsg
S2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEFu
ZHJldyBMdW5uIDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+OyBEYXZpZA0KPiBTIC4gTWlsbGVyIDxk
YXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsN
Cj4gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJlbmlA
cmVkaGF0LmNvbT47IFJpY2hhcmQNCj4gQ29jaHJhbiA8cmljaGFyZGNvY2hyYW5AZ21haWwuY29t
PjsgR29tZXMsIFZpbmljaXVzDQo+IDx2aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+DQo+IENjOiBp
bnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsg
bGludXgtDQo+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFNoYWxldiwgQXZpIDxhdmkuc2hhbGV2
QGludGVsLmNvbT47IFNvbmcsIFlvb25nDQo+IFNpYW5nIDx5b29uZy5zaWFuZy5zb25nQGludGVs
LmNvbT47IENob29uZywgQ2h3ZWUgTGluDQo+IDxjaHdlZS5saW4uY2hvb25nQGludGVsLmNvbT4N
Cj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXQgdjJdIGlnYzogZml4
IHJhY2UgY29uZGl0aW9uIGluDQo+IFRYIHRpbWVzdGFtcCByZWFkIGZvciByZWdpc3RlciAwDQo+
IA0KPiBUaGUgY3VycmVudCBIVyBidWcgd29ya2Fyb3VuZCBjaGVja3MgdGhlIFRYVFRfMCByZWFk
eSBiaXQgZmlyc3QsIHRoZW4NCj4gcmVhZHMgVFhTVE1QTF8wIHR3aWNlIChiZWZvcmUgYW5kIGFm
dGVyIHJlYWRpbmcgVFhTVE1QSF8wKSB0byBkZXRlY3QNCj4gd2hldGhlciBhIG5ldyB0aW1lc3Rh
bXAgd2FzIGNhcHR1cmVkIGJ5IHRpbWVzdGFtcCByZWdpc3RlciAwIGR1cmluZyB0aGUNCj4gd29y
a2Fyb3VuZC4NCj4gDQo+IFRoaXMgc2VxdWVuY2UgaGFzIGEgcmFjZTogaWYgYSBuZXcgdGltZXN0
YW1wIGlzIGNhcHR1cmVkIGFmdGVyIGNoZWNraW5nDQo+IHRoZSBUWFRUXzAgYml0IGJ1dCBiZWZv
cmUgdGhlIGZpcnN0IFRYU1RNUExfMCByZWFkLCB0aGUgZGV0ZWN0aW9uIGZhaWxzDQo+IGJlY2F1
c2UgYm90aCB0aGUg4oCcb2xk4oCdIGFuZCDigJxuZXfigJ0gdmFsdWVzIGNvbWUgZnJvbSB0aGUg
c2FtZSB0aW1lc3RhbXAuDQo+IA0KPiBGaXggYnkgcmVhZGluZyBUWFNUTVBMXzAgZmlyc3QgdG8g
ZXN0YWJsaXNoIGEgYmFzZWxpbmUsIHRoZW4gY2hlY2tpbmcgdGhlDQo+IFRYVFRfMCBiaXQuIFRo
aXMgZW5zdXJlcyBhbnkgdGltZXN0YW1wIGNhcHR1cmVkIGR1cmluZyB0aGUgcmFjZSB3aW5kb3cN
Cj4gd2lsbCBiZSBkZXRlY3RlZC4NCj4gDQo+IE9sZCBzZXF1ZW5jZToNCj4gICAxLiBDaGVjayBU
WFRUXzAgcmVhZHkgYml0DQo+ICAgMi4gUmVhZCBUWFNUTVBMXzAgKGJhc2VsaW5lKQ0KPiAgIDMu
IFJlYWQgVFhTVE1QSF8wIChpbnRlcnJ1cHQgd29ya2Fyb3VuZCkNCj4gICA0LiBSZWFkIFRYU1RN
UExfMCAoZGV0ZWN0IGNoYW5nZXMgdnMgYmFzZWxpbmUpDQo+IA0KPiBOZXcgc2VxdWVuY2U6DQo+
ICAgMS4gUmVhZCBUWFNUTVBMXzAgKGJhc2VsaW5lKQ0KPiAgIDIuIENoZWNrIFRYVFRfMCByZWFk
eSBiaXQNCj4gICAzLiBSZWFkIFRYU1RNUEhfMCAoaW50ZXJydXB0IHdvcmthcm91bmQpDQo+ICAg
NC4gUmVhZCBUWFNUTVBMXzAgKGRldGVjdCBjaGFuZ2VzIHZzIGJhc2VsaW5lKQ0KPiANCj4gRml4
ZXM6IGM3ODlhZDdjYmViYyAoImlnYzogV29yayBhcm91bmQgSFcgYnVnIGNhdXNpbmcgbWlzc2lu
ZyB0aW1lc3RhbXBzIikNCj4gU3VnZ2VzdGVkLWJ5OiBBdmkgU2hhbGV2IDxhdmkuc2hhbGV2QGlu
dGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogU29uZyBZb29uZyBTaWFuZyA8eW9vbmcuc2lhbmcu
c29uZ0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IENod2VlLUxpbiBDaG9vbmcgPGNod2Vl
Lmxpbi5jaG9vbmdAaW50ZWwuY29tPg0KPiAtLS0NCg0KLi4uDQoNCj4gIGV4cG9ydCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMA0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyNSBp
bnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkgIGNyZWF0ZSBtb2RlIDEwMDY0NA0KPiBleHBv
cnQNCj4gDQoNCi4uLg0KDQo+ICAJZm9yIChpID0gMTsgaSA8IElHQ19NQVhfVFhfVFNUQU1QX1JF
R1M7IGkrKykgeyBkaWZmIC0tZ2l0IGEvZXhwb3J0DQo+IGIvZXhwb3J0IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0IGluZGV4IDAwMDAwMDAwMDAwMC4uZTY5ZGUyOWJiMmQxDQpQbGVhc2UgZHJvcCB0aGlz
IHVucmVsYXRlZCBmaWxlIGZyb20gdGhlIHBhdGNoLg0KRXZlcnl0aGluZyBlbHNlIGxvb2tzIGdv
b2QgZm9yIG1lLg0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRy
Lmxva3Rpb25vdkBpbnRlbC5jb20+DQoNCj4gLS0NCj4gMi40My4wDQoNCg==
