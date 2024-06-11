Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A3A9045FA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 22:53:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A50E40B2D;
	Tue, 11 Jun 2024 20:53:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d5PdYjFT-sbM; Tue, 11 Jun 2024 20:53:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C439E40B03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718139223;
	bh=L/H1n4mSB/P0X1E23/ZWSbf22Yf81VXMWERG/n+TB7k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GnaWw+gmk8fwpKF0D/LN42C3wTUn+3jGM/9kqetGnkcNLCyBgLOoVN631zC0wM2jI
	 KlXORYZpKFuQZKrWhEEpXZSZ0tSmWbEYDqqPS62rkmhOHg70nzWDJ8tdIChfq5RzT/
	 YxT1YviffxZyFmGkmQEFErPogc8dqcsHw6M72krSBtbm4OHZrODfR3nnLxwqrnkvkw
	 cgEdvmM1Vza8PvfaDqHL6Lq0FrLwjU2HZ8N6HpiSTWPSac8CZ4jeKQ5QPiYg+/ZQ7K
	 /vqL2JssO4N2bEwMwq19Kgs0+GSiBx8yxnxuF9sulirLJohgElI+f6vFOC/RJ7uwcD
	 agR/81ijdkK3A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C439E40B03;
	Tue, 11 Jun 2024 20:53:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C08CF1BF387
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 20:53:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2DE060596
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 20:53:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jhtd6FJCnKVU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 20:53:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 71CDF600CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71CDF600CC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 71CDF600CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 20:53:39 +0000 (UTC)
X-CSE-ConnectionGUID: 0qzEfO+BSOSW1Gd0swmOEw==
X-CSE-MsgGUID: 33nPDjjuRsmnKVpjK1F5qQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="15103885"
X-IronPort-AV: E=Sophos;i="6.08,231,1712646000"; d="scan'208";a="15103885"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 13:53:39 -0700
X-CSE-ConnectionGUID: XhpfldCCRMS/FoKpIizwxw==
X-CSE-MsgGUID: L/1ZBEMaRu2gUEzEvU3T+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,231,1712646000"; d="scan'208";a="40269984"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 13:53:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 13:53:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 13:53:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 13:53:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 13:53:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RH3n6kPF+S07YjD+jVcBlY4twOwTZmxsPOPExYLbmkQ06En4Fh4vjytL1y1V7WpLAqnX+sROdMqXPj7WjSEyvFnY/HS/ZaA40Tp5k5XSDjkhRxrQjAz+r+pVMgLCdh9J6fu8Q6BlGk5cKMx5FI9OsXOwPUcmNmUVJ9BrI56ewocQ8mZyv/D9Aow2M0LuZK4QrCv+jMljX22KnTLDiiHTR4MBXN/ngpQB0FRHgUed3CGArYC3omlcRUfxQ1w2t/QJltVsz3icOYrYzUAWRKgdi3zgb6N2xcJXO1dIZ8vKxl+Y68jMnPGNgH6sfMo6H+VhZD79aPwvzI+rYqc8mJhA5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L/H1n4mSB/P0X1E23/ZWSbf22Yf81VXMWERG/n+TB7k=;
 b=M+Xbjk4qthdgtXLckU5FEa86hN4vfCNBmjx00ywspcEPvQuBm2nKOzReB6Mxxx/4zHW6U/3AoOnuO0kh6keSchITIF4qhEB25H6iIcVCwZNaHJxayxOUqTYHA45J4NdUk0Lib6eM3UoTMyV6s54Ho44LKT20SMPHEayySXhRb+qzjgxd1k8oceS5BbE5kdoP700zdEFYIHQp/uiOl0+ScO6vrPrLVJxsZ3Nx81COnguTcN7gqu9zTHyB1jMHt29I6AupEnePp5+cnFPlNy104IAGpUk26qRmb/9XTv+NuUUeMfeBT+8rdW6h2rzeSY7b78bbg5Hxzjcio7jMsGf1IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH8PR11MB7048.namprd11.prod.outlook.com (2603:10b6:510:214::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Tue, 11 Jun
 2024 20:52:59 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 20:52:59 +0000
Message-ID: <0d40e3fb-c76a-42c9-a9c0-bdb0f4c8e015@intel.com>
Date: Tue, 11 Jun 2024 13:52:57 -0700
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-10-mateusz.polchlopek@intel.com>
 <94cf16ed-709b-4cab-9325-52670db25902@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <94cf16ed-709b-4cab-9325-52670db25902@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0027.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::32) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH8PR11MB7048:EE_
