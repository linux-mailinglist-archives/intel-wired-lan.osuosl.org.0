Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E997A40F2E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Feb 2025 15:08:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8DD680E2E;
	Sun, 23 Feb 2025 14:08:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h2ZkdC4p4WV8; Sun, 23 Feb 2025 14:08:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07B1180DC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740319696;
	bh=JwFURJqJgpJMdJ1OC/9/q0T6cfpmZPUkocn5lDhu9F0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v2zC0ZeCHgXj3cuiWBEPP2SRfCVAAoBQn2mcpU5kH8Eu6RikJ+DKBSB1LfP+ueCJg
	 nPDCfsy7DovGpyREPQgaFz6bkOFi1XLW6behhzerdTj7uk9dIlcor+QZY4azDh90Xq
	 btRbHosOLYryzRVUoumTeAaVljmuGuaTgc/OtEFk3qjMrZ+lZp5ho6KBWE2wrCV7fV
	 HiO2v7VjtEIog1LCwxPWtKL28NNI79fFpaCU9wEHCSL6flH9lBj980MeMsTGP+7dqh
	 XFHeA2fKlzKers18VXK1vqJBynJYsIXLvuKnGwaM9TvXTvaRaQriFAn9otpDM4DeLr
	 82uCeP8Sk5vpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07B1180DC0;
	Sun, 23 Feb 2025 14:08:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A0BE3943
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2025 14:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C540400BD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Feb 2025 14:08:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S4eKtD-eoUdt for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Feb 2025 14:08:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7F08640168
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F08640168
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F08640168
 for <intel-wired-lan@osuosl.org>; Sun, 23 Feb 2025 14:08:13 +0000 (UTC)
X-CSE-ConnectionGUID: hGs8791qQLuMyO/josPUTA==
X-CSE-MsgGUID: bStJfcGZRDaKOuiqhKEaEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="44863073"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="44863073"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 06:08:12 -0800
X-CSE-ConnectionGUID: yjqmKiE5QlennyYqg+TApA==
X-CSE-MsgGUID: oP40kbwfRZO8J6IOH8W35Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116338659"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Feb 2025 06:08:12 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 23 Feb 2025 06:08:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 23 Feb 2025 06:08:11 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 23 Feb 2025 06:08:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zWnR1H8fLhELpGbTGuW/GEDolJtdTLc51Y4yZ4pOxylBhKvnMKnAe0f2g6ynrRwgbdMcZj/hnt+E/9o+6xtD48Re7g+XQwDHYP3grzpO0+2ndQ3IqaKHVaXX+DiLP3EIKcH1pkeUW7d0hELoiz1rNWJcFcarj6ZCm6DknBmzjlA7KEHOs6f+IbOVrnmAQSZsr9FNJwOG+YMY8Ln5MynsTeIJh4P68Ad6zJmmfH5vR3kV1cAA8NOSa+7ytH44adWoOOMqOp9fLsZK41YPp/A+E2MDcwS3XDzQ31RTa4y3F4tIKfqPvpIWKc3L2Mywj7Rq9EXSJ1+BJ+JH/ft4QJHJhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JwFURJqJgpJMdJ1OC/9/q0T6cfpmZPUkocn5lDhu9F0=;
 b=vgIujViCilpIdG0ZaJ9p5yaKWkOUN3Gwwb6BMLqkwFLnE37mDaza16ZfMbgPQVWnV9hTrAQYRsNiTSNXtK4fKIuH1gNxPyCqWrMKgIPxE7FBCKXwtFuNLKQM7LGaqZAbPHZrf1iW55/5IV+fVBW3wDfOy/ij1J9N8xKHZdv/btbL2TKM3bEVkvL5q/QO47yMCReD4OW86b2SAhCXXB4dwmkUCngtGtycMHdyjGIe9mlgQXkzJsLgE7Nevqh9/2SC6mSkcvwwozgdNWWd23NBz4qJ7OdfRZW3QpmcfZZw/Q24ZQIqLIn0D6J8wlNCPUWlABbUcupfDmGCl+aVpIs5Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by MW5PR11MB5788.namprd11.prod.outlook.com (2603:10b6:303:198::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.19; Sun, 23 Feb
 2025 14:07:34 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%6]) with mapi id 15.20.8466.016; Sun, 23 Feb 2025
 14:07:34 +0000
Message-ID: <65b268eb-6df4-4c6c-ad88-4068933dec3a@intel.com>
Date: Sun, 23 Feb 2025 16:07:34 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Kusiak <mateusz.kusiak@3mdeb.com>, <intel-wired-lan@osuosl.org>
CC: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
References: <9238ba37-583e-4a65-be27-0473cd682bf1@3mdeb.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <9238ba37-583e-4a65-be27-0473cd682bf1@3mdeb.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0013.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::7)
 To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|MW5PR11MB5788:EE_
