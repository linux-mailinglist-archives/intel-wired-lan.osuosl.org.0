Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OO/BOcQQ/WmwXAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 00:23:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 328754EFC07
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 00:22:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5414561110;
	Thu,  7 May 2026 22:22:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Huf1LGy1gE8y; Thu,  7 May 2026 22:22:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C60C6110E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778192577;
	bh=mIzRDwERSGXSKycv3kHodSEnzVMgh0GptuwvoYO8hz4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IrjMeImTkwrll+c8qXmEeo1rsioOoIbR43VyEsE81VxQFzwWSHZDxeZhxiJAFAgem
	 qusKsSAvgXWIHoA5U0JFXWHyF/WWK+yxb89Mki4CpgqNHX1rXAPjf7T2S3c9nOGWb5
	 /QdZw+nKK1y8dcUTaRz7iU/QY3uOApvB+XhSYb3l53d87Em0ccFBQKQ5vPfxDrrevJ
	 65Qk8ciUSMZKG9hwjx6GzfenewpA2allmoOwdVxbEvriZGd0qzZJyuEg7bSjPcJCMT
	 BAjuw/5DtzqB84tavXwSGil0UkN/YH49bYBuCsORNjoMAURffTzDDLqB4h5FDBheCl
	 yNxEQHBYLCcRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C60C6110E;
	Thu,  7 May 2026 22:22:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B2382FA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 22:22:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5131E41256
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 22:22:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oQ16sRwGUrco for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 22:22:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 81F2741202
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81F2741202
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 81F2741202
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 22:22:55 +0000 (UTC)
X-CSE-ConnectionGUID: KuESKdH4Rmuw9HpBftLdLA==
X-CSE-MsgGUID: +TiydwO5TVesxsqM4Ck2lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="78303980"
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="78303980"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 15:22:54 -0700
X-CSE-ConnectionGUID: EjyP8OeETSect2hra8FKNg==
X-CSE-MsgGUID: PstMqqCvQLOsnmWwS5U1pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="230201645"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 15:22:54 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 15:22:53 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 15:22:53 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.20)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 15:22:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z9sLtQ5PwxptNsjDVEK1MyUmEZ8+Od9h1dhPj0R57cIh3/rnoZbFhCci8/uuLmhXfVdV+/Em/Nw+bL+vfN27qumXdm4XOfi5GzXm8QantsAwO9gfI0fdrRr/RNrI7w0j+RnwTg2LxLYQ6RdZu6AD+7SgzHIM3F3N14TF6rDL+s+BCxuppj7bbZ9EpVwEYQYEJnXLA8fGbhSNKWUfsJ+nq+Azc3iiaTaN8Hk0W7uokpR4i/35cFZ2maUbfDHy1YbtWuyO1gchtl8YesUgfHrw1M4BR+uvLiAG2vlxgut7//qN6hOiTQPmvO3J4i2OTZ1pzCPg7A7O69AYzoX8ixM1Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mIzRDwERSGXSKycv3kHodSEnzVMgh0GptuwvoYO8hz4=;
 b=DJnqMjWoQlF1e0TrJMZjc/n6jqlTQQn8BQCEHVkhWwNwKCrUsXB0RbEsLymVyj36qRV946CxGNfU749Y9Vm9Ys9qFTi6w/nInxRO0eU13hRx2jRsG6j7hTyzlZw8X7DAJZ1C8m7g/VV5PB+xSlldZ+iy0MQiCBjCbsyMW16BkpZimMiGI7XMoZJ3AP4FuJSd7rNOgmbQOI4C2kD+suril9rqkqsrQv9SGlosGTiTrrHoDQl6LEDGdA7Y7ZfnxutWRbf4ukhUyvgFh/pUsKMpllwg3b8b9hh9dhcSzQG0EvzG2doA/tyUiWpKCgth2Erg16P8k3eR4yHDGK3EmlDFlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by PH0PR11MB7635.namprd11.prod.outlook.com (2603:10b6:510:28e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.16; Thu, 7 May
 2026 22:22:48 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9891.008; Thu, 7 May 2026
 22:22:40 +0000
Message-ID: <eeecf203-1356-40e8-963d-9498e9413da8@intel.com>
Date: Thu, 7 May 2026 15:22:38 -0700
User-Agent: Mozilla Thunderbird
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <sandeep.penigalapati@intel.com>,
 <ananth.s@intel.com>, <alexander.duyck@gmail.com>
References: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0147.namprd03.prod.outlook.com
 (2603:10b6:303:8c::32) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|PH0PR11MB7635:EE_
X-MS-Office365-Filtering-Correlation-Id: d8012a1a-9392-4cf7-6fda-08deac87268c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: jboGCzrHwt9E9acjYPImGcq18+E90fqF7J/18iFYqtd8YJoyzRdPjxg3eKlZim5YwcICE/dD5xWxBlvS6xEC6RZ7S+szx0pWG7D6JggSfo7RjgGHrZ/9lV95IkOXakzXNmGSf6rtTFBd06yWara5prAvGtoO+Po+8YdkEpNXnFpiK+SwSDdDFtrRshhZ3wCL5HU2IanyWNzolmBJGKExgVkZEHBGXqU3MvvsTb25CXbPaqCP1tCaGx1/pdD9MLQnWhwv3UVgrPD35wWYJGKR6Nx97GzMdUdzYR7sMahEgJaF3lCKoKstFV2LdZnYVSNz2wLmeNO6zeBmad7+crNFFIxKtICKzRymcUVxgBQmcBSSlVPOmAqSNCHg6x1FcmhO4ztfVnmVByqSwGDXCIYjYYm/+dOs8BcsXi4/IpTf1ESWBFd1h6ANwD26qWbSmaHOJClcaKLdo0Ed1xr5s1wew+Yx+LxEkZMkK1Y21qLISRYusmWZcWcMj8PniY4TOBMzhtXRMrRNbXdBFW0QQmOaTZpMBAl99rF9DY7w3HsWDSVKnPRnsm4DPqhYVfSfpYY6CU1t5ycS4po276uP6NJ0Vb2hCTuRUFh4b4lMW3PG3z5DJWKtaki+9vxfOSkePIkGOQfuOd/xHLPVc5PqX8YXrv/vcG+04oSTj8diCTsDOD91y3N1RK5xtfoxwIOwp8AWDSzO0CU2wDW8MDMGzG5XYg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3dWaWdheU5OdENqY3l1TXlrcUNLOUFTank3UlI5eFQ5Smo0N0E0NzhqYVBh?=
 =?utf-8?B?eTBXWFlPdDFjR2tiR0pvajM3bGJUMDZxcmVEQU9kUEZYbDFiMHAwUXBZWThz?=
 =?utf-8?B?aDFORGRhaFYwMCtBREdrQmpOZVcwRmFMaTd2ckFvSFpicWlKTWVhcGVjQm1D?=
 =?utf-8?B?ak5CdWlLdjJ3NWh1VWdIRjR3MWhoMnJPcnpkSDRtcmx6dUp4K2tuRnI1MUQy?=
 =?utf-8?B?ZDVpVnR6M000cmp6MFFsK2lMZGhqVEtDTFFxU1FVSklCWHhRSWYxZzdndm5r?=
 =?utf-8?B?amZ1dmdQbHdJQjRTZmsvamFPMFlCOS9KS3ZiSXJaTkRiRm9PLzJUbXg2MGln?=
 =?utf-8?B?TkxLQmhuMEsyNGppRDl3eDRiSjEzU1NMY0g5VDRWeG81dG5sS1RsUGxYRzZa?=
 =?utf-8?B?eVp2dGJ3L3lRL0JxQTFMS1pVcFFHcTU5bE9WSkJ3d2R6YllCeVN4K1gzRzNh?=
 =?utf-8?B?NlR0UGtnamtSczlzb0Q1UDk1WktEV3pzWVBmODFqOUkvV0l1NE4vc3VqOVNk?=
 =?utf-8?B?a1ovTkhMdk1HbVZLNVV0NGQ2Ni83R2hvV0RZRmFKZXVJSHNDenhNRTZvVlAy?=
 =?utf-8?B?cFpFekZEUWxhQkYrMm91VTB2ZDlxOEIwa3ZBNit0SnZiUGlSQSs5SzJWUnlv?=
 =?utf-8?B?YmVIci9nelFxWHh0YVlJT0E2WGdhZ2xpM05IN2x2YktoTzZ6LzVNbTVXbDRs?=
 =?utf-8?B?MTRyM2FyeldOUjN4UStDbkRJcXdPc3Z0cGZyVE8zZ2IzK0pjd2dObEZ0QXkv?=
 =?utf-8?B?UmoxekVsT0o3ODlWTlFTb3BPWjkvTDlRVE9uenlxUk5WTnRYZC85Z2l4WGpv?=
 =?utf-8?B?SDZWbkpzdkJ2QmoxbjE5M1k1KzNIT1BSK3cyaXdIMlJmM0g1d0lYckQ3b1RT?=
 =?utf-8?B?Z3o5aW9JR3N3UnNqbE8yYlFPZVBkd2RJL29KSzNDaFoxQklTOEI0LzhQZWhI?=
 =?utf-8?B?ZVVRaWVhU2NpOVdFZnYxKzk3MENtOURBSWNpemI2N3Z5YTkxN3pYeitjRjhX?=
 =?utf-8?B?NThsNVdmQnplS0xBNlQ0TWV4MjlXTmd3OG1uS2RFdWxTbUdyOHlpb0crK0dP?=
 =?utf-8?B?NVNlNzR4UzdHaEtMMjNuK2FQSlZJTElSOHNBcUFOU2RmOWwzMytrM01ZNXVy?=
 =?utf-8?B?aUpnek9qTmhmS0tLWHJSdTBUQ2dvOWhFQmZ2SmRaOWViTmozZUZTdUdKSUZq?=
 =?utf-8?B?Mkk4b3k5S2hDWDRGTTBWNzBBbGhGZFRTTFpPVStRL0JxR3c2T0lsNjJBNnJh?=
 =?utf-8?B?RlowQmhmbVlPaitmalRFMC9GNHMyK3Z0Y1hHQVdlelN0cXJIcytXQ2ZVc1J2?=
 =?utf-8?B?RDZTZlFZUWZhTExlZUJNdzdPZkJGeHpIbUx3d0ZRWm5qSEZCL21uZHNMSlpM?=
 =?utf-8?B?ZDFmSmptQ3BKcnV3aTVWWmxlT2RNTGtpdDl5alBveVhNZENvcmhTYXZTTGtW?=
 =?utf-8?B?TGt3TkpsOGVaV3pUeVNscFBSVzFpWWNrRzlGRHlmZUlDNlhEZzJIV1laRnhk?=
 =?utf-8?B?cmRaYlg2b1ZTRk9UbTB6SDh5UGs1TnVUaHoydllHcTRPNTc2amNLUGFla2h1?=
 =?utf-8?B?YjRQQldOcEdEOGRadmZRdlhialJjcmhWU2FmS3BGYXJyNCsxOWRkWXNsRjZH?=
 =?utf-8?B?dERBUUI0OTBaM29CaUtzclA1eGw5dnBNcWtiVTREWk1HMDdRQ0gvcnJVOTd5?=
 =?utf-8?B?TzZhMjhqekZWYkhOdlFmZERzWE5oY3VPeVJIUENqMnJ6dlRuSlNwaGVBMlBI?=
 =?utf-8?B?ZzhoUko3UWJIeEdJQ1BOOFQ0R2JoWld2VW9WSk42Tk1MK2Q0V3Z3bTZSb1g0?=
 =?utf-8?B?T0NXTHBJZ1A2SHN3ZWk0M0IxMWZGUXV3R3J5ZFY0dFljNjJtU3ZqZ3lVeUxn?=
 =?utf-8?B?c1dpTGtzZnlRZ3cxQ1dOQi80ZkZIblhmMXRZZE1qNUtrWllBUDVDR0V0NXlu?=
 =?utf-8?B?NzI4ci9kLzJ4WFY1WTlxNklFYnp3dUZ3M0NQRDBBZmRHdURVd0xScnJ6VWtD?=
 =?utf-8?B?UWdnOG01UDdmVTRXRFNCdGZpTXNqU1EvakVJMmErb21YK3RpRjllUFhSZy9x?=
 =?utf-8?B?QTdFc3hBbXp0TkdOZlpkY2JCVUtleHpyb0kreU5Damg5VUxLM1RLenRhZTZY?=
 =?utf-8?B?a3Y4NkM5VkxXVWhVN2JmSUpZa1NZTEV0aVoyQUhMUGhPYy9EZzVTcHlzSTZu?=
 =?utf-8?B?VEtBM3hJYmdLNXlNZGVscjNKQm1FQWFjMVBPOUdaZy8zQjQxWFpXWDcyK0FC?=
 =?utf-8?B?YkpZc2dyK205RFNyNi9Jd3JWemRkM3dGR3BVbStyb3Zid1doZGV5RVdmTnN6?=
 =?utf-8?B?eHhpNS91U3hRdEMrcGNnL21NQWtBMHVkQnMxRGI3SHFYT200UTJrOXFMS3dQ?=
 =?utf-8?Q?4yYIpSc5M1JcZA10=3D?=
X-Exchange-RoutingPolicyChecked: Fuv+3UFvPdWdVGH86J2ISHtnFrqyPj01BxTVEODvsrfXeCKFjLZ5VZusIALrXkX7K8kD15BsRx/gp3EzpgSHtkvAQLfG9J+8aFwJ9mbadom1KTK7srLQj4F909FuDEqRYZNPgp+ARVfXfSChnpFtQLyFRB4Up9P0wo7SOfzlg+pjntpnPGQ67sIl1CzCD1Oxxkxl1BhcUcK7MNxQ5LNwb3r6TV+zt6WZ5SaQTd3suLgClxXpWl+JNNjlPuqIcmrqldY1nImiF9uAzgZC38KzWaBm5Yhkx6oq+gttcmKArAPXClGYJKqa82EotpwnxRynVVUrg2hv0OA/F2jX5UVzCA==
X-MS-Exchange-CrossTenant-Network-Message-Id: d8012a1a-9392-4cf7-6fda-08deac87268c
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 22:22:40.1961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CudqX31zRuHX92DirPXQyBcMafmG9fRCrd3M9V6/gbL6cKoeilhp5I1QpmMmWoCCEGlA10fNKhXIxpWUbiVT+urSKj/Ldcp7ztK80/cTOOg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7635
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778192575; x=1809728575;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NUkDhMnpz0yeMayS9o9VgLS8RMdBgyOH3kE1qfZIKao=;
 b=hmHuJXgU4AYLbtenUkXIMVWQAwiGrZNT1hFluofU6udof5OJpltuxn/F
 A31DpkOqEkggH4CB4QdDkNojYEz0aEfhaDsvExhA3EmPxoIAHHSLH8Hq1
 440whRBh2Zse5M0OdfSfRXGivxNgb67PzxB55wYY/JdYK36EVbcmBhhQE
 hBn6rV9R32Sh/a5WF2B1wRD+XJ6+uzAzFDNK0JOc/ZLndHqFQPjc21830
 zQvhQT6gpZfA2GJUbj3rzKqK0PXyklzl5Js7PfdhC1kBGN6Yw/I8YH4vY
 twjMxDbAF/kLJ7lVTzucxGc2uUG4FwSYi7y2pqymEt9UZzBOmnM/8ty+j
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hmHuJXgU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 00/10] Add ACL support
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
X-Rspamd-Queue-Id: 328754EFC07
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.994];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Action: no action

