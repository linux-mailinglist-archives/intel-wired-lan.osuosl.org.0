Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E9D9D1B86
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2024 00:02:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8597810F1;
	Mon, 18 Nov 2024 23:02:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NL48I1SHUiEP; Mon, 18 Nov 2024 23:02:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 788D784CCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731970967;
	bh=kUehXPDHOE2PFxBf3EE/fiHHkeOXu7n0TDzbUS868v8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IjvgAQ8FfOOubddsTjIdc1XN2vQuQ9gxm1KCgHTLr7JXvITZ0kcrJWI6Jp2aAxV3S
	 trMQTzXchmBSBomvOu63VyYiJwHhIY1BVtC/9H+hdHp5wKFw/M54q0sAClBypu4Sp2
	 gBid2MDJFOtyuCwAWPw6BSjvo8CWVnMU7WKttNv17YAw6u6JgRfhBc6Gi8u1VrSSzb
	 qFLqlcO/mft2VAfJ2L9M6eUT3ZWaonTjl8MMsozFAVTWDR3DMQTdtLgQ+nbLtJCYM1
	 xJH/nP7KMKDHRVrkCWKgZ0fLSXqDjTkaa/j8AApgdPVcmu0+dKua2oVN3+M8SV30bJ
	 5kLP0u9mIKY5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 788D784CCA;
	Mon, 18 Nov 2024 23:02:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 07C25DB3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 23:02:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 01CC3400FE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 23:02:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mo2Dh4rYyTOg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 23:02:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CF3424022A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF3424022A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF3424022A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 23:02:43 +0000 (UTC)
X-CSE-ConnectionGUID: o9Wvf3+wS6O0TzZK5KiqKA==
X-CSE-MsgGUID: EkSuOKZ+RNOA54PXyBo/Pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="31875936"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="31875936"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:02:43 -0800
X-CSE-ConnectionGUID: XoDloiisQzCU8wQOyOXP7Q==
X-CSE-MsgGUID: JjBS04FOTPC8W6p1jBuCMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="89791553"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Nov 2024 15:02:42 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 18 Nov 2024 15:02:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 18 Nov 2024 15:02:42 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 18 Nov 2024 15:02:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MSHaKFPEPQ/cPgpGqGLkxZZIIhq1+MymszzQiRTynoVoS+j/8RxIvp112xw67XNs673yaH9BCY+hxz3ule5FSvby5dCdcveC3ag8gpdyY6vPy2nZbF3ynz2B9JMwhv2wzWl09za5cLIg0eLsLzyle+n6aWTIvsCWiS21Z58GxAR3bKbil6JVT9YXWnE/jixbErDo9wbdDmB16soDnUCdcvAfOB1sxyR8ZB2fsdgAVkWe3KflM5fOZBRuxvk0QuyY3njs9kFqnrt2wAO5o8C6RS5JBUvT7XYxY2HE8ulIQSP4cVotAAyH0yXuint4/EDonhqluSyKVvkuzgU4wQLrnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kUehXPDHOE2PFxBf3EE/fiHHkeOXu7n0TDzbUS868v8=;
 b=BvAaEO6b2/CvgcUjHpB6pSQQDQx8xjl0IRrC2Ff7dcGVt5JA4dcPLyJno/N/FuQIEEnhkCQDoPcuYKAak0rQWWFHFtZOb1aC5B2xbwWpPIJjlm2LHUHTUed+VqAyawa/BGHcRtugNxX3ExAOxvd8EtGshoEaqXlaqJx/fAbid3pMn6nO4bCxj1BdC7/o39O8Tw6QTVcjNqOUWqStANdnYoN12jUVitF4v5ef+PuFT33U+g1Vv3dQRuyJbKu1pVFuA2CCWwzr3FAQc6/wJOsyGNmvnvty91vnLhtgbEtcaJcacUrMgz7DEnzSk8voayBeN/prNqG+tVeE+ZyD9x4CNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CY8PR11MB7946.namprd11.prod.outlook.com (2603:10b6:930:7e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.22; Mon, 18 Nov
 2024 23:02:38 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%6]) with mapi id 15.20.8158.023; Mon, 18 Nov 2024
 23:02:38 +0000
Message-ID: <85acafb4-502d-44d8-a387-6b261f01c116@intel.com>
Date: Mon, 18 Nov 2024 15:02:35 -0800
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
CC: <przemyslaw.kitszel@intel.com>
References: <20241114081220.85602-1-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20241114081220.85602-1-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR04CA0002.namprd04.prod.outlook.com
 (2603:10b6:a03:217::7) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CY8PR11MB7946:EE_
