Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E823E88BE8D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 10:57:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6ECEC414C5;
	Tue, 26 Mar 2024 09:57:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fVY7MQMmQbR0; Tue, 26 Mar 2024 09:57:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A58B44036A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711447021;
	bh=RtWyDUG1n7U0OdaKwbNgV/b0VI6+sL2SuKmUt5r5kmk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CgydIjhwEMgeLYt+eKDTCCQ02+hbtF4wSpYjx6DV0xm7EtMUi8OxKU0zmHTRfX7+g
	 2+i+MuUELWpcA5+Y1Gpsv5ZHKYI7Nj1vErNEswOiwR2v+Gs6YwUlT7zIH8ASvYuWpm
	 LoMRttvKeLexhpqVx1uMI1YYezOSC1aakAI053mF6GK1NUq6NXHz1j2XE8i8HaeYPG
	 qK8xunEXt23YHA4SC7EbrhONeBiBTq8OtBCC1spto2wUHARVeGq7yo6ur6J5AxFX+/
	 v0jctZT7MwVE+9gwTGabudymLo/yyuxkwZ7ODAATC9QPpKuNmUKmvmgv7N+oCH4vRD
	 ionYadCnVhuMg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A58B44036A;
	Tue, 26 Mar 2024 09:57:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 93C451BF397
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 09:56:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7FC9C60A64
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 09:56:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gOjIBZcwABYd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 09:56:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8D443605A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D443605A9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D443605A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 09:56:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6598444"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6598444"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 02:56:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16298708"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 02:56:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 02:56:56 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 02:56:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 02:56:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 02:56:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QjSttZnEUYt41J+zZVfl5UlHeFl1rOW5bcCxyKrOD4qsA8kQaQZZ0JBMoyRwgDIpyV+5mwyP1ncW+LoRfWkdSAgVCSaCIlfUUOzU97l4zDBp1MOPPBlyqDwExgczobtqy4U9mJ6pkDLumpanGMIO2YSFWrS381RT6Lh/mbCPiXhL1/B4IElMTTQqfDPL0pcsVMYEG3vHeHzh4L8NTKng+Enc/arVMoH52L02QrznceJqhdjKZC5TOi9gGSp1CeWR1xhYbFeV3SADYnslxdSx3MuUBWGyUDqQBeiJsNgma7toF4lgQaOqtOuWWwJfMOMGxJ31wLV1VjtYQWthPSi8Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RtWyDUG1n7U0OdaKwbNgV/b0VI6+sL2SuKmUt5r5kmk=;
 b=FyeS/IV0uyB8705eacwAVe5kwalSObsj3VrqC7g7UyqWjSmte4a3CKdWI4947iGfWWB3Ptq/vPfDG16DYd3S/dXvytv5CI53rQKysoUrQ6gshyqWdQvpLlt9a5r9LyI/XT8bkSVSZiZav7Nx094wKC/JcWSg1QBFujT+jO2/1B6wcM8BVjzTaF+1tzq+DLHOn4R8y/IAsfRlnXyHfWa8zf8CLX65zgdhvSY6tv8ruZh7asdsBExwHN+lF1dvgdFsn7E9zIbSO9YaB79R2FCG+/ZN9aE50CuTRTnG81M6wCetnXaUA3z385l7UK+IQ3/AO5O32JOgpfUVXL9wSYPQTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DM4PR11MB7277.namprd11.prod.outlook.com (2603:10b6:8:10b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Tue, 26 Mar
 2024 09:56:54 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 09:56:54 +0000
Message-ID: <c2ef8ae6-d813-424b-9c8d-1cb76bb62652@intel.com>
Date: Tue, 26 Mar 2024 10:56:47 +0100
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240325224116.2585741-1-kuba@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240325224116.2585741-1-kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0009.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::6) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DM4PR11MB7277:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OCAK7Qls2Uclgp+H4JjgjeXCoSYJ/EzRauwjN6WdhiAhggOxWEorddUJiUhNmxIC21Kq4PFTPaE4GGvbGlmm5mI3SzycGr0kI7n2srJKJdrm8VCY6Ot4CTh9rBabtVXu1KtIROzLPSvpbtpQbPTbjBf/bKljWS6puqxFUUOEfHaUC/yRtGRZg/aTpBHYxq52Ej+aZoZlFNgpcCJ5Q/Hx2WeiYjf19gw6aqHYfTfIuFux4uqQvaC+NastAG3iWpAOntBIwAmYW0JsthG4U9YyQn9Rc9ibRyf4jU42WPLjq2nFFnt5wWw1YZM5HkXjioKBAZ7Eol4UHv9Cz7b6e2mMDM0KycumnCXCSNeOzm50PkvOqCHr2MiK0GuRCR5cWWcfJY5Qtd4jmeeyXkwr1Ua+qYnKVEsF/p8eKnie/WpxJS9k80Rg6S5GYTDvN9DSvMlYJZW+QiLv+3ka5kLTfexq7AK8z4iWD+WQqMeIx+coLaxo12hBXMBSkc6VjlwmHBHxjVVl9SKYyCMfnAQyiRFycgs+qHlsK3zbkGWaYvycJQuGVXQxZmH0lFcLPUHQm2KC9dpf1++nr/77JAJC4eAYQqpK67AB6wttZQaaW1kyMalpeKLv8k4j6laSV4L864Spokuq9FVd5wqfGFwbUq4FIseLkH+ZVbcDjrEYil6NjDQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(7416005)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnE3bXRYR2RCcFRlWDkrYnM3WHhST3AwbzNoNVh0eW9hNXc1Y0hQa3dja2lV?=
 =?utf-8?B?aXBGR3lKR0paZzFqNHFBNUxRVnJZZWcwSUR1QkpOamlSWXpxd1FnMENyVDVG?=
 =?utf-8?B?VEZJNmNZTE9udm9ZVEx6MlY1RGZtbHRpRXoyUHJHN2RXZ3NyRUlYVEcwK1Vh?=
 =?utf-8?B?dkNDaEdsRXBLN2o5MlVvWEJZUzI5WERoN0IzMzloMEplbk4yNDJleXM5T0Q1?=
 =?utf-8?B?YUk2OEh1K2tKaWJHZ0k3OFdCU3I3S2RwVUFqam1BNlBSTmprdFdBRG1DVmFm?=
 =?utf-8?B?YlVJVFVFVzl2N0NMVWZVMFFTQzUzY1FPdnpWOCtHT244bDFiRmxXL0pJMXZS?=
 =?utf-8?B?TVhpaGp5RDBIdytjV1pHb2R1SmFMS3ZVOG8yK3ZVTDFXbnd1ZUd6T0twWGYv?=
 =?utf-8?B?ei9GNmNvVEFHa2RwZkcyN1hzSmk1TzU3dHlScTgxSVNZUzZ5RkVDZ1B2aDdt?=
 =?utf-8?B?ZmVVODFqQWxud0NQTWVneCtYdEsvT05FN09mTnRhb1JzYlZVcnAveHZpZ3Np?=
 =?utf-8?B?bTRISzZpQllxOVdDN1JtbTU2RE84YjNzc2tTM2oyWG45aEs0cllXaE84RHZx?=
 =?utf-8?B?NWFvOGJsdFA2OWViQ0FpYUhlL28ra1lxOWJMWGJQdHEwRkdIK25IY3N1QU4x?=
 =?utf-8?B?V1dRZW44czJRd01nV20vYldjemRzVG1UOXBTbFBiUTc2U09jRG5LT1pDbjZV?=
 =?utf-8?B?TUZ1TlV0TEFRdFAyWlRJNVJ5NUpNSUJUdCs4Tkg5VHRLakFIT0F4cTdjbnMv?=
 =?utf-8?B?eFBEY0lJK0hkUDdwYWMzcG5PL1RiSmlhM0h2WE5EWndxczF5QWJVRUdIODJP?=
 =?utf-8?B?eG1iWDlWdmVzcXdvdDYrS2tjTWJmcnVHQnI4djViVHBvNy9lUHFna1ZHUFJt?=
 =?utf-8?B?YWtQSkE0MGVwTjYwRzk1V3NmcHdZZERML0RoWGMweXBucUNReURteXREWW1p?=
 =?utf-8?B?dGpVZ1NOSlpHSy9lTmdkNTB4a0JCbUxxdHdqcUcvZUh4UDZQMkV0OGF0NE1Q?=
 =?utf-8?B?S0hla1ZOVXVQMG1jd0pXeWhvaVhNZlFJWkgvTEZsZVFOV2JKL0N6SndqTERm?=
 =?utf-8?B?Y2VaUWQ2T3NaSkgveFNaaGJiTXBnVlpaQjBuRWxGV0FqL1Z6aVREWGVTZDQ3?=
 =?utf-8?B?ckRXR1d4dmlCMkNYU096QlZLMjR1UU9ZNmpER0hLNEZtdUVNS3gyZjRzSUd5?=
 =?utf-8?B?blVCbHA2U2ZaUWVlZkxxNzQzZ0JmS1NabDQ0N21SaHpIR1VraHdZOGtWdURx?=
 =?utf-8?B?Y0dNNi8rMENJWkR0Rm51VjhxZnNIalcwNmQ1SXN4YVZJL3RPazRmeDVIZzk4?=
 =?utf-8?B?cy9tOTg0L0hFZm4rNjJxOTRiUXJhQStJYjdIVU9MOWRJWitHYVFFd3NEZk8z?=
 =?utf-8?B?SjdnZ2s5Y0tjb0tzVTlGNUFHM2dxUUlVb2pQSVZuZHJjcEh0dC9YaStRQnJt?=
 =?utf-8?B?eldoMlRCNEJ2NlZXaU1KRFZIYytYVVU2Z08rV3BzUHpiWGRuQXdGVzkzb2JJ?=
 =?utf-8?B?MVg0ODh2MDJjditqVE8wZDZiZWpEdlBqZWJNMXZ2WTg1aVFUUUhrdUo0Q0E2?=
 =?utf-8?B?VFN2VXFaSXB1TGJTdTRpT2g2NXBya0Jvak9EencvVlhXNGh3cy8raHVRazc5?=
 =?utf-8?B?MU1MZlpUM1k3QThFdmxFV1RuRm15NlM4SUFUa2ZJbmxkeDhpVjhPcFRiRDlS?=
 =?utf-8?B?WG1MZmJMR3N6Q0o0akkxNXlNaHZIb0hLTFhxRkV6NVBxbm1KMUdVQytMOE5w?=
 =?utf-8?B?ZElDSWVHcFUxVnRNRUl5VWczaG5ESGNRMDdhMmhkdjRPc0owS1l0dm42Qmsr?=
 =?utf-8?B?aFlkdkxVSWN1RWZyMEtqeWgvVVM5L1ZlMVZSSFg3QVZyakd4SURUM3A1WTlH?=
 =?utf-8?B?YnBGNm9WaDRPYnR3SXJZVFpMM3duVXdFRDJ1MVRtNC81UklvWmZyUkxiQTl5?=
 =?utf-8?B?MTlsckhQc0hHUC9nU0lkY01Bc29GRlJLcWZOR1hHU1J6SklNM2h1ck9NblVL?=
 =?utf-8?B?K2xDNlNPaGdxVnBhVHFVVzNnYUxHTjhsZXBRRFlLY0RITmZlQVJPbEJEUkZz?=
 =?utf-8?B?eGZLSiszRHkyNVhCUEJlZ2tyTjNjZ3dGT1pyUllBMFBmcGdvcElmTFJKSm85?=
 =?utf-8?B?ZHcrTGcza0h3SFUvRVZ3WVJDRm0zTGN4VmJ2aVp1UjFzSGZGdkVpS1VsVllm?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eaf1fdbc-5b61-4352-2af4-08dc4d7b1139
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2024 09:56:54.7604 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hMX0pt1W25RXf+4DjwzfQc36LeW5qvu9XiR6MsbHCqwD/CZ381j8hCWiQLD4QBAmuMKE9V742YK4rS6sgWdoPhm0ZoketEcB+pL/hY2qS4I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7277
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711447017; x=1742983017;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=58PjkConDaRKZl3YbMDJGQ3ld621n+yQtNembgBVHi8=;
 b=kqBPIycGmPPbHMiZk+Se+wc4+6x4mIorO8wPmbze87Zr21ilOzRk/BH4
 HJxLh4+DFIYa0JSQo7PL0M9tZJudQsDPfFj+1lsLw5DVuh+0cxcU57DDT
 VMNKyh/dQNuySLYuP6r5JeRP7pBwMAYw+iKHTx0Oz2vjex2vQHjlEQSWH
 116GGH2okLXMCxTRgjgcfn6zMiE+KNewEsRBsNqWILDXgvjEolqEpkM2P
 VMvBB7fDDaA94AznoZ3x7Xag9TifqJJMXcWx5pj8eMcMC0AQZAGbUKBFm
 k6i5yj/YTMqtLxYv8+5Gsp20Uv11w3m5tdr3KNfwBPi+YDTPPbng8LsfD
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kqBPIycG
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: remove gfp_mask from
 napi_alloc_skb()
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
Cc: siyanteng@loongson.cn, netdev@vger.kernel.org, alexandre.torgue@foss.st.com,
 edumazet@google.com, joabreu@synopsys.com, anthony.l.nguyen@intel.com,
 mcoquelin.stm32@gmail.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net, alexs@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Mon, 25 Mar 2024 15:41:14 -0700

> __napi_alloc_skb() is napi_alloc_skb() with the added flexibility
> of choosing gfp_mask. This is a NAPI function, so GFP_ATOMIC is
> implied. The only practical choice the caller has is whether to
> set __GFP_NOWARN. But that's a false choice, too, allocation failures
> in atomic context will happen, and printing warnings in logs,
> effectively for a packet drop, is both too much and very likely
> non-actionable.
> 
> This leads me to a conclusion that most uses of napi_alloc_skb()
> are simply misguided, and should use __GFP_NOWARN in the first
> place. We also have a "standard" way of reporting allocation
> failures via the queue stat API (qstats::rx-alloc-fail).
> 
> The direct motivation for this patch is that one of the drivers
> used at Meta calls napi_alloc_skb() (so prior to this patch without
> __GFP_NOWARN), and the resulting OOM warning is the top networking
> warning in our fleet.
> 
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>

Nice cleanup!

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>

> ---
> This is changing mostly the Intel drivers, if the choice of
> flags is important there, please do let me know, why IDPF
> uses bare GFP_ATOMIC, specifically.

idpf uses bare atomic w/o nowarn because the author didn't pay attention
to it. The change is totally safe.

Thanks,
Olek
