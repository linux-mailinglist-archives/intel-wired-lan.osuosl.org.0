Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COsFL+KxzWnJfwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 02:01:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAE7381D83
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 02:01:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BF0F605C7;
	Thu,  2 Apr 2026 00:01:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dESCvIBEZ9N6; Thu,  2 Apr 2026 00:01:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E52CA60890
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775088095;
	bh=20LVfai+ogqZorhIKOQiccjkiQIJmSahAUFmJ9a/jmw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qMXAAp2NIoON0jwU+uBUGWIfbLQkNNpZuZb7IFbqVgmb8pbK/KNuET6fHz6Tvokfx
	 MaqP+qh41bYesAdQZCQR7PPt2qQfo+NTeOTZaQCHyORN3i24dmOaA8+fnKW+AQvUmG
	 banDwEg/7WnMWGeGILhFBNZrWc9G2n7T9dabPdXw1hpO+9qQHQimcgcklPD9EthRDd
	 qykbK/25LZrSJn33XLiWJpGxgMjHWLrMRzPK4C2E4s9a+o9VE9kaHifRqrVDGRxtjk
	 UgeSl3G3K0y8jxcbn2CxoGla8r4uEzwjoI6ZKlJF+BvEjXga9cacxCKUgKUVyu98V3
	 moso+3c0dczzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E52CA60890;
	Thu,  2 Apr 2026 00:01:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E1DD2A2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 00:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 100A440DDD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 00:01:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JNSmjlvk9J4Q for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2026 00:01:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4ED8340A9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4ED8340A9C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4ED8340A9C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 00:01:32 +0000 (UTC)
X-CSE-ConnectionGUID: bSVtw7SHTPOVOaPbMPp1Dw==
X-CSE-MsgGUID: 7iZrABudSRSAq4Cuwt3lAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="75858929"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="75858929"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 17:01:32 -0700
X-CSE-ConnectionGUID: ZdhhSmCYTwm9UggMp8FDXg==
X-CSE-MsgGUID: laEFqcIgRQuTvUygjha4jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="222459199"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 17:01:28 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 17:01:28 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 17:01:28 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.19) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 17:01:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BpR/awPQLt6Qla21Rqfq64lf2hMBuGM292bvBv77ouAG69IBG0Ul09z5SLLWQyWJvgGwQ2jC0TMQ5fxUSe8YkmyQFEOdRsPbLd7CmmIjJxvWnyE/8BAX9ZT6rlbrZU/6QCi7nxOCqNVe3AiIofjzvdmqFjADhQGLKzigV1a/gX1yGBolbpqXLa9d01XdnRfe5Y2bjgx+CvL8Sfvf+Fhe5+IdaC5/o++t3hSF/GjuneI2JEfI2uALtMqsJay9rK9WT9yRWa4QSYgXsmHd2Pij2d3dpSRmVVupENGhJE80G6UIbbDvxw9obXjdz/V/CZJP+uNZ7uoHtwErTablpq/TuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=20LVfai+ogqZorhIKOQiccjkiQIJmSahAUFmJ9a/jmw=;
 b=NELWCxX4/mhZINmpEue0jhRf5SjLiZE7D8llUbfzF9vKp1+ep8hMovoftDLnZhb0xYmNed97S3dBS88xpI44Iq3MNq5jJHHID1FOkKga0X/xtVBPObCb224hOCfvlP1OKOchQlz6ESmf2NIj/bWrkne7JJJje4ejXn/T1FUrYrMMHAlrJmYZUIbWSGsp3c3hm2IpwbEunZo4wC/UU9PnL2yIV2S7v5QLJXob9kZr/g8zGeGh2JoTsvE8cYUjagRIvJG/TZmwlNrN7JdAhAUhivQqCQUyDkzKd8FI2EDz0vM/OB3ngJ/RMQciQAiol6XFz9i1zlGydZgNkFp7+3Tt8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 DM3PPFF28037229.namprd11.prod.outlook.com (2603:10b6:f:fc00::f5f)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Thu, 2 Apr
 2026 00:01:24 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9769.016; Thu, 2 Apr 2026
 00:01:24 +0000
