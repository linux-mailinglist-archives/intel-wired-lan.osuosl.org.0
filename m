Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1C9CBE33C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 15:10:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 438D281152;
	Mon, 15 Dec 2025 14:10:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xzByLhm0FlKa; Mon, 15 Dec 2025 14:10:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92AEF81153
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765807857;
	bh=JjCvEEEBqv/mR+o/PuyaO6e6RLeIAvUFQoMaRzgCK+k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wqxDLBbaE6EtMRYVF1aYJSfi6OqM+ma+TAHtLIK8pbEUca9Ajxi5BoArbMXv0yR0C
	 4yfm7AUkJltju6tIH0RWenkPJ0gAN+O2zqawj3QI7Z/kFVIcfngfpm5kVGA6DrRImE
	 gY0VDgeRpW3B0ZN46F7Lz40XxxDr3P0FWfN95+/RNQZTqPjHdeD2td+wuUEjQqL6rU
	 rxqbjaxv2Fs3x120pFFR1C2VSwPu8Ti5bSoSd2fS0dYqQEoMKzjrDEVpgcGvjraHTl
	 Dlw+pw557Abwo/h/da7zrv3NJg0a+bkc3E+Ksmsn4hQrM+fQXvARRQP8zjcImaZYxf
	 zizcukjj4kZ/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92AEF81153;
	Mon, 15 Dec 2025 14:10:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 96C77117
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 14:10:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8831C81150
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 14:10:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lPvX8EpMQhhF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 14:10:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 204028114E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 204028114E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 204028114E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 14:10:53 +0000 (UTC)
X-CSE-ConnectionGUID: e6Ka9hAuQLq6Oh65rPxC4w==
X-CSE-MsgGUID: 9t4uKasYTbCJywEhkIISAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="67646028"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="67646028"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 06:10:53 -0800
X-CSE-ConnectionGUID: +yJSsHk2SoCVBFRD7mGedQ==
X-CSE-MsgGUID: HTJ4T2V3S3GzNICFXZFsNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="197782232"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 06:10:52 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 06:10:52 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 06:10:52 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 06:10:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yCTYX8CpFenqEaxeakY801zUATldgoEOU8ZX7F2BNY3PkxOBLNABUrlZGlEjiN8CRuu7Ly8x6ZDlZRPUGNT5rfhBA5ILotriaEVDF/aAVWNz3p7nEqWk/L4yTdNWX0AOgqc0qqFIjOtZrFZ8znccJ9cAUFPkjU3SB1UY5G9Q4xHrRmT62vWCVSF89yn+Ygm6YHox7DzZ0wtABkVvVanqF6vKrk3txJxQsiJjI2lv8Wsf2kIMUPSvrrFSQ7g1Dhi5voUS4NqzVIJt1mCbYr0RrMryMVDnjnKGL5rHARh3pNi9AjkVRGm7jTsJUDtqrl4QnNqcqfGg3VT7UbhzeePGcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JjCvEEEBqv/mR+o/PuyaO6e6RLeIAvUFQoMaRzgCK+k=;
 b=vcJKYfCb+L7EqMmumVdF1buw+74/ohCMG+sBox4359xZ+VExFeGUjI2p4MBP6VQSor1uIpsYYaRw2CwuLU6O4ikV2VMWYjvSoqVDy/+aGpafOD13MDUKMvwKYb/3fhR31PX21gK+W6dveOphB3Pm339wcFBCgRN1rYYB2deptIRA/Yuq0x/gUSHMEfj7F/x1VcWEKCr1/bsCtucaDxtI+OFGYNTxucSD0/Faskp1JKd/s5CDEpb81QbQSTofB3h0vNOCDen/B7bavxnhznCwBUtAmc5hs4octPd9MPO+2rEFMJpu5zejITWrGnt9k+JqrH0xXFL816PU7wdPqsZFqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DM4PR11MB6093.namprd11.prod.outlook.com (2603:10b6:8:b0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 14:10:48 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 14:10:48 +0000
Message-ID: <7204d8f7-6482-4217-998f-2788d55f4235@intel.com>
Date: Mon, 15 Dec 2025 15:10:39 +0100
User-Agent: Mozilla Thunderbird
To: Ivan Vecera <ivecera@redhat.com>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-7-ivecera@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20251211194756.234043-7-ivecera@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P250CA0002.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:54f::15) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DM4PR11MB6093:EE_
X-MS-Office365-Filtering-Correlation-Id: 81a11feb-c434-4655-80aa-08de3be3be69
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YjgzTFJtaCtiRnpOVDgzNGZranovZ3hLVnR4bEdBdXBrRXMxZkVjMGRNVlQv?=
 =?utf-8?B?MXhmcVo0akVqUlZQTHgyeHZidzAycVNMK2RCbWJRL1c3SSt5enhQMUZXUzdD?=
 =?utf-8?B?enN0ajVHa25EYXlCdFUya04wQ2NzM05oYXVyQ1V2UG5YMjJpWng1NldHb0dY?=
 =?utf-8?B?bnArbE5oWE1ZUHNlQ2JKWVF6ZXlRRUlnR1ZUT1BZSXBaeGQ0S1czeHZKdEtv?=
 =?utf-8?B?MEVzQnR6OHNEeTlPUEdJZFhicWpodThyUzhKZEZwcCt2Nk1ZRHBlaCs0dFQ3?=
 =?utf-8?B?UktYMldmRkg1dXJIQlRPenRDamJ3VWdjSGNHVzZVNm5hS3NzMi9jdmpDRlZp?=
 =?utf-8?B?NzlKV1ZsbGprTHRYMEVxS2ZnNUh3NWpuMDg2WDhNaWVTM2JtZlJCZXNNUlBh?=
 =?utf-8?B?RWVUWlFxeldrQzVmdXdiT20zZUVOQnpabHlLeFozQzIrS1VlQ2s3UkxwZzhs?=
 =?utf-8?B?M1JhZzlHazVUUEF3MnpjZWgycSttanNNVUV5dTdqd2IxbG9YUEorc1lVdUpx?=
 =?utf-8?B?ZkZSWTlJWkQ0a2hWSDcxRDdFTnRjUFREVlpwMFY4S1VEeFV0ZHBGUlk5RG00?=
 =?utf-8?B?UkVtNmVTU2hPY2dBc2RKYTlXVGJRRXBKbmFRWkg1VGROT0dpb2U0a1AwOW1m?=
 =?utf-8?B?NGttUklOdms4R1JSZlJKQ1FYWVAyOHVNNmd1S09DSjdXekhRV0l1dlR5dHhl?=
 =?utf-8?B?dWtLQ3BWYXJyTnpId01kNHJjSU9EbkFQMFBhZU9ybG5ucUZUU2s4S2d5U21G?=
 =?utf-8?B?NTFJb3A5SG1JVzM3ankvQUFjMmRVU2JXUllYcXFzS1dUQzZLU1hhN1E3MTkz?=
 =?utf-8?B?WGh5aXdGNDkrb3VkWWY5czdBK29FaGt1anZNSHc1WjdOd0hTdXhGckY1MVBs?=
 =?utf-8?B?UGZsR0ZvQ1FQeXRKbnJ2dmdNUUpBUWs2bzVDRFMrMmxwVDI2cDlsKzEyQVh3?=
 =?utf-8?B?UG44eUFJYW5sb3VWNTlab1ptcFNwNzhBeWVyTGdES2VsMGNWNUR0S2NPQzZY?=
 =?utf-8?B?cHdJSnRZWVNST01RazRNMmpjWm1UQmpoV04rYnd2N2ZKZ1dyVEZpSEZlS1Fz?=
 =?utf-8?B?N0xmd2hsSEw5UEZCdElmajhhWlNxREE1QS9NTXdrbVpRc0s0aE03KzBNMS9I?=
 =?utf-8?B?RlJzU0RuQlV3b0RGdGJOQXJqVHpidlRHRE90RHgwdjBBZ3REeEU2QzU3TGxY?=
 =?utf-8?B?dmVHSG5aV3hhS1RDUStxak5XZElqMG1UdVRXM2Rrdmhta3JHZUtaMjYyWnZj?=
 =?utf-8?B?U2Noc01rMFpob1E1RzVnSGVsWXgyQjZEeUJXQzY3UE1rWEd4enBNYUhteUZr?=
 =?utf-8?B?RjlhTGFVa0RNaW5YWHF6QlJ0b2tiVmFrR29NeTFzbkE0K3UvWDdZTGszT1p3?=
 =?utf-8?B?UUNoeXUzUXZqRmY3QWZYY1JUVy9QaGlEMG1LdGMzdlJjZk51RFovL00wenBy?=
 =?utf-8?B?eVZaeVRjeGd2eUltMUtUZ3BXcUlZUmFSRGloWnQyRGxXMVhaNDV1RDhieTU2?=
 =?utf-8?B?TDlCZ2JRRk9DMDRRaW1ldEZDcjFCN1cxWjcvYk5qRWRIMlNHVVozZWx0OVNT?=
 =?utf-8?B?cTg5Slc4dWU1THZYcDdSdVRNZDI0MUhrTFJ5WlZCZEdoUUo2S1E3MjVTT1VJ?=
 =?utf-8?B?R1pWNjhXVWJDeWZ6S0RTZkJVZFlMNXpBY0JjMnVzdXh0Skw4R0lwTjM5cUhQ?=
 =?utf-8?B?ZmNVekVJeFMzVEdybzU3VFEyV2lpbVd3NjVtMEk5MDJoSzdMV2ZHZm8yZTRa?=
 =?utf-8?B?YnFtRko4MUZ6TkI5K21XdE1FWThFNU9DZFplSWdKaFBkYVFjdmNXSmRjbmVw?=
 =?utf-8?B?RXFNN25MZUlxZWJnUjFrSGM3V2JHa3c4ZkVXY0JIaUZDd2NYMTNveXkyckpB?=
 =?utf-8?B?bE50RWVSd2NBTSt1K3dtSUlNMGtmem81OWNSemdKT1p1cUJVQjZNaW9TRjRt?=
 =?utf-8?Q?NZ72a5Oxcahvcvf4v9rUmUxfll1VmKsr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bktxSW5TQTdCcHFVakdCZjhGWHduQkhBelIyWW1DRGh3R3JDNHVJV2lpcWw5?=
 =?utf-8?B?VUJCSXAyV1ZvQ0hmdFA4VUlBMDU0Nm84eU9VeDNNWkw2MGtYNkZDSStidzMr?=
 =?utf-8?B?MlBJTWUyUzB0aWE5YVI2OUl0UU1IYmVnNXQ0TWU5empSUldSK0pKOFpiUzZO?=
 =?utf-8?B?YllZdGRIQ3hiNGNhY1V6K2R2YUxVc3U2bUR3NnRqS2lLbVRKZXBBbmJTNGpK?=
 =?utf-8?B?Smo3NXR3bHJsM2V2VWV6bUlJU2NKQ0tQWWRrcE1lZVEzODgrRGNHdksrVi9T?=
 =?utf-8?B?TjQ3dlhJRjlrOVJ1cnBUeTdoS0xzK0JsdHBIczVqZmRkdnZFNlVjeWNqSEQ1?=
 =?utf-8?B?N0k1bk9GZzhUbjF0cTkvQU96MzAxUndKb1dZbk4zL2dRTXBETE1waWJuUWtJ?=
 =?utf-8?B?OUw0UjRYbkR2ZUxLamFOZWwzNzgyLzEyR2RrdUhXcE16NEZtRlYrbThBVFlz?=
 =?utf-8?B?N1Yzb0NXdlFKV0xRTHlJQnIvNThVdzNjUi9BMWhjVENyTzZWZFRycnpjTllZ?=
 =?utf-8?B?VklkMXZzV0JTOWU3MlhvT0duMUJUVVVJeVJtMmQybjJTU1IrRXdNbU4vOUZw?=
 =?utf-8?B?NUdac1FEd2dRaFdwYWRGY1VqSWVsSHdEYVVnKzhsclF5clVYRVNPaHFzcFhD?=
 =?utf-8?B?U0kzVVVIQnNMMnp5WTV0UEh3eVoxTEV1RXRwRjlSMVZlWVRuRkd4b0p0ZGVT?=
 =?utf-8?B?Q3AvMlFTNEdyWk1LRUpyRzY4eXVvUzdaYXN1ZXIvL3pWMitEN2JiUC8xMUJU?=
 =?utf-8?B?d2FDN2VSWVNJZUNJdGtaUmtzTEgwSGlqY2FqVmF2Z3U1cXZsOEY0OENVbEZM?=
 =?utf-8?B?NDhuSWJSNlF4ZHNxMHpNNE9wYjlieGRERVoyWlZuS09MU1k1NlVackdnUnlx?=
 =?utf-8?B?dU91V2lRRlZaSlJBSWdyQllsTyszaWYxS2I1OFhyVWNMS00rOVJZUUxHZzJO?=
 =?utf-8?B?eUFvMjF3bk1zb3ZTb3VzcnJNclB3dTBJREVlMHUwZlVMR2I1b1hSRHJnN3RR?=
 =?utf-8?B?QXVjK0hsYXB0SDZjR3VFei9NTzgxRGIyUlZUSE5mQUczOTZLWUpwanU2L1hv?=
 =?utf-8?B?NFc3YUFMaEp5SWx6QUxoWVlHYWx5dG1rWkZIWXVyb0d0UzlVRmp1S0lPYXBH?=
 =?utf-8?B?SjFscVNQSG5tNXVHaXo0bjRDZHBBOXB4Qld4am1NYlJrcW9CRVk1c2o3T3Z2?=
 =?utf-8?B?cGxtMlhqTnlTMmpQMVRoUzFzd0hiVWJRMVNDUDFsa2xvdnBJUXFWaFF0Y3FF?=
 =?utf-8?B?U09waDZFSjFRUm5ldVFxdTRST1JScTJ0WXArc3lmNk0vcGdhZzBtU0lXandk?=
 =?utf-8?B?TmkzK1BsSldGS2J3TXZhbEdPdTE3UGkwSVBkVXA3YnFIYTJrSkIySnQ1UG9U?=
 =?utf-8?B?MkIvQUQweE9SNytjYUxaVmxndVJuK2ZRZjB0NVNnK3V3K0hvYTNPWnIwS0JW?=
 =?utf-8?B?VDlFOGZGb0ViY0g4LzdnUEMvS2wvTTVkQTFrdUFvVkxiTU5BZ0FBaitYaGlE?=
 =?utf-8?B?Q0hiWUlJZXFLa0k4cm1jeDZ5STlHOVhjMUJYd29KSkVKdTgrbDRWT3pnZ05x?=
 =?utf-8?B?ZkpPUFc2c0Q0VVdraCtvcnliTUZoeG9nMnRnZ0ZMVzd5VlhiRkxRN0FYaFRo?=
 =?utf-8?B?ZVhoaURQZXFlZDFua0lYWXpTZEdWWFBqam5ubmE4MVRkQVpmOVIrRkdEN2pl?=
 =?utf-8?B?TzI0Z1ZZVHE4bDhYNE91Q25mK0NvR2JNcEtoSW1POFFMWEg1RVd6Mk1DMUs4?=
 =?utf-8?B?M0FDa0JrQlZzdXgxaHlGK0cwTHdnZ2NxdlZHVGN3SnJZNGhZNVlKblVrakkz?=
 =?utf-8?B?ei8zSkpYOS95WlRKaHJVWHdSbUNPeDdBRzlaMDMyM3NZWUNJY09uZVkzUzhj?=
 =?utf-8?B?ODI0a2MzUjIvRUdtb3RZRTRIbCtmT2xCQ3FnUUF3KzRsZnQ5ejlIcXkvV3M5?=
 =?utf-8?B?ZVh6YUZRY1lVQ3lVK3RxdlBDVXQxZzduYzBwVXhBdjFXUmt0U3Q0VStPYXUr?=
 =?utf-8?B?NUJEMUVmVlFvb0d2SngwZkhzOVAxc1hZS09PTVFTNUh5dkg0T01OWkllWXhV?=
 =?utf-8?B?RnhGL05ZWDdVckRsRTNXaGhWRXVXbzlyYWZha1J1T1d1YWI2SnpVSkhFWGE0?=
 =?utf-8?B?Z0xaS3dOaml3T2kzQkdPblExQVFFSFJ1ZUVXcWg0cnlOTGlWNi85WHVueVVE?=
 =?utf-8?Q?c334+Wh15H8jTQN6zBOnJ88=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81a11feb-c434-4655-80aa-08de3be3be69
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 14:10:47.4180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jwQ6qB5v2Q3EuOSJ3zljni8U7bmhx5SAaIaNa4SxUJrRBQFX+6lTHOAg+8BtRy+Sn0he2lwKs5YWEYDHkc1T0UtjCJ+Sq6mRIEr1ZmO6dTE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6093
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765807854; x=1797343854;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Oh2Bg+is70hli9SXLfLfCf9bchAgvH+tzWRS+3C7CVE=;
 b=klnF1sauK9/HQJQ0rlBNsFiEylKHzoOUk/8ywmfvdtiwF0CTk/Tbka2G
 73mA5i8cFMRp0SSUXyQiED/q71hcJs108QU1FDCQN5NQ6vLv6fTguTOlc
 avSoJK/VyhojtROUJQ/kHtyP4SEiWW4+iGJWBRmD8jDUl5/mSVD3Gt+nv
 HqYmnSJ30jPFmpbwiBpfI62wtWPPd5VQG8w0OGmp2EIcgTDbme82bmkPs
 lDqCx9pbL2/vEYOgE3/+/tLtT2gCsnUMB52l7ahDh9o2ai7nofJw+g6Md
 q50PmVm6qGmplflacMbYVLnuj8ZyyL3t0ey8URQPkLp5qml2l9WhDvmbJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=klnF1sau
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 06/13] dpll: Support
 dynamic pin index allocation
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>, Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org, Tariq
 Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stefan Wahren <wahrenst@gmx.net>, Simon
 Horman <horms@kernel.org>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/11/25 20:47, Ivan Vecera wrote:
