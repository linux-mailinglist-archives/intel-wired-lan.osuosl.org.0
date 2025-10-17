Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5BEBE65B0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Oct 2025 07:03:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF14040A11;
	Fri, 17 Oct 2025 05:03:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h1BEspLu6UYn; Fri, 17 Oct 2025 05:03:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDCBD40A1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760677421;
	bh=2u/piIYyfDbNK4KZKLq0QXebMjik1VtW3AMrDPt+Fj4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZtSm6ESecohxaOvmF887Eqmg+bal8Svl2ug64fOQH6n7G18xIDsEG+C7ZjIfpOziJ
	 RtjHlxV1sTiauhMDVoSVE7DZ9CZVuJSPEvGlwaJ/VyqItS+B6v1DG2FQ5Ee2DQEMDi
	 oZZ/fBF/jl9DSjhdK0vuAgJWydZ7rx2WgtUjZp3y/37hCiRPHVLFVw/GA03vMypiZ5
	 4m0kEuNSxq3yjnT/gu71Wk0MVQLAIGJiVD4gnSscNasPiUFzkraUxTQ6/tK5t/Kb7j
	 sySFTQCGuBhzGmwfwlX83ispLNIhXFtfsH6WwmPQ2MYit/oDFzhbsoxXkMyXL22Gcs
	 Fap10zK4ljKbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDCBD40A1A;
	Fri, 17 Oct 2025 05:03:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 03C9CEC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 05:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 006E881191
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 05:03:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O9u4va4qW8xd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Oct 2025 05:03:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 342E181190
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 342E181190
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 342E181190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 05:03:38 +0000 (UTC)
X-CSE-ConnectionGUID: 2CL4gONMQ5qgXsloTig+oA==
X-CSE-MsgGUID: aYb6XW9CRkiNtNtHcUI40Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="88351790"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="88351790"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:03:38 -0700
X-CSE-ConnectionGUID: OBu2l0rVSoGpmmyCrVYkew==
X-CSE-MsgGUID: yC+JRHr0Q1eD/Ea91vNiYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="206349106"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:03:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 22:03:37 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 22:03:37 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.30) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 22:03:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Whk27OVpsTew3yG86bSmdY6G1RLUmCWIY5oxUMp+IcFaZHDU1gryvn2sEFQA7pEzpO+0KDp8EYaOQl02H/6PV6n04MV+fQq8pdNzkJVEX/hyPozmTMjgaAbjXFhdRHh58KF3tpbzBjZxD3fy62UzURXARxAF2HBl4KsN3rOGf4T2qTavrQwE1TVFGB2dSsWoRWAhRzComxi6UDuETara+jIkGV+gR2Hu48zqnWR6tuIQo3+IcOqf5Jjzw7LpVXwIsJPyFd25gpZEqO8iKyItWxa/B3XkRXNqslwQJQMym1C9umZ1BZvJh4ZaByF/NqdUmsCs5dPhdfnphBo6V00XdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2u/piIYyfDbNK4KZKLq0QXebMjik1VtW3AMrDPt+Fj4=;
 b=tU0sluXX8AzexAg3u9yRI5S5khHiy6a2IX+OB0X7nLX7PXqPQR7a49sDMUKw5DpnknZl7N6b3tqC+oBkMp0mLixCczevGyMbYMKb9Buj5Radvo0EzXZvPc6WZpFmsbQ2NqQY6SsCwfAFycVb/KifwPV0Yq5gBQtSwzOUDAdcr69CNttk29EhVxzpNdOy+9HeQ6UVB+85Htr4y/0TFj8nD5fnHBwxVz29umGmBdPEK2/CblRrVyX6cEAT8H5GxJiaDq4nheFOfvWbuH5oiKuzdRGsogIgwOyZ85FOZgx2jbyWYHTzG/SbE2XqPkjO1cCQtTYzbwrV6hMD9oTZzyHNww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA2PR11MB4812.namprd11.prod.outlook.com (2603:10b6:806:f8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 05:03:35 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9228.010; Fri, 17 Oct 2025
 05:03:35 +0000
Message-ID: <34268765-6cc5-4816-9ba7-4f00e8f353a0@intel.com>
Date: Fri, 17 Oct 2025 07:03:31 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Jacob Keller
 <jacob.e.keller@intel.com>
References: <20251016062250.1461903-1-michal.swiatkowski@linux.intel.com>
 <5d739d1f-faa7-4734-b5e7-8e35b5556ce7@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <5d739d1f-faa7-4734-b5e7-8e35b5556ce7@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU6P191CA0007.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::22) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA2PR11MB4812:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a811d50-6f8c-434d-5dcf-08de0d3a86e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MjVXSGZSNzI2cDRYbVBlWU9Wd1duYjdGWmhUY21TaW9KUkVPUmdrMG93Y1Vy?=
 =?utf-8?B?TUdDRE5iY2FNYkZuQ05RSVFNRVBiWEV0bzQ2M29ub0k0bklwcFo2L3F5ZTlB?=
 =?utf-8?B?VHNhOGt0bjNpb2xUU1JUTFlBK015WnNpSWVxMHVLMUhVMkRMNEgvWHFWaGZF?=
 =?utf-8?B?SGlqdkFvVlBuUk9GNDdUS3phQWxyTWxPNkRvQ0dCSy9LaEtnT1FiOFRudm5n?=
 =?utf-8?B?dkxyM0J3WEM2dTZmQXpVN2JpN1BsdTVFOUUvcFRMczRabldvK1Q2c01XdG93?=
 =?utf-8?B?WnhINzhaZTI4a2RkTUxHZnppdDg4Z0xhakZ4K0Q0ekoremg2QkROZ2QyQUgv?=
 =?utf-8?B?WmJjTTVrRzYvWWdtT0ppeEdzS1F2LzJSa0EzN0kyNmtDVnc1V1FrOXRTYmRQ?=
 =?utf-8?B?UG53MW1vd1c0WStCaFN3WjgyNlBPdGJjSS91ditORVVMbDI3MXRMRTRCSmNa?=
 =?utf-8?B?NWdLb29LOE5yeHhOeXBaSndGamR6YlFEOUEvOUJubGVKYlhoR1pDenFSa2ZF?=
 =?utf-8?B?SHZtS1kxTmpqNEFEQ2M2WVVQZ2psSXNFcFBPczk2bnN0ajZhVXpGMU1LWUhN?=
 =?utf-8?B?emxNaFJKaUYzd2RrUG1jK04xZ2lDYStudjRmenMvc1hrVFlKZ1g5N2pwM1FS?=
 =?utf-8?B?Y0N2Y2x4aW52UzY5WTJScFQ3eGplRjcrR2pDVUpaQ0ZBb3ErQURzT2NhTHBt?=
 =?utf-8?B?R1BIUEM1TjR3djQvMk1sTm9EaUZ0ZzRYUGVxSEVnNVNRb1FxT3dRZ294MWlL?=
 =?utf-8?B?U0Vuamc0N0U1ZnpFYmdqbDF1Q1NpTVpoSldpTFowcmpUVmNIWjBXNFNiM1Ew?=
 =?utf-8?B?R0Q4WUswWmJ6cWwvQWtIRVBLVDFkd3AxNGlQWFk4R29IcEp6VmRMUUxKTlRa?=
 =?utf-8?B?QVB1NmFqVk01OHNZcVJPbGlJc0d1YXk1WTVlUlJxSmlub3UrTlVPTFZSVDAy?=
 =?utf-8?B?akhVazc1K1Fha3pYVDJaMFgzcUJTLy9QZnBKQWpwRzhsMUk0Y3NnbVRTUUlB?=
 =?utf-8?B?bHNXbWQ5N2NhUzB4MXFjYjFyTEdqNXlmNjR2cUQ5YnFsdlNDMjVYaUFFN0Mz?=
 =?utf-8?B?cHFhSHZXc2FPWHhEcU43RmxzenhQUUtlRWdHcHM5bXdnWGZVbVIwdEpXRk5U?=
 =?utf-8?B?NGZXNUJLSTdDQ3MyNmRlV3VGZTdaUmFoTjhIU0xMd3RtQXp2dnpxNStCSkgy?=
 =?utf-8?B?bkxwNm5TUHBXQmd6NTlZdkZUOHNOOHVGZWhNUG14M2RiV1p5VDJ2SFpSMnNv?=
 =?utf-8?B?cy9hNG9iNTdxTTFOZkRYSmt4MlJtNnl5OGlWNFBBUXNYdHE3a0lsOHZHeGYy?=
 =?utf-8?B?TjVwamxVdEN4Vzg2THNrbzNFNEVtK2ZOMUhxSktNTU9na3FWUGNBM3VVVWo5?=
 =?utf-8?B?TG9yNC83NyswcEYwRGdPd2FFd25jTUMzZmczM0xEY1lVc3FUMldSVG9LYWZ5?=
 =?utf-8?B?ZEMzS3VkSHV6N0gwUzBMc2hZQU5QWGpSa2hUOGx3RkVvalgyTHFoL3lFOGI1?=
 =?utf-8?B?ZlVlUDNDTWtxTEF2M3MvZnhKRk1BS3ZTdUFQbDlaR3dLbkkrZGpXaE5LOXdv?=
 =?utf-8?B?YytkVTlqbVE1RUJhbGpyanh4blBRcjlueWFBQ3BNOHo0NG5hMmVYcE9EWmNo?=
 =?utf-8?B?Vzl3YytxbmNYcUhlbXE1TzVGbzhUdkxPdWNLUDg1NW5vTGZFelpMZVMzNzh5?=
 =?utf-8?B?MVJiTHJGdm04TzhxdkkzbHFnME5YTG5Lb0F6VEdBYTBudVBZTzdLbXM2OFBK?=
 =?utf-8?B?bmJIVy9Ld0ZNUEE3SHY4dGFHV0dEalpQRk9xTHUvTk81cjNEZDNlNm5qUlhG?=
 =?utf-8?B?SEhPUm0xWlVhVjBmM3NIbkt1VjBVeDVPMWVENEphbDNzcTk5dW5WQmVTMk1O?=
 =?utf-8?B?WHZhNWZPb1hoR1o4MlpYNHBISnFLNkVQaGdNK1JBc0ZuYkg5THZJNzg3bTFQ?=
 =?utf-8?Q?LFzVCHsfPDzm5VcqROUyt8eFVeg5LWhx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXJtNko4Qk5lZ0xaQm5sVTlaU2cvdGZYam9yUFNNRmpSYnorQllCL1NVMERy?=
 =?utf-8?B?VitjbEpobmFDWXUrVVpkVURvcDdKUW9OdVJ4NGg3L2tSbWYyUWx4N2hmRGMy?=
 =?utf-8?B?Qkx4NGtCUU81S2Z0NGYrL0toaVp3elVMZTdiWXV4aFN3cnd6NWdzTmVYeTAy?=
 =?utf-8?B?aWMySC82QkxRYkFwM2xNWis1SGU5TVhzZ0g0RFN4a2ROL2Y3a2xuWUFQS016?=
 =?utf-8?B?aGExcW1xaUMwZTYvWjRpSXVwaGNuZ21GenpzTERCWVFqYlJxRDNBRU1OdUFV?=
 =?utf-8?B?NWkzN01IRGg1QzdOYVJxdWd3eFVJK2tVYm4wZjJoWmpaNHJsVS9XcmZCTGFT?=
 =?utf-8?B?cnNoajhoYzNHOHpGZXZ3dkl3bFJDM1l0ZUxsWUhGQU9sQktuWWIxdlp6RnM0?=
 =?utf-8?B?aHlmK0NiTGRFYjIrc0FBY2dFK3kxSjdIS0ZiWjdwTVBkN1F5NGZ3MHpYUThC?=
 =?utf-8?B?TGRGNFFMc3JVTkdmenBMWDA3Yk1zczlxMDVOa2xwa3JQQ2RnNXFFM3BYQk11?=
 =?utf-8?B?VlpvMCtzMG1FdGNtaVhId3NtMlNCSkNYaXV5bFU4L3NVN1JmWndSUTI3aWR2?=
 =?utf-8?B?SE5sNXpvSGtuZTdhbUZwcXNobzFWTFFhdnErMks4K3dnTVFoeGJQY3VzdDlK?=
 =?utf-8?B?cXFZZjVmYzVIN1pyM296MEIxKzhPazdqcEJkK1dNRHpzRkIwMjBZYUdrMTEw?=
 =?utf-8?B?MVFXeVpVNDVhVjJmSEV5WFE1WmxZcTFDTjl5TlJPcjNpa3hhS3hKZEptQWNp?=
 =?utf-8?B?MmYxRjRyMVhBV3hXYXZ5cTBHUkhuVFVnSWdSN3l1ckY3L3FyalZzWEJQZ0hJ?=
 =?utf-8?B?SUxoTFRTS0ZDNVBFSk5QTTRhU01iZkpWMDV5K0MzcjRodXFidmlvZmtvNmY2?=
 =?utf-8?B?MUVDZjYvMFYyK2c1ZU9Kd2t3YlQzNEJwamV2Ukhyek50bEY4T1kzT2M5cWNi?=
 =?utf-8?B?aEl5RFlZVDlaWkpEUWF4L1Nmak5uWjJDQ2FhaENLUDdYRTR5Z2UrVTNFSStB?=
 =?utf-8?B?VW9VZXR2a3V3MDFtVmh4REkrYndCSDczNm5zRHNWNUVRT3hPYkxHM08xVGg5?=
 =?utf-8?B?YkI4elUwdnlvQ0xzVWd4cDBOKzJFcXNjb3hyQ2x0eWYzY1FESTVUWExKU0VX?=
 =?utf-8?B?UnkyUTQ2OVo3aitHQWZXcFlQUGJaUmZOWTJZeTVEbjRJQWV2dW5nc1loLzAx?=
 =?utf-8?B?UGdpMHRmU3F3eGc0d0pOa3RXT3hTQXdoUEpWbk9zT2xPanpvSmhUVlZsY0Yv?=
 =?utf-8?B?S2Y5SkhySGRGdW9yMi95ejRudCtXZVg2UmV4OGZoVHh0S1liOGhraUwySW1P?=
 =?utf-8?B?ZWxib3VxVzAvd3lKVWNjSkc3c05ScW9wMTlMNWFTZWRMNkZ4VGlJN3NmajJs?=
 =?utf-8?B?WjRaS2dmRzhnV3RzRVB3Nk5rbGxVeWVoQ1lsU24yZmZZSTVkY2NnVUNZRjVn?=
 =?utf-8?B?aHc0YlhEQk4wY2szMzY1ZGR1Sm5qRXNpejRyS0JqaExGSktjWkl1WVhHYjc4?=
 =?utf-8?B?aEM3WTkxRU8yTXFmR2JZTmowenZudVNUV2RodnFvMUk5ekZpUFNBYkdrZ3Jt?=
 =?utf-8?B?dVM2c2grenFQd09Kdkp4bnlTQXl4UnI0Nmx0SDB4VkFlaXUwSDA1ZzZlc3hO?=
 =?utf-8?B?RFJ1Sm9veTliczRmSTlLS0tQellhaE1HZnFRZlRBYjJBd3o2NHBQZGZiRGcr?=
 =?utf-8?B?NXJuY29sbVVGUGZuOTZETDR2TllIdmUyeWRGS0E3WmcyR3k3RmJNU2Y1T1Ju?=
 =?utf-8?B?MlJia0g2R04xSnR6djcwdGpzVEpRRXQ3Yy8wUHM1aDNaZ2pKekN3MmZxbW13?=
 =?utf-8?B?OEVZRGRiMEptdk42a1QrZDVPUWtTelVkcjRhK1FkNkwrWGgrYnVLdU1QejVI?=
 =?utf-8?B?Q2dYQXI5WTM2WS9Zb29Hak9oeUR4enRUSzRnaDBTUklma3J5UVZqZnRucHRU?=
 =?utf-8?B?MCt5L3BlNDVDUnVEVXBObkJXMFoxRDQ5QUlIanpXWEJYM20vMDR6aHFFSHhX?=
 =?utf-8?B?TVVaOE03YWRGaEt3OWFWeTlxU2RsSElvMWhndi9GRGlMOXFxYkRhSWd5MFdi?=
 =?utf-8?B?RDQwY1I3ditFcGE0ejg2ZmRwQ1FsSGFKUEovRklOZW9uTTQ1R2ZZZG9tRitK?=
 =?utf-8?B?MFhFT1FPbzl1ZTBpeVdlNkVkNFVNMm1zK3ptaFJnQ0dLL2tSVlEvZGZveTNT?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a811d50-6f8c-434d-5dcf-08de0d3a86e4
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 05:03:35.7025 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vg5uN1EfaJzGHXuUG/Cg4Zcl6OcEr7PPQmavdzoB5UhnMtly2+g0wgUywM++dHpxTQYuTlyF+ONn/F4fLl1vYX0XefqiEEkX16D6NqrIKOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4812
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760677419; x=1792213419;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GIP3J79Pg727+8j3I5vdlvBpevunCqnjS8a7iURYcAI=;
 b=oEjiX9MWbJA31NlwFbc6dae5uh7I+GQdXnLJZm0QdXMvRGrAzXdUfii3
 6InLy5PmYqfRVKMzhWluuSt18Hwk8o/imcTh+fECngxnBWfg17XIM2BSe
 UK/aSZJy/oEUApyYg9Nohra+Uz/kiFdl8MR1hMe8vCGw6dBxxafX9z2hW
 Xf6kyNbd+ISj4kKnBsWC4QIdoyfWQFb63NmJJ66bnjRjjRxZVtzZFc2Ub
 ywa6CJMPpitdp2sAyj4OFIarZgCPJipCoDvMnPPY8kp+YA+EDMycCF0uj
 zMvBD0RvnfZhvvtTSynkeoD/XTvaH9xqKFYUo2XRqHqrzkq++wWPmpGyy
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=oEjiX9MW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: lower default
 irq/queue counts on high-core systems
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

