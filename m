Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDC3A11651
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jan 2025 02:01:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 879A6414EF;
	Wed, 15 Jan 2025 01:01:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PKs7z48i-Vmt; Wed, 15 Jan 2025 01:01:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85B0C414EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736902880;
	bh=80Ond3ahtQNiLFqBAIx839fv7X2wElJGZA3jerN35kQ=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LOTKWQWRQfwxng5F6XVeEzcSB+qnGC3diYkJxppchfXmy96grrsURqItL7Typq8GT
	 ZptYOFbZUBCtrD+sdaGXNZwv5Kko4AKJ0GK9TWxS1oJCcT5o4e3ur7Qe69AJMgb587
	 BrzRdnUCugK7JMZvxmypgYSo9aURJnI9zAUwINNekyRo29HlPn2FxBr58dYau6uIg7
	 T+IjF7ERlpJebwtWF5fU7PX6qHV5QY+pG+hS7kHmU5hv3bqU2TdxsgKjhX+9fcoY1C
	 nk1SmOZMBRc9Qr+3HcvIIowuci+vNQ1SdarclPC/BVsUAeHghmI8MLZjTec05OCm6T
	 3t5mCfzDV8hWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85B0C414EC;
	Wed, 15 Jan 2025 01:01:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A1021B8B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 01:01:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6BBBA40FEE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 01:01:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T8hkYKDMctZg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jan 2025 01:01:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EE06A403C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE06A403C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE06A403C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 01:01:16 +0000 (UTC)
