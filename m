Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A138589A0C8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 17:15:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CF38418E2;
	Fri,  5 Apr 2024 15:15:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DcmB5jt8eUlm; Fri,  5 Apr 2024 15:15:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 467FB418D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712330118;
	bh=XH8I4WRyqnbd5BU5rlk0LU+8R00acKgu75H568Bt6Rk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cErIt5SS2dRaSQfIjPWRSF6L4NTnt61IvE91j/vXTqZKWq5u47vpm1jgr5Pe8uTeK
	 l/z2vp1meATdaACHoBF5MhhtF/aDljWeMmaxfLrN+K/kC8l34bFSbsV+YA9vzs8Z/S
	 lvZMyrWzqlFZYBN1+KGCfJUs2ClLgFRxqfD2EUw/3CwPdzhicXJ4hQpHf43vIdy2iG
	 +8WHRf/A9FQJy0ZEBc+xVj+Z2RubvJd1jhvZtxu7S1wF6BLx2HybrQrI1AxoaJi1Lc
	 UXG7AnpbATT5cw3aF4wbCw4d+K+A6pjGRH+jjXMjssNN4qxR5szFvuBLdrpt8YFBXL
	 mkJ+j/FJ0RjFQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 467FB418D8;
	Fri,  5 Apr 2024 15:15:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 184EE1BF303
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 15:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 10020418E2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 15:15:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gMB_242btwwe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 15:15:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6F855418D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F855418D8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F855418D8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 15:15:13 +0000 (UTC)
X-CSE-ConnectionGUID: STTAtlLKTfy3kcLdWVO6iA==
X-CSE-MsgGUID: aLN+KQhPRcmygSVurTsr5g==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="7850247"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7850247"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 08:15:13 -0700
X-CSE-ConnectionGUID: DZhVSS+fQ3ydTWJDZTIh2w==
X-CSE-MsgGUID: 79d/GpLfTO+TQXg1Zmn1gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19225118"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 08:15:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 08:15:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 08:15:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 08:15:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 08:15:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FQK7gOez3F6wyRacF1/tef8/kLCfflxcl6jEm+yWBJ3Xm98zo2jNkBWCZL3gQ+0q/rX0wOLlLdp2kMFARyDkX+8kFV1ltvqX9twWtLTBa9uHJP2N8TEkjq50O4QW9xSXhHiTF86S3ZZ227eBT2U88qn7RjR6NCOHTX3xkS4dcaaZgxrLCtNfWZARdjs/iHWy0ZV+3pvXGVEqXKAeBRqmzPPJSwIcY9XO92+1w2N9uhzeGeXddPPa8ZFt9D2ymUjpFTUorRuugceqIvWdf+qAw88rQLOklRG8kn2b9MYGBmDSrpZ7oBQnxkqR6GLKeUwcQ2rxUHwKZHFaXgyVGljbEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XH8I4WRyqnbd5BU5rlk0LU+8R00acKgu75H568Bt6Rk=;
 b=EjKyZfThlO5v9M38frXTIw4m2/LMWv0Qap+wEi4HuS0IMsZEsHP+CaKlVXPvGgOo25NLgsPYJHAWRlsE0gr75aKyQosBZZtGh/VA3WLyxwvyMT19FE7ad3WxRavdtBVsn+RmUH9yL0DI/N3SRaaOKUEE3oozTJkNeh70XXyeE5giRmySyZ7nGRKc3G8WgjCd1j9mW0+7/F0W0ZrgiXfjg2jsMiZg6tMek9KqULrGLSskGyTO3tkx6Dyl29H5OirxdQY739EkUdfhJeP+JAVZ+RtNNxS3hTFHkU4vSmURc7KwFAn/NfF/6I0+k3hWn1jjRRWLWVSGh8V8rWBtMoemyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by LV8PR11MB8748.namprd11.prod.outlook.com (2603:10b6:408:200::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.21; Fri, 5 Apr
 2024 15:15:10 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9d72:f2c2:684b:6b50]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9d72:f2c2:684b:6b50%6]) with mapi id 15.20.7452.019; Fri, 5 Apr 2024
 15:15:10 +0000
