Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 031929F6B31
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 17:31:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1B5A614DB;
	Wed, 18 Dec 2024 16:31:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hxNaoPLtPt_N; Wed, 18 Dec 2024 16:31:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 730646148F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734539512;
	bh=1y4kYZWKhnZVAnyp8A3gUgCRJTwMlQqE3WYIDZ5n0ds=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sxTywlz+wE2w3r8JDFR5wnoKl9gnLYslO3am6DpPV7yrboCDZ7AUFBxznfP2h+nxs
	 g+x9sny1nSrQxseZAyXVBFLk0Vj4fpiBmbwY4CqYoW3xFTepTb9V75xJap2mCet1sk
	 Jty0GW3IV7Br83CYGbEYGhJ38hDd3EbxksIWpFnjg1uzVR15nyIj0vHqgivMOfxm6m
	 G0mLMYA6SFCXYv7UyQe3FbPkKMdJpOC7MSPOW09mhuney1oprYLhjvh4YESLB/dwOq
	 Yul4/VyR5OFJrbbjWaCs1yR5kUqg4f3oiSciUj93SX5ADSGwNcVOM4GPdve2R2lmUb
	 8Y3+ilS9zniYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 730646148F;
	Wed, 18 Dec 2024 16:31:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A0966CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:31:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 689758475C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:31:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AM0eblcfgMBw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 16:31:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 45DB484EA5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45DB484EA5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 45DB484EA5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 16:31:49 +0000 (UTC)
X-CSE-ConnectionGUID: ybpN6BftSZ6uSWGkByv9iw==
X-CSE-MsgGUID: M6aS7yLsQ7WRnxlFLQnk/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="45514656"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="45514656"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 08:31:48 -0800
X-CSE-ConnectionGUID: AFVZAO0CTeyNL6xT5wRyYA==
X-CSE-MsgGUID: Ge/98vAjRTW2ytfTK3iOow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="128704409"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 08:31:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 08:31:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 08:31:47 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 08:31:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E/2E+8D9SRsIg3Y9oK8hlx7P6X7n0zJjNLKuQ3c7H2QUOKkaGwFKqUPvWQFupyE9dUB+HNbL0f9kOaysoCTNO2uCC9gFIHL4riAAZoqIscvvWuI36F0ZhMubo5UpleSOOA6KekYu7Ua3kXmti9iRNgVK8AgV6ttGzChRtppZw0QW2kFhAqRHon0mE2e+06nOM0r8RkVM8+5hNLfuaH2cyZuHsdp03oyJ8I0PDzhkHktQfQY8s68jH2wZD39feWQXVCvM53Z3XoLXLiUoPeX7MzlXx13dmtTps9uJAfFXN/x5Kj+8iStEL0oWMOPA1lzTim0De1kVK+PTWB7ELBHefQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1y4kYZWKhnZVAnyp8A3gUgCRJTwMlQqE3WYIDZ5n0ds=;
 b=DzpENza3iKy2GJsFSWcjD6k5H8j0gCn9itl5c11343JbaTs1N3526Kxoim4taBKyQBCC+sP+mXrAnQ7eyJ5k6OGsVXSDno6QtJa6Y+MPq0fInwU3O/qEEpr9kpyvW7XYNg8Zj9jQqRRgoDyZAdsFrBhlwbW6WiZd89gBe7nT+EE1F0mismeY6TtgIqSJq+P9j+RmsA6KMPJ91DCWoOCmJYDj0bCNSHCTZnao4t+LoYFPM5O6vQ/YxFx7ytj/+IfajXmPv1tuXoQWCp0ACk3CUUrTnTQC7cT2kXF1FYG0i9dzFvixSK98nx6HaLA+bjcq/oVADdQrDy9i3ai9oLljqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by LV1PR11MB8852.namprd11.prod.outlook.com (2603:10b6:408:2b5::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Wed, 18 Dec
 2024 16:31:30 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%5]) with mapi id 15.20.8272.005; Wed, 18 Dec 2024
 16:31:30 +0000
