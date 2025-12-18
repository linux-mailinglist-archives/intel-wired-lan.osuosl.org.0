Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CF0CCDDAD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 23:44:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5EDC41066;
	Thu, 18 Dec 2025 22:44:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yt0ZgF9pxK2R; Thu, 18 Dec 2025 22:44:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE1C5412C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766097855;
	bh=h7GvklRQY6Z54xthJDCrkqfBJNywbBmI9EUZUDU8Rbw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xghRyUFWkScD/Z3UgbtbnEQPlK7bX40vA01Z0K+NjFJlIyGEK6c/ku6QgSC2IKgeW
	 P6AhvSfLi0heb+PcYELMP9hiGaZylQnwFcvMGtZxBI1+tq5OHzskO94wvjfUZA+gyq
	 ug5t30dbbo+vJckj9+YXNUXLitJ+ayDb8SP+FyGjHlRJH8suLhVCF/ndDTLzhTR2AT
	 YPSsMisg4RYDQUHMSOdCNvUse/oyuHfyR2rId0hguHTL+XizlU2RQQ3SJkZ+8Bs2B0
	 RkRCR0c2CYxR149COb5tH2EoSNxWOTZOxcLR03R7trLQc+Neqek8UIPTjnoC4hZYUA
	 5xX6rUuuKYd6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE1C5412C4;
	Thu, 18 Dec 2025 22:44:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DA6D2293
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 22:44:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C0DC540291
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 22:44:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L9ruBTCVfnp6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 22:44:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C46DC40265
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C46DC40265
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C46DC40265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 22:44:13 +0000 (UTC)
X-CSE-ConnectionGUID: 3yFbHhvXTvimT19cLU7uXw==
X-CSE-MsgGUID: v2pOg/AlTMKDsd9daaHugA==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="85482487"
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="85482487"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 14:44:13 -0800
X-CSE-ConnectionGUID: RtZZu6EDTQiCrVk7TrGH7g==
X-CSE-MsgGUID: xud1O7zpQ9KIBVua24ipBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,159,1763452800"; d="scan'208";a="203788228"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 14:44:12 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 14:44:11 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 14:44:11 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.40) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 14:44:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v5WxahUIsup50kzutk0348YfUGArMVym3PUWbnppEIxKiSjj3S7kzQu6AKOALqn6W/MEbaQJP1fo8FZ94h0mp5tuhMETWseTxy9plOTZ0Y7chE0cD5Lk4M6DRMm2n0DeIAcMNDktTazEg+vEDTpv+59HfJAIKzscCP3A36M9oHUHU/+q42Nnc6kIPecxbfdgOUsu3yJcwZnOr9CWZieavjjowacV+Hfq+CB8VslrxdFDC7jXCsdNJzwdG8WgCCcYy7Mnw6DpF/yDfrieygcTBY6klqxq8F4vl6g8yHSM9jkFLg1flSLvHEZH9ne1+sBFepHGrSOn+pe3hHSw9Rqxgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h7GvklRQY6Z54xthJDCrkqfBJNywbBmI9EUZUDU8Rbw=;
 b=s15lJ4vw+5dABYhNJy5FOj1yre+69DlJVtcIuv1WNagpOH1FqhTaTXFKfQ+soZCSuHvgqcsEi3cnPX1JuLYnYIbFqUe7CRJMPkSZZHOGt0tj6P3U4Swdhyyg9+DUj7LAVcdDpKqSkoN+/G9BH6pWXKIsLPVRKSJCHhz7C5EevK8dJjMcywG4ZDlCQJJp7/bNAU7QwvpjJIPvhWEuVU0bCkDcn2VOGsvuQbb7ysUreMLrjK/7YvAzZFxsBOOgqZqPEcrmX0F6bSNdFndpJ7FWiW74p4ru4EfGewYN/N/W8fn4V6bDjKG9aEsMQxK2hcpJRCa8nTVt3KcAIbVwVWfzgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH3PPF7A88A980A.namprd11.prod.outlook.com (2603:10b6:518:1::d32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.8; Thu, 18 Dec
 2025 22:44:03 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 22:44:03 +0000
Message-ID: <196b561a-f23e-405c-8bb1-164d4cf63752@intel.com>
Date: Thu, 18 Dec 2025 14:44:00 -0800
User-Agent: Mozilla Thunderbird
To: "Behera, VIVEK" <vivek.behera@siemens.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, <Yoong.Siang.Song@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>
References: <20251215122052.412327-1-vivek.behera@siemens.com>
 <PH7PR11MB5983787A7ACBB87D70DD6327F3AAA@PH7PR11MB5983.namprd11.prod.outlook.com>
 <AS1PR10MB53924EF63D14B5B1D735F3928FA8A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <AS1PR10MB53924EF63D14B5B1D735F3928FA8A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0171.namprd05.prod.outlook.com
 (2603:10b6:a03:339::26) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH3PPF7A88A980A:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f6113d2-177c-47f3-78db-08de3e86f17f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S3d4UGV2S3pVZWZPN0ZFcGlCVzlqQ1hsYkVLbGdpUGVHZUpLazd4Qi9CdnVK?=
 =?utf-8?B?am4wQzRDRlN4ZUdKWXFITE43dFBFRDZwR1RxRk5Rb0U4aXZYZUJVdHpRMDF6?=
 =?utf-8?B?M2YyaVlLU1JodFpWVWJ2Z2pzZ0NyYi9tdVJuVVBqNHU3eE1xeXpGQ1NYdEV5?=
 =?utf-8?B?dHZwWW9SY1RmMlpTQ1o4TmJ1bUpMT1prUmJoRUtBWmRyNnRHai9WWVhueTg1?=
 =?utf-8?B?cXpST0JIdWg5WDg0MkxiWHhCQmtITVZNNXZQeVN6T3UwNENjTkZHa0hjejBP?=
 =?utf-8?B?OVZTOWVMZjd1VlFwelEydXl4VE44Rzd5K0FyMG50MXBKZFlGOTBWNHFXbGJK?=
 =?utf-8?B?bjFxLzFaK2UwVjJuRmtZUlRoQko4Z002ZjBaMldML1M4U29KQ05keHdjanMr?=
 =?utf-8?B?UnIwZ09SSzBpcUJMZEFHK2U5ZGxJeWhPS0lERUhnNlFaZFlhWTJnaGUvR1Zq?=
 =?utf-8?B?ZTFQWXEzOEpsQmtpTmtMK2hyRmhZNmtxZlY4dnRzNjlCVzc3ZUZINUUvaU5U?=
 =?utf-8?B?VDNvc293bHAzdy9YeW1rSG1kdExqb2lKWFlpekJCWU8rWlJZSm5oTVp1VHNV?=
 =?utf-8?B?bCtqVkZsMFBTNlM1N0hiK243U1BBamdLWDNKZlBJWklXd1loR3g0QjJMU0ZT?=
 =?utf-8?B?dGtwc0ptakNJZWZ1ZGc1YVR5N3laM1FnQ3FVTEdES09IK1d1bTRMK0pxMmdm?=
 =?utf-8?B?bWhQdnBtc2FveEZDQUJzdFJ0OWNRdWYrNDdZUE1SWTBLYkQ4ZjA1VzZ4QzQ0?=
 =?utf-8?B?aGhtbkVDd2QvS3hKTTNPamdXaWtuQzIzbU9xb1gycFc2Wk8wd2Q2SEFnS09u?=
 =?utf-8?B?SVRzUWxiNmF3RklkK3JORVoxREJWdmF2TVcyUmpsVGJQdWY5SDVWK0w4Mm1h?=
 =?utf-8?B?cUNUQ0dTQmh6aldRdVpGcnpWS0p2alJ5OGZUc1EzbGY2TVlFT2Z0N2xCUXUy?=
 =?utf-8?B?K3N6TVJadmg1Vk56ajlieHVOSHlCeUt5bVpSeDJwTlpobGh4OEZhRitydzM5?=
 =?utf-8?B?c05PY2V3cm9KejdMVE9kYVNRRHpyWjZxTnFSVnJkeW5aZ0xzUSttdHNoSElO?=
 =?utf-8?B?NnV4UWh3M2Y2bUQ4UUN0R0djdWNVZWxXM1oyQ1p3UjBWRFN4MWQxd2lRR0JU?=
 =?utf-8?B?eWxESHdBZFdhZlNuV24wNlZGNGF6THp2azU1S2tFNllXRTBJNUE3WFJQSXls?=
 =?utf-8?B?SVBqb3VpNElJK3RraS9UU2U5dDFJNElURmRXaVpnK3NPNDNERFNqOEFCcXFC?=
 =?utf-8?B?Y2N0K05ISGkvV3RRejV2dWJJeXMydlZLQk15RzhveVlkUElSR2E4V0ZkMExl?=
 =?utf-8?B?Z3NYVlY2N2xRVXZGVlRzMmJPOXpac3JRZTlGOGc3U3dMSkVMV0diTzd5WHBX?=
 =?utf-8?B?cHBIaVhteWM2emhSYTNzZlJYaGNEd1ZnclJoQVRtVEI4NmdCRlVUckpRQmh0?=
 =?utf-8?B?b0p3dEo1OGtiQU5KRGpOWEhJbk54Vm5JeTRibjRJeGZja0FveUdFVmJVM2Zi?=
 =?utf-8?B?OWU3NURsT0s4TDV6L0dZUkxGeWl2cm8vTTBzSjhGdGhROHJoYkFlWFg3TlZX?=
 =?utf-8?B?bHU0blV3d2MxZENSQUJrZXA5THFkbEMvRmdUMFBSVDkzSXJlT29xbjZOL0Iz?=
 =?utf-8?B?QTdaOElaMXR1SXRIRW9hV0N5ck9VUXdwb3FLcHhCc3ROMmpGOWgzbnJPS0x3?=
 =?utf-8?B?YlQ5MXFkNHlVOUkzWkxGT09ZVFFEQmp1RmZya0tjTkJ0MDMyU2xQN3Jjc3RH?=
 =?utf-8?B?VGt5NTZpbXNmRG5EUkNxQVZGYlZFcWQyWXRYNnk5VEhHa0xGVnNyL0JUTzBJ?=
 =?utf-8?B?dXRaRDN5WS9ZZTcrNWdwamlLSHI4MzZKWWN5NXhlSTdxK3NxR0VWY0NTa2Zr?=
 =?utf-8?B?UEFEVW1YNUhpeTljalozT1Bwb05CcDJ4Z0N0d3FRY3MyNzAyYjFLVnIwcE5B?=
 =?utf-8?B?OFJTdUVEaUIyOHpOZkRzbW16QklFSE1wMXBBM2tsUHZKNHBsU0xHVGNTWm0y?=
 =?utf-8?B?NURSK2hTQmp6WXlQL1E1MzZ6ZTNPOTdoQ3F6T1ZVQm5ZYi9qaFRJNExKcVpZ?=
 =?utf-8?Q?qUzgmn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(921020)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmdwRy9IcHB2WGhWcDlvdEFxMExPUVBxR1VMK1l6Mjg4V3VjSnptL2Fnd2ds?=
 =?utf-8?B?OWFxbE1LNHJ2WU1EK0dZWGM5WVdPV0NqRVdZcmpSNUg3eHkxanhleHU5Q0xl?=
 =?utf-8?B?UUh3VkdtcTNIcEtFK1Exdm1lQWRYOENrbmJyQ01XLzBNZ0l2SlkzOFNlRDFW?=
 =?utf-8?B?WDlsZVV2bENKWHYvUDh6NStDZ0UwaVpBSGx6djhlWktBN1Z0VFYzNnRnMUda?=
 =?utf-8?B?MEZjUWFVVXFMT25ZOG9FVXM1Q2hWaDlpUXJic25jaFF4WlNGbkxkak9XSnMr?=
 =?utf-8?B?c2FFZnRyRGFqTDA3WGM4aUJJRUU5ZDUwN1hZZ253VVpKNHN3a0RWcHZyRnRL?=
 =?utf-8?B?dTJNeTZPT1ZDcHR1UWgzc3lJeHkraXJVYjJTL1FFVk9ocU0rTlRLVVFwZkQv?=
 =?utf-8?B?ZzFxOS8vVVB0YTgxL05xNE95empPUmY3aWNETk1YZncxbmJoTmhadDEvOHRa?=
 =?utf-8?B?VDdlTEJSMVlSSm13SUlPZmJ5UnMwOXhZMEw4YWI5QnN6RXRiZ1FsVUdtamxi?=
 =?utf-8?B?amVqczlDV1hyZlZGSmpaaDdtZEFHRW5sOVlTREpZOURQUGY1OFc3WDJVRm55?=
 =?utf-8?B?M3hGQjRuczVvNlkyNWVUcE1kcnlwMUpYeHVoNy9EMTFKaExyT05tZkdmRDZR?=
 =?utf-8?B?US9iVjBSdWw4V1ZmaDFzUnd4NHArbEprUW44amdLckVpUHVVdHZUek9hQXhK?=
 =?utf-8?B?YkJTZG1jaTlEL0dBa0NEaFFFQXBad3VaY3pHYnZYUklDQzNvb0JSb3lkSWRO?=
 =?utf-8?B?QW5LREtVS1hqaWJxU1dnQW5LSnBrMWhXYkc0NzlVaWlyMWVCbVMxRG1SSVNH?=
 =?utf-8?B?KzdMQ0xTSWxqYVpudjAxSFNuc2hMeDQySEJvb05oa1hZY0FVNFhrcjhyM25a?=
 =?utf-8?B?dldCa2xVYmFvWWJxY1lOak5Za3NVSjNMOUV3Q2lUelNzZEVmTGRuLzZxZDFh?=
 =?utf-8?B?N3QxemUwUS8vR2tTb0NVNXBOQkUwemJjZC96QjN4eHBBYW1RUFJ0NDlncUhx?=
 =?utf-8?B?cVVsU3RNaFhDbmt3NTdFTVg3TXp2Z2t5YXlGSS9nQlE3Zi9Vb3VoSXVQcEI2?=
 =?utf-8?B?bjVIeUlSTzZxRUNoWm1SS2thYk5pVXdtSDFsQWFtUXdxLzRPQ0dVQXNmdnpN?=
 =?utf-8?B?NHhpT2hvaDVRNmpsNU55SmNRazRDWXc2YTFYZFVPNjBWeFNJb3hVRkx6VWYx?=
 =?utf-8?B?S0NkbTJYbjF6WFB3cEJqczBRZE05R3pVeUVLUmdYWjZUSC9oWDlzNDNNSzh3?=
 =?utf-8?B?dkFqREJOZU0vckRtZmRvL1N4NEdLeXM1K0VEUTJlK05ZVldrdW9JV3R5a2ZV?=
 =?utf-8?B?bFdjQ1o3T1krT1ppa3dJbTNqanFaTFk2Rk9QZ29BY2YyekhIWklPeVc4MytS?=
 =?utf-8?B?T04zNzFuS2pwSnduSFJERDA2UlRIY0FCRGF4N3J6cW4xR3VFUVB2Z2NvWVUy?=
 =?utf-8?B?VkpOOHZ2aFJ1Nllpdk5rZHgyajd1OHp0b2IrclpvVm9CU0cyd0thS1JMbVRW?=
 =?utf-8?B?UUF1TjVydVhoeGxCZ0UvYWp2ejFZOXY0d1VaYWZWZExabGNnSGtkU3lPenI1?=
 =?utf-8?B?OGhndGczSm1RdzlRcTNWRGFVZExua3FuYXVpN0tRNG9kbjVMN01jVkZ2SE85?=
 =?utf-8?B?WWovN1poR240d0tBSm9hd2pvRjhRMExmRjJBRTJPTzN1R0FBYVBuREJwN0Nm?=
 =?utf-8?B?eGs2Q2dyL0NTTzcvc2pUNEhGVUZOaDZVZVJhNXM2T1dzWTk3c1hrWm81Mk1Y?=
 =?utf-8?B?LzNpdU1Ha2JwbmlBaUpNMzl5V1ZDcDZKRnJsZTNRTXlCY2JhODhFVmg1Ym9B?=
 =?utf-8?B?dlB5ZDBJZEF4MDlSM2grSFcwWkxOOTR0S0pTcGFUSDVhamRPcnlRWVB0cWNM?=
 =?utf-8?B?TEM3MFM4ZTRNNUZSY2dXTFlWU0E4RVlZRTRDdlZTcFQrbG9GNFRSVHJJN1Nq?=
 =?utf-8?B?clQ4VmlpSFRrbjk5ZkZrNmtyZU51WVd1L2dES0FvWjlQcjlTVGg0MmNGajhS?=
 =?utf-8?B?dWtHY1lwM3RLK2R1NGtGRloxRUJMYzRoTDROenlzeE9kZERaVXY4clJtTDRj?=
 =?utf-8?B?M29XeW5ZTllxZ2lhTmZXMDgyck4yc0RKYU1PZktaMnFtTDdXYlpRUm4zNlU1?=
 =?utf-8?B?U3VNWkpselBGWHdhZ2IrZ2xodGxGRzIrcUlJT1R3Y0FMOWNIcURSN1ZYQ3dR?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f6113d2-177c-47f3-78db-08de3e86f17f
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2025 22:44:03.2603 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZB29+/G1eicm0RpfofcVWBFCiGCWtQBclq0GDdd/HfiW0VYp0YJkGpNF03yiF2fCvB3lMMbt+GGte7ovwQMh0GcOLL2Tdp+jm8sgj87xkF4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF7A88A980A
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766097854; x=1797633854;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4dgv2aRs0u5sRZviuPpvGUu8eKVSW0D5NkZCySpESqk=;
 b=Jhxa8bH1kEwxO7bdoKxu4sCX4QIg1qUPAkTsoe32AeeHyc87/UvBwiFw
 4j8E6bleJ/XzcD6avw4DcqneHHdvFdn+n1HuYv9OM13ev+fnrV57jJwCF
 cqt6/Yjp218llSCkkuWmcvumXwKJ2f7OizYFp6Lud9zEm5xCfUWBXUVb1
 YtgZDTfEi+Sav7OVCu0uT+7gS4gzCWCGUypd2Zue8WmR7AJUnCGGbrsOq
 wDZcj3PMfjy9zqtEpuCiwTZgKl5omsLYhIAWA/bI/QQC88BLZIDsMQsDa
 WRQQROEruihuKApS0mYJz9TF86pxKXc9K5lQIMP/CGO8Ln4noe0cAQWzw
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jhxa8bH1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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



On 12/17/2025 11:21 PM, Behera, VIVEK wrote:
> Hello colleagues,
> 
> 
>> -----Original Message-----
>> From: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>> Sent: Tuesday, December 16, 2025 6:55 PM
>> To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>;
>> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob E
>> <jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
>> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org; horms@kernel.org; Behera, Vivek (DI FA
>> DSP ICC PRC1) <vivek.behera@siemens.com>
>> Subject: RE: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of incorrect irq in
>> igc_xsk_wakeup function
>>
>>> -----Original Message-----
>>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>>> Vivek Behera
>>> Sent: Monday, December 15, 2025 1:21 PM
>>> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob
>>> E <jacob.e.keller@intel.com>; Nguyen, Anthony L
>>> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>>> <przemyslaw.kitszel@intel.com>
>>> Cc: intel-wired-lan@lists.osuosl.org; horms@kernel.org; Behera, Vivek
>>> <vivek.behera@siemens.com>
>>> Subject: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
>>> incorrect irq in igc_xsk_wakeup function
>>>
>>> This patch addresses the issue where the igc_xsk_wakeup function was
>> triggering an incorrect IRQ for tx-0 when the i226 is configured with only 2
>> combined queues or in an environment with 2 active CPU cores.
>>> This prevented XDP Zero-copy send functionality in such split IRQ
>> configurations.
>>>
>>> The fix implements the correct logic for extracting q_vectors saved during rx
>> and tx ring allocation and utilizes flags provided by the ndo_xsk_wakeup API to
>> trigger the appropriate IRQ.
>>>
>>> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
>>> Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP
>>> zero-copy packet")
>>> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
>>> Reviewed-by: Jacob Keller <jacob.keller@intel.com>
>>> Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
>>> Reviewed-by: Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>
>>> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

Unless you have received a Reviewed-by tag explicitly from the person, 
you shouldn't add it.

...

>>> drivers/net/ethernet/intel/igc/igc_main.c | 90 ++++++++++++++++++-----
>>> drivers/net/ethernet/intel/igc/igc_ptp.c  |  2 +-
>>> 2 files changed, 73 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>>> b/drivers/net/ethernet/intel/igc/igc_main.c
>>> index 7aafa60ba0c8..76e4790bd3c0 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>>> @@ -6908,21 +6908,13 @@ static int igc_xdp_xmit(struct net_device *dev, int
>> num_frames,
>>> 	return nxmit;
>>> }
>>>
>>> -static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
>>> -					struct igc_q_vector *q_vector)
>>> -{
>>> -	struct igc_hw *hw = &adapter->hw;
>>> -	u32 eics = 0;
>>> -
>>> -	eics |= q_vector->eims_value;
>>> -	wr32(IGC_EICS, eics);
>>> -}
>>> -
>>> int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)  {
>>> 	struct igc_adapter *adapter = netdev_priv(dev);
>>> +	struct igc_hw *hw = &adapter->hw;
>>> 	struct igc_q_vector *q_vector;
>>> 	struct igc_ring *ring;
>>> +	u32 eics = 0;
>>>
>>> 	if (test_bit(__IGC_DOWN, &adapter->state))
>>> 		return -ENETDOWN;
>>> @@ -6930,18 +6922,80 @@ int igc_xsk_wakeup(struct net_device *dev, u32
>> queue_id, u32 flags)
>>> 	if (!igc_xdp_is_enabled(adapter))
>>> 		return -ENXIO;
>>>
>>> -	if (queue_id >= adapter->num_rx_queues)
>>> +	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
>>> +		/* If both TX and RX need to be woken up */
>>> +		/* check if queue pairs are active. */

nit: This can just be one comment, no need to break it into two comment 
blocks

		/* If both TX and RX need to be woken up
		 * check if queue pairs are active.
		 */


>>> +		if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS)) {
>>> +			/* Just get the ring params from Rx */
>>> +			if (queue_id >= adapter->num_rx_queues)
>>> +				return -EINVAL;
>>> +			ring = adapter->rx_ring[queue_id];
>>> +		} else {
>>> +			/* Two irqs for Rx AND Tx need to be triggered */
>>> +			u32 eics_tx = 0;
>>> +			u32 eics_rx = 0;
>>> +			struct napi_struct *rx_napi;
>>> +			struct napi_struct *tx_napi;

This should be RCT, longest argument to shortest, so the structs should 
be first.

>>> +
>>> +			if (queue_id >= adapter->num_rx_queues)
>>> +				return -EINVAL;
>>> +
>>> +			if (queue_id >= adapter->num_tx_queues)
>>> +				return -EINVAL;
>>> +
>>> +			/* IRQ trigger preparation for Rx */
>>> +			ring = adapter->rx_ring[queue_id];
>>> +			if (!ring->xsk_pool)
>>> +				return -ENXIO;
>>> +			q_vector = ring->q_vector;
>>> +			rx_napi = &q_vector->napi;
>>> +			/* Extend the BIT mask for eics */
>>> +			eics_rx |= ring->q_vector->eims_value;
>>> +
>>> +			/* IRQ trigger preparation for Tx */
>>> +			ring = adapter->tx_ring[queue_id];
>>> +			if (!ring->xsk_pool)
>>> +				return -ENXIO;
>>> +			q_vector = ring->q_vector;
>>> +			tx_napi = &q_vector->napi;
>>> +			/* Extend the BIT mask for eics */
>>> +			eics_tx |= ring->q_vector->eims_value;
>>> +
>>> +			/* Check and update napi states for rx and tx */
>>> +			if (!napi_if_scheduled_mark_missed(rx_napi))
>>> +				eics |= eics_rx;
>>> +			if (!napi_if_scheduled_mark_missed(tx_napi))
>>> +				eics |= eics_tx;
>>> +
>>> +			/* Now we trigger the required irqs for Rx and Tx */
>>> +			if (eics)
>>> +				wr32(IGC_EICS, eics);
>>> +
>>> +			return 0;
>>> +		}
>>> +	} else if (flags & XDP_WAKEUP_TX) {
>>> +		if (queue_id >= adapter->num_tx_queues)
>>> +			return -EINVAL;
>>> +		/* Get the ring params from Tx */
>>> +		ring = adapter->tx_ring[queue_id];
>>> +	} else if (flags & XDP_WAKEUP_RX) {
>>> +		if (queue_id >= adapter->num_rx_queues)
>>> +			return -EINVAL;
>>> +		/* Get the ring params from Rx */
>>> +		ring = adapter->rx_ring[queue_id];
>>> +	} else {
>>> +		/* Invalid Flags */
>>> 		return -EINVAL;
>>> -
>>> -	ring = adapter->rx_ring[queue_id];
>>> -
>>> +	}
>>> +	/* Prepare to trigger single irq */
>>> 	if (!ring->xsk_pool)
>>> 		return -ENXIO;
>>>
>>> -	q_vector = adapter->q_vector[queue_id];
>>> -	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
>>> -		igc_trigger_rxtxq_interrupt(adapter, q_vector);
>>> -
>>> +	q_vector = ring->q_vector;
>>> +	if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
>>> +		eics |= q_vector->eims_value;
>>> +		wr32(IGC_EICS, eics);
>>> +	}
>>> 	return 0;
>>> }
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c
>>> b/drivers/net/ethernet/intel/igc/igc_ptp.c
>>> index b7b46d863bee..6d8c2d639cd7 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
>>> @@ -550,7 +550,7 @@ static void igc_ptp_free_tx_buffer(struct igc_adapter
>> *adapter,
>>> 		tstamp->buffer_type = 0;
>>>
>>> 		/* Trigger txrx interrupt for transmit completion */
>>> -		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
>>> +		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index,
>>> +XDP_WAKEUP_TX);
>>>
>>> 		return;
>>> 	}
>>> --
>>> 2.34.1
>>
>> Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> 
> Thanks for all the reviews. Are there any suggestions before I add netdev@ and linux-kernel@ to the list for further review

For this patch, I don't think I would re-add them. As part of normal 
process (future patches), yes, but this one was asked to be excluded 
while the kinks of the upstream process were worked out. As this is the 
list you're targeting your patch for and I'll be sending this to netdev 
following our validation, it will get its review from netdev at that time.

Also, adding Siang who is one of the authors from the Fixes:

Thanks,
Tony
> 
> Regards
> 
> Vivek

