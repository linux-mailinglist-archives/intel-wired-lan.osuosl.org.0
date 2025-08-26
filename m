Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE48CB373A5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 22:12:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E64940512;
	Tue, 26 Aug 2025 20:12:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id biFl2BPBacd9; Tue, 26 Aug 2025 20:12:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1965440498
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756239172;
	bh=btMg8FRZq2tOmmpjpODCUjQbZYACrKuAxEoSENWDmOc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cHqypNX4mFNcZWjkrUnoYKwNDTW/BuKgkse9kDJCKj18TQuOnSN3E4QS7j+Pj/bq1
	 m9lrSFdu4ySj1/TMe21EUQv2Fox6EtQkuu4ULWkPNtUqlLdV7zR6UHdDFTu8lQ/guy
	 NXp/3GXv8zbfGPoCig4iZ+k90A3ABnfKrfFw54vTJ5mPr9fnUSUUeaUymg/J+HXz3m
	 N14SDA/FAHiPr7kctstB6RCGTZyBgPmZjM+iXOuTnwC2pYzTt0xZ47gOynLMN9JLlr
	 8QD+CLdGINU7vSs5Fq2K39WTQ5FfbYgZtyd5EFXXlBCo6Zfpw/FIyC4AWzDqgd7vlo
	 PezrQCSSqxzfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1965440498;
	Tue, 26 Aug 2025 20:12:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 563ED114
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 20:12:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E9A180AA0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 20:12:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1j-3uhjR1OEX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 20:12:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1AE8080576
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AE8080576
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1AE8080576
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 20:12:48 +0000 (UTC)
X-CSE-ConnectionGUID: t8dkesxpS+ybWhIbG6tabA==
X-CSE-MsgGUID: w7Uv8PIcR+68ztPqMPHvNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="57689512"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="57689512"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 13:12:40 -0700
X-CSE-ConnectionGUID: mutT+f/PQRapZ63GrPkxRA==
X-CSE-MsgGUID: xwqRWr6PT9unVB3Ofu/IWw==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 13:12:33 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 13:12:32 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 13:12:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.66) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 13:12:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sR8tAb19m6YFY2pS6YEBbN34h6p6W+aYsZlAQeo8MvCDvZt1xorgSiWn/MpUy142MowH+3HYe+M7PaXoRNTKleBwaCEGXOpm3owjrL/5AVu5NTTwjzXjVMmoND4wHTA/ftdUU1iROzHo3Lj0+KxNLmKAobLxWfgsLTKL0rMvs/WJCP2gOleYYRlhT6gSWM4DKf1LvxmpDu7O3I4eT693NDof3uBQCmBfw3CwQfWLLezRHtkCDG8B4raszvdC01iJkzbn8307rv2I9TLX0oueCh4/A3sAZskbCtS/A3u3rvp3TBnWW51FBFdx3aAK2pRuKr5ifLfu6yuDbehttMWWJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=btMg8FRZq2tOmmpjpODCUjQbZYACrKuAxEoSENWDmOc=;
 b=xezXOshfCrN51gxTVzJ+uLN0ttW40zMcDE6qbJC0J6mQWuBkphVnX0Voj2ag1lUl4EK6qEa2ciXA/3EkGiHcgotajIvbA06NzH6oGU3K+prROgYZc8B50GWdKTIJeEF8L7MiMrSZg0dXYj4fv1vKTtYalUF56U6AbiV5LGodZsm9HqI45QlHcM+MgC2bMQdT2T2+pGCTTQSN3uvtIJ8+qj9QSxP1DvUHiMaZV38mDezWSwUAMSeT+7Klky9qV3k4+61dmKzTB30W69ma62mCA0ObFGe6GiAMlu9pbqioOv2O0iBdjZnJ3EyHpY2LRFgB/ushHlOYOHwMu66lehfcvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ0PR11MB5023.namprd11.prod.outlook.com (2603:10b6:a03:2de::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Tue, 26 Aug
 2025 20:12:30 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9052.019; Tue, 26 Aug 2025
 20:12:30 +0000
Message-ID: <fba6fb6f-4d14-4e75-bbb3-2fae2862a7ca@intel.com>
Date: Tue, 26 Aug 2025 22:12:26 +0200
User-Agent: Mozilla Thunderbird
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
CC: <madhu.chittim@intel.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>
References: <20250826172845.265142-1-pavan.kumar.linga@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250826172845.265142-1-pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0187.eurprd04.prod.outlook.com
 (2603:10a6:10:28d::12) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ0PR11MB5023:EE_
X-MS-Office365-Filtering-Correlation-Id: 84bd6f14-3470-4ddc-13d2-08dde4dce2b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?enlEMXBWRnJuRmgxVi9jMXNpdlkyT2cxbmM5NStPWGEzVmoyME4wSm5UMmts?=
 =?utf-8?B?NWtwZzhLOXpIYTh6aU1ZNXNoTDU0ZFlQR093WUZnL2lva1MvUWViZXViUDQ2?=
 =?utf-8?B?eG95cUU3OFpkWmlpQUFWbDY4N2F3VVIrSUp4VGRBamV1a0xmMHIzbDMwQ1F0?=
 =?utf-8?B?emRsWkFRUGcwaEc5R3pNeEhRbHgvWDMyT1dJbzBTMnlaT3dUUmJqeDlJeDB6?=
 =?utf-8?B?eE9VbjZMWG5YcUQ3SFBYcVY4TXRTRzdGcFFxTnNCQ1drTllRV1hqWkplNTgy?=
 =?utf-8?B?QWE5S3VIamdlaWRmZFIwMmdlVWJYM1BSaEdYcUJ1MUVLSVdKdkxFakVYbGxs?=
 =?utf-8?B?UFhZS0pHb0VpT2dqUkRXN2JYQlgwcXRuWjJ6RGc5WlJhUFhVNmZjU0JoY3lM?=
 =?utf-8?B?NWIwU2k4c2ZQY3FQd3hzVUxDbG5yRmUyV1Z6MVl3YUplSzQ1VWplbGtJUDh4?=
 =?utf-8?B?OXVjQVlNY0dPcnFlZGdyaE91MXhUVlB4RGJWQzdHYW1GVy9sWjVSM3FVcTNK?=
 =?utf-8?B?dzZsdTJFYU1YVlFodHV6eDlTWi9iUnJXNkJBbXJNZ1RpUkpHRGpCN3RJQzAz?=
 =?utf-8?B?SEgvYmU4dEk5YkdTZXpZV0Q5QlVCRXh4dmVSbWdmWUNBRm9DOWVSU2llRUFm?=
 =?utf-8?B?cTFoZkFGYkoraGdSN0JCK0ZBUW52cmJORGVjWExuWndsNEdUVXJRZWNCVDZR?=
 =?utf-8?B?VG9RVzg2U3U0akJOaUlJT2NkemJ1dEs2SzNXWURkbmhpemRiYjdhT200UFNW?=
 =?utf-8?B?UE1ZYnd5aEtrdTd1dHdjYlF0UXNwOUkva2RzZEJZUEc4Z2FQZzFmbkV4MmRl?=
 =?utf-8?B?Q0NubEVCeUVQaEsrTmsvV09CY0N6WWsrSlZKQUo2QVMzUmZ2WXZ0dE5XNklL?=
 =?utf-8?B?aENUZUd6SWg4NFVsWk5uTGZMODY4bDB0bmp1bGdtQlFmdDk2RmdwTWh5Q0hN?=
 =?utf-8?B?NVdoRWhnTmdWbGp4UzZSY1VvVFlGMGYydmR5Y1F1cjRLSGFYNWN0UnlmQkRR?=
 =?utf-8?B?dTJzVGorVk5LcjNYZ1pTSTVrUm0zSW5iUGNKN2Zkd2NjMkFjMW51NnZjUkcz?=
 =?utf-8?B?SlhWSzBtbDdyYW5ZMmFRQ1dEaWFVS2JLR25SM3RESWMwRnl4WFpiR0lkdldw?=
 =?utf-8?B?dWxqZGViRm1nbnBUOFlFa2NVaFg2UmhsOWhGV2tDenA0ZkJWdDJyRUhVMjdD?=
 =?utf-8?B?bzdjMXBDVHVwVkR6MXhYaFZVRTlvdGJVWExUc3o5V0lJTkFQbTUydkNicE0z?=
 =?utf-8?B?eE54ejRjcUR2b0RKaHZ6VklRM0pSbEZjQS9wSHNZUUNnN0FCNUlYTmFEQWcr?=
 =?utf-8?B?cVZQWUl2RTFyZWRPRXhNc2NrMVM1V1pXdDI1NGY2ekFaZnhuU0xIOUYwREsx?=
 =?utf-8?B?azVqV1JSV0lYRW8vaEkxcllkVHU3d1VnYXRxNlp1Q05KN3Q4VGN6RUlBZUU5?=
 =?utf-8?B?cHNPVFdwNU9ERmtOdlVMUElxcFBNWk94R1NyU2d0OEdSVVRXZStCeFFLMDN1?=
 =?utf-8?B?cmZoQkxYNFFBQXFscEVQSzJ1a0hRWG5JblFsMVhjaEsyUndlbkFZU2ZFZUdS?=
 =?utf-8?B?UzVaemJIVHEyYnJLTUkrMDNEa2pZcHFHb0M2ak03U1o5cVVTNExWSjFrbHZ1?=
 =?utf-8?B?TUIxOTZoWE9xRDUwMis2NDU2R3ZpY2VGcm9MU2FOdW1BRG5iNWRJYVBDQ0dW?=
 =?utf-8?B?YkY3TUxzUlRFdldrdkg2UnhwUUdndUloTmlheEtjNENOYzErMGUxTG9JeWhy?=
 =?utf-8?B?eXdzRFJUczFJV1NTVFhJZ3h1dUU5TVVCY2UvR3VFR0pHN09rUlFyZWlYOEc0?=
 =?utf-8?Q?qucRCEyU/jjTd3eu4LujSVlCntwdOW+tpAWV8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?blBpKzk4b2tseFB6c1pzb29TOGVScDNpZTBhSlRxSkdnYjlJMXZuNHpsQUdJ?=
 =?utf-8?B?elVBckxGRFZNOGdqa1MrUUo4V1hibzRIQXFUYk5PcG1ZWXNaSnpXcEZFU3I4?=
 =?utf-8?B?ZUxnUVFwVk45dCtaaE1OM3FLRGJXRTYwWDJESVlqUzBoOGl3N1ByK0RsTHU5?=
 =?utf-8?B?QlU3VGxuTlcwTmZMMlhMTWhLMXBYM0dzVk1rMCtRTmVodWxRWUdTUVcrMm5o?=
 =?utf-8?B?WHE0L1VLR0JCMUJYZlJuakhLbU9QNEdIaDdPSUNDVGh4ZWpsZmNJb0p6ZUMr?=
 =?utf-8?B?amoyZjMrdmEzcWZHOWtydi9DY0FWMm95NGkzZ2JKci9jUE9jOFkyZTc3RjZJ?=
 =?utf-8?B?QWdVMHB0eFBEWHltdng2ZFNVdm1WUHZaeHhtbk5kbG16aEFqcDRCanQzSFUz?=
 =?utf-8?B?VXUrRE9vZ1A2ZWZGNE94cjQ0T2xXVnlQNUtNUXk0MWVWd1h4YUxvUVk2bC9j?=
 =?utf-8?B?algwMWxSaDQ2SWNRM0hjQzErWXRoN0R4YjJPb2dpeGVqYXk0YVg4VEFnbnZZ?=
 =?utf-8?B?bzlMeDVjV2ZNYVRCQzZWTUgyUU5BQ2FuTzZQWU1FQStnblFsZ3pNSVdNZEhE?=
 =?utf-8?B?dGFWK3RrdGoraGtIMDFZbVRDVTZGWTMwR2tQbTlReHQzTHhOb0daYjJITDhY?=
 =?utf-8?B?RmFVWHF2ZjZrWVBVM1d5enZKYWtMT2RQUGtLenJTTWJyUjdTcXppMWJZNXVk?=
 =?utf-8?B?Skl0VFo1a0t0UmtOTnl0Mk84ekg3eG0rOVVnSnVRVU5peHd4aTExdFFXQzUr?=
 =?utf-8?B?WUNvZW1uTGoxQTNKdHFxcTJFUU5JODZsbEcyMmxzbVNJekk1THNQTWlrbzNo?=
 =?utf-8?B?MkcwLzFaRmphUTBVZitNQ0REbUZyMXpKeHg1cm5HckRkNTVjL2pib2tDNUMr?=
 =?utf-8?B?aDA1T3QvU2pMNXkzemc1ZzYrNG4ybk1BRnlSeUVjNXllcmxacmFZQTcvbmhm?=
 =?utf-8?B?Z0N6bCtYQ040YkJhd05paWw3bzhJQlVXc2NLU1hBWTlva0JNQnpRbUpkQ0hp?=
 =?utf-8?B?dzYweUpNTlR6cGFjTDdJZlZCMzAxcEFaaDExU3cvQlo2YWVGYm14K0d1dHFT?=
 =?utf-8?B?Ny8yNjV2QlVEQ2c5YmNHM2dkWDlIUTVQam5tY3dZVHNKbzdOVXFWYjdjT2FV?=
 =?utf-8?B?MUlyMDRZOW1XZzVIZUd2Y2hadld1bk16cGttN2J0M3pBK3gxMkZOWEoxQmNL?=
 =?utf-8?B?bGdQY1B1dHFydVBwR0hWeTROTG4yQ2xGYVphRUF5ejVNWWlCV2FlUjJ6ZTEz?=
 =?utf-8?B?MkVmZThFSkpSN0pQajhCRkFGbFB6YWdLM1dCWkRraFo4RXQrL1k0VzVqUGJW?=
 =?utf-8?B?ZVVUN2VGV0JNYzdrbjY3K1ltS1M2UzhXeGFHdWNBZlBTVkc0S1ZPVHh5R0hK?=
 =?utf-8?B?S3ZrS3RiT2R5MGZhYXhvYVc1NnhTc1JtdDdaZUNIRXdQaG15MXVCc1pIdWc4?=
 =?utf-8?B?RWk3a2lsc1Z0ZUdEYnRHS3U1cmdWRnIwZ0hvSzlOOEdCVWV1NjhwV0J0aW0x?=
 =?utf-8?B?enVUKzlwTHJ4RFNLR1hTU1VaOXZOeU9MbVE1VjdpYUJXOVpFS0s5WnZhSk8z?=
 =?utf-8?B?djlSMGFZSTU3QnNDTWhjeXdsZ093cXRpK3VJbHpEWEd1UDBaNDkxK3ErNEk0?=
 =?utf-8?B?NmU0MWlDMGNFL21saCs3OHNQK1Jhekp5S3F2Rm1WVEtzNXVVUDJEVDBIbmQ3?=
 =?utf-8?B?dUJSQjBuMWNlbkpOazlWcHJRTUkvWEhWc0g0SmRQUVZkMURyQzBDejVSQmVX?=
 =?utf-8?B?M2haYTZCV3NTQlRmcTNHdXJrZ1FGbERxSVlOK24zQXU4cXNBcGswL2ZwdkF0?=
 =?utf-8?B?SW1Ecm1DeHIzOXlIM0RhOUpqTjZUTStGN2lheFh0ZWx1eCtpTFZQd3Q0bzZU?=
 =?utf-8?B?Mnl2ZWc0YVhxMjNtRGptcEFEWjZldGJjZldaTDY4ajFNNG81TWlyOXNIQjRV?=
 =?utf-8?B?L1FqZ3FqbmxZckkrMzgvMWQrRXRVaENnSis1TERzQmczeXZ4b0g2cWtwWnFa?=
 =?utf-8?B?NFdEUkdkS2NWWG9YZXVDVjlpRW1WdUdNT05iQ0JaeStCd3psRVdaemFPYkoy?=
 =?utf-8?B?bGVHbFRsSERxWGE0bXU5amhqdW1oT2FhSEhFbVRrRnhvM1lSa1kyNzBBM1lH?=
 =?utf-8?B?UGJUbHc0N2c2RzVESkNvR25kRXFsaXJXVGllcWR4dm9PTGRyRHptSXh5bDRp?=
 =?utf-8?Q?61NPHdmoKFSMqK2ckb8KdGA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 84bd6f14-3470-4ddc-13d2-08dde4dce2b6
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2025 20:12:30.5377 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vK+oWL6Bm4+Qmpj7XPfV3Pl5NSxU4v5PqocYU24+ADHTLhfto9ZI9YIElLggmWCIiDiik2mi8sAW4k3SUxZ8r39v+MYkSp+Wj/BLcSPn/kM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5023
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756239169; x=1787775169;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yiwBPhZOBKoo5U4Uvsust4AFTQMz0n0L8dbAE1dlq/w=;
 b=WVG/qLIUbpqycBbCzfJu/qZiHEjdcU5EYX2/Y434Xvkz7g6IVDvHCW5o
 vCfNJzBGYy9cJo/huOuIrWW1vHwQmidrR4RHZpP7bNke6Tg2ZvA1Eh3O3
 sIKDwXs4ksKvIGaY9E0kFp6JrJkhtpFKVCtnBCsK1wy8oOc4nFzL0NGTK
 zd4xoZY4irHEDLQcnyn+LQhKNM3zzgHL8xuUu7M//7g2qmVM6J33J3twU
 TdiKv6DHk+5ZWA1aP7fSHbYG0h3P/xTB0Zbszkg1ugNkAjzIhNsaiqdi3
 1Kiy1aAo3xJvOKqJQkJniaFQ9h8ppjk+eeqSJ/FU6GidkgiU9vma8Kc5h
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WVG/qLIU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] idpf: add support for
 IDPF PCI programming interface
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

