Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B67C85990
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 15:58:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53FB08348C;
	Tue, 25 Nov 2025 14:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0wjCKvFNNVQP; Tue, 25 Nov 2025 14:58:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 579F0834F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764082731;
	bh=PPtf9ugg5AnR+AF+qLjvt+B/9aE8Dwl5X0Q7cObl7BU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7TGABkmLXW5GS4XdDPqe12UBBzUSIaCoRTxcqpHb4IJSNCbK0dfOddwLlOcyefy0o
	 9BoAN8wwpWsF735byDzqKALbvreaoeU0nF7bhfc1NFPYdTJaR51vKtnWhsKKF6lw63
	 NTPbye1jICLcp9wou25nD7zm/0eK1tDUC3R+dgshEdzNxiAv5dNpXpjEQfXeI5A3/v
	 eLMM1UN9X9TnA4LYfRRviiAC6Gc/rFd2y87vEd1SoBmh96bn0ZgOYzEs20mE/qaAP8
	 tjm8JX8nfbZWXGs0zvhmnaA5AvlFHnDbKhVQfeXy9pABXiwC7IVU+QRT8M5NAMrQn8
	 o9uBsNRLVSe6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 579F0834F5;
	Tue, 25 Nov 2025 14:58:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6CCDC359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 14:58:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5BBB241094
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 14:58:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LD_RwsTLjAuf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 14:58:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 230824108A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 230824108A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 230824108A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 14:58:47 +0000 (UTC)
X-CSE-ConnectionGUID: acTaFSo9RQGr+Yie65cb/A==
X-CSE-MsgGUID: LheU24VuRvCTYVZUT6ltIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="76786064"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="76786064"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 06:58:47 -0800
X-CSE-ConnectionGUID: 49I1KemhSue8A6R055HMFQ==
X-CSE-MsgGUID: JhlARpFsSD6z/2R0is/SYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="193463104"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 06:58:47 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 06:58:46 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 06:58:46 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.40) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 06:58:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U6JBhVHrYfj10+FVG7u0a09o77PDS785FSfouf5BzRCwSvqYLCF3K/mJd67iOs1CG+Db+gXPI+ErlxzkAKiDxvXSLPYQkbtq9bcgn+EFgC2igUXKss2K9rQGFdEpb/MhXoX1K3DU2qsOYpJ00npLSuE9UFKJiEunRW4Ft6gWrPoP8rTzTD5w5n9rJokYiUx63Ec9sbgLG2/P+xHgrI6rgmsGrOf9ort1ouCGxbfjz5b08WxMT6pdRV3lIcigGBdqptKU8bvN407mj2d01iZM7aQa54quKfvGXT5+yXeVJd4LsPQR5GEjKTPtnfAxDprlge39WbaaZUrmlDVYkgvrSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PPtf9ugg5AnR+AF+qLjvt+B/9aE8Dwl5X0Q7cObl7BU=;
 b=MJFpVMtxPqn7OUMM7IWQVUuUO7xbfwKgRvgFu9s2DZg1TNeusu6apYb2lzQ503ddptKXjhDW7g0al9nJGxdHBdJidbgPaDaUJz2fEEKfTMe9jNCu3hNZaAaNJ8K1f0ezS05xYjRToM1r0yv36PBO9sTGr8wueCG4JJ96BkWFBP3LaJ/PojNaC24BiCrCoB1+adUdap1x7gTrWFM4kel6wOKhJU823gsubWtmjTZHYfYGbJqFjn6tYQ/okOQoCNfJkccVce9lmcRwzJGPC1l0E1ga2gZHg1ZwDrhvKExJzVoZnvtm8km1kkRos8qz2pAqyoiTtw6u98YIFSVyLIn15g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 14:58:39 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%6]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 14:58:39 +0000
Message-ID: <3e9dc8fd-9052-4c53-ba40-5904306d09fb@intel.com>
Date: Tue, 25 Nov 2025 06:58:37 -0800
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <Aleksandr.Loktionov@intel.com>, <przemyslaw.kitszel@intel.com>,
 <anthony.l.nguyen@intel.com>, <andrew+netdev@lunn.ch>, <davem@davemloft.net>, 
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <decot@google.com>, <willemb@google.com>, <joshua.a.hay@intel.com>,
 <madhu.chittim@intel.com>, <aleksander.lobakin@intel.com>,
 <larysa.zaremba@intel.com>, <iamvivekkumar@google.com>
