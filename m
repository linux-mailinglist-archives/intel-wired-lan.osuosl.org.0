Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C95289BB4F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 11:13:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B6B2F400BA;
	Mon,  8 Apr 2024 09:13:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b4ZFYj8Owa8H; Mon,  8 Apr 2024 09:13:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07AFB40B74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712567597;
	bh=wVjdQshzdVQPvZfAW9n8+HmULBn01fTXyHhgx4SXKxo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VbUsloY8ufCN2ZZy1ilmzjGXFDiHS+9mMS4EjKDQdoDfAk5v0nAxcDETOp1Uio22x
	 U2Ak2kogk5qZETWRRm+yNV1YAIyIi2ICVss34uoPsE3Vq8yhCJjI0yAkTEj8JhekSI
	 wVv+K6oOl2beg15TrLXbxHMjXqq2qUppDQ3pTtHo8olIQA0/5ELeEUGMeLofZeYR0i
	 yX62uE+eFQZ+fLuntHUgtfIXtbZOc9wsEkEqCytzSClrX/h8iQxqwjS5mEQ/CgtIw7
	 zaE1kofGz2a/Wo272n6iOvOSiCCDW/DUkDPCtejEaWWjxnttHIm6P5/FBwGF5saCmS
	 prgLcyzvfxXtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07AFB40B74;
	Mon,  8 Apr 2024 09:13:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 719E91BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 09:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B61881F1D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 09:13:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZEzqleu2hIIL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 09:13:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8FCAE81EE6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FCAE81EE6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8FCAE81EE6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 09:13:13 +0000 (UTC)
