Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B52AC97F0D0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Sep 2024 20:44:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 132D240C53;
	Mon, 23 Sep 2024 18:44:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Du49oxguSEat; Mon, 23 Sep 2024 18:44:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A6BA40C57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727117080;
	bh=/f/+xTUH3muWE8sbmdgTf4ItLPzhg5SO+UvZMVMQXoc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ldPyUNWisu7/BM5oLfPeBv5gHcG6FHi5S6wkq28bsgIsEAqpgvCn6t0dfg8YIaXqU
	 o0KOqiom9lmxcAoh+QlroJrmbNrNaXTwiS/Qfd/nFURmjQ1GWcWAT+BlZFPGDZWKbL
	 BvmBQ8F57WOJtFdXp82LSZed+64pAHneHDedBa9tAKeRuiu9dTLnDonip3sqteP4II
	 0l8Y8HrWSppw20gEh5r2DilgYm3mqytmswjH9VXKLfReVxAkIabBT47GhgaLmBxxii
	 1cY8Tth4zQCC5XLLn+9xj4I6AxYeU0s+vFqcyjOWlrQC1+Cb7iLkVzJ5F1mWbJdq7X
	 olR5Pl0uxxoAQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A6BA40C57;
	Mon, 23 Sep 2024 18:44:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B2CF21BF41A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 18:44:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D997606FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 18:44:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ZY0VTaj4xfg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2024 18:44:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AB197606EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB197606EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB197606EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 18:44:36 +0000 (UTC)
X-CSE-ConnectionGUID: B5dm8R1pSxaid8QOOvAxfA==
X-CSE-MsgGUID: 3ITwvc8oRSuCsJE7wFkVOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="37447194"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="37447194"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:44:35 -0700
X-CSE-ConnectionGUID: aFuWpOAyRwizW6/n95Dbog==
X-CSE-MsgGUID: IJGTqZ2ORuqbCHsWfhzUmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="75271041"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 11:44:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 11:44:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 11:44:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 11:44:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 11:44:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PbYw5xaE90/bPHtswlIjyS/Bga7YJKvjKyxDzzfk+pHiFbpFo0BnQZvTNuhqzjS/wfoUB6iTZgAgv2sB4Vg7c424ZHq/ZccPxUWQHRQVlvN1t1rqKLOmgysstmVhTdR9NHnszrZXl1t6aZdHWfX0I3MMaK8p3sxFVfcr5WJL2iug3wbJgL70jZ7oQTIxQXWJsHwTd8bOdEcmBoKu5DCrUs1qjTbbJrxcm9bpOxbg/2VasuCZefWG1F2/ZRkEvTnh1F4pg7ZoxRxaIb35sl22lcK76qSMO62JFtNQr8irYyIyHoQlYpO1b1Tasn+P5Jtja5MpbqMzGHEHThXeCc3fmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/f/+xTUH3muWE8sbmdgTf4ItLPzhg5SO+UvZMVMQXoc=;
 b=hejY9vO0WBI2D5yskaphnB2hhWfwbICDIwlZ1GbsOquKmYFf1lQIgi3OGBh4cQjNQIYyRecfwgYD0h6ECRsVPD5JX8gGMluYYzyWHHgQVjFhZHiE4du1CIdjJCL5n6f3qSYDbrF5Yc6xfFNXHuqS1DX3TGaXbYeSXdV4IJQmM8zXGs3rlcuoFBgT/6fiWjno4AyWzG+o5KoZu8VeQyRn4urZo2IcpIprULTF051UJ8w2xIjHs97p/1dPv0Bq64mV05MZ1QoxXr6GsVeHlMQJFqCRKhGgKpAhz3jjqggU1m5d8kx1mTfOwaGGpqAAibjglf2xYJyPI+U0uAmMf9ZgWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MN2PR11MB4663.namprd11.prod.outlook.com (2603:10b6:208:26f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 18:44:32 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 18:44:32 +0000
Message-ID: <8702d2c1-faf0-44bb-93e9-e905f077b6c0@intel.com>
Date: Mon, 23 Sep 2024 11:44:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Wander Lairson Costa <wander@redhat.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
References: <20240920185918.616302-1-wander@redhat.com>
 <20240920185918.616302-3-wander@redhat.com>
 <7e2c75bf-3ec5-4202-8b69-04fce763e948@molgen.mpg.de>
 <02076f9d-1158-4f3e-85cc-83ee4d41091e@intel.com>
 <CAAq0SUkeVkiit383065nhfCibn-CG701uvaM6UHpWu9RaZE83g@mail.gmail.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <CAAq0SUkeVkiit383065nhfCibn-CG701uvaM6UHpWu9RaZE83g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0P220CA0026.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::30) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MN2PR11MB4663:EE_
