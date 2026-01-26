Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sjrXCF0Xd2mpcAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 08:27:25 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB7A84D66
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 08:27:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04E7A409CE;
	Mon, 26 Jan 2026 07:27:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j1dtW1IbOzS4; Mon, 26 Jan 2026 07:27:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A14C409B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769412442;
	bh=uEceb90iGu/TUDd6dfrw8tGQbU+SSDn5YkOL3H4elwM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RDdCyOVXiivXMKP3vupVejigrLKOhnlDQKAX+mU8ZJfKCh4bmZzL98ilMmmSgqW6w
	 xBcSvsu0cRvS8mCdjDYQ4xpme0WW0VRV07tAy1c/YUshvW8RA4vU1iKcT04Un026g1
	 zDJ4PmNbLiKLml5vAbuqYVu8vw0r2lDr46tfLzICi4BuiacLdHZRJcf1BDguD3pw0R
	 Z3fAVa+L5PixdiftW6ug6sM5Cn6WUeW/jDn//c/qHCGKgk76/1IAazrSAjxHD3XWyS
	 NM692OQofQDIvZUhZfav6PUprUm74UqRSK6E72kOKNSHmGhicBw80azzbFApqem2dF
	 Ve6A2CEkLxOoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A14C409B3;
	Mon, 26 Jan 2026 07:27:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 87AE11CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 07:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77272407BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 07:27:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0does2PFBv4o for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 07:27:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8F17E4006A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F17E4006A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8F17E4006A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 07:27:19 +0000 (UTC)
X-CSE-ConnectionGUID: jzpY6HqjSDqKtk2Ymj2A/A==
X-CSE-MsgGUID: KrUUfwwdRFCgZWWNmxDGEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11682"; a="88169085"
X-IronPort-AV: E=Sophos;i="6.21,254,1763452800"; d="scan'208";a="88169085"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2026 23:27:19 -0800
X-CSE-ConnectionGUID: kRE9t/dKRnijZcWgi5IdGg==
X-CSE-MsgGUID: 18iFqjHTRLmlb/1bdfEgSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,254,1763452800"; d="scan'208";a="207640978"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2026 23:27:19 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 25 Jan 2026 23:27:18 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 25 Jan 2026 23:27:18 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.30) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 25 Jan 2026 23:27:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=njEU5Rc1+yV0oBbUzZ9Q4fpJHmynkMRyMxZFNKioZqE8rKth/ka3iFqgqSKnXNTEXWMlLoNI9eJhLTlMbCBV7X+v2V3Z1zbw4+L6Rb/w+t7yOWakB/Zu+GTV6ZzIqgm+De8QeB94K5y8/t3pu3/GapWOMWtKrWYhV1i0oFGFe5u2BwwdnydfRaKwAO0sX1uxLboWfOlrYKkdmYeoQZ0Vy9jTlZDFCH0DCRZeb4SS4TgQxlKBMluwl4Zh8K/wtSb0ev3NHrtVl2t9hBF9GfiWoGEnTBa/gD3JeOuBJbWHKj/eKy0IuzJGjzAXaze/NcULlNVuVJOkqAFjzN8Gw3QqTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uEceb90iGu/TUDd6dfrw8tGQbU+SSDn5YkOL3H4elwM=;
 b=wNGyetRSqgZY+Qh95RaPmilAEOn24MkfJV3pbYc/GdLUJbMI7fHL6WpEpMWT4+NiVyKXikK3kOBcR7sD19mquDz08ym1U6qqg/tWp8GAHv0R6SvbkvNB6T212S6xQPKuudjFK8gXZfNk9GRlO0ZbqEipo2/+KujNiuY/oZRlpX26i4t7a/Er9czcEMbq3w2hhxGjh//0gPjcfX6egKbnKFE1XlK3rQeh8Q5Sllw3e64X5W3vn0e0icTAdgSV5aaaA8k9HP9mCzO2pveDkKqGFJvn8iM4TnqNyI4FRKSTIKY3SkKB1kKWWhHN6rcs2PRFNOw0HvDntzwXTjd0RJU9pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB7367.namprd11.prod.outlook.com (2603:10b6:208:421::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 07:27:16 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 07:27:15 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Brian Vazquez <brianvv@google.com>, Brian Vazquez
 <brianvv.kernel@gmail.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: David Decotigny <decot@google.com>, Li Li <boolli@google.com>, "Singhai,
 Anjali" <anjali.singhai@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-net PATCH] idpf: change IRQ naming to
 match netdev and ethtool queue numbering