Message-ID: <3eef0493-7443-43bd-938a-7a1dea83ac11@intel.com>
Date: Wed, 18 Dec 2024 08:31:27 -0800
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <larysa.zaremba@intel.com>, <decot@google.com>, <willemb@google.com>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>
References: <20241218014417.3786-1-emil.s.tantilov@intel.com>
 <1102746b-58a8-44fb-98a9-a96db1096fe4@intel.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <1102746b-58a8-44fb-98a9-a96db1096fe4@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0292.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::27) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|LV1PR11MB8852:EE_
X-MS-Office365-Filtering-Correlation-Id: cf779200-1a78-4b8b-4a38-08dd1f816d1b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K0pIcnpHRktabTFUZnNHeTF2NkdDb2ZkSXE3MFNkR0NKalNDWmVGQmMwSmRO?=
 =?utf-8?B?cjkwb2ViS3J2akZNeTEvd1l5b2dpb3dZS3FQTThoaTJXQ2lpUEZjWVpzMGt3?=
 =?utf-8?B?N0t0ZjFWeDZibncyOWJORlZ6VHR4UmhJcDBwVXlqRG9HYkd4QkNadzVhSnVN?=
 =?utf-8?B?RGtyWDVDcXlvaEFUdmtzd0pJc25lUTJzSzBTc3dhalcyalN1QmxZa0J3VzdE?=
 =?utf-8?B?QlZQbnNrWFlFRnUwQXhmbFkwNkdvenZQN1YxWjFrT242bi8xQmR1MUNaQ1dp?=
 =?utf-8?B?dk5BUUwzV0piNTYveFF2S21vNzVHQmxvVW5uenB4UlR1WHNNVGxUM05NbWRm?=
 =?utf-8?B?dUxvdHVKaTdoSVhGSVN0NFU1emhDeW5BcVJRTFc5cXBiTEFod2R2Nlh4WnR5?=
 =?utf-8?B?RC9HZ0E1bGM3T1l1ZjZuTUc4QWozenNreUt0NDM2OGFrdTZ3TG4rL2RlWW5O?=
 =?utf-8?B?WjJYNE1aTnRVZklSOGlZWlpkVVd0am45SmJRdFNLSjNIZUtFTmRLeXdwWCt6?=
 =?utf-8?B?L214TlNIRHU5YXlUcXZ3Ym5IN3RWMjNMS1pkLzkwR0RvV3FBVDVqZ3ZNR2dl?=
 =?utf-8?B?YnBQWFVaUHBYblhuK2daNVN0SXRTYnpRY2JvaEVKUHd2ZU11aGtMT0Y1ajBx?=
 =?utf-8?B?dVVyamwxMHUzcEk5MkpDdER1bjcrckE5SmZlTDREYUEzRVl0cWJTUWJBMjhS?=
 =?utf-8?B?bWliNVpkU2lJeDFibXhRZnJLOHJQQVg1d0tYODZBY1EzRm5ZQUZmWlVRK002?=
 =?utf-8?B?RGRVc1hYclRXdGR1dVowVGZNK1pncjlsalVrSnBNakNaNnNod01kbmlTd2hV?=
 =?utf-8?B?MUIyOXhZV29TUUtwZWQ5MmNEMXY5MFJoaUp5NWZPVUY0bk9YREloNCs0dGhz?=
 =?utf-8?B?Q3F5cjVpazNXR3ZqVDdBSGtkTGZpN2hCa00xMXMxbTdmWkJNYUJOQ001Q0JY?=
 =?utf-8?B?Nk5BOVZSNnRCekZ4c1psdklhNWJ6T1lQS0JLQ3JZVUFGR0M4aUQ1dzgxZnZz?=
 =?utf-8?B?OE5NWVQ5S21sVTRzUDE0OUMzU0NWWFJ0YitaaDNzWlozNzZxNnpWOFRORWZ6?=
 =?utf-8?B?ZzNyYjFlZFVmQjdDUU9xWVJKYS9uTHJSU1Q1SFptQWh1S3JKTHBJZUxmcEM1?=
 =?utf-8?B?N1VXbEptVmx2cmxXRlFJcXhDcEdMbHdXZERmclhvQzRBZFhvN3ZoM2Q3SnBu?=
 =?utf-8?B?QUFINE9UcjJRUkJYNHVhOTQ2dXhqZy9wSW9PaTN4VE1PdElkbStNZ2EySitJ?=
 =?utf-8?B?YXBRT0MvK0h6amhwdGhEZmx4WFB1ZlRWaUJ5S0tDQ2MzYS95NC9GWk0xeU80?=
 =?utf-8?B?TGdQZUI4cjhIdmViQ1hTbHVMa0xqemphOVgrUnlJOTlGR3l1M2ZrVWZnZ1E2?=
 =?utf-8?B?NGJXSzkyWnBwak9jaXY0S0xlalhNd3FhLzR0QTF6Um81RjZlL0grOTBTczhk?=
 =?utf-8?B?RWUrRHlLSzFwQVBEOVB0YWJYWDQxR1BoeUdTcXBZd2NnVkVFTFhEaTVFUVps?=
 =?utf-8?B?eTZXdGcyUmZTNzBXbHJzZlRYNkpjYVRyckRDWUdvY2s0OGZEMDB4aXh1T0F3?=
 =?utf-8?B?eWh1TnNzc25yOHk3Q2dHOGZ3S1l6OEc4RnVsWUJTbEJhZjdhZUdXSzFFNklu?=
 =?utf-8?B?RDVuWnR1Wk9pVkNoSm5OMWcyTU5RWW5za0NKNHkrK0hFUTYxZXZWNnlja1dy?=
 =?utf-8?B?RE9icjd1RUNmdllsbVZIKzRIQmRaN05MRUNjUWFpRnptRGN2d3JQVWVzOW1o?=
 =?utf-8?B?SEJKeHJkU2VnL3RqU1g5QnYxd3VwWnRseU5FQ1hMQU5JcUhSNFo4ck4zeTRp?=
 =?utf-8?B?a05RaFNKYS8rZDNSN0RlYUY2MzFrM3BVdkZkZEF3K1BKTm5lSm51SXBvV0tt?=
 =?utf-8?Q?e/2DRef6ykgsw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUlwT290MW42V2FURkJTYUNWajVkRlA2RGZVS211SkdSeitNWUprblZPT0Vi?=
 =?utf-8?B?YnZiNUgxT0dENWtmVWR0dlhlb3QvVFl3ZmFpckdpaW1XSUJJVjVjNWJ6Y3ht?=
 =?utf-8?B?SlVXM3ZlS1ZqQTFTa1NhQzVHQTJaOXF2OGdHN3EyUk5YdTIyK0FHUlBSeHRX?=
 =?utf-8?B?cTFRaytycXBROG9mUjhyaHhtdDJZWm95OFRDVk84YmJLd0hJZC9ISG5yYmZY?=
 =?utf-8?B?QVNpQ20xeElQTUZMQ3NGWjUzTHAwN2FyRURmc2ZJbFFIcmd1SFFPZThMcjVN?=
 =?utf-8?B?TWVqTjV5L1VmQXhWZEZQMkJJdmxoaWkzK2dxQlljcDBlaFFRRDR4dHRmVyty?=
 =?utf-8?B?M1MrRUZGT1lwN2luQlc3QTVpWU05ZDdiOUEwUk9saGpXTjN2NUJUVGNMMEZC?=
 =?utf-8?B?RW9kNE9sSjI1a1hnN3VqR2I2Nm5GbFRiVHRoTWdqbDhnYnFpcnFtR2ttbTBq?=
 =?utf-8?B?Snkva0EycWdxR2ZyWDcvR3VyRVEzT09rbS96czJlcnJRNGY3UWVFOXZxVE4w?=
 =?utf-8?B?MTZZbG11SHF4RUN2YmJNeko3c0hucC8raVkrQWlJOVp3TitLSE42THdvVk50?=
 =?utf-8?B?NDNlM0tWdWU2OCtEamxMMEdVVVFPTHQzTlFyQW1zSVNZbEtiZG84RzZBUm0v?=
 =?utf-8?B?dmdjWUViT2h5L3ppdmUyaVFydVBxdWpkajRZeWdXL0l1eWxjdXcyWjdCakZ4?=
 =?utf-8?B?WEFFaHllTk1OQWpvOHcrL0tGWWVxMnJ6dDdrV1o4Z0JpYkpFQm91WmpRV0FK?=
 =?utf-8?B?YUdRdXcyL2FlaXkzZHRGbTRYYjJseENueXRkZlFmT0gyaURVdnlycGRFWHNQ?=
 =?utf-8?B?U3ZabW1YZ2JvUWdQaW0zUGt1dkpQTzhRZExJNlBZa3ZmREpldkhPZnJOeFFz?=
 =?utf-8?B?WUhydjJRcUhMRWx0eXY4TWFZQUx3QUt2dEZBd3VVc1RxZDd1WWQyVTYxOEds?=
 =?utf-8?B?WUYyeWgwaEZGcGgrdnhQeTBjNUg4SHdHUGZqU25oSGFtNHQ1RFdKMk9idUpZ?=
 =?utf-8?B?cWwzbXdPdVdvbFo4NGVMU0NKOEVTbmdlaHhSQmJDcWVKNWo2aHhPRFJFdy9P?=
 =?utf-8?B?MVd0cDQzcGlsdjVUZzl1V3RKdzdjL1pMYTNYeU9OekZYdDIrbmZjaHZzK3Nv?=
 =?utf-8?B?Q2djU3hNVSt2U0tUMzhPUy8zSys2OEZGdlFBWStoalhTSnI3TWVEZlppa1F2?=
 =?utf-8?B?WHJtU1dPRFlTRWhINTY1MVNyRlQ5a1lVUDBhS3ZQb20vRkh2Zkh3c2IvR2U2?=
 =?utf-8?B?eVNLbmhvczVMNzRndmVkMzFiNjVTR2pFU01vUnV4eG1GaWRtcGE1VDV3SzR1?=
 =?utf-8?B?bzhLaS9HYmtPb0dmUE9kaU9RUGR2VnRQZFpCWTRFZFBXdkRoTmlzRURVYUtN?=
 =?utf-8?B?SDhkZlU1RSszdnJDYnErZmNUR0VHVWZjNFR3TmVqeFRNNjdFWFRiclNOR0tp?=
 =?utf-8?B?T2NuM3kvL2sxWmRiVUdiRHdWNkJWc0gzektuc09SdEE0RHc3RDA5dzFJeUNV?=
 =?utf-8?B?ajl5Y0JSM1FFSXlJSW5VODRjZk9KMHZ3WlN2ZUcxb1hESkNjUUVnQUhQdFBO?=
 =?utf-8?B?K0lOOE5KdVBnc2FDY1JYalQ5d1R6QXJncTBXVkdEdmlWelZnY3VPR2VYelNX?=
 =?utf-8?B?NkJRcTNjYW9HS05ZeCtWY29WOTk4YlhocW5SS0JqOUNwM2JSSFM3KzNwNHNN?=
 =?utf-8?B?MVRkS01yZG15RHFTT20vUUpCdlpvTUV6UnZrQno4ZXlrbEwzU28zL1BxV0JC?=
 =?utf-8?B?ZnRXalZIMjR2WHE0di9TU2l6YmQyazZhOVI1WHpsRmxZazRSSlk0VFpLTTFq?=
 =?utf-8?B?alQrVHJLakRmN2diSEpjVm1ja3g5bVQ5aWVFZWFmTEtjVkhjWnlJa2J0Mm1C?=
 =?utf-8?B?MEI3TytDR1JwZFptZVNna1JWSnk4cG5pTHdRUDFjeStKOVFxazBDNXpLZVVV?=
 =?utf-8?B?dk1uZzB5UkNZdW9iVFNwYnh1bWNVZCtyTDdtOFQ3U2NVTWZ0dnZhVkJMS0VN?=
 =?utf-8?B?UkR6Tkxicjh3Zmo5MTZnc2JONGhvTnp1ZnRnSzY1ZVRNbERQZ2xBMjJST0I3?=
 =?utf-8?B?K0ViVGp0cXNwQVZpQzJEakZaUlhMTkFHQUFXWE1xNEhUeGxSSWxibDZtckMv?=
 =?utf-8?B?cFNTTnJ0OHh5aFpyZGd4QjhTS2ZaYkdGK0FmUGp0MGYxWjVxMGFjaytKcEhs?=
 =?utf-8?B?QWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf779200-1a78-4b8b-4a38-08dd1f816d1b
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2024 16:31:29.9739 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x4seigLBL2p0xYciHNviXcjgYYS3Y4SuMTpyuLfS+7AHM7QXQay/guU5b+KXNh0L91Xf3ASCAQUAXGPMk0CFp4SQ9V2WYG+rUSpKJLNUALw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8852
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734539510; x=1766075510;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=McHF/7ZqqKJRUIbUFD8AONQqmd2b/pVhXyXzTCIjzNE=;
 b=aFQBcu2FpSxTvZaxsbtf+pxlhuGXuOX4NphTEo6o4NPB2mzw0jiQx5LN
 nwPIbQv8ITzqgROfBLc3GBbnQ96RRWfybTvyi+A7CzrACMjns0wuTvTIJ
 kp8uunw5Cmg105PxS4AWy+jiXLlBZARFKqAb0T2rOIwWVMy2O5KpdtWo9
 OdSxRsRf2RvkFHpHSe6yEsYv79EyyzMamNTtN/Sue7NjCYZVCrb2P6VFi
 yV1BcmBxpLbKWDiKJ38eATDpLpf4wWYq8q7r3SQG2NW7kmQjvt7vwpVhm
 MxxaQWRk64WZY4wH9MdHfc5X//rxLHHyxgC6EkVzVgb2Jqw0tCGDwhdXF
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aFQBcu2F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix transaction
 timeouts on reset
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