References: <20251121001218.4565-1-emil.s.tantilov@intel.com>
 <20251121001218.4565-3-emil.s.tantilov@intel.com>
 <aSWyYIsoXNlpsQn-@horms.kernel.org>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <aSWyYIsoXNlpsQn-@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0352.namprd03.prod.outlook.com
 (2603:10b6:303:dc::27) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|MW3PR11MB4764:EE_
X-MS-Office365-Filtering-Correlation-Id: e149d171-b53d-4cb7-78f4-08de2c331df4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWxXZjJVcjRDR1k0UUluWEZFT1QxYTZOcUZQYnh1dTFsTU4wdVlLT1gxVit4?=
 =?utf-8?B?c1Y5VGJkaUw3citPVUFwTExqdW54N0xmemhlU3FvZ1ZsN3ZucUV0OENzU0x6?=
 =?utf-8?B?Y0VyNGpZTEt2TnZDMWlGQjl4dXJ6R0JscmtRVmNkYXFDdXNzRjdOWDNsWm5M?=
 =?utf-8?B?dUlNMHNOMG9Ja1NvbWE3aVh3UzNUUUV2L1ZteG1qdjRhUE5lTE14bFpURjlx?=
 =?utf-8?B?RU1aMjducXRtbVVYaStNa2czWTNuRU5vMWsxblNOTGJQVFFsODVWaVlQRFVG?=
 =?utf-8?B?eXZpVnQ3S2owcUFkTFkrOHdlOURvN3pMSFBEbWVzOE5NbC9KVzZGaHlHTWlD?=
 =?utf-8?B?TUVuWmg2QmFKWTNoZGNqNnBxNlhCUUsrdXRsU09zSnZldERRQThCTGFBL2Z0?=
 =?utf-8?B?TkNtYnd6d3IvWWxRUUVZZHhlWDk4bG1wU3pqdkFUVjhjVGpEbW5nU2R3NE92?=
 =?utf-8?B?MjFmN2loQlJzMzdkZ0xzUGcza2NMdTF2eFJDVzFRMHhBcy9nNk9iS1pHRjBL?=
 =?utf-8?B?MmpHN3RqaUYzb3pLMkV5eHNONmovTHhhR296ejl3MUdoSDVxaXA3VWlhOGFH?=
 =?utf-8?B?OHhRZWRwZVN0VTdNUmdLNXNvSldmcFkyQlp5eFlaTWpOTDZRTnM0eHNPbllE?=
 =?utf-8?B?Rm1CRWlCaFBUNkNHb3E1T051UXJ0eGpmMUNiNHdqSU45ejR6eGYrcjFZYXNr?=
 =?utf-8?B?NFB0aDZidFI5NUUwVTlNUTNZQmlaMFpJang4aVlUMTZGcGNlcEw2S1FXTmwz?=
 =?utf-8?B?SWJ2RS9MUnFaMGNpaWxseUtjY3FnaGFZREhWa2lmejhJQ3B6NklzMGY2alNl?=
 =?utf-8?B?blA0dHdYZ2hhMy9jTmNKcFllbUdRSHRyWGkxVHNHSHVmODF0L2I0R1VITWty?=
 =?utf-8?B?bW5VL1Y2Q3RlZHpWZVlVZ05qRndnQWZmNmNMamdKUVVSa3A0Z1lZRG4zcDl1?=
 =?utf-8?B?Q0hHdXoyVWU4NzkxMEh1aEtIQVRFaWtqaTZuRE8razM5dzZmZTk3SklSemZS?=
 =?utf-8?B?ZjZlNzA2MkZxQW9vRWtSTVdIS1loVy9iTDZONmd5TDRNL3BjL2M2YzN3QldG?=
 =?utf-8?B?b0dNc1RBUGh4SUgvVXduZjhhZi96dXVadHI0MmxKTVltQ2pkblpqcFZZdzkw?=
 =?utf-8?B?MkRwdTZTZE9VSXY3bWFUYzN0RjRpYVNsR2srdytqTHE2d0JydHVMekZYN2Zr?=
 =?utf-8?B?cDZ3bVhUM0hmRHZ3ZDZLWDNLYitkM1JnV2FPUjN5TFpTOFhlb2wwRTF4UjRN?=
 =?utf-8?B?WGVvM1kwV2tLSndrODhlK2l5emhPN1lLZU04MW1UMXlPMzZpMHIwRnFkZDZy?=
 =?utf-8?B?VVp3V0Y3UTJjM1I5M2VYaVV4SHBUREZJUVBJS0ZBck9SZHV2TWJOOG9BQW1a?=
 =?utf-8?B?VVRGMWJsSGU5aWRRUk43TXBYUkxFMXlBTVg0Yi9lUG9QenNMYUpxZmlPYW1v?=
 =?utf-8?B?RWJHSWdiODNsS1k4M0d3dGxPVnhxVm9HN2lkdGVSMGlwQzYrVC9Tam1wTUVS?=
 =?utf-8?B?dnVmVXEzVlVkanBEdThvNGFwTUViWVFtc2NkMXI0bWtrTk1jSm8wMkIrb1J6?=
 =?utf-8?B?d3ZRYTBlMTd0MmtJZEg4blZ2VDNtdXNsWWtzemV2L1FPazdaTGNGWEhocXRM?=
 =?utf-8?B?cDZTTEpiUXhVempnWW11YmVZT1JlZFQrUUxCbVlKeDFMSWlOMjdzK0JZTzFH?=
 =?utf-8?B?WG5oOGRQck1KcUQ1eHZISHVLaHlxWnl2UnlORVdqUk1kSGJSbHNObEV0alBM?=
 =?utf-8?B?YzJpaU8rZkVPYzJDeXh2a1RGb2N1R1JCM0xWWUh6SlVhd2l4RFUvdElsUEc0?=
 =?utf-8?B?MUNQTzdiSko5U0FmTkhSWk85WGlRWWFNUDJGdTFvMkFrL3NYakJCcU5CbTJD?=
 =?utf-8?B?WkJWZ0x1THBqK2M3UmRDWmZON3Erb2VTZDQyT2ZVb2JiWS8zYjRYOHE0Y3dv?=
 =?utf-8?B?Qy9xcWFVejJCZlNoNTk5TmtDZ1ZzVlZaK2NudlAvcEVDNHhBaGdGLzhTUVhq?=
 =?utf-8?B?NFoyUHJtZ1l3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUhacGFyaTVhbzBHTktoS1NCeHFuWW9qeldEaG5qK0Y1cWdoVlFCVEgzallD?=
 =?utf-8?B?ZDN5bUl6d2Jtbk0xNEk4T2JZQ3Qxa1hXNVpocHJoWGhPWjFtMmhGaG9zTFpt?=
 =?utf-8?B?dWYzWER4RGFXeGxVOE84bmNiZmhUazQ1MGhNMjNzcy9sbmNSNVJyaW5rU3Vs?=
 =?utf-8?B?UXgveVJFMlNiSndKUEx2emgrUk45UkNoY0FOeFRDNTBpS3F3U0trcDN4YUR1?=
 =?utf-8?B?UmVuTEE0S09Vd09nVmVQUjNqUDhCd3FrNlA5Nittd1lKQ2lpMjNaVlY5dVh3?=
 =?utf-8?B?dmJBZjJNenJBSjV3RTRxUG0vSWN6M1ljZGFFelZZdk81VTliN1VXblRvUVZy?=
 =?utf-8?B?VEQyUnUraEFCSFp6UFl3eTV2cmU3eTJZdXp1QlNnVHcrMU00VGFycnRvTkZp?=
 =?utf-8?B?di95UE9IbDg2TFNBb1F3L2pGL0JyVXdQN1RYSC82K05kQjg4TWZ4RnRYSnho?=
 =?utf-8?B?MDNLL0M1eHdub2dHTWpWeDZzczdHeVBmcnpQUlI1UkorSlNoeCtzVmtpWkhJ?=
 =?utf-8?B?OUh4ZFQ5bGNYbzkybWxCMmw0NlZTbEdTZUI4ekdhbkNtOTlZWld1NDBzZVp5?=
 =?utf-8?B?Ym5IUXVDZjYyTC8vVzZWb3c2SWdrejRXekt5a2o5MjNtaGNIL0JRUk51T0ph?=
 =?utf-8?B?UklsWENkanNzTXZQMVRXdDVuSkdYUmw2bkxIZmxWTDFiV0k5SWJ1VFBQRkx0?=
 =?utf-8?B?T3pQZi9GeEJGMVBUVDBWZGU5V082YmdWdlRZOXF5SHBEeStna3ViWVBJY3JP?=
 =?utf-8?B?YTh5VTNTZGJabytzbTZFZVMrUVdhQXMyMnY0RGpLRVNFbVJrc2ZReU11N05Q?=
 =?utf-8?B?Z3grbVVseHZXMzhHbE9VOUx5YTRIUGxxLzM4cHlTSDhTNmlHOEdMVFR1bjFs?=
 =?utf-8?B?eDhTd001ZzBCd05sTG81WkwvaDFxdlNYZ2FGTFNUQWg3WExZT1lsaEZ2RllZ?=
 =?utf-8?B?R1IreDRFWEhnN3lobEpib0RCZy9HVEJqZWkrMHVYQnh3N0dVaW9kRjNIL0FW?=
 =?utf-8?B?eW05OVUyajNFRUZMV3FHQ29nb2V3OUdYbDBvd2V4VWhKYnB3cm5tYU9NUy9D?=
 =?utf-8?B?cFlUeXkrNnI5UlFleWlsQ2xjbko4TDMvWFN2Mzg1UnBpalRLQnVTSnI2YWZy?=
 =?utf-8?B?cU1IWkNQY3l3Rmt1Z1k3Z2R2QktmWXFsWCs0dlR1eVByd2JVNnEvL1puL3RO?=
 =?utf-8?B?OFBySjIxU2hpbGJOamtCblhpV2MwbDdhL3V4VVFKRDRrRW9ZbVBGUXNaeWlC?=
 =?utf-8?B?ajVKb3U5Sm5pbFFDOWNpaFRMZkJzZ1c0QStadWhRZk54ZDdsVXpWOWFPSVhJ?=
 =?utf-8?B?VjZoUk9QQTEzSW5BMFh2K3N1cEVPRGl5UkZLREs1ZkRFcUJRcGxjeVpDbDR3?=
 =?utf-8?B?bHE0RzNwb0pLOTR5ajhlcHJhcEtPZGFROEM2NlU0WnZvaVJqU1dBWDhmNksx?=
 =?utf-8?B?RkRLUDRMUUFXNkdOKzdMdmdSKzBRM3NjbFNQODVFdFV5R2hXcURsNTZQMkpq?=
 =?utf-8?B?QzdPWW5jSnVmV0tWVlc0ZlNhb3J2dDl0aDRKcFFib0xpc29JWkk0b2ZCOVZP?=
 =?utf-8?B?WWxsZ1dPcnZvV2tFVm1nMzlNaXZwZWZ2T2hsL2VVbWd1OTdzb3E2eFhJSFNI?=
 =?utf-8?B?RDdyUFdkUkRVQW44UEM1VDdtc2MrMkxVMkpSMVFzdnRJMVJBSFNscUhLeGRJ?=
 =?utf-8?B?Vkd0WHJUaHQyUFNEQ2hkMEVlRklKM1ZIUjF5cjFLaFY2M3dFQU9tdnNOY0U5?=
 =?utf-8?B?WnZCTGMyK0ZlRVVzRGJqd1pTQUJjNFBqRzZHVHhlNzZ1dVZHT2g3NzI5cVpB?=
 =?utf-8?B?OTRHNEVZRGRJdTRYdnQ1S2FyRFJWV3BuUUcvQVMzS2JPMkgwZ3Y5ZVlpTG5k?=
 =?utf-8?B?c0ZKSWMzdnROSEdqNzNOak1qYVltMi9ZWUw5OXowZm4yeW9yOU9HRGN2MERW?=
 =?utf-8?B?Ti81eGtkZFZMemd5b2VHaVdqREhLNDFYQWxnd2lVOE9CcVZ1WEZhcFBJTjJH?=
 =?utf-8?B?b1BESHhDcGRmdkdmaXJ1Z29teFJPcmVFZWlwRXoydExiSjRUT1k2WXZGSjhL?=
 =?utf-8?B?blM2Tm5GT3FiWHlMY0xDL3pSNHZQcHozWng2dkdNYzZ3ZUhBblk5OG9ua0d4?=
 =?utf-8?B?dlFqYU9SU3U2WlNtaENOdmdBZ1pPV3NPcDZVWnREdVdINzJOUG1GTTJDM0ho?=
 =?utf-8?B?dUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e149d171-b53d-4cb7-78f4-08de2c331df4
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 14:58:39.3672 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GPhZXjrwhAqh2lGLsSsbojHMIQlwqHJLm126ng9WISckBNlyxsq9Xw4YF+OrrfAAwfJ0dx8CBxq4QNovnIwR9dUeMFIlwDoNAM9K4QbGzXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4764
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764082728; x=1795618728;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EgD3AhjkXqjODUJEiK+4oYHljD+KIU2Tq9fUvgvKJAk=;
 b=EYsoWdygK4Y0bcmTOM0KuIWDcm/paRE3mQJBh4pqM/J2dOk2pntU64xR
 fDbJUUnht9SZwLFmSQJiZtSe2B19KVrRcXRb2MGLIclbNXfbk+AS3/5Pw
 YJvT9+CnTsd7QSjsjBpLsYoRazkJ1dk0stZKnZ02inWHcvXkfvOqWloTp
 GlgdT5LdZBaAOVn+KYminVkBQPAgr/JHf/GlIqvmlfYgyJ3Vos+Z8Wl4X
 FVEccS9Ds+iRgh0Jz+mufuqM545DN4i1UwG8JYuaLkcFJj5azMa3qj/Le
 HQcvOkLM/+CjAuld3Aa2CEIFYg14X4PhBDHncdCKdyAThHLh8Y9Cme16l
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EYsoWdyg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/5] idpf: detach and close
 netdevs while handling a reset
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