X-MS-Office365-Filtering-Correlation-Id: cc18bec7-2044-4f97-0e8b-08dc8a587a28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|1800799016|366008|376006;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UzFiVHY4cUJTVXNRd0MvOTBMMFgxU2oxR2hGZmNpSGdYK2tvL25aRTgrYWp6?=
 =?utf-8?B?Y0NpQVJVdlR5NnFzbHBZMGhBeGxuYU54ZGdLcnE4cmllSkJzeW5HSG9tVVIx?=
 =?utf-8?B?QjhHSWlKWnIycU9LajIzZ0RNM29uNGFtQlpnMWMxYW5OSzNFZTNqSGRVcGRD?=
 =?utf-8?B?bjh1dk9DeWEwT3ZYbjRkdnBsZUx6Wjk4R05PbEp1NkI0VXZCZ04yYzl3Rzc0?=
 =?utf-8?B?MVFOeFE5L3FDcGxxeVJnYUx0dmpscllUbnh6NFBZRW9ROVJoUEhhNHBQUE9X?=
 =?utf-8?B?dHFhT0tSUVBIK1RZVWtYZ0gvWTVRcFQrL2ZOREVrU1ZSY3pLNUl2dENUTWlK?=
 =?utf-8?B?MW9pTHdxK3ErNlhYTysrZW5zQnFOeTUvd2o4TkJVUWhkaUp0VWF3VnMxbUdx?=
 =?utf-8?B?YkdNby9YdGJyQ003Y3d6OFFmeHFLQktWbWsxQ2FZOGlOb2l3emZiMVJPWWt3?=
 =?utf-8?B?NmlIOGJjaU9hYTBxb0NZNDhieFpneVowS3NESWo5S2ZYYTZ5MHVCaU1lbGs5?=
 =?utf-8?B?emJjejlWOVhTYk9OY0dsVWhIYXZhcnQ4TnhGY1o0emVNc0VlNmVWVC84NnZD?=
 =?utf-8?B?NTZYNng2NG9XNFhYVUhSRitGemNobDYzbWs5VHF4MXB2SHdWSk5haExCRHNo?=
 =?utf-8?B?c0tLT1ZkeXRWN0JPaHZDZWxoQTIyT00yaGZyNE1TcnB2Szc3S09KWnhoQk1B?=
 =?utf-8?B?SnlnK21UaWxpVXk5a0c4dlZBQXBzT0pYMldlREdmdmdGVktaMldBYjR4eU1Y?=
 =?utf-8?B?WnhCdGJ3em1vVGc1N0tkMm9ZVG00QTU1OTFaWGFDQkpNNFZGbnltWmpNQXla?=
 =?utf-8?B?ZnpFaFYvR0pFYmtHKzlWYzVtZ0JOS1FpZGhaeEdiNGxHNDJzVGFLYyt2SnFY?=
 =?utf-8?B?TFdOS2hhQ3FoWWtEUko5cmdZbGt5bXg0QUJSYUl5V3doMHFyOVZsK2NMNXc4?=
 =?utf-8?B?cmU3NTYvWnQ2MVpyTDZuN2hzMzBIMFR0VmZEYnAwbVYrenJNaXNJa0JpTDRG?=
 =?utf-8?B?R3kxMVY1V2ZpRDdscHYvMWtqdTJRU2FVaWErQ3ZXdVhRL3hrMkRwaTgyUzlN?=
 =?utf-8?B?MFAzMHJKMlJyUmhhM1h5NVQ2aEhRc0F3ZGlKeHlUZ3hsSDNERlZHWFZyVndV?=
 =?utf-8?B?RzhQbGJTamlmbVI2RkhwZURGK1hpWHU0M2NkV3VMbGRiNVRaSldlODJIWWls?=
 =?utf-8?B?U2tsNmk5TzRENG50dHVNUlRtczdPcndUSTN2eHRpRjFzcVRjVlBUK09EZmRV?=
 =?utf-8?B?SVEyZGZBRC9aUHBtenFJUmkzRWhMWGNtT3FKcENHWWg5UVljVGlITjlTb0VW?=
 =?utf-8?B?QTRDeFpqRDdBcUpRbEFFd1ArT3VnNmVTNmJ1UGNFRVM3WHdYTUQ1M09FQi8x?=
 =?utf-8?B?RHJCeThOT3gzeStBQ2kwTWZZeEJjTWNIT2hmTGdnR0J3aEkva0k5K0R6Vkha?=
 =?utf-8?B?Ym84MFBTVGEvZEdqcTJSUVdORGdzdE9XcjJCWnRIamduN2ZjK2cwaUc5aUo0?=
 =?utf-8?B?SzZwUkwzeUFWZ3ZEdGgxNldKQmhDK3pOeHJzR0tKNVg0UkV2ckFWQ1ZZVGpK?=
 =?utf-8?B?d2VkR2FXSUhCdUVxUkowdzN5T2NoRlJMbUI3NjB3TE02eHZvOGNEKzU1UXZP?=
 =?utf-8?B?azdKcGR6a1pHa3RtTkZhRXJMQXFLMnVLZVRBb0FGeTBmTDRySGhvYUdpQXhI?=
 =?utf-8?B?R2NXYTdUa3RTQWhtc2N2bXc5NGJzcnhuK1REV1FwSmF1YjA1U0dhb0krb3px?=
 =?utf-8?Q?nAMw28hJdF0Nbbzj9sqMo9h7jhhe3JmS0Nx6GLL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(1800799016)(366008)(376006); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTZFejRJYjAvQUM1dSs0Vkh0TlVZenBHTUYxbjFrbTJ6dkxKSWdoMDl6UWhT?=
 =?utf-8?B?cjhpVmJXYjhZYXQzQjh2NGU5MS9JWGNRT01wd3hXUjNFbjZsQ2RyVlV1d2ZS?=
 =?utf-8?B?amp1K25SNmxmSWJ0aGhwamdZM2VDSklmNVkzLysrSThWalgzU3hBNWFDa2RI?=
 =?utf-8?B?UllTSm41YTVIUDk4VUJteU51T3JyZGVWM3FFWlUybkMzbERrRkYyVU4vbzZE?=
 =?utf-8?B?cGxpY092UWhaTVNjdWdSRGFMR2NuWHhjdVM1YUh3bDcyRkU2T1NESnlZblpl?=
 =?utf-8?B?am9kSlBJeFJaT000dWR3RUxTRzY0NmEwNXkrU1dHcmc3Z1ViQkUwUEpwYzV1?=
 =?utf-8?B?VGZURG9nN1pXQmNSbGZYV1VpY3o1ZmlxTWthS2wwcForWkFUeUwxOVRVM0NQ?=
 =?utf-8?B?aU9ER3IvZVRoUXBIVWhUT0xWeDIyYk1taFp2ekV4RnBhU2xWL1V3ZkhiM2t0?=
 =?utf-8?B?UEZBUzdNUkxRMTVvUXVsNjRCaFpBd3ZZRkdmM21ENTZsWHdHY1d2WElGVzB5?=
 =?utf-8?B?MUFSMFlwRXdLa3Evai9vSllYekhReFFrWkd0cVpUSnJ3TGhHNVhVd1BUQWdE?=
 =?utf-8?B?OCswUWVRLy9mRWpzNXVVYzNiSUNnMER1Rnl5RExMS2JyN09NdllUQ0ltUnlj?=
 =?utf-8?B?bWNaQ0lGVmx4WFoxVXQwd2tIeWxjZDYwU1R0dDlKMFVjaFBsSmVhYkNPTUxL?=
 =?utf-8?B?SXVBWmNZSmV5cVBteVVQTEhhUGxrQzhHMllETCtjMU5WMHRmemlqV0xXTmdC?=
 =?utf-8?B?MTUvOG5oSy91d01GREhOMWlIb3FNRTFhSGd0WVBmekJiTUFxNDRKaXBSajF3?=
 =?utf-8?B?ZFZYS2FmRnVxYmVNT2w4aVZ3cGxTdjV4VEFTYS95Rld1VFlmemRaaWtlY1Nr?=
 =?utf-8?B?ZWJuZzNmY1ZsTFJSckN3cFZ3cFBPVXMwUE8xK1pYMUV5MDY1aUZvd2YxRFZR?=
 =?utf-8?B?TjFrSzVCTzZrdWVscXNoVFk2REFiQXgyM1VjRFRyOThLbTY0SWtEcTRqN3hj?=
 =?utf-8?B?MkI3SEJiTk5TTW5Ca2VDRXd5TFZKOGU0cUpYWGRIVEdYMTl2ZE5qN2dGOFha?=
 =?utf-8?B?eDFWOXBQZnZIaVpiYmdSWlpmQjlJR3hIUDhQa2pwSjM5YStLOFRmdm9EMk9j?=
 =?utf-8?B?ZzVHM0t0KzJuT0dyRVVqckV4aXJwMlV4OGZMYzQ0RGZaTzA2SXhqQU9Jd0x5?=
 =?utf-8?B?OTFTRm5rRmZSSGQ5OUNxWUVOMmFWc1JCMVk1dDdWMzlOMDhMYndLRkI1YUVx?=
 =?utf-8?B?emIzWUlVSkhFVjNlblIyVVYyOCtlWE1hRUlXeStvTkYvRXcvSGZvRWVSbUZG?=
 =?utf-8?B?NzgxMWtiU1pjQlFjMjVlWWdaZ0ZnNDRXUjV6Vk10V3NWSjZVUW5ib1RheUVR?=
 =?utf-8?B?TWNrSzQzN0FpdVRUUHM5alhDTVJEKzdxVHFmZnkrOFd0aFFTWC9ZeGVjUXJj?=
 =?utf-8?B?MlBvaCt1OEFMcVdHQjdkeDdYSmVmTEFXWFFVMTlrR0VhTElQNlBmdFl0U3BG?=
 =?utf-8?B?QkcvOWIwa3lmY1NEZG1hRzg2SmNqdTkrT1VHL2FSQjVyMi9Fc204Z09GYnNI?=
 =?utf-8?B?K25DYW5HL0tEZG9pWHVLSWozUEovOHJDcUlPRzV1L1ppd3NuM3l4UkFaN3RV?=
 =?utf-8?B?a2VydTlQWHIyMHdMQVJjR2xxbFFZNHNMTDdoV0FFS0JPcTIzTEZHTzN0cHRj?=
 =?utf-8?B?ZUhJNktWMTNSbjdOOHB3U2dCSE1PM2JJQjRpeTZ0NllHVjF0Z0FrRVpTV1pz?=
 =?utf-8?B?dXh0MHVOd1YzTlZFTng0YkF0b2s0Q3paL256UkR1Vjd5ejNRL0ZmWTBqSmg2?=
 =?utf-8?B?WUZYbjhzUTR3MWp1T0VhUnhZOE0xbFFYNHh0SEh5RzAzMVJ5VTh1N0tLSk5m?=
 =?utf-8?B?dUFuUzJnVEN3Y3EyNDZTVTdnc1FIV1ZIeVRuSmlHZUpveGVneVlzelM5QmtE?=
 =?utf-8?B?OXFNYnBUcDNzMklpMFVKSnQ1N3UzTUhGS1NUOGZXS2hSdDhpR3UxVk1QM3k4?=
 =?utf-8?B?Tm4wY3N3QWFiMDluT3hkR2lVb0VnMkdPWHR0YmhwL2lxTTRoeWVlejVFcGpu?=
 =?utf-8?B?dkRPalZ4KzFkUnd6eUF4dDB3Vmlsd0NEajlEUVFxTU1HUXpsM0xhcm5qN0Vi?=
 =?utf-8?B?QU5OM21ubXg1NG9VaG01VGQ2SGFOVGp4amgyUkpvQTRsUUp4MWYvdVMyaUhQ?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc18bec7-2044-4f97-0e8b-08dc8a587a28
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 20:52:59.3486 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bgsLjktuRmqUnII+LxBQlyn5FFCW9b0oj3vWxmTjaOTe04U/s27JTuTw7nR+wzGPGFPnJbC4gvZqHlHKW054B7J2UJ8so5I8N/PKvGxoVok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7048
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718139220; x=1749675220;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=46wUNmPYsdpGJ00lKlTHTbE1pDoEJm/umuSE2kHQsHY=;
 b=FmKM/bjRc4C24wFeYWRQ3vrS2IvzVVh+r68Hsf1jE3wzpkXglOnv4HCh
 REKVLeAOoAJN853muwDv3iXGGHB97H0ffXdFM6CJocjFO5yw8ezSljXQN
 3nX3mNtB4JuHvWNAhX0FPX7b9ALXMp/fDAvRZMR2DwV7KqTGF+5hRH3rv
 tQem/PfxIU2/CiqmV5NQV3taSFYJxs4FDS4ZYovlfiutsBdj9DsYXYBxx
 5xidVNoA7ynRrGxEKaaNnWAmbB61cW+ED8/UAkqZY7X3jFfWnvqAobjKB
 UYp+aXryWJaLWP9+9rA8u2yc/dRAaNIEz+woB7aQd0us7O5PoQsvrgsb/
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FmKM/bjR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/11/2024 4:47 AM, Alexander Lobakin wrote:
> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Date: Tue,  4 Jun 2024 09:13:57 -0400
> 
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
>> negotiating to enable the advanced flexible descriptor layout. Add the
>> flexible NIC layout (RXDID=2) as a member of the Rx descriptor union.
>>
>> Also add bit position definitions for the status and error indications
>> that are needed.
>>
>> The iavf_clean_rx_irq function needs to extract a few fields from the Rx
>> descriptor, including the size, rx_ptype, and vlan_tag.
>> Move the extraction to a separate function that decodes the fields into
>> a structure. This will reduce the burden for handling multiple
>> descriptor types by keeping the relevant extraction logic in one place.
>>
>> To support handling an additional descriptor format with minimal code
>> duplication, refactor Rx checksum handling so that the general logic
>> is separated from the bit calculations. Introduce an iavf_rx_desc_decoded
>> structure which holds the relevant bits decoded from the Rx descriptor.
>> This will enable implementing flexible descriptor handling without
>> duplicating the general logic twice.
>>
>> Introduce an iavf_extract_flex_rx_fields, iavf_flex_rx_hash, and
>> iavf_flex_rx_csum functions which operate on the flexible NIC descriptor
>> format instead of the legacy 32 byte format. Based on the negotiated
>> RXDID, select the correct function for processing the Rx descriptors.
>>
>> With this change, the Rx hot path should be functional when using either
>> the default legacy 32byte format or when we switch to the flexible NIC
>> layout.
>>
>> Modify the Rx hot path to add support for the flexible descriptor
>> format and add request enabling Rx timestamps for all queues.
>>
>> As in ice, make sure we bump the checksum level if the hardware detected
>> a packet type which could have an outer checksum. This is important
>> because hardware only verifies the inner checksum.
>>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> ---
>>  drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 354 +++++++++++++-----
>>  drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   8 +
>>  drivers/net/ethernet/intel/iavf/iavf_type.h   | 147 ++++++--
>>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   5 +
>>  4 files changed, 391 insertions(+), 123 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
>> index 26b424fd6718..97da5af52ad7 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
>> @@ -895,63 +895,68 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
>>  	return true;
>>  }
>>  
>> +/* iavf_rx_csum_decoded
>> + *
>> + * Checksum offload bits decoded from the receive descriptor.
>> + */
>> +struct iavf_rx_csum_decoded {
>> +	u8 l3l4p : 1;
>> +	u8 ipe : 1;
>> +	u8 eipe : 1;
>> +	u8 eudpe : 1;
>> +	u8 ipv6exadd : 1;
>> +	u8 l4e : 1;
>> +	u8 pprs : 1;
>> +	u8 nat : 1;
>> +};
> 
> I see the same struct in idpf, probably a candidate for libeth.
> 

