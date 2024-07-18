Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAF59350F3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2024 18:55:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BE7680E95;
	Thu, 18 Jul 2024 16:55:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nYKEtIozzgjm; Thu, 18 Jul 2024 16:55:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65F4380DBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721321704;
	bh=Q4JvZbnKQfs9XoFyNQRe+92UUKiNWkCmfo7vJZCiaWc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6tQJfOTwNz8b58loIgKwLTmHBTpGb+XIi6DcX4L8jKmSME7a9rE0wq/ZaRV0v3J/X
	 8NzbJsDvYcajvZKbhyRQhWNXZJ4gxI5FwDnjEaiNpOOsms3/Z15TuAcrMAqRvKLy3V
	 oTp2neyQ7qcl31l5bHKe/jNRifLyKHg7rPyXRf0WlFcPE0OXDXoBVyGZYVqXnH83zi
	 rkxYVJ5BwEvRGv/JraxY4En/s/4R2J9bK7i/z5KFryXN8GQSL9drI70udv0/HBzbju
	 VT2SL0nQJog8rnICPeQA6o9nrQp6x7DlQ4Kz5Oo/b9PztdsExNtmX9E/ZCiTnIX9i/
	 r39/cDCW40bKQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65F4380DBA;
	Thu, 18 Jul 2024 16:55:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C0A3F1BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 16:55:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC41240F07
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 16:55:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u9TtMfe9h1Qz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jul 2024 16:55:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 47E664042F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47E664042F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47E664042F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 16:55:01 +0000 (UTC)
X-CSE-ConnectionGUID: K+GKcikYQEWAZo/V582DOw==
X-CSE-MsgGUID: bmVfplw1T4CFvTTedFMGbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11137"; a="18748965"
X-IronPort-AV: E=Sophos;i="6.09,218,1716274800"; d="scan'208";a="18748965"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 09:54:48 -0700
X-CSE-ConnectionGUID: or6hGA3ATv6jP8Ao4dgUxQ==
X-CSE-MsgGUID: QPq/UB0OSlqRNW6PHRVI1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,218,1716274800"; d="scan'208";a="51107403"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jul 2024 09:54:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 18 Jul 2024 09:54:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 18 Jul 2024 09:54:47 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 18 Jul 2024 09:54:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nYEmH5btad53jl1nuegIOt2Sc1SgscGZ9yDSckyzulxy2U7MaA0Gq4ou8pIXCXdx/8XTVjgwT4WIsblRASJYdLeIxPBGP3upWsD4rtRilB2M4uMpQaSaA5GLDvPHXu1PyA11RqNwFbFZk/AtzDRY4xaO3TqiWMldCWAVRi16L2hB4WNsE9FCDMowr5uxcXLXU1LYdtDX36eIE5HsBX2mE4VTLeSxml/sqnwFuZcK+u/RXLTaHDBWSGo8CS7RIW2xMQDAnXtLFKX/oMQcVn/0geWIgVag+wFMbtF6nuLOz9D2NTL5gWkgQELy+93nfwIcuCPWZ+JWwrrwxIEm1hw9gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q4JvZbnKQfs9XoFyNQRe+92UUKiNWkCmfo7vJZCiaWc=;
 b=Y05GfNmxXUw/jaQD0J28Ohj9/243VXmBO0B9qPXQ8IYb/2hbyoeOM9EJKFftcn8xfjlmj46E0UiC+dyZmhi48RdGv/4mgcv+jtywQjw853mS7uGFYIcDqm9tmir17f2PGrTf9nUv9fgogKc6TiEUm4RBBlFf21BD/MaLICtxQ4E1X3Yu/LRR56y/CeOrxeOHZMtt20a3axNRDG9idGM4ShJUn3x/dEJ8YE33OB79UHiiT8ZSKcwX0R8NRY77L2nk3UH2G4aNLQOlrWb0ximSvzR6BMAbh3+G7phjwc8t5kzOmI9C1Kh8+7DxqVqe+h+9uVTaF6fS9tJI9h60wceRzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by SA0PR11MB7158.namprd11.prod.outlook.com (2603:10b6:806:24b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.17; Thu, 18 Jul
 2024 16:54:44 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.7762.027; Thu, 18 Jul 2024
 16:54:44 +0000
Message-ID: <6cc70dc8-62ef-4fdf-99e8-1091cc454352@intel.com>
Date: Thu, 18 Jul 2024 10:54:34 -0600
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-11-ahmed.zaki@intel.com>
 <b0a70c97-2a25-4dca-9db1-aca64206a53c@molgen.mpg.de>
 <e829371c-3e19-40a9-8a35-ea903f912294@intel.com>
 <b86c8136-56cc-4a88-9ca4-3c0d7e849bd0@molgen.mpg.de>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <b86c8136-56cc-4a88-9ca4-3c0d7e849bd0@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR03CA0065.eurprd03.prod.outlook.com
 (2603:10a6:803:50::36) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|SA0PR11MB7158:EE_
X-MS-Office365-Filtering-Correlation-Id: bb562a3f-f3dd-474d-6fd7-08dca74a5314
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WkJUQmxKRCtsN0orZHpZczFHNGNQU0dHeEdHSHJ1YWZEVWMxYU9PZk1vNHhF?=
 =?utf-8?B?VU5HcXNrOXRHdERZL0xkZTR0NGpMc3BrTVhXNHpDcURWRk1MTG9jTDdlYWxj?=
 =?utf-8?B?RWFFZ1NhOHNQVS9HK2Q5Q2pSeDRLenV4ZG9EYVZYUnFDTFJ5Z1dFN0N6NkVC?=
 =?utf-8?B?bldlUDRKSjdNbGNmNVRuWXFOd0lSOVorNkJNKzA5WGJPT0JwR3JLNjYvTStG?=
 =?utf-8?B?WTg0azFIbGh2QVFYRFlBUjJ4eUc3Mm5ZcndrK2Nxb21sQklRSHQ2UVgzWVdT?=
 =?utf-8?B?ZGU5QTAzYm01cnNSMnBPL2FEVEQ2Uk5xV2dDSHBHOXMxVnhBNHdJTUhMdW1M?=
 =?utf-8?B?aG90TGxNZS9lTGRBdmF5VzBiZlVXSTVqWWl6L2xuQWRQNkhpZzBnY3AyMm5a?=
 =?utf-8?B?RXFXUUU3NS9zU2FVanpGLzluU0VDOUJxRTVCMlRMSlNKWk1HMnl0Ykx2Qkpy?=
 =?utf-8?B?SjBsMFl3REFqLzBJSENjcjAzRUgzbVp5RG1xdXRLNHFHRytFNUFWWlpKZ2Er?=
 =?utf-8?B?eGpFZnZiK1lnQnJVemt3RlFWT0hOR0t5bWk0YkVZZ09STjRKSXdMMW9lNVRm?=
 =?utf-8?B?Y2ducnRRZGVYc09pdCtvMXBBSGlmQlZGYmdPdlJoaWszbkdHRHlsamppekt2?=
 =?utf-8?B?WC9yOVhjdkJqZytwRU1EYmN0Q1ZNU0RhSTB4YmFSS2hQOGcxVm1wNUtyN1My?=
 =?utf-8?B?cWJXQ1dxZTJCOHNaa0pFUThQcTBHU1hNU3ZySTFHVDIydWsrWlBqTnhRNndM?=
 =?utf-8?B?MjdjSm56Zk1NRVhsSGhITnhVYkdyNUw2QVFjdVIrcFJMN2hLRlkrRk1raS8r?=
 =?utf-8?B?QnFZR1RJcjV1bTVTQUZhTDZYZUxRUGlsVFpmYXpSTHFUN01OVUk0SlNyanNu?=
 =?utf-8?B?dzQ4UXRzM1JoOWp5MnVqQmFOODFZTDFGOC95RmlrM29OZ2RrNUlZcEZaSXQx?=
 =?utf-8?B?RjBMalFTdjYrL0N5clkrQWhWVVp0d1B2Z0U2V3p4K1M1WjErdWt2bHBiVEo4?=
 =?utf-8?B?NFUzUnBiR2wxOFVkVGhGdXJZeUE4dko4U2l0Rno1aVg5SElaY21HOFJ5U2Jy?=
 =?utf-8?B?SURCSnY4RzlteGRoSElTYWN4Y0ZQZFhDc1AzRHd6Q2VOYVNiMWZKTDJuVENV?=
 =?utf-8?B?cHoyOG9yVFdwNkdjSHpkVGdtZEpwbzNVcHVwZEFXWEtkVzl1elhVY0ovT2ky?=
 =?utf-8?B?YWo0c0h6eU9Pb2U3djBCNk13Tk1kVWFpY0w5dXh3UXpTZXhaaEtXM0ZUUGk4?=
 =?utf-8?B?NlU2ZjNzbEt2LzRDMFgwMVNrRndQQUJJVGlIcFNmMVFsaGV2dVdMQVNqeE13?=
 =?utf-8?B?QWRUT2E2QlFIV1FRYXFjdlVRaThhc0xmZUhFVE5zVXE4UnhZbHNhdW1ENGlV?=
 =?utf-8?B?bEkrTnAvdGQwcmpXWEZQTjk0WkZJMktxSWE1TVI3NVJGM0FnQXkydEdzSkRP?=
 =?utf-8?B?cEhBK2xGUU9CU0V6eDFYb1VHUjBJZHlhZWV5RlZ6MnFGZC9xdG1Vak5XRUhx?=
 =?utf-8?B?dXRNUkY2eUp2dHpjM2FBSmxWZnFsMXZORXhIZXhZMXlCTWVyMHZZdFVScitz?=
 =?utf-8?B?YUFXQUptdWRMZWFVaWl3SnE1ay8wY1gyTy9nWVJoQXFEUkxsOW1mc2I0VTRr?=
 =?utf-8?B?UVNWZGQveWFvZGgwcitUWDZLa3Q0Ukx5bng5T3Q1eHp2YzRzVnl5RzliYzlj?=
 =?utf-8?B?dVpyTVl4K051SjFpdnUwcnVwdlVFUEU5SmNJWDNESFBuMjNncWtQTEd4VnZx?=
 =?utf-8?B?V3N1a3g1TmE2ZE1ZaWp5MGdEU0NMWm15emhEdHpBMjd3SFQySDIzd01Da1N6?=
 =?utf-8?B?QjJjaXdGZGdXK2orKzNOUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YlR3NmZHSTJZbS9kREpSRWw1aHV4eDFaRjNzemdUdjVYQllvaXZBQXEwWlR2?=
 =?utf-8?B?RDhKeEUyZlUxNGNCNk1saTBXK2NjVldOVGRQTUNNT2FSbHdtdm4wNTNzTUli?=
 =?utf-8?B?bm54UHBGalJEeHJpK3VTNjJkVUJDRGNlMllCajhVOVIwNWNNY0N5SFN6SUxP?=
 =?utf-8?B?ZHN4Mk8xeWpqQzJSZjh2VGFWb2JzNDZ2dmxkQkxDTllFUG83aWJ2Q1ZPaE90?=
 =?utf-8?B?Z0lUTm43RStuU1UvVWxic2JSNVprRWZ4SFJocWNXVmp0enlBeFQzTlVXU2l5?=
 =?utf-8?B?RW1MWVpkcU9uTE1uVm9lK2JwS3B3WnMzbTR5cTUzSWQ4c2dQK2JkbnJ1cUVh?=
 =?utf-8?B?RENuRCt5R0MwcGdwcnMrcnViTVUzOTArSWl2dktrL2VFbVhIdGJLL1BQcFlD?=
 =?utf-8?B?RTFDdS9lVlNLZU5RUVFuRGtmU3cxT3ljRCt0MVdUcks3czlRWEt1Q2tKNU5s?=
 =?utf-8?B?QWgwL3ovcWhiNHppU2ZnSTNQeUUzTjc5SVU1OXN4bWs3VktMN0E2ay9ZajhD?=
 =?utf-8?B?eDlBdTFqK3JuZFcrYi8vSmxJb0QySnc3TkxsVklKV2lvRmdIc1hLOFJ2WmU0?=
 =?utf-8?B?M2NiVithZzc0N3ZmZmt4cnJTSU1RWEZhVzdDek9DSlQvVjY3NVdFcTdsMDZ4?=
 =?utf-8?B?U1Zhc0oxejZ4L0txeDlyQTNlb29TZmwrMEd5UDloV2t2NkhDT2g5a1l5VHha?=
 =?utf-8?B?bWV0VUd4eHJhYzJpVkdtaVFwcFFjcXlZVmF0cHlqWHBJRGt6aGRMUU9TbHVw?=
 =?utf-8?B?UHZGbmZqZ2ljTHZ2MHB3disyMjVZdVgxUXN1SlBzWXQ1WTJMMHVKSklEWUk0?=
 =?utf-8?B?YjlvWWJhbmRkUjIvOUx4bkpBTjRTZCtrZ2lEZUE1UGUrd1MvWTkyQTlmblJN?=
 =?utf-8?B?dkl4MFhrSldBZ0NobVRKbjdiUTlqdWNTQ2JSUmJZbVJUdkdXU21xZ0hub2VB?=
 =?utf-8?B?alNVcUlCVTBQaVN1VnhXMjlheVEvSXc0QUhZRkh1eTBSZ090cTBEc0dneUFi?=
 =?utf-8?B?YS9Pc3g2Z0NhdEJoUVVJdkU3Qk1Gdm5DSkpMVC8rTEZBTkx5Y2huNW1OcThP?=
 =?utf-8?B?QkxPSXFXNnkxUUZqc2VLY2hleUJWUEpBNWl5a2ZpbWNMK3Q0S3FGWUhzekRl?=
 =?utf-8?B?QlVDZVY2M1Q0RHpYTjl0cDF6MHBDREVIQk9TOEVDYmdDNk9DWmJKMEdPNjZy?=
 =?utf-8?B?NkhpZFdWYUpaK3VzelUvdExjNVhqUzF1TTBZUmxSWjFMUTI5QjRjUWV3NzZu?=
 =?utf-8?B?ZWNDb3JNbjU0MzF6aFRFZ0JUVnQ5Tjh6UWIxbDdmYlllQjRVS0NTWTFWSjN3?=
 =?utf-8?B?QjQ0ZVlBb21CTndJdnJ2RFpXVzZkRkZDclFZY2pYbHBkb2ZiQUkxMlZUakx6?=
 =?utf-8?B?SWRrSVZva09nRStCZ3JCVDdPRlFyM0lvWkw1SHA5ZGpRSHhtVXdWNXllQXJE?=
 =?utf-8?B?Y04rYmZOamRWT2FxbngvTFl0aUVGUDR3UXEyZnlzaWZzejF5Mno3SnRFVjc2?=
 =?utf-8?B?bmxwYU1lUzVOcHo0dCs4bmZENWxweTRYRk1TcnBHNEd4bnk0Mk95MXgwS2Zy?=
 =?utf-8?B?S0s2UFlzOWlhbXcvckliNm1LT3ZweU02b1pUOTNkV2NtMHJjQWFWalBySU13?=
 =?utf-8?B?U25sbHFMZm1ZV0NDdFFhSDFNaXZNZEpKUzRFQ2d4ZWg4V0RIeXhYdmU0NC9Z?=
 =?utf-8?B?VnZZQ1VHRHUrYjFwMVNHV3duMXN5TmFid3VEMUpmaE9YT2EzOEM4M0JhNk84?=
 =?utf-8?B?dFdRV0JzWVVjNllnYzBIWk1lS3V3VXhUQk1ZNHkrVGFYMUx2R2R6RUxXRlIv?=
 =?utf-8?B?ajBEWk9nU0lORHk4dldPdjNrQ3JRN0VHd2x1TjE1dUg4VDdwK1M5N0h3V2ll?=
 =?utf-8?B?UHBFWHYzZ001M2JmZkJnNC9ZK0FuSlNaWmNnYW11WXJoVFdxbHpxaUg0bjFr?=
 =?utf-8?B?citIR1JKRy9JZjR5M1ZnMzZ1bllkOExjVVgyZUZWeTNxamtiUEdWSFFKdkxt?=
 =?utf-8?B?d2Z1V1JTMjVBVVBNSEpiZkw2dnJtVnA2MG1PbmVjeG9KMGdtdDRmd3RKYURi?=
 =?utf-8?B?aDlRT0lyRzg4NGljRWlQR0NLSW9iMVpkTWJ3Yk9JbmowWG9naFlSV3lFTkF6?=
 =?utf-8?Q?yc3baEvqevBlzQy1akIr09U79?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb562a3f-f3dd-474d-6fd7-08dca74a5314
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2024 16:54:44.5564 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gHe5lkGubvafqRH/qRXFUOPLqA2WORA1iP4lTCJkeDdvjLsw6H3ZbnDkwFK6BAQLGgtmB+UWEMdXr710rmpiDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB7158
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721321701; x=1752857701;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=45IObn1IVAgE/c70tbqTXfU8JnSk/Brbnu/hNp5LucA=;
 b=eFtU4tDbitvHdMnv1UGcBKZmq9eUH67LOAyLAOLNMfVFfW4Sc0U/foO1
 Scf5NVY+M7qO87t9uqKnJ5G1zbQaMe7gGLaEpmrPqoBqsI7Lr3qlu8MPu
 DfOeMTIHyJZoC5BMAwICQzAgIYpAhdBR0W4zYMMgQAd6w9YOcwsgG+Jnq
 c1pWXsvIeLHyJvs3PK9vBz04ybf/ok+W+Di4NHtvGho5B1GZIGF5CDUyK
 iejp/aK9/Ov6tISTGFvXuvWltGm9MaXEo5ogXnolqi+fjWHgZPDb6XzBK
 /gDzPvhJu2W66sadZgHYZM3CLX2xypb7Qs7sNBLi5AmDVteJcUuvWvsWr
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eFtU4tDb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 10/13] ice: add method to
 disable FDIR SWAP option
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Junfeng Guo <junfeng.guo@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2024-07-17 3:55 a.m., Paul Menzel wrote:
> Dear Ahmed,
> 
> 
> Thank you for your reply.
> 
> 
> Am 15.07.24 um 16:23 schrieb Ahmed Zaki:
> 
>> On 2024-07-10 10:59 p.m., Paul Menzel wrote:
> 
>>> Am 10.07.24 um 22:40 schrieb Ahmed Zaki:
>>>> From: Junfeng Guo <junfeng.guo@intel.com>
>>>>
>>>> The SWAP Flag in the FDIR Programming Descriptor doesn't work properly,
>>>> it is always set and cannot be unset (hardware bug).
>>>
>>> Please document the datasheet/errata.
>>
>> Unfortunately, I don't think this is in any docs or errata.
> 
> Oh. How did you find out?
> 

I believe that was discovered when changing the SWAP flag in the 
descriptor did not have any effect at all.

>>>> Thus, add a method to effectively disable the FDIR SWAP option by
>>>> setting the FDSWAP instead of FDINSET registers.
>>>

Ahmed