On 4/9/2026 4:59 AM, Marcin Szycik wrote:
> E8xx hardware provides a Ternary Classifier block for implementing
> functions such as ACL (Access Control List). In this series it's simply
> referred to as "ACL".
> 
> Implement ACL filtering. This expands support of network flow classification
> rules for the ethtool ntuple command. ACL filtering allows for an ip or port
> field's optional mask to be specified.
> 
> Example filters:
>   ethtool -N eth0 flow-type tcp4 dst-port 8880 m 0x00ff action 10
>   ethtool -N eth0 flow-type tcp4 src-ip 192.168.0.55 m 0.0.0.255 action -1
> 
> This is a resurrection of an old series from 2020 [1] with several
> improvements, but the fundamental logic unchanged. v1 was almost pulled
> in, but ultimately it was decided to drop it [2] because of unresolved
> issues. One issue was too many defensive NULL checks. Second issue is
> about inconsistency when using multiple input sets. Both are addressed
> in this patchset.
> 
> More about the second issue:
> 
> From [3]:
>> I would argue that you need to have some sort of logic that basically
>> checks to see if you are going to hit the input set issue and falls
>> back and applies the ACL rules. Otherwise you are significantly
>> hampering the usefulness of this filter type. It doesn't make sense
>> that dropping a field will cause a rule to fail to be added, but
>> masking a single bit in some field will make it valid. It would make
>> it a nightmare to use from the user point of view as the rules come
>> across as arbitrary.
> 
> Flow Director (FD) has a hardware limitation where all filters for the same
> packet type must use identical input sets. Previously, attempting to add the
> second filter would fail.
> 
> Patch 10 adds automatic fallback to ACL block when FD cannot accommodate a
> filter due to input set conflicts, which resolves this inconsistency.
> 
> v2:
> * Rebase. Notable conflicts were the removal of ice_status and the addition of
>   libie (which affected AdminQ communication)
> * Reduce the number of defensive NULL checks
> * Use = {} instead of memset for definitions
> * Use kzalloc_obj() instead of plain kzalloc()
> * Move from devm_ to plain allocation for objects that don't require it
> * Move iterator declaration to loop start
> * Move some defines out of structs
> * Fix kdoc (except untouched ice_ethtool_fdir.c functions)
> * Adjust style (err for return variable, spacing, rewrite some comments,
> * commit messages)
> * Remove overly verbose comments
> * Add patches 5, 6, 9 and 10
> * More changes listed in patches (if applicable)
> 
> [1] https://lore.kernel.org/intel-wired-lan/20200914153720.48498-1-anthony.l.nguyen@intel.com
> [2] https://lore.kernel.org/netdev/7192efe4d27c93148b3205e65f37203c89170316.camel@intel.com/#t
> [3] https://lore.kernel.org/netdev/CAKgT0Ucxd5-gvEwWAdbL04ER2o++RX_oekUV3E0rYquEgFKj1w@mail.gmail.com
> 

Marcin wrote to me and mentioned he had a v3 planned. I'm going to drop
this series from the queue in awaiting v3, despite the testing pass that
recently completed. It was apparently already known that a v3 was
eminent but I lost track of that detail when applying the series.

Thanks,
Jake
