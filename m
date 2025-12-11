Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA1BCB5219
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 09:38:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EB0E40F2F;
	Thu, 11 Dec 2025 08:38:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3DmqQXe_fE6m; Thu, 11 Dec 2025 08:38:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08B7C40EFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765442329;
	bh=tvqKnCP1pJ90M3KiHni+DmlpcokQYIVVdWczaNs9ycg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5F7GKnenj/3VvyMDF4DKrM56l3sZ7apTBAGj4jxPuZtCqcyy6d+Bmvo/TJOpPF9qn
	 +HijNujApEFTFJAiNzpPIU95PxOTOw2cn2leSYJxQwLww67fhh3dA3j2XsgRgZ3MMR
	 /Fn+rpnoaCC8xKca0elBbPP5ZCkLO6q/lgaFFkhESSGFcFx5COpFZ+0z3sg9lCdu2M
	 redk/PoZPz5YFiNWx6NQ8AyBxktQsoTgWiBLvQMpRtLSGLpoj++1TAdRLNXqzhLZCn
	 Mzqti5zFX1sala++e6EM+xsxCF6SDPZW2SLzo7Hm0FA+s0xULZi4dcN1hKstYZrC3p
	 00LGwKPjlMHvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08B7C40EFB;
	Thu, 11 Dec 2025 08:38:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D90E2C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 08:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13FE940809
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 08:38:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0l6YOgKqmLMF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 08:38:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0F322404F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F322404F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F322404F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 08:38:45 +0000 (UTC)
X-CSE-ConnectionGUID: 0ZT7pLN/T0ayEkt/g3To8Q==
X-CSE-MsgGUID: rgoiUqdkTci0WMdBrgykvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="67306547"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="67306547"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:38:45 -0800
X-CSE-ConnectionGUID: F1lIsFRWSlaCMKMmUZscYw==
X-CSE-MsgGUID: RodHhD6MTaeLDbXQ2XDSbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="201664094"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:38:45 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 00:38:44 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 00:38:44 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.45) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 00:38:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WKoQHyiwg6I/4l0ak4Ap/nhF+QTm66gYiik1TYCkXips8YcZMeTYyHiGod6a+61m4DgBiY35tcn8qf5qKnFKAcTxJwhlFdQ6XCgkdMDv3wWDjdtpInrbCkHWwStbh+RzxPZPFS6QkJtVoGPk/a3Bo+lwZerZBbk/fPL9n9PWbFTyd7RqwQETVDaa5O3ZryRh5U1cqrS53RryiIY12Ac4Pl8xhNO5kaaIKYU+ih0ElVqs29lWllyRI4tveH3EpynBUIakUgEr5MXKSh0S/B9hIRWFQZ49kRBD/M5nt1CGAhMdnCrwRUO5hQg7MGcE49R5/+uU7OaVAOEBD3xCE5aF9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tvqKnCP1pJ90M3KiHni+DmlpcokQYIVVdWczaNs9ycg=;
 b=MwPPdqGuLZZw/HFhoTgMd1gHNV056Z9zyyPn1xUcWNQgj3EnCSnXXSh7gkBpu+va0bIxCh1qM57pYTIlBWkMU7mZR2tfjbrt/XB5+FJrmxKDbwjM3mpE13t6uM5AkmbVpfDDHT4MB2j2px0QWvbkOVFAV0b/liC5jOA+HRErjsQzfLr8a+/xb2GiS3jqT76+1uzYhFUT7WAUWRvc2KBEQoEO0aCsU3GlzM78f8h+SCyDgKrKjfdydjfYNCr+dyscjTXvzlu1/OpDQlwVdIrheiD0rcoDNAkma6ZKGyiXsTKqZ/zt7LD4DP6AtsK40SFCHEeTHNrfpxWnul+ko8UM5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by PH7PR11MB7987.namprd11.prod.outlook.com (2603:10b6:510:242::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Thu, 11 Dec
 2025 08:38:42 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 08:38:42 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "gregory.herrero@oracle.com" <gregory.herrero@oracle.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v4 1/1] i40e: validate ring_len parameter against
 hardware-specific values
Thread-Index: AQHcV7mlP42eVHSQWEK9lWlL+6cfLLUcQ4fg
Date: Thu, 11 Dec 2025 08:38:42 +0000
Message-ID: <IA3PR11MB8985AAEA3AFD0C62275060B68FA1A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20251117083326.2784380-1-gregory.herrero@oracle.com>
 <20251117083326.2784380-2-gregory.herrero@oracle.com>
 <IA3PR11MB898600CF2E71D699036834B9E5C9A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB898600CF2E71D699036834B9E5C9A@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|PH7PR11MB7987:EE_