Message-ID: <eabdda31-839f-4812-a7d6-cd94f8e7850a@intel.com>
Date: Wed, 1 Apr 2026 17:01:22 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>
CC: <netdev@vger.kernel.org>
References: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
 <20260327072236.129802-3-aleksandr.loktionov@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <20260327072236.129802-3-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0140.namprd04.prod.outlook.com
 (2603:10b6:303:84::25) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|DM3PPFF28037229:EE_
X-MS-Office365-Filtering-Correlation-Id: a4310a37-f852-4d9e-fab7-08de904afac5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: RR0367q+1mmN9hsLnk/visJKWadNUemfz6ZgdW8EVT0yRl0ljv+eb1EAoM5/41DjF7Mat1ccVAo2YV8YsNJP94HkVALMTJcTKTfS4LAa9kCFU/rKWhk0O2XjjQOGdF2+6qA+3LNRxjWPfpo81f3zoM7ggJiURL7WheK/4FYWOYFnd1puEPdYfv19+GXQ/6CuBw+dFWDVIS767be8WUTVpV6lrU5/ygG+4jhL90AlPP9T3gXaP8Y/SFVKRkGg4KHrnXxG4ppN2MaQ2dSfWtonPoahe2Xb/UFAJnzZepV9GIkYq2Ge8kfWRQ6l9s+e1/GwEt7H8XcdLu0ZfxviSgTVpC17y5WBMnzhRNohBRIziKaeIwGQhKBf3Ti9JmTnPrSRd+U5hRRVnBMOUw4GITT92ccK69F430TRTu5Q6KxVSmaOWJnlZP/i7RPKCgYNoYqm9GBUScAZDRBDxK4Weti65Ot2AS4q5EorYCXBiYj4Z5J+PaXs0Ed4BqxyXso/Sc+6yPGooiZ0wWP8emGwJXv24eLyb6o5wGRR6HeYhZbLmuUB98yn2PSoww7MrMLI+/hWTymiyP+uZYFqhI99T4Bgt/kVJgowadD665ZbMtr1I4LXIEkuTtdOrJnevBswiWzetF8i7D3XwCFYpP+iVYTasikgEes1dD73tfp63LQLG7f1LxBnFCL1lUpSawK+SAXcykHIHG+NcFSjLxG8fGEbulIHLSIiUOypTDR6Rm67yWg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjg4aVZmeDdiU2JXSWl2KzhWbTJYWC80Vi9kRDBERVVqenN1UVhLampyK015?=
 =?utf-8?B?RHU1enFkSzlkSDF4a2Z1d2FqeHlpeDJOM3pqMlNCNWIzeG9PcENsWmw4TGlS?=
 =?utf-8?B?Q1dZcDlwRC9yQkFCZXNRNlRjck51Nk9PMEM2b3NkeWk0QjNXeWRMTVhML3cr?=
 =?utf-8?B?YitscUQvcTNmUjdqcjRYQTNXMjVlcUp2RVpwSEJQSEgzWXJWVGxiZ2I4OFBM?=
 =?utf-8?B?cGxpYVUxRWNBSHk0ck9rVUo5TTZNNEZHeWNkRVRSbVpqZUFCeXBtSmJOSVNw?=
 =?utf-8?B?WFdMNUI0TVFRb3BLdlFwdlBJaFk5QU0yaHYwUjRrOVBNcDBGbHE0aDdVV3pS?=
 =?utf-8?B?d2xvOFV0MW4vRGV2RkYza2JkUFppVTZJNktMc0NOcjI0RzQ2TXErdWpJQSt1?=
 =?utf-8?B?aFJRcnFBaC9XM2ZoUTcxTjBvd3dWaWFCOEdPSEVpd0xiaXQ3QnhPdXpCNjJ0?=
 =?utf-8?B?K0dDWXV6Tlh6citreVgxTGkyTWtZaFRPcHR2VXJRcHMwdEF0SW5LSEcrMzBY?=
 =?utf-8?B?UjhWckpzU3dTbldHVWxwOXc5MkpyZm1JL3JVSVN0ekhoVVBEN3JJRVp6S0Jh?=
 =?utf-8?B?L1QxVklYbXNCQ2Jnc1BFdnVaOGlpcjJwWWJ2M3h4ZlpLamlWaEt0a0pDVFFZ?=
 =?utf-8?B?dUp0cTNWa25xcGlQaE9HbE8yU0JJdmZYVXYyV0hSdUxtUkROM1lBd0Z3NXc3?=
 =?utf-8?B?VVBEOGIxQWNUU2I0VjVBRi9uWkVveUZJKzRTSDk4WHNYbnJaZUEvT2cwUHVm?=
 =?utf-8?B?QUFzdnRHZFcvaXQ4K3pQVGJxYXBDRDVLOWpIcEZCcGdkVjRNaG5xL0p4Q1oy?=
 =?utf-8?B?MU5iN1lTMS9yNXRqUnlGUDA4SHo0Zlh6ZFN4ZnNDMVBtMklhQ1o2KzRUOXh0?=
 =?utf-8?B?TWRLd3ZnQUV1YU9SbXNDd3VPU3BzOG5WM3l5L2JodithSElaS3BDUDdiK0RO?=
 =?utf-8?B?bmRaMnlJamNuUVVuVnM3eFNRSnY0T2ZzNVo5QTl1d1g5dEdab2tLQUtZa3Y2?=
 =?utf-8?B?OUdDWkIwMzJvb04wV3J4UzFUM0loS1hjQTNoVFgycFFYeXZxMDZpYnlMai9y?=
 =?utf-8?B?RVdCMXhWdXcxNjB6ZGRvVWhrUXNMUXJPSUNLS0J5QzhHL0FGaGNSRU9EZ1VQ?=
 =?utf-8?B?VXVkOHZVRVY3SFptcEJ6S2VCaXQ3eEFDbnk1eG5LSnRkOXprZE5ZSkVQME9I?=
 =?utf-8?B?aWNPRlZnSzdhcEZtaVVCV1V3ZHRTMERsZ0swRUlqNnNINGt5bm8zcGlqYnc1?=
 =?utf-8?B?QTBieFNtSGZ6dkJnS1U1RFliVEdrK3QxTDF1QytNK1cvdVhtVDZHWkpiYTFI?=
 =?utf-8?B?MkVIM1VneG9jVDZweE05ZS9SNFFoT3hEUThDVWduc0hHZ1B4S1MzNGFsOEUw?=
 =?utf-8?B?dmhpOTBPaWNsWVM3eFdSaEhyRkR3Sk41NVF2WUFjdWx2NHhDS0drSWhVdHRW?=
 =?utf-8?B?cUgvTit0aURtNlJ3Y0xwMzN4bjFpejFHRWYrcTkveWRBbDNaZzA4cDNBZVhT?=
 =?utf-8?B?d2g5b2Jad0VMVSt5NzZZMXprTmYwYUhCc0YxOUowQWp6VXFFN1JSbTh1eUdu?=
 =?utf-8?B?aXdqcjhlcHdKODY1RzhQYW1qUjJZTnd0cFRQT0FGb0dnTHBscC9jTFJrQTMy?=
 =?utf-8?B?WWh6OUs2R2s3QXB2azhxMWczaWFncWdoeS8yeG5jZ05qTnNpRCs2eGFCRWYx?=
 =?utf-8?B?Y1JyZHR0TE1oUzVHM1BnWGcva2J4c3pzaytmaWNNLzhkVHptNzBlbUpFc2h5?=
 =?utf-8?B?NDQ2enBkQ3kvaHFVa25CcUZOY2xLMXZES2RGL0VSRVdNMnNqQlp1WnpnaGYz?=
 =?utf-8?B?OTY2Y0dFeVJPVHoyVWtBNUtYVHpmaXptMmI1S243bmZ2UEs3ZkwvMlUxMEMr?=
 =?utf-8?B?Mmg2VGJwWWtUSGNyNHpnWWY1MGh6Q2crNG04NTFKaDhuTEFMR1B2QW5ldlJX?=
 =?utf-8?B?aTNLbHkyYlRuVm5relh4c2tMQmMyMDZzSHZYbVJzODBuNGlPUGhGM2E4eTEx?=
 =?utf-8?B?ekhPb2J3d0hEMzNqMHl1cFZVbVVoYTJnSjB0dzEyNnl6YWFMVjNUNTgybFg3?=
 =?utf-8?B?cHF6L2U0dXJqelNGYVdiSldIYi9qdDhlK0ZFMlpTT1N6TnIzUUVCbE45SWxW?=
 =?utf-8?B?b0N4RDc1MlBGUjRxY1hVdnRxNFV6YVVhY1pZNW4yZWRXa1JMd3pNZlduK25G?=
 =?utf-8?B?eWw3bEljenFScFNvdVEwcXRLQzFNWm1PTUlUK2xUenhzbVBqZU5DYkRmdDRr?=
 =?utf-8?B?b0p1WGJ4aEcwVTIxcVpnaTdsY2J0SkVQVmJPVVpMaTZ1N0ZHYnlRTVdJd0x0?=
 =?utf-8?B?Zy9nd0pJbVZkQ3hWL2F0WjhqZXA5WjJ6UDZEN1pvTzBTb2tzRkNvbjhFeEkw?=
 =?utf-8?Q?Zcu6pugtVOZ5/YUg=3D?=
