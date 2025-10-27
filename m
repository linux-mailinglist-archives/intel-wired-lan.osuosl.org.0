Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1E6C0CB91
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 10:40:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF41583F8F;
	Mon, 27 Oct 2025 09:40:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OeUNgYclmLKP; Mon, 27 Oct 2025 09:40:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10BBD840C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761558026;
	bh=XINIG9aWkYwxOfq8glS2XiWidF3s7c+H51kvTSFcEyM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=97a5OIsQ0TMrgDXB8WArXbJcVoHgDSGXCl6m8OJTvIPUQc30QbsK+3QNBrrZ9eU1E
	 /R86uKc7mQ2coRin2cASP9IM2Wp0fj6FgWsYiVUJnpUaHQ+gYtk/ROxvjZhpqktOxT
	 AF0QPzy/Kd0Hw5FRW4O75WDVXzVSQDLqJDtoyHiBcynK8hfJ+CUaUKEamJ/qX/8vAx
	 XfCpDs+zrxChXjn1ts+D1m9UfPp+lvt+bVRoTVGDEYps+d7g+pJESiu7f754Ik/XOA
	 Hl1/nyyylXWCMBfCzW10cLLUkcLAKgMFv9Sgyv/slCteM97Sw8smEzvLolBgH9q1DN
	 qNBAd09yvBNhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10BBD840C7;
	Mon, 27 Oct 2025 09:40:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4DFF215F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 33CCC40DFC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:40:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j6Aq2sRuuSW3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 09:40:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5465640DB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5465640DB3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5465640DB3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 09:40:23 +0000 (UTC)
