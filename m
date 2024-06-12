Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4B7905EA5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 00:40:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1496608AA;
	Wed, 12 Jun 2024 22:40:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k1-wl9HlymGn; Wed, 12 Jun 2024 22:40:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72CE0608D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718232035;
	bh=tV3W+edNI4JPUHbqQtH5uMXQmqhdvY/5icmnhuZQ32w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FKt6m9n8gik28LT0bLtZPKxUzhPL1+QNR8HDx2negHr4EH2v7HHM7SYcP4m8u1N4t
	 pJBkKkMA/t5nTwwxaTErdbTlivwpD3duUp6CKQdc9aTPVpDSKxhtIIY+aMzE1gJFbf
	 XXyZL7cEKKk9K8XX/eb/+1C3Q7opT7670NouF+cyhFQ88pLOa4J4m2/Dd5oJeWoUY0
	 4esf8veSiUOmasvuPxVdmSv2zMixG0Jdl0noRS3ezMfQJCYpOYirFX3SXAMWKGOG53
	 y7CyLSX/xJVZVU/n2OAejcQ7G9tNRZ7IB9CItzFiYVRuFpFCVA0FupJ/dMilsHXdac
	 yisJuDBF9XQNg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72CE0608D8;
	Wed, 12 Jun 2024 22:40:35 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B35091BF365
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 22:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D0606088B
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 22:40:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OPNbrKheb81K for <intel-wired-lan@osuosl.org>;
 Wed, 12 Jun 2024 22:40:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3E36B60884
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E36B60884
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E36B60884
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jun 2024 22:40:32 +0000 (UTC)
X-CSE-ConnectionGUID: LzJYNzA7SLqiPRAXDb5zeg==
X-CSE-MsgGUID: U49Q8GpHTga5ZMJA0QI1Pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="15148826"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="15148826"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 15:40:32 -0700
X-CSE-ConnectionGUID: YJoTCtGqQhCJdtoxF6Y24w==
X-CSE-MsgGUID: e7m9j7ZYRMutwzFFu8gYuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="40632735"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 15:40:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 15:40:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 15:40:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 15:40:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 15:40:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iyGTM3NLzRbHFSZE6hrG0C/t9U25LxfNxEdRvAyH4QMxyWFrlYxFr8Z4cFsGMa1Phq1lthxJsRjwwKWT8C0SGOIL3kDSkfbEPpLFTy+KZ0QA2lw738DUaqd/EJ4oWoBmOMa1YJPEACjbEgAI9UkG/pnVeJLZxgdKJx2bNHVyZZqTsmXr2q4Lm5c5sec+ycM93Iepnpoll8gDsGqRaQlFxiJJULKNQUtHlYWbuMPK0UU9/SavNu5YzIITnxF9zT0EGygE44gtamfEl9diFVzCNwmJsbs7SFA7Pboc1x7tzrzUd3MrzTfyx4f0Sq1D6ysNukBEi8dg1werULaNGnHTZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tV3W+edNI4JPUHbqQtH5uMXQmqhdvY/5icmnhuZQ32w=;
 b=np7/glKVTfVWii/8wDjuKoldehvZrrdN+cCRu9LHmMnDHMDCZi/Se496H3N5YzI8fvNr9xyREfmMYcKh8qrViZffAHp73hNoPc516tovawHQV/UopII04ysU3eGcqzBAZ9SmAshtVdWkV5uAPe6l5/Ouc756GwLTZ6xoBjNsx8PWwIc8HmbT/wUpS27iNpXGLqhJtgNmx7I1xgf9ynZ70LI78jxn6P9L19Mkq5Zu5lMfqVahgK/ri2UsccgwnTY5xK5703XlSyrTJPRAC+k1MpBH3RPmVXAPLAWYJ6PNHl7YgKn1TZxq1m3hG6sCvzOitdRbDFapJGoV73Ry14thWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW5PR11MB5860.namprd11.prod.outlook.com (2603:10b6:303:19f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Wed, 12 Jun
 2024 22:40:28 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7677.019; Wed, 12 Jun 2024
 22:40:28 +0000
Message-ID: <a703f3f9-c430-4d12-a1b9-6acec27e1f8a@intel.com>
Date: Wed, 12 Jun 2024 15:40:26 -0700
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-6-aleksander.lobakin@intel.com>
 <b25cab15-f73c-4df8-bfca-434a8f717a31@intel.com>
 <7cdd9b21-e597-48ef-91a2-a45b99821b28@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <7cdd9b21-e597-48ef-91a2-a45b99821b28@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0274.namprd03.prod.outlook.com
 (2603:10b6:303:b5::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW5PR11MB5860:EE_
X-MS-Office365-Filtering-Correlation-Id: c0840c12-76df-4e0f-3318-08dc8b30a89d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230034|366010|376008|1800799018;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VUp1Q1JsWXJuVVk2bUFxekxCS0lxYU9RUGNSQkV1L1ljT05UVlNNRTNGVzV1?=
 =?utf-8?B?dk9KcW5KWUJyMzgxanZ6SlB5WlczaCtidzhJY1VreWJFMFdYbTRmSnBBWktC?=
 =?utf-8?B?WjNRMmJ4NTl3OGZlMmVBbGZqQzduZjNKaTB0QzFnMHRCWEtmODRiOW81dnF4?=
 =?utf-8?B?S1lIUFoyeEtmSUdFclpPMHZLZmR4WVgzeHpiYWluUkhOejhKNTIxUEs0dTI0?=
 =?utf-8?B?bFJpL3EvRlBTM25qN3ptM0FqYVlvOHNpSTMvcERIOUduNEF1Y2F3dzNBUmNG?=
 =?utf-8?B?TGgweXJxUXJyUmU0U2ZPSnppRU85VHJtcDJhdWZhN1NycWU0dEJqRkd1d25t?=
 =?utf-8?B?d0Q2V3ZnTVF3amNSeUFsazBKU2VvZkcreDNSbXg4dkFacWMzYnFaaDRPMVJr?=
 =?utf-8?B?Uk91YkhmTWlkOXBSUGpudGppbGtXY1U5N3VQZ3ZIcHlBNEZmZE9jWmlqNG9w?=
 =?utf-8?B?RThxelFpWWNVaVkrMFc1L1pXK2JXTlpYYThsQ1orcHNwUitiSSszZlhveTUv?=
 =?utf-8?B?Y2h4WEhCUTF0R2sxN2ptdmQ4clg1QTl2Q0h0MFh4VG84YldSWXFyenRnS04w?=
 =?utf-8?B?bkR6Q2tGTHFvS1MyWVJvdzFyZ0JyejVCMlhPcVpzd0ZOK1oxOHp2Y2l6cUhm?=
 =?utf-8?B?cFlWTXBjU09GOG9FMnJkemFNKytjSDFlZFNzTk8yRUlaUjBGaVZELytzc1ha?=
 =?utf-8?B?ajN2ajZ3eitBMzgvSzZoVzFiZ1dVUVlKNXFUMHE2WGdIUXh0dlRuaVVNRFM0?=
 =?utf-8?B?N3N4QTExNVdnMW4zaE9mSTA4amFxMGUzZ0pVWXJXSFN0aTNUYlRwcm1IQlNz?=
 =?utf-8?B?MFFjaHRTbEM1UkVTeVF6L29vOHg5Yy9iVCt1TUpUU0RFSXE3eGp3WGhxaCtm?=
 =?utf-8?B?T1FHRVNYc2h0MjZaNjd3MlcvMzI4Zk04dkpraFdmQU55eG5waXUwY01YS3Fq?=
 =?utf-8?B?VVRwL2dnNmJOU2Q4K1VwQlJldVR3cklJb2RvUCtzcEhUdHc2MTlLcnVMT2lR?=
 =?utf-8?B?Zk9na2JSUDZENlVyTHhwTnNhNlhTWEV2dkpoOUVvU2FhaGllT01MMmlhT2py?=
 =?utf-8?B?OEZWMlNLenN2Y3FrdmpydEt2VHBEUXF3TXUyam5zTlZTTk40U2RaY0pTVURu?=
 =?utf-8?B?NzY1S3U0NUJIN0QwNFZhTlVBMU5DcWZCYlpGZ2Nkck8yMEdBKzJzNUQ4MjNL?=
 =?utf-8?B?OXVkSzVpSjN5cDB3TGV0aVFpeTlXTFBhK3hsaTZQSldFQTJJbnR2dGU5UDFj?=
 =?utf-8?B?RW05WFRpUlZPNkEzWkFZcGFGR2Z4cnE4ZG9FejVZL0tTUXgwWTB1cGJRT2ZE?=
 =?utf-8?B?b3hOZFozK0xTY1RXUlBCVXhnYm0vT212Wm5FRWdCaENGTHA1NXFGN3J4NkUx?=
 =?utf-8?B?VmsyakV2eWhNQ1Y5L1crL1p5RFVMYWRhMmxHcVBwTWE1ZmlURGQ2VmE0UTBq?=
 =?utf-8?B?T1dnK2hWZDV0SVZKdnJlVkJyVTNheUdJaXNaYU9ta1d1UnZHb3loVDBlbEJP?=
 =?utf-8?B?d0lXZ0NiVVNjUE9FUjIzVUtaKzFUV1MvbGlOZ3FReXkzcXpqWlp2S2Z1S3NY?=
 =?utf-8?B?em9iSUo3M3N1M1NYSko1VWEzbVhQVkwrakZKemtLaDRaSzRCOUdBa3hXaGRh?=
 =?utf-8?B?VjlCUityQlZXUUl4RnE2dUtDVEx6ODRzVDV1S3BLdFhpT3U0TUJjeml4WHRX?=
 =?utf-8?B?MXpOOXZKMm8xaEVOREJ2U29RYTgyN25iOUNoOFpRSzJPS0VBeHpGOFpHKzVy?=
 =?utf-8?Q?gLkU0CkK1s5e3vdpJw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230034)(366010)(376008)(1800799018); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2NyVW1OaG9Ha05jNk96MlFHYlpyak4vc3lTZFVuWnFiTjJ3dXNlYmoyakJx?=
 =?utf-8?B?WnJCU3h3L0ZSYkVTY2ZLYmdaTDVHWHlWTUhkQjR6UWNWNytUcy91S1VXcHNV?=
 =?utf-8?B?c2FjRXJWTC9VMktBS1hCeUFiM3JMcHVCVUt4Tjd1YzBrN0JGMElyM2J1SWI0?=
 =?utf-8?B?UjlsR0FEbmp6dUIrR1ZidXk0aXhwdGhsNjJ5V005eXNtZ0E4c0g5YWl2MFBC?=
 =?utf-8?B?TGNEdWdibVM5b3J0VXZLaTdZTXhXTEJYbVg5cHpqMXB3M2RqN0c0ZitML1hQ?=
 =?utf-8?B?UzhUYnFrSWRtSFc2MkdCWE9wNDNDK1lmTGVyUHZCME43YVdrdU5meitzRjJq?=
 =?utf-8?B?ZG43ZHVhUlVOWlFJSXdHMDNhdkdnSUNUMmkvLy9ORHlnOWwzc2tjaXpKRjVa?=
 =?utf-8?B?YTN1WVhiWGl2alNYZDROekEwTTYrYkd0THZHKzcyaldsZE1KQ2dMK295akx2?=
 =?utf-8?B?MDJHelNTVWd5SnRpbldhTW5tYVQ2KzVEZGNZNXVnMFd5SFMvT3ZLL0hpYnY2?=
 =?utf-8?B?MHQrTFRSaGx3QjQ4NjBpbFdaM2ZHcWNMeVJWYUNaN0c3KzR3ZGkvckVMVDJS?=
 =?utf-8?B?bXFXSGJ6YWlFVTZ2NDg5b0xmQjVhbkZrajhJRFZFN3JUdWtQMHFScEtJbENO?=
 =?utf-8?B?aHFqc0dFbjhwNTlIK3ZKb2lSMVFkNi96bFJSbFA4MkRwVnI0cUtVZkJESGRP?=
 =?utf-8?B?a1J1ZWM5ODROQlJpcTUwQTNKazdMUkpIcFNncUNaWFdhL21kek1IWVNBeWRR?=
 =?utf-8?B?Y0xSZndOQmRUbnE5YUFobDVjY0hjWUFpQ0Q3VG9EZ1NkdkpheDJ3YU9mZUZ5?=
 =?utf-8?B?M0lSanFJNUFTL2ZaUVJSdENoN1RVRkNZWld2N3NYdXJzN3lPVXAxcHoyMnFC?=
 =?utf-8?B?NWtKb1hvTEVROEtDRUxJTER3eHFkcHExY0FUUVRzZ1l0cEwraEV5ZGgyQUVq?=
 =?utf-8?B?N3dtMXdTdDMyTjZ2NGRwakVSMkNjSTkwZExrY0VHKzZYSzZEaGRvSkFXTW1M?=
 =?utf-8?B?OEkzTS9tNXhndUQzVlpKWU5YRGlOZWRqUXdXNEppME5LNHN1VGEwdVZxTVBZ?=
 =?utf-8?B?dW1nazNPMG8yMUlFaXZPMlZDUWIyTWhGNTh4MC9OSDE3OXpmNnV6WjU3Rld0?=
 =?utf-8?B?ZVpqV2puTkVJSDN2c3BxOG96R2c2Zk1zckNYdWc0TGVRRER3eCsyYjZTQzBG?=
 =?utf-8?B?alJYKzVNRmMrb2ZWN1pxaThQcXNvYllNZXVTUzBvR1lNWXJibnRCdlJ1RjN5?=
 =?utf-8?B?VVVvUmptRk1keXNubFBzNS9heFZYTkJDT2pEMlptb29wUEQxTjBoUTVaWHZ3?=
 =?utf-8?B?Z0VkZHRQbjhXZVJmeWc0cDd5OUdlalBqYVhmU29hUVBZOXg2bis4OVpoK1dU?=
 =?utf-8?B?Mm1vTGwyVVUyaXgvL00rVUlzd2lHZm90YVhtNXl5MUx6dFdNcW1qbks3dm9H?=
 =?utf-8?B?ZVVxaTVPdkx3bVNyMTZGU1BTaTZ2dWRRdERvTURIbXJwTmRpbnZydzFuT2I1?=
 =?utf-8?B?bU1tdS9WNTIwTnNEWTJGbEYxZTJjc3FyM2x0SXc5U01veVJYSjlzYUhuZVc0?=
 =?utf-8?B?blRqUXdZZUFGK2lyUEJwR0dPd2FoY3cvMHVNMWIrSEZ0K1JGdk5Uc01rZUQx?=
 =?utf-8?B?TGR5SXFRT0JGR0g0UG5rc0IveDJGV3lEcVNsQm51WEpRZ0xyR0dOdWliVEJC?=
 =?utf-8?B?bEtsZUNMQmNoWjhvaDZtWTBKSXpOYmovWGtCUStsOXVtUm9TdkZBZDNvOVdR?=
 =?utf-8?B?a0VoVjdCdGprbzZBR1ppcjlXdnZYemsrZlU3bm5QMW9NdWFQSUNISjNWL25l?=
 =?utf-8?B?b2ozRFJsZXhnUTZxajNnV2xURGhtMVpDTEh4dVh4Qm1SYjg4bTJRVHpPcXhE?=
 =?utf-8?B?SjZXODRjNnBKbVByQmYyNnhFTk1vMjZXMkRQbTdnVEpmcmNQVEJqUFBqQzNK?=
 =?utf-8?B?b3Fkc0s3QnhRelNBaDRiR3M0bDRocGs4RjdIRlVjcC9mWXBVYnRRSUozV3RK?=
 =?utf-8?B?MlZVMTRoQjIzNndUOGtUWlhFY2xrWHJlOENTT1lWV1VmQWVFRTZ4aEZNTGdN?=
 =?utf-8?B?SHVoUkNVWkRCV0hid3luWEsyUVhoOENvZmQ5b2J6aFZiYjNia0V6Q2hKUUk0?=
 =?utf-8?B?VmVJN2NhYVZ4NWtGRmpteEpoTXZBTVZXdWlVT3p2OEt2bFM3Y2k1MmpVakpy?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0840c12-76df-4e0f-3318-08dc8b30a89d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 22:40:28.4391 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NTLe7b+mRKJGmAcMTz6ZOAfFoFCpxHnTypR7+GqXSWh4bv8jO2jHbBVghW/WyhsD5mILbx4Ndy7dgqlamVYsOLcRSxA7c630+o6yxcDvV9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5860
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718232032; x=1749768032;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uUnGKvpD8SLwgvCo1Csfg1ABmwiefObWh6WurmhTvv0=;
 b=kck118Du4tKiVEayQr1yHaY+bO9K1usmtlAhnCICuCe5o3/hOWClKbqu
 +ptsQDFiazgfQLI+3rchtisQjHrIFjfwLfVoO88UQ9AlogGFOl1HKbDIz
 qcso+vowctxdsNcALND7XWVc8zPtPr6p0fW2AUPeW51VeD082hkoXPL8U
 /JPSx1aHqiRbeW9NiODBlZwA7RpQ6ZM2brNHtFrOoerW4qJg6aRmhc+sJ
 L9WbHw5w8VLB4RbPe9KVa4xS6d885Bjg2Wzygglkw326hoSrXgrRfRcEQ
 M10NweNHF7piwvPLHaQMlteMOckqJ6U112oxu2ZtUQknvi9XZSg2kdkJr
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kck118Du
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 05/12] idpf: strictly assert
 cachelines of queue and queue vector structures
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
Cc: intel-wired-lan@osuosl.org,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/12/2024 6:03 AM, Alexander Lobakin wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> Date: Tue, 28 May 2024 17:43:34 -0700
> 
>>
>>
>> On 5/28/2024 6:48 AM, Alexander Lobakin wrote:
>>> Now that the queue and queue vector structures are separated and laid
>>> out optimally, group the fields as read-mostly, read-write, and cold
>>> cachelines and add size assertions to make sure new features won't push
>>> something out of its place and provoke perf regression.
>>
>>
>>
>>> Despite looking innocent, this gives up to 2% of perf bump on Rx.
>>>
>>
>> Could you explain this a bit more for my education? This patch does
>> clearly change the layout from what it was before this patch, but the
>> commit message here claims it was already laid out optimally? I guess
>> that wasn't 100% true? Or do these group field macros also provide
>> further hints to the compiler about read_mostly or cold, etc?
> 
> Queue structure split placed fields grouped more optimally, but didn't
> place ro/rw/cold into separate cachelines. This commit performs the
> separation via libeth_cacheline_group(). Doing that in one commit didn't
> look atomically, especially given that the queue split is already big
> enough.
> 