x-ms-office365-filtering-correlation-id: c776dfc9-5acc-4a9a-7e75-08de3890b0d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|921020|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Vmg5MnM4YUtFZ1BJSW1mc1NlMTBDZzhBWlZmTUFaL0ovWXVuQnNLdDY5L21M?=
 =?utf-8?B?Z0l1MmtwU29veE9aaXdWMk80MnluakpVaEE0SjNpTG96Y3hyaVdrZ3U5WWtH?=
 =?utf-8?B?OHByNDBSMDF2TU5nbHhnLzVVTjZuaUE2TU91UjFkaTdNSHhnZFhsU2JoOGdR?=
 =?utf-8?B?SjVySG02TFVtZ0J5WXVEWGtQMDAzSVdZdEdvZlkxRlZxa09WUkp0M2greXhB?=
 =?utf-8?B?Tzc4LzVGUmtRK2Y0NEsrY2E2cXN2Y2RlaDFQMHBZbitpYk1rWVIxWXdCSVh5?=
 =?utf-8?B?K0VMbGpNaHJUVGx3L2VZczczbDFDRXRsdVB5Q2VWc00rZGJiQ09HaW5kYWtP?=
 =?utf-8?B?R2grR21RSzRHWnNXNTRRL2h1d2N5blVYQ0FsM1pxTm45WWxXR2RZOUFXbnFh?=
 =?utf-8?B?NEFTdWY1VW9KNDllYkVpVkVYbzAzMTZGbWg5KzFqamMxdmpVaWJNSDdJakdY?=
 =?utf-8?B?bXBKbXQ0NWdQdkZlbTBySGlXOUJJUFZRZ0N1Q21XalFPUlB6NHJ6MkFXcDJ0?=
 =?utf-8?B?cFY0d0lRMXJZYmFobzJCK2dJam1DaWl3Q1A1Sm1LNXlqZmxYb0o4WjA3UWtV?=
 =?utf-8?B?dWNuS2JXMzEzM2hCRWZsOW15cEp3NS91V3BzK2lPQkNwTk9kUlc0ODM4Y1hS?=
 =?utf-8?B?RFVMYUlLTVZGTGNBQkoxZ2RxQ1gzYStEalR0MjY4bWdhYzQzMkd5YkwrUm5n?=
 =?utf-8?B?UG1HUmNHL3Y0aDArVWJiUGdjeHVNUWxOWkpBZ0xkc1hIRzZsckYrTFBpamFC?=
 =?utf-8?B?K29qU0pkLzdXM2JoTUttM3E2QXNETW9KemVDcmsyYy93ZHhUUEJGRWpGZEdZ?=
 =?utf-8?B?c2JRbVVUc3VzbkN6aStSZWdXaHFETDVzUUQ2YmIzaHRlZHZlM2orU1VKb1hF?=
 =?utf-8?B?QnhQSVNtUEdNZkFqS3AzVnphZXZFa1orUTdBTmp0Vms0V3Y0bGFRellUTmd1?=
 =?utf-8?B?dkdmVUlhOW5aWUpVZisyUWptTUpUcURsM3p5eTk5dXJrR2pjUXJVYytBT3Bi?=
 =?utf-8?B?bmNmZjhla0QzUnZMZGRGS3BBU085YkxPREdLTG5BZ0V1VkNMTlBXWGNqVm90?=
 =?utf-8?B?NjVBWnFWU0kvTHp4TkdJYndOcWpacVBqOUhyTlB2ZW1kZnkxZXRRQWZxKzk1?=
 =?utf-8?B?RDFZYmlpbFdGeWVhcHl5MklndDg1eGE1bUsyNG0wbVdkZC94MW1hSWZsa3ZS?=
 =?utf-8?B?VlptalI4TkxBWVYwUTNsRkpqTjA5d09MWE94TUI1b1FramRUbjJEV3R4WDFy?=
 =?utf-8?B?QnNQN3psMGxLVVphQjR1ZXpKZGluSVc0UFNNQ0YvL0RYblIwVEFXRWZDN2FP?=
 =?utf-8?B?YWlDY1lSeDBrQnIxaFhUdVZXQytlUVlRRGxrdnlnNExBcHU3d1JneWt0QTNp?=
 =?utf-8?B?TnJFSW1JQVJxaWRpL1lPSkNSRUh5UGtHQTFHK2lhdHR3VzVWTE5EZCtZcW05?=
 =?utf-8?B?bGMrakpFaWRpeTdRSmZwY3lBREwvV0lkbW9jOGJ0MXJNYkVLVUUvK0xFMG1T?=
 =?utf-8?B?WUViNk5OTzJiZTlhNkV3bnVQKy9jYXlqU2JtMHh4MDVaY2crd29sbWJMd3pz?=
 =?utf-8?B?L05qTDQxWjVpc2RsNjVSNlhKcUp4LytKbE5Pd1plWit0SE5BM0RDUHlUL3R3?=
 =?utf-8?B?Qno5cnQyN0MwcUtjbjN5d0J3NzUxYnlEOHovanRSd0J6VmhYZ0lub1JXVFJy?=
 =?utf-8?B?QnJpZVdZNXZ3b3F6U2hydzZCZW5GNzdPKytpQ0JralhOSzZ4YjR1QXY2SnZ4?=
 =?utf-8?B?TU9ibnQ3Rko3UnBKVDc0RWR1M1BCb2JBTCtJeUFZVXFBeVFWWVJNNW4zVFNF?=
 =?utf-8?B?ckpmZFpCQjUwcy9uMlJuUlo1VmRFeGZQeTRoV0RXK0xzZHZ5b2g3d2pjQjVj?=
 =?utf-8?B?Nm9kV2NVNWk2ZTZ4WkFtL0VrNU5WZkJka2ZoVlloU3NKMzJkTWMvR29Jd2p0?=
 =?utf-8?B?TXAzQ0J1eThZT1dtMDYvZk9FNC81MHFXQS92b2VONCtZMmJ1dHdTWWtsRmVx?=
 =?utf-8?B?VkRHck43aHZVeFpWbkxPcGowNzk4a2lXbWlzYVVQOWUrZDZFb25FM2dHWTla?=
 =?utf-8?B?d0hXVHg2NlNybHkyQXpVckhSTHY5UVQrVGhzdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(921020)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bHNjN3VRSENLWHpUYjczcU9PSmZISVowSFhxSGJUeDVNN3JJRy9ieWNkUTdO?=
 =?utf-8?B?M1lpUGZNQWRjdko3NVZoREQ0Z1N6VWY2QUMrUUhwM3NZT25VKzVMeUhVaGtQ?=
 =?utf-8?B?cDJWckp4TlJLTURMTlowYzBGalUweVY4bGxqdHNYUVFTSytNQWV2NzhNQUds?=
 =?utf-8?B?YTd6UmRlV1FtUzdwdjFxbkNRMkowYWN6aHpBaDAvVnF2WkZYc2J6RjFVZ1hm?=
 =?utf-8?B?dzQ2YndpMkxDTWhFYWoyZ0hJU0ZJUWNkSzJkc092STJDQ0psQXYwSWpWbk5o?=
 =?utf-8?B?YmhLYktmWDVKU0xkWUZ0eGxiWGVkdElOaXFvc2RSNm9rejJNMmdwZ3l4K01F?=
 =?utf-8?B?UTBxejhvN0c4b3ozTDdJNWxSMHIvd0lKQmtXc1BGVkc1bUJVT0lnVUdwWWMz?=
 =?utf-8?B?d2FoRlRHcUdoR3dwT2ZrZnhTNE9DYmNJVnFJaHlBSXA0UFE4NzhWWEJWSC9U?=
 =?utf-8?B?dzlFaWErc0ppVXlGZ1ZhOWx2R1dUTklVbEZtRGcyclo5cXpBYnNDVzlsTVB1?=
 =?utf-8?B?QWhIVmpvUkVjcDh2MkJ3cEhFNHBmd3JvZ3RvQithSGpjdDliUDBrQUlwMGND?=
 =?utf-8?B?eGtEV0pBa0ppNmlxeDAyYk1pN3hKcHJMaG9hWG9vSytkQlZzdXk5NzZLMW5y?=
 =?utf-8?B?MmxQMGRUNnNybUdUSHh0Ly9yNWNLVmk5azdnT0J3QnNSVk1LMU5BT21TTzRC?=
 =?utf-8?B?NVN5TEV6bW1IUlRvN1BCeC9aTXdBb1BkNFVmM0xMQXNZNjBQdGZVM1pNcmZZ?=
 =?utf-8?B?MVRielRRR0g5RXBZU2JaTHNjMTExeU1iWXBuc0xpMFNadzgzaFJZQmhWUEYw?=
 =?utf-8?B?RWl5QmFyTXJ1aVRPQ1Z4Nld5VDBDVXNMT1FnVkIvTWk1dXJMVVdyZGJjMUsv?=
 =?utf-8?B?b3pPaGFuclk5QkVGQlM2ZERpK2NWUmxqK1BIbVVQaHFCalQ5b1dueFpkVDZh?=
 =?utf-8?B?U1Q1aEhDY1lVNFVmd20welhZVFRnTzlEOUhRRkpSdUlYZUptb0lGNEZjbVZ4?=
 =?utf-8?B?RXhYZHdMMXNoREJMeUx2QlNjeXMreEVTRHFQMTZza1lPU3ovdHUxMm81RFQx?=
 =?utf-8?B?MWU5d244RTNBVWYxWmVyQ2FQa2dDelNWTnduSlloV2piVDR3SzB0U3NaTG9W?=
 =?utf-8?B?OURhYVZtWXRwN2xlUmYza25NL2l0dEdCQnJmSHV3ZFZyRGx1ajQra05FdW96?=
 =?utf-8?B?Y3ZyLzBuOUVEZmZMS0duRzhnMi9KQnBhSTVSaXptRk5GRTYrUnBqZFN4SHho?=
 =?utf-8?B?bEVHbFFMbU1WZG1ibEhZQ0pkYkwwM0tzN3ZvT1dOOTE0T3pvcGVMUkVXR2lM?=
 =?utf-8?B?YWZpSDdyeVNha01WN3FIU0hia3hWTWV6b2FvWGE2bXQxbmszc0s5cXF6VEhm?=
 =?utf-8?B?V1JTZi9BODQrbHdZcU5IYTJIM1AwMmZIcnFkSGJHWnJGczFlcHhYRVRycHor?=
 =?utf-8?B?MlF1Qy9qY0xzeUUvcmFNTFQ0ZVVWb3dKR1IwcTBVdTFMOEhySTBRWDVRemlm?=
 =?utf-8?B?NnUzVytwdFlIdEdnT3BINjJxZVJiS0gvRUFCUFQxL1d5MHUrS3ZxTnM5N0Ra?=
 =?utf-8?B?WGNSckpxU1FCTHgzRWwvN1J1OTdEeG5FVGx0MFdMT1h6VVZJenBFWEtPQ2o2?=
 =?utf-8?B?NHJveVpkK3NyZEhvaTVzcytLc0Z2L21VNE5HZ25jd3dtOWNwTzB2Slhaa1U5?=
 =?utf-8?B?aHNlWHF4bEt2OUxMNTc0MUI1Q3Z6T0h1d0Vac04vdXRmUEQxVEhYZFp2dCtO?=
 =?utf-8?B?TXdmY0szSTR4M2t3aVdMaGg2T05rdzY1WG5WY053M3d3bHhKRHJ0MjN3NFlI?=
 =?utf-8?B?REpNaWZueFN0b2FFdkdWeDgyeUZzR3NMK3NWejRORjE4cnBOTEdFR2NRd05n?=
 =?utf-8?B?Y0tGWlBiRlNsYWplN3JtdGVlbmJ4SWZPeUNqemVaZlBQK2plWnlmVUFRMTZ5?=
 =?utf-8?B?YW4wK0ZSWStKSXJUVVVEV3NzcXQwUWNab3ExSkEvN01YYWtkWUkyQ1M0clBq?=
 =?utf-8?B?dU91SFNyN1VmVy96QjI5NHpjTmRvR3J4UmNuTFpGUGgva0FCVVo1YkJJaDdX?=
 =?utf-8?B?RDU4RkRrQ0o2TEN0UnpyQkdUMzJJZFpLVDJlVmNBaEtBWVhiR0R4c2FzM3pj?=
 =?utf-8?B?N2UzbStuWXk0K3VJRmFhYWZNSVUxWWZNbWlhMEpiRWpqYTYzbWRlQ3ZORm5o?=
 =?utf-8?B?QkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c776dfc9-5acc-4a9a-7e75-08de3890b0d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2025 08:38:42.6133 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2Y9vzcWDK9FFrL/UjLPAl7g5l3SNIIIbZF4PJkeZ5hsreQP/eRYxQME3bZBYsAu5S8EToNIMtGH6MK81AirrC070wWXYUfCIYuX499F0SAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7987
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765442326; x=1796978326;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tvqKnCP1pJ90M3KiHni+DmlpcokQYIVVdWczaNs9ycg=;
 b=LCsqMGTrjcDlkSy1qVAGPVBnk7e6l2ybF8hPF0yK9PFlo+oF4YJW0e0u
 feu7ADUUxeC5leUoBtQeOsq4stqzMiodtZoOC1auasNfQ8TLI36H9NW9/
 OKnHPwWBUR0DtjxY26GxaOIKL0r/7yFWEhM1uE/dgtEoI7AVtUmD3iwR+
 tXuXF5Is38qzSdbyI+FKJOn5YpISsmik7ZwGqz3w81HEzRSYFQ5WF4xhZ
 TvHSY++tfWYNvu33YNaXtylF7/TsxDeP34zPgWnvrkAVHNoQ/GQDpnASm
 OTMUZKi6QxYOwT7PpLcqEGfmnrpwG4179z+UrLS/ZEFDVtuVFGr61OvEu
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LCsqMGTr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 1/1] i40e: validate ring_len
 parameter against hardware-specific values
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBMb2t0aW9u
b3YsIEFsZWtzYW5kcg0KPiBTZW50OiBNb25kYXksIE5vdmVtYmVyIDE3LCAyMDI1IDEyOjU5DQo+
IFRvOiBncmVnb3J5LmhlcnJlcm9Ab3JhY2xlLmNvbTsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFu
dGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15
c2xhdy5raXRzemVsQGludGVsLmNvbT47IGFuZHJldytuZXRkZXZAbHVubi5jaDsNCj4gZGF2ZW1A
ZGF2ZW1sb2Z0Lm5ldDsgZWR1bWF6ZXRAZ29vZ2xlLmNvbTsga3ViYUBrZXJuZWwub3JnOw0KPiBw
YWJlbmlAcmVkaGF0LmNvbQ0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7
IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3Jn
DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggdjQgMS8xXSBpNDBlOiB2
YWxpZGF0ZSByaW5nX2xlbiBwYXJhbWV0ZXINCj4gYWdhaW5zdCBoYXJkd2FyZS1zcGVjaWZpYyB2
YWx1ZXMNCj4gDQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZy
b206IGdyZWdvcnkuaGVycmVyb0BvcmFjbGUuY29tIDxncmVnb3J5LmhlcnJlcm9Ab3JhY2xlLmNv
bT4NCj4gPiBTZW50OiBNb25kYXksIE5vdmVtYmVyIDE3LCAyMDI1IDk6MzMgQU0NCj4gPiBUbzog
TG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgTmd1
eWVuLA0KPiA+IEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVs
LCBQcnplbXlzbGF3DQo+ID4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBhbmRyZXcr
bmV0ZGV2QGx1bm4uY2g7DQo+ID4gZGF2ZW1AZGF2ZW1sb2Z0Lm5ldDsgZWR1bWF6ZXRAZ29vZ2xl
LmNvbTsga3ViYUBrZXJuZWwub3JnOw0KPiA+IHBhYmVuaUByZWRoYXQuY29tDQo+ID4gQ2M6IGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBs
aW51eC0NCj4gPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnOyBHcmVnb3J5IEhlcnJlcm8gPGdyZWdv
cnkuaGVycmVyb0BvcmFjbGUuY29tPg0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2NCAxLzFdIGk0MGU6
IHZhbGlkYXRlIHJpbmdfbGVuIHBhcmFtZXRlciBhZ2FpbnN0DQo+ID4gaGFyZHdhcmUtc3BlY2lm
aWMgdmFsdWVzDQo+ID4NCj4gPiBGcm9tOiBHcmVnb3J5IEhlcnJlcm8gPGdyZWdvcnkuaGVycmVy
b0BvcmFjbGUuY29tPg0KPiA+DQo+ID4gVGhlIG1heGltdW0gbnVtYmVyIG9mIGRlc2NyaXB0b3Jz
IHN1cHBvcnRlZCBieSB0aGUgaGFyZHdhcmUgaXMNCj4gPiBoYXJkd2FyZSBkZXBlbmRlbnQgYW5k
IGNhbiBiZSByZXRyaWV2ZWQgdXNpbmcNCj4gRmlyc3QgcGFyYWdyYXBoIHVzZXMg4oCcaGFyZHdh
cmUgZGVwZW5kZW504oCdIChubyBoeXBoZW4pIHdoaWxlIGxhdGVyIHRleHQgdXNlcw0KPiDigJxo
YXJkd2FyZeKAkXNwZWNpZmlj4oCdIChoeXBoZW5hdGVkKS4NCj4gUHJlZmVyIOKAnGhhcmR3YXJl
4oCRZGVwZW5kZW504oCdIGZvciBjb25zaXN0ZW5jeS4NCj4gDQo+ID4gaTQwZV9nZXRfbWF4X251
bV9kZXNjcmlwdG9ycygpLg0KPiA+IE1vdmUgdGhpcyBmdW5jdGlvbiB0byBhIHNoYXJlZCBoZWFk
ZXIgYW5kIHVzZSBpdCB3aGVuIGNoZWNraW5nIGZvcg0KPiA+IHZhbGlkIHJpbmdfbGVuIHBhcmFt
ZXRlciByYXRoZXIgdGhhbiB1c2luZyBoYXJkY29kZWQgdmFsdWUuDQo+ID4NCj4gPiBCeSBmaXhp
bmcgYW4gb3Zlci1hY2NlcHRhbmNlIGlzc3VlLCBiZWhhdmlvciBjaGFuZ2UgY291bGQgYmUgc2Vl
bg0KPiA+IHdoZXJlIHJpbmdfbGVuIGNvdWxkIG5vdyBiZSByZWplY3RlZCB3aGlsZSBjb25maWd1
cmluZyByeCBhbmQgdHgNCj4gPiBxdWV1ZXMgaWYgaXRzIHNpemUgaXMgbGFyZ2VyIHRoYW4gdGhl
IGhhcmR3YXJlLXNwZWNpZmljIG1heGltdW0gbnVtYmVyDQo+ID4gb2YgZGVzY3JpcHRvcnMuDQo+
ID4NCj4gVGhlIG1lc3NhZ2UgZXhwbGFpbnMgdGhlIGJlaGF2aW9yYWwgY2hhbmdlIGJ1dCBkb2Vz
IG5vdCBzdGF0ZSBob3cgdGhlIGNoYW5nZQ0KPiB3YXMgdGVzdGVkIChlLmcuLCB3aGljaCBNQUMg
dHlwZXMgZXhlcmNpc2VkLCBldGh0b29sIC1HIHBhdGhzLCBWRiBjb25maWd1cmF0aW9uDQo+IHZp
YSB2aXJ0Y2hubCwgYWNjZXB0YW5jZS9yZWplY3Rpb24gYm91bmRhcmllcykuDQo+IE5ldGRldiBy
b3V0aW5lbHkgYXNrcyBmb3IgdGhpcyB3aGVuIGJlaGF2aW9yIGNoYW5nZXMuDQo+IA0KPiA+IEZp
eGVzOiA1NWQyMjU2NzBkZWYgKCJpNDBlOiBhZGQgdmFsaWRhdGlvbiBmb3IgcmluZ19sZW4gcGFy
YW0iKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IEdyZWdvcnkgSGVycmVybyA8Z3JlZ29yeS5oZXJyZXJv
QG9yYWNsZS5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZS5oICAgICAgICAgfCAxOA0KPiA+ICsrKysrKysrKysrKysrKysrKw0KPiA+ICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jIHwgMTIgLS0tLS0tLS0t
LS0tDQo+ID4gLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYyB8
ICA0ICsrLS0NCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxNCBkZWxl
dGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGUuaA0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
LmgNCj4gPiBpbmRleCA4MDFhNTdhOTI1ZGEuLjViMzY3Mzk3YWU0MyAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiA+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oDQo+ID4gQEAgLTE0MTgsNCArMTQxOCwy
MiBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBpNDBlX3ZlYg0KPiA+ICppNDBlX3BmX2dldF9tYWlu
X3ZlYihzdHJ1Y3QgaTQwZV9wZiAqcGYpDQo+ID4gIAlyZXR1cm4gKHBmLT5sYW5fdmViICE9IEk0
MEVfTk9fVkVCKSA/IHBmLT52ZWJbcGYtPmxhbl92ZWJdIDoNCj4gPiBOVUxMOyAgfQ0KPiANCj4g
Li4uDQo+IA0KPiA+IC0tDQo+ID4gMi41MS4wDQoNCg0KVGVzdGVkLWJ5OiBSYWZhbCBSb21hbm93
c2tpIDxyYWZhbC5yb21hbm93c2tpQGludGVsLmNvbT4NCg0K
