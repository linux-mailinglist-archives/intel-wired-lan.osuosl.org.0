Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53799A1D1F1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2025 09:12:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF745607C0;
	Mon, 27 Jan 2025 08:12:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qMJeyrwZVvO1; Mon, 27 Jan 2025 08:12:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10B7A607CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737965538;
	bh=R8rz2Lb64WPX3SPdojuMWq346oCDy5V1j3kAb2QsGzg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CCtwkd1GMIzLvjJSUuu3jBk6TXbJGT7R97QtoiB33PIfvKWaexT0VhCy0wIpWPBkO
	 rwBprvDj24vKXkWnXcOE7izqUXO3LikMvAzgCa1z1ZAMvvfNXxQPZUHvRWtfwwKp+J
	 jcOKCbrOO/egXbqXFbe7MvWVHyFU1d3ImuUsLxndodzTlklPsFXZPXT171Y7asKLDF
	 TCHr+HVt6jq0/CmzZoCw3lG5/lIT89M2a3YK8sXOL8aYf5grSWqLuMTNL45pWrKYxj
	 BpF4qzRhvWuvyc/I7VZaWECJJTxSr90av3odKVue2gjgTLWlJhpk9vRbvaSGTUyjdb
	 KuA3JKDez++fA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10B7A607CE;
	Mon, 27 Jan 2025 08:12:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 47E3B94A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 08:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 42648811FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 08:12:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eBpsa6W5ZNpi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2025 08:12:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 722D7811F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 722D7811F9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 722D7811F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 08:12:14 +0000 (UTC)