On 10/16/25 17:36, Alexander Lobakin wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Date: Thu, 16 Oct 2025 08:22:50 +0200
> 
>> On some high-core systems loading ice driver with default values can
>> lead to queue/irq exhaustion. It will result in no additional resources
>> for SR-IOV.
>>
>> In most cases there is no performance reason for more than 64 queues.
>> Limit the default value to 64. Still, using ethtool the number of
>> queues can be changed up to num_online_cpus().
>>
>> This change affects only the default queue amount on systems with more
>> than 64 cores.
>>
>> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice.h     | 20 ++++++++++++++++++++
>>   drivers/net/ethernet/intel/ice/ice_irq.c |  6 ++++--
>>   drivers/net/ethernet/intel/ice/ice_lib.c |  8 ++++----
>>   3 files changed, 28 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>> index 3d4d8b88631b..354ec2950ff3 100644
>> --- a/drivers/net/ethernet/intel/ice/ice.h
>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>> @@ -1133,4 +1133,24 @@ static inline struct ice_hw *ice_get_primary_hw(struct ice_pf *pf)
>>   	else
>>   		return &pf->adapter->ctrl_pf->hw;
>>   }
>> +
>> +/**
>> + * ice_capped_num_cpus - normalize the number of CPUs to a reasonable limit
>> + *
>> + * This function returns the number of online CPUs, but caps it at suitable
>> + * default to prevent excessive resource allocation on systems with very high
>> + * CPU counts.
>> + *
>> + * Note: suitable default is currently at 64, which is reflected in default_cpus
>> + * constant. In most cases there is no much benefit for more than 64 and it is a
>> + * power of 2 number.
>> + *
>> + * Return: number of online CPUs, capped at suitable default.
>> + */
>> +static inline u16 ice_capped_num_cpus(void)
>> +{
>> +	const int default_cpus = 64;
> 
> Maybe we should just use netif_get_num_default_rss_queues() like I did
> in idpf?
> 
> Or it still can be too high e.g. on clusters with > 256 CPUs?

good point,
perhaps we should both use it and change the (kernel) func to cap at 64

> 
>> +
>> +	return min(num_online_cpus(), default_cpus);
>> +}
>>   #endif /* _ICE_H_ */
> Thanks,
> Olek
> 