X-CSE-ConnectionGUID: i6wSfiQlSk6OohH9l8VORw==
X-CSE-MsgGUID: iVxm0dK7QmK8xty/VoXxSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="40033011"
X-IronPort-AV: E=Sophos;i="6.12,315,1728975600"; d="scan'208";a="40033011"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 17:00:48 -0800
X-CSE-ConnectionGUID: EQ807W7wRaCkKpZfcGrRnQ==
X-CSE-MsgGUID: eXrZHuK0SI+J9bjn8vzoOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104842718"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 17:00:47 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 17:00:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 17:00:47 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 17:00:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HdF0xbfhY5Um4F1Zsd2JBIfXKFw2goDMU0SA7zFdYiW1MDjYRxNkETzqyJfmNrSboVLvcBa+9hNJuwwwgKVyES1cdcG4CSmcIuFyQQODiAvtnKexj7zea/80doXlT7RjiVs2Os/mQTItqDhjhb+Hytnm6+aPSI0HI5jnN6fCdWaiTNQTkwU2cEUMspqJ5bQCxJM7Dr7A+mIApE5zl8ZsxcwJgaPrK7Uf0LntMcvjB9eCDuibwobpCdpICWZ5mxMVtSAK8vvmql2xcXMTQDa3+K0XU3idUZhd6qRHHkWh8j4TwP98zUF0obcnQuu3FLUvMGl7lHTN7zAWcy6sVlpewg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=80Ond3ahtQNiLFqBAIx839fv7X2wElJGZA3jerN35kQ=;
 b=vEhkStc0Z5PTE8SvCkHyzh3K5zXjGpNFrruGVqzmU7nyhP45o42MOAbbF3vkSIbMGm5q2H4jO4CBqSXp5UG9n+l2BxTFm/94LFPRF42rP1Fo7wQ9DQ+3EIJQfJ2f7FfKIeJd4lbCV4MwrdCF8MEMx3Suvpv8EgTpMrrpdeZE90stVTrzLje6+nPuBPAizINDYtn+ZDAMPxiDlIXitMU6mAG3U0YMhjP9EaUYZGq7OSp+VGExrl1ivoeygZ8fEWZ6elor2nPOck52wA1/r5B+qf2s6AITeW1O1L844krAHlczPJoKNR4YIz4O8gBMbS7KDpgFoQ8bFmpvAa631R68/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by PH8PR11MB8286.namprd11.prod.outlook.com (2603:10b6:510:1c6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Wed, 15 Jan
 2025 01:00:41 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8356.010; Wed, 15 Jan 2025
 01:00:41 +0000
Message-ID: <5e9659aa-d21f-4ee9-8c0a-1d9191bbeb8c@intel.com>
Date: Tue, 14 Jan 2025 18:00:30 -0700
User-Agent: Mozilla Thunderbird
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <horms@kernel.org>,
 <pabeni@redhat.com>, <davem@davemloft.net>, <michael.chan@broadcom.com>,
 <tariqt@nvidia.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <jdamato@fastly.com>, <shayd@nvidia.com>,
 <akpm@linux-foundation.org>, <shayagr@amazon.com>,
 <kalesh-anakkur.purayil@broadcom.com>, <pavan.chebbi@broadcom.com>,
 <yury.norov@gmail.com>, <darinzon@amazon.com>
References: <20250113171042.158123-1-ahmed.zaki@intel.com>
 <20250113171042.158123-2-ahmed.zaki@intel.com>
 <20250114140813.5a7d527f@kernel.org>
Content-Language: en-US
In-Reply-To: <20250114140813.5a7d527f@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0064.namprd03.prod.outlook.com
 (2603:10b6:303:b6::9) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|PH8PR11MB8286:EE_
X-MS-Office365-Filtering-Correlation-Id: 89e1cf71-9efe-4654-d4b1-08dd3500084c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aTlHanNEMlFZQ25vNHZqNnh6bHYyMmx3UXJzcGFhQ0lzeTR6cUErQkNZMThm?=
 =?utf-8?B?Y3NsRW5lck11M0xtYWJtbXpmazMwMld4djZ0V3ZiVGpncW1QWVNReFFhUHk0?=
 =?utf-8?B?ay9HUU1OUVV5b1E2YlRKTG9CblUvTStkdlBucUtudzRaV0V4SEd2a05JSUlk?=
 =?utf-8?B?aFdHUFVpaXdHS1NVd2k1MEFFUEJqTElqV2FtYkJkbVhzRzJ2dmcxZjJZSFUz?=
 =?utf-8?B?QUJYbEpySDd1ckhhZE9YSjRNV0ZNVUtCYm5yZUdDQ2ZoTmo1c2JWdXVDV0hB?=
 =?utf-8?B?TFNHMVBabStsK3ZqckNaVm5ReE8zWWorZzdHcjNBQjd6SFJKNzRDL2o0KzAr?=
 =?utf-8?B?QmpsS3ZzdUtXZ3pFNkk0UzRSV1I5ZmFpV2RyUm8yLzg3WGE1enptWVEwZSsr?=
 =?utf-8?B?ZEkyMzZGRDZJNXptSzBQand6YVl1WHpJK3VTTGZiUEdsN1JybVljSk93cUY0?=
 =?utf-8?B?M2hETlJacTQzSXRlY0NmejF4YmVwZW5rdy9GZGJYWjNxdmlBMFlOd2cwYXNE?=
 =?utf-8?B?bklhMWhwVWlsY3RiY1h6N2NEcTRMOHBlQVNsMHhZbUd2YzF4R05meXphV2Rr?=
 =?utf-8?B?Tm00ZThBVU5QdWYxT2U4VG1iMFltVmhaMG4rR0t6MEl2SllvN1ZqVFVqQmVL?=
 =?utf-8?B?ZEQwNVBqN25FQkxJR3lDOFJsZ1pOMVhxQ2c1SmgvV05YS3lqaG5JNTlHUHZj?=
 =?utf-8?B?Mmw2TWxjb1c4clN1MUJSVWR3US9LRjZ2ZzJSRzY3MTAzVUNrTFQyMGVjbmpF?=
 =?utf-8?B?MldXbWErYUZmUGdQQTZwYWJpQVU2Q1lhT2FaQ3BzK1dsRXNFaDI5cWhNOUts?=
 =?utf-8?B?cnNoVUx1SHJ5S2JlM1hLbEhkU0F1NFU3SDRGSzh3aHZUSFNRMWRwRFEvL08y?=
 =?utf-8?B?TTVLZWhkTzBobldUM3hSb25HVUd5SXFVM0RMKzFCVHRra0FobjdBYnlFRTNC?=
 =?utf-8?B?R21YS0J1SkRGNm91bVVBN3hxRmtjd2k4b1MreEZXV1l6eGN4VHR0cUFtcEkz?=
 =?utf-8?B?S2grTnFnUkR5NTJzRURYc1BFdEpvQmZCRUxmS0syLzVaMU5BNWU0Y2QvMFI4?=
 =?utf-8?B?QjlHQit4S0t3b2szVEZsZnR5NGRtTE1YOFRnZjMrOW8zUzdnTFBtbkRwdTF1?=
 =?utf-8?B?TCtqSnBLamVPOWF4eDhUTC9MamYwdkphMnhBY1NmS0FCYXBEY04zNjd3aUtm?=
 =?utf-8?B?a3h6aXczUzZJMEorZFo0dzNRR3BsbUVwaU85cHlUdDZZeGJ5ZnlOOElvSmhx?=
 =?utf-8?B?TndPd2ZaTXU5RUlyWWNrTzYzMFVJaWI1WXhqelBISW1XeHgwbldHclNHT0c0?=
 =?utf-8?B?aDgxU2xrR1gyOEZrOG02Sk9EZ2tVRlNyc1hsTzhJc1N5UlowcWRPRFVrZktJ?=
 =?utf-8?B?dkVGWWl0THowREV1S0lRQW5IVFNBSVl1L1FUOVFpQUkrZUlwN1hZVHFMd25T?=
 =?utf-8?B?WUMreVRES3VaeDZsdGU0dkVBQkRyL1dpUVZ3cktqMFZyb3UrZTNPWnlHcGxG?=
 =?utf-8?B?TjJrTUxKN2xpSkk5VUlzTzlFT21HWVJudllQS2ppUnJwSGw1SU10Uk1vV3c4?=
 =?utf-8?B?Wk4xNlF0bFA1RURMZjNvbjBHNUJoK256WUgxcFlFZVFQUFFqU0VmbDNUeXF2?=
 =?utf-8?B?UjZONWZLYktnbUZrY3BWU3dxYkgxL2V2ckdrM09mM2k5aUtHNit5VVJ2TTBY?=
 =?utf-8?B?VUIrWVFPUlVaWTVlMTd3Zjd0WUpSNFlaUVRpU2YwUG9mY0N3SWxPaXdOWXpJ?=
 =?utf-8?B?MGFUQTVobVcydGdURU85ZUdwV1RWQ0pmM2V5Uk9sRWJ6Wkh3TXRXRHkvdVRR?=
 =?utf-8?B?SFRBM0I5MHROdmdQMHhURmJwZjg2dU9aYk5XQWdOSjZnaFVZL1hNSmJ2eWlK?=
 =?utf-8?Q?6hbjkSNvqBpD/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWxiWlRiUE9iNzB1SXRnbFBFSHAxSXhPcFNwUVV4Njh3SG9kYXh3RkZaTytZ?=
 =?utf-8?B?VzJoajBLQWJ0RGNnZUJxZDk0aEVvMzJ5RCtUdGtzd001UUdKaExRc1A5RDA3?=
 =?utf-8?B?Mysrd1pFYWZwdUF6MGRqTG1zNGRJNEdMOWpTNHdTREt3SkFUcWkvdm5Qd3hY?=
 =?utf-8?B?WVJaVmtpTC9uNjdZWWhIcks1QW1kYlVHZEJEK3JpaXlHa3Z6emkvdW1MaHpw?=
 =?utf-8?B?VnU2MEhLUlR0clRZZm5OY1FnRG5Mc2o3Z0l6RGt4ZytZZk0zZXV1TEFKazVa?=
 =?utf-8?B?NzJrN2NtZFB0cEV1OUZoaEJCYUkxdWN5am9jNUsxTng3eUl0Sm1mMGQydmlv?=
 =?utf-8?B?Vkp5Z2JvZXE2UTZHK2pZeTlyMnUrMEgrbGJmWmJ1cGNqVWVqTTVZZHBzK0hQ?=
 =?utf-8?B?TWRuTTNSdWRuKzF4S3dpQWlxZnA0NXVHMFllSFdkbXFEN3NCUDQxSExKb3Rx?=
 =?utf-8?B?OUtPa0JMNnpKMUxMVFM3UkVjek9ScmFyRVdGT09DWFZ5eitWSXJ0VWlUVUdn?=
 =?utf-8?B?K3VsM0pIR0N3b1pyNGNzOUwwTVI0YlNuV1pRTmpnMUQzNmRWdi96bStwdnR0?=
 =?utf-8?B?MndQSGxwOHgyUVJpeE9JbUkxTC9mc2JaVURaTndpTW1QdHpKajZjaEJtdDVO?=
 =?utf-8?B?eWQ4MS9PRCtzWnV1SjNHS2l4QXNrOVJTaC9hR2JjQmtTcnZBUzJ2c3VGUnpK?=
 =?utf-8?B?UktKeG1uMDJhd0pGUkFOU1FFeE84YWFUWElxdXoyMmF2Znc3UFREZ2FSSnE5?=
 =?utf-8?B?TElHZncwVk5WeG9rVXhCaFU0NGoweTdINWFqYnU3aWpXR2pJUkZDY0lCaytB?=
 =?utf-8?B?L2RxUGZCY2g3MUhoOHc1UkJIZUJBTGEvdk5lWmIrMVBJblNnOWFmNlhUYitu?=
 =?utf-8?B?VnZuckFrbUdDTXJ1SmU3S3ExS2tJN2Q4R1ZHMmU4b1hnYys4NzFDNnRXMXBR?=
 =?utf-8?B?VSsrdjdDYk1sWFdsRHU3UkdLa0k3bUJXRkFGdE45RDlDcXUweTQ4aGtMajR0?=
 =?utf-8?B?WWhPWi9pak93dCtsRUZzY1NTM1dlSTFjV05KdzZieVBrdXUrVGg2d2Q3akFx?=
 =?utf-8?B?OTYyTnFvT2xIWDJ3VXd6NnREbDFKdHZzNWFYL3kzdXRXelgza3VWd3JRVzVE?=
 =?utf-8?B?cWZzY2I0eFhTeUlVL2RwUEN5NWxVYUZoVFQ0TXhYYnEvTFZ2Yy8zNjQyaWRa?=
 =?utf-8?B?WDJ1bUhSTTFEVU0xZk1QS1JyZWNTZitkenBaRk5yTDlZb2IrYXR2S0laTUQy?=
 =?utf-8?B?UXhhaU1pOHRTRlRqRk9BL0tkYzhxdjJyVVZ4NWt5TXZtNlhVSDROOGt0WTJp?=
 =?utf-8?B?bnFlYWN4TkEwVzJCd0EyeldoWUs0SDdMZlFYYXNWMVoxOUF5UW9keFpXVEFL?=
 =?utf-8?B?ODVrbDdsM20zemQ1cDlRUlpFT1hBV1FYV1JRSkRlbzdGMHV0Z0NNdXphUUha?=
 =?utf-8?B?ZW1vb000ajNJSlJUZ0V5NGdtakZISlBVc2c1ZjBMS0xReERUS2xZcWtKeFEy?=
 =?utf-8?B?czFRbTV2NDZ3dTBCUUtyeThpL2RNNXhsbTN0T05POWdzYWRVZC9XLzE0SSta?=
 =?utf-8?B?bFVWVkZpVXVwdi9mQTE5VUJ6aFlzeWhHY212QXhDMXFvN3pDdUtUTk1RWG5n?=
 =?utf-8?B?K1lpTGNqdURVRDRtTjNqeTNPK0Q4OG5USllSemVPenMrSkp3eUlTZnVmb0ly?=
 =?utf-8?B?QXdYcFBSQ2JrSGNZQmVKZlgxTGdFRXlrVkRocjYzTzQ5aUN2bDJ3OGp4L3Zh?=
 =?utf-8?B?ZTRnalhoYXY3TDZ1ajZVeHBCL2hHMXI2N1E3U3NpV2JDNDBGcGg4Y1ZkTFVN?=
 =?utf-8?B?T0pzRDQ0aVpsd1d2QjhqcGpvZkJ4THBOdDNtdGNtNGVnQWZsTU1DYWM0V2la?=
 =?utf-8?B?dndsNForVzVvMmc5SUw4akZGWGo4Wi80SXpUQmRwS0VBMkZ6ektrL0VpMUlF?=
 =?utf-8?B?dTR5bVpqVVJtMnFGNmV2WjFwSm1BNGthak8wSHBUblltRE5FZ3JDak9kTWRa?=
 =?utf-8?B?M28vZ1k5MkxiZ2IyTDJPNk81RXdpVUM1dE1DbVF3aWRPdndTd0g3RG45dU9w?=
 =?utf-8?B?WkFVeGZ3bmQ5ditTT2cyL0hWaDZnbVVUNnNjdFExc0VzWWhBcnBFdzhYbGZY?=
 =?utf-8?Q?tGdDLQhEv5u2iLl2g3kb5wBxU?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89e1cf71-9efe-4654-d4b1-08dd3500084c
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 01:00:41.3439 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ohUL90lHJ++pqejcAg2QYThH+FDcOCzgttUVlwgEULvoPkY3Yn9rVITaxBKdzdvyWAt9dHYuYZalHxUGoCrabA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8286
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736902877; x=1768438877;
 h=message-id:date:from:subject:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z8Qf4lwKmZmY4K4pfww/HH+uOgNQLCxB59pDNXLvFHQ=;
 b=UbfrInBXO4XtvI/RScQqB8alan23wlDqGlMPuoVkfRZk/Dw6P6FHPuqn
 ur8Sv8og8MkE9y52Hx+owzXKNqomnSuKb0TVka+nfAFgnvUo08ZLDV2s1
 x6GwIPqTMfXIlnOS8oSOyPo7kvaS/kIxtgyT32E9PpJNYe3sWs7gn7ZBe
 tRvfmYBD7ggU/pN/Bnbl+5oJtiPLj4xLjnuRMUDP8GbYWZ9UD18qw2DRy
 dgub6FHbTqE8PDDf/Hk6YkxIR/3A1lwiAntusO0QxOUAsTAQY4JtoQQHd
 hnBiaXTMQkjLZFAeTMI/79ybHia6shOOda6aC3qhNvvHAiPGUS72h6PL/
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UbfrInBX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/6] net: move ARFS rmap
 management to core
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



