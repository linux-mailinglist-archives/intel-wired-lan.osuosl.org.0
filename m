Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C15D28AC8E4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 11:29:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1DEB812B6;
	Mon, 22 Apr 2024 09:29:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JGo4jue-PrX9; Mon, 22 Apr 2024 09:29:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E506080FAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713778160;
	bh=zOFge+X1I0ZMMbRmNG+QzzuOcXxqx36AS8JQX/WUUaE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xmvDbDSNfV7XTp05B4AfeCkcjqajiwm9iV893NHzb5FE4AhcXBsERdVrTXWK5AzwX
	 nNh0geanqpcGu0t7ScsAkiFFemIduUCilru6181GoJdogCHbRxsIz/jwZ2lKfLvs9A
	 YDraoBG9pM0uGeL8lk72s0vSDWGxrEt2GrABh0PgknQb8wkNE0zreazbjNLSYj9Yhd
	 rnicLKX35/Z/322ixSHqMuT8yf4aNySuOE0W4+kDKekSj/QGQze8qqfi2ogRgtg2SA
	 cWyY45xrlsghbbXcGScVICjN5+JRnisyN/XobuIICPuH7++XnFV8sdhjeRnYezaJdC
	 GJPe3Y2wRDBeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E506080FAE;
	Mon, 22 Apr 2024 09:29:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 209201BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:29:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 05FDF81004
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:29:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iq8GVelisjzz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 09:29:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1776880FAE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1776880FAE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1776880FAE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:29:16 +0000 (UTC)
X-CSE-ConnectionGUID: r5aRmYcWQrWbd+me1BKLMw==
X-CSE-MsgGUID: jvH6WVFySzygWx5rvY7Z2g==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9459897"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9459897"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:29:16 -0700
X-CSE-ConnectionGUID: hjdKzhMcRqCIyd6VD8RgTQ==
X-CSE-MsgGUID: TurKUHEmQKqfdgt+SUAs/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23832888"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 02:29:16 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 02:29:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 02:29:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 02:29:15 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 02:29:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L4deoi2lGLvaued8gxQDmurXVKNtH0cXNgSQAv3Z+AT+yNSQAN1oUoR+PxY4pudeSQT/LfHgkUIhxm5ELqRUC5zqvBEEuWQ07lXvf6QZcUVPLCPqGnyN2ePPab9G3Tdq6YRH11q0GDN3ioNeiCPC+s9MsaiqY/x1R6b46uKEZDwqRPIFZIPFE7eto9wDMtfrNvsctGodm+P0S2P/5NmC7luQAhhW6Xov4ZrMdXiAK/w5WCMnDTF2kXIpXRI6STtLVEYBU3y2rQasLrm0m377WRtOg7wJoKrXpijtNi6KWPhOUtixhmpMn9XNbWdanPoK6p1YUp7TVMX4MNWtcuKKKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zOFge+X1I0ZMMbRmNG+QzzuOcXxqx36AS8JQX/WUUaE=;
 b=XYDCH9leo7cuWTp0KFV11z/wVHD79cVTaowGssHxKiUATuJswNKEkHloFWpU7oLioz7jG5RKDJDiT8KfNt62fljJ02BXMatA419ubEOzWl/E3EmxQUxogyN7i0qvkxV77+EsB+MmArF4EAllbYMD5QCHzX2mUANg8u+WadvIIMauNr1z004BWcAg6Vd4Jr5oEdGEfAJAUV8P7HrjmcjBLJFPkBupgkeYMo9KgGeL5MLV+IKg3eaxxg0PDitZN65aIehjXfem9oGOlY9/65QqscXwduosA+P+SKuB3CkmmQpqqgdUGP07Axf5TSZOi0WfNd7GasoWUkew3YrWSVHp1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by MW3PR11MB4729.namprd11.prod.outlook.com (2603:10b6:303:5d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Mon, 22 Apr
 2024 09:29:13 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57%6]) with mapi id 15.20.7519.018; Mon, 22 Apr 2024
 09:29:13 +0000
