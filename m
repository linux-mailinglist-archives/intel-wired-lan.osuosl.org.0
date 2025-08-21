Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBCBB300C3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 19:11:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8738883D7B;
	Thu, 21 Aug 2025 17:11:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5QXXTCbEuJ8J; Thu, 21 Aug 2025 17:11:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F02FD84563
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755796290;
	bh=BBYnutQw18mb5Zs5K2Crs/SE8fJlkAwfTMtHN4pUp0U=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZsKJKjti4nTnUWg0WpK4YNCiqqHrSSeb3BThu+MH+P6CHc5ksQovaOo96udqb1JH4
	 YS5hbQgEc9dmLjTVHqYZwvsiAlSvaUNRD6BNsMRq+48daYbn8LlLglhN0Mv3aRHIUV
	 KbFZJ0PBITJkuW4kLbxgyj86b8YMVaAAwU9IZsCwLHngei+HDdreIPn+poVzn2uGsh
	 QnghDhgALVsHX33oyFOWk0XH77nkR/xXDc9/42D4SUKI/m9QZ5jpZG0SZQ30kTHTa8
	 JT1uTjXhfJCQGpB9OwOlPd6cwYHr2AJJ4c9HTvBKIcqjYUk+OUFyoOgcu7mDQsb78B
	 Nvb2Fk39VVKIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F02FD84563;
	Thu, 21 Aug 2025 17:11:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 13DD91C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 17:11:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 05DDA41440
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 17:11:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7LJzZ7VWJTFw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 17:11:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DD858413BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD858413BA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DD858413BA
 for <intel-wired-lan@osuosl.org>; Thu, 21 Aug 2025 17:11:27 +0000 (UTC)
X-CSE-ConnectionGUID: P1PBbG/iTKuaq0vDiSmbrA==
X-CSE-MsgGUID: 5O1kHpsyT2KfhZou63UwKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="68694686"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="68694686"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 10:11:27 -0700
X-CSE-ConnectionGUID: aLB1ORiLTKCNdLb37htxqA==
X-CSE-MsgGUID: NObqpv/fR+SJytjEvsbOGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="167693431"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 10:11:27 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 10:11:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 21 Aug 2025 10:11:26 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.83)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 10:11:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b7P+ZxXqZb3DGfV4gznhoQfz2M23aFiMSX+X1LEU+OxIn5EtPKtM8N1uJdAmQF+4hxCbgjZ5snCrmHqiMH978Qw8HX7mZF0hqBJx+aVwza+2g0rN2DVOAUlABqu5ZIGTASK/4CzFi/ULbLwN7cx7SyzH067RqutQjV2OlLIvZuv6ZAcgTtxdgTbc8mYwYb+FIXKk7fsn2bm3FClpquT0ZNgREpGAoOwabAkHOwCco+ZNRUrN345vw9n1seNbmEF/EYU9jkshkVxVzmDyjUKD81l0jAHROFFQ5sMLg/NwDZ7DEMyH5biM6W6s85AGOgI/1onVri8xxVNG4siCHc/8ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BBYnutQw18mb5Zs5K2Crs/SE8fJlkAwfTMtHN4pUp0U=;
 b=dfV41uxU6+12rudNM5blLJ3xEtC7YbXB+kY4EECuzHuhG8xdlrHh/rjndlu5ikRL8JRCvBOjMiSOzl1bQcHx/P1jMhyw9Af194zwTKuwRMqLx4HMAcpJusMmnqvgZNDSo5SDRS46DPSjOA3ZNkOWu3YI0TruP/slJBD/qhote/fURTd8ZvoQBBtSfAdae5rcwFaapZhy9xEZjw4uKcZpQQ0B+gvz3Am4kI9fZNcRf/Zx3Rqiz4Hg6ILmXCu1lzBdGRgW0vg8WGUkYEQKca1z7agFRMNbwBoBaeqip9JAKGATFGIerIF0pHo0cctv33DxjUHh4PGe+vlDk1B/rQB5fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by DM4PR11MB6336.namprd11.prod.outlook.com
 (2603:10b6:8:b9::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Thu, 21 Aug
 2025 17:11:18 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e%5]) with mapi id 15.20.8989.017; Thu, 21 Aug 2025
 17:11:18 +0000
