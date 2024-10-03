Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AE798F082
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 15:36:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 753176065A;
	Thu,  3 Oct 2024 13:36:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bo2l03cL_h5F; Thu,  3 Oct 2024 13:36:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA9616069D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727962570;
	bh=i6Qi8svgH5vB16ti7dSX2v9/5G+UxXPPGgOFvPaY51I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f/gHVaVqUDT9wwzqIKEeF3FK5iqsdE1nCMeF9RSG5JwtND2gPShSOQNI6Wc6RPfyG
	 WKJjX+6vOaH1UzUtMsMky79Rk2aHI6KDXcmwgdF7WwEujvncBwl0yMGgVpPdqgZY11
	 +R9mc8kTUEsb21KPhhiOtgYD+hJ8gkd3Gy33u+8xt6RAb1NMS6jiNZYWe2CWS9EaqT
	 VcACz3PCXjziCjjqVB36/fN7K+Qo34kcgDgfiDrdC8hDA5qlFYatI3n/USGjmq9dxH
	 QliAftyu+EedwdWC/LG+BpLpG+ffoQg6gA/lGyzI2oX1bMzFgqh7HTrIBHiyoUVfA8
	 eDtDpkuD6PIiw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA9616069D;
	Thu,  3 Oct 2024 13:36:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 64D611BF311
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 13:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68BCF409F8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 13:36:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pv8hwa1qeEyL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 13:36:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3D13840B24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D13840B24
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D13840B24
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 13:36:04 +0000 (UTC)
X-CSE-ConnectionGUID: 7gNhV++yRhWhGXfUXyQM+Q==
X-CSE-MsgGUID: 3Pv/iHlbRMOSFCwHJLyJyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27284574"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27284574"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 06:36:04 -0700
X-CSE-ConnectionGUID: OX+uf44nRUqmi+P50a1TdQ==
X-CSE-MsgGUID: lpKkdwgiQXeMNaFflXCm9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="111807594"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 06:36:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 06:36:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 06:36:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 06:36:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sYWtEPaNq2jph6NNK5b7Z8vYyYY/c6aQ/cyIu4w4s1QcikMH7sy9YAQrxVvSLIYPE+du7zxG6oZMEFvnDEjhKkxWmcecERh9/C6p8B5D/2ns04HUjhHtbcP++8CxUOSWbVdnR75XYizpArpvS/T9Yp/QKkU6R8tLwUW7+oe0sGGszj0ToLiGacZK3JSXSZ1X3BwtBmhJZ8Po2m+gSD8uyNBI/a9v2hwu8TMoy7g+LUBkhUUAIlbUH65m9CCSaL77HEgpjh7hBLvlhse1wk3JuMOxC4t0+MhGcIDlfjxegII9XsCZQZb/SfC+kHdGwBVLq1h6dPNjwyvFj3QisQoD3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i6Qi8svgH5vB16ti7dSX2v9/5G+UxXPPGgOFvPaY51I=;
 b=QswZIG87Mf+nROsdgQuTpwN5Tz64jJzQKu4MBOCuR9kTgRJxFn+3LLuLQ3mF8Z0hX5kETNGJOwoD3W61mStShlrzw6AZHjFkmEPKAWlZL51LHHcdLPBuzl4hWHd+whsWfhdWXprbyGfFPquYaB3zpiYrQ4BFNYQLGRi44sEu3g829T9x4ZGVqr0FyQ8SBielYoV1UsN4QthiyhrmdSmao25fnSxr84UAC677LS2xRnWQjTgadEKtOAhMpAnPVlaw/miYnv5ifHCe6C3tGEmY+hlfd16XkjhPcOtaLfnC6EId+oEPlizxOpV7byPyPbUF3wYUfyATLpmUcauAqZ83hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SN7PR11MB7639.namprd11.prod.outlook.com (2603:10b6:806:32a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Thu, 3 Oct
 2024 13:35:59 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.8026.017; Thu, 3 Oct 2024
 13:35:59 +0000
Message-ID: <b7228426-1f70-4e36-9622-c9b69bfe5be9@intel.com>
Date: Thu, 3 Oct 2024 15:35:54 +0200
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>, Jakub Kicinski <kuba@kernel.org>
References: <20240925180017.82891-1-jdamato@fastly.com>
 <20240925180017.82891-2-jdamato@fastly.com>
 <6a440baa-fd9b-4d00-a15e-1cdbfce52168@intel.com>
 <c32620a8-2497-432a-8958-b9b59b769498@intel.com>
 <9f86b27c-8d5c-4df9-8d8c-91edb01b0b79@intel.com>
 <Zvsjitl-SANM81Mk@LQ3V64L9R2>
 <a2d7ef07-a3a8-4427-857f-3477eb48af11@intel.com>
 <ZvwK1PnvREjf_wvK@LQ3V64L9R2> <20241002101727.349fc146@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20241002101727.349fc146@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0008.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::11) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SN7PR11MB7639:EE_
