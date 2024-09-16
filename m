Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53302979C83
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Sep 2024 10:10:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 959278175C;
	Mon, 16 Sep 2024 08:10:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zOk30kiGdhpF; Mon, 16 Sep 2024 08:10:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D06A2812AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726474222;
	bh=ABS1T4iY3109+ltvAUgbNDofJgK421ZaoDAOlAc4tCY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I89Mn/SYMVQqZRzM4lFCqu9464bRlUunvtzm6UanqNMEalvPvQZBK1dYfUv/fEdCi
	 TJOBysIZcFbNsRZReUoodbXHKl29m+YLqFjRghmkU7sAq67TaFSAU17KBaoYzDBUu7
	 IIkKEPOO1gv2oUQAUBuJAjIClAtX4qK6Aqu16ap0MC3zGeT12qXB9gsgqzSPlwYY3/
	 4b93ZamxkT0BhttVPAYZpsMH4I6Q03hYO/C/shV52zgxDFWWXrFJyjSaV8XV8KCGkF
	 XdOqN2Yet3F1+PkN4aLbQCWvhxaN57p6JohV/HNFovJfrxq1Gmqt9NpjnovRVO9E79
	 9f+FxSO+a5ptQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D06A2812AE;
	Mon, 16 Sep 2024 08:10:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3501A1BF311
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 08:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E81F4063E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 08:10:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rLLMH9y6ddk3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Sep 2024 08:10:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 14215404CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14215404CA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14215404CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Sep 2024 08:10:19 +0000 (UTC)
X-CSE-ConnectionGUID: F2ZE/H1aQ/2FlUJtFIuhPA==
X-CSE-MsgGUID: qq/z3HbtTY2AfXp8XZLOyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="35864834"
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="35864834"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 01:10:19 -0700
X-CSE-ConnectionGUID: LneMTPEIT/yby8iKESceNg==
X-CSE-MsgGUID: iHll+AuUR+C7GT3PF7g4Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="69559338"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Sep 2024 01:10:20 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 16 Sep 2024 01:10:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 16 Sep 2024 01:10:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 16 Sep 2024 01:10:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vki8lh25tZrziYsmadIlXaM+oT1TVLvLpsXdGpMxvXmY4Q30+OQ0GoyFzoZPLS7e6A+M+SyAUOQ1IcXgNlF+Mi3riU8c1kfIXq2ktj+AyNABiXvorz0VMGL6N8qkJV03f7H0MWhlkSpclCGbKxAVffhWNz9sY0+aT7Yc+7+dgyuscWSF/5OpIQpPPvUnr7Aq8qEhP4HWbyrDY9Mi1GVkMwDV4fvubJYVeFlN+l0W9X/cunjw+Tk0J9gXpUmC+RUtLUdixcQR6kGqEZJTWnrYxTVi7DKA2S7QIFhMKBIoS+kdBqM1vGq3ui0kqwqLU1lwVadlnIaCC7rwuWJl68kXug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ABS1T4iY3109+ltvAUgbNDofJgK421ZaoDAOlAc4tCY=;
 b=a9uNrS8tz6WLsm/zOzzuKeFHdxs+99XVffJfKTbnjAmmsMLsbm91XtPshDfFWi2sTDJDe+l+f5Q3o1QWxJhmqsVI7N5PFkrHkgfiXbJCOgtBR1tE2DnMG77+V/8Uj30yD39WZPs1IN7xbTM0NRfUJhGu/lBOUreCZuwfwLEj2JKN/rrECjcV1SFrN8Kit/0I639zyZKxfRVhFPv1H2wdklfPQy28bGnHIx7tpicpoKG7SJOIZ3exK/ATMXlyMbmLZQm95jSFw84OcrSoCq7p867WAZYQucH84FhYzFucwNHZK7wYB0iT0rIu7NqsYo0pqqF6nGzY66OwSVBobw7WIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ2PR11MB8423.namprd11.prod.outlook.com (2603:10b6:a03:53b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.23; Mon, 16 Sep
 2024 08:10:16 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.7962.022; Mon, 16 Sep 2024
 08:10:16 +0000
Message-ID: <c9c582a2-2d72-4258-ad67-8d159cf256d6@intel.com>
Date: Mon, 16 Sep 2024 10:10:11 +0200
User-Agent: Mozilla Thunderbird
To: Qianqiang Liu <qianqiang.liu@163.com>, Ahmed Zaki <ahmed.zaki@intel.com>
References: <ZuQ6aCn7QlVymj62@iZbp1asjb3cy8ks0srf007Z>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <ZuQ6aCn7QlVymj62@iZbp1asjb3cy8ks0srf007Z>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0016.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::12) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ2PR11MB8423:EE_
X-MS-Office365-Filtering-Correlation-Id: ffeda8f2-9266-455f-3100-08dcd626ff2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RzVNaEtkUjBuaVFha0M4all5TTdlekJNaWNhQTRSa0FGVWYzZ0thcmR1a2du?=
 =?utf-8?B?YkJLckQ1NVYyT2puMlRzZjNydk1Kd21ZTEhuQ1QreUczUVV1UTEvbDU2VzdY?=
 =?utf-8?B?bVBQSUordy91aVNnT3VBMDQreWdabU5KMVNCQUgxM2htQkdjbDZUZWxRSUk5?=
 =?utf-8?B?bi9PT0hvY21ndWhNSmVCZDdHR0EzZGViSmo5TUQ1WTVOQ1BCczBJenoxNHpu?=
 =?utf-8?B?QW1QWWJDUVFmcERVM1UxVHJKelNPZjNjS1FUYmRubGNkdEhtQ216MlNUaGlw?=
 =?utf-8?B?Q2hTbk1hQ0pSelZBcWh0V1dCam5DaS9heno1UHFTZytxSzdreWhLU0sxUG5N?=
 =?utf-8?B?ZVZ3ZWxJY21qNWdVY3M0QUsyTzEyN0JOeURVaVQ1SVd2QUdqOXNreHRUN2tQ?=
 =?utf-8?B?bGVxNmVuZlNEL3Jpdnpjck40WFBqdkt4VVVNaTRsQmMwYURWbEhQaFVmdlVs?=
 =?utf-8?B?cHFKRUdhNmhvSS9oYmtTaVFMOWc5RXJROVQ0S2ZLSngxT0V5MXdmR21Gdllv?=
 =?utf-8?B?NjBlcDV4U1RvaG4zVWd3NDhJdC9Nbzd5RWwyQjM3ZWg3NDV2cHNsV0hZekpv?=
 =?utf-8?B?eERtU2pqbC8yRTdRNXczUHFVSE9SMDIwTnlnUG5FUDlPYVh4dmk1RWttRlI2?=
 =?utf-8?B?cjFTWFkxRVg3b2R5WHJsTFV0SGlnVG8vNTJiaEQ3ZE5jTC9WMFdrTUhiSCsw?=
 =?utf-8?B?bjZDMFRDdkpTMHlBM29Ib2p4bS9CUFdKS2FyTERJdW8yQm1DTjRZSWo3U3Jj?=
 =?utf-8?B?TGFzZHB5dFlnblFXM1laMlQ1WVI3Vy9EREZ2UmpYVDlvaFVxaWFIU2R4MkF2?=
 =?utf-8?B?V0JUc1lNUHQ5ZVd6NUJEQjVCOHFXZ2o1VFdnWU1RNFZVTmVRbVBxa3lTWTI3?=
 =?utf-8?B?TTA4R0R6cVlFZlkrUjdLWnB1VHZISmtyaklKZEJZTkdTSjlwRC9NVUpEdFFC?=
 =?utf-8?B?TzBIczZzRlA3bVE5WGlheFA4VngxclorR0paQkR4MDRCbHBSbjA1MCtSczNQ?=
 =?utf-8?B?ZU5RUFB3Rk5EVUppRGN0VmRBRkU0cTVmK293cGRYMFdKb1dxUER5eUh4NlIr?=
 =?utf-8?B?eEY5cU04dm05QnFkQzgvaHNrMkRDbWFDd3VFT1BMZ01mWW1hd25nOEFPcjNq?=
 =?utf-8?B?aHFqbkFXU3VscnVnN1p6Mlc2N2RqbEF6L1NpYTl6bFc1c1JOUEJRUUtKNStP?=
 =?utf-8?B?RDVxdE9waFVJQzc5YitJRXRzeVluU3V5NWs5QmxIbmJZYWg0TzJUL0daYWxC?=
 =?utf-8?B?N0xJMGNENyt1cXI2SWdZR3h2dHdpQVNRWGM4SFNDWXJkVVplVzF3Yk9salVU?=
 =?utf-8?B?ZjBnUC9BWXdEbnVYeDFQZm9qNXFNdUoveWxIYm4yK2NwZ0VoNkVjbTBXbGtX?=
 =?utf-8?B?ZllKU0hqUVlvbDJpWFkwVVdpWnNRaXBlSGFCZzd3V3ozNTA5aEtOczA0Z3RV?=
 =?utf-8?B?cmc1MWpOa0RFa0Zpb3ZOb0JaYUlWeElZcTcwek9kd2tucnFGc1NUZU1QWnA2?=
 =?utf-8?B?aEZtTWFLT2pjZCtZb2E0M0FXbmo5Q1M0b1gwZUNoSG81b2lTaHYyaDFZdmh2?=
 =?utf-8?B?UFgxcWpsaER0UStZUTd4MElFVzRrOTdwcElZblQvVnN0WjNIZktuVm5qQ1Rm?=
 =?utf-8?B?eHRXeDhwcGlVUTk3UW9FQWpzL2k4SjcxU2dvbVZWMHl0b1Z1VHM2TmJQMUVp?=
 =?utf-8?B?NXhpUUcrR3FmY2ZoeW0rOWFIY1dwbTF3ODR5ajJUbzdoUGc5Z3JBTmtLVXI5?=
 =?utf-8?B?UjJkRkhGYzI3WFI5RVZnR3BSRXVJL2dqM0cwYzFoSElvc05XSFVJWnRsenRr?=
 =?utf-8?B?UTNvYVlPZ2t4UFlQUW1UUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2VYRk1xWXA4N0tRelNtTC9QN25leG5rZ2VRM1hxb0w4dURRQm0zazN4YTgy?=
 =?utf-8?B?S0l3ZDlNY2VJM2FuVXB6L3B5ZXdZbkZ2a0NJVUNRNmcxckJsdWNTUDN0Tkxn?=
 =?utf-8?B?SWNqRUhpcHg3MVU1TXpyR2ExTm5UOTBYTUNzeEY0a0FUSWxvVE9ETnBJZXEy?=
 =?utf-8?B?SHdTdTZUVkExYzNhUFpvNjA4MExETkhZVHFKWFlCaUN0SnZDOFZkYkdSd0VY?=
 =?utf-8?B?dWZuTkN2QXhqeWE4RElOa1Vjb1ZGbzFJQ2dVNzNXdFlSeW9uMDZDTXdKaXRT?=
 =?utf-8?B?eUdFWHVQZVgrYmJ5RlNwQjNodm5maUVLdWROeDVIWlF1ZTdEMFRnM1ZXRDRz?=
 =?utf-8?B?RXhXUnlrbFFqZys5Z0ZMOHNxWkV3WjQwZDMwUXFxYUtNRHhwYkRiRi9hMVBI?=
 =?utf-8?B?cm5ERHM5MkVyblBBT2pCZ0xaUWE2NzlQSnpuYTBaQnFqc001U2w0RUpOVnNG?=
 =?utf-8?B?SnRWMUF5cVFGbkgxcHFBTjdncDI0U3FXb3JLRjN3aVpLTDNFbUc1MWhoS0lF?=
 =?utf-8?B?QmV5Q0FWV3gxOHhHV04rak1maDA4cHNucGc5NjFhZTdKRHFyNG92UUtJRExX?=
 =?utf-8?B?T1VnWmY1L01CYldRR3JmQTQrenVHU1ovVjFWa3BhanZYVDNaSEI2MEJ0QnhX?=
 =?utf-8?B?Q2Y5QS95NzBLTFVWNlo0RTFEN1VkcU9WQ1NNZzBmU0ZlWUVjaUhubUxYV1VZ?=
 =?utf-8?B?aVdGNzhpUDRDa2lxak1EN0xpbmRDOUsvMDI3YnZlUG45NkxsVlZTQlZ3Qkdh?=
 =?utf-8?B?RjJuTUNTSTBUOEJxNTZneVh2MGd5ZitvZmg2bXh5S2xnTnRjV3d6TVFlUkFG?=
 =?utf-8?B?YlZQc3NMK2o0UUs2MEsvaFNxQ0I0YVRnaUVyclBtazFyRlZpTzBTODEwcjVK?=
 =?utf-8?B?RHoxZXVkb3NGVGRmdnhQcUU0Yms0OWV6L2dCSFA0WDJFZVUwK21JUXpXK3hJ?=
 =?utf-8?B?SlI5MllHYk9kM2NzVld4Y2NLK2d4YTNhWTFkYWpGN0ROVFBJc1JJZHVQeTJR?=
 =?utf-8?B?WUJQdytaRlorQUUrb1VvbjMyQkRmaXpGTlhJTjM3TE5MYkxzN21SdVJaT0R1?=
 =?utf-8?B?VnV1REpLUC9FeHVUSy9TMnpKRGJnd25DQmVMMGhhNE0yN1M1dENMYnM4UUly?=
 =?utf-8?B?WDBpbFNLWmlYSXF0M1Q5SjR4Z0Jsemsxam1VLzcybncyZVpPZXVwSE0rcjlO?=
 =?utf-8?B?ZzgrQk5zMnZaeWFiWDhTZUl0T0owbFZQQWFaaUVlbGlTWUhVQ2F6RFNIN3dL?=
 =?utf-8?B?dDR6OHJhQjArRWVKREV2SUpaeTc1RnFHYzZEeXZsQlZ6TFZUd2VCdUFWMVZI?=
 =?utf-8?B?RkNzMU1lMDE2REpsTG1YZU1VVkJQUDZpejIzWDdHS2dDeDZ4Mm9laVc3a0N3?=
 =?utf-8?B?Nnk4aEZESmM5RmNOL1BlMFhYc2ZiR0hUQXNTanhVZGVybHRQMFh5V3FHUWdV?=
 =?utf-8?B?RnZUUzkyUXJGTGQzVEFnRzFtUzBpbXJWZUg4YTZMVUpTaGlhVFhnbU1hdmRs?=
 =?utf-8?B?OTZKSVM3a3pndnFLYUJUWllOcUhXUm0vbk9QdC9UWE1jbERBdWRwNWZRKzhC?=
 =?utf-8?B?cWFlbUMrZldXVzJXOWRZYmtrWldYdmFzTkhjb2duN0NyTnJoQndxalpaRXJ6?=
 =?utf-8?B?S2M2UUExYzhJbUs1QnplSmhQUGlPL05zQWUyU0RtTkpNZ3JXNW1sM1Q4NmlP?=
 =?utf-8?B?dlJTNlJRWTBRekdjamlFbU43QWdkcUh4YWwySDlucWIzc1QzdnNqY0RFbTA3?=
 =?utf-8?B?T2ZjNGxwVE5hU0wzYzdtRk5pcDhqamRmN2pVRnhwZG1EYllrZFNGM3RnVFE1?=
 =?utf-8?B?eXhtWFZXWENudkRkSDVUOHd5ejdyM040OWV1cEF1WExGWklvdytIaG1JTEVP?=
 =?utf-8?B?VDdJd3E5MGdnTElRRWNENEpMbTFGUkRObktESUthaTIybHlPejk1TVFwREFI?=
 =?utf-8?B?dDM1V2tqTTJaQjJxYUlPMzZkUERkZUNPd1hQaHdJMmlLdmhzUmVsS0ZwZGFp?=
 =?utf-8?B?V3h3L1R3VmdvblpMWXpCdDNCaTR2bFB2aVdNTkRXdVBIZU9nTUdBMk1wZy9P?=
 =?utf-8?B?N1htZHpqKy9sUU9JcW5BUXoyVnNndWhyaFBjM3RlVFZvVit0MDE2U3JDNStQ?=
 =?utf-8?B?L0FLQWNCS0gwQndWZUhmNS9kYW1ZbjNCVC9QbWtobnFudm51bU5ydGtBZDdo?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffeda8f2-9266-455f-3100-08dcd626ff2c
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2024 08:10:16.0239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oovp2tMHnyRs4SAbaQi5XIwwSN/cHS3vZCXIr680t/uzL3x7UhhlAbh6tRMCEBdPOtHHPyKbl5qzTLDgAVQp1LtnilVQrkO1qQ2cB1fYMqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8423
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726474220; x=1758010220;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mJ2sIQ3NcjflKu1p1n5u63HHC00khHZ3SrgifQhcWKw=;
 b=ZwFWogT6CHrKUklzz2Aratu0vfOlMWxmUBWfZlitNSCSHjgpyzE5CIfS
 8uwqmXQTlgec8hroDsv2hsLDyWRa/mFY1fsDdaRJi0aTWVdi4sGCqVMqJ
 5NEgkzCR2KZxNgzaubV79+TrkBO9Vvkx1cWkGoCJpy1tCdvz2g3coghvg
 2WwuQFIaKLnjnbvBeZqKs9AusW3dIvnGEoz+5KrXV+eUQ0oiaGU9FmBRz
 H+01cCmp1Z7N+QeF6R0kB+aybfl9cfTGUNG9zfR86Ot3pLdsQjv2lsi5r
 Iw4nG4DZ4hCZJRh7tQtRFwcmx0iB5oGYaFBTodglXRHlXidkX/xrTqeop
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZwFWogT6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Is this an out-of-bounds issue?
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
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/13/24 15:13, Qianqiang Liu wrote:
> The code in drivers/net/ethernet/intel/ice/ice_parser_rt.c:
> 
> 114 static void ice_bst_key_init(struct ice_parser_rt *rt,
> 115                              struct ice_imem_item *imem)
> 116 {
> 117         u8 tsr = (u8)rt->gpr[ICE_GPR_TSR_IDX];
> 118         u16 ho = rt->gpr[ICE_GPR_HO_IDX];
> 119         u8 *key = rt->bst_key;
> 120         int idd, i;
> 121
> 122         idd = ICE_BST_TCAM_KEY_SIZE - 1;
> 123         if (imem->b_kb.tsr_ctrl)
> 124                 key[idd] = tsr;
> 125         else
> 126                 key[idd] = imem->b_kb.prio;
> 
> The "ICE_BST_TCAM_KEY_SIZE" macro is 20, so "idd" is 20 - 1 = 19.
> "key" equals "rt->bst_key" which is an array, and the size of the
> array is ICE_BST_KEY_SIZE which is 10.
> Is it possible that 'key[idd]' might access invalid memory?
> Should the "idd" be "ICE_BST_KEY_SIZE"?
> 
> -	idd = ICE_BST_TCAM_KEY_SIZE - 1;
> +	idd = ICE_BST_KEY_SIZE - 1;
> 

We already have a fix for that from Ahmed, but it is not yet public.
@Ahmed, please follow up.

