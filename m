Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791808D14FE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 09:11:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 634BF402B1;
	Tue, 28 May 2024 07:11:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CCGgZNV46SpQ; Tue, 28 May 2024 07:11:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF6F4402E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716880286;
	bh=O9kP+n6AGaEJ9ajRm3by+lcJa+Q5oOBejf3HvLKc66w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VmMRXlrtw9ooGwxPeOxKcXzZeYJh398YvZT0x40koBV4V2bOW415lQa4T3gh3JIGO
	 57EMI/vnuGUqVeSSIPVyD4g/Hbgw8zC2M/ZAOjBx2damc/HP+y2mtwx+DeMEdmTNUO
	 mMv5fqBY7yVNIcjcEfjpa61ek6/r4AdZdgxXydyav/J7ihaRuuBdMd364CFF5RPGN8
	 0Vcp5f9f/xYOTq90kt3tA3tejYTrgrUrGOVFRRhIGdbqtVhQjkJJTHDboGSwebAhwH
	 xVYAD21FPZRZuftLWNkyBJwYSspHONSAVUGXri9fO2yjUiM/BqgUghU9JIuOgc3VYS
	 0kX6guCU9oKCg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF6F4402E5;
	Tue, 28 May 2024 07:11:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B93F1D2508
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 07:11:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 262A94059A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 07:11:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id me2C05CQHhvm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 07:11:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8F50140597
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F50140597
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F50140597
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 07:11:21 +0000 (UTC)
X-CSE-ConnectionGUID: 6g0fO4V/S7aLlsRkuZjToA==
X-CSE-MsgGUID: TInELGdnRemfndXTxTxh8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17039880"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="17039880"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 00:11:20 -0700
X-CSE-ConnectionGUID: HrhxkG4bRe+yIdHXnciQRw==
X-CSE-MsgGUID: uzXawZvZRbOFQBED+hzmHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="39510017"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 00:11:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 00:11:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 00:11:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 00:11:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 00:11:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=axvrQlUSQvKQUqSMLq4F1+0OqnvhKvlaEBvLMrz9ehG+Ya7cpwGo7MnHqnlIqP5YzOY8K0ITzwlrKfVFbcteStXW8BfQDdcc05x7WFmXCT8aG/1JxpCTXyI7S2pBgiMIlQUIAg/9hQSH+lUktonmhrEgCNhnwySTwvlzKsqwvl2BfAjDp3Ta6tHVeirlBsSFFhGLcwmzItlmbvdkHQO/C+ScrTzhz4fG0cVH6KSd1656gPCFYXbSXtQ9Gnu3FHI1yPssFvFSOKRj3565HGbVT1B5VjyW4K+vlEaVr4XBP3gj1bOxLO0wTII3vDW47mZSJJs6dBKofHMeINSbP/kfow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O9kP+n6AGaEJ9ajRm3by+lcJa+Q5oOBejf3HvLKc66w=;
 b=VylkE6/vKQPMjOS8dBLClFMvANncKcNzFFjIE53IV2WR2xKPS8JsOgbaB2IvlCbh6i9muHl1OTze22KOnfOyrXgepS6zR4+gq/DQQc//h3yJSjSqWTQ6dPx1/bPQGVKyB4dB34uIBko7ruOJLZzC9ZDhYvC1be2M/iJFXfRVpwccQWz419fP6KouOb+Qbxq7J4gq8DPYoRJvPPwMbrPe1+6/7GtCA0b3wwNG3llas5V7P8rDIN4dOnvQpzKYE4jeVETvq8l/0JW32BZCMf/ZsP0GIQ7BjWZEF4EERnq1IZVtDKQdkyfI6YKlezs0vHdp9je8GG6L5UIw91APKPsdIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA1PR11MB7809.namprd11.prod.outlook.com (2603:10b6:208:3f2::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 07:11:16 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 07:11:15 +0000
Message-ID: <b938506f-953f-477b-9496-8ff948824a56@intel.com>
Date: Tue, 28 May 2024 09:11:09 +0200
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
 <20240528043813.1342483-6-michal.swiatkowski@linux.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240528043813.1342483-6-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR04CA0117.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::15) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA1PR11MB7809:EE_