X-CSE-ConnectionGUID: MdsTnxFCRDC8HHTyLvfrhA==
X-CSE-MsgGUID: lgAl/s+qT5WkbLk1Ye199g==
X-IronPort-AV: E=McAfee;i="6700,10204,11327"; a="37671039"
X-IronPort-AV: E=Sophos;i="6.13,237,1732608000"; d="scan'208";a="37671039"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 00:12:05 -0800
X-CSE-ConnectionGUID: ytjOpFNdQJyX3/lPJABzOw==
X-CSE-MsgGUID: P1Sny39ASfqQEsU/4KJyEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="139216389"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 00:11:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 00:11:48 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 00:11:48 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 00:11:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NXTtVcOtELTJqkCxktvMt4ogMn/4EjXU9mShT248+h1jesZcE6PogeqAYQjYTlPT9xHvB1AgyNqJUY65LpcqZ7HiP+m0zFbpm8pRvfgA0nWVzQ8z5uOoYtvSifg98V+FPvSjIjiXXQHpqe0csN73f1eCbKa/csHoAq86DwNgq7N6zLGHPEWbPkltjjJ/bADj/d0KSuvB3RsVnSNqmkmh49kDOBgaRg3l9A/L6wjSN33VS6kD/p3o2GMQWGI0Q5qNZA+vOa+1/8eE/CrnuHkZa+QOUpFGkXom6I0l1Z4c4v2EWhawKpwAV9xMM1K8nKWzxZqlaAfd9aZ7iTKVKTRFSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R8rz2Lb64WPX3SPdojuMWq346oCDy5V1j3kAb2QsGzg=;
 b=SlT9Wn4Lpvfm1F34YHrFEBQygshKe7HaSCH8pn3TwK1QPpBQ1YLuMrCEGe2TTT+OKEiI91eGQyLXmUZxM+IJtnoYYuMKNe9I1ugnqZ+vakOy92QCsreRcX/e5z/w6huCH5y7Vg7QLRLESiH+nq3l3AKLKkZ1bbjD8piEoKCs+591moi1GZzhGNrdE1SYTGIXMHOtrvBNEBKPjgEBsh8geN+lHFjtVbuWMmiBkVeutnmBY4/7HLmnw/PxZczsc5LLeP4mWFOA0Hs5TcQ1c/RSq3iAE0h1bz8hO2sOz5Ae7Dl95F3IBpVyEDFAZ/fC8e4LCPBEHtinprBW49+QV9BspA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CH3PR11MB8548.namprd11.prod.outlook.com (2603:10b6:610:1ba::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 08:11:46 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 08:11:46 +0000
Message-ID: <95288bb1-8931-4d18-b8f6-25a4f6148afe@intel.com>
Date: Mon, 27 Jan 2025 09:11:41 +0100
User-Agent: Mozilla Thunderbird
To: "Singh, Krishneil K" <krishneil.k.singh@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Emil
 Tantilov" <emil.s.tantilov@intel.com>, Jakub Kicinski <kuba@kernel.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Ahmed Zaki
 <ahmed.zaki@intel.com>
References: <20241105184859.741473-1-tarun.k.singh@intel.com>
 <MW4PR11MB5911F6BAECF5DAC79199B362BAEC2@MW4PR11MB5911.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <MW4PR11MB5911F6BAECF5DAC79199B362BAEC2@MW4PR11MB5911.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SA1P222CA0110.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:3c5::22) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CH3PR11MB8548:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e45b577-0cdc-4570-b9e6-08dd3eaa3e1c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VEdFYmc3cHQ3My82WTVCR1A3VURSSlZLQlIyUHBTSm45VVU0S2xOL2RsN1Fk?=
 =?utf-8?B?dnZOU1dUaU9PV092b3E1SkhMVGQyR2Zqam1ORm90c21vWGhIaDNqWFlzeWNX?=
 =?utf-8?B?Qmh6bERmempZUE9ROEh5OEcwbzdCWXZjNFc5SUkvK2N6TWo5L05tWEovZy9S?=
 =?utf-8?B?Tk9nMG9UUndjdmhTcmN4bTFybkN2bFBKQ3BDYXZGdUV2MTFWNWNnbDRwcUh0?=
 =?utf-8?B?Tzdud2xOL3hHNjFyc2tzUFlzb3FMUzFQY2dBaTFZZ2VqTFZKc3dvdjNNZ05H?=
 =?utf-8?B?V2xCaTBLSkg4Mkd5dndTVU5UQis4VElkU0dsa0V3L2JKUjZTREVsUFpxYVRo?=
 =?utf-8?B?TStVbUFwWU9qVktxdkg1KzJ0WVpWTlNmSTdZTnhWRGo0RHJ5eGwwdlV3aVp1?=
 =?utf-8?B?OEdUQ1pySGFvVHlzM0ltQ0JwTGJTV2Y0UytIL1hCeVpqN1FVQTExZjVtcTVB?=
 =?utf-8?B?OUFaL2lweXNNTmEyWDF5RGh5bWJ6Mjd3SmdJQnlERGRYYjVCNnhhY3hnRkFl?=
 =?utf-8?B?QXF6WTNtN3ZwMlRVeWV2Um9uajE0Mkp6VWxHVGw5cWU4VEhBa3lmT2pveVRB?=
 =?utf-8?B?Q0xYUVJIWWp1bHJ0aW5PSElWVmIzOW1QRm1OK2luN09xNm9LdDY4SU5xRDR6?=
 =?utf-8?B?TXFiaGJxamlFSGZ4RXl5ZGl3NjIyc3NlZHRrOENOZndtanczWWtHTFNIa0ly?=
 =?utf-8?B?dFJWOVJNOHJmaFZ4L1VGQ2dKd0lSeDNlanZzWVJnNnRXUEUvY2FCdFJlUDBi?=
 =?utf-8?B?M0dGb2VSQ1puWUNOOFJWd1BSSVFvNCt3Umpkd1RObkZxRHc1RWtpeTYvWVFs?=
 =?utf-8?B?QytnRW9obEdMaGc2ZC9GeHBUZjZidzRTY3UzbVN5bUNsVS93Z2UzbHFrNlVu?=
 =?utf-8?B?K0Z4cUtwOFA3cG16ZDFQYVphSS80QUlVeGxSRnBUUk5OYWdacytnaDAySGo3?=
 =?utf-8?B?ZzRkdW83NmQxa3RVc2J1N2REVlg0UFNGZmJVa3FwRDBJSmRUMzNJS3FzY2h5?=
 =?utf-8?B?UDFNYXVEdEpaMDBKcXEvTVUzenJ5ZWRQSGhRWHFPdmFaT0ZxaDVza2N0c3J2?=
 =?utf-8?B?QzJBb2dPbnFFL0JnZk5KZURJbnRTQkd5SlFZWGlSMWJsVkNpMzNZUlpBVWRs?=
 =?utf-8?B?bFRKMmlQTEJna3hsNW1FYUdCQ2dNYkt3SXI4SlpXTHdzRkxYZFVqUzROTHFr?=
 =?utf-8?B?akNuUlAxU1Zzam5JZm1xYjQ2WUpFczhyb25jNjk3dDBPcGpGWDB4QU1WTXda?=
 =?utf-8?B?bEJqMXRHVE42b0E4VkQzcTlEQlFURjJnOStzV1VQKzlwV3AyTjdMbW5pMS9i?=
 =?utf-8?B?alBSQjB2V3lobndhaC9TaklyMWpEVithWVFXNFBIT3MvRGtPTWxIS1hCU1JX?=
 =?utf-8?B?RWNJbVJFM3NMWHE5UGJhczEyd1hIc1lEQTd5QkNKamNNRGZQK2tPQS9SUkRT?=
 =?utf-8?B?NFo0ZkRzK3A3L0ZFUEpLaHU3N3FvNW5qVWMrNXY5UVROSnV1V1hMUVUreDg0?=
 =?utf-8?B?Wk9qS2xkWUJkZndCZXZuVU90UkNyejJJNys1UVhFWmcxK0RkUWpZdXd4bUtM?=
 =?utf-8?B?VWsweGIvRDdNZG9LeklVOWpzZUMyMXFQN3RtOVkzbmk2WGY0d0IyLzJrVElY?=
 =?utf-8?B?VERxNHlkcWQ2SDVDeGFpTXQ1bG5YdnFnOUlmeUVtc3pYYU5nVUF1N1BZSVpP?=
 =?utf-8?B?Z0NPNFEybjlBek03MzdQN0FwN3VkSjluNGxxL1pwaHpmMUF5SGZFbHQyR25u?=
 =?utf-8?B?L2xqTkp4Q1QyVVZNa0tteHkvdjNNYklGVjhFWDdVVHpVcFM3ZjgrRmtTRk1k?=
 =?utf-8?B?UGNoTTRyTVVVTTlHakxBOEFtM0hPZW5xS2NtUG5NTDF4TXJ0a2F2aU1SenZO?=
 =?utf-8?Q?Vv3/GA573iFG3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGhaMVMzaUtKRVE2WExUZWNhV0ZXWG02N0tCWUcwWFFUb0t2M1VwZlpJUWZ1?=
 =?utf-8?B?QVhsM1FDM1JZNzNQcXJJaVZLZDRKQ0dUTjcvckFndmFTMWdxQnFxM01saEJG?=
 =?utf-8?B?Uy9TY1ZZYjVXNWx0cVNjZ0NBSFNmT2V2SCswVlhtV1lNWTN4T3BRdXQ1VWhV?=
 =?utf-8?B?cHdOa3dSbXVHSFphbWdVbitGZkQ5RnBILy9DSXRGYXd1RFdvbmMxelAwQXRW?=
 =?utf-8?B?RkNOb2ZsSTlyY2lEZzF0RmdwUTlld1ZYOHkvQkFmQXo3bDk5NEpXN2FTZ0k5?=
 =?utf-8?B?Tm1KUjFJakQ5S045RVh6ZkVNT21zN0tGVjlUQ1U5OExZVGt0TmJhY2l3dzUy?=
 =?utf-8?B?YlFTREhrY3poQ25jN0RId0hyWDd2a2dhYkJ0YmhPMkQyTGNaVzZlQzF1KzFo?=
 =?utf-8?B?VXVpTjh5cDh6a1RIV3Fvb3dnOE04ZGhFZnBpKzVhcEQ0ZGhiT1RKRjJjclR5?=
 =?utf-8?B?aGZxRE54MUdsaEg0MnpUbnRtV202clRac0JSTTUwRXFmOHBIa0JFdlFYdGJB?=
 =?utf-8?B?T0RGVFBuRGlFdytyYU1PTUxRcE5tclAxMU1Ud3c3Z3JUSjRUOCt3RFNocGVy?=
 =?utf-8?B?akY0QWN0ZUhuMG5mWW9WdnpUVUVrSFpNUjd5MUUxalpuamM3bGx0emVxOXFp?=
 =?utf-8?B?d3JqQnVhUHJ2Nzd5cWM2OUdZL2ZwV1AxejhEdGtQeWpCUU42UGtKcWxIV3c1?=
 =?utf-8?B?OUhvWkZnMEtOY3J1VEFxL1JaRHBqWmhib2E4a0VSZGxqVFVxUVVmdFlLQ1Bx?=
 =?utf-8?B?MFZCaVdpNWQwREhqNVJGUlJjRkJpZXBTekNrYzk4Y3BqSGgzT2JaaUFVbENv?=
 =?utf-8?B?SGZvQ0hVdkg3TE5kSTdNc0Q0Zm95MG43aFI4R1BmcjY1UEwwcjNUelM2MEdv?=
 =?utf-8?B?cnBGR2VDTkhNL0NqRk55ZVZhMXAxOEU3aWtzL1F6ekMwU1dQT0dLbWNBYXJv?=
 =?utf-8?B?QXNYZ0xzZ293UjRBNnI1c0VlalA0Nm5nVk42N293VDl0UFJKcytJYk1oYlJQ?=
 =?utf-8?B?YjZRcElpeUo4Yit0anB0VHp4c0NvUUdpVFdoK2xQUkNDdTFZL1FKejFCODEx?=
 =?utf-8?B?VEJBQnY2cHFFZDI4b3dkblkraFFnTGxodVhNR1JOR0NrT0kvTHh4K0xEL3ZF?=
 =?utf-8?B?Z3NhcHVoQ3Fab1pUK1VjTkR0cEhZVldKRmp0YVRQWi83Qmt0bHZkQTQ4SUMy?=
 =?utf-8?B?NzY4M0M3aDBGa3pha08xZVEzd21mYTFma1RPdzBFSHRzU2JUV0lHV3M3QUd4?=
 =?utf-8?B?Y2RNTHFrenRhSEhza0MyWE90Sm5LaFl6clpkN1Z6SVJNd3ZibUpEQ2hvYllj?=
 =?utf-8?B?dzVuTE5RYWgyYmhaa1dxMElYbmI0M1dSL0ltbEZHcVE2a0FmbnE3SFhETXFl?=
 =?utf-8?B?VzBMWk5Fa1VBV3RSMHJTQ2RlVjR3d3hnSTVyS3VnRmxjamU2Q09zVWZyOEQ5?=
 =?utf-8?B?T1dpdmVia1VBa2FLQ24zcU9NTVVBM3JrR2dVREhsS1pWRmlUQ1Z5VjJybjR4?=
 =?utf-8?B?UXZmTkhjTVFQTC9ibnZLcFJETS9uUmhBaHJOWFBoZFkwNXMxQXhJK3Z5eGt5?=
 =?utf-8?B?SkRCK0RhUmhtTzQrNDQ0dWNhQWI0NnZ5M1pMS1QvQ1Qrb3dUaHVLMnNXWGxw?=
 =?utf-8?B?WmVWWjJERzhuWDByOFdnSFBVa1NYZmJBakc0TU45VnhraGZQakdSdFIxdU1p?=
 =?utf-8?B?Y2dUTHhDRjBxeCtmWjJEcWVNQ0RrZUFYczVyOXg1VUtROVMwWlQ2QVpmeFZh?=
 =?utf-8?B?NXNrUzFRSGRWelVqbXZNWVM0YUkvT2U1OWVveStYTkVGc0Jka2dWRDB6OVpJ?=
 =?utf-8?B?Y3Y2c1IzU0JyWk9id1Q5TUpLM2o5bXpRSE9KYllsYlBRREhJelRxbXJIMXU1?=
 =?utf-8?B?K29wbkY0VHRMRU13Nlkyd3pXVU96bFNIRUJyYTFRSFlNa0hjajlRUkRWOWw2?=
 =?utf-8?B?c2p5RGI3b1ZpbTZwUVFMZDBYa3B3UWQxWlhLL2pVR2ZVRUs1NmF2VUZnSDMz?=
 =?utf-8?B?QlBFckpFL2JNVW9uOTU1Uk9UQ2VDWnFpY0M3YUZ5QlhQdzVsOE42N1BEVzdz?=
 =?utf-8?B?d0UrbGR2Q3dJeHFIN0tmSnFpbzNlUCtPVkY5aUpJOVJqeHM5SjBKNi9obE9I?=
 =?utf-8?B?QTNiTW5RczZVNmxpK1pLYkhrcUlIVDQ4VHFUR3VIeEVFMmIrTnZDNFBTN2l1?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e45b577-0cdc-4570-b9e6-08dd3eaa3e1c
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 08:11:46.4969 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N09FoAjeXL454GZoVPGj79+XVAMK7ZyQBO5UslkXSd1sKknpub+kngfMY4wxcYkOZx+W5CsifYnPLDrIztJo5VAhocygjU/whvLxod0cEpo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8548
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737965535; x=1769501535;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BrzmrCbV3zyX6Uy8fwYxIg4wI8JZ2JRYWG/x+pzyuqE=;
 b=D+cpqEnX/F4w4ED8eDfa6PtPJ0lupE/3jKU0DhDyosmPPrNYBorBsC9W
 9TjPFqM04rO6qjwlEamqLxgmuVrVJbHFq1/6sWGndu2MxNyBTW76OYemF
 ChAQHxcCxnU6Utpr/Ws0M2YhIWOAC7e9z4v6sLQPv6pZJqBe68m/6LG60
 YbvGlQFyHI+yUeqISEGPFduwC36kanFUNGo38njOpalvKVtw3W+riPki8
 w2YFZp+W6MVn6h6boNfwRnsIvibFmlZC+1ssomXwR2L6lMJdmn1sY91qs
 Evy0XYMfkdDKbiwcqvUTpNYL/e49LnfcuSLauqdaic47TPfOPvuUT/eFW
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D+cpqEnX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 0/4] fix locking issue
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