On 12/18/2024 7:13 AM, Alexander Lobakin wrote:
> From: Emil Tantilov <emil.s.tantilov@intel.com>
> Date: Tue, 17 Dec 2024 17:44:17 -0800
> 
>> Restore the call to idpf_vc_xn_shutdown() at the beginning of
>> idpf_vc_core_deinit() provided the function is not called on
>> remove. In the reset path this call is needed to prevent mailbox
>> transactions from timing out.
>>
>> Fixes: 09d0fb5cb30e ("idpf: deinit virtchnl transaction manager after vport and vectors")
>> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
>> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> ---
>> Testing hints:
>> echo 1 > /sys/class/net/<netif>/device/reset
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 8 +++++++-
>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> index d46c95f91b0d..0387794daf17 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> @@ -3080,9 +3080,15 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
>>   	if (!test_bit(IDPF_VC_CORE_INIT, adapter->flags))
>>   		return;
>>   
>> +	/* Avoid transaction timeouts when called during reset */
>> +	if (!test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
>> +		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
>> +
>>   	idpf_deinit_task(adapter);
>>   	idpf_intr_rel(adapter);
>> -	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
>> +
>> +	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
>> +		idpf_vc_xn_shutdown(adapter->vcxn_mngr);
> 
> Why test it two times...
> 
> 	bool reset;
> 
> 	...
> 
> 	reset = test_bit(REMOVE_IN_PROG);
> 	if (!reset)
> 		vc_xn_shutdown();
> 
> 	deinit_task();
> 	intr_rel();
> 
> 	if (reset)
> 		vc_xn_shutdown();
Good point, I will update in v2.

> 
> BTW can't we just move that call unconditionally?
This will be a revert of 09d0fb5cb30e:
https://lore.kernel.org/intel-wired-lan/20240904095418.6426-1-larysa.zaremba@intel.com/

Which based on internal discussions should be OK, since the control 
plane (CP) is expected to cleanup regardless. The consensus was that 
driver communicates with CP when it can, hence the checks.

Thanks,
Emil

> 
>>   
>>   	cancel_delayed_work_sync(&adapter->serv_task);
>>   	cancel_delayed_work_sync(&adapter->mbx_task);
> 
> Thanks,
> Olek