On 2025-01-14 3:08 p.m., Jakub Kicinski wrote:
> On Mon, 13 Jan 2025 10:10:37 -0700 Ahmed Zaki wrote:
>> -#endif /* CONFIG_RFS_ACCEL */
>> +	return netif_enable_cpu_rmap(adapter->netdev, adapter->num_io_queues);
>> +#else
>>   	return 0;
>> +#endif /* CONFIG_RFS_ACCEL */
> 
> Let's try to eliminate some of the ifdef-ery on the driver side.
> netif_enable_cpu_rmap() should simply do nothing if !CONFIG_RFS_ACCEL
> 
>> @@ -2398,6 +2401,9 @@ struct net_device {
>> 	struct lock_class_key	*qdisc_tx_busylock;
>> 	bool			proto_down;
>> 	bool			threaded;
>> +#ifdef CONFIG_RFS_ACCEL
>> +	bool			rx_cpu_rmap_auto;
>> +#endif
> 
> similar point, don't hide it, it's just one byte and we can just leave
> it as false if !CONFIG_RFS_ACCEL. It can save us a bunch of other ifdefs

Ok, makes sense.

> 
>> +#ifdef CONFIG_RFS_ACCEL
>> +static void netif_disable_cpu_rmap(struct net_device *dev)
>> +{
>> +	free_irq_cpu_rmap(dev->rx_cpu_rmap);
>> +	dev->rx_cpu_rmap = NULL;
>> +	dev->rx_cpu_rmap_auto = false;
>> +}
> 
> Better do do:
> 
> static void netif_disable_cpu_rmap(struct net_device *dev)
> {
> #ifdef CONFIG_RFS_ACCEL
> 	free_irq_cpu_rmap(dev->rx_cpu_rmap);
> 	dev->rx_cpu_rmap = NULL;
> 	dev->rx_cpu_rmap_auto = false;
> #endif
> }

Sure.

> 
> IOW if not relevant the function should do nothing
> 
>> +int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
>> +{
>> +	dev->rx_cpu_rmap = alloc_irq_cpu_rmap(num_irqs);
>> +	if (!dev->rx_cpu_rmap)
>> +		return -ENOMEM;
>> +
>> +	dev->rx_cpu_rmap_auto = true;
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL(netif_enable_cpu_rmap);
> 
> here you can depend on dead code elimination:
> 
> int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs)
> {
> 	if (!IS_ENABLED(CONFIG_RFS_ACCEL))
> 		return 0;
> 
> 	...
> }
> 

netdev->rx_cpu_rmap is declared inside #ifdef CONFIG_RFS_ACCEL, so I 
still need #ifdef inside netif_enable_cpu_rmap(). I will do the same as
in netif_disable_cpu_rmap() though, that will keep the function visible.

>> +#endif
>> +
>> +void netif_napi_set_irq(struct napi_struct *napi, int irq)
>> +{
>> +#ifdef CONFIG_RFS_ACCEL
>> +	int rc;
>> +#endif
>> +	napi->irq = irq;
>> +
>> +#ifdef CONFIG_RFS_ACCEL
>> +	if (napi->dev->rx_cpu_rmap && napi->dev->rx_cpu_rmap_auto) {
>> +		rc = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq);
>> +		if (rc) {
>> +			netdev_warn(napi->dev, "Unable to update ARFS map (%d)\n",
>> +				    rc);
>> +			netif_disable_cpu_rmap(napi->dev);
>> +		}
>> +	}
>> +#endif
> 
> Declare rc inside the if to avoid the extra ifdef on variable decl

The CONFIG_RFS_ACCEL is removed in a later patch (3) when the 
irq_affinity_auto is introduced and rc is re-used.

Instead, I will move "napi->irq = irq;" to the end and merge the 2 
RFS_ACCL blocks.

> 
>> +}
>> +EXPORT_SYMBOL(netif_napi_set_irq);
>> +
>>   static void napi_restore_config(struct napi_struct *n)
>>   {
>>   	n->defer_hard_irqs = n->config->defer_hard_irqs;
>> @@ -11421,6 +11461,10 @@ void free_netdev(struct net_device *dev)
>>   	/* Flush device addresses */
>>   	dev_addr_flush(dev);
>>   
>> +#ifdef CONFIG_RFS_ACCEL
>> +	if (dev->rx_cpu_rmap && dev->rx_cpu_rmap_auto)
> 
> don't check dev->rx_cpu_rmap, dev->rx_cpu_rmap_auto is enough

yes, also a good point.


> 
>> +		netif_disable_cpu_rmap(dev);
>> +#endif
>>   	list_for_each_entry_safe(p, n, &dev->napi_list, dev_list)
>>   		netif_napi_del(p);
>>   
> 
> IRQs are often allocated in ndo_open and freed in ndo_stop, so
> you need to catch netif_napi_del or napi_disable and remove
> the IRQ from the map.

Ok, I will look into that too.

> 
> Similarly netif_napi_set_irq() may get called with -1 to clear
> the IRQ number, which you currently treat at a real IRQ id, AFAICT.

correct there is no handling for irq = -1. So netif_napi_set_irq() needs 
to add the irq to the rmap only if it is > 0.

I need to clarify expectation of netif_napi_set_irq() because I only see 
it called with irq = -1 in napi_add_weight. But you say it can be called 
with irq = -1 to "clear" the IRQ.

Does this mean that, if irq = -1, we need to "delete" the irq from rmap 
if a valid irq already existed (which means this can happen as an 
alternative to napi_del()/napi_diable())? or just skip adding irq to 
rmap is enough?

Thanks,
Ahmed
