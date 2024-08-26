Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FB195ECE0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 11:16:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C883640249;
	Mon, 26 Aug 2024 09:16:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tO6mzwNCD05U; Mon, 26 Aug 2024 09:16:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E1FA402EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724663777;
	bh=/C35H0sqLNMwp/73Y0hqOoi8YZVczUFp/MyYi6Suojw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eSc92mkp6zGA011bj+obVbL9Fk/UBHt5lmYjCkM1sn9MfW3mI3rl+bamx7+sUAZs1
	 61g/Nk5LAmi4PM3T0XBrI09hPdB85qh+L9OKo6aqHx5eoaM5qlEM5omI5EZJQ3m7jD
	 74JZiWzQvsHQ8YmwKLFe9I8E6j3Ut/I9OEH6VpK+LuAmFxc6tFOcP1zvP0h8vPhrYw
	 /i8vhVBfc1gGhF0EDYQwD/Cm9tf5nIXxuwxwQTpspefKME3m7ctKD2NbshICFfq8yy
	 IhBXeucoUjV8hOwXYULE9nsTntNdaxzc75+h5yL8DUn10WTeft9ESpw1UNgomm34Jq
	 Q23o9Thf/0Mrw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E1FA402EA;
	Mon, 26 Aug 2024 09:16:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 374561BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 09:16:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2536960706
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 09:16:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SHVo-Cmat71n for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 09:16:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4062560703
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4062560703
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4062560703
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 09:16:13 +0000 (UTC)
X-CSE-ConnectionGUID: 047EbBXfSfC+pKbuKXLXxQ==
X-CSE-MsgGUID: ZJYDO4QgTtW8gGOf9IU++Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="23045327"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23045327"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 02:16:12 -0700
X-CSE-ConnectionGUID: VHnTI5JNRAWsgKqojhUo7w==
X-CSE-MsgGUID: vc8OZQkHR/eWkWPI7oisdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="62419320"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 02:16:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 02:16:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 02:16:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 02:16:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cXksSkg1YP9sTc8WQG060biBiy1zRXspQgySIns0DQ5ynJIIu2h/3E4tc/6aqAYL/LyVIAAPSj1LRz5aSikomtQd0DeWueiIYhRc3UKnz9TaARkuCt/zoQrnC2iQhF5D1jnuAlAScbbr5AGNblCG/9eLksfIgklVkiYh9k9xYLLX5K0BpKVAMcSwnRihdOpq5yNNYwXx4ZKpYMkO3kaqophqD8gZmDmDjX8FIG5z12nJ83z3SDKTGhmcW4iJsSIDlulOIqc8nHT2Jw/rHcsB970x6PfKuEySh7AituHFexuXKG1gMuZb2Vk/HRO5iEoc0+A4H+366j1x5LFEV6TPVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/C35H0sqLNMwp/73Y0hqOoi8YZVczUFp/MyYi6Suojw=;
 b=LpsrtoPe1O46iPcB7we6mANWfA5SN7qxSR8VzFPPT7N/bwhzPUmvMFYs7xga9CdvqsUnqMAE9rV4xuiOmXaIwast/kepJos7b+L6nza1YpvX8Nt0MCb7lBog3llUnHAccM+RiYX+Jd5ZQLBe387NR47C5Ep2L7IyXX7RfCb73S5vhv/p7NZmD2TASG7aI1MI8JvXkYKY/KxF46lBy5GXgvysMNHCYbTUkSsvcIrBhqhlN3g420KrZjUpMX1Ur/icUclrpMbZZUZd30nbkrCWQ2YgoEo4rTuxMViS4hAvhdbIQcra9kCgy40XZ8jgq+TVVgBzAqOya652qy4Q9AeDXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ2PR11MB7597.namprd11.prod.outlook.com (2603:10b6:a03:4c6::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Mon, 26 Aug
 2024 09:16:08 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.7897.021; Mon, 26 Aug 2024
 09:16:08 +0000
Message-ID: <2896a4b2-2297-44cd-b4c7-a4d320298740@intel.com>
Date: Mon, 26 Aug 2024 11:15:47 +0200
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>, Christophe JAILLET
 <christophe.jaillet@wanadoo.fr>
References: <fa4f19064be084d5e740e625dcf05805c0d71ad0.1724394169.git.christophe.jaillet@wanadoo.fr>
 <c786a345-9ec4-4e41-8e69-506239db291c@stanley.mountain>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <c786a345-9ec4-4e41-8e69-506239db291c@stanley.mountain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0072.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:26::13) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ2PR11MB7597:EE_
