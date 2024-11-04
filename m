Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D46F89BB440
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 13:11:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D74BF404AA;
	Mon,  4 Nov 2024 12:11:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7qlwVdCSBIdi; Mon,  4 Nov 2024 12:11:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF16240233
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730722282;
	bh=UAffMPwihF5Zxnr//L4RmMhGmmBb8tqVt/+iUAQXfDg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4FNNMSOZnV+7uAgAbqmLgz0lYddmTY8ZAFQlxW60R1kV+MsDaQoPVNFFIfj7AuN6V
	 anoYbcVJI59Qq2jWd1Sk2hFeCnTNcgw0lRrbUvD1wXTSN7FbNFgNw3NpKFLRU+stxB
	 T8eihJVOkD6jOys5eynAHGcsk71dEUgKMHjHMiAvrlQnjiE7U39DtKtzZhFK3NQ84W
	 rNmwFikYVvOphSAKS6b/WTWQ6UL4qei6TG6JP7OCCPl0rYDkJnRfRvesrfH7+OXt7B
	 ESAYZ8u21tp4eVxcfkw1noaVQrqQ53tKn2XOJfPN0IReGpM7ex+id5aUaCMWv17xZ1
	 UEtAT/l6NPNyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF16240233;
	Mon,  4 Nov 2024 12:11:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F2F7723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7EF5C40291
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:11:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DdX2fdUfieH4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 12:11:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7A9AC400A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A9AC400A6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A9AC400A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:11:18 +0000 (UTC)
X-CSE-ConnectionGUID: R8dNpIxPQKCfTKNGZNwS3w==
X-CSE-MsgGUID: 2KegUDUnQMqxHd6ZMYYFog==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="18032775"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="18032775"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 04:11:17 -0800
X-CSE-ConnectionGUID: oTMOw5TxSnuoK0/O+zvdvA==
X-CSE-MsgGUID: ua9plT7CQV6Dfb2mGb+qYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="88766947"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 04:11:16 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 04:11:15 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 04:11:15 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 04:11:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zQlkpuNAnc3hzrAr3JR8YV3yIlx4BlC18CWEdzpP/lKyRYPENvSY3KAFPmddOQ9rQEyR5q7Kw1las4M0nV5O1W0m8juZ+getuLzxSvv3kXJH9S2NYAB9jfdAcW/XaPqQ1mhLxq2TDjqFfAN7zmb/CScRKHKb0x9S5ym335yWWlEl5U9dOuqsEK3HIXcaE/Ae+eIiIJJMmZjVMF9U8vDKtzo2gch9CYlSTfMbdZjX5vvcWytg2reswa+1iXnPzmInvNIRVQxFKty0zcyDY61KyeNRHWs9hPznvrlDwl7oWBUCMPk0EWHVLDaT0IKT6GefMJXnAnq3T+5Sz3qMrE2Rvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UAffMPwihF5Zxnr//L4RmMhGmmBb8tqVt/+iUAQXfDg=;
 b=ig+azztuhdaNRlxEcKtC7CBH7r0CgKuqcungTa38SkjGnDxY/R2f323ZIVP30p2pNfyT+corsh44iPXr6iXvmXtpYTvfA1o1oKy6Ur/mkLoSb8oSoz4QsVh/r0gvA6/xdDhfzPW3hikqmJguQbhAnd/OiiFJjNFrncx6em4uhJUJeCzIXRmFsQheEIm0SRYG9bJB2o4lUymPfnP4maQG8byUEXpM3xBmeZJvinWOptutZoiqx3uJxY62yVq6c7qftlvsQzTWVbgspwsITLu+UrB0RoTj7ayNGSxyMFc7Bi66aR0uvsC4EYVjyHtG/Jf3i9eDbdHiJcWG/Q1Ah03vXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by DM4PR11MB6239.namprd11.prod.outlook.com (2603:10b6:8:a7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Mon, 4 Nov
 2024 12:11:12 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%6]) with mapi id 15.20.8114.015; Mon, 4 Nov 2024
 12:11:12 +0000