> Allow drivers to register DPLL pins without manually specifying a pin
> index.
> 
> Currently, drivers must provide a unique pin index when calling
> dpll_pin_get(). This works well for hardware-mapped pins but creates
> friction for drivers handling virtual pins or those without a strict
> hardware indexing scheme.

wouldn't it be better to just switch everything to allocated IDs?

> 
> Introduce DPLL_PIN_IDX_UNSPEC (U32_MAX). When a driver passes this
> value as the pin index:
> 1. The core allocates a unique index using an IDA
> 2. The allocated index is mapped to a range starting above `INT_MAX`
> 
> This separation ensures that dynamically allocated indices never collide
> with standard driver-provided hardware indices, which are assumed to be
> within the `0` to `INT_MAX` range. The index is automatically freed when
> the pin is released in dpll_pin_put().
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>   drivers/dpll/dpll_core.c | 48 ++++++++++++++++++++++++++++++++++++++--
>   include/linux/dpll.h     |  2 ++
>   2 files changed, 48 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
> index fecc3d97acf5b..79f60e0de27ac 100644
> --- a/drivers/dpll/dpll_core.c
> +++ b/drivers/dpll/dpll_core.c
> @@ -10,6 +10,7 @@
>   
>   #include <linux/device.h>
>   #include <linux/err.h>
> +#include <linux/idr.h>
>   #include <linux/property.h>
>   #include <linux/slab.h>
>   #include <linux/string.h>
> @@ -24,6 +25,7 @@ DEFINE_XARRAY_FLAGS(dpll_device_xa, XA_FLAGS_ALLOC);
>   DEFINE_XARRAY_FLAGS(dpll_pin_xa, XA_FLAGS_ALLOC);
>   
>   static RAW_NOTIFIER_HEAD(dpll_notifier_chain);
> +static DEFINE_IDA(dpll_pin_idx_ida);
>   
>   static u32 dpll_device_xa_id;
>   static u32 dpll_pin_xa_id;
> @@ -468,6 +470,36 @@ void dpll_device_unregister(struct dpll_device *dpll,
>   }
>   EXPORT_SYMBOL_GPL(dpll_device_unregister);
>   
> +static int dpll_pin_idx_alloc(u32 *pin_idx)
> +{
> +	int ret;
> +
> +	if (!pin_idx)
> +		return -EINVAL;
> +
> +	/* Alloc unique number from IDA. Number belongs to <0, INT_MAX> range */
> +	ret = ida_alloc(&dpll_pin_idx_ida, GFP_KERNEL);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Map the value to dynamic pin index range <INT_MAX+1, U32_MAX> */
> +	*pin_idx = (u32)ret + INT_MAX + 1;
> +
> +	return 0;
> +}
> +
> +static void dpll_pin_idx_free(u32 pin_idx)
> +{
> +	if (pin_idx <= INT_MAX)
> +		return; /* Not a dynamic pin index */
> +
> +	/* Map the index value from dynamic pin index range to IDA range and
> +	 * free it.
> +	 */
> +	pin_idx -= INT_MAX - 1;
> +	ida_free(&dpll_pin_idx_ida, pin_idx);
> +}
> +
>   static void dpll_pin_prop_free(struct dpll_pin_properties *prop)
>   {
>   	kfree(prop->package_label);
> @@ -526,9 +558,18 @@ dpll_pin_alloc(u64 clock_id, u32 pin_idx, struct module *module,
>   	struct dpll_pin *pin;
>   	int ret;
>   
> +	if (pin_idx == DPLL_PIN_IDX_UNSPEC) {
> +		ret = dpll_pin_idx_alloc(&pin_idx);
> +		if (ret)
> +			return ERR_PTR(ret);
> +	} else if (pin_idx > INT_MAX) {
> +		return ERR_PTR(-EINVAL);
> +	}
>   	pin = kzalloc(sizeof(*pin), GFP_KERNEL);
> -	if (!pin)
> -		return ERR_PTR(-ENOMEM);
> +	if (!pin) {
> +		ret = -ENOMEM;
> +		goto err_pin_alloc;
> +	}
>   	pin->pin_idx = pin_idx;
>   	pin->clock_id = clock_id;
>   	pin->module = module;
> @@ -557,6 +598,8 @@ dpll_pin_alloc(u64 clock_id, u32 pin_idx, struct module *module,
>   	dpll_pin_prop_free(&pin->prop);
>   err_pin_prop:
>   	kfree(pin);
> +err_pin_alloc:
> +	dpll_pin_idx_free(pin_idx);
>   	return ERR_PTR(ret);
>   }
>   
> @@ -663,6 +706,7 @@ void dpll_pin_put(struct dpll_pin *pin)
>   		xa_destroy(&pin->ref_sync_pins);
>   		dpll_pin_prop_free(&pin->prop);
>   		fwnode_handle_put(pin->fwnode);
> +		dpll_pin_idx_free(pin->pin_idx);
>   		kfree_rcu(pin, rcu);
>   	}
>   	mutex_unlock(&dpll_lock);
> diff --git a/include/linux/dpll.h b/include/linux/dpll.h
> index 441afb90d2a29..8aa1df38ce563 100644
> --- a/include/linux/dpll.h
> +++ b/include/linux/dpll.h
> @@ -235,6 +235,8 @@ int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
>   void dpll_device_unregister(struct dpll_device *dpll,
>   			    const struct dpll_device_ops *ops, void *priv);
>   
> +#define DPLL_PIN_IDX_UNSPEC	U32_MAX
> +
>   struct dpll_pin *
>   dpll_pin_get(u64 clock_id, u32 dev_driver_id, struct module *module,
>   	     const struct dpll_pin_properties *prop,

