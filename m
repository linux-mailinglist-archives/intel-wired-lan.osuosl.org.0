Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D9234B47BBC
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Sep 2025 16:04:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 451924220F;
	Sun,  7 Sep 2025 14:04:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bTjp4oHTA5Xa; Sun,  7 Sep 2025 14:04:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 270F442201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757253880;
	bh=VuSRCqxwI5wEDyrpFsSN3aR9NKlFbGObgt9iGz4JhVs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3VrjmxASsXvVOl6PmVsjTGqLkgdoPz1qStI7Dl4t3hzT8B9yTULwtCE+PA0uIkRWa
	 fV6oIb/p6f2HVgU1gdkTeejccceXH9RtkrVe6Yy7avT0h7hXwqMaLNEHSdA98xjwNl
	 spevWHVDDqPqHHW1vWwslZY62ZLD8k0DhnvAM1neVNiIGUVKNPpVm63PhowDJdrbXZ
	 yC25eJovir8T4ipUYvN76k2ZN7M/G5euzp3vKdquPp15bslcO5+u2EZUS9I2duyOqv
	 d2OL1tCGHaPDabi3WjM+yGPzV+iYYsGbtKvtrYMDDLfAnJMvNaNMiGtvIkmjw2x9/q
	 ka03GoMlD40sQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 270F442201;
	Sun,  7 Sep 2025 14:04:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 31E7DCA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 14:04:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22F6C821C9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 14:04:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UnmDpseSTwN1 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Sep 2025 14:04:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0644C821BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0644C821BE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0644C821BE
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 14:04:36 +0000 (UTC)
X-CSE-ConnectionGUID: S5QFZA8qSCWJMCXzfPzBtg==
X-CSE-MsgGUID: 1TSEWzpmSMKAJrc55xNBqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63356280"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63356280"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 07:04:36 -0700
X-CSE-ConnectionGUID: RmJK0ZXgTUOw8nosk/u0Uw==
X-CSE-MsgGUID: sJOv7jM4RZGeNj+9sMAVMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="176922554"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 07:04:36 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 7 Sep 2025 07:04:35 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 7 Sep 2025 07:04:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.52)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 7 Sep 2025 07:04:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jlUU1hUr8yFsaLz1+WGLa56EoYc9oAqTtMcJL1gcJsH3sGr1wYeHvIeGsxxrxxw2rkCn4akv09moB0LKNSnnZZDzV36vBEZg2JMnwnMZHwAHtRsNsoCeYJ2jlbEVMIJ6DD2UxicfGEpU1O+xamjZvq07gOMxgFT8CWZRiLkmJpN//OmEBHe/kd0MX9Z/WZnEcV+1uj442PRN3iKmuQsB9l/7uXNwlaPzTYGdA16miEm0t78l1DEmXQH4v7xEMEaKo4nwDMp+mah1LoKOhEnFqsZZ1P91y7dBra65SHeVx2aoxvIFBNpkxJNFqIx5dSTrO4SGtjWDufqqMpvccTEUew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VuSRCqxwI5wEDyrpFsSN3aR9NKlFbGObgt9iGz4JhVs=;
 b=mFwJlwT5QvFUHnbysvXuJL/cBwvwZghI4wij7wXu8ExMkZY5OgRALZE3ZhJua6NjMU+t/eBQuHoY2psW1HtjmesJsJkHbgj4onfrQJcgb39G4Mf7OolH10aV5Skgi6PI0VFnD6swd9nHTVQkTHHx6+F2jhW2sv1odCC3UqAgpNUWtL/v3GXjXZQERxHi+byFOC5nPnVSm00obiFeAXfmlS90jzL9Ku3vrpnfWFuNPVs8hKQmeRS35xj1O94aIeEjg//sqwdZQ006go6LPlHwQgXay+31KE5+wAuSqdiqVJFq9keeu1UmWaVI0gs+u4DfpXy0Zu+evp9gW4wdJ/qXuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF77ABF615C.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::836) by PH8PR11MB6780.namprd11.prod.outlook.com
 (2603:10b6:510:1cb::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Sun, 7 Sep
 2025 14:04:33 +0000
Received: from SJ5PPF77ABF615C.namprd11.prod.outlook.com
 ([fe80::2085:a633:94d8:6156]) by SJ5PPF77ABF615C.namprd11.prod.outlook.com
 ([fe80::2085:a633:94d8:6156%8]) with mapi id 15.20.9094.016; Sun, 7 Sep 2025
 14:04:32 +0000
Message-ID: <2c8d205d-ccd5-43e7-a63f-e223a8e6a90d@intel.com>
Date: Sun, 7 Sep 2025 17:04:28 +0300
User-Agent: Mozilla Thunderbird
To: Preindl <preindl@protonmail.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <re7_7zYnqyVPXjEEGmJepF9vbNV8u8ul2Cspq1ZrUmrc3gXuEgwm9Wi8Jk6kY63HpRYK3hJzyt0N0f-430xyADYxkeyaR3vAb-YVhsE0u6k=@protonmail.com>
 <8zW6rn6ENKd_scHL34Qx4e0KGlekfpSuHxVId5nBR-S9-BYI0v-ozzGBv7LcR3KGlwTzDTEDhhhbkmwmM5GhmvVgEC3zf6YYoraQruWmfNU=@protonmail.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <8zW6rn6ENKd_scHL34Qx4e0KGlekfpSuHxVId5nBR-S9-BYI0v-ozzGBv7LcR3KGlwTzDTEDhhhbkmwmM5GhmvVgEC3zf6YYoraQruWmfNU=@protonmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0014.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::17) To SJ5PPF77ABF615C.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::836)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF77ABF615C:EE_|PH8PR11MB6780:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f9a1a42-9dfa-4b5d-72f9-08ddee177843
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|13003099007|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VzlqQldIdWFTWk12Q0RXVE5sVnVva1MzTnJJT0JmZkJrcUFoNHlKTHpwWjBt?=
 =?utf-8?B?VGE4MWZjQi9ob29QZlVmWGhJZmtVU3MyNXhvZ2VRS3paVHV3dk96Sms2bmpK?=
 =?utf-8?B?b2ZSS0JKaVJtYkNQYlFoL0ZOU0JSRUFESExsOThzYmF1bmR2VnpOV1RiUE5i?=
 =?utf-8?B?bEpaaGgwL3dqVjN6RDJnMk1QOGF2dDFNVHZsN2F2ZDRrb3NUSXFjcTBQbGRJ?=
 =?utf-8?B?NGx5aVllVWFZNHE4VFMxZndBc3p3bEtPSEZRVWVGV0xVeHJpVVQ3cTNPekhx?=
 =?utf-8?B?RHJSNFBnYlVUazg5ZGZpOXdITjBJcjJSNVBKK1dsRzFYUjJMei92OHJ5VEdW?=
 =?utf-8?B?Rk9nOCtxWGkvNE5FOTRwRHZFV0I3cG9HOWd0ekNNL3FzNy9Jb0J5Y0F1Q2lX?=
 =?utf-8?B?Umg3OTdzWmg5MlJYUzIxSkpWcDZ0QWVCVExUUUhVL0xFWDBiZWR5cmpJeUd3?=
 =?utf-8?B?V2ltNVBOOGlKSjBVcnV0ellZQ3JEbUNMN3FjbGY5VytzV3JkN29mMGdjZWlo?=
 =?utf-8?B?WUM1ODRHOUdQeC8vUEIzeUtiN08rMkJLUHE1OCtTQ3Y3cEh4VVdpNGNLdjE5?=
 =?utf-8?B?R0ErOXZPQUl5a21WV2szeDYrdnNnb2RRR0cyQW16enZBc3ZrU1VieFZFWE9G?=
 =?utf-8?B?OElUb1B1NjZZNjZFWWJYK1NOUStOWjFnTXUyeFhkK3IvdHNuMzh5RFMzQ2xw?=
 =?utf-8?B?MzZOUS9mdkVZcVloblcvUFZiSlJqajgzTlNFRklvQ1ZJbUdzdVFKanBOZlhL?=
 =?utf-8?B?ckFVZENUOVJFalpNSjh2ZVJjTE0yV1VraVY3VVJ6T0RpeEd5WkFZVGphejNh?=
 =?utf-8?B?QzN0OGdmVGhnbFZQU0toalRBQW5zVUU4Zk9UYzNZN29FY09teFBtdS9KR0dw?=
 =?utf-8?B?dWc4TEMrSXNsTzVlVlNIYm9zdVNTUThmV1J0TTYzc00wa20zUUc2VnV3YmdD?=
 =?utf-8?B?aitrbkV5STVocGRQVENFM3p2NWxHdGJ3UUZpY2FHNVNjdWlsaDlDS0VMeUty?=
 =?utf-8?B?NmY5RFl6RGN1OXpQNHlFVmVLcnhadlNyWHBDZExnUVZqRmFoWDdYMWtjRnRQ?=
 =?utf-8?B?cFZLbEpmQlZUa1pHMXA4bHJjc3YwMlNOZ0dpZ2tHY01pakJCUWoxdzBuMk0y?=
 =?utf-8?B?Nk9DU0lia2dnWC8vYTByNDR3OCsyRmRrclFhMGlidlBTcEF5N3JoQkJwTTg0?=
 =?utf-8?B?dSs5d3lRd2R4QnhlMlhQZ1I1bTZNL1VaajI3OXhFV0gwN1hmRW5ZT1owK0FS?=
 =?utf-8?B?djJwMER2OWVwVEpxc2RlaVcweEk2ZzJiNjZReEh4b2ZKYzVFZFVrQ2dHQU45?=
 =?utf-8?B?SXo5cW9aRHpVM2pLQVJxY3V1Q0NRZlZGZk52YytWQXQ1TitJdTBLTTdyVE5G?=
 =?utf-8?B?VXJheGFhRXl6WFh6NVNYa3pobldCckZjdldtc2gvUmU0MFhyMHlJSG14S1JJ?=
 =?utf-8?B?ZEs4NnhZTEZNNTh0N0lhZE9UTFd4Sml1QVNRMWtIbjFtYVNrTGlkQUhOaSty?=
 =?utf-8?B?TFp3RldZNVVUQkVzWEV6THVMOHlPVlZVbUxVeU0xUUY1Vzl2S3BndDFCM2Ft?=
 =?utf-8?B?Ym9rZDBUQ0R2aElZdDZMdm53WUlKeHJsUGRoeWcyeEw4RGxOWnl6NTdBck9o?=
 =?utf-8?B?UVMza0FqZUNJQWwvSElkcGk5dEs4bUhqWkhnV3VBSzMraEVIdENuYS80TFA1?=
 =?utf-8?B?MDlPN013bnMrNmFGNmdlbHozMURTWWI1VzkrYkhKemxuZC9IVGhIZmI1L2lM?=
 =?utf-8?B?QWYvRFhDbHR0Yit5ang1YlpLUlFsZjZoTDlyZTdmQlUyTUlQOXlqdWdHRFlY?=
 =?utf-8?Q?rbkAXVmPp6nLhzsSfCna0uFz4RyaKenFoBBUc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF77ABF615C.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(13003099007)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WjMwNWVoNlFGZ0RkWHB5RG9ucWw0eExZMzU0TkduTU9MWVFxbThBbzZ4NWFa?=
 =?utf-8?B?Zkl1M3N4c3lDUm9WOVNoaUM3d2pBQi8ra3AwQmhyV3N5N29jd2U2NktGNWlV?=
 =?utf-8?B?Wk1oVnNBV1dnZi8xMWxYbnFIUzN4WDRvaHVPQmRxWUFOTjdDcWVMdnVmTG0x?=
 =?utf-8?B?NUpRdHhRZFR1UkV2Q09uRXNmSWVWdk1OS2d4bUZUQnl1Y0EycE0rTnd3RENN?=
 =?utf-8?B?L1NXdHVXNlFydlBMMGU4QjdXbUZSdUU2OEdMZks1c3Y2anJWQ2JnUGV6QjFC?=
 =?utf-8?B?KzZtK2xKR3JjZFNFaG1uVjVkandxd285aTVuWGRqTVdBd3AzQ0NOTEplRmFW?=
 =?utf-8?B?alkxa3Nxbk5kU1hjSlVCRHJFVmtyL3JoVHYzSlZKdFBXQjA4Q1l0VnlHaDBR?=
 =?utf-8?B?d1RhU2cyVnF3eUYrVkVMYnFLdmd6MmhCVElTeWNmTnBpckZyODhFanRUT3px?=
 =?utf-8?B?QVg2SHBISi8xZ3E3MmRYNnhUaE01dHZNZGRlMEwyajZoWUsxdXI2VEJHWnRC?=
 =?utf-8?B?ajlyaW83V2dnSzRvTzRZYzhKTWpYL1NNa2JVTzVhS3JKblhLSFdtMG9tT2RV?=
 =?utf-8?B?bnVqUmxxZnNvdHlJU2ROSjZPSUxVNVZzM3FJY01JWGJyNzAxNlhjU1d6cXVa?=
 =?utf-8?B?UlZFcy9walRXNzNBUWl5eEtpSW9MN21JbDFOODhDNFlVTmg5ZERyMFAxalFU?=
 =?utf-8?B?TmtXazJOM2ljUWNQYVVzSW1PSFZJdVFxaTlhUDFPVWxzU1NDL3FodThXaFlr?=
 =?utf-8?B?UGF4Y0huby8vckRpZDlrY1oxcHJRRWlNc25TVFRiellMajdaczdzaTlEVHBR?=
 =?utf-8?B?MDg3VVpMSDhGS2U5Ykk3ZGp3YnppdlF3dEs4dHljaTdiL3M2NHhiWGhRZm9o?=
 =?utf-8?B?U2VFaFpMTm1iVmtYM09HZFNxSS9UR0x6UjV1bWJmYmJmTFdWRjV2d0xZN3k3?=
 =?utf-8?B?THl0dkJBN2RPcm9uMUM0K1ZFTmVpY0lGYlo4aDdaQzZOVHFkV3d6SnFWOUZs?=
 =?utf-8?B?bDNPK0tvVHhlZkxBcG4rTVRMNnNzNk02NGhkT1BsUlV2MWtEWG1zT2lEYjdN?=
 =?utf-8?B?UWNnRXBOWmxSMFhTSUg3QnRYdnN1bFh0ZjFMeWs5M0ttMGpuZEFseEh5ME11?=
 =?utf-8?B?V0tZSFpvSDNqdXBpMFFwSVUrVXBMdzdPaGNJeFlEQjl2QnFMQUJlOWcwMHJW?=
 =?utf-8?B?enN6SHkrUFZpVzdWMFpCUVpFUjVwbDRldmR1aTI4aE1ScUxWd0MwSnF6T3Ju?=
 =?utf-8?B?TGpQWFExRyt6Mm12VEMzejlqcWEwQldjMUtFTDVJR2hNZFk2cktPQlFTa3RF?=
 =?utf-8?B?V2lEMnV1WVdaaHJQWDludDRkeXluTWVqb1JudUlkNGtldC9MU2dKc0ZDTkJH?=
 =?utf-8?B?NmRyaTRMT2tKaHpJeFQzeU1oUk9neTIvdGlnVU5zdGZrUWx0VDIwT1pMMTd2?=
 =?utf-8?B?WW11aUN0dStlWDlrcU41WlRNaCs4ZlVYZkNUTzhvR0E0VlhlaENlSlUrTWpN?=
 =?utf-8?B?cFFyUSsyeVRwWlRJQmhSRVoxV0pNUFpTeXBBdER3N211L0Jkd2lpaUFtNlNo?=
 =?utf-8?B?ekpCR1czTUkyb1RLQUh1NUJTcTEwMmZGOCs3dld6MWdLcnRsVTF4QXlULy9T?=
 =?utf-8?B?MnhCQmRIZ1NSd2FZUTRCbUNaK21sbldSYmNaTHpVUXB2eStmck0vb3VkTDhi?=
 =?utf-8?B?bFFmQlFCMzkyVEZSZDZaVi9LNG01SkJVUStHTEJCNW51cFBPMS9DYis2eXRD?=
 =?utf-8?B?N3NzSEhsYnA3MU9ybEJodmd1bmFpMFdhd2dudHFERmtIVE84MDBucEhrS2lO?=
 =?utf-8?B?MWM0YnNZNHBkZW5ycXJvN3lGZmpjdWRCNzN4RmNLNDkvVXZIY1Z0N0x1akNp?=
 =?utf-8?B?eDBXUHlWSWt6akRLVGJwQmJJSjY5eHJET1d1c1l0VkNxV25wN2tHY3p3dndh?=
 =?utf-8?B?M3JIRGN5Ykp0UitsRkJiSmxwMFBxcDJFSWhBYU1vOWJISGhLaVhMQ05tUGlv?=
 =?utf-8?B?a0ZyNDRxMWdxczNhN21odmF2SmdralZDeXByNFdib2ZYa1NqaHVTaGpQUUVX?=
 =?utf-8?B?elNNR2RiMlNveGNmM0dOMjNjRGNwVUtzeC9adkxwR0wxRG91SmNTNyt5Ym00?=
 =?utf-8?B?L1pzbnBMUXIzNGZYeWpNbWE0bTROaXRYa2tEcy9XZ01DUHoyTVRZVlB5cUt6?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f9a1a42-9dfa-4b5d-72f9-08ddee177843
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF77ABF615C.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2025 14:04:32.8765 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wGJg00alRYU+rqUhZHHgO/POCeXiSWloPp9NR8hqmbmjvuT9yZ8gnBXTiycGrw+N2yO8PrOu4jW2V16B4l+w9FI1BjG3vMG538FADOw2BUk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6780
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757253877; x=1788789877;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IX5yBiA6h8s6UK8Ok77bayohB/UKoP3ayvLt6Ii9jhU=;
 b=LqofVssk9QJHovEQqL0jmPI75NLe4pZCBTwELFCPsVYjYpY+BDcgNMHg
 EtdS2HIihDC6ZWewJMRDw5uyE33OKNJcpiUhos4OFhXi4+MYXdDCItEGP
 Tr+uRJi1/Oyq9YuN16hpFEXYmNpajpRxpMsKfCaCROG5lgn9VO5bVnYms
 zo4XZrcV+6pN0Ylj08JrN5GGUBgwtWBqXlbwqtptozoYd9d0PuOkEZNb6
 eNu/10XbNvTYhl5gPGkdYPAd98Gx/I7/YmFNDc+bTSTOoi2BJs2V3DNxt
 yRgIITZX8vL3NsknVucSrKFeNG1IIXpkA/NMKnIdg5CcerBJymnpWqzJs
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LqofVssk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [BUG] igc: ASPM causes I226-V NIC to drop
 after idle
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

