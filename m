Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B42B897C05
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 01:26:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70A32401A1;
	Wed,  3 Apr 2024 23:26:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c5Cr8ncV6nlC; Wed,  3 Apr 2024 23:26:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 199D3418CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712186763;
	bh=WCy4TQo+8u3SlFIdHd7eMRUKMru2SrSvyxZhr9mOTIU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JTTrQb0ADCdEUoF80C6YRvVFd8nSbia5dOy69QwMlz7rKB2QpPbV46Few5UqO8QMe
	 66tJUYTq+t3yYSycBbpUrKALLbtL44ZiDEtE+Dse2MJsVvWI8bO4Gu5w/u3IlkmvyV
	 2oky6u2XJg8iWs69B0ZLfRKn4uNfWzs/6/x91y9s3gQSgJ1+MNLXFAghF0gndPr3UL
	 IxyUjAOte3cqNbNgPNz5NBJMyEM8YpJeDKhs5ddSUTKx0KrXcbyqTPg6/rJjDp+fgg
	 mdM9ffzYMQrKz37vf9pXnHRZLI6R7rU3Fc5vdMCTZkjxJpsLwgfJFWi+9d2Chzq2pm
	 h7yV6mAb6F9vQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 199D3418CC;
	Wed,  3 Apr 2024 23:26:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 018181BF35D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:26:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1A728224E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:26:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qpbsbh_Oo2wy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 23:26:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EE4EC82241
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE4EC82241
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EE4EC82241
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 23:25:59 +0000 (UTC)
X-CSE-ConnectionGUID: oi9sm5XYS2Gbzjb+49u7hQ==
X-CSE-MsgGUID: 5+FnIrfzT/aXwMXqiZgusA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="24958264"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="24958264"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 16:26:00 -0700
X-CSE-ConnectionGUID: WJX4cfsQSdmsIlYoz6GmEQ==
X-CSE-MsgGUID: La+CWZswQCWXHJF7KQ/spg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18627386"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 16:25:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 16:25:58 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 16:25:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 16:25:58 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 16:25:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=StIRPthAMVn59cJ2GZesE4h3z84Mwanb+mCLQR9jocFT3bZIkPJW2nfLjU90nHweTBZAaDVYoWJP1nuqk4GQUl8chnIYvtVHS/qi+E5pDQLM76FTukakccBWq+WJETSQ85+XBEmNZAM3PSQgJpA2kUmZpDzclTyPQG51odzI71bpl5R8Z1NW84LiKnWkqyjYClMrqAwLy/o2ZATP8X1BjX1azARgcqQf0S1HYOEd+jY7K0PSA7UpTDTHQMRRWxhJ2n7NFDeiyOmevVZRLZ3zxhzgTwk7eSaNOlqXN/kgYZY/CQ5MJBjYzMq0pY25o7d9BTGE72VvO7q90qwaKh71tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WCy4TQo+8u3SlFIdHd7eMRUKMru2SrSvyxZhr9mOTIU=;
 b=VobIhvWsQjWPeKCXdDMS8femietyAsvUfm3ccRgC+ryYYcUjERwsJ/jWrPnqDiz7PSvjw5QsKmgbiHyzP8RkSn7CRlv7zMHJ3fBVrRQTpK0SKA4/kShnwhV5gHW9Vvvvwx0RVESwtfmA3ItTVFft4mZZ+txhwW0PgYNWLufVHfZmyTaKmf6dnoeveRgwvO2Ql1fJnsjAug8az28wF7+ImVI+RWfk6OD2xSt8xAmEqbDPSllYV/tKR5Zdg2/wDGujaKsPi8zAgpxZ+P4Lgw1wzEZhZ6tsa5mhwB8CA5tR6gyU68P9VYRNOXTZvSpDP2Ug0h3/3VzCfA7CQLGHsH9/Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MN2PR11MB4727.namprd11.prod.outlook.com (2603:10b6:208:26f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 23:25:56 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 23:25:56 +0000
Message-ID: <59a690bc-50c6-df52-5686-ae6b231fd0f3@intel.com>
Date: Wed, 3 Apr 2024 16:25:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240329161730.47777-14-karol.kolacinski@intel.com>
 <20240329161730.47777-16-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240329161730.47777-16-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0036.namprd03.prod.outlook.com
 (2603:10b6:303:8e::11) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MN2PR11MB4727:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QISldy5gAMVHISRti4GiS8zEiPr/Ou4o7+BaNQD27zE/9pJZ7Lw1FW7dDuAwjx2wDYwl0LhqfrHbAORCULqSeWYjc3lEFlFPsG4kmp6JUMJQ6s6sDXZwzGesMIGLp8z6vPa1q/3xaBEp3qLYpj7jJthRJ1cs/O0JM40pSHk0C0pUvSSpabfuGPzS+ciQF7eII+m0ZRe+2CJgVFPEgcMTJn3GQZoxL/w05vim21SR5TQczDBr98XtVxxL/PEfeDNkWC5DVTd0BZ5VHWMEh0pMPZ79LcUL8wlF7DyWk922NEm67Byb5VLRq+zTBjSIUpnqk3N7wCGOxn+T9sbzJLnYe6023R2tng9WlsRdhWyxHt1YfmPrF6BnleLgt0nyMMeQAklaMmH/xKIjfY6K39/B8DLruBN/6FsSTCS0tZQ6QO9MbNXhp+wqhwpeNdw6zp5vFJ1Mh4ohs+ax72JS+9btwviK8nC2kWOMM+Kn5WwLgqIcuXfKQTOyQRttSmMY2vunRZVA1ia+PHz5hYbvdaQhClk63ToObKLdzx/elA1rs3w2UncoEFAJ5KLoRvNgSCVdUwNPnPrg3N1Sh9z9U1wZk5Zz7dn0+QJzztwKCm6Zkw0i7ixec8iubc507dI3AAvt79WKzA3wUQiG+2DOvHZOTisNzRvTyFA/U0JSI1Let3A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGhhZDVPNXBZeFc3cVRUUk1JNDJSeWFMLzZwUmVqZGNqSFI3VUUvNmZ3N0xn?=
 =?utf-8?B?cTlWcVpCYk9OR01rOU9ZbXdwUFR5ZFZoejRjckhyRXlZeWl3c3h5MmZEdUVK?=
 =?utf-8?B?ZTlBd1pHRmpvYUErTzVGMGFubkN4cFB5TVBaRG1YYXQwWVYvYUl6YTAxaGY4?=
 =?utf-8?B?MjZ2V2szaERoRHlwSlE0ZU5HM1pkTlE5OFhxRjZvMERGWVkxdU1lZVNYK3V0?=
 =?utf-8?B?U1VZblZHWkdCSDhkN1BvV3hFWDJoTCszKzlOc2krZHN6M3liQnFpUGxOS0hR?=
 =?utf-8?B?TExWNzEvVnlhWGYyYW5hdmJOYnppdEFPRGRObmFWeGlweU9kanNRVmswMjNk?=
 =?utf-8?B?SDlENzFPWnRrTmhZeHNPQmU0eXhSLzROMTJERWN4SHpVaFVvcyt5R0dPNXNm?=
 =?utf-8?B?SDBvakNsRUlMcXVoMGtLMmthYVlmVFBQUTVTczMxalRBNGZPS2tCRlVoVkZj?=
 =?utf-8?B?WlBLZHFQVzBkRWRybGNlVE1PcXJTelVMM0ZwWlF4a3RPTkZ1bDh4NERjQ1JM?=
 =?utf-8?B?ZnNhaDVMaWJnMVVxWktOTXlpSEYrRGZuKzdGcmdsYnplU09CdFAzRC9MZVNV?=
 =?utf-8?B?Tjl4Yk9uYjlqRHB4aHJCdTIvcDYwQWY5cWdRTmxuL0J0WEhhdUNMTldEeERJ?=
 =?utf-8?B?OWUzb3RrVWpZWU9yTC9uV2ZabXhROTNEckRtdEJ4YXJZWExiNHJWNHp2bmts?=
 =?utf-8?B?RUk4Um5Zckx6eVMzSGZHR2c3Lyt6RWxLenJFa08wVnVRdklOdmlGSGZmZHdj?=
 =?utf-8?B?RU1QSThyaGRwUVRqc2dzc1J4Y0s0Y28vV0ZPVGRtNGZYNVZjWWE5bGFTNmJG?=
 =?utf-8?B?bjQvQWhXQjNSOXJwMEpid1RYeVBuNStGK1FaZTQ3VEMydzNQbWFjTGJ5ODRW?=
 =?utf-8?B?dldzYlNGWlBaM3pHeXRxL0JvVS80SjM1Rk5KSEQ0OWJKQWtpVjNTRWZxcVlZ?=
 =?utf-8?B?OHkwaUpYOHcwVzM2NXdBKzl2SXVCd2Rlc1F3YVFlbzUvMXJVSjZua0l5Y0xN?=
 =?utf-8?B?bXMvdllWcDVvdjlqaTk0aTc0Y2IyUVNzSjVhRENJeVBBSk9sejA2Uzg4bGRh?=
 =?utf-8?B?OFI0Ykd1Unh4ejY2bmVZdU5iNm8yakRSSGU5OGlMclZMMmQ4c2JQWmFFV0Rl?=
 =?utf-8?B?SVJzajhjWEN6R2ZRKzJ2c2dkQ1llU29WTklJK2kwTWJpQUxQS3dyc0ZBK3pV?=
 =?utf-8?B?eFRjTDJvODg4RlEzQXlTUWc0d0pWSHZEbFZDS0RhOXV3K3kveGErTkg1c0lt?=
 =?utf-8?B?c1NsOFFST3lXVEVodnpSdUVqcUg4bGxxU3pFQ3FKeFBVWTJmR1dEU1JqTTI2?=
 =?utf-8?B?MjM3Mm9FNFJ3cUJjTms0QlFzRkdMZmU5VXdQekQ2clJ4TjQ5Y2N4c05nZzhE?=
 =?utf-8?B?N2tqTHNXaFcydVMzWWR4clpYMzdSTHNzVGo1cHZsb1c2UlRDV2o0b0Eyb0tD?=
 =?utf-8?B?Vjl6MTVSRHJFbzgzeTF6R0NLMHkxU3h1aXJ5dFFqNkFkMjZyNmVFdUF3S25x?=
 =?utf-8?B?Q2dzMEtqdkhqZEVUSFlNR0ZRUWgrNXQybW84eEU4SWQyR2ZUQ0VVNU1lbk9Q?=
 =?utf-8?B?TE5UM2ExbkUvVXV2VGFQS2twRmczZG1zQ09uWmloenJuVXp1S1piQk1IWDBC?=
 =?utf-8?B?N0lvYXdwQmwxMEdLOWJsSklzelVOT2RoRnI4eE5nekNLNlJHaUpYRHN3d2hr?=
 =?utf-8?B?VitZd2pxRE5jQzF0MEVhQmt0bmhBclcxeVhKOExpdm9kdlFjdnBvNFVHN05v?=
 =?utf-8?B?cTBSMDNuMWZDMGZjRi81c3Fsd0VpRFowMUZHclN3eUlyNmw1ZEJrMy95WE1s?=
 =?utf-8?B?c01ubHVIdzh0TG1yRjFlVnpiMzZrQ2NJTDhGWjVqdFJnN3c1WDdjVnBvVFRl?=
 =?utf-8?B?NzFDWEh2M3pyS1M4Y0JxVTJOWFFFY2VkTkpMUG5xcmg3a3c3eGJtRXFxUERY?=
 =?utf-8?B?ZUs2Uk4wSWY0dmlqV2JjUUFxOFBxQkRSVFVwdXY2TkF0dWFLS0JpdVFTaVUx?=
 =?utf-8?B?c0NBRVFUT1NseVpQU2tRZUEvR0h3SXRWVXd6dS9UakdmQlVPQ2k4V3ErTFNB?=
 =?utf-8?B?VkRCdkw3TlY1amtvV2Nyamx3WGhkRlE0bUg1RnZTWUxjTkFpVHgvb3gxekVk?=
 =?utf-8?B?eENSMHJHN21zQ1hGUkpiM0xWcUM4NHNTa2Q4dWFIaC96STE5NzZCeWErbVpW?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cc4166d-a5ac-4c13-b38e-08dc543569b4
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 23:25:56.4787 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y6olQozLr9vb3IgTzFT6ndj7VLZAMh+RzJ5wooRzJD1QoJ/wmDQS82pyjllajBKaXQi2JgJit3mewim8J6wfSpNgmDv1z0LfxBtpZDtTkgM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4727
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712186760; x=1743722760;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h5D1hhAghyHNqmUrOfIsViJr2Pvb8kRlD7jQlaD/ros=;
 b=f8YBzIgS4ArnYaXAwA6+WGRhn2oOtQC/If4Q6LxtbSLqQnZp+A/Nb5Ag
 4YV4TGVSsKPl8wf13FyIaJLfpBqC8OMQIcrpPqL1XigyKgTP+rE0NSnmE
 jX+boPegJZfVnzjEZjLBBzuz8BaEkXKGcEiTzyTkTOeR/DyhsZtZvP3H3
 GJd2HmQkyKBw6PvxGb+Y+P2ikCF6ZB/PKYB7Cbrg5/7hzOigyfGNY4Kfb
 JvkOfirGas5guzRNDoYnj5syNs4G5MUXQ/Pv0iiLg8R9sl+zycvmLMkte
 CTLM0PmlUlLnp266HU23paS7/M4eIu9ivp+Ndei4FUoJvYPaTTXxRRiFZ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f8YBzIgS
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 02/12] ice: Introduce
 helper to get tmr_cmd_reg values
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/29/2024 9:09 AM, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Multiple places in the driver code need to convert enum ice_ptp_tmr_cmd
> values into register bits for both the main timer and the PHY port
> timers. The main MAC register has one bit scheme for timer commands,
> while the PHY commands use a different scheme.
> 
> The E810 and E830 devices use the same scheme for port commands as used
> for the main timer. However, E822 and ETH56G hardware has a separate
> scheme used by the PHY.
> 
> Introduce helper functions to convert the timer command enumeration into
> the register values, reducing some code duplication, and making it
> easier to later refactor the individual port write commands.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 140 ++++++++++++--------
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   2 +-
>   2 files changed, 89 insertions(+), 53 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index e86ca6cada79..c892b966c3b8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -227,40 +227,114 @@ static u64 ice_ptp_read_src_incval(struct ice_hw *hw)
>   }
>   
>   /**
> - * ice_ptp_src_cmd - Prepare source timer for a timer command
> - * @hw: pointer to HW structure
> + * ice_ptp_tmr_cmd_to_src_reg - Convert to source timer command value
> + * @hw: pointer to HW struct
>    * @cmd: Timer command
>    *
> - * Prepare the source timer for an upcoming timer sync command.
> + * Returns: the source timer command register value for the given PTP timer
> + * command.
>    */
> -void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
> +static u32 ice_ptp_tmr_cmd_to_src_reg(struct ice_hw *hw,
> +				      enum ice_ptp_tmr_cmd cmd)
>   {
> -	u32 cmd_val;
> -	u8 tmr_idx;
> +	u32 cmd_val, tmr_idx;
> +
> +	switch (cmd) {
> +	case ICE_PTP_INIT_TIME:
> +		cmd_val = GLTSYN_CMD_INIT_TIME;
> +		break;
> +	case ICE_PTP_INIT_INCVAL:
> +		cmd_val = GLTSYN_CMD_INIT_INCVAL;
> +		break;
> +	case ICE_PTP_ADJ_TIME:
> +		cmd_val = GLTSYN_CMD_ADJ_TIME;
> +		break;
> +	case ICE_PTP_ADJ_TIME_AT_TIME:
> +		cmd_val = GLTSYN_CMD_ADJ_INIT_TIME;
> +		break;
> +	case ICE_PTP_NOP:
> +	case ICE_PTP_READ_TIME:
> +		cmd_val = GLTSYN_CMD_READ_TIME;
> +		break;
> +	default:
> +		dev_warn(ice_hw_to_dev(hw),
> +			 "Ignoring unrecognized timer command %u\n", cmd);
> +		cmd_val = 0;
> +	}
>   
>   	tmr_idx = ice_get_ptp_src_clock_index(hw);
> -	cmd_val = tmr_idx << SEL_CPK_SRC;
> +
> +	return tmr_idx | cmd_val << SEL_CPK_SRC;

This is not equivalent to what was returned before this patch. Is this 
supposed to return different values now?

> +}
> +
> +/**
> + * ice_ptp_tmr_cmd_to_port_reg- Convert to port timer command value
> + * @hw: pointer to HW struct
> + * @cmd: Timer command
> + *
> + * Note that some hardware families use a different command register value for
> + * the PHY ports, while other hardware families use the same register values
> + * as the source timer.
> + *
> + * Returns: the PHY port timer command register value for the given PTP timer
> + * command.
> + */
> +static u32 ice_ptp_tmr_cmd_to_port_reg(struct ice_hw *hw,
> +				       enum ice_ptp_tmr_cmd cmd)
> +{
> +	u32 cmd_val, tmr_idx;
> +
> +	/* Certain hardware families share the same register values for the
> +	 * port register and source timer register.
> +	 */
> +	switch (hw->ptp.phy_model) {
> +	case ICE_PHY_E810:
> +		return ice_ptp_tmr_cmd_to_src_reg(hw, cmd) & TS_CMD_MASK_E810;
> +	default:
> +		break;
> +	}
>   
>   	switch (cmd) {
>   	case ICE_PTP_INIT_TIME:
> -		cmd_val |= GLTSYN_CMD_INIT_TIME;
> +		cmd_val = PHY_CMD_INIT_TIME;
>   		break;
>   	case ICE_PTP_INIT_INCVAL:
> -		cmd_val |= GLTSYN_CMD_INIT_INCVAL;
> +		cmd_val = PHY_CMD_INIT_INCVAL;
>   		break;
>   	case ICE_PTP_ADJ_TIME:
> -		cmd_val |= GLTSYN_CMD_ADJ_TIME;
> +		cmd_val = PHY_CMD_ADJ_TIME;
>   		break;
>   	case ICE_PTP_ADJ_TIME_AT_TIME:
> -		cmd_val |= GLTSYN_CMD_ADJ_INIT_TIME;
> +		cmd_val = PHY_CMD_ADJ_TIME_AT_TIME;
>   		break;
>   	case ICE_PTP_READ_TIME:
> -		cmd_val |= GLTSYN_CMD_READ_TIME;
> +		cmd_val = PHY_CMD_READ_TIME;
>   		break;
>   	case ICE_PTP_NOP:
> +		cmd_val = 0;
>   		break;
> +	default:
> +		dev_warn(ice_hw_to_dev(hw),
> +			 "Ignoring unrecognized timer command %u\n", cmd);
> +		cmd_val = 0;
>   	}
>   
> +	tmr_idx = ice_get_ptp_src_clock_index(hw);
> +
> +	return tmr_idx | cmd_val << SEL_PHY_SRC;

Just pointing out that this is the same as the above function in case 
the previous needs to be changed.

> +}
> +