On 8/26/25 19:28, Pavan Kumar Linga wrote:
> At present IDPF supports only 0x1452 and 0x145C as PF and VF device IDs
> on our current generation hardware. Future hardware exposes a new set of
> device IDs for each generation. To avoid adding a new device ID for each
> generation and to make the driver forward and backward compatible,
> make use of the IDPF PCI programming interface to load the driver.
> 
> Write and read the VF_ARQBAL mailbox register to find if the current
> device is a PF or a VF.
> 
> PCI SIG allocated a new programming interface for the IDPF compliant
> ethernet network controller devices. It can be found at:
> https://members.pcisig.com/wg/PCI-SIG/document/20113
> with the document titled as 'PCI Code and ID Assignment Revision 1.16'
> or any latest revisions.
> 
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf.h        |  1 +
>   drivers/net/ethernet/intel/idpf/idpf_main.c   | 73 ++++++++++++++-----
>   drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 37 ++++++++++
>   3 files changed, 94 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index 19a248d5b124..4b8e944994cb 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -983,6 +983,7 @@ void idpf_mbx_task(struct work_struct *work);
>   void idpf_vc_event_task(struct work_struct *work);
>   void idpf_dev_ops_init(struct idpf_adapter *adapter);
>   void idpf_vf_dev_ops_init(struct idpf_adapter *adapter);
> +int idpf_is_vf_device(struct pci_dev *pdev, u8 *is_vf);