X-CSE-ConnectionGUID: m5ZA4l/2Qt6SsYwtK30BXA==
X-CSE-MsgGUID: 2W08uZh0Sp6Ee2Mys+f77Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7700789"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7700789"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 02:13:13 -0700
X-CSE-ConnectionGUID: gNACThbSR6iRZKikCQDZhA==
X-CSE-MsgGUID: VEgIVGh/Tp+ESUgqMNVc5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="50806666"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2024 02:13:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 02:13:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Apr 2024 02:13:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Apr 2024 02:13:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RRz9IDEx90ByugqgrpHy+6+wWypYAcOB+oS2osSA1/kFV/yIwAorge3epIuhJlmPYaxWbyzUazb+rJN1fYbvq4Q7PzWuyxbUoAgy9tj4gILwDcOmnDUywRqzyOCNhMro1P67Z5smA2c/B0WdPnRucr9fkAaPLUXmc0db3Ms8iEaCVrMoZ00vHoGBh+ScrcbtCQL0oGjTEpxXtHmkTMmL0lDrRT4d5DAYden45HHPVz1G1b/s2tXVbILl0loS4WdDZgBiQWCccaVkNHjHy51KG7vHeTYp1DfKWvyRcdspfLKK0IB0qiKHsYrWJ5xnXbd4MPwSu0/BrmPsvnU2GEctxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wVjdQshzdVQPvZfAW9n8+HmULBn01fTXyHhgx4SXKxo=;
 b=IlYaHpXFeaQdlOpxUtk6O8VdOP6l3ZHj1u0p5ZBpmuwjy0AbIo6YC2dLJScEmyc3HDDzBn2JxYwfiSxYeE7AYf9j7qkkxYgnoHWu5Pk78zynFzkyL7QvfBc8Bw2XSuWubPhMII3azwcACLaTiwYju9EfAgsWEVt4sQMmKcnsYr8gxq7jloWiV69cNpOLyO7LADKlZiMRbfTTzfG8CpDIRpMrgVLr8HSvSq6YNhRzdP8AQJGkgVPpZJRxXwuSySJfoQJiEGeCPje/iInLlw7117CO+/G/hkrxm4qNvfq1+AXOh9iK3gA3F71al73IHtnSR0mrx13bC3DW2od8V7KNkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ2PR11MB8321.namprd11.prod.outlook.com (2603:10b6:a03:546::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Mon, 8 Apr
 2024 09:13:04 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 09:13:04 +0000
Message-ID: <1dda8fd5-233b-4b26-95cc-f4eb339a7f88@intel.com>
Date: Mon, 8 Apr 2024 11:11:12 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
 <20240405212513.0d189968@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240405212513.0d189968@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZRAP278CA0009.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::19) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ2PR11MB8321:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CLjS6Ae6gai8iXIwkyUXWS8d01R7pKAnkVI2GmNhFUKVCrz1qpSzDH/4iOuYMZntpYlpzGV9UJEvKbmkc5kCqJI+thx3sWqbwXI/npnIGRR3TDecXk3iLLev1mNdDAnZ3OmKVQZ5vMQMdyUWw02QE7v2wGKoYxtWsetnQ6Zf89h8hJMyoLRrXBLWU/txhNf5Qt81HsJJbXK3fEJHkfGnBRwRUDz5loczb4osRK4DZ4Py6EeHkGe/qbbuka3+yZ4R9EakvoVVBVsCSK5tGSjy5X7YhiE/1igDnCcwxQ+3FyvKBQ5CfdjAvKO4peYDKruRn5ywunhBX/wO1m1ilb2+TLd6xOzFPIJ5CaqCDhMkHBH5iZyuH01M1E25a5dhUfc1J93tToP4yZORAe91LHL19OTghY8CCNM+uRzc3rXWf0bceT2eMd4NejJNms+C8XYElV680amh1MTcjN9pXqw1cf+dyA8je4wjScT25IF9UBFJa38aDrSScyubDmmbhs3VEJiqNIROnUPpYbS7ELgyRgehVXwEMXDUN+eVD1pOxOdMMeyghCf2cvAIu3901DPXieq+Kv1mDUVtgT8iE43j2Ftq7PHZD9cXJ8XmLOeohwFYKP3ydChq4nz0oGsq8mHtZWhJoZl8+yMmft7llxFq/RTO5k3Yoj9X/Nlccrw4OTQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(7416005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWFwOEFjWHhtc2dKWXdrMjhibU1UOFFxcjdZbnYwa2twaEtGb04yd0ZsdDRW?=
 =?utf-8?B?emRyZG5YZnA2MXRDYjc0S1cwTGlwdGZmbExFaUZhdnFDRWthaU45TDdjbWgr?=
 =?utf-8?B?NFBIWnhUMkQ5a2xlMExIRFJ3NFdBdktUM2J5ZWZrMWZneVUwajlyYUpyMTJX?=
 =?utf-8?B?djZrdWtiRmNrVm9PU1MwOFk0bDl5VWhKQlQ0bXh2WkFNSWM3TGFpZ2NjWVdH?=
 =?utf-8?B?TDRVbVRzZlJKelpwM3E1Mi9HNXBoeDh4VTFNUENNQ3hXQUFEYUdtZk5IUjZO?=
 =?utf-8?B?bXZQTXBITFk2UWVxdU1rMC9MNmlVRC9GODJhZ2FGWTJPNXArRkFqQTdvMTZn?=
 =?utf-8?B?TVFyYXlwYjVCUHdzZ3RKdmcxOUFMdEs5bXRqaTE4eWRJR3JURmhxYVZockc5?=
 =?utf-8?B?RDNLRkdWOHpaUnZaU0VLNmtVZStZSW5WU2t3WU9XaUFDc3hYOWxqMUZDVVh1?=
 =?utf-8?B?bXA3c0I5ODlFcmJ2MEFSYUFqc3hkbGdTazkxcnp0T3V3aVZkZ1VDY0ZVR3hx?=
 =?utf-8?B?MGJLODFpMURvWjBqUUsvcDc4Y1h0UXhRaE90SHZPYkFHWWcvbXR3c0ptb0Y0?=
 =?utf-8?B?WmVKaWlLL0dkN3hzaG4yQ0pDaWpOQWVSS09vVEh6YzV0L29QVndRYWZHTmlH?=
 =?utf-8?B?eG51a0EzNVFZdzJYQ3lCM3NzdVJnWHdnWEgvb1JZTUJDUW1aN29kaFp0NGxz?=
 =?utf-8?B?akZaTjJnYS96N3JZUzBxK0NVaVpUR2VMWVJ1aTh0TUovN2hIdU5iUTNaYUFY?=
 =?utf-8?B?NHFmRXh1RDFieU5kMGtGZy9rVEpVVW14MDNzTjd1bytXT3p0eklmbE5JWFVm?=
 =?utf-8?B?c2tscWJvZ1N1L1dRWE85RHJPTTBNTDVJa0tRQUtSaTFhb0Vhc1d3UTFDYnE4?=
 =?utf-8?B?ZVh0b0pSN1pQMWp3Vnd6TW8wTkd5aG5FQUYyMThlVXBtQUp4KzhuT2J6QVh0?=
 =?utf-8?B?NE9scERFcllvcU1MZmVkeDIxdnhyWHd4UTRTeUZuNFkxeHBzT28rUkh1WVpD?=
 =?utf-8?B?ZERVSWJ2VHBZZ1kwN2VlRmFnUE42OTJWdVBhdTd4VzBLRWFScW03clYwZHlr?=
 =?utf-8?B?ay9Yd1ZsbHhtY2N1aTZacVFvZGIyKzUrajcyL1hwUVFYYjRZRjhRWHN3L2l2?=
 =?utf-8?B?Y1RLOEUzU0Nna0ZpYWl1TjVzbnhWNjJqalRNUWM5NEduYWkyWVlnUmczMDZE?=
 =?utf-8?B?enlGOFQ2UDJhZlU0c3hITkxmN2NDa3NQNGplWXh0UVRsaXRaN1VWMW9tSnhJ?=
 =?utf-8?B?T01KKzEvMXhZVm5TZFJQWVNyNWVhVDdtM1liak9qN3ZRNWVtRWJOaDY1VThG?=
 =?utf-8?B?SENmeEsyeWtyRXpzY3UrdExaV3U1QUs1VHNDcGlRSjNRajFVOUsyS0YwK1dD?=
 =?utf-8?B?MmRtV2haQXlIU293Vk1zd1F0ZVNudTBOU0wyZ2VESDUvMzZOSktnSkVRL0RO?=
 =?utf-8?B?S2hubERBdHdoeG11VUFtTXEzVUJVaXUxKzBud2tUcGVYUDRuWnFyVGE0a1kw?=
 =?utf-8?B?ZjNkM1A4MHlla09abVNZN0VFVWhWUTJNYXRaeEdHcUVNdWpwUEZOc0R1MEoz?=
 =?utf-8?B?TVFaTitKdk4xc2E4SmZ3Q1Y1bHo2UUJMcnJtT0FmK0xEYmIyMFlsMHVqRHlS?=
 =?utf-8?B?clZhSDZLU3FXMGozWThLeUl4UnA4T0dtMHMzVTN5M2NaMXVkdlB3WmYwK2Mr?=
 =?utf-8?B?OVprUHZNRGZCNGVrc21CVkhFdkNmU2VWUmp6cnp2UXY2VExkRnRTVmdEWkpq?=
 =?utf-8?B?eDNNUHZZRWxycUdGd1pOK1ZNQkdTMVNpdlpkRFJFQjg4U2crKzY0dEYxd0xm?=
 =?utf-8?B?dW9uWm9iNU5pdkdxQTdtTGdsMWdRQk5SbkRNQzRzYS9QbWx3N2hVSkE3bzRp?=
 =?utf-8?B?d2c1RXdiTlR0ZExidzA5YUIvbkpTak4vUlhlQSs4eGtVbXNDMGVndnp0UGk3?=
 =?utf-8?B?b0tZVFhBc0M2S2pSWjBKYmJHZEgycG9PaTlmLzF3YkhqV3ZpM3d5SmhhcWxo?=
 =?utf-8?B?TEM0VHluR2p6bWhabktveVVxb2tNWS80NS83KzRNOTc4YjZCTG1PZXVyOUIw?=
 =?utf-8?B?cW5Zb0VSZ2JramZZaFNRUmQxNUIvdkZSWWNyeTJycW04djh6bEVMWWl3ZENX?=
 =?utf-8?B?TTg1eHA3ZkFMZ1FYdHZaL0d4OEVsUU85cXkrazhGN0lWSHo4eVhtS05uZCsz?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e7d48c5-9790-46f2-dba6-08dc57ac190d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2024 09:13:04.7962 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jKPOS3/S3inuCVh+h7rHEjpuizdSrbz1HyXYeSB7Plao+ZrgLjZCKHgrozFAVRVyAP4UnY0f3twsvsZDKZErYPNYzvkAyTvB0rEJkOhr2jk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8321
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712567594; x=1744103594;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xcKSjtU+PHxCXnYZAYhbfuVeVt5l+qJ+CPRmv4Zn420=;
 b=Kk+jAJneWSaFHS+qxx0+8+T7mYo4fKMLXY1US8jJ9i3BbbzkTlV5o6Dl
 pKbwk2zcoYX5p7CvV4tvmQEpFFFeFEqCq4rOrcwvbj1ZpkGZuRVwa3tUJ
 LaSf1X+vBRM4pc8LtScME5zelnFkLnnbTYxI8tYDjovSBFFzfTTQCaCX+
 ItlJOD4sTu5zX4bcAfSzyliQ7gplOclzNXeldWDKR/3EHwWJENeqfh5Cq
 pXX2cy6UZJTN9ea1yWFRWUnG4FRjL+9SWOqeTwEm3RcjRalq6AVBV3G6M
 4ITdZua1vOUxV+RCAKs7UYw0xv0vKg3b/RO9LeMdhqCwlonzzSszGJmbL
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Kk+jAJne
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/9] libeth: add Rx buffer
 management
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Eric Dumazet <edumazet@google.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Christoph Lameter <cl@linux.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Fri, 5 Apr 2024 21:25:13 -0700