Message-ID: <34c06bb7-bb38-49a0-84fd-49a4f6bf0272@intel.com>
Date: Thu, 21 Aug 2025 20:11:14 +0300
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Marek_Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>, Timo Teras <timo.teras@iki.fi>
CC: <intel-wired-lan@osuosl.org>, <en-wei.wu@canonical.com>
References: <20250819124326.3346021-1-vitaly.lifshits@intel.com>
 <20250819201032.3873c62b@onyx.my.domain>
 <876ce7de-dc6e-4e98-9cc6-593cfe8ab73d@intel.com>
 <20250820095708.3e3060fb@onyx.my.domain>
 <5b4b31cd-4de4-46bf-b6e0-2ff3270b7c46@intel.com>
 <20250820162614.43226d39@onyx.my.domain> <aKXS4IVLImmevNv7@mail-itl>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <aKXS4IVLImmevNv7@mail-itl>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TLZP290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::19) To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|DM4PR11MB6336:EE_
X-MS-Office365-Filtering-Correlation-Id: a2064c51-10ae-4445-faa1-08dde0d5be39
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QURocWpNWTBudW5pTzFnM2ZyK1NZdkdQS09TYzNSd0JpU2VYRXUrOEFFZ0M1?=
 =?utf-8?B?VGdON2lQV2ZuRDBTRk9Zc2dtUWJHMGUrVWN2RWNKTmRYZWRSbTB4ZU56S0Z2?=
 =?utf-8?B?Yi9zTkZpbzB0U0hGZEoyUWtIMFJhZ1ZSWFNzRGE5QkJKNWlkc2FOYWxVTXEy?=
 =?utf-8?B?b3YvTzZKdnRGd2tkTFFiZDBiQTdINGQrMnlDaVUrQ3U1eDB2bW5TL0c2Y2Fl?=
 =?utf-8?B?RVowdmVVTytPZ01yNE8yNGxSNk1iTVVVZjJxaUM4aFpBRThBR2QwRndXWWd4?=
 =?utf-8?B?Z0FxTjFOUERkcVNuWkNBa3hDbUJYTnpaL0xyd3hVLzh0SDlvUjE1VklDKzZV?=
 =?utf-8?B?SUtYK3ZNUVg1UzJPdnZ2djV0R0dHUnM1ZStLN0xXTEpxSXoxdm02V2ZhSnZU?=
 =?utf-8?B?cUkxTTNxenp6RW9YRVd6dzdidDVZTGRSZjlwU0NXY0h3UzlnWDA2YjhxTXpL?=
 =?utf-8?B?a1RoWURLcUNGUlJvZ2RidjhFT3RiZ1pOVHU0Wnh1dGVKcTVKcldkS0Q3Sm55?=
 =?utf-8?B?c0N3TlZXNWFrYWtvRkRTNUlRVEdHd2xTZTV6R1d5cGxuYzNqRnNUQzRvWjRo?=
 =?utf-8?B?d0FjTDFTZlJFdVpsMVorZ0lpUVRkRk1sbGljNnZpK2s2UnQxNlE0dVJROFYw?=
 =?utf-8?B?TlBYbVNidGs5K1FhMjY0REVtOUZoazFUdTFwQTBvVFluSmJ0bUZuaDcxaWZO?=
 =?utf-8?B?cXhaVUx0RFNPK2VlaDBYaDFnMmpkc1krbkJOZkZiN2prSEkzVkZJbk4xR05t?=
 =?utf-8?B?UXZqNHlpT0plYS8vVEVsNG9Kdzg1V05HYXMwTUJpVk1BNms5TUJPMUlMcERY?=
 =?utf-8?B?dWs1YmFuZmR2VU1raHJkajlYRkx4ZmZiSnBySmFCVjRqTnRsYy9nMVE2dGpq?=
 =?utf-8?B?ZGpRTGhUcmhhSnFzQVgvQ2FJUFBkWGpJWXljS2xRcDNqOXBTUkVSaStBa0Vk?=
 =?utf-8?B?VnVnVm5kTG1GbTNhMmc0WmdxRkdlaTRZUTZ0VlFySTNQbXZkbnNaaUljelB3?=
 =?utf-8?B?Tk1WQmx1eFdvR09JU1plNnFUbURJaFNBQ1JKZGx2Y3ArRUtFK2VRenltUG83?=
 =?utf-8?B?RkZGODhSdFd3VjZpSmFoVk5MRW5HOTc4VFBlak5QTmIrZUFMTitWVnFnMmpY?=
 =?utf-8?B?UXpDZjBoRzFkZW9KOWxNaHVvVTVlUHpZOWxGVDM4YTg2QXZiWDBFVWVuZEVx?=
 =?utf-8?B?anZET2xFd1l1SHhuRHRrdVpOcTYrYjA0dXlRNHNSQk1KTlRVaUk3Zi82WTBE?=
 =?utf-8?B?TWl6c3I5czZjODVlVS9XUFBUNE1XV1BqS3p3Sk1ZbTdGdE83eVRuY0svK2c5?=
 =?utf-8?B?Mmxyb0FpV25aV0NPV0ljOFZKTWtIOVA1TDdDbXJmMVFxQnZIVUQ5K0VzaE5W?=
 =?utf-8?B?QVVoNWlUMjBEU3FQbnUzeWNDaUplaFJVaDNGQlRhVE9Xc1NqNXZNUHVMWVRp?=
 =?utf-8?B?VmYxaFVjOVJ2aEZBRjEzeHptY3ZJNk5GZHY5OWNZN1U4Vk5PNjhTSVo4SEZ0?=
 =?utf-8?B?bDUyQnQvdjZoSlp1R3Z0dkdLQXRaRk8zU0lJSG5ZL3hWc2x5eGVCNVJGMGt4?=
 =?utf-8?B?ZEhjTjgzZDJhbUhNbjRQNGQwODZBN3U0WXFjckN2VXhOaldxVG5jL2RVV2xv?=
 =?utf-8?B?UjdYaDRudkhkOFVXYnRjMnhOUWdnbEJ3NUR5RnZnTmg0R3VkeGRHNmhkZ0tM?=
 =?utf-8?B?dmg1MTk1SU1HdUhLOVFvSHR6NE1pM0g1dXcxUkdkSTY3TU9jOE00ZGIraysx?=
 =?utf-8?B?Y1Y3KzRNV2d4aVR3L3FTYmowaHUyTk5XRG8zRkY1Qmh4UUQ0cnFjd09TOXd5?=
 =?utf-8?B?ejNBUHpNQVV5ZVRGUTBySWI4RFJkbmNGckJZaWJ2bUh2QThha0hBVjBEaEpr?=
 =?utf-8?Q?ofD/Q2i8s9Y03?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1RnS3VXYXJVVk5Ja1VRWjNwZktmc2hjMEI1VzdJeTRHNGJLRWxWL1htWWRP?=
 =?utf-8?B?QXU1Y055UmJQSDBFMm5VanpRM1hZR0E1OVpleW5YaFZNMkFVcFhzN215dStS?=
 =?utf-8?B?dWhPRWhQM1g0UUpXd0xwZTQyZVlic0hLSVc0SDN4V21jb1d1UVNTOUxIMnZh?=
 =?utf-8?B?c0FKb3RiWlBaTHBaZmJQL0NaTWZQWk1nbllTN1drd1krcThwMjNnZzJtT2Fn?=
 =?utf-8?B?K3pUMW1qMG5lak1zUXI1RXNzNVhLdXdnUWxxNTk3OHRZSmVIVjNVWXc0UkFN?=
 =?utf-8?B?U0FWVVpwdmE2ZzZ6NzJubk9zM0hJRXZXdzlGOXEyb2g2Ymh2U2hwZW03ajBO?=
 =?utf-8?B?VUVVbEFOVndjclM0TytDZzl3Vi9EUlZCcXYxbjR0cVVXNi9YQml5b2VZZmdz?=
 =?utf-8?B?NWhzUzY2VFNxb2luL0RSNHo3RlEraDY5eVNlblQ3N2xwa1V1V0g3L2tvNXVQ?=
 =?utf-8?B?K0VMNHlkUEV2VHZUWlh1VVB5SzZKN000cFloQ29VMnhnclFVNkdhbmdqTHRl?=
 =?utf-8?B?RFhRUkxTeW94Q1oxMUt6MmpENi9zdHJXSm5MQ3FPM1luRXY3Qk5FRWxObUFt?=
 =?utf-8?B?OUVBS3huV1kvblRwL2xzU1I1MUE5MVpvSkJmZENIMEd2Y0wvbVRpY1FqQ3F4?=
 =?utf-8?B?NVFaTWZNZmRUNkZpQXNUdDRmQ2JjUmdwc29CWEJjZ2R2ald2c003cVRhRldk?=
 =?utf-8?B?SDRiWW1IMGg3Z08xZWFPc0MvL3JwbGhldlpoUGtxZEVLaFZ2dmE5QXpwMEZD?=
 =?utf-8?B?djRyRnVyN3VmeGJFdnNpVUFVUUlMcGhoOU1PeERMd3I3ZUE3ODl6V2hWc0ZE?=
 =?utf-8?B?RE1GYmYvckR3WW55elJJMDdHQ2hJZ0FjOVRhbExPVitIUFNoV1d5MEdaUzlv?=
 =?utf-8?B?dE03QVhGVXFmNjd1VEJjUy9BQkI2TFAzdjRPSjczdDJ6U0tjWTQzaDd5SGFx?=
 =?utf-8?B?eElUQTJoS0s4UWZrN3o2Yld2ODlhQUJod2MxWmRBdnlXZER2ZnBVVzU1TWxS?=
 =?utf-8?B?YTB0M1d6VW9Ka0NkWUgwMVlnaWRxYm4rTWU1djFrM1Z4SzA2WitCVHVjUWQx?=
 =?utf-8?B?OVVaRFlnaEFreGsvVEIxVG1aNUlsUE1ZdWdkVUhmc0FQV0VlamRpbDNVcmkz?=
 =?utf-8?B?L3ZJMGkvSzQ4UklUSkxHb25oMkM4clRHUnd1OGQ3ZUt2UmcxUlgvU1QvWmNT?=
 =?utf-8?B?cGJNMTFicDJBWlRjS2lMU0xwMTBxV2NsbElEdCtnU01oQ3ZtOE9aTjdMMHpp?=
 =?utf-8?B?cFdMT0lybjB2ZS9INWRyd2NXR1cvV09CcjdZZXUrK3cwNnZCeHB4RWFWRCs0?=
 =?utf-8?B?U0FFdzVsWms5d0ZLSEFtUXlKUExwaE1jZ3drK3pkdmdlZTNxbzB3NU5JSlpo?=
 =?utf-8?B?cmpGSTNrSUNxU1A5d2EwT1c4dW1MNEhqRGM0UWtBNTNSbTRoQWYrUktCS2tl?=
 =?utf-8?B?Y2gwZnpIMzRIb1E0LytWSkpjVGNXdkxoZHBhcURJbWJvRkh3eDRZd2pBR2Ex?=
 =?utf-8?B?QlpmU3dqRm5sbkdqbytDNm9DR1hxKzNFcjRUeEUwaTZZOHpsUG9vYmxxb1Ex?=
 =?utf-8?B?NnVZRG5CU3FXb0ErQjJtR0syeFczcjR5Z0JkaEtJUExpTUU1aDByMnZkTEZx?=
 =?utf-8?B?QmhNc2VXUVY0TnRoU1QzQmhHRTBNdlVGMXJPb3RNUnhrR0ZXc0dHemowc25Y?=
 =?utf-8?B?SCtWMjNVMHNQUEQrZ3pXSVFtU3JNVHU2RWljNTJUUkw1V3lHdTRNSDhpRE5a?=
 =?utf-8?B?RFdPb214ZHpVMGV4dGxWd1RRS2V6UnUwZjhmdmttMS9Lc25rclFaRi9qSU9p?=
 =?utf-8?B?emR0WEdNNGhBaHBIcUV4SitQMVN0QmlhTDA2N09SbnhPZnNJUmllbzc5cjN4?=
 =?utf-8?B?VlJwR0dWc2ZtMjhqdmtrRk5FSklMT0lhU1RVY1ZkSUhTejNOL1VDczF0Skl6?=
 =?utf-8?B?R2F6L2d3akNyY3dWL0dKSVFIUVNCbGFtVWNCZmdPL0FJejgxdmJyMjRqS2tR?=
 =?utf-8?B?Rno0cnJQSWovcTNSWWt4THlXbEFqTkJHM0g4aWZmSWxhbUUyV0hBVHBtd3ll?=
 =?utf-8?B?NU96bE12T2JaVXUzcGVHdG53RWZXbEFBOWN2TElzenlyVFlmcUppMHdVZzNE?=
 =?utf-8?B?MktlM1Jtcjc5T29xK0sxQ29wNDExMGJEZ2VvTzdYc0h0MHNCeGxpRUtmdGdo?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2064c51-10ae-4445-faa1-08dde0d5be39
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2025 17:11:18.3997 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 81YNJcuTJ0LnVjzt295M1DWu5ZNRxWs9v13ZNJHg0xyV3lCtVbZJ+QjqdyTJG52pYNeXycP5RekcWruWMjIz3hOF/QmK76ifmMME93DeRKA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6336
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755796288; x=1787332288;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+lUVlq9UC42rovUBpInUX1L5Bz33QjA/CPgPeQSTqY8=;
 b=SxOvfJGAFActOF6Ng/79xJsilJJvh9Bxo8UI+QNTp0wegBvOrk/e9uQN
 n9CGTKz5TsK7S42IXjiSMTEqMJB2fCIZCpdAlngr1qVbLejLqAkm88uyx
 w93b6j2TD00+qhg0M/DMEuFadI1G64A42rPTO/3UJINReGjj+SyAHkrMN
 MBtQO9E+ZQVcdj6WYntN2FHJoUk8dRj4EHn0MH0+xQgu6ngCf88JHxtT9
 cy2EDednuZCQVG+CPCSD6+maWj8/vpWZU1SyDyV5TC1e22VDKT82hWqCJ
 GKk3loGL+MJG0zeqA5oIUUVGUW0Ewgu4Y/EvyVghbzXliN8JH9NkjVWdm
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SxOvfJGA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Introduce
 private flag to disable K1
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