Makes sense.

>> +
>>  /**
>> - * iavf_rx_checksum - Indicate in skb if hw indicated a good cksum
>> + * iavf_rx_csum - Indicate in skb if hw indicated a good checksum
>>   * @vsi: the VSI we care about
>>   * @skb: skb currently being received and modified
>> - * @rx_desc: the receive descriptor
>> + * @ptype: decoded ptype information
>> + * @csum_bits: decoded Rx descriptor information
>>   **/
>> -static void iavf_rx_checksum(struct iavf_vsi *vsi,
>> -			     struct sk_buff *skb,
>> -			     union iavf_rx_desc *rx_desc)
>> +static void iavf_rx_csum(struct iavf_vsi *vsi, struct sk_buff *skb,
> 
> Can't @vsi be const?
> 
>> +			 struct libeth_rx_pt *ptype,
> 
> struct libeth_rx_pt is smaller than a pointer to it. Pass it directly
> 
>> +			 struct iavf_rx_csum_decoded *csum_bits)
> 
> Same for this struct.
> 
>>  {
>> -	struct libeth_rx_pt decoded;
>> -	u32 rx_error, rx_status;
>>  	bool ipv4, ipv6;
>> -	u8 ptype;
>> -	u64 qword;
>>  
>>  	skb->ip_summed = CHECKSUM_NONE;
>>  
>> -	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
>> -	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
>> -
>> -	decoded = libie_rx_pt_parse(ptype);
>> -	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
>> -		return;
>> -
>> -	rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);
>> -	rx_status = FIELD_GET(IAVF_RXD_QW1_STATUS_MASK, qword);
>> -
>>  	/* did the hardware decode the packet and checksum? */
>> -	if (!(rx_status & BIT(IAVF_RX_DESC_STATUS_L3L4P_SHIFT)))
>> +	if (!csum_bits->l3l4p)
>>  		return;
>>  
>> -	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
>> -	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
>> +	ipv4 = libeth_rx_pt_get_ip_ver(*ptype) == LIBETH_RX_PT_OUTER_IPV4;
>> +	ipv6 = libeth_rx_pt_get_ip_ver(*ptype) == LIBETH_RX_PT_OUTER_IPV6;
>>  
>> -	if (ipv4 &&
>> -	    (rx_error & (BIT(IAVF_RX_DESC_ERROR_IPE_SHIFT) |
>> -			 BIT(IAVF_RX_DESC_ERROR_EIPE_SHIFT))))
>> +	if (ipv4 && (csum_bits->ipe || csum_bits->eipe))
>>  		goto checksum_fail;
>>  
>>  	/* likely incorrect csum if alternate IP extension headers found */
>> -	if (ipv6 &&
>> -	    rx_status & BIT(IAVF_RX_DESC_STATUS_IPV6EXADD_SHIFT))
>> -		/* don't increment checksum err here, non-fatal err */
>> +	if (ipv6 && csum_bits->ipv6exadd)
>>  		return;
>>  
>>  	/* there was some L4 error, count error and punt packet to the stack */
>> -	if (rx_error & BIT(IAVF_RX_DESC_ERROR_L4E_SHIFT))
>> +	if (csum_bits->l4e)
>>  		goto checksum_fail;
>>  
>>  	/* handle packets that were not able to be checksummed due
>>  	 * to arrival speed, in this case the stack can compute
>>  	 * the csum.
>>  	 */
>> -	if (rx_error & BIT(IAVF_RX_DESC_ERROR_PPRS_SHIFT))
>> +	if (csum_bits->pprs)
>>  		return;
>>  
>> +	/* If there is an outer header present that might contain a checksum
>> +	 * we need to bump the checksum level by 1 to reflect the fact that
>> +	 * we are indicating we validated the inner checksum.
>> +	 */
>> +	if (ptype->tunnel_type >= LIBETH_RX_PT_TUNNEL_IP_GRENAT)
>> +		skb->csum_level = 1;
>> +
>>  	skb->ip_summed = CHECKSUM_UNNECESSARY;
>>  	return;
> 
> For the whole function: you need to use unlikely() for checksum errors
> to not slow down regular frames.
> Also, I would even unlikely() packets with not verified checksum as it's
> really rare case.
> Optimize hotpath for most common workloads.
> 