> On Thu,  4 Apr 2024 17:44:00 +0200 Alexander Lobakin wrote:
>> +/**
>> + * struct libeth_fq - structure representing a buffer queue
>> + * @fp: hotpath part of the structure
> 
> Second time this happens this week, so maybe some tooling change in 6.9
> but apparently kdoc does not want to know about the tagged struct:
> 
> include/net/libeth/rx.h:69: warning: Excess struct member 'fp' description in 'libeth_fq'

Oh no, maybe we should teach kdoc to parse struct_group*()?

> 
>> + * @pp: &page_pool for buffer management
>> + * @fqes: array of Rx buffers
>> + * @truesize: size to allocate per buffer, w/overhead
>> + * @count: number of descriptors/buffers the queue has
>> + * @buf_len: HW-writeable length per each buffer
>> + * @nid: ID of the closest NUMA node with memory
>> + */
>> +struct libeth_fq {
>> +	struct_group_tagged(libeth_fq_fp, fp,
>> +		struct page_pool	*pp;
>> +		struct libeth_fqe	*fqes;
>> +
>> +		u32			truesize;
>> +		u32			count;
>> +	);
>> +
>> +	/* Cold fields */
>> +	u32			buf_len;
>> +	int			nid;
>> +};

Thanks,
Olek