Message-ID: <ada0b6ed-a833-4faf-9dd2-eaca6a65c389@intel.com>
Date: Mon, 22 Apr 2024 11:29:08 +0200
User-Agent: Mozilla Thunderbird
To: Rahul Rameshbabu <rrameshbabu@nvidia.com>
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-7-mateusz.polchlopek@intel.com>
 <87sezieab7.fsf@nvidia.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <87sezieab7.fsf@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7PR01CA0016.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::11) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|MW3PR11MB4729:EE_
X-MS-Office365-Filtering-Correlation-Id: 342eabd4-4c80-4eab-e0d2-08dc62aeac38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZTMvVjJ2VlhFeFVPN1duY3N5SWpSVTIxbTlHVXJQamdjb1FTOTB0eXFVUUpl?=
 =?utf-8?B?cDJXVTg3VHpaeDdrNDI5UTdZcnkybEpIMG1XOXBQY1luczdmcUF1TkhZZkp3?=
 =?utf-8?B?YXdUUTBpc01uZUVpWkVzeENjU0NtaHhxTzVEOHA5MktRMWcrSmxzRU1aTkI2?=
 =?utf-8?B?ODdxNjh5YmVjYWg3c1NLa1U4bU4xN3NHWW1NeCtIdUU5TmlXZ0ZsZE1GOEdr?=
 =?utf-8?B?djlBVlZYVkxHbjRGTXZ4UmcxS1g4VWtRd2ZNUDRyeCtHd21RbUU4YVVwY2VM?=
 =?utf-8?B?MC9CSnVDL2UyNGFDSkJpdEJhc2p5TDF6anNoSllSMGE1Y3JVS0taQ09WeWRN?=
 =?utf-8?B?Zzc0OUhhLzYvclM5WXBNUldvLy9pL2lLRUVTbzZBallIUk96aWFBMUpTUGJS?=
 =?utf-8?B?RzArcHltZ21jelgzSmlYT1E2cThaWUhUekFNUy9kU2FOS05ic2Z2U0t3WG11?=
 =?utf-8?B?YWNmMFp6elA5dlNuemlSV3ZhWFJUbkZBbXY3NW1xV3F4bTBoeXpvRWpUSmJU?=
 =?utf-8?B?dFBmamNGY3FscG1nN0hZWE9OUktNNmFJSC80V3hxanRrWFBVdHlMRy9RTlFG?=
 =?utf-8?B?azJKT1RUNkRCSFZ2eVIzUlNvMnc3aHo0VkxDMTFJaU1TRVExOVBwQlhwN0Q1?=
 =?utf-8?B?RmIrOTZNY3RTQ3pidzg0SmlqeGhLeGVYTTZETngwT0M2eWgzd21UZTVKM1E5?=
 =?utf-8?B?eXpjZWxQdG12NUt2UnlhVVdhRTFJZTFuaHFrSWdTTVF4SDVDWHRyWE4vZ3VH?=
 =?utf-8?B?YkxvNmt0blM1d21NV3M1c05YT1N6N1dMSHJ6ZHBsV00zSUpwWmxWQ3JzVk9F?=
 =?utf-8?B?MFRndmcxaUxQSnU0b3hsVURxeE15S1IvKzNOMUJOaUU1SDRCVVJWVjNGclIw?=
 =?utf-8?B?N1JLWE5TcmJUZm9QdEo1SzkzVUx1amx4ZkxhaEJVRHJIQTNvOE1wTHBhUC9o?=
 =?utf-8?B?OUNkY21UMUZ1MmFibHk1bFhRQTUwR1ptOHY4TWRja092VXE0Vk9xRzlNN1U3?=
 =?utf-8?B?SWRxdU8wV3F2bXFGallHcXM2Nmt6U3ZoU3VGTEhXakF0ZFdJTjBBWmZ3YXc3?=
 =?utf-8?B?NC9uUEVVODNvRlhKbytaRFJZMWk5UFhRZGV0azk4a1FOcElmV01pTmpOYkt0?=
 =?utf-8?B?SEJzU2lVMVJqYlhCaW4vMDA2dGZNdUx2UlpQakYxdnBXSmJFdGdCRjJRbkVK?=
 =?utf-8?B?KzQ0NnFORW5aR2hPN0xlbUJReFowckNKeWU1ZjFrbDV4Mi83SzFybk1sZkpC?=
 =?utf-8?B?UUpuMzlZTFlpVG1jWkJKQjdyMmpNSmY4eFVFclNueWV6cXUvbmFvOE1TM01w?=
 =?utf-8?B?cmlCUWl0elN5R1JvZnlicGU5RURVYjMwSXdEZGxOcG8rMjAzLzRabDZ1dU0w?=
 =?utf-8?B?YmFlRnR5WE53VitXN2lJc1I5UjhEYkYzd0tjUUNmZTdJeWpuZUhXQmNzOXl5?=
 =?utf-8?B?d2hzUCtwU0ZwdkswOFR6QmU0SGt2VFBZQWFhWUFrQzM5NmZBczVQU0tUS1JJ?=
 =?utf-8?B?cGVhTkRNOTRyRXpISzRIcDVNdzFYYWw1eWdBbitIMlJKcmhVcU43SG9teXFX?=
 =?utf-8?B?M20xSk8wUHNublA3aUNPT3NVL0d6aUM4MitnWXFpOTRQc0RTVGpzRWFKa3I0?=
 =?utf-8?B?WVo4a0xlakdOeXo3bE9tRnBOV0VSWFJFbW5rMHcxQy80enNqYXNjcUxXSVZE?=
 =?utf-8?B?SXY4SEczS0xSSGdyTko5dTJRbWE2TVpEYzBnSDdRTWRKTnNYeW1XK09nPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q3poZVRxSm5mTzAwMGU2MGdZRGNmSHROWkZaQmJZTTF0OXlwQ0FaYy9BZ0RY?=
 =?utf-8?B?bVA0a2R5QmxPaWUvVE8vclk2UGUzVk9DQzFKTkdJdVBtbCtsclJZVU0xWTFn?=
 =?utf-8?B?U3lSNlNtanJIaVR3bGtKY0U0Y3p0cUg4WGlobnpGN01LNE9Vem5lRUZYeDFT?=
 =?utf-8?B?Y3pDd2VZV0FoTzFCOUxNU1NPbG5vMjVGSXZHNGQvWnlja3dkdTdTeERtbEFp?=
 =?utf-8?B?S1JKYmhiZy9IZWMwWHpvUEd6VTVJeGdLTW1vd0ZYeUN0aU8rWjM0aExyVHdF?=
 =?utf-8?B?U3FaVTZzUWpJSGFUZGpaZnhPVktsZk5OR251ZnBML2pOWmw4cGpHUDJlSi9l?=
 =?utf-8?B?WnBKK2UrUitrc1NDeTFKKzJiaDcyOE5Id1ZBZ0hQbmtwbTRmOGNKSXRQNjVh?=
 =?utf-8?B?VGFIaXVRMndLN09zajhuaEkzUC9RZkZETWhEYUVoUnpXdlRKL2ttMWpsWU9k?=
 =?utf-8?B?VlBvdlhVVFU4a1VyNjgza3hneUl6UTZ4ejh6emRwZUU5K3ZZTk9WTlVIa1pv?=
 =?utf-8?B?aHcvZnN3TERwbU5PaEtyT3U3NXRoL0ppbjlFZXpBaUE3Vm9meit3STNveEdT?=
 =?utf-8?B?RTVkK1Z0a0Y1di9qbHlJcDhjNndpNU83M3o4UVBBaVpVa1BnMkZtRTJ1SGRQ?=
 =?utf-8?B?TTBjK2dMN0lEZ1dvakJGNE9vTkx0S0xxaTVHckxEcG1PcDJOcDRkSXAwbEhH?=
 =?utf-8?B?OFc4Mk1iNTBlZmRNYno5TGs2VjZqdzBnbzBiMUNDeGtKNDFDMXNTMWxMUWk0?=
 =?utf-8?B?VUdFdWY3WWtDUWU3Y1lhaE1ZWU9JSU92OFZWL3hvMTV4d3o2azdWQ2ptdXYy?=
 =?utf-8?B?YmpvcjdMZlE5Q0hJaFZHSTBYSm1SclVrVkFIZGJaQkgxdlJCNWQ4Y3o0N2dO?=
 =?utf-8?B?aCtFR0dJa1RpQW9GbDhEUXc3THhEekpLdmVPdVluK0pBa2FvbWd6cXJiZG1T?=
 =?utf-8?B?eURER3ZxS2k2OTBOWENtNk1UY1RKbHdnSFE2UG84K2pKY2ZkdDE5QlhBb05P?=
 =?utf-8?B?WmZSaXRNWEJIWENZZ3g4VG9iWGdxTHZqRWpYcWZtYklxT3J2NjZDWHlneEwv?=
 =?utf-8?B?SmI4ZW44b1BSbEQ5cGdramtNOVozQWwwWjFxMG9XWFFPSzJFanhwa1BuLytG?=
 =?utf-8?B?Tkl0akR6ZXh3dkNwMW05eFM0L08yMjhybmNpRy9kbzBhdk8zTTJmTm9TWFQ4?=
 =?utf-8?B?bGhvZHNjcFZkYyt5Wk0rdFE5bjlnL0YxZ2F0WVVqdElIMzM0eEMzSnljUzFm?=
 =?utf-8?B?YXVLZjc2MzFDdlFaK1UyTUpGYk8xV2xRa3V4VExvQzljRW91cm90Tm5PNFQz?=
 =?utf-8?B?ZnF5MEx4cHBTekw2Mk1rU0R4akJzT0JQZHpwZENEckc0MTlzdzJtYUdVejdM?=
 =?utf-8?B?eDVaOEdvczhpMmdkS3ptY1o0YjJQSVFRU1krT3RNUVJWZVZUOW5vWUtzMW1j?=
 =?utf-8?B?amUzR2JLdVIxR2RuN3hFRFZoeXU0b2luVXJ0T0p5aHBFVWYxdzlhRHhpUmtC?=
 =?utf-8?B?cVFNN1MzaWxaaUwxN3lTR2tqM0xWbzEzL0syajdpeStGOW1RTTNpZ00xMzN6?=
 =?utf-8?B?VFB3SitZUlZtUUVxL0tPL1ZBNnBrbU9Pd3NFYThUZndWTDE2MGQ3KzVFZ3l4?=
 =?utf-8?B?VWFKNEVMZzk5L1pTNm1od3Z6dzBxSzdwQVR5QUU3MzBMcDdHVTkvNFRZMVpB?=
 =?utf-8?B?WVZsWmRiamJMdVY5WDZCWjhWS1BkeEtQajJmVTNjWGtrNmhlNzlzZ09NN2J1?=
 =?utf-8?B?WEpxV1BoVkp1aTBhQ05iblViZmttUzEzZkJaOVpZMVBIMHBrT3FNUU9tOFc4?=
 =?utf-8?B?MkVySENYZjlYOUxVYmc5STNINFhCYzRHdDlxRXhUald2eHNBOTdIUm9NTkM0?=
 =?utf-8?B?TGxuc3BKZVVUTDQ5OUxMUnNnSFgzV0xqUnRVNjFWd0ZOSzVudk9aZDd4YkIv?=
 =?utf-8?B?a2NSemM5S1ZNQ001aWFxMk1qWHBVaE5ZL3dKdmtvc2ppQUhDbTNJTHVDdkJ6?=
 =?utf-8?B?bEs3WldSZ1UvVXNIZE52Q0xLdnVmYURqQ3cwcGdMOVFvMUxTcUYvQWMxMVZk?=
 =?utf-8?B?NFNvcE9SL0tYcHNXMEtNVU5QL2lQWElUeTQxcVk0MW14MXdFUWt2LytrbDlT?=
 =?utf-8?B?SDQ2T3NTQXNpYkZlNGFhYWFKWlU2ZVY5aUtsckRYQUMxMzhsRkh3YklsTzl3?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 342eabd4-4c80-4eab-e0d2-08dc62aeac38
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 09:29:13.4616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qspEsZeqYICyhNJc9CJXHEfQ5WAT9HbMZdu/Ep5s1NJyN1yT0+RJJ2gGtdu3DK9rckr0UrFPMycOSssCl0eKM2kKo/sS1By41n0O4io3mTU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713778157; x=1745314157;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zYoH9IClreTVQGVnIKFBTY2vrU5iv4w9LmAd6YRjuZw=;
 b=TFO213zUpDdp7La/JC3cEiui4CAMyUxVj9IYuUXaXVV4jS1dMcxf6Y/G
 5wZI93Z5MklQzKoWCyNhVz+Hx3xOYmTjDAOuqF7PILH2wvOxVJ1a1MEBF
 94QAEjmpEBQYONKu1SmVH+SPDTYvyhHUKg1IcuacW750bSxq6KyspuOsi
 JSViPk00/uVV4xUwG5xCPafCbOBKo0QR7zmMO7185HxXoD0G8IutAKe2i
 H10Bex4AfkWrZOSaAwAEgJ8zKqFK6cCbhppTrdTsV0+hIyBr3a58+7Pfw
 JfUtMxi/T3NnxfiCmP2hIiK0DPNPEWZkL3cek8ass8xRYxh4T1qEH8ffX
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TFO213zU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 06/12] iavf: add initial
 framework for registering PTP clock
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
 Sai Krishna <saikrishnag@marvell.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/18/2024 9:28 PM, Rahul Rameshbabu wrote:
> 
> On Thu, 18 Apr, 2024 01:24:54 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> Add the iavf_ptp.c file and fill it in with a skeleton framework to
>> allow registering the PTP clock device.
>> Add implementation of helper functions to check if a PTP capability
>> is supported and handle change in PTP capabilities.
>> Enabling virtual clock would be possible, though it would probably
>> perform poorly due to the lack of direct time access.
>>
>> Reviewed-by: Sai Krishna <saikrishnag@marvell.com>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> ---
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> <snip>
>> +/**
>> + * iavf_ptp_release - Disable PTP support
>> + * @adapter: private adapter structure
>> + *
>> + * Release all PTP resources that were previously initialized.
>> + */
>> +void iavf_ptp_release(struct iavf_adapter *adapter)
>> +{
>> +	if (!IS_ERR_OR_NULL(adapter->ptp.clock)) {
>> +		dev_info(&adapter->pdev->dev, "removing PTP clock %s\n",
>> +			 adapter->ptp.info.name);
>> +		ptp_clock_unregister(adapter->ptp.clock);
>> +		adapter->ptp.clock = NULL;
>> +	}
>> +
>> +	adapter->ptp.initialized = false;
> 
> I think teardown should be LIFO order to initialization. I would move
> this line to the beginning of the function before any resources are
> actually released.
> 

Not really sure if this is applicable here. I understand Your point with
LIFO but in my opinion at the beginning we should unregister PTP clock
and when done - set the flag to false;

>> +}
> 
> <snip>
> 
> --
> Thanks,
> 
> Rahul Rameshbabu
> 