Message-ID: <599eebcb-32db-4035-bd57-93ec723dbd43@intel.com>
Date: Mon, 4 Nov 2024 13:11:07 +0100
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Peter_Gro=C3=9Fe?= <pegro@friiks.de>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>, "Sasha
 Levin" <sashal@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <cf6dd743-759e-4db9-8811-fd1520262412@molgen.mpg.de>
 <20241030172224.30548-1-pegro@friiks.de>
 <03b7d4ef-1e1e-4b9e-84b6-1ff4a5b92b29@molgen.mpg.de>
 <2d6b0d54-57d3-4f3b-833c-8490aa63490d@intel.com>
 <20241031171133.00001507@friiks.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241031171133.00001507@friiks.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA2P291CA0013.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::14) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|DM4PR11MB6239:EE_
X-MS-Office365-Filtering-Correlation-Id: 737958b2-fa6a-46c1-9299-08dcfcc9c602
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y210V0Fid2QzWTJXRmViRUMwRU94U3JPQU8yVWxvYVdoWE84czEwUDJEOXFS?=
 =?utf-8?B?Tnl1RytSdEJBN1oxajFlNXZyNFFCZWhzS0JTMjFvNUZ3QUVsYlJ4d0JHRGZJ?=
 =?utf-8?B?cWpqWkJiTW44UCt3S3lGU2FKcEFzcVRzUnhTUWRQeTV2TVNYdCtnQkE0MitH?=
 =?utf-8?B?T1QwbDJrRHZmLzFOUFU2TUY1cTQ1Rkw0a1BHTHFGOHAvYStoa2NpNHVmME5p?=
 =?utf-8?B?ZkVSNFlHZEJuc1BQT0ZFWDIwdDNYU29Gcks0MlA1ZWhCaTVuRk8wSjRhd3F3?=
 =?utf-8?B?WTVxZmRla05vcVphNUtkK1NtR3NPdGlsSzMzOGF4M3NCOC8zcU1ZUmNUTW0v?=
 =?utf-8?B?Yi9DaWNGbzkzVFpXN2c1Rkh6ejBoaU9zdGpvSURKQ0NBT2hXNE9zTG8zSXZ3?=
 =?utf-8?B?a05DS0xKZE9WSUlDS0lUNzNRdUgyQ2d0eGtZVkt0WjVhZllDZTFtS2R1L09r?=
 =?utf-8?B?UmNhTVVpdG5JSW5Fbk1vTzR3YWVCYy9uQTJPZ1ZKVnFDZlAvbm96YXpFQ29q?=
 =?utf-8?B?WUJWN2NmcE93dkwyOU5jWlBBS3djWlFkUjdUSjBnN04vL2JkVHhPRWNMeWRv?=
 =?utf-8?B?KzNMM1gvMFo5NjVwRGthWFJBTFhWbHgzWVAyQUM2RjVWOVVZakVMd1h1R1F3?=
 =?utf-8?B?a0FMR2lIUTNjSTRTa0ZkN0YrUlg4aC95dWY2aWsxbk1qT0VNYll3RitGc3RR?=
 =?utf-8?B?MTRaR2p2cnFnKy9nNUtsc0hJaHY3R21UWS8rc0xoTEhZdVpYS3dZaU9FUjJW?=
 =?utf-8?B?M1Bsbno2WVdKeUVzcnYxMTYzSXBFYitMazQrZEpzNGRoWnpmd21pdlBpUkt3?=
 =?utf-8?B?SjVFVnFxdkpZVFlYNU01NUMvenZtb0tzMUlzVjlGUGhyQXBTbi8vWFhIaVZt?=
 =?utf-8?B?L0NuZW1odFVRUW56eTQrUE1ER0UzMU1hRmRodkNRS29EODlHODVzR1NZc0RU?=
 =?utf-8?B?ZFJMdjBld1NGMVJHb1ZFSm9kQTh3N1VqUmlYSVpmNkhQV2dOUlVSTENCRW9B?=
 =?utf-8?B?MExyTDM2TmVQYll5T0pVbWh6UVcwTTI0V01PQ0hiZEZEWG8zYUJsOWVCT05U?=
 =?utf-8?B?Yy9VektoenE3QXVmZkZJTXQ5S2QxRnowYWx6c2JNVEtIRE1FMzc5SXpsWVFU?=
 =?utf-8?B?VldLcEk3OXoyd1BsNlRXcS9oTmZPalV5RnVkVmRJNWhXc2hXWTRkV3J1bUky?=
 =?utf-8?B?bkFPTWtkbzhIR0llV3lyZ0ttR005WWJUcHNRdk1RRDJHT2lGa3diTDVwdHdT?=
 =?utf-8?B?dmtQb1R6QmF3MVFaT21BYXFiQWJQUThZdnV0aDhtb3JtZkV5UkVHMEVZTlNh?=
 =?utf-8?B?bHdqK1ZmYmJXZnRia2Z0aXZ0RXV0ZURSSFI5dnZhNWU1SzRoNCtmWFB1V29P?=
 =?utf-8?B?SmN3T1JTWkJsc3pSV0dPWmsya2NuTCt6bVB4OGdBZ1NBQ2xRVHYrd2dSeTRG?=
 =?utf-8?B?bXpQaTF2WHhVYjhLajFaaE14MFhxbStnZGxTWkk2anh1RnB3UmtvdENDZFRj?=
 =?utf-8?B?TENQdHpjQUEycnkwWmVaZ2VzclkybnhJRGZtVjBZemFwYUdIc1FWZEhSNm5J?=
 =?utf-8?B?YzR3Vml1NnE4V0o3Z3hrekh3bDBpUjRMcWJjSUMreGNVS3k4UjFURUZyc3p0?=
 =?utf-8?B?ZHhZN29DUEFYZGI2L1BxMTJ4TTVFNjBDbFR3SHZ4ZldJcFBpY0xsT3JFUCs4?=
 =?utf-8?B?NTZleUszRnEzQ0pnZ1NmM2ZSS2ZONlFMNEtrbDZlZThXRElyZFZZblZhZ09N?=
 =?utf-8?Q?jVVRxS14nqQ3ggwqjyyCepnEiky2OBoJOuhdXQt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djFrSjQ2aXRSUXF5NGpBaHpXS0pVcUN0WkFScG1ZUnhjanJPSEtSZ1pCTUZt?=
 =?utf-8?B?NkdtOEdaOFhsOEpGK1BNR2p2cE03NTY5RXQ1eGxMOG9UakdMb203cDJzRmxl?=
 =?utf-8?B?YkJTV1NrVFF3ei9zWTlsNER2SEFiSXljVXA0L0FPK1ZwQ1ZNWnBrY1h0NTBk?=
 =?utf-8?B?L2hOZzBlWDEyVm5RTUkrK21HcC91SmNEbGVMMC9SaU9wYXlranpJbzQvYW8z?=
 =?utf-8?B?bTBlQzJXRHZhZmh6djVGM284cDdvdGpoT1NybWZ6WStqa2tuQytVME8wM3Va?=
 =?utf-8?B?eGQ0NzRhemY4enlLdnZyZ1NBUWtrdGxVL0NYMHgrZnEvWkppT3g0bDk3NjNK?=
 =?utf-8?B?RFJQc3AyRnZaZHdDVHBEMUJmMmltVlJqRHdHNXN2NGtFaktqc0RvVmREdFdM?=
 =?utf-8?B?MHNMWUppR3ZVcTVEMFd2ZkFMS3RqTlhrWDhMY00wZHBiaEF0dFJRUFlrZDJG?=
 =?utf-8?B?ei9NUVd5bVhrV1lhbGFIRjg5ODNSaXd6ZzFmMVFWcHNoZjdYZVRkU2FIcW9R?=
 =?utf-8?B?cCtDamY1QzMwdkJhVVZ2dlM2NXFnd3F0TkJIcno1Rm9wZis1QnRBMi96YmNP?=
 =?utf-8?B?QzQ5TmVKQjF2eXNoMktKeG82amZJaUhuelJTQWx6Wm4vNXlwOENKU3RMV21Z?=
 =?utf-8?B?Wkl6SjZoVUsvUlRYZ2I1TUdBeGlyZlYyYllnRjNnM0ZpOGQxOWtSSkZpcGFs?=
 =?utf-8?B?b0RzVVZmRUdVdHZJcDkwRHlzNVhIUWUyTys0RTJ4UTdHV2tBeDNMV2lBaUtO?=
 =?utf-8?B?OVpmdkxvd2RkUlhocWNMdWEyVEhCRUI5Q0xrcExUVitHclFVVndFNkpTU2dZ?=
 =?utf-8?B?RDdWSDBVREFaQ0lDeFZVU0FSSFRNeUxhWTVaMjUzeXY0aFpyaTQ1YnB3eDMz?=
 =?utf-8?B?eXpuRVZBQTFaWVc3MFFBZzZWQWtpWmtRcERrTXRjMU52dkd3Y2ZHV3pIWWU5?=
 =?utf-8?B?SnhhL3g3ZEdHTTFLODMyblJlYXpjRVl3R05BYXBFL2RLcTJFUkRnbVp2UU11?=
 =?utf-8?B?cjlFSlIxWnp5MUZFN2NYa1c0MlZrbFFib3d5VjBBQUdOdXM0LzRnYVBHYW0x?=
 =?utf-8?B?RTBjV0ZTWUZTNm9PZmVRVFE2ZlQzcHlYU1RLUDF1NlppODlCcEN2OU5GM3JB?=
 =?utf-8?B?Lzh6eUVucUtKd0NuV3RwZ3B4R2RrdUY4dG9PNEJML0FYLzNtQzlTdmhaeTFt?=
 =?utf-8?B?bHFiTksyZEVZR2V6aGM0Nndza09tYjA2bDVEekxTbDJZL0ZXK0MwZVlUT1dO?=
 =?utf-8?B?bHpDcWFzOVExOVJkQzAyZ25kOW5kMVVtcGtzSTBjY1ZyV01oTkw1U1FIREJn?=
 =?utf-8?B?K2pwN3h1MERUVDlNcUhDS0hNQlRKdlNzZ0VBNmpNRDJyWGZHRVl4b3hIdFU5?=
 =?utf-8?B?eWVFOUJOaGtLR2VWTmNDQS8zdE90Q3BlcjhlakpDWjQ3YkVpZUZTd2s0WGdK?=
 =?utf-8?B?MCtTTlhBQ0psN3Nkb2lib2ZqNUdub2p2b1pIbXVFTSs0MHNuNW5SemIzd3BM?=
 =?utf-8?B?Z1hOWVBiNkJYQnNZSEw4dEtUa1JGMGZnSm0rd3dTVEIxalp6OEY0THB0NFAr?=
 =?utf-8?B?TnJZUjlYaGtVWkgzc0xHQnY4cERCNzhqKzdEZzdiTm4xcVhlWVE0aWhIWmJI?=
 =?utf-8?B?SFU3TFloRFV3Z2ZVeHh5KzhCbGZTL2lMK0treCtId2QyOU04SEQ3ci9Uc0Yw?=
 =?utf-8?B?VUJuUE5WSjNpbFcrWno5OXN6N2xPWWhralQrZzZGdkFYTm1hSVZxSUVVSTRS?=
 =?utf-8?B?aHlZTXk5MDg2bGJVN0NsQUhJbmhraW93WnNYVGJYOEI2SVYvbktPTk1oSFpy?=
 =?utf-8?B?UWZnZjVxVHM1aW1aR1dSWlhYKzdxL3J3eStOT0VZQWpZZjRTTFhSMTF1MU5X?=
 =?utf-8?B?V1ZJVzZ0bjdteUd1M09QOXdjNVB6ejRkQ2x0WWlodlpPTGhrODlXTmdxZnA2?=
 =?utf-8?B?Zko1cDVyQXA5UFVqQ3hxdmJwS2tGMld6QmtldFhVMWpENkxiTlltTkpzVCtt?=
 =?utf-8?B?SlZhenNCTjg2SzE1bUVPeXJTWi82eTRsV1RFWXF3NWJJa3d0WDFwaUhrMlFk?=
 =?utf-8?B?Mmd3YjkzNFgyVUt6dnBnZG5nRHBiN21HcEtJVXVuN01NSXlkS1ZmaGRnNnR0?=
 =?utf-8?B?VGN5VjIrNzNzd1lIRGh5YjVkYlFPNXRheGl0SmZsWGsxRXYwdmxhTUwvRnQw?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 737958b2-fa6a-46c1-9299-08dcfcc9c602
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2024 12:11:12.1528 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BnDOKUuEVbfeP8t1nzehT0lsM28N1L5A6QuaHpMnsQYEAJXwdP7TtZPRvvugx7Qar8RHYAOOWfT8Y+FcHb4S2WAH+ADd0OmDdAhfEs68ImY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6239
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730722279; x=1762258279;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oROd5SwZUyTZsJ7eXjEA78hDlRNFd5wRCrQsemtV1CI=;
 b=P+x/D4mzECkCcoeteVB/KZGS9t/F7u0tgal5m2znNzok6awJpbRUProZ
 +8SpRDhtgq8mfpy4jwwomc+1g0uHA7KFEjsfQmS95hXt4hDNIUKKcQhPD
 bYMhYRmZ5fzZ4I/RhUcz9KnQ5dy4s71DMYSCKlBXxqLgGh9LFHcz/wEEg
 hsFlxJDfdbaLQNU2cGMTlxrC6U9cTd3a4lJd32GehmXfpWTrb9DmaFPT9
 kJfZPoai2WkzAGJ8hQgVbkUPuyghdWDtB+OTPSycbhJVh+p/TlL1YEI8j
 GP6a4NSg6lAmidp3nxHmO+gCta8WrVzTKG5PK+kIxHTUgbw2Lh53Ugbec
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P+x/D4mz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Fix handling changed
 priv flags
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