X-MS-Office365-Filtering-Correlation-Id: b671a5b6-e14a-4c24-08aa-08dd54136b21
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TWtNMlNpeUk1SW1NQzE1RndpcldNem91ZHJJVU1xeksvdXgwdXhwUUgramdr?=
 =?utf-8?B?Y0lySTBGcUJEMW11NTc2dUpZbjd3NmNLcG9zdlZSZ1diSGE4QkxMM2xBWTNn?=
 =?utf-8?B?QW1WQm5VcHc3K2lWUXBpK0R5OVE5a2hvenh1QkFkRGVOZWpUM3Qrd1VIVG93?=
 =?utf-8?B?cHVnR2VQSU9mRis4K21ySk5DbVRWYzZNUFBKZ1VMMzN3VzcrT0RyOS8rVkw3?=
 =?utf-8?B?bGNmY3ZpSVU5MDlkeHYxL2V1QXRuNTdMdXJkblpIRWlycnM0OGhuWkR2dEFu?=
 =?utf-8?B?V2NxS1dLWVJCYUhxM1JucnFxOFY0TWFKVlcweCtPdFBwdzVLd1R6clRwMk9k?=
 =?utf-8?B?K0MwMklKZXhCc0J3TzhsMHN1WHdKWjRUb1RxaDI0VnUwMjIvYUdvbnRyc1dE?=
 =?utf-8?B?dDFFc3YzUlRVVEN6MXN3UU1YSGphQjVLeWwrRU8wMzl1Z1FYWi9vbVlyekht?=
 =?utf-8?B?ME84eTdxQngxSDNpamRmSDV4UzhmMThGbmhQeUg1UzZZRG1OWjgwUHpzUUsv?=
 =?utf-8?B?N2VvWkpJR2M3TmF1ekxuajh1N2FRek9rRHQ4SnBYdndCVXZPdXpEVSthaFY3?=
 =?utf-8?B?SUQvd3JVZ1F6MUxjaE1mekFyMFV6QkEySC9WSmk4OXJSeHRjQmhlY1pyT0Zp?=
 =?utf-8?B?S0ZRRVcwUFREQjcyWXVnRHMwTDhWYUZ4Q1JPajJZU1dxVDJVbVZsalNuaXlq?=
 =?utf-8?B?RW1iMVJ6M3NTb2hqcFdLdHh0bHYrODBYQkJyck5VLzR2RkNjMFNxZWNwaUtr?=
 =?utf-8?B?a0pwWVVGTzBHV3prcVFWYnlYakxwd0NoMWtUQzlrd1E2bzMrMG1jV2YrSVNy?=
 =?utf-8?B?RnZ3TU1XVFN2STA4NWJmbWExZXJiTVltUEZrZ3dDZHYwT2k1MmQvckcwUUc4?=
 =?utf-8?B?ZDcxWm50Q1hqTHpEcmkwaGdXSUZXZVpnbi9UNkFnRDRnallVdlE3SUs4dSt4?=
 =?utf-8?B?M3JyVW5JYjlZaDYrUFdnUHdVZkRoUTlXcTBXYW9GN2c1R1hnVFdUdkUxU1B5?=
 =?utf-8?B?RSt1ZnFCdnowc2RFVVZXeEY0Q1lkTjBhUHdDbjRUNG93eUlTSWROWkdONWJU?=
 =?utf-8?B?YmEwUUJFYnh4SVlicy93MVBBOWQ2YnJoaEc5aVJBMkQ3d3VSVkIwbnBhejdO?=
 =?utf-8?B?UFJHVXNhYWNkbU9VUFBMMzJFeVJYbFovUjNjb0ZOWHV1amhPTlZ1RzVTQ2JB?=
 =?utf-8?B?dC95Ty96c1B4bGZyWGpsWGhYVU4vcC9JYmNJUjQxNnE4RnBEQlZXK0NKK2xD?=
 =?utf-8?B?Q1Rnb01URjJNUXVhS1p1N2ZYK1E2dkx5cjM0OTVaMStTUm1CQk4wOGxOZGlj?=
 =?utf-8?B?eld1ZWp1ZWNKdU9nOEZBV0RqeWkxeG9qazhWZTkzRytLQnVsdVdNSHMyQm51?=
 =?utf-8?B?S2U5OGlqV2hpaUNBRzlUNzloRHV0VXJLeDRHNHUzV3ZMckxhSW5PQjRwYVdj?=
 =?utf-8?B?R1c5bEJUM3QwZU9vVlZyUVV1ZUJzaUpVNUl2cHRCbmhTYjljVXdqOUZFRG1t?=
 =?utf-8?B?dnJPMzFlKzhCd2toRWhPb2hKOWhYNEFXL2tKanhYZmJKMXVtR3U2ajFhbUk4?=
 =?utf-8?B?VXJWOEcxU0xjN3B3TjM1eGtvRThIOWFMUzNVVkFlQUlIdjFvU2tvVFJLSVh5?=
 =?utf-8?B?TmVRRG8zai92Q1krK2JFVk1pNlhVUGd2RXFUTFkwSDNmMDFqQ2p6ZnBDMGpS?=
 =?utf-8?B?SDU2YmVvU25yWHhHOU5GYW1lZG1XeUpyb3ljV2svLzVqQzhoUi8wa2xaTVNX?=
 =?utf-8?B?VFdFNnlSSVIyc1RUZW5JUmFwOGh0RXZrSTdPUEJoaE9mWUpkWWFFSytaMUNn?=
 =?utf-8?B?T0NlVTRuQlhQdUVxemh6UnJxUzgwL3dlQlZUcHZLYUJ3Sm01ZStNbkh4NVps?=
 =?utf-8?Q?QDTtB/9NCFYyK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUlNMUE2Qjdud0RnWFR6aU1MS29Kcjg0Wk9xOU5GWEpxT1FLK3Bkem5kdDJx?=
 =?utf-8?B?OTVZd3ZLdTBPd3J4NWhzODdrbTdIT21mMXFNTG51T3drZE9mU3V2SEsyMHdG?=
 =?utf-8?B?emxqL2V2NFJSTVhHOCtFdE03a3ZuTHYySUQzM1EyUlJOYXI1UHhxeXBBcnI3?=
 =?utf-8?B?VlZkN2ZsZmc2ZWxPOTFvd2RSdHJycUIwL0Y0VzJyRWpRRHM3THl4UWxSTDdh?=
 =?utf-8?B?SjFMQzZHYmpQUWx2OHJ4bFpjRnpVcHVvSHI3TWtGU1BPYktMNjRLKzZTTXIv?=
 =?utf-8?B?Wm5NRU90TnJTM0tZU1hyRzh3TEptRDdBOUNHdmtnb1hBUWJEM0hSZ2xqRkI2?=
 =?utf-8?B?eTB2VDVNdytoelRTTzNWWmdsYnBoL2hYcWxQUlE1endHV1RUOTNqUGRFWlFy?=
 =?utf-8?B?U2xSMGJXRC92aHNEYXowK3FlejNhWmFXTDlKVS82dm8wT3JaQXlrdmxzVGUz?=
 =?utf-8?B?cjJlSUVyTC9LZXUza1RBR1AxSmlyb1BGZkFxS0FQZk1rbG9vL1ZXbFVtbUlw?=
 =?utf-8?B?eGZLVG1DR1BtaUIrTUpwUlR2Mi9QVENEZkpQd09JN2MyV2oraWlSTmRDOEYy?=
 =?utf-8?B?VXZGb0hoYWtUY0JYMWxINjZiOGMzVmxwRGJVRHNuM3FPVlRSLzR1MGhDL3Jk?=
 =?utf-8?B?a3J6VFRoZ2tPWGk1OVZ4NUhzdUtXR3JCdWtaN2xubUllNE1yUy9hNVZjRzhI?=
 =?utf-8?B?RmY3VnVXcGNKcWpNTWs0eGU3ZXdWOGZXTDRZdlhib25rUjRYMGJRaGc1dUdO?=
 =?utf-8?B?NE1CRWpva2ttV09FVS9aRWxLcjU0UFg2UzdlVnozRTBhWE9zdTFmS0VaQlkr?=
 =?utf-8?B?MG51WEVwaTNhR21vV2RFTWFsVlgyNi90dnR4UGF3dUl2aDhoWWh4d0xCdTVa?=
 =?utf-8?B?MVFmdFdKYkg1Ym9jcmpJUHZyRVpiSVZuN21SaUpDSEpoU0NVdkNTYUNoNWNU?=
 =?utf-8?B?SnVTYVVLc1FBbVRaSG1iLzRPT3pDaFNtYjRDMWlrS1g0QVRkMzNSNmJjMkx2?=
 =?utf-8?B?VTBxc25CemlJRjJ0dDBWL3czdzVrMldVTGJSWUNMWUE0YjhsQlhRSU55dlNa?=
 =?utf-8?B?VnJDWTA0ZnIxUG8xcENjZGZ2ZytLcWNnditRd1RoSXBXQ1dDUVE1bklERG9I?=
 =?utf-8?B?dUVRVlFpRCtFdUtpZUo3SDAwbk02N3k2OFlNalo2aWxadHRUMjBGYnJQRXJG?=
 =?utf-8?B?U05XeGdiVmhEMTM1TWpocUZ2TEhqWlUrSmhtSTl2d3lRS0pJbFBJV2lyQUVS?=
 =?utf-8?B?MmhEL1lNUTVYRlhEeWh1MlNJWHBaeThLSmRJZ3o4QVJ2SDhuMGJoQlRuakxj?=
 =?utf-8?B?MEd0U01Ob0N2YzEreWs5MG51R3BVdVczaWl2a2JOR2MxVTdJMHZReWhYNVVP?=
 =?utf-8?B?WjJLQTVUYUlObjZ2VDJmVmszODRRZEUxQlAvL3RLcmFHdTh2NHN5Z3NoWGl0?=
 =?utf-8?B?dFd3dFpDMTlLTWFQc1Q3N1ZRRkYwYlJycnpQZGkyMkxOQXpQSFZCL3l1YktL?=
 =?utf-8?B?VEF2bUlha0NDTmpJUDFRNUtWQ3BmeWxqTmJwOEk5bzVNSEVydHdzcCsvZi9I?=
 =?utf-8?B?R1lsd0tJa2EzTzE0eWpsZmZJc3lSVHUya3IyQURzdzBqN1RBRy9WSktrTnZz?=
 =?utf-8?B?TnlUVFMxTWpmRmhFRnpOck9xL1ZOTFBVY2tCbzc3bzVQbm1ITUQ5d3A4YWkx?=
 =?utf-8?B?Y0x4RHpyV0sxN2xKalJ2SkRiUG5neGxLdG1VZkgwWi9hWUxkZk1GeE8zanBi?=
 =?utf-8?B?QzdDbjMxbW5qai8wYXpFNVRtRjAxVWhCNXkrSFdzVWFGSmJkakhvWkxJZjA2?=
 =?utf-8?B?NW50N1dUVngxUktKOVFsU0F3a0RibjNybGJzN1BDU2JkejdtY1ZkUEtBd0Iv?=
 =?utf-8?B?VnNPWllVYlJSSWkzaVlsSHpPbUZHRWFQOG5YK0F2Zjdpc0tXM3IwbGM2bkln?=
 =?utf-8?B?OWc3T1FNU3laL3A0TWg4dUE5US80VlNIanVvMWJSSFdjNTg5R3pITW12WDBj?=
 =?utf-8?B?a3g5NWMvN2ZhbWVpOHBXbzBUdVJZUGIrWUJjSHU0V0lqNzh4TGNJQ29CZlNJ?=
 =?utf-8?B?ejM5aFY0N1FQS3QzZ2FQVFpSMFRiSExDWkZzcE9CK0ZxQ0tJSURYOWpxMG94?=
 =?utf-8?B?dDJaUkFtWndDRFE2VWFGUW5jRTgrL3BMOGpGNGJFTWpFU3hyeDNGTXdES0FL?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b671a5b6-e14a-4c24-08aa-08dd54136b21
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2025 14:07:33.9365 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AaOQ8L/tuZnpF7szr53i0e64nSy8OmAzCZRRfJ6rY0DexkPI+arhPvXqJcC90D7RdBJ5zU9LBIzgPSO8M99lIOo7jt9ZEcywvhM02egfZfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5788
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740319693; x=1771855693;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1Ox4AROb9jHiHgb9HY05VjdG6VTGZBPJFGrO1FD61s0=;
 b=kN49TSTs+hiFpO9twHYisbaNnHj1oBHW6iUQilY+6yru1ZxTt6peuGTq
 DroBL09rHrYgR10zrZRTJvLS7vG+IX80j4wko3PcCNGzQZ4MvAqSsod1p
 l/bvlwY9t5xiP6i3tkszM9vUB3CbCrR9wOHdMkQauSeaE/md3PtTpElnX
 a+7woDzLiTGVS1YlWRfd1aUYMw1GWJ6P1bHISaw87q0ZBsW5HypZfy7Yz
 29U6LYD1sVfxbQLqQEmno2zSfkzkkJajYTfBn/EsaSg2Uap//F7pIsghp
 XaRhc5T1YCED1tSi6ZLTJS9/5N4k1bZ4VT3QJYdQu/LJ0cPWjqryPDpF8
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kN49TSTs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] igc: forcing speed configuration (no
 auto-neg) on I255
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



On 2/19/2025 1:14 PM, Mateusz Kusiak wrote:
> Hi all,
> I've done research regarding igc driver and I225 ethernet controller. I 
> established that neither igc driver nor hardware (I255) support forced 
> speed configuration (disabling auto-negotiation to be exact). Could 
> anybody please confirm this?
> Is there a known, particular reason for it?
> 
> Thanks,
> Mateusz
> 

Hi Mateusz,

Yes, you are correct forced speed is not supported in the igc driver nor 
was it enabled in the hardware. You can refer to the following commit:
ade6fded7957("igc: remove autoneg parameter from igc_mac_info")