X-MS-Office365-Filtering-Correlation-Id: e8faee11-f00d-4e3e-9de0-08dce3b05121
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SzA0cDJKNXVZUjRnOUlnNzRiZGVSTkRvTmVrdjlJUTJrMlhHc2xyeUdzbGV0?=
 =?utf-8?B?MmNSMUMzbXl0SWlxamsrWHVPYmV6U0FjYzl2d3cvTzQvOExObXhCdzNNOEFN?=
 =?utf-8?B?SUNLMzM5TWgxMGt4T0I3c1FVYUVtOXorclRHd1lBNTB5T0R4Y0pCTmdVZGhP?=
 =?utf-8?B?R2pseTRzcWxiVEUwQm84VEQ5Mk40NTJicmtBQWVsV0pYNVhuUTBuSm5jNTRY?=
 =?utf-8?B?aXpyQ2s4cEJyU1VNOWg4bFJva1FETG82Y2I4N1FMUXoxVzhBekJtYklkRnJP?=
 =?utf-8?B?b0EvMk95RFdHQS9TcHZIeUhGWkZ1eU9HNUhPRkp1TDFJTTJLT3VEWVc4Q1ly?=
 =?utf-8?B?RzJxMC9BWkVLcHlnWUZBRVNSNkZLK0JxeGhUWUpwOUxHTzNvWkFNN0FnUzRO?=
 =?utf-8?B?UytKcFZrLzVmSHpKRFVSWmw0VXJsMFJWUzFxK0FrNlhubUgxNHlqV2t3VlZ2?=
 =?utf-8?B?NVZ6MzY1aFZlaVhBWnpVaXd1SVBHSWptcytkTU42MVpGeFBJS0lJck9mRnV0?=
 =?utf-8?B?TDFRNm0zbldkaGo3WmJaRkpheEtiL0lRWSt0SDFHOWR1WkphUUM1K2c5Rmhh?=
 =?utf-8?B?NVBlUEpzOWo2OWhTWFNmOHREcnJSYnU4WFhkR3dKSDF5M2JJQ1EvNWZ1ckpx?=
 =?utf-8?B?UVZ0d3Z2N2NzS0dPdFl6RlRUQUFoOVlEOTRrck10cWhqRTl6WEV3cWhvMzBM?=
 =?utf-8?B?OU5EdWl1OCthQ1Y3U3B4SnpSakVEVkpCTUJIcVA3eVBqemtRUHREckFNaGs3?=
 =?utf-8?B?Rmt6R0creWQ4eHAwTUFLYXgwNk91NEtFNTIvVThsVGE2dWs3a3VvRWZsT3Ex?=
 =?utf-8?B?Uk5kcis4V0VWRDY1NmFDbUlKdmRqQS9wdDY4UG54UEJqYnlWNnJYZmM3cUpw?=
 =?utf-8?B?bFA4dHdNTHhJY25vcm4vVHM2Vi8yZURnM054U21nVGswT2lPTEpJYVRVTG0r?=
 =?utf-8?B?WlFGaWxscjUrbUYyUjM0UElVYm9HMG9uU1ZXMG9Fdlc4OCt3Wmp1VU44UHZV?=
 =?utf-8?B?djVPeTVac1huUnluRXE1K1NTZEFBRWRTNitnTHB0UmptUkJCM1ZQTGZpS0FR?=
 =?utf-8?B?UGtFSXh0M2tIc3lXTXZEQVA1YlFialVlSUFhb01aM05QLy9haUxINWtMTGRV?=
 =?utf-8?B?VGUzL0w3MHRBQTZNbng5ZnlSTklOSGptVEJtdnJSNk5tMTVjaWRZbllQUGEv?=
 =?utf-8?B?dXJUdE0yd2Q3N2dlQnRwbzRLdW14ekQrNE16RGdIQWpxOU1Ga0h1Um5BRzh3?=
 =?utf-8?B?Q0swQnVjSDZ6azBJOUkrdzZKN3hydTRLUllIR28zN2Z6dUFyVExRbS9ybXNT?=
 =?utf-8?B?U3U5aWFCTHFjSkplbzFCelhZaWt2YUZ3dUdRVGpVZ2ZFdUVhV0JOTDhlS3Nn?=
 =?utf-8?B?ZG4rdjMvRkZ1WHFUQm91STI5dm5zL0h6UlhxTWowOGJkeVI3cC9PZDZRUWlJ?=
 =?utf-8?B?T1dlQUJFeUZocm85dEdEUnQ2bGFlVThIYUFFN2JKNE15QXdmQ0pOeVBTZ0Nu?=
 =?utf-8?B?NHZmNnVUUjFwQ0gxQ2lZcUg5ZHJUTzdrRzFOR3VlQU9xdHNUTlkyQW5rV3Zh?=
 =?utf-8?B?blg2ekdBYnk1QzAyV0JGaHlQdGJSS0FQMU5yMFBrWVMyUGMvMFNTb3dsR3hL?=
 =?utf-8?B?MDVYckIwQ0tPKzMxa0NhVFB6ZEVXR1F4dTVyRVA5MVVOQms2bnQvK1U3Qno4?=
 =?utf-8?B?OW0zdmVmK0xkNnN2UkFHYnd2bmdiQTluZHNlY09zL0FIdENoVWVFNlN3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGRaVXo1NEZ6dEZWSXFTOWV4SmVUZUNZMFljSzYwK2tydnRaZS81R0NEWENN?=
 =?utf-8?B?WkVIcjRXMDhMVHcvSG0rcVY3Ni9pOXR6N2F1WHZNN05EZ0FsUGtnZHFzSjJR?=
 =?utf-8?B?azQrcCtMdmVic0xaK1p2Q3VSQlphRXU4RXVvSTRaTFFNVFZPeFk1MnRzYVZi?=
 =?utf-8?B?V1AyWjVXU1ZsMUxqOHJEdlBJWGNUUUlod1JEL1RucFQyVHN5QzlHak9YRUlW?=
 =?utf-8?B?cTVVQ3lGdStrcERwVUZXbVd4UVRPdDBEM2hOMm0xRWIzZFF0OWs1NXg3cks5?=
 =?utf-8?B?MEpnaXFSS3VwNExBQlBuUUZtaFp3bFVhRVRBN0dwQmxIbzlSSnFyRmJJbG4w?=
 =?utf-8?B?VnRLSXY4T2I3SDVZc2FoakR5SVVMSlhvWkZ5T015S011enJXWEoybE54QnVT?=
 =?utf-8?B?aGo1YzdIY1RmVEgvQmtkY1VXSjJQNFRvaDBjMHhyMDZRTXI5MnNkczhUdmYw?=
 =?utf-8?B?VG5iWnVXUVhCNUV4U2RWSGJndFBqYmV2QzNEOUp2NjVMa1krZmxuNUtjTTVl?=
 =?utf-8?B?bktRQ0JzWnZSZmZZMnpsQzZrQ2tzQXpqRGtTanEzcm9FZnBJdlhLMnVqWGlI?=
 =?utf-8?B?ZnQ1SmVwQThkTDJEZzBHWFphZWI2L2ZQWk9WR01KbWVHZUtoSkhPVzhiTXZn?=
 =?utf-8?B?c1Bxc0puU3FrbjhpS2ZHWGcwSUxTaVoyR1NQdUNpczk1aWE1OWVodXl1SVor?=
 =?utf-8?B?eTJ4ajlMSG4vY2xnQzhWaksrV1JrV09iU3k4c0VYV3NOU0ZxWldWV0hUbTJj?=
 =?utf-8?B?cHlZQUJFUTNqeW1sVlpxRFcwZ2JMOFRveHRqWEw5MjVpMTJWUGZlT3lpWHRF?=
 =?utf-8?B?N0JlcnNVaHVaaGFuY01xUEZENE5IYXliZXMwbUhOc1pFR2tqQ1A5UVZiSkJ2?=
 =?utf-8?B?NCtLWUh0U3VxdzdKS3hkUUoveXlYNFJmZzhOVFF1Tm12M2hVZnZXWnF6Q2ti?=
 =?utf-8?B?aHMvbjRuYklUN08wdlR6RVQ5M2UvbXNMeFRNb1VuZU1ZV0RLNFFsSWw1S1Z0?=
 =?utf-8?B?NC9BSWdrSEEwdkM4YWJuZWwwa0hRRFR6VU5UalkyRUMwYWpvS2dFMEtVV0Zl?=
 =?utf-8?B?M0tza1M1L3N1dUllS2phSUVJSnRCbDV2UEpkNklkRlNiVWY1bzFsc2VxL3E4?=
 =?utf-8?B?N2JrdnNYY1VGYWhMSGhUV1psbDVvZW1VenIvczZRa2c5c3JiOHpsNFJjS2xR?=
 =?utf-8?B?NUhPOVRSN3lFdFpnSlR0cVhwNG9WRGVsS3c0OUV3MlY3TktKQnVLLzhLT1I3?=
 =?utf-8?B?YkpsMnNIMHZqdnVrY3lkelA2Q1Q2WS8zenFLQ2JEM1p1eUc2VnUvLzlhcmxs?=
 =?utf-8?B?VmRvaGpEekVVTkFTV1Z2MW1tOTRLcnBHNlM2dndwaWFpNVBwbkhkSS83OGV0?=
 =?utf-8?B?RWQ0cGJRSTI3ODJvUnhGZFVoQXpabW5uZ0FlUFN2UXU1aDBCdGlBVXVHQ0Zv?=
 =?utf-8?B?SzIxQzdNYlBIQ1BNTjMyS3VlbmhHYm9qZXpEcDJhWU5veDBFWG9SeHBvVUFX?=
 =?utf-8?B?Nnc0T2ljVDZRZ1NGelludG9jeDU1T0t4dTdDM0RRcUdRUEcvSGlnbUIxQ0dR?=
 =?utf-8?B?MkduODV1NHdsOFhGYWV0ZjBwNk91ZHlDVTJEakRFL2o4UlZnZnpsVG9WVC9B?=
 =?utf-8?B?UTBTTzZHNVU2dWhDR2hTeTQyMUszangzdkZHTkNmbVY0LzJrdlVXb1pyU0pi?=
 =?utf-8?B?eTllWVZNZTk2MTBPWCtnQktTU2lKamxPSWpuUkpvUHFFS25aYWwycVZ6NThi?=
 =?utf-8?B?VUQ1Q0VLRThkZWphUkd4dVgzeVRiZ1lqYkJqYlJKeWJBdzN6OVBIY0p2cktQ?=
 =?utf-8?B?cGlVdG43a2tWcDVkRldPWUhyU0lwd0hZc3BUbHE2MHVxcUJwcGlCa0dVNEZD?=
 =?utf-8?B?WjNLSTVUWWN3UmpVZTI1aUpVNDFRS1EzMTZsVjRiUmZhTzNMUjlKN3RHaWgv?=
 =?utf-8?B?eWRtUmR6WFBOTWpUcEJ0WGdSdUJzZUNjSWRlTVVJczUxQkRRb28yMGxieTk3?=
 =?utf-8?B?dmwxQVlsSHVxRTd3eHA2Ykxzcm5TZkk1T0kzekhRaExqOE0zOEN1ejlJeHNv?=
 =?utf-8?B?NTRRR3MyQzM2ayszQlZYSkhuKytwV0NhWDFsUzdsTDluc1J4TWRlMEpUbGpL?=
 =?utf-8?B?OXY3bHMrcXJ2cm5lYlo4cUhVVkhja3crRjE5WUtCYXAvT3V3TTNpYmlTZ3hk?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8faee11-f00d-4e3e-9de0-08dce3b05121
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2024 13:35:59.5882 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mSkZ2wTxeYuOb4m47hNQSO75pT13Hvbyk1kkTp5C5E/pSrYZa0PShMRnZGZZYoFR8EqfFZ5D0+WcP17wLsk9hmI9xssNsrh+HDJbNFw2Cn4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7639
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727962565; x=1759498565;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7rXNoWZpVkwGt0eX3VSzTgd4FrDBaIAZVTdwkE8ZOOg=;
 b=U189kieH4KxjYtrYBfkF8m1eQ4dRSovGtEsjE592PZd8uYjE9zGk67oD
 2R2gr/r3ZBgaxoJ/oVAm0/+bQstvhi1QelC3kNLdVbnqHXkQkFfG8Rubr
 yOp0zT2eVnxwbtjUSlanGYJTrIyMRYdCfTdOOMYTwSzdgFN94trKvX2YE
 I7PxULUYBTE7x9IaXPIrmD65VOrfa8hr1MAbw2elvbnnfIY0Ls8KMmxZO
 C8vsSnNzVubEN6mmqiPXA4LJ6i4xfRScbFVN0/FJbOPsEezSZYh7WvTgv
 Yvbcabk3Yd3O1iwvUwKEhtbMp8scDY2cOB5KCTYfsDeN3ybsLjagPrR8U
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U189kieH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 1/1] idpf: Don't hard code
 napi_struct size
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Wed, 2 Oct 2024 10:17:27 -0700