On 8/20/2025 4:51 PM, Marek Marczykowski-Górecki wrote:
> On Wed, Aug 20, 2025 at 04:26:14PM +0300, Timo Teras wrote:
>> On Wed, 20 Aug 2025 15:38:12 +0300
>> "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
>>
>>> On 8/20/2025 9:57 AM, Timo Teras wrote:
>>>
>>>>>>
>>>>>> Thanks for adding this!
>>>>>>
>>>>>> However, as a user, I find it inconvenient if the default setting
>>>>>> results in a subtly broken system on a device I just from a store.
>>>>>>
>>>>>> Since this affects devices from multiple large vendors, would it
>>>>>> be possible to add some kind of quirk mechanism to automatically
>>>>>> enable this on known "bad" systems. Perhaps something based on
>>>>>> the DMI or other system specific information. Could something
>>>>>> like this be implemented?
>>>>>>
>>>>>> At least in my use case I have multiple e1000e using laptops on
>>>>>> the same link partner working, and only one broken device for
>>>>>> which I reported this issue. So at least on my experience the
>>>>>> issue relates to specific system primarily (perhaps also
>>>>>> requiring a specific link partner for the issue to show up).
>>>>>
>>>>> Unfortunately, there is no visible configuration that allows the
>>>>> driver to reliably identify problematic systems.
>>>>> If in the future we find such data, then we can improve the
>>>>> workaround and make it automatic.
>>>>>
>>>>> At present, the user-controlled interface is the best we have.
>>>>
>>>> Could you look at:
>>>>    - drivers/hid/i2c-hid/i2c-hid-dmi-quirks.c
>>>>    - drivers/soundwire/dmi-quirks.c
>>>>
>>>> These use dmi_first_match() to match the DMI information of the
>>>> system and then apply quirks based on the matching per-system data.
>>>>
>>>> Having similar mechanism in e1000e should be possible, right?
>>>>
>>>> I am happy to provide the needed DMI information from my system if
>>>> this works out.
>>>>
>>>> Timo
>>>
>>> Hi Timo,
>>>
>>> At the moment, we have no clear knowledge as to which systems may be
>>> affected, and what common characteristics they share.
>>> We are working with vendors to try to narrow it down.
>>> You are most welcome to share DMI information from your system. It
>>> can help with further investigation.
>>>
>>> However, maintaining a DMI quirk for every single system for which an
>>> issue has been reported is not feasible. Trying to deduce a pattern
>>> from a handful of data points can lead to it being too broad or too
>>> narrow. Furthermore, it may set up expectations of updating the quirk
>>> every time another user comes and says 'your default setting does not
>>> work for me'. This can quickly escalate out of control, and generally
>>> seems like the wrong approach.
>>>
>>> Ultimately, vendors are best positioned to manage this, as they know
>>> which of their systems require this parameter. If a list were to be
>>> maintained, I’d suggest something similar to what Mario proposed for
>>> Dell platforms a few years ago for a different issue:
>>> https://patchwork.ozlabs.org/project/netdev/patch/20201202161748.128938-4-mario.limonciello@dell.com/
>>>
>>> For now, I prefer not to delay the current patch, acknowledging that
>>> finding a better solution may take time.
>>
>> Thank you for the continued investigation on the issue!
>>
>> But I find this commit to not fix the reported regression. Nothing
>> changes without additional admin/user changes. Things used to work and
>> the added/modified K1 support thing is causing a regression.
>>
>> Ubuntu has already reverted the offending patch due to complaints in
>> some flavors:
>>   https://patchwork.ozlabs.org/project/ubuntu-kernel/patch/20250805071341.41797-2-en-wei.wu@canonical.com/
>>   https://bugs.launchpad.net/bugs/2115393
>>   https://www.mail-archive.com/kernel-packages@lists.launchpad.net/msg551129.html
> 
> Qubes OS also has this change reverted in default kernel, for the same
> reason:
> https://github.com/QubesOS/qubes-issues/issues/9896
> https://github.com/QubesOS/qubes-linux-kernel/commit/4fb8c96dd7bd73dda00a89d026b6ebefff939a67
> 
> We've got several reports of the regression caused by the "e1000e:
> change k1 configuration on MTP and later platforms", and _none_
> complains after reverting it. And we do have many users on MTL or newer.
> 
>> This is what I ended up also doing as it reliably fixes things on every
>> model I have, and has not caused any of them to have any other issues
>> (including packet loss).
>>
>> At least mainstream Dell Pro and HP Zbook laptops have been reported to
>> be broken. See:
>>   https://lists.openwall.net/netdev/2025/07/01/57
>>   https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250623/048860.html
>>
>> This seems to be the same issue:
>>   https://bugzilla.kernel.org/show_bug.cgi?id=218642
>>
>> So some questions at this point:
>>
>> If the added K1 configuration does not work and causes regressions,
>> could it be reverted and added back when a k1 configuration change that
>> can determine the affected systems is ready?
>>
>> Could you explain the commit "e1000e: change k1 configuration on MTP
>> and later platforms" more? What does it fix? My understanding it is
>> "minor packet loss that may affect some machines"?
>>
>> How many machines / what kind of scenario is affected? Is it fixing a
>> more serious issue than the regression it is causing?
>> The regression is completely defunct ethernet after unplugging cable.
>>
>> My understanding is that the K1 change affects only power consumption.
>> Is this right? How much is the consumption difference? Would it rather
>> make sense to disable K1 by default on the potentially affected mac/phy
>> versions until a good common denominator is found?
> 
> Given the severity of the regression, I'd suggest something like the
> above. Have functional configuration by default, and have an option to
> potentially improve power consumption. Once criteria when it can be
> safely enabled by default are figured out, then it's fine to apply the
> improvement by default. But I'd rather have users with functional
> ethernet, than slight power (or performance?) improvement at the cost of
> completely breaking it for others...
> 
>> On the other hand, do you think that asking to have a list of the few
>> currently known affected machines (until a simpler common denominator
>> can be found) too unreasonable? If the list seems to grow much, it
>> would be an indication that the default setting is wrong and changing
>> the defaults might be a good idea.
> 
> Let me know what info you'd need for such list.
> 


Hi,

Thanks for your input — I think your points are valid.

As I mentioned earlier, fully reverting the patch "e1000e: change K1 
configuration on MTP and later platforms" is not advisable.
In addition to a possibility of packet corruption, it also increases the 
risk of PHY access failures, which can lead to the driver sporadically 
failing probe() or resume() flows.

However, surveying the breadth of the systems suffering regressions with 
this patch, it seems that indeed a safer approach is to have the 
"disable K1" flag default as TRUE for the MTP and later.

This approach ensures:
No impact on legacy platforms.
Affected platforms will be protected both from the PHY access failures 
resolved by the previous patch as well as the packet loss issues 
introduced by it, only at the cost of a somewhat increased power 
consumption.

I will send a V2 with this change.