X-MS-Office365-Filtering-Correlation-Id: ef15058d-18ec-49ef-132c-08dc7ee55d32
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?djVva2hDRVRaQS9aR1V2dzBQVGJQVDhKMWtkSlMwbURid2thOWwvaGg4aVh0?=
 =?utf-8?B?QU9tOFpOam94aGJOQVBUWUIzL1JTZVlZUHo1cWRYUzBqMUIzK0luSEt4ZGdF?=
 =?utf-8?B?RUhkaWZsY0o2US9hUmRnM2ZVdU1odnRqWnRNa1hGVVRnOWdrd2tZSnNXaWFw?=
 =?utf-8?B?Z013WVJodUZLb1lNWmtNVVYrVDUweHowU3c3cXRSUy83UmVWcysySjdmTzJa?=
 =?utf-8?B?WFc3Z0dMcUpDSERwT1lLbEtvNTlQZy9PeEROSGVhR0pWOHpoSFBUMWpPWVU4?=
 =?utf-8?B?U29kR1EwdU54dGkxRmpXZ1labC9nbzE1cTFib0hVYkYyZjZwZzRRWURmSHUz?=
 =?utf-8?B?eEI0MUZTU25QcjVham93c3hIMFNzL0RmOWVWaUl3WHpkSlJtZ1kzWkFkTUt4?=
 =?utf-8?B?aXo5WTFmVFNSSG1rVHZGK1pRc0loRW8zYXdLaElYQ3BQWng1RzVnc0psMTJE?=
 =?utf-8?B?WDdjdmFvWDlHUUxFdU5iUGFXNjNyT1FSOE05K2RWUm9lVVRLVzM5Kzc3TXkw?=
 =?utf-8?B?OE1Wb0tCYUVtZC9ZbUltRVlaTVFRU0ZGcTc4WHFSa2NUOENBakg5ekpTSFZF?=
 =?utf-8?B?NjRvOUoybHpycXJVcDlhVHZ6SWlPcHlaejA4ZHBRM2xlMG9jOHRQb1RLUUJy?=
 =?utf-8?B?Z0JQNGtQek83TzVBZ1dXYmN3ZldxRVFabHE1MFNyNnpLb0dhWG1HYm9zTUZD?=
 =?utf-8?B?N05FRk1ScXFoOVFGUnQvbWNXQzRvd1ZJdURLMDA2THozZXEzTEg5MkpkQ0d0?=
 =?utf-8?B?V2UvZVpyRzExbStvU0txVUI5NXZwNytUVEFPaGw4aGYyRGMrNUNRbVFYbnNt?=
 =?utf-8?B?V1c3cFhaUGMzdmhZaHl0T3hHcXM3VlNqcUxuVDBqNkZBTHZzZU82Qm5WNFhq?=
 =?utf-8?B?aHhGS0RqL1RKaSswd2VHNVpna3BBU014R05ZeWhsRlh4ci8wUFZpQVhnakdG?=
 =?utf-8?B?cW5xM3l0OVlCUTQwbkxPTFZwUVA0dzQvN0pXWkJKcnBYNG1tVjdnSlZVLzVl?=
 =?utf-8?B?S00xUmVjbmtpb0xGWUxMQzgyeUxiZi8vakp5aUpNUndBM3k5alI3QjhyRENH?=
 =?utf-8?B?bkZsZGxMdjE5SWowTnl4M1hqR2JiZkdGNEJNUm5hYmsxWjVQeVRzZExVYmEz?=
 =?utf-8?B?M1d5UjdkaTBSSGdBMW5WRnNRV3A4TVduUFJFaTBqY2c0MXlNd1d4RDJnbFhJ?=
 =?utf-8?B?S1BybDhIajBoY2VDOFF4UUE5RzlhUncxRE1CckpnOVJjT29Mc0lkZGZpcjlp?=
 =?utf-8?B?UVBxbWZqSkxuVnM1QytNcDNrYnhKdHpsS3oxUEhRZmxrQ2RYaXlpQ2xKQ0R1?=
 =?utf-8?B?L1JIYjBBYmQya3U3OUNFWGpHak5Wd2dsVWpPQUhJS3k1cUVwTFhWc3VQZitU?=
 =?utf-8?B?WmMyVFhwaUlNeHVXeE4xZHBvbm81STBSMkZQY3l2NVJQV0JsWnJYcUh1RVNy?=
 =?utf-8?B?VzJQbHZ6aTFzR0Y1Z0pNNm1CZ25TNDFjcldyOWZES1lTamJwYkNEbzN1aTlx?=
 =?utf-8?B?RWJnNGdKK3ZiQ2JXdEhjbWpEdCs2b3oxVXZjclkzSmJnclBiRHoxMGNMbWJC?=
 =?utf-8?B?ZkZhZ0d6MDh2bThmaUxXR2FRMkhnT1VKK3Q4UjRPOWVqbS9UOUExNkViNGpy?=
 =?utf-8?B?N0pGRmVZNDBLU0V1RzAzUlpkaTgyenBLSGpZQXFkQTJlaXVWdmtxSnpNRkJM?=
 =?utf-8?B?L0QwUUdCTjBKMWNrR253MVVMazZVaEZrakx6Y3BFdEZBVEZTcEhRdXd3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzFrWVl5OXFxN2NXM0J2VVpyRXFoSWlOMkFYakpYbVRRdnk0L0lIcUQrQUdQ?=
 =?utf-8?B?WTVLdDlzVVN0TE8yeXc5QkNXK2tyRlArNVZCa09aT2NJTmozcnpsekpzTmxT?=
 =?utf-8?B?YU51aEZqdy91VDZqNmQ2MUZ6eHhjQVhzMFNtZWJSL1YzcUh3cmcwL3B0bUhI?=
 =?utf-8?B?L2ZFM0l1dXIrZW1FaW12TWordXY1T1JmTWZuRzZ4Qk1zbVZGNmhPNHhCRjY2?=
 =?utf-8?B?YUF6R3FJRFU3Mk1RVWMvWkRRenlaelhjL2RRRXJ1RVVXcjhnd0lDTUN3YXh5?=
 =?utf-8?B?eUNrSGlueGppdnA5Nm15NEdNMHZTQXpNVHlzTzJya2R6VEdtazJ4SzNGeVJ2?=
 =?utf-8?B?bWVIaHNmQyt2V0ZSNzVsNS9HYzcxOE5mQmtzZHJ2K3lpNkhVeUdhTjhQa1pX?=
 =?utf-8?B?VnJidXB0aCtQRW1IRGFsdk9lWU1PQ3RELzROOWk3RkN4eHFDdE5kbGZPSWxl?=
 =?utf-8?B?SFoyMWxVS0xNcHFqTlc1cnd6WCtmSzEvaFFiZUFYTlVFQm8xcS81NTN6MkJ3?=
 =?utf-8?B?Z09lWUJMQVlpV0daZE5OL25MQVdYbVUxOUhnZXpnYnpGSHY1YTFXUGx5VThQ?=
 =?utf-8?B?ZXRaL1dJcEVyMGJEWEtFZVJYbHB4clI2MmNmSklNUjJ0cExKN3pCc1VyVkNl?=
 =?utf-8?B?K0x0MTVnbmJLNnhDZTMwZTRiWnAzdmtJMnlRbElka2F5OThHaU1rcXYwTndG?=
 =?utf-8?B?eFNpei9nY2syTTB0eFVXSnVtTkhwWnA1V0Nma2JJVDNlUHpZdUpPZnpMRUVq?=
 =?utf-8?B?bkxPZUlla3YzTUdrKzVCK1ZjOUNBaUpYY3dZemxhL1MrZkJCbnBhSWViY3dX?=
 =?utf-8?B?RmxSZG1qTjR1djRxUmZzZHhEaHZXUlU5YWhKTkZ3L0loUUIrZUVtV1Q5Z2xr?=
 =?utf-8?B?eEtTWGhCZWZjdG5WdnhzUVBCdkp5U1JjWW5kTzBBNUt2SW5uY3Q5T2Fnc0pZ?=
 =?utf-8?B?VlFncmFOTzJsY1MybUNtYTFkZjhGekJEQkxNVGd3Sm15d1FCZkNDZ2xHa05R?=
 =?utf-8?B?T1JoZ1hYc1pidU9sQlRkZzN5OERqZW9JSEo3MGF5M2RxYXp1cUppaGViSFVQ?=
 =?utf-8?B?aUwvVVZZSHBhVUE1cDdSTGoxUUlra0pCbytiYXBhM2tZQmpQZ0RoNm0ydS85?=
 =?utf-8?B?TTRiYlBZSEtOQlRIWkQ4RHVSTEVMUFZGMHBCd0Q3NWNrWEpyR3VxdmwreHF6?=
 =?utf-8?B?dWNjM3V1bFE4NTJQUmlhSURsMjJ0Ry9VQVBhUlpWLzhuMGRDVDVKZ3ZJeCtU?=
 =?utf-8?B?aXpEV3FDY1o4WVh1T0FTMDBCOTlqMFZndlcrSjFtL3FmZi9TYW41YllWTVhp?=
 =?utf-8?B?Tk9XdjhLT1FCVmtJOUx2VXhiWmJ2NFg0dUc4MEF5dzQ1V2ZpUUs2aTFpKzFU?=
 =?utf-8?B?Sjh6U0dueEdhd0ZlSGpaRGMrN1NEUGxpVXIza045Y3NaZ3J5SERYeXZOaUVE?=
 =?utf-8?B?ektqNzdLWXlsNmVUZUFDenVQUEpnRnR3elhYd1d0TjBNQnJXOWFKYjVvVVJm?=
 =?utf-8?B?a0lGdFlIbjRwOGQ5Vy91dktRL3dzWXRVdm5WbEltalIxVVdScCtvNEtuajNy?=
 =?utf-8?B?b2FlWi9SVDdhcUhyMlBlZlM3bi9FL2J3dzR1ckJzNDlMYmJ0TzRNR2sxTWRS?=
 =?utf-8?B?QU4wQjd1WjRDTEFneUcwamFUU2VsMWxaNjhiTXJ2UnB1cWVybDZGL3QyalJQ?=
 =?utf-8?B?NmZ0a2Q3OHZ2Y2k1RGRUZE1CSUxGZzU4WFN1TFc1L3pQS0RxamlJSVJBaEZP?=
 =?utf-8?B?Q25FeU0welpaV0JuKzFlOHFzRnM2aHBydXZKNUhzY3NUcmU4ck1uS1hIdHhM?=
 =?utf-8?B?T0tCWDNMRm5CbUtwc2cvN21JZThsWDhEMk9TNUlpdU90UDVPYzJBdkxkVmpJ?=
 =?utf-8?B?VmhCMDRPRGlMa05iekZTWUNmajNISUtUVHV2ZGxoMk5qaDQ0TXkyYWRlZXZM?=
 =?utf-8?B?aExWcUlBS0RodHVSMzNHUW9uUTYyMmIwazJTMlJRYXRzYVkxQ3A3cnRhcklP?=
 =?utf-8?B?YjhxUkF6UlR5K2FpclNOR2U0U2NVNktzOGtZeFQxQTRPUCtSaXhEclc5WjBI?=
 =?utf-8?B?S3FBRWNnSmU1TE5UMWt1WjRWcldTTTUvbDc0ei9NS2ExRk1xVUplSjY5U3RS?=
 =?utf-8?B?aXFCVWg5ZzZMQ0tCWGxiSTBFeGVRTkw4YlE0OVNXTlMwRmwwWEhJNG1IT3BF?=
 =?utf-8?B?aGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef15058d-18ec-49ef-132c-08dc7ee55d32
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 07:11:15.7905 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NYv1mqRWGBSi+ho91V5bpDTK2lfTYMZAj79+PwGfv5Eszy0OQ3CZM1Y25g0r4ktufzRUWcl+ecX83JnU85VLV9pieXlr2SPIoGWAelZalok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7809
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716880281; x=1748416281;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0eoIuVk8eCo19K1gwji9LHVAKcIVCNcLh7j07BSA2aY=;
 b=C4phQjZcVrrKW5NyXxINsS1z8uFukL10mJRptQ7ymWFDRZvH1g66Cifc
 O2x4ViyuOb1Cu+YmmajAfZze4M21qCgmX3lv+Y+sJ12Q92kLoPwtieKIW
 5m3zuYuJ++HZ5DdQaOHU2ou/hH6vTYbTC2rETTWjtritcalnfqBq1lxZe
 P67e9lSzqTFSgBSpHqTrfkDAG3r+IUr/5ByOF123QF8QHbGLK0XcXi+pu
 +IlRMW89BFhyKc5SZGu8c8+RbSG1GI2XGY0xPMjSyMSN9NU4uG8+4UCu9
 Dd1VIqtm8jLC6bmkOTqItBaI2yP8r7PHDIEJRnt2RwNpDA88gnLNV3qMU
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C4phQjZc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 05/15] ice: allocate devlink for
 subfunction
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/28/24 06:38, Michal Swiatkowski wrote:
> From: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> Make devlink allocation function generic to use it for PF and for SF.
> 
> Add function for SF devlink port creation. It will be used in next
> patch.
> 
> Create header file for subfunction device. Define subfunction device
> structure there as it is needed for devlink allocation and port
> creation.
> 
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   .../net/ethernet/intel/ice/devlink/devlink.c  | 33 +++++++++++++++
>   .../net/ethernet/intel/ice/devlink/devlink.h  |  1 +
>   .../ethernet/intel/ice/devlink/devlink_port.c | 41 +++++++++++++++++++
>   .../ethernet/intel/ice/devlink/devlink_port.h |  3 ++
>   drivers/net/ethernet/intel/ice/ice_sf_eth.h   | 21 ++++++++++
>   5 files changed, 99 insertions(+)
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h