X-CSE-ConnectionGUID: MgVPGSSxQxKvIch7etqhMg==
X-CSE-MsgGUID: Tp+LU77LRDaUHR4CGpaXmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="73921559"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="73921559"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 02:40:23 -0700
X-CSE-ConnectionGUID: qkQjQuPOQKK0lT7H5y0I4Q==
X-CSE-MsgGUID: XM+sJTaTRzC9gtVTiNsZMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="189039900"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 02:40:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 02:40:22 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 02:40:22 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.33) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 02:40:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HxIfir3gZ8gX7TZcj4qCHwVoQXG6Rb+EdD0TGC2a38spNJe0CTZZU5tt9ThSUuGRmbaUZew8ev5s/BL5bpwu9JEK1l9nzvWyhOfDmeEgHTYnYqMdDoZMVn9Df2lGX2I/NsqxTCUebuxZB6DLkzhZ7L+2zjqzDCLW5d21/xRhQsxi5bjDfCfypUYtL8vLqBJi+L8K9fykY0r8wYp9rxvxDgjepXmjigpmZLTCjxyCw1oXLK5LgyRKt5vndDHSGKRI9xBQhOklo+j3zcB13d5pk9rteqyEveoAAv5LwNM9lPooU0ljQC1J6JcBjRt64iwPUVgBKzcA6v8kCNfX/SgHdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XINIG9aWkYwxOfq8glS2XiWidF3s7c+H51kvTSFcEyM=;
 b=XjicRGJYaZOcd9D1ltZwofLovOjYJwwhH7zPLiIOF5eetydXokcbSomxAaB1Zcmps7vcKEM16c/fYuOtdRGSzv8BeeNT+Wc16dwSbZfAC4jeJggh54kLf0UPS9cGMtgvuM0RbU9LUn6WKGsWQPsxd/NkIfVSrMH/k6f5+Un7Pbwqm0S9bXie6foA0tUksKS8Zb4cxkCz8lvP+cTbYZzDdZ/u1W2ROftuq0QsmTQmUUH1kP/xzVdhZoGuySRr1ywnTZxAPcc6w2DRrUDdyKzPVFR4vK2URzJhciT99odPsaPwzjJakS6OChRApE/eMjphHlIGdVs4wwCnyB3n+YkWHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by LV3PR11MB8531.namprd11.prod.outlook.com (2603:10b6:408:1b6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 09:40:20 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 09:40:20 +0000
Message-ID: <ed0119ac-c69b-4840-afa4-ab77a195d36f@intel.com>
Date: Mon, 27 Oct 2025 10:40:15 +0100
User-Agent: Mozilla Thunderbird
To: Wang Liang <wangliang74@huawei.com>
CC: <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <yuehaibing@huawei.com>,
 <zhangchangzhong@huawei.com>
References: <20251025040735.558953-1-wangliang74@huawei.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20251025040735.558953-1-wangliang74@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0162.eurprd04.prod.outlook.com
 (2603:10a6:10:2b0::17) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|LV3PR11MB8531:EE_
X-MS-Office365-Filtering-Correlation-Id: 7276fa47-4903-4f7d-9562-08de153cd842
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXFhaURiSW82MWF2dFhvbVRzdVVnWkJ0QzBud2Nud1RyOEM1NC9RSzRnQjNn?=
 =?utf-8?B?VFV0S3BHRExVUHA0ZnFhOTJQOE9uRjhDMlRNTCt5V1E5WjA0eHRCU01kYXZF?=
 =?utf-8?B?T042dkNkNWhIbkFTL3lpbjg2SUlZdGc3eko5aUF2bnFNS09EQVd3V1VNb01l?=
 =?utf-8?B?bkl1NlJZNGE2Q0MvaVVzampTU2toMmMvdXd0bkdxcEF6dlFmcnFEK1g2bS9P?=
 =?utf-8?B?TEJHRnNnbXErcVRJTFJOVGwvTHFYYUo4cEh0OVYzZVFmaWluOHlSck5CQXQ3?=
 =?utf-8?B?YWRnTDVvcCtwdHpYejd2aDNRZVdoYzdIZ0N6ZDRRYnhNS3g0dzdmTldkUWxm?=
 =?utf-8?B?dnNEQWREU1pzNDNnOFNVbC93Y2ZpSVJOQ1g3cnE0NWZNYUh1VUtDbXZvbzNn?=
 =?utf-8?B?VmNHa1lVR3kxa2hFb3ZweUhLUnhKWEZLai95cEJpOEljd2hGYWh4Y0JMcVVk?=
 =?utf-8?B?MHhmc1lmajFBeUtyWE5QWGVEQ3pnOGgvYkwrWTlleTU2QTZacERTd1RaOWRZ?=
 =?utf-8?B?Vk5EUW94ajFuMVN6OXgzNEFrSW5RR2hpTVBaM1VCOWVqdWdWcmE3ZWVBaFdu?=
 =?utf-8?B?SmNjM2RjNTNyR0FIcnlVc2JtMXI1Um93Z2RWazMwOXFUODd5RjVJT1dBQWxC?=
 =?utf-8?B?c21hYlNCbWN1NHJaTzAzd0ZoUWVMSDFxUWJuR0VJOW9zMGx3cmdrZXNPUFBL?=
 =?utf-8?B?Q1hLY2hwZk9qNGVGYTBROXJvSjVaZmR0ZTYxTUNzcXBZRFhoRVVkbnNUVzZ0?=
 =?utf-8?B?RWhPdnZoNHRzalNMUHpzWnAxcFJJai92WCtjRHF3SHY2YVhMVllvNUpXYmZZ?=
 =?utf-8?B?S0tpczZqUUhlRm83clY5KzNQV2JwSExJZGhic252ZXBZSVJNZ3FaZFVGRnVz?=
 =?utf-8?B?NkNNcjVaNU5vNkU4bHBNV0lrc1B1UHhpb2VOMGYvQXRYWDVWY0xjTUpPeXR6?=
 =?utf-8?B?THlObjIyV1hOODlpZXRhUmxxTTlBYTlNT0tObWFmRDFqUHhrbHZNVHpJMVR3?=
 =?utf-8?B?V29HSmg3aSt4S2dJTWtBMk9kSFE5bnA2QnJhclZJaDNrekc3cW40U2V0eTU1?=
 =?utf-8?B?dGduTExqem81eHBzNUdUSWMyTEhWYk9SSWpzZlAzNTVCRmRrVTdZSlVhUktB?=
 =?utf-8?B?dGFCTFJFN0JkYTEyZ1Z0TWxkWnozWXJNR2pmeHlvaGtKcEFBQlBGbmg2QU1j?=
 =?utf-8?B?Sjh6SjM0QUZYSTJEeTZXbzE2UFRqanF1QThkYTRuTm8xRFIvN0c0cUdrenJz?=
 =?utf-8?B?UkVNOVJDTnU1TmFDN2NHZHl0S3B1VHNxZnR6NDRZOWxGcDEzU1A5bDl0NjVm?=
 =?utf-8?B?TDdwOHFCK3AvOWY3UVFZakdxckIxUWZmTW9Rdy9NSWFkZ01xU2JxdTV4T0N0?=
 =?utf-8?B?aERXWHZVMFhYbXhVZnNoNzBqd3FnV3ZkK2NQb0JHT0ZZQ0s2TlpVTGc0UTJu?=
 =?utf-8?B?RlZZNlE2VUF1c0dzWTZ5aWxZamozQzRRNnliaEpERW5QYWI5M3dwNHZ1cG9m?=
 =?utf-8?B?WHdYUEE2c0g5RmZZUlovbVozdU1lRDRGTVc5NTJKN0dkaDMvcmdkaWRFanBZ?=
 =?utf-8?B?dU12RWV1NVhLRWkxUnhGWFF3dkRNQ1FydjA1WndvQUpVZ3RZVzNhWUMrUWtC?=
 =?utf-8?B?YXd2Vzd4OElWWmFKVHVJMWNDejNISlUwWk5RRXpkM3k0bVpNSWNxZlRNMWNm?=
 =?utf-8?B?dkQ0eTdrbWxiSDBGd3FqVktkcnJyTTdkWmJmaEM0d1BLMVdNL01tbWlDdzda?=
 =?utf-8?B?WVBsWlhCNXhQUFIramRqTkJWbzFtaXlnalVKenBFSjVpRWFuc0s4Y0NxdFBi?=
 =?utf-8?B?bURBUmNZMWFsOVJRaWZhS3FPU1VkRFk2aWhQRXdFeWkrVWlOc0tTTWFTSmdO?=
 =?utf-8?B?cjZ1RlJpc2Zxem1mYUpVaWVwMTFPWjllRzl4VEltUFdKRy9NaldpUi9ERWNR?=
 =?utf-8?Q?ULmz5oOulCoNsHBLRFL9nOQpI+0F9hoR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WjBQTmwwcmg2TElIVXhibHVZUTZwY094R2lSNzV4aVIreEZjbmlJYTYza1NV?=
 =?utf-8?B?djZ5NGFDaXFUeHdzTXFRZTVVdXQva3AxdTU2N0k3U0ZaV2xjdENiQnhqT3dy?=
 =?utf-8?B?cWIxSjNoMlAyYVUyVTRlakdLb0VHNnhzK29pZHYvbWVQV2tHRW5zTEd5eGtw?=
 =?utf-8?B?eGJ4RnVjRHhFYmNqSXNvTTRzOTVkMDFnUTc0aGxQVTdQc25rdU1hbDRicmY1?=
 =?utf-8?B?VlE4ZnhIdmJwTEg2UmFHZm4rSEl1OUFmbERHL1ZsVzRHV2Y5NEJ6T1FTNk1R?=
 =?utf-8?B?bTNydThHQ1pDQnEzMHBNUXlrQ29Bd3lQc3NBbGhsZVh0U2xmVEx2RlkzaEND?=
 =?utf-8?B?dE54S1ZSMmVWQlBFYVRaZ3dBQk55V3NydTgxdjBTWW9GK09FejFTdTdjRCtG?=
 =?utf-8?B?ckN2bHplb293Zll1YnlvYXJoRDlzWnlzaGkyK2xtTmlxK0RHT2huZFBtK3Jm?=
 =?utf-8?B?c0xheExaaXArS0o3YWozZ20vMm5IR0VYand3bnozRXV6SW0weWE3YmxHUmFL?=
 =?utf-8?B?bW1sOUM4aHZNY083R05PRm5SVmpFZUtLQVFZNTU1dTNaRDVkamVOL2lWdFE4?=
 =?utf-8?B?UzZqZytlN1l1V05YRlFaRzNmV0R1dlF3TWltMWlVd3FudzMvK0JKcTJPa1Bp?=
 =?utf-8?B?bTRhUXBiWnhuM0ZFbUt3UnVCeWZYWXQzR0hXZVlKYWhpUWRVVWlzQ1grOGdw?=
 =?utf-8?B?T0hlVzJiZmpBV2NDT0M3K0JCSFBOVTlKUUZOVVRXTFRaUDJmRFJheUJqeHJx?=
 =?utf-8?B?RDRnUWtRVVRobzZvbEhueWdEdkxqdWFPUTV6MWRWaDFPK3RpODBCK2lDQVQ0?=
 =?utf-8?B?YmxzcWxxWVdsMzlCK3hHekF3R3B1Sm8zaHlnQUxScXJISXU4WWsyMDZ0STdH?=
 =?utf-8?B?TUYrZG4wQk9sMS9xWEE1RmdGZzFxY1gycTVYV0FFZkhJWHRPdzNRN0tNU2k5?=
 =?utf-8?B?NElLUy9DRGw3YWY1bFdzNjZIVGVZMURyYkpxMng3YXlENVRNZU1yNE1HU0dJ?=
 =?utf-8?B?cTNac05CanJxUnV1RnhSRXhVRjh6RGcxNExhMDFpL0hsakNQdVYxZGNnY0Zk?=
 =?utf-8?B?Y202L2FHVmxyMXdIekdkMFNsek45WElJRUV5M0R1NU1tUU1oUmdFSDhZNjFF?=
 =?utf-8?B?bTczdWx3R2JYWDBodU5Pd1RDQThLQ0l6SzduaE9DbnVLdHpnWisrejRvdXBE?=
 =?utf-8?B?K2svUk85M21PVFgwUmJFdTB1OUFIS2trYnlDSkxYdGtYQWQzUEF2clNKazBX?=
 =?utf-8?B?ZjZmMDRJSzM4c2tuQnVyWjlOUjczRUFLYi9NU0UrWVZyZ3lueGM5K2FFdUsz?=
 =?utf-8?B?K2tkS2Nzb1E4by80a3NHNXZvTWxMSXVwZEd5YjRtV1psVm4xSXhVRGlHcTVM?=
 =?utf-8?B?cHErcStGb25tdjFYcXFmUTBFOEQ4TEF5Nnhlb0pTVU1rNTZBZncxR2s1ODFh?=
 =?utf-8?B?TjVKS3VuaEpDSzVMSkZkK0NZZEQwdUxOdkw5WWU2RGdNUmJiWWxNdEk5YXg4?=
 =?utf-8?B?R2J5b29aM2pvOTdVRTVBODdZK3JzdmdCMkpST0M4V3ZwWkZUNGtOa3ZESFQ1?=
 =?utf-8?B?QURCa2EzNHBNNXhJUTdQZytLSDQ1Ynl2Z1JtclAxVGx5bmx1dWhsOW95MzFV?=
 =?utf-8?B?dGJBa3hyT1hnSlRzdWFCZk13WGJQNXk5cGtqSHFKMWdpV295bGx4cW15RU15?=
 =?utf-8?B?bE5JSmtuM3VXbmxaUFFNU1NZYmxiWjRzenQ4emhyNS8vYjA0YWI1N0ZiUTl2?=
 =?utf-8?B?WGpJNWRtUFZBbDNsQ05NSnplSWFtcnQwM0RNb0IxNDA2azdydjgwenlhNHNk?=
 =?utf-8?B?MUdOTlNQZWdKQkNyZ1JRUXBBc0Y3c0ZjWGVuWlBvZC9hODd0L0J5NTI1QXR0?=
 =?utf-8?B?aDR6YUd1dldtT1RoRC91TlpDNFVyUkswd3JHMVE1OXN3WmQzc1FNN0JtdUJH?=
 =?utf-8?B?K3R4Y2IxQWc0cEF6NVRaTkZXZ3ZMRmJPb3k3akpISEtFQVR4cjhhQ3RoK2do?=
 =?utf-8?B?SUhyMmIvL0RvZXQvZUhiTWpjbEtoRmo0cy9LcUthY0JtRlZMejBjd3B4K0pj?=
 =?utf-8?B?RDVnanRtVENyVmlVRk9PVWVUa1U0eXRJVzZCdFdFZEVGQjNoOXMvM0JBbU1L?=
 =?utf-8?B?SEtES0kvTG9mNHJwd0RLZkZ0WWFLenlldEJrZGQ1Tlhoc0ZXYUlnUmM2RjRY?=
 =?utf-8?Q?cwg1cZt6Qv5/pdY+LDhoHOo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7276fa47-4903-4f7d-9562-08de153cd842
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 09:40:20.5602 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: InRrqeJA/gtCiWl0NEwIMhSB2fHHkp4x0apH9fqeJb3ow9bueBf/AlE9fspuAbefK7YXOWTRAWva9sUuEWJ9EEf9QcyEeyISXcwSC2wVA4I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8531
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761558024; x=1793094024;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VKWUA0P8s0H0K3csTTcgH9P8zXgfcZ/h+rCspxqcRkY=;
 b=ftpzkZzEGwrXavqw5qzJZtkVml0doetoJD3bHn29QIvKsqcRJXeAcLTG
 r8n20ne2y8UfoSKCTiUnK4NvJNi9HR/KdhR5m3kHost1RUoUyIl1dH3aC
 YQpU61638XK8z90E8i/nNSHLTxzuWg9Pb8caZJPjnkx3mKwDw25XeJ3H6
 4cAt6AvMfbLb4+ccbc+pUQMUs6BKcJ+qcNvmR+5xbW0a+uI0ROyuC9gN5
 t1whr504b+4o1HD/RZ1jmPjHnGOHLWmbjsXwMrF5/Pj+zm0VuYj9pKswe
 PTMugdx1gich/KhKulQmRDsfeh3yYeBg+BxtEg92+UoQczAow0H1dUmDS
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ftpzkZzE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH -next] i40e: Replace sscanf() with
 kstrtoint() in i40e_dbg_netdev_ops_write()
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

