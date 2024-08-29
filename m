Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3207E964AB4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 17:54:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77925805B7;
	Thu, 29 Aug 2024 15:54:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t-xh2zmC_sk1; Thu, 29 Aug 2024 15:54:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 987D980588
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724946877;
	bh=xcSH1xMktuaSk8eVZTMQWOQyn5VC2QDUWTP3EgCw6yk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yIPXQMRmcnVV5hjABjlVFy3HU/c3YvaJZklpJs5uZNE3cMbWBRO9CLaQmIOeT9SKV
	 Z+FvMabj/GZRTxx8EmVNvxiDyKkvyfKK8ZZ4j0DNhhWrPiozAJs8QCzq5omCbVEHVg
	 b5ebyWxdpm1UtYU/CZbyVLGkPIcQr404icYA+ODU0WHrxXFdOhB/GnrifTjz+r7DyF
	 Fdtqub010zKYIq6FD2IDOTA8G7VK9EPE8QGJJDzuvJ//BNLClE8z6cCfFRBwGwfaLP
	 RSeZvbLNpyAQvkeIgd6sqdhB2mVNeumrenftZYAG4zXghGUkzi7UFr9x833L2mBt9R
	 pXtwW7tN08Wgw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 987D980588;
	Thu, 29 Aug 2024 15:54:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 869BE1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:54:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71FA941985
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:54:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qpf7jcaqlu0N for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 15:54:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5EA4641976
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EA4641976
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5EA4641976
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:54:34 +0000 (UTC)
X-CSE-ConnectionGUID: Mmy65GoxQbmTWrP8SWDAoQ==
X-CSE-MsgGUID: 88Kq0y/QR7yoSv/bDJBh2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="34214584"
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="34214584"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 08:54:33 -0700
X-CSE-ConnectionGUID: lgwSOlAcRbqZkes9Pry/gg==
X-CSE-MsgGUID: lGhwGAGqQXmG4j6QTl7ieg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="63583516"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 08:54:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 08:54:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 08:54:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 08:54:32 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 08:54:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rvC/TSaVrFuYnO+yFBnm1Ip4SPVyDBNXoRqrk9LSa1o4rWByfFCbhGZZkI95P0eAh6N3qLxHuDvhjAkHRkGDLTne6ZwqHwomkY5yaWAMiTFgrPKTXU8iUB8glpar7k7bfxkaDKnP4yLxZN81OMeRBELmtTTojmJz6p9ucxmU6vYMOBxloYCtAKQl2R7h7LrF5vyICdc46Wg8HEnMkc8hoI8N5kF+8JX1D64jCjVatiD7JvRYWpZiawGz1VXHYoLUl1GI1e8BGrm+9ZAkXY0jDUzp9kW6gi/iNA+/polXOUgTIl/XZcCWQPPPuuUKUnIvLfLl7H4kIhosPHF+QAO7xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xcSH1xMktuaSk8eVZTMQWOQyn5VC2QDUWTP3EgCw6yk=;
 b=OVQ7xPJFCSMMWBnMem9QFjfXQv3E0+mpeVmi1Y/f6E3Wqi8fXViprHslClYgkOm0ctkNRFHMpf6Xkekan5vH9/TqCRsN9s6pPJC1xZTbNWCGytr7aatkk3W5MWfnjqPPkapejNTSQwfEwtjdoBJYd86ucml9+2i3cNQnOTmpVAi3I3l0D35ehfnOFXQ9FLSkIZgfH9MzSukXgFeoOqvi/RCgVELLDgdWsUuwzVqmB3sBNpH5WS5jl6Jddiz9j6gEJj/XosrbXaeroo8mAGZ6s9esF9jtrUQaPA8cNZbRttGPgQJJ3yxuenQ/SD+qVctekk6V2opvPo9+f/ODlZSQdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8431.namprd11.prod.outlook.com (2603:10b6:930:c7::17)
 by MW6PR11MB8438.namprd11.prod.outlook.com (2603:10b6:303:241::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Thu, 29 Aug
 2024 15:54:30 +0000
Received: from CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::546b:dc38:a70f:1c27]) by CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::546b:dc38:a70f:1c27%5]) with mapi id 15.20.7897.027; Thu, 29 Aug 2024
 15:54:29 +0000