X-MS-Office365-Filtering-Correlation-Id: 65dd490b-6356-4e1d-b12d-08dcc5afb177
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UUU2MTBqaEJBV3lrWnp3MHBjdXZ3cStDT3psTVE0T3JKUXFNWSt2ekxYL3VO?=
 =?utf-8?B?QUQydHlhSnRudFpoWlVtbCtXTjQwTTRFSm55REh3L0xIa2ROT3cvYWU3cjFJ?=
 =?utf-8?B?NmZvd2RPZDB6eE1PTGljVzUwc2VtRmd1MXVoUlNLb1Z5OXlPR3JHVVJXZzJw?=
 =?utf-8?B?amNWTDNWSEJLOTVLbVJsS2QyeGNxbXdnUmxJUnBDaFlueVI1cXh0b1hKcFJh?=
 =?utf-8?B?ZFd0Rnh5U1NvSldhNFNNTXFXTFc1QVdycm9VM0N3TVZ4ZGNIeGc0dWhEaTUv?=
 =?utf-8?B?Q2pFNFRNLzVwNVQrck8zZ1gydnNiQTMxV3J5U0kzSkt2cCt6VU9zdnpPdlRi?=
 =?utf-8?B?Y3gxaDQ3SXoxQVpYUTFxTldqMGM4eWY0d3U0TlViUUswNWk2SFZxMEdmU28w?=
 =?utf-8?B?RFRGaHMvQk9DdUNXSktxQ2lpbTE1WWhhOFExMFRFTTlITzY5cEYzQlIzamdQ?=
 =?utf-8?B?OFJWWTBQdWFOUnJsS1BjUEJvdVcxMk5vY05UYUxsZm1YN2ZDQlg1UmRZcXUx?=
 =?utf-8?B?bHU3NFp4RGxLNHVFdjVMY0oxWCt5dnNXQWVyUGVnK2t0cmJGdU0wL3lwQm50?=
 =?utf-8?B?VW1lQU1Xd3R1RzN6a095UjF2N1ZFcG13VHRDemZZR0FkZjNtZjJpSkFHaUpl?=
 =?utf-8?B?RkxtMHg1V0VSQ0x2TlVxdVovSk40SHd3NHc2a2dKNU1SUm5BZVhsSlhaTWFI?=
 =?utf-8?B?d1BXMHgvMUNYVHN5S0lvR1BqTXBkNWRvRlY2aFFzM1RiL3Jzby9jQ0pXdGNK?=
 =?utf-8?B?TjlYQ3FMMnBTM0NmMmhOdEFKa21LVCtNcDJ3eXR6cmc3eVYyNkxlSjJwZC9r?=
 =?utf-8?B?RDB6RnpwQVBCZ2o5ZFFJZ3FLdmtidzBrWGh0UCtreXQ4ZUVsNVNSSHRlYUJZ?=
 =?utf-8?B?aWFMVmlURVg3TGNrc08zNE9OUndhOTkwS3lTQS93Tm5RNnRaS1libW1vSnkz?=
 =?utf-8?B?T3hPQVIyYkFmK3dVMXJnd2F3SFZvMjlvRDBqcFJUYXpObTZsU2R4UytwdTMz?=
 =?utf-8?B?NFYwdGY1QnEzcUhFeUFZOG1BeUJkTFZiUGE0aDlLbDRtakFpRU5ocHB3ZWZi?=
 =?utf-8?B?OStWVGRsMk5aZ1o5K3hJYXI5QVNSUWNzQk1HNEt3OGJNTm0yYzFGK1VoTHpK?=
 =?utf-8?B?NDE1YldHZTV2VkFxKzhodnVmRXpBYk9UQW0wbWVwaU16eXNSVm1JM2Y3b0tE?=
 =?utf-8?B?U2hsaEk2MS96dGhCVGZiT3VuOUtub0FNbUVSVzF3UFhYR3J6QWdzbk9yQU5F?=
 =?utf-8?B?RnRwa09XYnRFa2k2WTltNnMwWXhoYzlSby9Ja3ZtZnJjeXpkY0VBemJWMnpC?=
 =?utf-8?B?TTJ0aElvdmxTUEZNcDQrcm1JTERMSlhKcVJtYzJrRGRGNXpXclhVNDV0bFR1?=
 =?utf-8?B?V0JKMzVaWnZwblBNOTVFcHpSUERmQXY0UWprZHVCUEZKd2dhRGJpcjlrejNC?=
 =?utf-8?B?azdxSlVHUVZaZWJDMzhvbnhEbXlEYzBQSWNub2JOMmw1VTdJekpmVHYzcHpk?=
 =?utf-8?B?b2FUVmZFb0xIdmM1cnUzR3NBb2M0K3FYVnpMOXc0VG5ONGJkNSt3VFllTExz?=
 =?utf-8?B?YTM1dTJrNVE0elhKd1FFY01XeGFjcmZHZ0poOUJzK3R1N290dWtWN29Yc2tK?=
 =?utf-8?B?T3Z2UGF5cVBmcDNTek9DWlBhZnZ6U2VEZ2pPamtOM0ttck0vT2s5QzBFcXFt?=
 =?utf-8?B?aGdwT3ZSQVhvTmlweU1IUzBqYkthWU5lVHRGcVk5THFXQnk4eXRNTktWUHdl?=
 =?utf-8?B?cjZJVHp5dzFyOCs5RHBnQ0l0RkJTTlFvMkphZXN4USthVHR6L0U0bVBnV3VV?=
 =?utf-8?B?WXA4cmxkQm1XZEZOUHZGQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OThiUWNtcHdidmMrcUkraktLYit6UVpPNHVPcWdnb3laNFNsSmROa1ZCSnJZ?=
 =?utf-8?B?OS9ERzlJKzh4OEMwdWs1MjY1TmQ1Q1E3N3dZSEFYVDc4aUNJb0FUd0FncDQ0?=
 =?utf-8?B?MC8wQS9pWTBEWmJHek5YSVVOZ0VUTWtqK1FhaVZLR040aHIvelZDaWFMMEdB?=
 =?utf-8?B?UG90RHVodXdFSG5OTVdOZk9LbTl1N2NzYjBvRU53eThZZzcxeHdBcmhOYlgr?=
 =?utf-8?B?Qk1KMmlTZ3M4cXp1VElvazh0QmIrbmFESFlVamFxSXFQOWNWKzB5c2ZwZENk?=
 =?utf-8?B?MkRWQlAycU56MnhsQkRaQ2JRTVZEa21OeGgzOGFBZE9taWdwbEZqK1ZsN1Nj?=
 =?utf-8?B?SXlON2pxWDNEbEoyU29SK09GVmRyd2JUWGN5VWZnNXZ6THdIaHJtNHUxVitM?=
 =?utf-8?B?dU9IZDRCWHlRakk3OVFEZm1Ca3ByRVNKL1RqOTJ1NlAzY2pUaGppeFgwdmlz?=
 =?utf-8?B?R2FjckFRenl1SmsxK1dlSjJ5cU5GaXY4VWhBZXpiaEVJcnJwcXFrMDN4Ymdv?=
 =?utf-8?B?SmxsclRZZ0lRMjdIN2VzcThRM0ZLTmRrS1I5RkdEYm1RbnN2UHRvazJrbC9s?=
 =?utf-8?B?VEdnWWtZbjdHWENjQW0rVk10dWNkQVZlcTBVSy9MRU4rRzFFc2M3dmFVK1g3?=
 =?utf-8?B?L1lXakZkMUViQmFCVEsvREttcklMVmhrUzMyd3J0VTdjR1R0d3pMZUZhSlRW?=
 =?utf-8?B?bWpnK1puRytVYjJlSlNnTDBDZmYxRFVoNUc0SEMyeE4zbWRUQW9jRVBhZDVr?=
 =?utf-8?B?dkhOQU9MYWtrT0FkdzErUmNJVGc3emwzR1kvSXVLTm9UbGMyYTF5c1lpcFdn?=
 =?utf-8?B?eWtCVHNscC85Y0pCUmEzSzJNVUVVenl6cmhUQjZWUU9SS0RaRHUyd3p0bkR5?=
 =?utf-8?B?U2d4WG1IOGdkZnQ5aExlL0t5QVFDazZtY2c3VzdrTHJHWk1IWTUwZ2hxcjlx?=
 =?utf-8?B?c0xNcWIybFlVRWdRMENqSHl5SEdpbUg2UE81cE1ubTRoQzVaM0I2MjBqSURv?=
 =?utf-8?B?d0svR1BOZW9mUjBFODIyNE1NM1dZRkpYRU1kUS9TUVhoVmVNMUR5VWswUC9K?=
 =?utf-8?B?QTdNUXJtbmtlQ3lzYkppdWhjWUozMEV5by92OFdsL2ZLQ3R4aVZsUW5UK1d1?=
 =?utf-8?B?bDBrUGFJYWZHZzAxV25mZDJVY0VXZERXb2dIVFJrS3VZZEd6c1dTMUlPOWNx?=
 =?utf-8?B?WVBVSWpDSGxVdEhQdzdsUnBKODg1bkJianhpeDloNGsxaFVZR3hjZE1VaHVY?=
 =?utf-8?B?VzV1U1BYTWpaZmRSaDRaaW9aTzc2WnR0SkVHeE83bDd5b0VQdlFjUkRTMk5v?=
 =?utf-8?B?ZUhIbmNTTmtBZXpSZmQ4UUJUekFXdjI0S1BkOFdCTnBtMkp6Q3Y1eld2emhw?=
 =?utf-8?B?ZlFIRlFnQktQQjhFZ2hRNmtDaHg3dHZrS1BmYWh1ZXZDek5vdVB1alFqcnM2?=
 =?utf-8?B?MTFsamZ5M3BLNDBEMUZXQzV3YllaZ0ZMZDNsdkl5K0ZKTUlIZ0RMY3ZubG9X?=
 =?utf-8?B?RnRJeVo4bnMwTlRXSThiRmRqZDZiWThHT0d0WjRlalBFSEU5d0NNb1g3VnNy?=
 =?utf-8?B?TVFjWWVDU1dSV2ppcmNXanl2MmFyOXNpVXZWb2hJOS9sZi9xa0dUSm1TOGtN?=
 =?utf-8?B?VEtMNnVLelJ5NGVMdEdpdFMzdGRmR3d1eGVyYTdpelFmS2Jqc2NLL3kyZG03?=
 =?utf-8?B?UWFnbzJxc2FzdHFuY1pUSDFhRXZpUHdBZmI5dXlMcjZMQWN6b0J1MHBYYlc1?=
 =?utf-8?B?Zmg5Vi9PN2FmNWVrR0NaN25rVGNqb0xvcjBNOWJmRCtVV2Uya3ZrYnBLd3J4?=
 =?utf-8?B?TmJRTXlUZkZXVlZoYVZWVSthQk9MWkZqYlM4UjF6R0xjc2V6dTdwbVJCWWVh?=
 =?utf-8?B?TkVwSzJBSVF2K1NyOVV1S3JSV2Q5SVh1REJsckk1akhGaW84ZTVTbm9tODBy?=
 =?utf-8?B?a0w0Qk5OclVBSlRDTEZUWFhxZ3NzUFZXWnFSOXE3TjFkTkhWUXdrODdNaFpP?=
 =?utf-8?B?UDVZZ0RyY0UxN3dNZ0FCR2Q1MzJhOGIrN3QxdHFockNaNDNNR09ONjRUL1Aw?=
 =?utf-8?B?YThpbnpuMFZoZHRBOXNFdkYrcTg0K1JPZUxQUUtLZEltbUdaVnp4YnJ6V0lD?=
 =?utf-8?B?VXRQbUNBbXpjT1kvNlBoakhVei9LM25xMGRzNE03b3hIdU11Y3FQYmV1dXZG?=
 =?utf-8?B?YWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65dd490b-6356-4e1d-b12d-08dcc5afb177
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2024 09:16:08.6041 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j6blKMn6TGk5iCI1P4V5Y2JTGHo1rMMlYODOKSMCACMli5XxBO5VQeow8XcdPoiqgMRpFmLcgcvcw8QwwsbDZcDsrjJUuTciV6qL3Ls+nFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7597
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724663775; x=1756199775;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TfnRYPaljBmmQZes5j4eAC7mKK+1CNJycIj6UuX1kiI=;
 b=dxGEV23vpYb7FeYTI5BD+AnIs+DhvES7dyqUzNYzEWGdHXUWgPPVUqwp
 q5YukbE41JCRkz4MsqaTC3wxvnJY0NKG9FVliafQC/6gPij7F6FRzNsS6
 baHocdYCZHW3cLTkKot8VE8fgR3mIHhRJJj3cGregTjQNsIIWOPEeLomP
 7vYzMN02K/KPi9ZiFY/tkrFP/uu8iQEgDy+U6j4So84v9oecofILL06f2
 BNC9K7wrQLxse5DiD/HjMSaVHw5kzWE2Xo9Ag+H1PNPkO9l6ybzzL7sGL
 BKIxxa9SJz8MNWLSZQQZE6jhNGdusfZORfgoRVxOQ+jDrQE5fnig+vQKa
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dxGEV23v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] idpf: Slightly simplify
 memory management in idpf_add_del_mac_filters()
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Pavan Kumar
 Linga <pavan.kumar.linga@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/23/24 11:10, Dan Carpenter wrote:
