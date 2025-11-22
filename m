Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF2AC7C7BF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Nov 2025 06:04:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42AE884BF1;
	Sat, 22 Nov 2025 05:04:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lMUPyW0R6rw2; Sat, 22 Nov 2025 05:04:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87BC3816E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763787842;
	bh=8LBJS/zXypZhd1S9SDHoihQ7JqYexM+Pz1+LFECgSrI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cFUhlotlR//6UzW+JR7tBE5vB6O/Gq0CsDsHVEmh19mnuGKzm49wh8+ttO0nRvVCZ
	 FrMaWihYKhjr26CG3FzV8GOzPRLTt3reHVbvRQP1UJNmDE3XHcnN972JttxfdKUCzy
	 7no6SAyL+HY2kANvOPvFzTzHs0s6JfhIIfrAfRnMj6omcku4lSjFSFZSht0yNBYNZp
	 N3IgBKXefXA8dlaa+HaAepBzQWFtMI0B6j0PQcr+4Bz3ZPnCPt9eSblE4OlQp3pC3X
	 KWNd+f+ja8T/4zlwZQcLUiQZsgU8gVdOHRDxAAYjMX+qLcjpZ1YslrEr9A33e7MlQG
	 XiLiHvO0KwSwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87BC3816E3;
	Sat, 22 Nov 2025 05:04:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 572BC158
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Nov 2025 05:04:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E11584BD2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Nov 2025 05:04:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zp711mFd0w21 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Nov 2025 05:04:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4460B84BB9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4460B84BB9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4460B84BB9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Nov 2025 05:03:59 +0000 (UTC)
X-CSE-ConnectionGUID: 75E6QublTCKhnBHQsOCKsA==
X-CSE-MsgGUID: eOr+W3r1TDi0Q0zZy6f/nw==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="69744632"
X-IronPort-AV: E=Sophos;i="6.20,217,1758610800"; d="scan'208";a="69744632"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 21:03:59 -0800
X-CSE-ConnectionGUID: iNxyUqarRamuzUsHrKV+wg==
X-CSE-MsgGUID: IfSL8UB4Qy+gFbBy0Ih8dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,217,1758610800"; d="scan'208";a="191977634"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 21:03:58 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 21:03:57 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 21:03:57 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.0) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 21:03:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AlohOfj1POkJQPaL+Pu7Jl7qUQvFZIBwXIxhNpa03szk7cayJP+h8u5lj9Y3GXeZzLNFhxPi5vLKvJzLQsrpnDw1+sAh33eaASKMwGDJ7UvlyWzzYT+B98bGnw5xdXu79iimOLbb5vHW7p3JoE/amqUb5dLdPLF+QjIwpcNnMmoy9XWtTXdf34Rfd/eqZLMG2CGr3oHZznvlD1mvfLBVpaAr1YPDDQkM0J5ehi/PdAVID5k/VxowT3Fa0KeavmlJi9Hf99VIMc/OyNn7XBm3JbFYp9TpFcZDdNfObm9LU4/2l2ir1jAG8Fo3jnA+xQxVj3STWdFa0aFWu7tO6MQ5Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8LBJS/zXypZhd1S9SDHoihQ7JqYexM+Pz1+LFECgSrI=;
 b=LQVHChG+koR5LXxWnASSSmmGkZyUaGrkOfUO7RjDyQcBeWjdqp+egC+5VhVl149esu2+0TeXtAau8hW1MCvEaLWFYtL7Yxeb3uJ/V8tRX++nvy0mz5rP9DSTVPzEk+6l+tqqNOj7+PoJTR3uqdSbCmm/FeptSxk2NbKpsDEhRK+26xYBG/o1xKrN931KbrnnggKnlv6uLtrZ8KQ7FH5FGO9l1M691iajcrFoviLWsgC02b0SMgUrIoMn1XIswU53dcw2PZk7a/W5btn8O89Avth4MBYkClRA3M4YFpLmPjkikvG78PzxIAu/Ao3PHGKNZrFyx3RquJCa2AdHsG7GmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6289.namprd11.prod.outlook.com (2603:10b6:208:3e7::9)
 by SJ0PR11MB6670.namprd11.prod.outlook.com (2603:10b6:a03:44a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.14; Sat, 22 Nov
 2025 05:03:54 +0000
Received: from IA1PR11MB6289.namprd11.prod.outlook.com
 ([fe80::bd8a:8f94:f384:bf93]) by IA1PR11MB6289.namprd11.prod.outlook.com
 ([fe80::bd8a:8f94:f384:bf93%5]) with mapi id 15.20.9343.011; Sat, 22 Nov 2025
 05:03:53 +0000
From: "Joshi, Sreedevi" <sreedevi.joshi@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [PATCH iwl-net 1/3] idpf: Fix RSS LUT NULL pointer crash on
 early ethtool operations
Thread-Index: AQHcWEMH9qQ04PecRk6W2jzigFOGsLT9qVGAgAB6eoA=
Date: Sat, 22 Nov 2025 05:03:53 +0000
Message-ID: <IA1PR11MB628961151DD523FECB144DD289D2A@IA1PR11MB6289.namprd11.prod.outlook.com>
References: <20251118042228.381667-1-sreedevi.joshi@intel.com>
 <20251118042228.381667-2-sreedevi.joshi@intel.com>
 <32e83b3a-a803-4464-b57b-a39fa45a2220@intel.com>
In-Reply-To: <32e83b3a-a803-4464-b57b-a39fa45a2220@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6289:EE_|SJ0PR11MB6670:EE_
x-ms-office365-filtering-correlation-id: 2578cedc-b2b7-4af5-cfa7-08de29848838
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?OEtYQ2dMSURjYlJtNWZPMXpVSnFiem1YbzBNS0xPeXlXSERvdy9iTEsrYmEv?=
 =?utf-8?B?M0sxdUtBOGdxY3RVMGplOWFFMDU5QlR0R0kxVkljTmdQZ0RpNXVUc1BUOHc2?=
 =?utf-8?B?TlpsTFZsR3VLQ1Z1MkZSWEdSWFNtQ2o2TmRXUmwzeEh5VGc2bWZMV2x1YVJU?=
 =?utf-8?B?empZZ0c2emFFb3dnK0didmdwVjFlZER6TTFaRThBNWc5djdmMzJ1SXNXSWVL?=
 =?utf-8?B?NHl0R08wVDdhR21mV1Q1M0ovbWo1aGZTb09XMnJFYi9uTGl5aHViK2c4ZHBk?=
 =?utf-8?B?dXBZbGFaOFprTGtJOFlOSkp0NFl4OXFCaXo2VUg3UXhBMFRiU3BzYlNJdldv?=
 =?utf-8?B?RDQ3TXlWanNOQ0V0cURXaytPL1pIdWxMSWxPelVZM0ZLcFpyakFpZEdLdUdz?=
 =?utf-8?B?M2lRYnF1NS93MU5IaUdzeEdMNGhGemdtQ2REdDFaeWI5Y05sVlVHQ0NBVUph?=
 =?utf-8?B?bFZGSHY0a01zcVVLMmlqTkI5Vm0rTUM5N1NoM05tc2RCMit3SXl4M20xM3ps?=
 =?utf-8?B?VW5YWEs0UCtrcUZEZmlQY3BSWGJ5OFNFTldoQVRRNEN5VWowZEVjbEkwUGUr?=
 =?utf-8?B?anRIbUdmeFMxRWNvYXhsZXBNVHRlTWs1QU5pWlB6djJSeStWU0VlZDlmYzdU?=
 =?utf-8?B?Y0JCNVQvUnhkbEtRK3ZsNjBXYlB4bkNuelIxc1VDU3VqdDBETDhkT2E2RTQ4?=
 =?utf-8?B?OW8rdEJJM1pWSk9HR2gwUUsrZ004RlEyK3RuYWtuQjdlbmd0VDhGZ1RYeUFX?=
 =?utf-8?B?eC91NC8vSkR3N29TR2JLenR1LzNmazdoMDdGcExnNm8yamMzSmRPaS9zNFZF?=
 =?utf-8?B?VW8zZXlMTHMydW5rRzk0V2RNai9mNWdNMUY3a1dpL292cUFCQVY3bUJJNVZn?=
 =?utf-8?B?Q0FvdjdFUk1GQjVlYUhvSCs2UzFQTExUZ0xiUWR1MFNmeFJzeENEYnFNR2Vy?=
 =?utf-8?B?T1BoVmZlbk9aaU1vSE5MN0FjNURiYzRSOWxRWHZPblhPdVpudzcweDhSTkxC?=
 =?utf-8?B?NzIvRTJkSG5oZmVKRWZoY1dnRGphUTRoVjB6RDA3ZVRFRnJ1em5Rdks4WG1J?=
 =?utf-8?B?SXZLTXdvOHY5UlpQZ25nb0kzZlpvVzg3UFlvd0NGUUhGdktpRmxWc3lYa1ZG?=
 =?utf-8?B?WlFUb2l3VmdhRnpxRm1ocjRIMTRGL3pRbmVYYkpUMEw1c01McjR0UlVwak8x?=
 =?utf-8?B?QytScU80cHhvTWhwRW5aSlpzQmlFRXNhbEJkakhPODNkNktOY2VjejBDckY1?=
 =?utf-8?B?dmswaGNOdWZSUGl2Nm8vSEdWVGZ6WVZYdTA1ZERmSHkwUklYck1BSTd6MUVw?=
 =?utf-8?B?Uk8rVEtQTVFpclpVUWEwUFFaNE1LYU1ZVnE5dzgyZ0Z5Y3dzWlhFaiticExv?=
 =?utf-8?B?Q1VtYVdycXRtemNQOERhTGs5ZHVydVJ1VVN6dE1nenJGQXVSNlBKOERHbTc4?=
 =?utf-8?B?UncyVWFDc1VBcDI0L1BVMm0zRHB6M0RTRERLclpRNUZiQUhwZDVhaHBaYmQ0?=
 =?utf-8?B?eEJ5VVpjUjR2ZnlMUDJLL2xPTmtPbm5td2NWR2hVYWdJRlgzbUxBcVlxTzF2?=
 =?utf-8?B?bGQwZlE4bEF1TUUrZGc3V0tjdWxCZWRoTmhWeUM1TVRQbmZUcXNBN0JZYTha?=
 =?utf-8?B?Y1JJNkdFNTBjSjBVd2tjbGtJT3dhS2VrNkU0VVZ4NjhZZE9QbGVOazlDbjBJ?=
 =?utf-8?B?eldyZ2pTd0Y2T1QwTzFIOVdScllFcU84eTMyMGtodEpydjF3MUwxbGpvQ1Fl?=
 =?utf-8?B?RWV0SFpmbEh3T2l4dUtiMXpSOFlNd1B2NUpLNW9DNGVJSmMrTnlTVFFXYzN4?=
 =?utf-8?B?aGowWDhZMnVrSEIwUHVSWlN0QmNlb0xKakFFSjQ4OXluejN5cHJnVEFpalQ1?=
 =?utf-8?B?dm5TUGdhRElnQVpuWC9BZDZvZityRENqL0tEL2o3cnhqRGNOWVFNQ01XbjJU?=
 =?utf-8?B?K0lJTFV6MHY0ZmVpQWRTcU81cWpldTArZlBseVl2RXhGTGVmYjlyWjRQSDds?=
 =?utf-8?B?VUNiam5oUDIyZi9DblFhN2ZwYU9uRlczWERnNjZwWXVkblFEaHJIeUNRbnFI?=
 =?utf-8?Q?kwf6QZ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6289.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmhkSHdhdnQxWW5ic1BOSjl6bmhJV2dVM1FhUTdHQlg5TmNvZTV5K3huS0Zj?=
 =?utf-8?B?dm01OVhHT3NjaFk5TnM0bGJBTnRNWGdJbENFeGZRWnpZRnBKMTVZM1JyaVc0?=
 =?utf-8?B?UFdhc200S2pUcWYrMENjVjBXMVNEbWRDNmRJTUdEUlhwZzhLQmlkNFUzc1JT?=
 =?utf-8?B?c3B3c3VkdUM3TU9hRmJiM2QxVVpKZG4rQmJmdXBJS3BoREJ1b1d0MXEwVUI0?=
 =?utf-8?B?Um1yNVVyU0ZOajc0U3MxR1c3c1hQSlIyYW1YS1FUMmNGeHdXV3A3L0NGd2RH?=
 =?utf-8?B?OU02YmwybHBSMGtMN2FidFhEVTNSSXYxTlVUMFY3VHdxVzQ4UEJBOUsremov?=
 =?utf-8?B?VjZ6ZVFTOTNGTlRMODdodG1tUVE4VjM2ZWJzbjVaeTAwNHFGRlVrVUlGSWFy?=
 =?utf-8?B?aENHRytWVEZybCthQ0lhd3hLZW9zbngxQ0lKRGQwWXFxU3ZrYjg2NDh1RHh1?=
 =?utf-8?B?SFlqeGxreVpOdDMrZUZyeHdrSHVOQjF5bHZFa1l6OS95RlRhZjM0TlJmMHU0?=
 =?utf-8?B?YlQ2RmNTR1VMMzY1bHA4TzBFMXFoZnJpUDgrL1hUUWFwZnlEYjBUR1dRMTRv?=
 =?utf-8?B?WjJ2NWtUUXZQVEdwYVBGK0k5anV2ZGJZY2VIL0lUZUxSR2MxVjlZK2hUMWsx?=
 =?utf-8?B?M1JKZm1nYldWcjYrRExMakhhZ0JSNnFxRTNidTNKdFFsY3h6Sng1azN4bTZ4?=
 =?utf-8?B?NzJpcGNxZFlNK0xETzVyRTg1d1gwNGdMOFNlcVh3MkkxcW9HbGVNZjVFOSt5?=
 =?utf-8?B?UXl6SEFVenh0RmMrcmcvYVBJTmRUN3B6R2I5TFJYQUIzNnlNQjR6ZFNOUHh5?=
 =?utf-8?B?ZDZDQmNsc012UWJLTVZhUzB4cWpDUHNTQ0hLajU4Tkl1cXdQQUxRYjllMzNk?=
 =?utf-8?B?NExFRFgyTW9LVHErZUFSYm5qY0lMWDB0cm5uYlgzdnlhTHF0MUwzK0dVZFZN?=
 =?utf-8?B?K3gwWG9Ma3RrK3QxamtINmxtU0E3dDU4bGI0SGdOamZJNGdHNjArS05jYnJO?=
 =?utf-8?B?RnJDN2ovMk5HZEdqbW5XTU9ReXdrQk93aHhWOEFoZFR5Ylh3U1lFbC9DMFNR?=
 =?utf-8?B?WWd3Y0ptTHBuSFJ2WlFkcjhmUEU1dmVpeGdyRUU4S3VDZUxubnhPZjVmNSt3?=
 =?utf-8?B?eCs1M2tpdTJWQURGL2VZTTdoUVNDeWlIKzRHUHdUQ1MzQXFLQWRpYkRQL1hE?=
 =?utf-8?B?UGNQckdxd0g3QTBJUlpzUHUvZ21xUElJZEovRDBIYXpyaVJKS3hNbGlTWFdt?=
 =?utf-8?B?ZFRLWm5jUHRKNzNNc1lkbFdHMmtRVDJTUG5VaWkyb05hRnJQdHFLYWFNRWZn?=
 =?utf-8?B?azNRMExVNEF4LzNDbjNndUhyRndCZGh4eWZmVnBFYlE5UUQ3YWRyUkdyenJO?=
 =?utf-8?B?THF2ZGJOWEdnV0Z1TGNZdTRkeWE1bzJheThZZjdGdVBVQnByZ0xOdzVVMStL?=
 =?utf-8?B?akx5RU1oT0wwd1dGUWorbWpoMXVSUllLUmpGY3ZZQVVzZnhKNmZrbFVGRkVt?=
 =?utf-8?B?bHFEU2U2bVlOSDJPL1hIM0F3aXhDQ1FDUlErR29mdTJ4ZUM0Wm92NXRZbHZt?=
 =?utf-8?B?SEppWGtOMWo5TVc0d2UvNHMrTUYzVW1WMW9BRThZL29kTVE4TE1mdVVEQWZi?=
 =?utf-8?B?RjU3c1Z5ZlgwYmZhTmtBd1YzaXBQS0xnMlhTYzM5a3BndUlRZXhuRUVBM2hB?=
 =?utf-8?B?M1pRalJKUWZkVUlxdXdyUTFiYUVrU3RHbEFvS0hHOWE5Wjc3Q0RDM1loNFd5?=
 =?utf-8?B?SkxEWUhkZm9MbEtjUGxJbjdDdUd5Z05BVEsrNmU2eGxlK1U0T0lmbUtRR2Ir?=
 =?utf-8?B?K0RDaHdsaVFHUVNaUW1mLzVYUHBDRUVSVktGWU1Wd2RYYm8rS1l5T1hOMUlv?=
 =?utf-8?B?dDdZQ3V3SVgyUFpDWXo4K29xMVkrNVhwRXZWdGRWRDhnMmlqMFlCUGZpYzA3?=
 =?utf-8?B?S1lkV291TXdVZkR0bHRnN3psVCtOU0hQNjZ3RXIxQzNUYjBhVmJZbTJYaFRU?=
 =?utf-8?B?Ull4RU0ydXRRdGltY2dUYmxoTy81cGRFNUVabzYwdHZLMlhHaVgwZVF3MWdt?=
 =?utf-8?B?TUJ5WC9lMTkrbFZsUmo0Vnh0eXlkeDhZNm5mY1g3YSt2SGUrU21xT2xlMkNr?=
 =?utf-8?Q?4FNivx/FH3JAPDv6LdUhjw5he?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6289.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2578cedc-b2b7-4af5-cfa7-08de29848838
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2025 05:03:53.0999 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IjZnj43bLkjIDYFuWAHDTJfhD+EnC9P1JpS3S4dlsS0juKM81QsfOSttEtDZzAfTK/4OBP7qC4JR+ZO81a3zAQqMMXr8PpZh9nMuq8wCw1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6670
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763787840; x=1795323840;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8LBJS/zXypZhd1S9SDHoihQ7JqYexM+Pz1+LFECgSrI=;
 b=gN97zINsQw1JqcHzG3MboO1UGpcvljMhO5yiFU94u58YfrPIngq16u7H
 vuKh7qgvj5llox386DpRjGE3WnGF0x1YIfewDZvHMN0arB3fl4drmw6hu
 yFOcAhxrYzd1/moDgTU0jGZ2tDVoAZY+ZZ8jPk22RFa+s4h2LLCHlZg8Z
 Z5ZIXsND8iqEMb/kP51X2H95cUz9z806K955q7ecPZynMeZ+CseXLrj/k
 r2dOhk+ifhT/ugREmJR0Celn6IKfHhP2THrUmXzNB88HKr2/ljnG2VZHq
 lrFipVHQI1kTPDBiln/A3aRI82DwS91wyl424GQf4TtXitsAHLr9JuVqd
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gN97zINs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] idpf: Fix RSS LUT NULL
 pointer crash on early ethtool operations
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
IDIwMjUgNDoyMiBQTQ0KPiBUbzogSm9zaGksIFNyZWVkZXZpIDxzcmVlZGV2aS5qb3NoaUBpbnRl
bC5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgU2FtdWRyYWxhLCBTcmlkaGFyIDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRl
bC5jb20+OyBUYW50aWxvdiwgRW1pbCBTIDxlbWlsLnMudGFudGlsb3ZAaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXQgMS8zXSBpZHBmOiBGaXggUlNTIExVVCBOVUxMIHBv
aW50ZXIgY3Jhc2ggb24gZWFybHkgZXRodG9vbCBvcGVyYXRpb25zDQo+IA0KPiANCj4gDQo+IE9u
IDExLzE3LzIwMjUgODoyMiBQTSwgU3JlZWRldmkgSm9zaGkgd3JvdGU6DQo+ID4gVGhlIFJTUyBM
VVQgaXMgbm90IGluaXRpYWxpemVkIHVudGlsIHRoZSBpbnRlcmZhY2UgY29tZXMgdXAsIGNhdXNp
bmcNCj4gPiB0aGUgZm9sbG93aW5nIE5VTEwgcG9pbnRlciBjcmFzaCB3aGVuIGV0aHRvb2wgb3Bl
cmF0aW9ucyBsaWtlIHJ4aGFzaCBvbi9vZmYNCj4gPiBhcmUgcGVyZm9ybWVkIGJlZm9yZSB0aGUg
aW50ZXJmYWNlIGlzIGJyb3VnaHQgdXAgZm9yIHRoZSBmaXJzdCB0aW1lLg0KPiA+DQo+ID4gTW92
ZSBSU1MgTFVUIGluaXRpYWxpemF0aW9uIGZyb20gbmRvX29wZW4gdG8gdnBvcnQgY3JlYXRpb24g
dG8gZW5zdXJlIExVVA0KPiA+IGlzIGFsd2F5cyBhdmFpbGFibGUuIFRoaXMgZW5hYmxlcyBSU1Mg
Y29uZmlndXJhdGlvbiB2aWEgZXRodG9vbCBiZWZvcmUNCj4gPiBicmluZ2luZyB0aGUgaW50ZXJm
YWNlIHVwLiBTaW1wbGlmeSBMVVQgbWFuYWdlbWVudCBieSBtYWludGFpbmluZyBhbGwNCj4gPiBj
aGFuZ2VzIGluIHRoZSBkcml2ZXIncyBzb2Z0IGNvcHkgYW5kIHByb2dyYW1taW5nIHplcm9zIHRv
IHRoZSBpbmRpcmVjdGlvbg0KPiA+IHRhYmxlIHdoZW4gcnhoYXNoIGlzIGRpc2FibGVkLiBEZWZl
ciBIVyBwcm9ncmFtbWluZyB1bnRpbCB0aGUgaW50ZXJmYWNlDQo+ID4gY29tZXMgdXAgaWYgaXQg
aXMgZG93biBkdXJpbmcgcnhoYXNoIGFuZCBMVVQgY29uZmlndXJhdGlvbiBjaGFuZ2VzLg0KPiA+
DQo+ID4gWzg5NDA4LjM3MTg3NV0gQlVHOiBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNl
LCBhZGRyZXNzOiAwMDAwMDAwMDAwMDAwMDAwDQo+ID4gWzg5NDA4LjM3MTkwOF0gI1BGOiBzdXBl
cnZpc29yIHJlYWQgYWNjZXNzIGluIGtlcm5lbCBtb2RlDQo+ID4gWzg5NDA4LjM3MTkyNF0gI1BG
OiBlcnJvcl9jb2RlKDB4MDAwMCkgLSBub3QtcHJlc2VudCBwYWdlDQo+ID4gWzg5NDA4LjM3MTk0
MF0gUEdEIDAgUDREIDANCj4gPiBbODk0MDguMzcxOTUzXSBPb3BzOiBPb3BzOiAwMDAwIFsjMV0g
U01QIE5PUFRJDQo+ID4gPHNuaXA+DQo+ID4gWzg5NDA4LjM3MjA1Ml0gUklQOiAwMDEwOm1lbWNw
eV9vcmlnKzB4MTYvMHgxMzANCj4gPiBbODk0MDguMzcyMzEwXSBDYWxsIFRyYWNlOg0KPiA+IFs4
OTQwOC4zNzIzMTddICA8VEFTSz4NCj4gPiBbODk0MDguMzcyMzI2XSAgPyBpZHBmX3NldF9mZWF0
dXJlcysweGZjLzB4MTgwIFtpZHBmXQ0KPiA+IFs4OTQwOC4zNzIzNjNdICBfX25ldGRldl91cGRh
dGVfZmVhdHVyZXMrMHgyOTUvMHhkZTANCj4gPiBbODk0MDguMzcyMzg0XSAgZXRobmxfc2V0X2Zl
YXR1cmVzKzB4MTVlLzB4NDYwDQo+ID4gWzg5NDA4LjM3MjQwNl0gIGdlbmxfZmFtaWx5X3Jjdl9t
c2dfZG9pdCsweDExZi8weDE4MA0KPiA+IFs4OTQwOC4zNzI0MjldICBnZW5sX3Jjdl9tc2crMHgx
YWQvMHgyYjANCj4gPiBbODk0MDguMzcyNDQ2XSAgPyBfX3BmeF9ldGhubF9zZXRfZmVhdHVyZXMr
MHgxMC8weDEwDQo+ID4gWzg5NDA4LjM3MjQ2NV0gID8gX19wZnhfZ2VubF9yY3ZfbXNnKzB4MTAv
MHgxMA0KPiA+IFs4OTQwOC4zNzI0ODJdICBuZXRsaW5rX3Jjdl9za2IrMHg1OC8weDEwMA0KPiA+
IFs4OTQwOC4zNzI1MDJdICBnZW5sX3JjdisweDJjLzB4NTANCj4gPiBbODk0MDguMzcyNTE2XSAg
bmV0bGlua191bmljYXN0KzB4Mjg5LzB4M2UwDQo+ID4gWzg5NDA4LjM3MjUzM10gIG5ldGxpbmtf
c2VuZG1zZysweDIxNS8weDQ0MA0KPiA+IFs4OTQwOC4zNzI1NTFdICBfX3N5c19zZW5kdG8rMHgy
MzQvMHgyNDANCj4gPiBbODk0MDguMzcyNTcxXSAgX194NjRfc3lzX3NlbmR0bysweDI4LzB4MzAN
Cj4gPiBbODk0MDguMzcyNTg1XSAgeDY0X3N5c19jYWxsKzB4MTkwOS8weDFkYTANCj4gPiBbODk0
MDguMzcyNjA0XSAgZG9fc3lzY2FsbF82NCsweDdhLzB4ZmEwDQo+ID4gWzg5NDA4LjM3MzE0MF0g
ID8gY2xlYXJfYmhiX2xvb3ArMHg2MC8weGIwDQo+ID4gWzg5NDA4LjM3MzY0N10gIGVudHJ5X1NZ
U0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDc2LzB4N2UNCj4gPiBbODk0MDguMzc4ODg3XSAgPC9U
QVNLPg0KPiA+IDxzbmlwPg0KPiA+DQo+ID4gRml4ZXM6IGEyNTFlZWU2MjEzMyAoImlkcGY6IGFk
ZCBTUklPViBzdXBwb3J0IGFuZCBvdGhlciBuZG9fb3BzIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBT
cmVlZGV2aSBKb3NoaSA8c3JlZWRldmkuam9zaGlAaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5
OiBTcmlkaGFyIFNhbXVkcmFsYSA8c3JpZGhhci5zYW11ZHJhbGFAaW50ZWwuY29tPg0KPiA+IFJl
dmlld2VkLWJ5OiBFbWlsIFRhbnRpbG92IDxlbWlsLnMudGFudGlsb3ZAaW50ZWwuY29tPg0KPiA+
IC0tLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmLmggICAgICAg
IHwgIDIgLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2xpYi5j
ICAgIHwgODkgKysrKysrKysrLS0tLS0tLS0tLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWRwZi9pZHBmX3R4cnguYyAgIHwgMzYgKysrLS0tLS0NCj4gPiAgIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmggICB8ICA0ICstDQo+ID4gICAuLi4vbmV0
L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl92aXJ0Y2hubC5jICAgfCAgOSArLQ0KPiA+ICAgNSBm
aWxlcyBjaGFuZ2VkLCA2NCBpbnNlcnRpb25zKCspLCA3NiBkZWxldGlvbnMoLSkNCj4gPg0KPiAN
Cj4gLi4uDQo+IA0KPiANCj4gPiBAQCAtMTI4OSw2ICsxMjkxLDEzIEBAIHN0YXRpYyBzdHJ1Y3Qg
aWRwZl92cG9ydCAqaWRwZl92cG9ydF9hbGxvYyhzdHJ1Y3QgaWRwZl9hZGFwdGVyICphZGFwdGVy
LA0KPiA+ICAgCS8qIEluaXRpYWxpemUgZGVmYXVsdCByc3Mga2V5ICovDQo+ID4gICAJbmV0ZGV2
X3Jzc19rZXlfZmlsbCgodm9pZCAqKXJzc19kYXRhLT5yc3Nfa2V5LCByc3NfZGF0YS0+cnNzX2tl
eV9zaXplKTsNCj4gPg0KPiA+ICsJLyogSW5pdGlhbGl6ZSBkZWZhdWx0IHJzcyBMVVQgKi8NCj4g
PiArCWVyciA9IGlkcGZfaW5pdF9yc3NfbHV0KHZwb3J0KTsNCj4gPiArCWlmIChlcnIpIHsNCj4g
PiArCQlrZnJlZShyc3NfZGF0YS0+cnNzX2tleSk7DQo+IA0KPiBDYW4geW91IG1vdmUgdGhpcyBm
cmVlIGludG8gdGhlIGdvdG8gcGF0aD8gSW4gY2FzZSBhbnl0aGluZyBuZXcgZ2V0cw0KPiBhZGRl
ZCBpbiB0aGUgZnV0dXJlLCBpdCdsbCBhbHJlYWR5IGJlIHRoZXJlLg0KPiANCldpbGwgZG8uDQo+
ID4gKwkJZ290byBmcmVlX3Zwb3J0Ow0KPiANCj4gVGhlIHByZXZpb3VzIGVycm9yL2dvdG8gZ29l
cyB0byBmcmVlX3ZlY3Rvcl9pZHhzLiBXb3VsZCB0aGlzIGdvdG8gbGVhaw0KPiBxX3ZlY3Rvcl9p
ZHhzPw0KPiANCkdvb2QgY2F0Y2ghIFdpbGwgZml4Lg0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAgIAkv
KiBmaWxsIHZwb3J0IHNsb3QgaW4gdGhlIGFkYXB0ZXIgc3RydWN0ICovDQo+ID4gICAJYWRhcHRl
ci0+dnBvcnRzW2lkeF0gPSB2cG9ydDsNCj4gPiAgIAlhZGFwdGVyLT52cG9ydF9pZHNbaWR4XSA9
IGlkcGZfZ2V0X3Zwb3J0X2lkKHZwb3J0KTsNCj4gDQo+IC4uLg0KPiANCj4gPiBAQCAtMTU5Myw3
ICsxNjEyLDcgQEAgc3RhdGljIGludCBpZHBmX3Zwb3J0X29wZW4oc3RydWN0IGlkcGZfdnBvcnQg
KnZwb3J0LCBib29sIHJ0bmwpDQo+ID4gICAJcmV0dXJuIDA7DQo+ID4NCj4gPiAgIGRlaW5pdF9y
c3M6DQo+ID4gLQlpZHBmX2RlaW5pdF9yc3ModnBvcnQpOw0KPiA+ICsJaWRwZl9kZWluaXRfcnNz
X2x1dCh2cG9ydCk7DQo+IA0KPiBTaW5jZSB0aGlzIHBhdGNoIG1vdmVkIGluaXQgb3V0IG9mIG9w
ZW4sIHNob3VsZCB0aGlzIGJlIG1vdmVkIG91dCB0b28/DQo+IA0KV2FudGVkIHRvIGhhdmUgYSBj
b3JyZXNwb25kaW5nIGRlaW5pdCB3aGVuIGluaXQgaXMgZG9uZSBpbiB0aGlzIGZ1bmN0aW9uLiBI
b3dldmVyLCBJIHRoaW5rIGl0IGlzIG9rIHRvIG5vdCBkZWluaXQgaGVyZS4NClRoZSBsb2dpYyB3
aWxsIGJlIHVwZGF0ZWQgZm9yIHNvZnQgcmVzZXQgbG9naWMgYW55d2F5IHRvIG5vdCBkZWFsbG9j
IHRoZSByc3NfbHV0IGluIHBhdGNoMyBhbmQgdGhlbiB0aGVyZSBpcyBubyBuZWVkIGZvcg0KaW5p
dCBmcm9tIHRoaXMgZnVuY3Rpb24uDQpXaGlsZSByZXZpZXdpbmcgYWxsIHRoZSBnb3RvJ3MgaW4g
dGhpcyBmdW5jdGlvbiwgSSBmb3VuZCB0d28gbW9yZSBjaGFuZ2VzIHRoYXQgd2lsbCBiZSByZXF1
aXJlZC4gU2hhbGwgDQpjcmVhdGUgYSBzZXBhcmF0ZSBwYXRjaCBmb3IgdGhpcz8gKHRoZXkgYXJl
IG5vdCBkaXJlY3RseSByZWxhdGVkIHRvIHRoZSBSU1MpDQpAQCAtMTUyNiwxNCArMTUyNiwxNCBA
QCBzdGF0aWMgaW50IGlkcGZfdnBvcnRfb3BlbihzdHJ1Y3QgaWRwZl92cG9ydCAqdnBvcnQsIGJv
b2wgcnRubCkNCiAgICAgICAgaWYgKGVycikgew0KICAgICAgICAgICAgICAgIGRldl9lcnIoJmFk
YXB0ZXItPnBkZXYtPmRldiwgIkZhaWxlZCB0byBpbml0aWFsaXplIHF1ZXVlIHJlZ2lzdGVycyBm
b3IgdnBvcnQgJXU6ICVkXG4iLA0KICAgICAgICAgICAgICAgICAgICAgICAgdnBvcnQtPnZwb3J0
X2lkLCBlcnIpOw0KLSAgICAgICAgICAgICAgIGdvdG8gcXVldWVzX3JlbDsNCisgICAgICAgICAg
ICAgIGdvdG8gaW50cl9kZWluaXQ7DQogICAgICAgIH0NCiANCiAgICAgICAgZXJyID0gaWRwZl9y
eF9idWZzX2luaXRfYWxsKHZwb3J0KTsNCiAgICAgICAgaWYgKGVycikgew0KICAgICAgICAgICAg
ICAgIGRldl9lcnIoJmFkYXB0ZXItPnBkZXYtPmRldiwgIkZhaWxlZCB0byBpbml0aWFsaXplIFJY
IGJ1ZmZlcnMgZm9yIHZwb3J0ICV1OiAlZFxuIiwNCiAgICAgICAgICAgICAgICAgICAgICAgIHZw
b3J0LT52cG9ydF9pZCwgZXJyKTsNCi0gICAgICAgICAgICAgICBnb3RvIHF1ZXVlc19yZWw7DQor
ICAgICAgICAgICAgICBnb3RvIGludHJfZGVpbml0Ow0KICAgICAgICB9DQo+ID4gICBkaXNhYmxl
X3Zwb3J0Og0KPiA+ICAgCWlkcGZfc2VuZF9kaXNhYmxlX3Zwb3J0X21zZyh2cG9ydCk7DQo+ID4g
ICBkaXNhYmxlX3F1ZXVlczoNCj4gPg0KPiANCj4gLi4uDQo+IA0KPiA+IEBAIC0yODM5LDcgKzI4
NDUsOCBAQCBpbnQgaWRwZl9zZW5kX2dldF9zZXRfcnNzX2x1dF9tc2coc3RydWN0IGlkcGZfdnBv
cnQgKnZwb3J0LCBib29sIGdldCkNCj4gPiAgIAl9IGVsc2Ugew0KPiA+ICAgCQlybC0+bHV0X2Vu
dHJpZXMgPSBjcHVfdG9fbGUxNihyc3NfZGF0YS0+cnNzX2x1dF9zaXplKTsNCj4gPiAgIAkJZm9y
IChpID0gMDsgaSA8IHJzc19kYXRhLT5yc3NfbHV0X3NpemU7IGkrKykNCj4gPiAtCQkJcmwtPmx1
dFtpXSA9IGNwdV90b19sZTMyKHJzc19kYXRhLT5yc3NfbHV0W2ldKTsNCj4gPiArCQkJcmwtPmx1
dFtpXSA9IChyeGhhc2hfZW5hKSA/DQo+IA0KPiBUaGUgcGFyZW5zIGRvbid0IGxvb2sgbmVlZGVk
Lg0KPiANCldpbGwgZml4Lg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3LCBUb255IQ0KUmVnYXJkcywN
ClNyZWVkZXZpDQoNCj4gVGhhbmtzLA0KPiBUb255DQo+IA0KPiA+ICsJCQkJY3B1X3RvX2xlMzIo
cnNzX2RhdGEtPnJzc19sdXRbaV0pIDogMDsNCj4gPg0KPiA+ICAgCQl4bl9wYXJhbXMudmNfb3Ag
PSBWSVJUQ0hOTDJfT1BfU0VUX1JTU19MVVQ7DQo+ID4gICAJfQ0KDQo=