Message-ID: <7ec98cd7-3659-426d-9665-075e2acb8592@intel.com>
Date: Thu, 29 Aug 2024 08:54:27 -0700
User-Agent: Mozilla Thunderbird
To: Manoj Vishwanathan <manojvishy@google.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240826181032.3042222-1-manojvishy@google.com>
 <20240826181032.3042222-3-manojvishy@google.com>
Content-Language: en-US
From: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
In-Reply-To: <20240826181032.3042222-3-manojvishy@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0063.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::8) To CYYPR11MB8431.namprd11.prod.outlook.com
 (2603:10b6:930:c7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8431:EE_|MW6PR11MB8438:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b98927c-fe50-4ecc-ffc2-08dcc842de04
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dy9HbnJBb09YWkNmWlhxeGJjUlA0Z3JheWwwaU54NHFvWEE2SXhYZ2hnZi9s?=
 =?utf-8?B?S25qUjhRNXJjSkhKdTZnYXp0NnVjY0x1T1c4dU9pL0dNODJLZkhieWhkVHNC?=
 =?utf-8?B?Y09BYk1qZ3JMdU1nVzh6MS9KUkxKS1lOVFFHdUFod1BOWWVGL2lDdHhzc2Jx?=
 =?utf-8?B?bFZEbEhTQjZ4TW41S1JFalFpRjBVZmdQWTFla3I3aEY3djBERitMU2ovVkJZ?=
 =?utf-8?B?Wk5vdUtiSlFoT1dMaTJjbUVlWlJKYkJGOWFBbldWUVFEN2xZVmFHcUpBSStj?=
 =?utf-8?B?eHA2WE05czU3SENoeEZ5bkh2T2x3WEFsRnlZaUdKZmsvNVZGb05KbjB5QVdh?=
 =?utf-8?B?OUhRQXJYYXc0czE1QzRuaWZoT3gwWWpMeWFVL2d3NkRpQjIvaU9MRFBYRVZa?=
 =?utf-8?B?TUdQTlB2d1owVUF4VE95UjVqckJ4V2IzREV0TFA5aHA5MG9ZR1R2S2pRQ3BH?=
 =?utf-8?B?dU0ycVZyRitFVCt6R3ltMUVZa3cxNnpUUnlMN3JyZ2h1UVZhSkJRZktlM0ZC?=
 =?utf-8?B?dy9kdVJ3b0hKTi9YU05QalJ0eU1xL0I0ZXl6SFdPOFpaMUxlVkdmZmw4Uks2?=
 =?utf-8?B?ODU3REptVk5lSU90NE40cUtDYzBZSWg3d08rZHFJOG8va2JFMUNBdTBvMDdJ?=
 =?utf-8?B?ZkVMTDBFT2xjNGV3U2pKUDY3RlloRVBRMW91N1V5bGdtTUkxcEU1YWhCQits?=
 =?utf-8?B?RFdIdTlwakxtaWNwVXVVZXV4VnZKY0haVElyTDRBb0gyby9PV2VsbXhxcXBq?=
 =?utf-8?B?UzZqcElpWFhvaEloWmZRTTV3SWhOaXpORHJsM0hrUGY0K21vR2VKc1haaGF1?=
 =?utf-8?B?UW9RVXhnUmZqM2ZYakw3Zm1KVDlsU2Y4NHc2OEp1WE55R3BNUEM2dDR1QWRs?=
 =?utf-8?B?c3E0dEd3cS9iejRTTU9CTy84M2o0d3d3S0NEV25rRUJXV0JqODJVZG8xOVY5?=
 =?utf-8?B?cmY2NkhnZmpHOGNpOUMvNnk2a3RRbjNhODB0Y004Yi9mTDNvZ2ZBekdpckcx?=
 =?utf-8?B?UFBKMTN4cHBad0dLOXpIendJUTdNTVpYamNLK014U01tZU9Sa1VqZlc2TFMx?=
 =?utf-8?B?enp0eWpwRlU2Q2VGOStSV2NEcGIzTFkxbzk4bC85NjNubmUvaHh0MmlYWDNa?=
 =?utf-8?B?Q3IySXdoL2gzMVE0ZzdDWWRQVTFaZmU0am5TdUVqU1JUNUNCUEE3djI3Rko1?=
 =?utf-8?B?N0F2QW1Gby9wZlU4R3lybFlTVytSMHlONkhKVTV3UVUrenBVaHhBM0ZQeUVQ?=
 =?utf-8?B?UzZ4aVBMQ3p6UkhHMTEwZ0JIVFJEM3VsRHk2ZlF3M3FiU3FaQVlsVWM1THVZ?=
 =?utf-8?B?QSt5Y1BWMS9abWYrT3VYcnBTeFY1K2ZQc3plTTA1dU5POXRFU1FGZU1pREx6?=
 =?utf-8?B?VUpYREFoaVQzK3J4MFlQWGhaVCs1LzY3OG5tbWduZWd2Q3F0bGZJZGs1Skk3?=
 =?utf-8?B?T3BNSzcrSFdwSXh2RVVuWWZnbXloWmhnVERDOEdEWU93eDRHdk51Q3NYQkQy?=
 =?utf-8?B?QU44aHZmS0VoTFNrM2pUS1pHbDRNMDFWN0sxUDlPSGkyS3V4Q3dObTErS0U3?=
 =?utf-8?B?VUdlNTBielNpb2xIek9pMVRiblJFSE1qeVN6eDVMbDByYjhuYjdQSzk3b3Yy?=
 =?utf-8?B?ZmZFelFXWVV0ZmFLV1NQd1N4SlMyUVFvaENNNFZWdTZ6bGh1Z0tiMTJaNkp4?=
 =?utf-8?B?NXhReVBQWnpTRTVTK1JXb3U1VGF3NGFzNCtuOUdRQXZLVkFTZjlnUmk2bzd1?=
 =?utf-8?B?UXB1cmNWMVRueXBUVTFoaTd6Z2ZnZEFBN0l4VzFueFlKM0JIeEpZM0RIUnFi?=
 =?utf-8?B?bm9Oa0JjQit1ZWZaQU9zdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8431.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3ZJRnJwNTZpQUN0d1FFd05mY0FsbXA0eXJlcVpOaGcrbG95Qzk2ZmpBZita?=
 =?utf-8?B?MEl0SE5xdDRMTWlNWUdHdEF3UjhLRWoyQzZjMCtxcVY5SktlZVpVSVNoMDV1?=
 =?utf-8?B?YlBjY28yeDFPdXhLcTJVc2J5c2cvb2NKa0RrcURPK1VWWWlKM1dnNStGUG5S?=
 =?utf-8?B?OFFkMjdiTU52clNHNkZFQlVVMFVYc1Bibm1kS1NzZmhPNHJlSWdXNWZHeFFr?=
 =?utf-8?B?ZkdoOE40TWN4Wnh2amUxRjlodGtMUmpGVVd2ekdtUkdmZG5xS0JuVkwxLy9Y?=
 =?utf-8?B?UGRSNmpEVHdENHczblpNYjJXWVRDTXh3bUhXOUVjb3lUQWdyZW1OTFNISnZa?=
 =?utf-8?B?TlA3cWR1eHc0Q0FIaEdDRFRkZS85U3cyWHJpcy83RXhWZzRTZ1VJbGNaNG9u?=
 =?utf-8?B?QVVHQ0Q5T29oUzVZcURBRXpZU2s5TWV4enIwNkRUUUxCWGZ5MXBFeVozZTh3?=
 =?utf-8?B?MGl6cEV2VzVSREJHUzI3S2hPUUZoSW5yZEVmaUF0cWU4Qjh2dE1uK0dPWDNm?=
 =?utf-8?B?UVlYbE0yWEVmL3E5b0dpQnpidVZDeXJWM3hrc1NFQ2E0MXhKWnM2a1hFc2xJ?=
 =?utf-8?B?NFpzRFBocGZmRzR4czg1d1o2RDY0dzdITHcwWEt1b205WkpnOHJYcWYzOHJN?=
 =?utf-8?B?cVZaTlZWc2xqNGtOVUdndWIyOWc1c0pRRDBBa1BwYVZrTERuNEZDbjRkR2Jh?=
 =?utf-8?B?T3BaOGFvU0Q0Z2Rzc1BzZDcvb0Q5TThUUWJGNElaZllNZTVlMWRiWlhaTitF?=
 =?utf-8?B?YWwrdkhPT3JjaXZoMjdVS1NFWHZmUlkzWGZwWFZQK0pRSkpqNHM2Y205SCtx?=
 =?utf-8?B?dG5xWndIc1VoVkQyL09GRUFDVzk0ZXJUQzhHL0s1M1REVUljVkc4bHVRa1hY?=
 =?utf-8?B?alNncUx4NllQbkVVUW0vaGl2RGJaNEkxUktoUjFnTXlCV0t5K0RNQ1gveVpj?=
 =?utf-8?B?d3hnYmFMd25CUFZMRkRBYm5HdlE0Y1dRb2JIejY4VjkzS0RJR2tJcGtvOUxV?=
 =?utf-8?B?T0djZnZOb0hUUE5zaThOdGxnTDBSYXdlNjIweVF5cXNGbkYwWkRZdGxUeG9q?=
 =?utf-8?B?clc4QVVJdnZrM29HMXN0ZWhCOXF5M1BEVnJabXNEUm9pVWErejZXVmw2TzVy?=
 =?utf-8?B?K2J1Z1FnNGZZNEEzNEVOM0pTQ3pReHc2RDNIZU9ITjVwWkY3WnQyWE83SzdW?=
 =?utf-8?B?Q25OZXRBdEZtdVUwZVA5RVZZK2FVQ2twTnlWSjdSMWhucGpLKzJ6Y1lxK1BW?=
 =?utf-8?B?THd4cTZubXhNMzA4aXVMUFBTcG45Y01XRFA5WW4vNU9seUpvcmJDa1Z3YXlY?=
 =?utf-8?B?QjNNMHI2OFlPM3ovcGNaV3g0WUtrMWQzOVJVRWx4ODh5ZW1jQnQva2pncVVZ?=
 =?utf-8?B?TXRjSlhiUG12YkY2bGxsbVRCeDVWd1l1eTZsNVA1cXB2eCtORUY5WXdNTXJI?=
 =?utf-8?B?QzNWYytCYTdjT1dJb0JwK3c2VDZNenY4Zngwa1Y1K2VmZzJUSksxMzBwUlda?=
 =?utf-8?B?TllqSDdGODliZWJiSzNRb3grRnVaM1UxbERjMGhHS205eU1Cb2JZQWZnYmN2?=
 =?utf-8?B?N0o2S1ZqRmJ3THlERWowdFdmOFNaUkJxblJZY0J5RUdvT1NhQU11L0hoR3l3?=
 =?utf-8?B?QWJSVVEwUEVOK2c2Y2xCdHE0SXRua3M2SHJOb2JvWEd1TllkMU13RThtdXV0?=
 =?utf-8?B?VUhRVDdER1VCVDBZbzRHc1loNUFwak96Zk1iaVdPZ0hKQW0yUU5JLzM5bVlS?=
 =?utf-8?B?WnJkZWcvNEgzbDd3VGFKY3lpVnlMcjF4L3JRZEhNTnA1eWs5Nm1LVFFsekdo?=
 =?utf-8?B?V0VnNG9UMDFvWWxhQUF3eVJKOHYwV3VGSVRSUjNHRmlqdjByNEk4Y3ZIUDdv?=
 =?utf-8?B?MXhIR1BRdDhwWWZSdnZQVERNQ3VNM2RmeWlFRGg1YWdGWWxBSE5zbEFlQVpz?=
 =?utf-8?B?eWg2T0NJZ3Z1SU1yeHd0U1lzU05vck5ITWVsSXhWUTdFQXpPZVhmV2tiWnVi?=
 =?utf-8?B?L1gyU29Xd0Y1YXhyQzQzc3BRNGFsTzE4dURKYWZ2SHkySVI5Skt5cDVFRFZ5?=
 =?utf-8?B?d2FSOW4xQ3N1Y00yV1B0d1NvVElhQkMvczNVWG5obnh5SVJ2YTJUWkp4MmFm?=
 =?utf-8?B?RVgrN1JKMVdYNCsxT1BBdkVCUFg4Q28rWjI4dG51RkZ2R1U5aEt0bmFZcUlE?=
 =?utf-8?B?Z2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b98927c-fe50-4ecc-ffc2-08dcc842de04
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8431.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2024 15:54:29.9268 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v1Q7ENJg1iQRX+Nf34RQ3fd6iB1N/tj9SX9+mgdKlBGFV6mAPnbPgHw+OAeGrzvWsVPdLLMqAeixl5Dv/j3RJEL5IRYxkMUg6g4jNV/uE1U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8438
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724946874; x=1756482874;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rT+vqV96kseMdIeIMUeGUqEprsPvFX7InWPWLiDdB+0=;
 b=nU+GVWI50C6bNb5f5yNIhBeqW5+T3Iv5PBrrriAecgzLxnGgZCQHEMp4
 FMnL8MqEWbXeGR35Ret26zicvJguLqE9TAviP1ANytS4B9/daNYf15D+/
 i/YFvUnEKz/td0WkwBg0NA04gP8vSCF8S8grjrRx7h78n0W+jKZmU599U
 BMHXpLSC194TmaNWKjhGLFkDxqzeLilYleKYjICbmY4tjLzXnBvGAQqH7
 RKCyVoOsJyxRp7X0cDra0eHfGiRK70NvSRT2EruLKLF2Y3q0BS0u3hVVO
 6rjg2RO/tDoNirGKv1a5l1OdWAJuAB92RGiGQW2wKTezOzVroEBWbNDyz
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nU+GVWI5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [[PATCH v2 iwl-next] v2 2/4] idpf: Acquire
 the lock before accessing the xn->salt
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 google-lan-reviews@googlegroups.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/26/2024 11:10 AM, Manoj Vishwanathan wrote:
> The transaction salt was being accessed before acquiring the
> idpf_vc_xn_lock when idpf has to forward the virtchnl reply.
> 
> Fixes: 34c21fa894a1a (“idpf: implement virtchnl transaction manager”)
> Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>

Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

> ---
>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 70986e12da28..30eec674d594 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -612,14 +612,15 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
>   		return -EINVAL;
>   	}
>   	xn = &adapter->vcxn_mngr->ring[xn_idx];
> +	idpf_vc_xn_lock(xn);
>   	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
>   	if (xn->salt != salt) {
>   		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
>   				    xn->salt, salt);
> +		idpf_vc_xn_unlock(xn);
>   		return -EINVAL;
>   	}
>   
> -	idpf_vc_xn_lock(xn);
>   	switch (xn->state) {
>   	case IDPF_VC_XN_WAITING:
>   		/* success */