please change it to *bool

>   int idpf_intr_req(struct idpf_adapter *adapter);
>   void idpf_intr_rel(struct idpf_adapter *adapter);
>   u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index 8c46481d2e1f..b161715e1168 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -7,11 +7,57 @@
>   
>   #define DRV_SUMMARY	"Intel(R) Infrastructure Data Path Function Linux Driver"
>   
> +#define IDPF_NETWORK_ETHERNET_PROGIF				0x01
> +#define IDPF_CLASS_NETWORK_ETHERNET_PROGIF			\
> +	(PCI_CLASS_NETWORK_ETHERNET << 8 | IDPF_NETWORK_ETHERNET_PROGIF)
> +

[...]

> @@ -304,6 +342,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   static const struct pci_device_id idpf_pci_tbl[] = {
>   	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_PF)},
>   	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_VF)},
> +	{ PCI_DEVICE_CLASS(IDPF_CLASS_NETWORK_ETHERNET_PROGIF, 0xffffff)},

PCI_ANY or ~0 as last param would be closer to what others use,
in this form it looks like you avoid to be found when someone adds
a new helper for such usage

>   	{ /* Sentinel */ }
>   };
>   MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> index 4cc58c83688c..5bf9d3ccb624 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> @@ -7,6 +7,43 @@
>   
>   #define IDPF_VF_ITR_IDX_SPACING		0x40
>   
> +#define IDPF_VF_TEST_VAL		0xFEED0000
> +
> +/**
> + * idpf_is_vf_device - Helper to find if it is a VF device
> + * @pdev: PCI device information struct
> + * @is_vf: used to update VF device status
> + *
> + * Return: %0 on success, -%errno on failure.
> + */
> +int idpf_is_vf_device(struct pci_dev *pdev, u8 *is_vf)
> +{
> +	struct resource mbx_region;
> +	resource_size_t mbx_start;
> +	void __iomem *mbx_addr;
> +	long len;
> +
> +	resource_set_range(&mbx_region,	VF_BASE, IDPF_VF_MBX_REGION_SZ);
> +
> +	mbx_start = pci_resource_start(pdev, 0) + mbx_region.start;
> +	len = resource_size(&mbx_region);
> +
> +	mbx_addr = ioremap(mbx_start, len);
> +	if (!mbx_addr)
> +		return -EIO;
> +
> +	writel(IDPF_VF_TEST_VAL, mbx_addr + VF_ARQBAL - VF_BASE);
> +
> +	/* Force memory write to complete before reading it back */
> +	wmb();
> +
> +	*is_vf = readl(mbx_addr + VF_ARQBAL - VF_BASE) == IDPF_VF_TEST_VAL;
> +
> +	iounmap(mbx_addr);
> +
> +	return 0;
> +}
> +
>   /**
>    * idpf_vf_ctlq_reg_init - initialize default mailbox registers
>    * @adapter: adapter structure