Makes sense.

>>  
>> @@ -960,22 +965,105 @@ static void iavf_rx_checksum(struct iavf_vsi *vsi,
>>  }
>>  
>>  /**
>> - * iavf_rx_hash - set the hash value in the skb
>> + * iavf_legacy_rx_csum - Indicate in skb if hw indicated a good cksum
>> + * @vsi: the VSI we care about
>> + * @skb: skb currently being received and modified
>> + * @rx_desc: the receive descriptor
>> + *
>> + * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
>> + * descriptor writeback format.
>> + **/
>> +static void iavf_legacy_rx_csum(struct iavf_vsi *vsi,
>> +				struct sk_buff *skb,
>> +				union iavf_rx_desc *rx_desc)
> 
> @vsi and @rx_desc can be const.
> 
>> +{
>> +	struct iavf_rx_csum_decoded csum_bits;
>> +	struct libeth_rx_pt decoded;
>> +
>> +	u32 rx_error;
>> +	u64 qword;
>> +	u16 ptype;
>> +
>> +	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
>> +	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
>> +	rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);
> 
> You don't need @rx_error before libeth_rx_pt_has_checksum().
> 
>> +	decoded = libie_rx_pt_parse(ptype);
>> +
>> +	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
>> +		return;
>> +
>> +	csum_bits.ipe = FIELD_GET(IAVF_RX_DESC_ERROR_IPE_MASK, rx_error);
> 
> So, @rx_error is a field of @qword and then there are more subfields?
> Why not extract those fields directly from @qword?
> 

Yea that would be better. Probably just because the pre-existing
defines. Should be simple to update it.

>> +	csum_bits.eipe = FIELD_GET(IAVF_RX_DESC_ERROR_EIPE_MASK, rx_error);
>> +	csum_bits.l4e = FIELD_GET(IAVF_RX_DESC_ERROR_L4E_MASK, rx_error);
>> +	csum_bits.pprs = FIELD_GET(IAVF_RX_DESC_ERROR_PPRS_MASK, rx_error);
>> +	csum_bits.l3l4p = FIELD_GET(IAVF_RX_DESC_STATUS_L3L4P_MASK, rx_error);
>> +	csum_bits.ipv6exadd = FIELD_GET(IAVF_RX_DESC_STATUS_IPV6EXADD_MASK,
>> +					rx_error);
>> +	csum_bits.nat = 0;
>> +	csum_bits.eudpe = 0;
> 
> Initialize the whole struct with = { } at the declaration site and
> remove this.
> 
>> +
>> +	iavf_rx_csum(vsi, skb, &decoded, &csum_bits);
> 
> In order to avoid having 2 call sites for this, make
> iavf_{flex,legacy}_rx_csum() return @csum_bits and call iavf_rx_csum()
> outside of them once.
> 

Good idea.