On 10/31/24 17:11, Peter Große wrote:
> Am Thu, 31 Oct 2024 08:34:36 +0100
> schrieb Przemek Kitszel <przemyslaw.kitszel@intel.com>:
> 
>>>> Fixes: 70756d0a4727 ("i40e: Use DECLARE_BITMAP for flags and
>>>> hw_features fields in i40e_pf")
>>>> Signed-off-by: Peter Große <pegro@friiks.de>
>>
>> Both the code change and the Fixes: tag are correct, thank you!
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Great to hear :)
> 
> Would this be material for stable?
> 
> I hope to avoid building my own kernel and just use a hwe kernel of Ubuntu.

I believe so. Especially that you have a Fixes: tag, it's easy to tell
if this patch should be backported to given stable tree.
This happens outside of the Intel, after the patch will be eventually
applied to net tree.

There is an option to CC stable directly, or even point out to what
kernels your patch should be backported to. But in easy cases, I like to
keep it "automatic", thanks to Sasha Levin and Greg KH.

Than OS Vendors will get it down from there.

> 
> 
>> BTW, we obey netdev rules on IWL ML - next revision only after 24-48h
>> and send as standalone series (instead of In-reply-to) - no need to
>> repost this time of course
> 
> Sorry, I'm new to submitting patches here.
> 
> Is there anything else I need to do?

for IWL patches: Intel VAL will test it out (will reach to you in case
of any issues), then Tony will bundle it together with other fixes to
send to net (process is the same for next-, with minor details)

so you could just wait for this fix to be backported to stable

> 
> Kind regards
> Peter
> 