> On Tue, 1 Oct 2024 07:44:36 -0700 Joe Damato wrote:
>>> But if you change any core API, let's say rename a field used in several
>>> drivers, you anyway need to adjust the affected drivers.  
>>
>> Sorry, but that's a totally different argument.
>>
>> There are obvious cases where touching certain parts of core would
>> require changes to drivers, yes. I agree on that if I change an API
>> or a struct field name, or remove an enum, then this affects drivers
>> which must be updated.
> 
> +1
> 
> I fully agree with Joe. Drivers asserting the size of core structures
> is both undue burden on core changes and pointless.
> The former is subjective, as for the latter: most core structures 
> will contain cold / slow path data, usually at the end. If you care
> about performance of anything that follows a core struct you need
> to align the next field yourself.
> 
> IDK how you want to fit this into your magic macros but complex
> nested types should be neither ro, rw nor cold. They are separate.

Ok I'm convinced enough. I've just imagined that if every NIC driver had
such assertions, that would've been hell.

napi_struct is the only generic struct whichs size is hardcoded in the
macros (struct dim is already sizeof()ed, as well as cpumask_var_t), so
I'm fine with the change you proposed in your first RFC -- I mean

 libeth_cacheline_set_assert(struct idpf_q_vector, 112,
-			    424 + 2 * sizeof(struct dim),
+			    24 + sizeof(struct napi_struct) +
+			    2 * sizeof(struct dim),
 			    8 + sizeof(cpumask_var_t));

I may revise this later and put generic structs outside CL groups as
Jakub suggested.

Thanks,
Olek