On 11/25/2025 5:42 AM, Simon Horman wrote:
> On Thu, Nov 20, 2025 at 04:12:15PM -0800, Emil Tantilov wrote:
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> index 2a53f3d504d2..5c81f52db266 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> @@ -752,6 +752,65 @@ static int idpf_init_mac_addr(struct idpf_vport *vport,
>>   	return 0;
>>   }
>>   
>> +static void idpf_detach_and_close(struct idpf_adapter *adapter)
>> +{
>> +	int max_vports = adapter->max_vports;
>> +
>> +	for (int i = 0; i < max_vports; i++) {
>> +		struct net_device *netdev = adapter->netdevs[i];
>> +
>> +		/* If the interface is in detached state, that means the
>> +		 * previous reset was not handled successfully for this
>> +		 * vport.
>> +		 */
>> +		if (!netif_device_present(netdev))
>> +			continue;
>> +
>> +		/* Hold RTNL to protect racing with callbacks */
>> +		rtnl_lock();
>> +		netif_device_detach(netdev);
>> +		if (netif_running(netdev)) {
>> +			set_bit(IDPF_VPORT_UP_REQUESTED,
>> +				adapter->vport_config[i]->flags);
>> +			dev_close(netdev);
>> +		}
>> +		rtnl_unlock();
>> +	}
>> +}
>> +
>> +static void idpf_attach_and_open(struct idpf_adapter *adapter)
>> +{
>> +	int max_vports = adapter->max_vports;
>> +
>> +	for (int i = 0; i < max_vports; i++) {
>> +		struct idpf_vport *vport = adapter->vports[i];
>> +		struct idpf_vport_config *vport_config;
>> +		struct net_device *netdev;
>> +
>> +		/* In case of a critical error in the init task, the vport
>> +		 * will be freed. Only continue to restore the netdevs
>> +		 * if the vport is allocated.
>> +		 */
>> +		if (!vport)
>> +			continue;
>> +
>> +		/* No need for RTNL on attach as this function is called
>> +		 * following detach and dev_close(). We do take RTNL for
>> +		 * dev_open() below as it can race with external callbacks
>> +		 * following the call to netif_device_attach().
>> +		 */
>> +		netdev = adapter->netdevs[i];
>> +		netif_device_attach(netdev);
>> +		vport_config = adapter->vport_config[vport->idx];
>> +		if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED,
>> +				       vport_config->flags)) {
>> +			rtnl_lock();
>> +			dev_open(netdev, NULL);
>> +			rtnl_unlock();
>> +		}
>> +	}
>> +}
>> +
>>   /**
>>    * idpf_cfg_netdev - Allocate, configure and register a netdev
>>    * @vport: main vport structure
> 
> ...
> 
>> @@ -1807,27 +1860,6 @@ static int idpf_check_reset_complete(struct idpf_hw *hw,
>>   	return -EBUSY;
>>   }
>>   
>> -/**
>> - * idpf_set_vport_state - Set the vport state to be after the reset
>> - * @adapter: Driver specific private structure
>> - */
>> -static void idpf_set_vport_state(struct idpf_adapter *adapter)
>> -{
>> -	u16 i;
>> -
>> -	for (i = 0; i < adapter->max_vports; i++) {
>> -		struct idpf_netdev_priv *np;
>> -
>> -		if (!adapter->netdevs[i])
>> -			continue;
>> -
>> -		np = netdev_priv(adapter->netdevs[i]);
>> -		if (np->state == __IDPF_VPORT_UP)
>> -			set_bit(IDPF_VPORT_UP_REQUESTED,
>> -				adapter->vport_config[i]->flags);
>> -	}
>> -}
>> -
>>   /**
>>    * idpf_init_hard_reset - Initiate a hardware reset
>>    * @adapter: Driver specific private structure
> 
>> @@ -1836,28 +1868,17 @@ static void idpf_set_vport_state(struct idpf_adapter *adapter)
>>    * reallocate. Also reinitialize the mailbox. Return 0 on success,
>>    * negative on failure.
>>    */
>> -static int idpf_init_hard_reset(struct idpf_adapter *adapter)
>> +static void idpf_init_hard_reset(struct idpf_adapter *adapter)
>>   {
>>   	struct idpf_reg_ops *reg_ops = &adapter->dev_ops.reg_ops;
>>   	struct device *dev = &adapter->pdev->dev;
>> -	struct net_device *netdev;
>>   	int err;
>> -	u16 i;
>>   
>> +	idpf_detach_and_close(adapter);
>>   	mutex_lock(&adapter->vport_ctrl_lock);
>>   
>>   	dev_info(dev, "Device HW Reset initiated\n");
>>   
>> -	/* Avoid TX hangs on reset */
>> -	for (i = 0; i < adapter->max_vports; i++) {
>> -		netdev = adapter->netdevs[i];
>> -		if (!netdev)
>> -			continue;
> 
> Hi Emil,
> 
> In this code that is removed there is a check for !netdev.
> And also there is a similar check in idpf_set_vport_state().
> But there is no such check in idpf_detach_and_close().
> Is this intentional?

This logic is a bit confusing because the reset path is executed on both
driver load and a reset (since the initialization is identical it makes
sense to re-use the code). This is what roughly happens on load and
reset:

driver load -> reset -> configure vports -> create netdevs
reset -> de-allocate vports -> re-allocate vports

The first patch:
https://lore.kernel.org/intel-wired-lan/20251121001218.4565-2-emil.s.tantilov@intel.com/

makes sure that we never lose the netdev on a reset, following a
successful driver load. Previously this could happen in the error path.
In other words during a reset there is no need to check for a netdev as
this is guaranteed, but we must make sure that vports are present as
those can be freed.

The 5th patch:
https://lore.kernel.org/intel-wired-lan/20251121001218.4565-6-emil.s.tantilov@intel.com/

fixes another instance where we could fail in the reset error path by
ensuring the service task, which handles resets is cancelled as at
that point we have neither vports, nor netdevs, hence nothing to
"serve". Hope this makes sense, but the gist of it is that with this
series applied the reset can be protected by just making sure that
the vports are allocated. If for whatever reason netdevs happen to
be NULL, following this series it would be a bug introduced somewhere
else in the code that will have to be addressed.

Thanks,
Emil

> 
> Likewise, is such a check needed in idpf_attach_and_open()?
> 
> My understanding is that netdevs[i] is populated asynchronously
> via idpf_init_task. But I'm unsure if that is known to have
> completed or not.
> 
> Flagged by Claude Code with https://github.com/masoncl/review-prompts/
> 
> 
>> -
>> -		netif_carrier_off(netdev);
>> -		netif_tx_disable(netdev);
>> -	}
>> -
>>   	/* Prepare for reset */
>>   	if (test_and_clear_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
>>   		reg_ops->trigger_reset(adapter, IDPF_HR_DRV_LOAD);
>> @@ -1866,7 +1887,6 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
>>   
>>   		idpf_idc_issue_reset_event(adapter->cdev_info);
>>   
>> -		idpf_set_vport_state(adapter);
>>   		idpf_vc_core_deinit(adapter);
>>   		if (!is_reset)
>>   			reg_ops->trigger_reset(adapter, IDPF_HR_FUNC_RESET);
>> @@ -1913,11 +1933,14 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
>>   unlock_mutex:
>>   	mutex_unlock(&adapter->vport_ctrl_lock);
>>   
>> -	/* Wait until all vports are created to init RDMA CORE AUX */
>> -	if (!err)
>> -		err = idpf_idc_init(adapter);
>> -
>> -	return err;
>> +	/* Attempt to restore netdevs and initialize RDMA CORE AUX device,
>> +	 * provided vc_core_init succeeded. It is still possible that
>> +	 * vports are not allocated at this point if the init task failed.
>> +	 */
>> +	if (!err) {
>> +		idpf_attach_and_open(adapter);
>> +		idpf_idc_init(adapter);
>> +	}
>>   }
>>   
>>   /**
>> -- 
>> 2.37.3
>>
>>
> 