just two minor nitpicks, so:
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> index bfb3d5b59a62..58196c170b1b 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -10,6 +10,7 @@
>   #include "ice_eswitch.h"
>   #include "ice_fw_update.h"
>   #include "ice_dcb_lib.h"
> +#include "ice_sf_eth.h"
>   
>   /* context for devlink info version reporting */
>   struct ice_info_ctx {
> @@ -1282,6 +1283,8 @@ static const struct devlink_ops ice_devlink_ops = {
>   	.port_new = ice_devlink_port_new,
>   };
>   
> +static const struct devlink_ops ice_sf_devlink_ops;
> +
>   static int
>   ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
>   			    struct devlink_param_gset_ctx *ctx)
> @@ -1422,6 +1425,7 @@ static void ice_devlink_free(void *devlink_ptr)
>    * Allocate a devlink instance for this device and return the private area as
>    * the PF structure. The devlink memory is kept track of through devres by
>    * adding an action to remove it when unwinding.
> + *
>    */
>   struct ice_pf *ice_allocate_pf(struct device *dev)
>   {
> @@ -1438,6 +1442,35 @@ struct ice_pf *ice_allocate_pf(struct device *dev)
>   	return devlink_priv(devlink);
>   }
>   
> +/**
> + * ice_allocate_sf - Allocate devlink and return SF structure pointer
> + * @dev: the device to allocate for
> + * @pf: pointer to the PF structure
> + *
> + * Allocate a devlink instance for SF.
> + *
> + * Return: void pointer to allocated memory

nit: it's not void; you could add "or ERR_PTR in case of error"

> + */
> +struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *pf)
> +{
> +	struct devlink *devlink;
> +	int err;
> +
> +	devlink = devlink_alloc_ns(&ice_sf_devlink_ops,
> +				   sizeof(struct ice_sf_priv),
> +				   devlink_net(priv_to_devlink(pf)), dev);
> +	if (!devlink)
> +		return NULL;

ERR_PTR(-ENOMEM) would be more consistent with the other error exit path

> +
> +	err = devl_nested_devlink_set(priv_to_devlink(pf), devlink);
> +	if (err) {
> +		devlink_free(devlink);
> +		return ERR_PTR(err);
> +	}
> +
> +	return devlink_priv(devlink);
> +}
> +
>   /**
>    * ice_devlink_register - Register devlink interface for this PF
>    * @pf: the PF to register the devlink for.
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.h b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> index d291c0e2e17b..1af3b0763fbb 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.h
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> @@ -5,6 +5,7 @@
>   #define _ICE_DEVLINK_H_
>   
>   struct ice_pf *ice_allocate_pf(struct device *dev);
> +struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *pf);
>   
>   void ice_devlink_register(struct ice_pf *pf);
>   void ice_devlink_unregister(struct ice_pf *pf);
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> index 5d1fe08e4bab..f06baabd0112 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> @@ -489,6 +489,47 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
>   	devl_port_unregister(&vf->devlink_port);
>   }
>   
> +/**
> + * ice_devlink_create_sf_dev_port - Register virtual port for a subfunction
> + * @sf_dev: the subfunction device to create a devlink port for
> + *
> + * Register virtual flavour devlink port for the subfunction auxiliary device
> + * created after activating a dynamically added devlink port.
> + *
> + * Return: zero on success or an error code on failure.
> + */
> +int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev)
> +{
> +	struct devlink_port_attrs attrs = {};
> +	struct ice_dynamic_port *dyn_port;
> +	struct devlink_port *devlink_port;
> +	struct devlink *devlink;
> +	struct ice_vsi *vsi;
> +
> +	dyn_port = sf_dev->dyn_port;
> +	vsi = dyn_port->vsi;
> +
> +	devlink_port = &sf_dev->priv->devlink_port;
> +
> +	attrs.flavour = DEVLINK_PORT_FLAVOUR_VIRTUAL;

(just comment, not an issue)
we have (among others):
198│ enum devlink_port_flavour {
199│         DEVLINK_PORT_FLAVOUR_PHYSICAL, /* Any kind of a port physically
200│                                         * facing the user.
201│                                         */
210│         DEVLINK_PORT_FLAVOUR_PCI_VF, /* Represents eswitch port
211│                                       * for the PCI VF. It is an 
internal
212│                                       * port that faces the PCI VF.
213│                                       */
214│         DEVLINK_PORT_FLAVOUR_VIRTUAL, /* Any virtual port facing 
the user. */
216│                                       * is not used in any way.
217│                                       */
218│         DEVLINK_PORT_FLAVOUR_PCI_SF, /* Represents eswitch port
219│                                       * for the PCI SF. It is an 
internal
220│                                       * port that faces the PCI SF.
221│                                       */

from that I conclude that _PCI_ ones are internal, and you are adding
user-facing port, so your choice is good, even if there is one with SF
in the name. Perhaps the enum should have this piece of documentation ;)

> +
> +	devlink_port_attrs_set(devlink_port, &attrs);
> +	devlink = priv_to_devlink(sf_dev->priv);
> +
> +	return devl_port_register(devlink, devlink_port, vsi->idx);
> +}
> +
> +/**
> + * ice_devlink_destroy_sf_dev_port - Destroy virtual port for a subfunction
> + * @sf_dev: the subfunction device to create a devlink port for
> + *
> + * Unregisters the virtual port associated with this subfunction.
> + */
> +void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev)
> +{
> +	devl_port_unregister(&sf_dev->priv->devlink_port);
> +}
> +
>   /**
>    * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
>    * @dyn_port: dynamic port instance to deallocate
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> index 08ebf56664a5..97b21b58c300 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> @@ -5,6 +5,7 @@
>   #define _DEVLINK_PORT_H_
>   
>   #include "../ice.h"
> +#include "../ice_sf_eth.h"
>   
>   /**
>    * struct ice_dynamic_port - Track dynamically added devlink port instance
> @@ -34,6 +35,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf);
>   void ice_devlink_destroy_vf_port(struct ice_vf *vf);
>   int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port);
>   void ice_devlink_destroy_sf_port(struct ice_dynamic_port *dyn_port);
> +int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev);
> +void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev);
>   
>   #define ice_devlink_port_to_dyn(port) \
>   	container_of(port, struct ice_dynamic_port, devlink_port)
> diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> new file mode 100644
> index 000000000000..a08f8b2bceef
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (c) 2024, Intel Corporation. */
> +
> +#ifndef _ICE_SF_ETH_H_
> +#define _ICE_SF_ETH_H_
> +
> +#include <linux/auxiliary_bus.h>
> +#include "ice.h"
> +
> +struct ice_sf_dev {
> +	struct auxiliary_device adev;
> +	struct ice_dynamic_port *dyn_port;
> +	struct ice_sf_priv *priv;
> +};
> +
> +struct ice_sf_priv {
> +	struct ice_sf_dev *dev;
> +	struct devlink_port devlink_port;
> +};
> +
> +#endif /* _ICE_SF_ETH_H_ */