> On Fri, Aug 23, 2024 at 08:23:29AM +0200, Christophe JAILLET wrote:
>> In idpf_add_del_mac_filters(), filters are chunked up into multiple
>> messages to avoid sending a control queue message buffer that is too large.
>>
>> Each chunk has up to IDPF_NUM_FILTERS_PER_MSG entries. So except for the
>> last iteration which can be smaller, space for exactly
>> IDPF_NUM_FILTERS_PER_MSG entries is allocated.
>>
>> There is no need to free and reallocate a smaller array just for the last
>> iteration.
>>
>> This slightly simplifies the code and avoid an (unlikely) memory allocation
>> failure.
>>

Thanks, that is indeed an improvement.

>> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 7 +++++--
>>   1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> index 70986e12da28..b6f4b58e1094 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> @@ -3669,12 +3669,15 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
>>   		entries_size = sizeof(struct virtchnl2_mac_addr) * num_entries;
>>   		buf_size = struct_size(ma_list, mac_addr_list, num_entries);
>>   
>> -		if (!ma_list || num_entries != IDPF_NUM_FILTERS_PER_MSG) {
>> -			kfree(ma_list);
>> +		if (!ma_list) {
>>   			ma_list = kzalloc(buf_size, GFP_ATOMIC);
>>   			if (!ma_list)
>>   				return -ENOMEM;
>>   		} else {
>> +			/* ma_list was allocated in the first iteration
>> +			 * so IDPF_NUM_FILTERS_PER_MSG entries are
>> +			 * available
>> +			 */
>>   			memset(ma_list, 0, buf_size);
>>   		}
> 
> It would be even nicer to move the ma_list allocation outside the loop:
> 
>          buf_size = struct_size(ma_list, mac_addr_list, IDPF_NUM_FILTERS_PER_MSG);
>          ma_list = kmalloc(buf_size, GFP_ATOMIC);

good point

I've opened whole function for inspection and it asks for even more,
as of now, we allocate an array in atomic context, just to have a copy
of some stuff from the spinlock-protected list.

It would be good to have allocation as pointed by Dan prior to iteration
and fill it on the fly, sending when new message would not fit plus once
at the end. Sending procedure is safe to be called under a spinlock.

CCing author; CCing Olek to ask if there are already some refactors that
would conflict with this.

> 
> regards,
> dan carpenter
> 