Makes sense, thanks for the clarification!

>>
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>>> ---
>>
>> Having the compiler assert some of this so that we can more easily spot
>> regressions in the layout is a big benefit.
> 
> [...]
> 
>>> @@ -504,59 +505,70 @@ struct idpf_intr_reg {
>>>  
>>>  /**
>>>   * struct idpf_q_vector
>>> + * @read_mostly: CL group with rarely written hot fields
>>
>> I wonder if there is a good way to format the doc here since we almost
>> want read_mostly to be some sort of header making it clear which fields
>> belong to it? I don't know how we'd achieve that with current kdoc though.
> 
> Since commit [0], we need to explicitly describe struct groups in kdocs.
> @read_mostly and friends are struct groups themselves and in the first
> patch, where I add these macros, I also add them to the kdoc script, so
> that it treats them as struct groups, thus they also need to be described.
> Given that one may use libeth_cacheline_group() to declare some custom
> groups, like
> 
> 	libeth_cacheline_group(my_cl,
> 		fields
> 	);
> 
> it makes sense as I'd like to know what this @my_cl is about. Here I use
> "default" CL names, so this kdocs looks like Ctrl-{C,V} explaining
> obvious things :D
> 
> [0]
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=5f8e4007c10d
> 

Yea, I am not asking about "don't document it" but wondering if the doc
format itself could expand so that from the kdoc it is clear which
fields belong to which group.

Anyways, I think the patch is fine as-is.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