On 1/27/25 07:06, Singh, Krishneil K wrote:
> 
>> -----Original Message-----
>> From: Tarun K Singh <tarun.k.singh@intel.com>
>> Sent: Tuesday, November 5, 2024 10:49 AM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: netdev@vger.kernel.org
>> Subject: [PATCH iwl-net v1 0/4] fix locking issue
>>
>> This series fix deadlock issues in the driver. The first patch changes
>> argument of function 'idpf_vport_ctrl_lock' to adapter. The second patch
>> renames 'vport_ctrl_lock' to 'vport_cfg_lock'. The first 2 patches make the
>> third patch easier to review. The third patch fixes the locking issue,
>> and the fourth patch prevents lockdep from complaining.
>>
>> Ahmed Zaki (1):
>>    idpf: add lock class key
>>
>> Tarun K Singh (3):
>>    idpf: Change function argument
>>    idpf: rename vport_ctrl_lock
>>    idpf: Add init, reinit, and deinit control lock
>>
>>   drivers/net/ethernet/intel/idpf/idpf.h        | 49 ++++++++----
>>   .../net/ethernet/intel/idpf/idpf_ethtool.c    | 59 +++++++-------
>>   drivers/net/ethernet/intel/idpf/idpf_lib.c    | 80 +++++++++++++------
>>   drivers/net/ethernet/intel/idpf/idpf_main.c   | 39 ++++++---
>>   4 files changed, 149 insertions(+), 78 deletions(-)
>>
>> --
>> 2.46.0
>>
> 
> After additional testing on this [series|patch] we discovered an issue after doing ifdown while device is in a reset, which can result in a <null pointer dereference(?)>.

Thank you for the report,
Could you please check if this issue could be reproduced without the
series?

We have yet another patch by Emil, that aims to fix such issues by
detaching the device prior to the reset.

@netdev
I would like to consider adding "in reset" state for the netdev,
to prevent such behavior in more civilized way though.