On 9/5/2025 1:03 AM, Preindl wrote:
> Hello,
> 
> I'd like to add the following information/correction.
> 
> The issue can be traced to the following error that appears typically 
> after a period of inactivity
> igc: Failed to read reg 0xc030!
> 
> The kernel parameter pcie_aspm=off does not solve the issue.
> I am testing now the parameters pcie_port_pm=off and 
> pcie_aspm.policy=performance that are often reported to mitigate the 
> above error.
> 
> This issue seems to be more common with Asus motherboards and may be 
> reproducible with Intel I225-V NICs, see also
> https://bbs.archlinux.org/viewtopic.php?id=288371 <https:// 
> bbs.archlinux.org/viewtopic.php?id=288371>
> https://forum.proxmox.com/threads/network-card-drop-igc-0000-09-00-0- 
> eno1-pcie-link-lost.121295/ <https://forum.proxmox.com/threads/network- 
> card-drop-igc-0000-09-00-0-eno1-pcie-link-lost.121295/>
> https://www.reddit.com/r/buildapc/comments/xypn1m/ 
> network_card_intel_ethernet_controller_i225v_igc/ <https:// 
> www.reddit.com/r/buildapc/comments/xypn1m/ 
> network_card_intel_ethernet_controller_i225v_igc/>
> 
> 
> 
> On Monday, September 1st, 2025 at 4:45 PM, Preindl 
> <preindl@protonmail.com> wrote:
>> Hello,
>>
>> I am seeing an issue with the Intel I226-V Ethernet controller on an 
>> ASUS ProArt X870E motherboard. When PCIe Active State Power Management 
>> (ASPM) is enabled, the NIC becomes unavailable after a period of 
>> inactivity. Disabling ASPM avoids the problem.
>>
>> This looks like a hardware/firmware issue, but since it is easily 
>> reproducible (there are several forum discussions), it may warrant a 
>> kernel quirk in the igc driver to disable ASPM for this firmware (or 
>> device?).
>>
>> ---
>>
>> Hardware:
>> - Motherboard: ASUS ProArt X870E
>> - NIC: Intel I226-V [8086:125c] (rev 06)
>> - Subsystem: [1043:8867]
>> - Firmware version (from ethtool -i): 2023:889d
>>
>> Software:
>> - OS: Debian GNU/Linux 13 (trixie)
>> - Kernel: Linux 6.12.41+deb13-amd64
>> - Driver: igc
>>
>> ---
>>
>> Steps to reproduce (logs attached)
>> 1. Boot system with default PCIe ASPM enabled.
>> 2. Leave the box/NIC idle for some time.
>> 3. NIC disappears (reappears after reboot)
>>
>> Workaround:
>> - Booting with pcie_aspm=off (or disabling ASPM in BIOS) keeps the NIC 
>> stable.
>>
>> Expected:
>> - NIC should remain functional with ASPM enabled.
>>
>> Actual:
>> - NIC crashes at/after idle when ASPM is enabled.
>>
>> ---
>>
>> Please let me know if additional information or testing would help.
>>
> 

Hello,

Thank you for the detailed report and for sharing your findings.
Unfortunately, there’s not much we can do within the driver to work 
around this issue. The behavior you're observing appears to stem from an 
unexpected PCIe link state change, which the OS interprets as a surprise 
removal of the device.

Given that, I recommend reaching out to ASUS support directly, as this 
may be related to motherboard firmware or hardware compatibility.