X-MS-Office365-Filtering-Correlation-Id: c9bece50-b4b1-4104-54a2-08dcdbffc369
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aFp6eENzTGVEd3A5OTVqQXdHYlcxUGpkaUQzTEpkamFrUVF1eUVmUVlpVWxN?=
 =?utf-8?B?US82bCtzTkhVbUxWdDJPQmlaTnhQaWYzc3FXWWh1aU1xblk3Tm5heDBmTllX?=
 =?utf-8?B?VlFZaUorVXpNeStjb3VlY1pCZ3ljM3pleDByYTR2UEo5WWNjLzFXa1FDWm9w?=
 =?utf-8?B?S0xvUXNlU0hDQlVEdTNudi9Fc0ZSR1d0eUdRcXBxVVBpeHBoZjk4a3dPMXRO?=
 =?utf-8?B?TEhsWDQ4WFNaMzMvVk9RbzMxU053S3BRZDZubnNCSkNVdDhGbVJ1eUp5eGVp?=
 =?utf-8?B?MkVQLzg1WVh5clBKTTlJWnI0Qm9IU0tCMXZoZUwrdkJWME9kaXNMd3pzbVRP?=
 =?utf-8?B?UTRlNzBxc2g4L01TVENsUnlmaitxQlNQV3FPZkpyYjhDeWt0QjV5N3Q2alp3?=
 =?utf-8?B?aTcyZnlYdmVjVENxcWJrdDNKYjdHMkhzSkgwVkhkUWYzWXc4a2lwYkNsaEdw?=
 =?utf-8?B?dkV3T2x6WXQ3Q3VzNTNHcDJ4OEdJK0N1cEFlT3ZhRGltMXFkU1lCWDRhekhn?=
 =?utf-8?B?UEZYTXIxZXJ2NWNqN2xueUhMdjhhS0xOV2h1bE5XaW51cWhDT21EUlRXOTdO?=
 =?utf-8?B?ZnJDaG1lSEp5M3lyN3R3bXJOTGlrcDV1YVJNL0ZTT3lCeksxTTg5YlFuN1Rw?=
 =?utf-8?B?dkdjR2xLMThDWVErVEgwb25jTkU3Y2pmREhhZTh5Sk9wbjdvWDRhSnhLekNm?=
 =?utf-8?B?Sm84NFFFeFV3c0txQmpIWGVBdk9oVGRqeUx4dVlEV0NwamJuVWloWERLdmJ5?=
 =?utf-8?B?TTFyZnBjaTJnSjZ6VmQxRnU4VjlmbzFlTXhvUHlYMHM1bGRhRitUcG9EaGhr?=
 =?utf-8?B?aDM0cUIzbGNqa0FrMFpGVUJmOGN2TEFSVlRha1RCSkhwbndKK2hsbGJSS3h4?=
 =?utf-8?B?U1ZadHlSMEI5SlJKdlY0Z3Jua1FWTU5hTmdpRjJlWlBUSDVjeWlrY2VOb2t4?=
 =?utf-8?B?RjBCbnA0azFGZDczWG95ampWUW1EUjF1WEdMajZ2dDdKZCtZTjB6OFE2Mldz?=
 =?utf-8?B?enMzdUdwQXBPdG4xS0h5SVMrenIvUVordm4zVDVjZy9qNmEzVHFhMlNEVUZO?=
 =?utf-8?B?NXI2RXVHbzBFdU9XRFk4dHdoV0ZaVHU1NGJqaW9nVkpDVVVXYVBJV25Fb2N2?=
 =?utf-8?B?am4zMmFaRWVkTUltMEpsYXBGOC94c1JEeGgrbjFGcFFxVDRBWlBkY1NlTFJZ?=
 =?utf-8?B?L2YwRWhJd2tvbjVaN09Bd2pKWGhHYzRyczNINzM3YmpNUTRpRkRtRFVyY3Ry?=
 =?utf-8?B?T00wYlZVcE8zQnFaajh2WlgrL0pQT280YWxWeFNhaC9obDhDeVVqNjdvMlB4?=
 =?utf-8?B?NmVFZm9UczZPR1RTVFZGQlkwWXJTZ2J4WlZoREl0cEtVbDYrM3hwTzZjTERT?=
 =?utf-8?B?WmlsMG9xa05CcWhtOUJOb3E0YnRaYWoyWGwwTnR5THV6WkthdzdUUDAzSjZi?=
 =?utf-8?B?OFd5bWpiOUowQnRCOHZKZmU4SGdWek1KZU1udnYwUGtvbDFNOWNNN1cxbVRS?=
 =?utf-8?B?TFYrTnNvWDhzT25maDJ6bG9QU1lqN3dTb09RTlZ0eDlNSS9Ualo2R2wrb3BH?=
 =?utf-8?B?cktqSU40MElrdFcwVEFzNG1WZHV6enUrR1VGSTc5YitjQTRNYkxaK1VaaGdS?=
 =?utf-8?B?VFdpL25TcTQwS2t2dHhyU3ZDb3dyekQyZzNyaTBmVGxPZWptcW9KSS84RnZw?=
 =?utf-8?B?OWFQSWlrcXNaS0ZrUnRaTytUcU9hMzF6Z2VRb2VEdVgvckVCblh3RDJ6UXlp?=
 =?utf-8?B?NHNZcXJielFHMHBEc2pFWVAxVFAxdCtGMWdmbVFHd25XbHNXdFA2YkhweWIv?=
 =?utf-8?B?VlR6b2JwallEMk5lT3Irdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzJ2NTcxVGpqTG43ZlZGSThSblVaaEJ0Q0s0am1US3pEMGhqcEJPMkdzeTc5?=
 =?utf-8?B?WTh4WkFvbUlNeVVyeHBuM0IwSVpPYWRKQTdlWi8rc3d0dCttdHByQVpNQ25r?=
 =?utf-8?B?UWE1Ym1EQmR0SnRkSlpGWVE1UkpYWGxCaGZpMmRmRnBaZUMwcWRuZ2VialFv?=
 =?utf-8?B?a2pGMVMyNnRhOHdId2FsYVMyUjFKZFdsRGIrdEl1VnhIVzM1WEdwTVdMalp5?=
 =?utf-8?B?ckhWT3RjTWpZNnZwK2xzbzd1blBDYzQ5TGEwZTN0U0JxZjZmeEo0WEUwbzY3?=
 =?utf-8?B?RHQ5eUlaZmNBWmlVQzdsVjdFTEdmRDludFdDVytsNTVCZThjYnVFS2JkbnRi?=
 =?utf-8?B?cVVjM3k2eWI4QXQ2ellYNXJkK0lkRytXMkNDS202VkNZYzRsUFU3VnJsWXNm?=
 =?utf-8?B?ZDk2ODBjSSt2MVk3YzdyQm5QSmk4SlJrTk9SRU5DR2Vla3dYUEZTdUgzTGk4?=
 =?utf-8?B?ei9PeWlMQkVveHo1aVVETUpXREZRWFRFRzZIKzh0SFVkYkZ6UWJEVVdEaHhH?=
 =?utf-8?B?aDRzV3Z5b3B0bUF1cklHbzVDWXdCcW05bVBVNFVXQ2Q4cG5aSU13V2krU2tx?=
 =?utf-8?B?b3BIQy9FZWN6eFBWNEUyTksyZ0R5MTRIeTJES0Iyd1lKTHdtc3ppek5mRWdE?=
 =?utf-8?B?SEpDU0pkOERpcGwxaXVHWCt5U0Q1ZmNYZ3pKcEw2NTN6djhvb2dzeWtDSldy?=
 =?utf-8?B?RGNrVGxZd1R5KzZTR0NLS3BYZ2hSSTRQVXo4QVVGSCtFQlF3ZGVDdHdXR3ZD?=
 =?utf-8?B?TkNHNGNWWm9xVkN0QmxXMStuSHJDUHFoYlpYZG5WUlp4WElqM0JtbDhIdFhP?=
 =?utf-8?B?SDI0MVBBRWRaVTdITUQwcG83aStDcm5mWEF6RkM1NmZEY2JPblB3Si9aZlZx?=
 =?utf-8?B?NVoxc2lXUTN5Z1BHejZGMnFweWhqTWdDalBIK3dpYXhjMExMYlg3YjhDYkdS?=
 =?utf-8?B?VnBFQUFjRkx2QkJnVzBwdTRSWERxcGI0TzRUYW1iQ2VIc0pOVE1wZWlrRmJO?=
 =?utf-8?B?UGpqcjVYK3ZkcDN4MmZFQ1QydUlEZlVRTjZUMU1sS1RiK3ByUmZBSEFUYjBU?=
 =?utf-8?B?dEswQlQrNnd4WE1tcHFneFd5bE9tckF5VWhXdHlSZytVSHNaOWtHS3dHajhF?=
 =?utf-8?B?RmFzdXhXZDI3aUUxQ2ZUenpOSURydTNsTzcrdVNTNE0wdjZGV1NwSUJibnFx?=
 =?utf-8?B?dE1xbUg3KytDc1ZsV1BzWitWMEtKWHNqbGk5Yk5reURMY2psMG5OOUVCSkVz?=
 =?utf-8?B?T0grNDVQRVpTSi9YN21Eb1U3YllYeWc2R1M4TGFiSjZoNFVhRTV5MW9ucXcw?=
 =?utf-8?B?WEZsWm56WFhkYUQyVlMwd21mMWZLNnZCUlJVRjVNZ0tGaW5GOTVYdFBISWpJ?=
 =?utf-8?B?N1NhK1BHV3ljMjRvZjF3ZnRVR2s3Vm5TNW5TV3BiK2NDNTBIblpScEtVUERW?=
 =?utf-8?B?b2Q1QjZPbDdUdm5CeVpGNGZEREwvbVRnNEVYTkpqY0p6alRKWUZ2TEZkRzZu?=
 =?utf-8?B?ZG1qUjJVZ0V2QU9WMkJDNE5JWjEyaCtvV3JRdm5MTkk3WmxuNnYyUVZSY3BE?=
 =?utf-8?B?bi92N1phU0pVamhVSnByVkdtallHcTh0a1c1NVlOUzJoTEd0UDF1ZGp2MlNS?=
 =?utf-8?B?T3RldnBPbFRwcGRwYlNMenpoSDBvQVViQWhoeGFiQTY2bE1haHNZTzhBMFJy?=
 =?utf-8?B?djdxeXp2MUZ2N3hHcXRFM2plQUVqMTlRUDdOY0ZFYzgrSG5zcUx3MWJ0OFc5?=
 =?utf-8?B?bGNZaXByZU4rZk1NTzl6Rnd5OTIxN1NNQktVelRmVkVPeUJaVk01NXdLckVp?=
 =?utf-8?B?TWdXbEc3bUJodmdvK2ZBRWlqTHBPQzN6ZjRjTnpXTUJJV0ZGdlhDZHpRTWR5?=
 =?utf-8?B?dkNlNUpXU2ZaQXdEaWpwbTlTQnBHUHVYQWdBWVhsZW9WZEdYZEdTY3pra1dw?=
 =?utf-8?B?RVdNZGZ2WFpQZTBwZ3dJN0NlODhQa1h5TjVlT0VaM1NHYWFzM2NwVEgyM0F3?=
 =?utf-8?B?V3czQndwSU5LZUs4NDFieHV5MWw0THZSaUVpK2U4dEVObGxKLzlaV01vMTEv?=
 =?utf-8?B?MWQzc0gwTUw5WVJYTGhuczlOeFE5S2wzWksxckNxN1hPMHhXOXgxSWpOelIx?=
 =?utf-8?B?UlBnQW5CczZaU21ETDBJdGpOMmNZcE85RnRqT1RMS1A1Ui9ycmdPK3ZpZjA4?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9bece50-b4b1-4104-54a2-08dcdbffc369
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2024 18:44:32.2786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D2M9Bi6OlQdvTjdOqzzRbrWRQlftjrQnL+KKMKozTkRFzHtMnlIMrnBucYDrimHMfLr4WB8IZBI/9AMSQzPXOkE14TNrQP2W3BpQ8D4A3w8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4663
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727117077; x=1758653077;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=utO+z/5UiuJIYj8qHeb/ynTGr/rZfhvVllYbVuMbrIs=;
 b=dfsyXXVXrWW1IFpcqYnoJbCDmP/ckzZQ3VuN7mv18rgRnyqQFNIYfWK9
 L5yxV8bWY876w2J8PUmwH1qcLx3gJEfBBu6bbYBt9+FwE+1ENm/hsY5n3
 UkGaH2UKnJlyXgLgnlOeLo6YEyjNpUDn6EDdBBTvUKUeTf6t5zrB73gIJ
 Mmz0T8qBR8Q3ccrmHvlRF8D1noHl93NpUGlvb+iExbBCcdIgA/tiDubXd
 2IDmm0qHkIOyysH4A/ZURh7xBatbmziQIaBN/eR67ZXhwbkWUMSe/a9/n
 RTxlpH9LH4IK3b9ZnvcWQh+DSffFfPosj+mL7reltnZBCi/NhP2dLy71A
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dfsyXXVX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igbvf: remove unused spinlock
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/23/2024 9:46 AM, Wander Lairson Costa wrote:
> On Mon, Sep 23, 2024 at 6:04 AM Przemek Kitszel
> <przemyslaw.kitszel@intel.com> wrote:
>>
>> On 9/21/24 14:52, Paul Menzel wrote:
>>> Dear Wander,
>>>
>>>
>>> Thank you for your patch.
>>>
>>> Am 20.09.24 um 20:59 schrieb Wander Lairson Costa:
>>>> tx_queue_lock and stats_lock are declared and initialized, but never
>>>> used. Remove them.
>>>>
>>>> Signed-off-by: Wander Lairson Costa <wander@redhat.com>
>>>
>>> It’d be great if you added a Fixes: tag.
>>
>> Alternatively you could split this series into two, and send this patch
>> to iwl-next tree, without the fixes tag. For me this patch is just
>> a cleanup, not a fix.
>>
>>>
>>
> 
> Should I send a new version of the patches separately?

The patches apply to the respective trees when split out so I can take 
these without a re-send. Patch 1 will need a Fixes: for it though...

I'm seeing it as: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet 
driver")?

Thanks,
Tony

>> [...]
>>
>>>
>>> With that addressed:
>>>
>>> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>>>
>>>
>>> Kind regards,
>>>
>>> Paul
>>
> 