X-Exchange-RoutingPolicyChecked: ac69PQ8pzXDqMAmtqh3Fy3JXuwTBFXl3YBmlTAJyyXIi2KprV9tfneu8a+NWOIb7WcPrJcM26yX4yRY/iylDlO2hKgW54MrGTjb8sC/OoTXrK0fEj+coyqgDPVOjR/Xuz4/+8SnjjBpsuH0mwfNI6K1UruJjenliU56vdOtTZpLmwZE7fXn0dR1SjnI13Z0ulCVjtsYnkrxsyu/rI1OO+YRABZuxOft0WdMboaAhx8/XuCeTd14+vlEZPbFSK0vY78RfwRxOHbLh7jrad6CBDTB0fxr77WPc3ZIBB7jLTsRAszTdrVqjVu3LGPLaeCLSaN4yXNlaC2O0irL83hMBqw==
X-MS-Exchange-CrossTenant-Network-Message-Id: a4310a37-f852-4d9e-fab7-08de904afac5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 00:01:24.4284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MMh9oCe6Gf9N0BGO+Cmt3g4Lqch17OLvrUdeuhaz6kRVUiNqmOTK1MmjT0Cp+LFh8Hx8WduaCVxO+UD2FJw8WxpBm7nIVzPHducrGL5kiQY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFF28037229
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775088093; x=1806624093;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MiPluI1D8auqekmX4ui7rRYlhuTrVGSzpvjMAl9dyfs=;
 b=b0V44nwSxSVUatSacpVDFx98zW15oHj1zLzmfXSE9c/8Ox83k4iiuymJ
 LYGMV90w9nqrDRvUzbjdkTwApYwShdnuD096eZV5cYRCmyQQwUyDiPd/N
 zL+pq/zQ9gukjPOTIeI/jew7G50Iu0a6CZx4e2GUNNOoWZMoKDYP31KEG
 AlnCxWDHdpfGXPAjbh9Yihnc0m3mL2mxUQgz9dWompvOTv29Ddo1/yGSV
 A+CkpQ84onLL+jF+J4W+4D7MrpS7htUOjoKQweLhCce804Hs753JCxSnc
 10SFiGVn311WN5u+/8z+ackchXdovpEoT+Imx5TdwrynLfKyIcVinOYCx
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b0V44nwS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: check cross-timestamp
 timeout bits
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 0CAE7381D83
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/27/2026 12:22 AM, Aleksandr Loktionov wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Polling for cross-timestamp active bit depends on HW scheduling and
> actual timeout may happen before the driver finishes polling.
> 
> Check cross-timestamp timeout bits to ensure that the driver finishes
> the operation earlier when HW indicates timeout.
> 
> Fixes: 92456e795ac6 ("ice: Add unified ice_capture_crosststamp")
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> 

Waste less time once hardware gives up. Makes sense.

Acked-by: Jacob Keller <jacob.e.keller@intel.com>