Message-ID: <77d8fb1a-095d-4bb3-9b46-1abfb163b0e7@intel.com>
Date: Fri, 5 Apr 2024 08:15:03 -0700
User-Agent: Mozilla Thunderbird
To: James Dutton <james.dutton@gmail.com>, <intel-wired-lan@lists.osuosl.org>
References: <CAAMvbhGb1mrkFA10=86a-KrzLbyOt13pMk+ZWKwgJ7vzMOcqaQ@mail.gmail.com>
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <CAAMvbhGb1mrkFA10=86a-KrzLbyOt13pMk+ZWKwgJ7vzMOcqaQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB8PR06CA0014.eurprd06.prod.outlook.com
 (2603:10a6:10:100::27) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|LV8PR11MB8748:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KDzvjRhBrYdN1bbvau5nLO59xcyqanK+Kv9qFZVE7tXVKISCoCdGMU+toURUZcCETAtGK5f+P2tIXa7di7YaL8qCjRfSQ751BeFu4wNuHUU1S+tvelbTs0ymJTTm+LPcYpYV3FdCUqdvMsca/+c/8Er1Cfq5g6QYz7kigYYLTrNVpuALnEcIvbQQbAUtC4WQs70dBs1XufbO9UGRQkiusFj4ErD8K/+mAuvHMOJGyXM774cqbd6HcKtj4xDgQ4kiMw1W6uUMSIg/eUKFjx3ZScBRGWj+46MrOnLQEvlLn/ilBMdhgFCdhYV144fUzJsiiSqKi7q5lTcstWTKH/TyLPW7UCOCZrvCDZ1SxM+XueNb2FFSJZLRR9pvGM4iYvieDG3pNnEvDheUsGyy/uHdotwikxCndzeAqGKJjO5Ju8XjxVH/wtsuaWET3Ih5CYVhc9LmL17Yny+8/vcuyg4czrsbli4tx7etLU3iucnM4DP62z9sufgP3j1QwJRvkkngk6Fd12gfQew5I38Pe/ubRNSd69kPW3G0PCW2W4+0J7DmcWhWR5EfY2jPX9s4izwAW6vcoYyUs8mj4AjsWMqVV0a26+bUC3Ls5iFcfcWmzn9RgrHRS48TSQGDJ3PFZvoHLgovyFhBsZFzXQ4S7aH2gcQRW/GCYR9OjvC3HDC8YGQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1M5SFpJYzVZUXlZa3BhanJKTVZOOHIwb0c2TGNTbW50elV1L1ZUblY2NzA5?=
 =?utf-8?B?Vk1GcVNOZE0wUTJNS2kvVGszTFdLTUNyWFR4MGVEbmlXM1JKSVZqM25JTHpO?=
 =?utf-8?B?ajF1YWRtbVlMazV6bWI1WUhwOEw1RjdiWDh6Q0xmbFR5bWx3M2daUG5WL002?=
 =?utf-8?B?SWQ5SzhwOVh6a1orWFlGeWw4cHc1TWhaeVFhR0xzeWYxZEN5dVdwUG9GOVQ3?=
 =?utf-8?B?RDI5TWIxQ3ZvdTRRMm91bE91eVM1ZWFsckExYlphUE1pSy9sQ2RCZkZpeUFi?=
 =?utf-8?B?dU03K05ER2plMjZXaE9YN2svN1NQRE9mUjh3ZXF3TWRrYW1uRnlTT3E1ZUxy?=
 =?utf-8?B?UGorMjdMZE1tL0FxQWJUVjQyQ3JRTzliS2FBZ3NaTmlLVnZhSVJybk43OExy?=
 =?utf-8?B?M3JIWTBYdUxndU1nTTNnek9EczRBTXo3ZTloTlNDdVc1YzJWMmFidHV4WWNa?=
 =?utf-8?B?Z2pvdjd0dDRXQy9BWDg2cUtvME5FcXJEOVRSOW1mdG9Ub2F2WGg4cjZpNGN1?=
 =?utf-8?B?cmVqWjc5bXFmM2duNVdvLzBseEtUMlFTQnFCZ1NOdmQwWG1LRnNYUVFhN1pM?=
 =?utf-8?B?eDVQWUNYa0dSYTNudE5yY0hYZ1dtMEg0N201OW1Gbks4dkZFMzJ6UTM0SDZH?=
 =?utf-8?B?WVkzelI3ckVHczF1SmxzNklzYzJXdWZUYktieGVodHYzaG1qY3E2eTd4eStP?=
 =?utf-8?B?Q2h5bGQ2dmJGOGRPVHhLdUdnODdrRnRvOHlKS0VCSzlVRUMzODVvT2w1M3lU?=
 =?utf-8?B?Q3JNalhoTEE4SEV3RDlOYk0wT3UzQ1QrTCtWSWs1WDJ2STA0bEJlV0t3MlBs?=
 =?utf-8?B?cStDckVtYTNoQVlja2NNV0UyTVA4bDA3QVlPRXRMcEZsRGxlN3c0NDJSQTFP?=
 =?utf-8?B?ei8vbVY4NUdvSVRCeklyaGY3ZWFJVGxqTU01MXQ5c09POER0dlZDK0tFZmYy?=
 =?utf-8?B?WGpscGgraldQemZQZkErQnVyeXJjaVgrbG8vWEVtNFRoTWk1dkwyejAwVnVR?=
 =?utf-8?B?YWtFMUNlOG5oN3dENm03TWNBY0x6WGVqcnVtRk5ocTA3alJmNCs2Njh2SmVq?=
 =?utf-8?B?VkNveDRNdUZEUHRzQTg2d3prS2NwdVMrSHVzR2VJM1VoUUszSEYvcW5BT0ts?=
 =?utf-8?B?SGw1SWN6cThwd2hTYlhucWw1Wmk1UFFENjRvZkhwSFFkWjdoM2tWKzh2T3VC?=
 =?utf-8?B?UURabnJxMUhHSkEyMFpWR2xLT1Z6TnlwNHIwNUlBdWwzcDY4cXJjYmZDYXU0?=
 =?utf-8?B?a0w5R3BrbFY1WEY5YmdHYjJEaUQwK2UrOU1va1hFVFNhSlVadHBEaU9MRC83?=
 =?utf-8?B?dEhXaXM3SWJHNTdrNk5XR2h3c0tsVWlFa2k1d0lPRE13cGdKWEN3dHVhSExR?=
 =?utf-8?B?TUw1Q2NEY1JLak1SU3dmS3FacSt5REhUV1REMzl1NW4zUlhnKy9pZ1N2YWV0?=
 =?utf-8?B?Qm83N1hENnVWRDV5d0lwY2x5d2x4M3FxRzcxQm9wNlNvN3FtcDV0cTVNeDNN?=
 =?utf-8?B?TjJML3pvc0J3cjdaWlIrVklFWTBvci9NVTNuKy9JRC9jclNoNkhXdTZ4NHRK?=
 =?utf-8?B?SmcwTVVCdGU5cmpzaTRrNVdwbUhRS2syanRPcGdsNi9JUFBzUkRMRThjM0Y1?=
 =?utf-8?B?OVAyZlJhdXV2ZHV5a1JSYVltcERYV096R2RIeVlhc0JsUmRScFArVHRJUHZO?=
 =?utf-8?B?Q3hGVGdiQUphNlFHUmRXajFsd3Qrdk1MVlZCeW1EbXdqTFprZ2tQTFBqSFhN?=
 =?utf-8?B?VUdJTjhvbnFmMGFwMS8zQVltb3NPMVNmYXJkV2hZUTFwV0hTcjNQbUNnRVFp?=
 =?utf-8?B?SThOLytsRE9ZN2hPYWRsOThHdDFYd2R2MkhraFkzaDJXYU0wY0RPL3h4K0ZW?=
 =?utf-8?B?OUthTTVrWVMzZ2RjNUFIQjhiMitDMVBwenhUTk1XdkxCcXB0SjBtWm5DYmxj?=
 =?utf-8?B?YlFBKzR1SG1iNXFDdklnL09EM2JOaXhZUVZTbytzNTcwK1UyRjhLOHdLMTVq?=
 =?utf-8?B?ZE5aWGZVdHJvc0ZKa3puN2VPZzlORGJMb3o3SFZ3VER6dkNBVlBTMENSdFA3?=
 =?utf-8?B?bFJSbmt6dllJYzNna2hFYWIwSWhJU1ZXYWRjZXFnSHFZZElPZDdsa3MwSzdZ?=
 =?utf-8?B?WDV6ZWx3Z2RqK2twQ0FydHU3RTllT0MvRFRhQUttY2dKdUFacjlSR3hQTlJQ?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fba28f3f-3ad3-49e8-6345-08dc55832f2c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2024 15:15:10.2308 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8O9T+S9K8LSQbovJit9ohgP2Fv4cmZGtqvA4q1d0k0vBjv+1kCGmcg302f5lqgazimBm850vlSIZ7Z4H06j61cDDkGmcoFwrhLZeMtraX2s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8748
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712330114; x=1743866114;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tWwwxV2wg2hpb4/j1nikUpgZh+eRORu9PlzNd15Q97A=;
 b=Wd4k3K1+sXkVkz5Zw9R445z1NrXYZlR2JdIV7QKQT+3OGasq6HceKyjo
 x6R7jFT0SJq1KBWxwvZ8yE4PdJCnEGPjZ9sRK2O6yjOFCmDMJuqp3THe+
 ThSN9f5x/Ef3YqrkIAGvbhBKXsLGRF3D3/QWAGu5HS8Y+KY6nboWG4FIj
 ClxerUa9OOxCj4kLzqUuoxx6Eof313GR5MU4HOEPFkUALniX4CnP7OzkC
 ykWNXzmXR3YgV3m+TdrxCGXG+Sy5USrDVuhBsgxgt3W/vOKLzqvS0OK0h
 OlFL3zXojUuNjOcnzpzUDjiL4fjnlHn7iK9VLpRVw+F5t1vG84C5tePzD
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Wd4k3K1+
Subject: Re: [Intel-wired-lan] How to set interface up / down ?
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/4/2024 7:59 PM, James Dutton wrote:
> Hi,
> 
> I have source code for a sfp phy that is setting
> phydev->link = 1
> What else do I have to do to make ethtool think the
> Link detected: yes
> 
> Is there a function I need to call from the phy code to cause the
> carrier state to be UP ?
> ethtool always shows "Link detected: no" state.

Hi James,
Not sure what this has to do with intel-wired-lan, but you just need
netif_carrier_on()