Thread-Index: AQHcjKiu7I97rGFvKUOeIQc892j9SrVkENrA
Date: Mon, 26 Jan 2026 07:27:15 +0000
Message-ID: <IA3PR11MB8986BB2FDDBB664CB318FB15E593A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260123204058.651080-1-brianvv@google.com>
In-Reply-To: <20260123204058.651080-1-brianvv@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB7367:EE_
x-ms-office365-filtering-correlation-id: 23b24d2c-9af5-484d-ec7e-08de5cac54a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?MjR4Qityb2hhTzRvUmxNQTVzbGFhcFYzSHAvOHFOYzBXSnhFZzZab0ViUVF2?=
 =?utf-8?B?Q0lJRS9jZ3ZTd0R0RFVIalV3cjA0dFBoby9tTy9pa09TU2lNQ0FlVWh4QW9Y?=
 =?utf-8?B?RWtkNXdHUUlTVDVqQzBuMkRsNkVhb2ZwVmJIRldYNk9DS283Qk40STRuc21m?=
 =?utf-8?B?cEhaZ2hRZ1hsYTNPUGFCSVNPMmx5L1RuT2dsMEJLWFBabnJiR1RnZThVVGoy?=
 =?utf-8?B?eUhTYkJkUHJaZ0dORkFQSTZRVnlVQXlYamIyWjF0THBvL3ljR0EvNmxicUZi?=
 =?utf-8?B?VmVxaUpzL2pDeDlXZmRCQktWb0pZSVAvaUJZQXk0SS82cUlzTlBxakFpN29N?=
 =?utf-8?B?dXoydWl1ZTJ5NzJreEJSeEM1RlFuZVl2WGpUWG9ZUTYzR3J4WGJ5RWR0aGZj?=
 =?utf-8?B?R1pyd2lXSjJSV3V5WHVpN1h2TlBRYWRZbjU5aVR3VDZQWkJSQi9SWXJyTUt4?=
 =?utf-8?B?bUNxRzh2QS90bTRaNTNrdzhna0IzUld1aEdmQVlmNWZnT2d6ZDhoVkhha0ov?=
 =?utf-8?B?S01EbUl0YUlEY2o3aFB6T3J6LzZIZkNTRHpYeWtISFY0eW1ZTGk2WVpvd2Zn?=
 =?utf-8?B?TWNwY2srZEcyMVowSDNWTnlFR0xBUFJXMGRwa1ZkaFRVUzFPSDN1S3lsejdI?=
 =?utf-8?B?SmZTcS9NR2t5YjJPckh4bTBPU25WTEwxR1RtVmUyL2VCUlorc0FFb2QwSFMx?=
 =?utf-8?B?d0dQVk5MTkRKTnJVSWtYd0tGcHNCaE04aFVyREZBb0VkUmhyQW50SEtnWjVl?=
 =?utf-8?B?WEF6eEhtQm1QaEJ5SDJUbjE4dEY5eldlRDNNczZBUjIvcFR3RjkzdlI4dk1r?=
 =?utf-8?B?ekh4bG4vOHZpTGREMTJ0aGJTOFM2Q0dLWUdSc2FBV29pdTVGTk1GQkpSSk5X?=
 =?utf-8?B?SkFKZUg4QzB6Y29aM0ltYlE5Z0QxaEczSlk2M3M2OXFUaXJMcXRvVTNHWW1v?=
 =?utf-8?B?bXFHL05aZzRDUjhYQVpHY05FRFRrRC9HZFRCVXpxVXk3SWRSQkxBZFlsdmVB?=
 =?utf-8?B?d3E5cFd2c2lXUk1hdkJ2emJzZGdrYzVUYS91cTBzQnloQnhtVlM0Q2tqNUtj?=
 =?utf-8?B?UFlGb0NsbXViTHYzVnlYMW85eTdWNHFKZlZ5aGFsc0d1YlRqc2RVVXZmM21n?=
 =?utf-8?B?UVhLZ1doYU1BT2pPMXNQM0tydkhORmlvSk4vS3BHR0laNnl4N3FxTkQweFFQ?=
 =?utf-8?B?YVczWFFQTTgxb0FiUVByYVQ2emMwTzNTZWVHSTFFNGZmKzVpU1JaT0RCZlNk?=
 =?utf-8?B?aS84V3V3UWVQaUwwdXpqMW5ZaUdtSFRhR3lrMGFQKzlCcHd0eElsKyt2VStN?=
 =?utf-8?B?NE5zTVZMS3VRNll0Y2pFSXhNTFdmZ2FqUXozZ0pROEt6QjQxODkzQkJEdGhn?=
 =?utf-8?B?Q1NhaGZPTE1yejJqSHVyQ1dnb3l0eXRCb3hQMm5QWE0wZE5ucWp0UGtMUHR4?=
 =?utf-8?B?VWV1TUZFejF0aFRoMUZtRS9CNEpOWlEyZk9zUWZLTEp1ejZseUJHYUFUZ3pK?=
 =?utf-8?B?S1E5Wm9PNUdLQWk5L1EwV29IQlM0TWE2Wkg0VkhTNHgyZTU3MXNxUU9WMk9T?=
 =?utf-8?B?Nnp5cUJVZ0lKdGZXWXQyZ09mY1JIWEl4cjg1aVM5STk2Sit0Wmd0RjNwdW1w?=
 =?utf-8?B?YW8vVmJpV2o1ZndVN282cUNCTnVoTis2eFJ5T2lFRlQvMThVdG16Y3EvaEpB?=
 =?utf-8?B?RVRTQ2FpQTFyOHhXTlMzQ1QxRFRjTXd3eE91UWVOdENKbWdyR1ZWS3Q0Ykho?=
 =?utf-8?B?TFp6QnF4dDhuSmhCMFJyMmdmMjgwMUtQdUs2Qjc0UUNQUnBHUjVFT3Y0MUNy?=
 =?utf-8?B?Mlc4Wm9MeE1FNVRrQ0NPWkdrK2huU3hXQXBlc2hycEV5RWtaRys4anR3bjJn?=
 =?utf-8?B?cnlKWUN2dDJUcExRVytsdHVUNllzRGo2RkRITSs4R2VxVHJqR0g5SUpJb1Bo?=
 =?utf-8?B?aWV6ZThtZjkxSWo3ZDNmR1JGMmhKVlhLUGV5ZThJR0dyUXRCSTRkR3k3cFk1?=
 =?utf-8?B?Lzk5aW0waWQ0ZFF1OEVQT3o4WS82UFVnUHU1OGgwZnNEenY5ZEsyQ0V3ZDVE?=
 =?utf-8?B?a1djWm40SXFlMmNlUWRJUWVhb3RVTC9KVk9veFNPclNkU2F0ak5SZ2NEQWtF?=
 =?utf-8?B?WHpXdVQ3UGdVVHBOU0Z3cUkyQUdwcWxURXpsS2VVUGJscHFYa0oybm5RYXgz?=
 =?utf-8?Q?6z0Cuu80SBdd9NEOjS3dhGA31jYMC5mqdJcJCYcM6ffL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3VPbjA2cnBva012dWd3RVdCMFpINFFqMHRVTDhNN1JidzB1L2VGSnlpY1U1?=
 =?utf-8?B?NmNzZHJEa1JqNUp0N3ZOTUcyYTU3WFNhWXV2N1dzZmpzbXlGQm9adDhiQWxz?=
 =?utf-8?B?T2VVL3kwRmxzbnlnM3J0TWR6Z2svZFlEUEErUlYrM0RXK3FlZWhES0w2Rjli?=
 =?utf-8?B?clpoRXI0cUoyZ2QzZXNPbDVrbGJ6YmRqQ1dOWGE2K1lDWGRsV3R0UDVkTHNO?=
 =?utf-8?B?Z1lQanVjWllmS3BTK0lKRng5Zkg4SEs5S1ZTcDdvYy9jUDloWXRad2Q1Sm15?=
 =?utf-8?B?ekFESUhTcGVPcjVLbWlwUURvQm1iUWUzUWNRWWlwNm4xcnN0SW5aWVR5bk5I?=
 =?utf-8?B?Y0dDYytNYWR3TVB6RjBGTUdORVJ6MDVwaWJFSEs4RzFXSGJPd3prME5UU3k2?=
 =?utf-8?B?OTZpRC9sMXhQVHNFQUFtYzdPMk51RXgwUGRFa1cxbERoZ1BtRFkxd1RwZk1L?=
 =?utf-8?B?dkQrVkJla08xZ3JFaThYQjVPbnY2R2NjdlhBem1TVWIyYTl4TUJFcExUWC9X?=
 =?utf-8?B?c0ZkTGxaVGhWUmwzNmxoekh6UTdjcEp0L2VFUzIvZmR3Qnp6Y0UzSVRhbFhx?=
 =?utf-8?B?Nk5XSmI5ZEx5dmEyYXNYNHlNL0hnVmpNSVdlRlhNeXR5NU0wQkxoSUVaeE5n?=
 =?utf-8?B?RVVvOEVXQ3lyWHBHVTk3MWs1all1dGF4bkg3QTRoS0I2SldMRjVuQ0dsZ09t?=
 =?utf-8?B?M09pQjlzL3U0RXdDbkpjQ2hWcHFQQjJJc3dGTlJDcVl0Rkg3ckpEU2Z0dlha?=
 =?utf-8?B?TlRIYlBpTTlnM1h5NkoxUmVlNkxlbjBrY24vNFpVUU53Ykd4Q2Z4Ti9SUEZz?=
 =?utf-8?B?QnUrS1hsUmNKc04venA3ZnVxc3JSQ0FESmswdlNraE41K21Pd01QSlZzbC9D?=
 =?utf-8?B?Zkt0QVhlSHZHMlVmVkJucHBvaFRGNUxGT3BZZDlNVjVGbDliVzhXTWFCUzFR?=
 =?utf-8?B?RG5SamRpYSszaTlvMTdWa0xNaFo4Y1dGZk9mZXJPbVg0Y1dxODl1ZDhaNElu?=
 =?utf-8?B?cWdTNEhjQkhZM2RUWDA5SE9CUm1rZFVJWUpaSnl4VFRvdXFySnlhd0tPN2ZE?=
 =?utf-8?B?WFlzcmZnUFYrMFNqb29LQkxTWDNGVlRUeEwyYWRTck9wUlJaMUNvV3ZSVDla?=
 =?utf-8?B?NXR4V3hYSTZDWnlMMENrYjdHUGxESUxwN1QwZElnbWdwdkZtNVRHUEhWWVhj?=
 =?utf-8?B?VmZ2Q2VuR2xHUDl1MDdoMk04V3l3UXpMNjNINHlxQ2Y2TGdNNUhlKy85cCsz?=
 =?utf-8?B?eDErZDRYL2FxdHQ4OFQ2bUI0a3g4SkZRdzlndzNPS2lIeFUvSGRoNitySlZT?=
 =?utf-8?B?WVdjRmZncC8yMjhMS0pxVGU3REIvVWpjZjNPdlc2NndvU2VCeEg2WldoMXpG?=
 =?utf-8?B?dlB5dkdveTVCZ3RqUFZJZEJxQWREOVFIaFI0L1NzazV0TWJkbkhQVmFGOEty?=
 =?utf-8?B?VHRocGZvNmp0T2g2L0ZhWWU1OWRHdlljTmppOVYrQWNRTzZNMHIwcldxM2VI?=
 =?utf-8?B?bnViOWFSVGU1M3Z2Qi93NVI5bmZTWWxHdi9vaGFCZWhrRmhwb0M1VHVLdE8r?=
 =?utf-8?B?NmRWZ01iU0cvME9iNWhnUGpkcmhYUm1UcTZVRHg4KzhBRWx1RnhCbGM1TGhI?=
 =?utf-8?B?NmgrYVoyUk54SFR2Um81VmlabmRpWmY2SHVLVVIxdmpSaDdnaFozTTI2cjY4?=
 =?utf-8?B?ZHBaVkdIZkRDYW5oQk8xTmdJMUQvYlkxR3hvNjZtVWJ4c01hdjdEUE5YSCtw?=
 =?utf-8?B?TUdFMmkxelFQVXJYV0N6dW5leGZUejNwaEFod3FDUFU4bjU0Vi96UklkbCsw?=
 =?utf-8?B?amN5V3dJYzlYMXRERVJKNGdZc3lpVlgvaFNhMFBmTytmaVVwVlpTQU1rdkQr?=
 =?utf-8?B?NmFhM2QyVlhMUWFhNk9nKzhsNC9rck42a2JLNEJJUjV1TTcvd0xPU2ViTWdJ?=
 =?utf-8?B?Z2tmSkhWb0JmUnBDMldDcVFrUmc5UWxzVE9GSlcxcmkwMk8vdG9tMytqTEpw?=
 =?utf-8?B?VFBCcnFNb29MVXo4UytsZ2NjQ3RHdDd4SERhOG9UUTcxdTRHTUdWRmgzM2tJ?=
 =?utf-8?B?RitHNDRiN0wvRE5QV0FXdkVrR0RZdGJmem5CM0IreVdQVW0zZHU3cUpCQ3VY?=
 =?utf-8?B?QXJjanZGNjNmWXhXV1N3Nnc2Smd0cnNEVlRLSG1EV09LVnFlMXhRcGt3UFlK?=
 =?utf-8?B?ai91VWFabklteVFQdi9seVg3NXV2bHZpMWRhdklaSEc1NTdoUzJpdFUyVlU0?=
 =?utf-8?B?U2JJU2YwaEtwalNnREVLcThGUy9mN1AwSjJZZjhVTnNKQUgydlVGc3NyVDRU?=
 =?utf-8?B?azVFb2dtWVdMUzliZGxROHJqV0xHaGozZUFWYk9iOVFaTWdoczZrV09iL3k4?=
 =?utf-8?Q?gTbmHbA9mPWreyUE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23b24d2c-9af5-484d-ec7e-08de5cac54a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2026 07:27:15.7112 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GbrkWJz63r53ZpaduRYlh4UERwgFUP0AAEM2hcLIULDUEhFTxwCIglLU7n/hAM2pjiKoATAjpuV2y9f/USCfc3QZVQ8BEeNePR4tMOx6N6Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7367
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769412439; x=1800948439;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uEceb90iGu/TUDd6dfrw8tGQbU+SSDn5YkOL3H4elwM=;
 b=WM5kpUNII+xnjuF0HLv3Cop8sruXL0LF3EedFemhDjEsjmkc/zz9skPr
 2rwQNjE/adT6MM4Ga4MnFzeGbaY+bSwsiDyQbMXNNi90K81pFni/VY4O3
 kDx04sCx5h4N6U8TYlBJVm7lNs9LNkRjQPdQdUHMmCzak9mPsy7SrulZs
 XjVeYhRgZOvzmQxK54GspQh/RtWKTwyGJLzupQBrCtzccIYpz10CA6B7F
 k4SMrvg5K9Htr0z5x4i3x4XqNJBP0fXt7Tkr4ZIZ3Wo4qhMAQnUR5uNFO
 /dlmZilnYAEaJJLA93m5PvW3i8Nk9m2wiK2iD0scCa8SsBgQZ4CSVkWB9
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WM5kpUNI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net PATCH] idpf: change IRQ naming to
 match netdev and ethtool queue numbering
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:brianvv@google.com,m:brianvv.kernel@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:decot@google.com,m:boolli@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:emil.s.tantilov@intel.com,m:brianvvkernel@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_TO(0.00)[google.com,gmail.com,intel.com,davemloft.net,kernel.org,redhat.com,lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 5DB7A84D66
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQnJp
YW4gVmF6cXVleiB2aWEgSW50ZWwtd2lyZWQtbGFuDQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAy
MywgMjAyNiA5OjQxIFBNDQo+IFRvOiBCcmlhbiBWYXpxdWV6IDxicmlhbnZ2Lmtlcm5lbEBnbWFp
bC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+
OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsg
RGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsNCj4gRXJpYyBEdW1hemV0IDxl
ZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47DQo+
IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5v
c3Vvc2wub3JnDQo+IENjOiBEYXZpZCBEZWNvdGlnbnkgPGRlY290QGdvb2dsZS5jb20+OyBMaSBM
aSA8Ym9vbGxpQGdvb2dsZS5jb20+Ow0KPiBTaW5naGFpLCBBbmphbGkgPGFuamFsaS5zaW5naGFp
QGludGVsLmNvbT47IFNhbXVkcmFsYSwgU3JpZGhhcg0KPiA8c3JpZGhhci5zYW11ZHJhbGFAaW50
ZWwuY29tPjsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsNCj4gbmV0ZGV2QHZnZXIua2Vy
bmVsLm9yZzsgVGFudGlsb3YsIEVtaWwgUyA8ZW1pbC5zLnRhbnRpbG92QGludGVsLmNvbT47DQo+
IEJyaWFuIFZhenF1ZXogPGJyaWFudnZAZ29vZ2xlLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW2l3bC1uZXQgUEFUQ0hdIGlkcGY6IGNoYW5nZSBJUlEgbmFtaW5nIHRvDQo+IG1h
dGNoIG5ldGRldiBhbmQgZXRodG9vbCBxdWV1ZSBudW1iZXJpbmcNCj4gDQo+IFRoZSBjb2RlIHVz
ZXMgdGhlIHZpZHggZm9yIHRoZSBJUlEgbmFtZSBidXQgdGhhdCBkb2Vzbid0IG1hdGNoIGV0aHRv
b2wNCj4gcmVwb3J0aW5nIG9yIG5ldGRldiBuYW1pbmcsIHRoaXMgbWFrZXMgaXQgaGFyZCB0byB0
dW5lIHRoZSBkZXZpY2UgYW5kDQo+IGFzc29jaWF0ZSBxdWV1ZXMgd2l0aCBJUlFzLiBTZXF1ZW50
aWFsbHkgcmVxdWVzdGluZyBpcnFzIHN0YXJ0aW5nIGZyb20NCj4gJzAnIG1ha2VzIHRoZSBvdXRw
dXQgY29uc2lzdGVudC4NCj4gDQo+IEJlZm9yZToNCj4gDQo+IGV0aHRvb2wgLUwgZXRoMSB0eCAx
IGNvbWJpbmVkIDMNCj4gDQo+IGdyZXAgLiAvcHJvYy9pcnEvKi8qaWRwZiovLi4vc21wX2FmZmlu
aXR5X2xpc3QNCj4gL3Byb2MvaXJxLzY3L2lkcGYtTWFpbGJveC0wLy4uL3NtcF9hZmZpbml0eV9s
aXN0OjAtNTUsMTEyLTE2Nw0KPiAvcHJvYy9pcnEvNjgvaWRwZi1ldGgxLVR4UngtMS8uLi9zbXBf
YWZmaW5pdHlfbGlzdDowDQo+IC9wcm9jL2lycS83MC9pZHBmLWV0aDEtVHhSeC0zLy4uL3NtcF9h
ZmZpbml0eV9saXN0OjENCj4gL3Byb2MvaXJxLzcxL2lkcGYtZXRoMS1UeFJ4LTQvLi4vc21wX2Fm
ZmluaXR5X2xpc3Q6Mg0KPiAvcHJvYy9pcnEvNzIvaWRwZi1ldGgxLVR4LTUvLi4vc21wX2FmZmlu
aXR5X2xpc3Q6Mw0KPiANCj4gZXRodG9vbCAtUyBldGgxIHwgZ3JlcCAtdiAnOiAwJw0KPiBOSUMg
c3RhdGlzdGljczoNCj4gICAgICB0eF9xLTBfcGt0czogMTAwMg0KPiAgICAgIHR4X3EtMV9wa3Rz
OiAyNjc5DQo+ICAgICAgdHhfcS0yX3BrdHM6IDExMTMNCj4gICAgICB0eF9xLTNfcGt0czogMTE5
MiA8LS0tLS0gdHhfcS0zIHZzIGlkcGYtZXRoMS1UeC01DQo+ICAgICAgcnhfcS0wX3BrdHM6IDEx
NDMNCj4gICAgICByeF9xLTFfcGt0czogMzE3Mg0KPiAgICAgIHJ4X3EtMl9wa3RzOiAxMDc0DQo+
IA0KPiBBZnRlcjoNCj4gDQo+IGV0aHRvb2wgLUwgZXRoMSB0eCAxIGNvbWJpbmVkIDMNCj4gDQo+
IGdyZXAgLiAvcHJvYy9pcnEvKi8qaWRwZiovLi4vc21wX2FmZmluaXR5X2xpc3QNCj4gDQo+IC9w
cm9jL2lycS82Ny9pZHBmLU1haWxib3gtMC8uLi9zbXBfYWZmaW5pdHlfbGlzdDowLTU1LDExMi0x
NjcNCj4gL3Byb2MvaXJxLzY4L2lkcGYtZXRoMS1UeFJ4LTAvLi4vc21wX2FmZmluaXR5X2xpc3Q6
MA0KPiAvcHJvYy9pcnEvNzAvaWRwZi1ldGgxLVR4UngtMS8uLi9zbXBfYWZmaW5pdHlfbGlzdDox
DQo+IC9wcm9jL2lycS83MS9pZHBmLWV0aDEtVHhSeC0yLy4uL3NtcF9hZmZpbml0eV9saXN0OjIN
Cj4gL3Byb2MvaXJxLzcyL2lkcGYtZXRoMS1UeC0zLy4uL3NtcF9hZmZpbml0eV9saXN0OjMNCj4g
DQo+IGV0aHRvb2wgLVMgZXRoMSB8IGdyZXAgLXYgJzogMCcNCj4gTklDIHN0YXRpc3RpY3M6DQo+
ICAgICAgdHhfcS0wX3BrdHM6IDExOA0KPiAgICAgIHR4X3EtMV9wa3RzOiAxMzQNCj4gICAgICB0
eF9xLTJfcGt0czogMjI4DQo+ICAgICAgdHhfcS0zX3BrdHM6IDEzOCA8LS0tIHR4X3EtMyBtYXRj
aGVzIGlkcGYtZXRoMS1UeC0zDQo+ICAgICAgcnhfcS0wX3BrdHM6IDExMQ0KPiAgICAgIHJ4X3Et
MV9wa3RzOiAzNjYNCj4gICAgICByeF9xLTJfcGt0czogMTIwDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBCcmlhbiBWYXpxdWV6IDxicmlhbnZ2QGdvb2dsZS5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3R4cnguYyB8IDIgKy0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMNCj4gYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdHhyeC5jDQo+IGluZGV4IGMyYTFmZTNjNzllYy4u
YzFmOGRmYzU3MGNlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
ZHBmL2lkcGZfdHhyeC5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYv
aWRwZl90eHJ4LmMNCj4gQEAgLTQwOTMsNyArNDA5Myw3IEBAIHN0YXRpYyBpbnQgaWRwZl92cG9y
dF9pbnRyX3JlcV9pcnEoc3RydWN0DQo+IGlkcGZfdnBvcnQgKnZwb3J0LA0KPiAgCQkJY29udGlu
dWU7DQo+IA0KPiAgCQluYW1lID0ga2FzcHJpbnRmKEdGUF9LRVJORUwsICIlcy0lcy0lcy0lZCIs
IGRydl9uYW1lLA0KPiBpZl9uYW1lLA0KPiAtCQkJCSB2ZWNfbmFtZSwgdmlkeCk7DQo+ICsJCQkJ
IHZlY19uYW1lLCB2ZWN0b3IpOw0KPiANCj4gIAkJZXJyID0gcmVxdWVzdF9pcnEoaXJxX251bSwg
aWRwZl92cG9ydF9pbnRyX2NsZWFuX3F1ZXVlcywNCj4gMCwNCj4gIAkJCQkgIG5hbWUsIHFfdmVj
dG9yKTsNCj4gLS0NCj4gMi41Mi4wLjQ1Ny5nNmI1NDkxZGU0My1nb29nDQoNCkkgdGhpbmsgY291
bGQgYmUgbmljZSB0byBoYXZlIHByb3BlciBGaXhlczogdGFnLCBidXQgYW55d2F5Lg0KUmV2aWV3
ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29t
Pg0KDQo=