X-MS-Office365-Filtering-Correlation-Id: 4bfac00e-dc52-4ce1-9e5c-08dd082518f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U01yTEFiTG0vak5BM0loZE5kNXZCSzFvR1JFL3BPY2xMWXRuMng1Y1NGNkJQ?=
 =?utf-8?B?NFR4L0lua0NtcUVxSVZORVkwaWRWbXV2ZVFvVFRjdjZpMDlUL2NqblNjcE9v?=
 =?utf-8?B?S2tpZElGQ1NST0lDeGVSM21pazFoK0pwMFN1bVIwbm1iRWVDaGZ1eU05YjZY?=
 =?utf-8?B?a056cXVqMGFaVURQRTA2NE1YNjRDcmVsWVFVb2hkOGxYTEhaOHJacTdNb3Zn?=
 =?utf-8?B?eTJlemNva1JodDJiYklYSU5hZVpDN3BjSE9uZVhkRVo0VVNabmRObWNlNEFk?=
 =?utf-8?B?WEI5UnpKU2tTVURyODdqN2Q4UjN0dDBQY2tIUGNrOFNweXc2S3lyajNsUklG?=
 =?utf-8?B?L1ZteTQ3SHVXbVhkN1poODAyeDR3YWFSWEk1WjJJRytCUitmWUNzOUlpZGxG?=
 =?utf-8?B?a0NzOXhyS2RVQk52SWl1YlE1ZmJGdVZTY3N4OEVQV1F3dFpvaTJhU3BUb2E4?=
 =?utf-8?B?c2dsQ05kSjltSW5ZaXFTb2RkUTg1cDFPc3dNSjRMODJHTzJraDNyVTBQT1ZR?=
 =?utf-8?B?WHhlYXVETE8vbUV0aC82c0ZnbW9NSXVDSWpLakpFTDNDT3lkTys4cE5hTTVn?=
 =?utf-8?B?TUNaczdiS1lQZm9QL2hSZW9IanlKeDNBSm55Z0xwZVh3YnA3cW9Dd0ZWeW9F?=
 =?utf-8?B?WXVpcm1DYkdXZWY4Mlh3cXBTa0FBNXdQQndqeG00M3E5NVhOYTlJZzkvWVVH?=
 =?utf-8?B?a0poZU9CNGdDRzdCQWcwWkhLK0REcE1taHY2U0I3T1NZQ2VLd2tuU0UyOEV1?=
 =?utf-8?B?SlN2VEVUUk1hZTkxKzFUN3kzYm5RREJhNmpkdzBMVng0TkpTQURXenRBZ1Nt?=
 =?utf-8?B?UWEzYVMyUm1ZV0phNzBKbkU5Vks1WFRic2dQSER6VlF2cjZEZHZ0V1l4UGJG?=
 =?utf-8?B?VXNpRDBFTm5NSzVsaEx1RUcxL1dRL2JrOElKeFlPNGdVSzFGamYweWlJMnZl?=
 =?utf-8?B?anRsTnVKSzViVWgzSmcwUjlSRysrMnA3ZmtWS0ZnZWFKSTVvV2ozQlEzbGRL?=
 =?utf-8?B?WUlvR25LNjZHTFVOTEtKMFNPQmtWa0piT1RuYzFqb0FLYlIwRisvaFMvYS91?=
 =?utf-8?B?NWJCTkVUNkR6YVVuR3JCdjBFTzlEZktnN1hPMDlxZWpiS3BuNnhvemcxNmFu?=
 =?utf-8?B?eDhVcU44cENxYzk0NE40SlVlbnlkajZ1dGhQd3VjdFhHMDdGU2tHZkkwUnRM?=
 =?utf-8?B?b2ZHS21mMG5abm8ycWR0NmpRS2ZYUWpKTzI5WEIzVDBOdlR4RzlhYkdlRFBh?=
 =?utf-8?B?RVZIS3JZT3VSeWJRNlJMV3R1QzZoUENsTVBabUZBaTBFN0tuMzJvdjBsYlhM?=
 =?utf-8?B?THZrTHg0a0VqZGNOMTYycWtOR3ZyU1ZVTHNUT3JRRHEwRmF1T05nY2VUZVVH?=
 =?utf-8?B?ektzMXJiVGwrNlc3eWJOcjZwNFFsaXpZVFAzbmdmY0ZwNEE4OFRuTjBjd0xT?=
 =?utf-8?B?NXJGemtrSjJsS3YyOG1BR3NxaUpTUnFEcXhaLzFpYnEwVlNGZTN0VWJQM2Jj?=
 =?utf-8?B?OTBqNHE0YWZQSDk0R0F6aXhwQnNQdW1CVzRzUkZ6OHp6MW8zZ1BxSTFJbWpC?=
 =?utf-8?B?ejVuMmRDNG0xZWNMdXFEWFcvRkRTLzdWMjNZSUVRMjA1VDNycVpoaE43Wm4y?=
 =?utf-8?B?QysyNWVQNE9HLzZqeXZ5SlU3clMrRW80a1c1eEJJV3VEbjA0WndRT0J2TTVC?=
 =?utf-8?B?VXVtZFNOamc2VVU5Y2Q5MUhtOFdoVWRYQXc4a2JxUjRiMGg5RklxZHcxT2Qz?=
 =?utf-8?Q?IOfQ0PuCEcz79Cp2Da6rpvq1GksSxc/4OIZTBMg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vkw4bzA1VjVRcjZ1T2lIZ1B5cURPVGFFSEVUTG9aYjdKS1BrdSs2Sk83OFQx?=
 =?utf-8?B?YVlVZ3NzY3QxcWpicFpVUzBrU2RhTHlMeG1OdGhmSlZjWTlRZTFwNGk2WXJt?=
 =?utf-8?B?VVM1M1ZxUUxoNmt6Nm5obzBobHJJQTF6anBoeVIrQWU2Qms5NDUrUTdrdTBK?=
 =?utf-8?B?Zm41MEdBRWVEVXkzVjAzSW94czN0M2JmVkdYeEo0dEZzMHZLMlRXZXAxR2x6?=
 =?utf-8?B?SlcrT3VpT0NMUGVlLzRYZEIzQkhrWk9GbWVVeldTSGE2WnBBdFhzZ3p3bnVS?=
 =?utf-8?B?eFFPZWVIY05xWjREY2FVdmc5Myt2djhYZW54ZXlVakNOWlpYMm1RaS9oQjlk?=
 =?utf-8?B?dG0zZWlUazVuQldFM2F4eTh2NTBSSXh1aGFZZTRZUTRlZUYvS2l0M2tDMFN6?=
 =?utf-8?B?akJRQU1IOW5QdlVyUC8xL25VYmFVcUhsUk5FU2dPN042c0t6eHlidE80V3hI?=
 =?utf-8?B?NDZ1aS81RTYydlc1NDZuSHg1ak1JaVNCZ2YzWUwrbCtROFAwU3RoYmVYRUdC?=
 =?utf-8?B?TWZLbUZ3aGQrTmNiTFpVOVNtcXJiWHlDTzFIMmlpZ0U4MkNpOWpLNEFVWlI0?=
 =?utf-8?B?dWplZ2pnOXhMZWVzU09HaW1zYTdKNE9WbDZBcTBydFFlSW5Kd3cycFYrNEdJ?=
 =?utf-8?B?dU4xTkRPUDh1eVdYQkJReGkwK1BZMmcybXJHRVpkazBxYjJXQzNqY2ViMW51?=
 =?utf-8?B?TGh3T0E1RUZHRWJHTDVjdyt3MFBYUTNaR01KVmlNVEh1VER0M3dZaENHM2RY?=
 =?utf-8?B?NGI4Sy9uVUZTYWxPSnZ1MWNGNnZBR080eko1a0lVM0ZNN3YzbVBnYzJWY2hD?=
 =?utf-8?B?S3ZYNk1iUWtCZHk0RW5NL3VLQkVFdXZmRG0zanE1NVhUUVJnZ1ZvT09wc2lz?=
 =?utf-8?B?OHlDZ09QV0JhOG1sdUhac3NZZFc0cFp3Zjk4cEhpZStYcElMZlFsc3VwR1FO?=
 =?utf-8?B?dVBYbmxCMTlmdk5QTTZHQ3VvNS80UkFJTDdlR1RTM2g5RWdxL0V4WUFtZmZa?=
 =?utf-8?B?dVZBcTBodW5DNFRKWGF3SUcyM1NoN1ozNi9PU2paSmhnM0ptRm8yajNEV25v?=
 =?utf-8?B?R2VVR0p1NkdlQk1zQkl0UTd6WVRoWGFrVXhaU2p0em0yNU1EQnVOWUVSenBE?=
 =?utf-8?B?OCsxU1B1dWR4d3FzVjJzNEFXVGt1bU52ZnZHU09rUVd5TWpsSTgwVzE5TDU1?=
 =?utf-8?B?N29hang5R0Q3WGUrRlRyTWNaaDNzcWVQNVlQZk1UZzU4K2VhK1NEemtrT01N?=
 =?utf-8?B?a1NTVFNZMVVud09MbHU4UlZkODh2UWQveWExTFVSdWhiMk5FTGxiUGgzaDEw?=
 =?utf-8?B?ZUVTQVJJZXdiSnlKUHF1OFZXZmp0UHgrRmxqdHRlbUJqZSs4blFnS2FRNWxU?=
 =?utf-8?B?ZHFDZWNOdHZ2QU1HL1ZwaXBCcGFlY3RIblh0NlkxeEhUZUFVZ0J1TURPUVZL?=
 =?utf-8?B?L1BVZWIxeVdQSDB3RUZMU1pzSUg5U0dXOEsvSTd5MlR2QVovSms3WFR2eWc2?=
 =?utf-8?B?NCtzTEhnRDVKSThzVWFOeTNpTzJ6UFM3aE01OXljZE9wYWN0QjN4U2docnBR?=
 =?utf-8?B?Y1c0US9JNXgzdVJDOVFKL2p6WUdmWnpjVExqajNrR3VVRHBaYlNNOEZQS1lZ?=
 =?utf-8?B?UTljYVlEb2xiMmptdUtLMmYyUTRxQnNWdmdmMThOV2FRQWZDMk42eWlWOXMx?=
 =?utf-8?B?QmVycHY0SUMxR2pXRzJyTjlZRzIxTWIrM3h6NHU3YVRGZkhRZ0kwTTdkQ214?=
 =?utf-8?B?WHE0WEtVcDE4L3dZRys4Wng0MGZuNGhLUHd0ZzMzWHZkb0E4bHNIUUhxcmNK?=
 =?utf-8?B?YU10NVJ5NFdud0x1cWl2Qitkb1ZtTTV1aXpUdk1HMklkYStERU1sTkVhV1E1?=
 =?utf-8?B?cmNxMzdldVZEenkwZGhkZWtxYi9vZzdlK0pxTEtxMUFNUTJOMlZhUWZjbHVT?=
 =?utf-8?B?Q2NQVVkxVXE3Nm5RVFpuVVJNN2lSTzlUN2YzL05KMThPcGlXNlBYTC9CWURo?=
 =?utf-8?B?WnA5UTUzTHFoeC84bkVPMEMxQzYvVlAvVWZrOXFwekFLaHhqOW82OC92R2di?=
 =?utf-8?B?N0R2cS9wSGZXQ1FoSTNLcFg2NVpFWTB2WXIvS1lhRkkxcVRYcy9hZStsUDkz?=
 =?utf-8?B?VTI2L2ZXZ1k0a2twZExiM1o4MWRTRnBzaXNYNVpjc3FOSVBiOE85Vm01dkdF?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bfac00e-dc52-4ce1-9e5c-08dd082518f7
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2024 23:02:38.4517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i9f4JhEHFnWVGjMqwY4qt/909FqK+wIafJ4Apm/Uw25p/JuKKCJVjIYfibdk6T+dOU/HDtiS+p83GHhYBhe1K0ZEJWABYQUJy4wSmZBmGN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7946
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731970964; x=1763506964;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4Bwzd87HzBdm5CR0SbuDw7kZLTu3aa8XXL3uKi3FsS0=;
 b=lLoJIKMvSoJhihhUuTr57buDLOmvyMMcL26DdaUKS6OuxEci/XtENS67
 UvWlltOPKKu4W5g9a7e7Feb613pIshFlOBh6L0bVKqyZBLQOxivbSVw2s
 1Bj21XWs5hdX9MDzpAImb/n2z/9smDcDQVbWc6DBu5QCYXiVE11AL/Ygz
 a5ooXGHDwdTFBg5lROJZEzyd4wznWmj+VJFBIxfErWflzeVU7m/1LXJ7H
 S34ULXWG/iKEEVn1lGAMBLcoy3jkySulvv06FSjnb/El3Q8dT053p1Wn7
 uZ6IXbTFUJ9dnwU4plkEDe44e+5XZ8t2SfLgFqEFey2+rw4f9jOBm6pcp
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lLoJIKMv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1] ixgbe: use little endian type
 in admin commands
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



On 11/14/2024 12:12 AM, Michal Swiatkowski wrote:
> Firmware is always using little endian. Mark it using __le prefixed type
> in all admin commands structures.
> 
> Do a proper conversion whenever the structures are used.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> To be squashed with commit ea007e0cd2dc
> ("ixgbe: Add support for E610 FW Admin Command Interface")

These changes look to involve at least two commits from the original 
series [1] i.e. does not squash with the mentioned patch.

It's probably going to work best if these changes get rolled into the 
respective patches of the series as a new version.

Thanks,
Tony

[1] 
https://lore.kernel.org/intel-wired-lan/20241023124358.6967-1-piotr.kwapulinski@intel.com/