On 10/25/25 06:07, Wang Liang wrote:
> Commit 9fcdb1c3c4ba ("i40e: remove read access to debugfs files")
> introduced some checkpatch warnings like this:
> 
>    WARNING: Prefer kstrto<type> to single variable sscanf
>    #240: FILE: drivers/net/ethernet/intel/i40e/i40e_debugfs.c:1655:
>    +               cnt = sscanf(&cmd_buf[11], "%i", &vsi_seid);
> 
>    WARNING: Prefer kstrto<type> to single variable sscanf
>    #251: FILE: drivers/net/ethernet/intel/i40e/i40e_debugfs.c:1676:
>    +               cnt = sscanf(&cmd_buf[4], "%i", &vsi_seid);
> 
>    total: 0 errors, 2 warnings, 0 checks, 194 lines checked
> 
> Function kstrtoint() provides better error detection, overflow protection,
> and consistent error handling than sscanf(). Replace sscanf() with
> kstrtoint() in i40e_dbg_netdev_ops_write() to silence the checkpatch
> warnings.
> 

sorry, we do not accept trivial patches, that are not a part of some
broader work related to the driver
https://docs.kernel.org/process/maintainer-netdev.html#clean-up-patches


> Signed-off-by: Wang Liang <wangliang74@huawei.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> index c17b5d290f0a..2abd12b62509 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -1604,7 +1604,7 @@ static ssize_t i40e_dbg_netdev_ops_write(struct file *filp,
>   	int bytes_not_copied;
>   	struct i40e_vsi *vsi;
>   	int vsi_seid;
> -	int i, cnt;
> +	int i, ret;
>   
>   	/* don't allow partial writes */
>   	if (*ppos != 0)
> @@ -1629,9 +1629,9 @@ static ssize_t i40e_dbg_netdev_ops_write(struct file *filp,
>   	if (strncmp(cmd_buf, "change_mtu", 10) == 0) {
>   		int mtu;
>   
> -		cnt = sscanf(&cmd_buf[11], "%i %i",
> +		ret = sscanf(&cmd_buf[11], "%i %i",
>   			     &vsi_seid, &mtu);
> -		if (cnt != 2) {
> +		if (ret != 2) {
>   			dev_info(&pf->pdev->dev, "change_mtu <vsi_seid> <mtu>\n");
>   			goto netdev_ops_write_done;
>   		}
> @@ -1652,8 +1652,8 @@ static ssize_t i40e_dbg_netdev_ops_write(struct file *filp,
>   		}
>   
>   	} else if (strncmp(cmd_buf, "set_rx_mode", 11) == 0) {
> -		cnt = sscanf(&cmd_buf[11], "%i", &vsi_seid);
> -		if (cnt != 1) {
> +		ret = kstrtoint(&cmd_buf[11], 0, &vsi_seid);
> +		if (ret) {
>   			dev_info(&pf->pdev->dev, "set_rx_mode <vsi_seid>\n");
>   			goto netdev_ops_write_done;
>   		}
> @@ -1673,8 +1673,8 @@ static ssize_t i40e_dbg_netdev_ops_write(struct file *filp,
>   		}
>   
>   	} else if (strncmp(cmd_buf, "napi", 4) == 0) {
> -		cnt = sscanf(&cmd_buf[4], "%i", &vsi_seid);
> -		if (cnt != 1) {
> +		ret = kstrtoint(&cmd_buf[4], 0, &vsi_seid);
> +		if (ret) {
>   			dev_info(&pf->pdev->dev, "napi <vsi_seid>\n");
>   			goto netdev_ops_write_done;
>   		}