>> +}
>> +
>> +/**
>> + * iavf_flex_rx_csum - Indicate in skb if hw indicated a good cksum
>> + * @vsi: the VSI we care about
>> + * @skb: skb currently being received and modified
>> + * @rx_desc: the receive descriptor
>> + *
>> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
>> + * descriptor writeback format.
>> + **/
>> +static void iavf_flex_rx_csum(struct iavf_vsi *vsi, struct sk_buff *skb,
>> +			      union iavf_rx_desc *rx_desc)
> 
> Same for const.
> 
>> +{
>> +	struct iavf_rx_csum_decoded csum_bits;
>> +	struct libeth_rx_pt decoded;
>> +	u16 rx_status0, ptype;
>> +
>> +	rx_status0 = le16_to_cpu(rx_desc->flex_wb.status_error0);
> 
> This is not needed before libeth_rx_pt_has_checksum().
> 
>> +	ptype = FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M,
>> +			  le16_to_cpu(rx_desc->flex_wb.ptype_flexi_flags0));
> 
> You also access this field later when extracting base fields. Shouldn't
> this be combined somehow?
> 
>> +	decoded = libie_rx_pt_parse(ptype);
>> +
>> +	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
>> +		return;
>> +
>> +	csum_bits.ipe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_IPE_M,
>> +				  rx_status0);
>> +	csum_bits.eipe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_EIPE_M,
>> +				   rx_status0);
>> +	csum_bits.l4e = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_L4E_M,
>> +				  rx_status0);
>> +	csum_bits.eudpe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_M,
>> +				    rx_status0);
>> +	csum_bits.l3l4p = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_L3L4P_M,
>> +				    rx_status0);
>> +	csum_bits.ipv6exadd = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_IPV6EXADD_M,
>> +					rx_status0);
>> +	csum_bits.nat = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS1_NAT_M, rx_status0);
>> +	csum_bits.pprs = 0;
> 
> See above for struct initialization.
> 
>> +
>> +	iavf_rx_csum(vsi, skb, &decoded, &csum_bits);
> 
> See above.
> 
>> +}
>> +
>> +/**
>> + * iavf_legacy_rx_hash - set the hash value in the skb
>>   * @ring: descriptor ring
>>   * @rx_desc: specific descriptor
>>   * @skb: skb currently being received and modified
>>   * @rx_ptype: Rx packet type
>> + *
>> + * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
>> + * descriptor writeback format.
>>   **/
>> -static void iavf_rx_hash(struct iavf_ring *ring,
>> -			 union iavf_rx_desc *rx_desc,
>> -			 struct sk_buff *skb,
>> -			 u8 rx_ptype)
>> +static void iavf_legacy_rx_hash(struct iavf_ring *ring,
>> +				union iavf_rx_desc *rx_desc,
> 
> Const for both.
> 
>> +				struct sk_buff *skb, u8 rx_ptype)
>>  {
>> +	const __le64 rss_mask = cpu_to_le64(IAVF_RX_DESC_STATUS_FLTSTAT_MASK);
>>  	struct libeth_rx_pt decoded;
>>  	u32 hash;
>> -	const __le64 rss_mask =
>> -		cpu_to_le64((u64)IAVF_RX_DESC_FLTSTAT_RSS_HASH <<
>> -			    IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT);
> 
> Looks like unrelated, but nice change anyway.
> 
>>  
>>  	decoded = libie_rx_pt_parse(rx_ptype);
>>  	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
>> @@ -987,6 +1075,38 @@ static void iavf_rx_hash(struct iavf_ring *ring,
>>  	}
>>  }
>>  
>> +/**
>> + * iavf_flex_rx_hash - set the hash value in the skb
>> + * @ring: descriptor ring
>> + * @rx_desc: specific descriptor
>> + * @skb: skb currently being received and modified
>> + * @rx_ptype: Rx packet type
>> + *
>> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
>> + * descriptor writeback format.
>> + **/
>> +static void iavf_flex_rx_hash(struct iavf_ring *ring,
>> +			      union iavf_rx_desc *rx_desc,
> 
> Const.
> 
>> +			      struct sk_buff *skb, u16 rx_ptype)
> 
> Why is @rx_ptype u16 here, but u8 above? Just use u32 for both.
> 
>> +{
>> +	struct libeth_rx_pt decoded;
>> +	u16 status0;
>> +	u32 hash;
>> +
>> +	if (!(ring->netdev->features & NETIF_F_RXHASH))
> 
> This is checked in libeth_rx_pt_has_hash(), why check 2 times?
> 

I think libeth_rx_pt_has_hash() was added after so this patch is
re-introducing the check on accident when porting to upstream.

>> +		return;
>> +
>> +	decoded = libie_rx_pt_parse(rx_ptype);
>> +	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
>> +		return;
>> +
>> +	status0 = le16_to_cpu(rx_desc->flex_wb.status_error0);
>> +	if (status0 & IAVF_RX_FLEX_DESC_STATUS0_RSS_VALID_M) {
>> +		hash = le32_to_cpu(rx_desc->flex_wb.rss_hash);
>> +		libeth_rx_pt_set_hash(skb, hash, decoded);
>> +	}
>> +}
> 
> Also, just parse rx_ptype once in process_skb_fields(), you don't need
> to do that in each function.
> 
>> +
>>  /**
>>   * iavf_process_skb_fields - Populate skb header fields from Rx descriptor
>>   * @rx_ring: rx descriptor ring packet is being transacted on
>> @@ -998,14 +1118,17 @@ static void iavf_rx_hash(struct iavf_ring *ring,
>>   * order to populate the hash, checksum, VLAN, protocol, and
>>   * other fields within the skb.
>>   **/
>> -static void
>> -iavf_process_skb_fields(struct iavf_ring *rx_ring,
>> -			union iavf_rx_desc *rx_desc, struct sk_buff *skb,
>> -			u8 rx_ptype)
>> +static void iavf_process_skb_fields(struct iavf_ring *rx_ring,
>> +				    union iavf_rx_desc *rx_desc,
> 
> Const.
> 
>> +				    struct sk_buff *skb, u16 rx_ptype)
>>  {
>> -	iavf_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
>> -
>> -	iavf_rx_checksum(rx_ring->vsi, skb, rx_desc);
>> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE) {
> 
> Any likely/unlikely() here? Or it's 50:50?
> 

Strictly speaking, the likely way is whatever way the software
configured during the slow init path. That's not a compile time known
value so we can't really use that to optimize this flow.

I don't know which is more common. The pre-existing descriptor format is
likely supported on more PFs currently, but I think overtime we may have
more support for the flex descriptors and that might end up being default.

>> +		iavf_legacy_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
>> +		iavf_legacy_rx_csum(rx_ring->vsi, skb, rx_desc);
>> +	} else {
>> +		iavf_flex_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
>> +		iavf_flex_rx_csum(rx_ring->vsi, skb, rx_desc);
>> +	}
>>  
>>  	skb_record_rx_queue(skb, rx_ring->queue_index);
>>  
>> @@ -1092,7 +1215,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
>>  /**
>>   * iavf_is_non_eop - process handling of non-EOP buffers
>>   * @rx_ring: Rx ring being processed
>> - * @rx_desc: Rx descriptor for current buffer
>> + * @fields: Rx descriptor extracted fields
>>   * @skb: Current socket buffer containing buffer in progress
>>   *
>>   * This function updates next to clean.  If the buffer is an EOP buffer
>> @@ -1101,7 +1224,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
>>   * that this is in fact a non-EOP buffer.
>>   **/
>>  static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
>> -			    union iavf_rx_desc *rx_desc,
>> +			    struct iavf_rx_extracted *fields,
> 
> Pass value instead of pointer.
> 
>>  			    struct sk_buff *skb)
> 
> Is it still needed?
> 
>>  {
>>  	u32 ntc = rx_ring->next_to_clean + 1;
>> @@ -1113,8 +1236,7 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
>>  	prefetch(IAVF_RX_DESC(rx_ring, ntc));
>>  
>>  	/* if we are the last buffer then there is nothing else to do */
>> -#define IAVF_RXD_EOF BIT(IAVF_RX_DESC_STATUS_EOF_SHIFT)
>> -	if (likely(iavf_test_staterr(rx_desc, IAVF_RXD_EOF)))
>> +	if (likely(fields->end_of_packet))
>>  		return false;
>>  
>>  	rx_ring->rx_stats.non_eop_descs++;
>> @@ -1122,6 +1244,91 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
>>  	return true;
>>  }
>>  
>> +/**
>> + * iavf_extract_legacy_rx_fields - Extract fields from the Rx descriptor
>> + * @rx_ring: rx descriptor ring
>> + * @rx_desc: the descriptor to process
>> + * @fields: storage for extracted values
>> + *
>> + * Decode the Rx descriptor and extract relevant information including the
>> + * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
>> + *
>> + * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
>> + * descriptor writeback format.
>> + */
>> +static void iavf_extract_legacy_rx_fields(struct iavf_ring *rx_ring,
>> +					  union iavf_rx_desc *rx_desc,
> 
> Consts.
> 
>> +					  struct iavf_rx_extracted *fields)
> 
> Return a struct &iavf_rx_extracted instead of passing a pointer to it.
> 
>> +{
>> +	u64 qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
>> +
>> +	fields->size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qword);
>> +	fields->rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
>> +
>> +	if (qword & IAVF_RX_DESC_STATUS_L2TAG1P_MASK &&
>> +	    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
>> +		fields->vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
>> +
>> +	if (rx_desc->wb.qword2.ext_status &
>> +	    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
> 
> Bitops must have own pairs of braces.

I don't understand what this comment is asking for. braces like { }? Or
adding parenthesis around bit op?


>> +
>> +	flexi_flags0 = le16_to_cpu(rx_desc->flex_wb.ptype_flexi_flags0);
>> +
>> +	fields->rx_ptype = FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M, flexi_flags0);
> 
> le16_get_bits() instead of these two?

Neat! I wasn't aware of this.

>> +
>> +	status0 = le16_to_cpu(rx_desc->flex_wb.status_error0);
>> +	if (status0 & IAVF_RX_FLEX_DESC_STATUS0_L2TAG1P_M &&
>> +	    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
> 
> Braces for bitops.
> 
>> +		fields->vlan_tag = le16_to_cpu(rx_desc->flex_wb.l2tag1);
>> +
>> +	status1 = le16_to_cpu(rx_desc->flex_wb.status_error1);
>> +	if (status1 & IAVF_RX_FLEX_DESC_STATUS1_L2TAG2P_M &&
>> +	    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
>> +		fields->vlan_tag = le16_to_cpu(rx_desc->flex_wb.l2tag2_2nd);
> 
> (same)
> 
>> +
>> +	fields->end_of_packet = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS_ERR0_EOP_BIT,
>> +					  status0);
>> +	fields->rxe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS_ERR0_RXE_BIT,
>> +				status0);
>> +}
>> +
>> +static void iavf_extract_rx_fields(struct iavf_ring *rx_ring,
>> +				   union iavf_rx_desc *rx_desc,
>> +				   struct iavf_rx_extracted *fields)
> 
> Consts + return struct @fields directly.
> 
>> +{
>> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
> 
> You check this several times, this could be combined and optimized.
> 

Yea. I wasn't sure what the best way to optimize this, while also trying
to avoid duplicating code. Ideally we want to check it once and then go
through the correct sequence (calling the legacy or flex function
versions). But I also didn't want to duplicate all of the common code
between each flex or legacy call site.

>> @@ -1219,22 +1414,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>>  		/* probably a little skewed due to removing CRC */
>>  		total_rx_bytes += skb->len;
>>  
>> -		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
>> -		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
>> -
>>  		/* populate checksum, VLAN, and protocol */
>> -		iavf_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
>> -
>> -		if (qword & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
>> -		    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
>> -			vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
>> -		if (rx_desc->wb.qword2.ext_status &
>> -		    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
>> -		    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
>> -			vlan_tag = le16_to_cpu(rx_desc->wb.qword2.l2tag2_2);
> 
> BTW I'm wondering whether filling the whole @fields can be less
> optimized than accesssing descriptor fields one by one like it was here
> before.
> I mean, in some cases you won't need all the fields from the extracted
> struct, but they will be read and initialized anyway.


Yes. I was more focused on "what makes this readable" because I didn't
want to end up having two near identical copies of iavf_clean_rx_irq
which just used different bit offsets. But then it became tricky to
figure out how to do it in a good way. :/

> 
>> +		iavf_process_skb_fields(rx_ring, rx_desc, skb, fields.rx_ptype);
>>  
>>  		iavf_trace(clean_rx_irq_rx, rx_ring, rx_desc, skb);
>> -		iavf_receive_skb(rx_ring, skb, vlan_tag);
>> +		iavf_receive_skb(rx_ring, skb, fields.vlan_tag);
>>  		skb = NULL;
>>  
>>  		/* update budget accounting */
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
>> index 17309d8625ac..3661cd57a068 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
>> @@ -99,6 +99,14 @@ static inline bool iavf_test_staterr(union iavf_rx_desc *rx_desc,
>>  		  cpu_to_le64(stat_err_bits));
>>  }
>>  
>> +struct iavf_rx_extracted {
>> +	unsigned int size;
>> +	u16 vlan_tag;
>> +	u16 rx_ptype;
>> +	u8 end_of_packet:1;
>> +	u8 rxe:1;
>> +};
> 
> Also something libethish, but not sure for this one.
> 
>> +
>>  /* How many Rx Buffers do we bundle into one write to the hardware ? */
>>  #define IAVF_RX_INCREMENT(r, i) \
>>  	do {					\
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
>> index f6b09e57abce..82c16a720807 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_type.h
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
>> @@ -206,6 +206,45 @@ union iavf_16byte_rx_desc {
>>  	} wb;  /* writeback */
>>  };
>>  
>> +/* Rx Flex Descriptor NIC Profile
>> + * RxDID Profile ID 2
>> + * Flex-field 0: RSS hash lower 16-bits
>> + * Flex-field 1: RSS hash upper 16-bits
>> + * Flex-field 2: Flow ID lower 16-bits
>> + * Flex-field 3: Flow ID higher 16-bits
>> + * Flex-field 4: reserved, VLAN ID taken from L2Tag
>> + */
>> +struct iavf_32byte_rx_flex_wb {
>> +	/* Qword 0 */
>> +	u8 rxdid;
>> +	u8 mir_id_umb_cast;
>> +	__le16 ptype_flexi_flags0;
>> +	__le16 pkt_len;
>> +	__le16 hdr_len_sph_flex_flags1;
>> +
>> +	/* Qword 1 */
>> +	__le16 status_error0;
>> +	__le16 l2tag1;
>> +	__le32 rss_hash;
>> +
>> +	/* Qword 2 */
>> +	__le16 status_error1;
>> +	u8 flexi_flags2;
>> +	u8 ts_low;
>> +	__le16 l2tag2_1st;
>> +	__le16 l2tag2_2nd;
>> +
>> +	/* Qword 3 */
>> +	__le32 flow_id;
>> +	union {
>> +		struct {
>> +			__le16 rsvd;
>> +			__le16 flow_id_ipv6;
>> +		} flex;
>> +		__le32 ts_high;
>> +	} flex_ts;
>> +};
> 
> I'm wondering whether HW descriptors can be defined as just a bunch of
> u64 qwords instead of all those u8/__le16 etc. fields. That would be faster.
> In case this would work differently on BE and LE, #ifdefs.
> 

we could define them as __le64 qwords for sure.

>> +
>>  union iavf_32byte_rx_desc {
>>  	struct {
>>  		__le64  pkt_addr; /* Packet buffer address */
>> @@ -253,35 +292,34 @@ union iavf_32byte_rx_desc {
>>  			} hi_dword;
>>  		} qword3;
>>  	} wb;  /* writeback */
>> +	struct iavf_32byte_rx_flex_wb flex_wb;
> 
> So, already existing formats were described here directly, but flex is
> declared as a field? Can this be more consistent?
> 
>>  };
>>  
>> -enum iavf_rx_desc_status_bits {
>> -	/* Note: These are predefined bit offsets */
>> -	IAVF_RX_DESC_STATUS_DD_SHIFT		= 0,
>> -	IAVF_RX_DESC_STATUS_EOF_SHIFT		= 1,
>> -	IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT	= 2,
>> -	IAVF_RX_DESC_STATUS_L3L4P_SHIFT		= 3,
>> -	IAVF_RX_DESC_STATUS_CRCP_SHIFT		= 4,
>> -	IAVF_RX_DESC_STATUS_TSYNINDX_SHIFT	= 5, /* 2 BITS */
>> -	IAVF_RX_DESC_STATUS_TSYNVALID_SHIFT	= 7,
>> -	/* Note: Bit 8 is reserved in X710 and XL710 */
>> -	IAVF_RX_DESC_STATUS_EXT_UDP_0_SHIFT	= 8,
>> -	IAVF_RX_DESC_STATUS_UMBCAST_SHIFT	= 9, /* 2 BITS */
>> -	IAVF_RX_DESC_STATUS_FLM_SHIFT		= 11,
>> -	IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT	= 12, /* 2 BITS */
>> -	IAVF_RX_DESC_STATUS_LPBK_SHIFT		= 14,
>> -	IAVF_RX_DESC_STATUS_IPV6EXADD_SHIFT	= 15,
>> -	IAVF_RX_DESC_STATUS_RESERVED_SHIFT	= 16, /* 2 BITS */
>> -	/* Note: For non-tunnel packets INT_UDP_0 is the right status for
>> -	 * UDP header
>> -	 */
>> -	IAVF_RX_DESC_STATUS_INT_UDP_0_SHIFT	= 18,
>> -	IAVF_RX_DESC_STATUS_LAST /* this entry must be last!!! */
>> -};
>> +/* Note: These are predefined bit offsets */
>> +#define IAVF_RX_DESC_STATUS_DD_MASK		BIT(0)
>> +#define IAVF_RX_DESC_STATUS_EOF_MASK		BIT(1)
>> +#define IAVF_RX_DESC_STATUS_L2TAG1P_MASK	BIT(2)
>> +#define IAVF_RX_DESC_STATUS_L3L4P_MASK		BIT(3)
>> +#define IAVF_RX_DESC_STATUS_CRCP_MASK		BIT(4)
>> +#define IAVF_RX_DESC_STATUS_TSYNINDX_MASK	GENMASK_ULL(6, 5)
>> +#define IAVF_RX_DESC_STATUS_TSYNVALID_MASK	BIT(7)
>> +/* Note: Bit 8 is reserved in X710 and XL710 */
>> +#define IAVF_RX_DESC_STATUS_EXT_UDP_0_MASK	BIT(8)
>> +#define IAVF_RX_DESC_STATUS_UMBCAST_MASK	GENMASK_ULL(10, 9)
>> +#define IAVF_RX_DESC_STATUS_FLM_MASK		BIT(11)
>> +#define IAVF_RX_DESC_STATUS_FLTSTAT_MASK	GENMASK_ULL(13, 12)
>> +#define IAVF_RX_DESC_STATUS_LPBK_MASK		BIT(14)
>> +#define IAVF_RX_DESC_STATUS_IPV6EXADD_MASK	BIT(15)
>> +#define IAVF_RX_DESC_STATUS_RESERVED_MASK	GENMASK_ULL(17, 16)
>> +/* Note: For non-tunnel packets INT_UDP_0 is the right status for
>> + * UDP header
>> + */
>> +#define IAVF_RX_DESC_STATUS_INT_UDP_0_MASK	BIT(18)
>> +
>> +#define IAVF_RX_FLEX_DESC_STATUS_ERR0_EOP_BIT	BIT(1)
>> +#define IAVF_RX_FLEX_DESC_STATUS_ERR0_RXE_BIT	BIT(10)
>>  
>> -#define IAVF_RXD_QW1_STATUS_SHIFT	0
>> -#define IAVF_RXD_QW1_STATUS_MASK	((BIT(IAVF_RX_DESC_STATUS_LAST) - 1) \
>> -					 << IAVF_RXD_QW1_STATUS_SHIFT)
>> +#define IAVF_RXD_QW1_STATUS_MASK		(BIT(19) - 1)
> 
> GENMASK().
> 
>>  
>>  #define IAVF_RXD_QW1_STATUS_TSYNINDX_SHIFT IAVF_RX_DESC_STATUS_TSYNINDX_SHIFT
>>  #define IAVF_RXD_QW1_STATUS_TSYNINDX_MASK  (0x3UL << \
>> @@ -301,18 +339,16 @@ enum iavf_rx_desc_fltstat_values {
>>  #define IAVF_RXD_QW1_ERROR_SHIFT	19
>>  #define IAVF_RXD_QW1_ERROR_MASK		(0xFFUL << IAVF_RXD_QW1_ERROR_SHIFT)
>>  
>> -enum iavf_rx_desc_error_bits {
>> -	/* Note: These are predefined bit offsets */
>> -	IAVF_RX_DESC_ERROR_RXE_SHIFT		= 0,
>> -	IAVF_RX_DESC_ERROR_RECIPE_SHIFT		= 1,
>> -	IAVF_RX_DESC_ERROR_HBO_SHIFT		= 2,
>> -	IAVF_RX_DESC_ERROR_L3L4E_SHIFT		= 3, /* 3 BITS */
>> -	IAVF_RX_DESC_ERROR_IPE_SHIFT		= 3,
>> -	IAVF_RX_DESC_ERROR_L4E_SHIFT		= 4,
>> -	IAVF_RX_DESC_ERROR_EIPE_SHIFT		= 5,
>> -	IAVF_RX_DESC_ERROR_OVERSIZE_SHIFT	= 6,
>> -	IAVF_RX_DESC_ERROR_PPRS_SHIFT		= 7
>> -};
>> +/* Note: These are predefined bit offsets */
>> +#define IAVF_RX_DESC_ERROR_RXE_MASK		BIT(0)
>> +#define IAVF_RX_DESC_ERROR_RECIPE_MASK		BIT(1)
>> +#define IAVF_RX_DESC_ERROR_HBO_MASK		BIT(2)
>> +#define IAVF_RX_DESC_ERROR_L3L4E_MASK		GENMASK_ULL(5, 3)
>> +#define IAVF_RX_DESC_ERROR_IPE_MASK		BIT(3)
>> +#define IAVF_RX_DESC_ERROR_L4E_MASK		BIT(4)
>> +#define IAVF_RX_DESC_ERROR_EIPE_MASK		BIT(5)
>> +#define IAVF_RX_DESC_ERROR_OVERSIZE_MASK	BIT(6)
>> +#define IAVF_RX_DESC_ERROR_PPRS_MASK		BIT(7)
>>  
>>  enum iavf_rx_desc_error_l3l4e_fcoe_masks {
>>  	IAVF_RX_DESC_ERROR_L3L4E_NONE		= 0,
>> @@ -325,6 +361,41 @@ enum iavf_rx_desc_error_l3l4e_fcoe_masks {
>>  #define IAVF_RXD_QW1_PTYPE_SHIFT	30
>>  #define IAVF_RXD_QW1_PTYPE_MASK		(0xFFULL << IAVF_RXD_QW1_PTYPE_SHIFT)
>>  
>> +/* for iavf_32byte_rx_flex_wb.ptype_flexi_flags0 member */
>> +#define IAVF_RX_FLEX_DESC_PTYPE_M      (0x3FF) /* 10-bits */
> 
> Redundant braces + GENMASK()
> 
>> +
>> +/* for iavf_32byte_rx_flex_wb.pkt_length member */
>> +#define IAVF_RX_FLEX_DESC_PKT_LEN_M    (0x3FFF) /* 14-bits */
> 
> Same.
> 
>> +
>> +/* Note: These are predefined bit offsets */
>> +#define IAVF_RX_FLEX_DESC_STATUS0_DD_M			BIT(0)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_EOF_M			BIT(1)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_HBO_M			BIT(2)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_L3L4P_M		BIT(3)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_XSUM_IPE_M		BIT(4)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_XSUM_L4E_M		BIT(5)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_XSUM_EIPE_M		BIT(6)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_M		BIT(7)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_LPBK_M		BIT(8)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_IPV6EXADD_M		BIT(9)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_RXE_M			BIT(10)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_CRCP_			BIT(11)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_RSS_VALID_M		BIT(12)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_L2TAG1P_M		BIT(13)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_XTRMD0_VALID_M	BIT(14)
>> +#define IAVF_RX_FLEX_DESC_STATUS0_XTRMD1_VALID_M	BIT(15)
>> +
>> +/* Note: These are predefined bit offsets */
>> +#define IAVF_RX_FLEX_DESC_STATUS1_CPM_M			(0xFULL) /* 4 bits */
> 
> Redundant braces.
> + GENMASK_ULL(7, 0)?
> 
>> +#define IAVF_RX_FLEX_DESC_STATUS1_NAT_M			BIT(4)
>> +#define IAVF_RX_FLEX_DESC_STATUS1_CRYPTO_M		BIT(5)
>> +/* [10:6] reserved */
>> +#define IAVF_RX_FLEX_DESC_STATUS1_L2TAG2P_M		BIT(11)
>> +#define IAVF_RX_FLEX_DESC_STATUS1_XTRMD2_VALID_M	BIT(12)
>> +#define IAVF_RX_FLEX_DESC_STATUS1_XTRMD3_VALID_M	BIT(13)
>> +#define IAVF_RX_FLEX_DESC_STATUS1_XTRMD4_VALID_M	BIT(14)
>> +#define IAVF_RX_FLEX_DESC_STATUS1_XTRMD5_VALID_M	BIT(15)
>> +
>>  #define IAVF_RXD_QW1_LENGTH_PBUF_SHIFT	38
>>  #define IAVF_RXD_QW1_LENGTH_PBUF_MASK	(0x3FFFULL << \
>>  					 IAVF_RXD_QW1_LENGTH_PBUF_SHIFT)
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>> index 2693c3ad0830..5cbb375b7063 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>> @@ -402,6 +402,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
>>  	int pairs = adapter->num_active_queues;
>>  	struct virtchnl_queue_pair_info *vqpi;
>>  	u32 i, max_frame;
>> +	u8 rx_flags = 0;
>>  	size_t len;
>>  
>>  	max_frame = LIBIE_MAX_RX_FRM_LEN(adapter->rx_rings->pp->p.offset);
>> @@ -419,6 +420,9 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
>>  	if (!vqci)
>>  		return;
>>  
>> +	if (iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP))
>> +		rx_flags |= VIRTCHNL_PTP_RX_TSTAMP;
>> +
>>  	vqci->vsi_id = adapter->vsi_res->vsi_id;
>>  	vqci->num_queue_pairs = pairs;
>>  	vqpi = vqci->qpair;
>> @@ -441,6 +445,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
>>  		if (CRC_OFFLOAD_ALLOWED(adapter))
>>  			vqpi->rxq.crc_disable = !!(adapter->netdev->features &
>>  						   NETIF_F_RXFCS);
>> +		vqpi->rxq.flags = rx_flags;
>>  		vqpi++;
>>  	}
> 
> Thanks,
> Olek

Thanks for the detailed review. This is rather tricky to get right. The
goal is to be able to support both the legacy descriptors for old PFs
and the new flex descriptors to support new features like timestamping,
while avoiding having a lot of near duplicate logic.

I guess you could achieve some of that via macros or some other
construction that expands the code out better for compile time optimization?

I don't want to end up with just duplicating the entire hot path in
code.. but I also don't want to end up with a "to avoid that we just
check the same values again and again".

The goal is to make sure its maintainable and avoid the case where we
introduce or fix bugs in one flow without fixing it in the others.. But
the current approach here is obviously not the most optimal way to
achieve these goals.
