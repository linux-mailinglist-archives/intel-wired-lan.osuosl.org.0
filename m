Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNglMoYGqmliJgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 23:41:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEE7218FBB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 23:41:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D13560E96;
	Thu,  5 Mar 2026 22:41:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w1ZGNc5oomNG; Thu,  5 Mar 2026 22:41:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9586D60ED2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772750467;
	bh=DyVMBIdvBV/T9d2dUxMK2O9taly2zXeKtUaTba+2Ovk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dGAJoE5G7+1I3UVhlOrxdbzoMNyPwa0MIydrCErUBWQJBQPb05FHFpxssUpZ7sNde
	 bAcAPO3wRFGNS6P4Z5oRpAEdBZVqafq99SiF8r4fqnd3eUmNTniBLMmSQdIcMfo4KW
	 6yPMU3GJ5T+OHqC1b0Tif0LfypyJC9TO6u3H9eGZX/SAAvrYC/FemIern5sR7WXVSj
	 G82ud5QKVhpcY2o/PFRaZRifMCceFox6bGsuiaD5U5qGxwccFRsNqkI2AkA+jEWYrS
	 5a3kuTEG2r0AUuX+oAB/FzgLMbnl8SuyEriPsgLg9jhN4imyTTjl0+33P6vN+db67N
	 v+EmWbUpzFcpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9586D60ED2;
	Thu,  5 Mar 2026 22:41:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5697C2D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 22:41:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5327A40F6A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 22:41:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zImhi_Behfwo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2026 22:41:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9093740571
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9093740571
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9093740571
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 22:41:02 +0000 (UTC)
X-CSE-ConnectionGUID: TFNctaV0QRKnaQmVnUKsqw==
X-CSE-MsgGUID: oGnJ2R+kQYmHN18R6KJEtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="77724978"
X-IronPort-AV: E=Sophos;i="6.23,103,1770624000"; d="scan'208";a="77724978"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 14:41:02 -0800
X-CSE-ConnectionGUID: mOwobk5zQ1uo51ZFToD2GQ==
X-CSE-MsgGUID: zS1b2BMNRQigdFb85sZWEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,103,1770624000"; d="scan'208";a="218814178"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 14:41:00 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 14:40:59 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 5 Mar 2026 14:40:59 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.3) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 14:40:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QsmSq5pGndVnIJq+1Sl5I40wXzwFHu5A2FMTHWYMo1lqfmOKQYoygUzLmHcu4FjNi5lbTyIpo3Y1cjeYvRiekS/LhPmtFymBxmYbla0ou00n7NSetgNwWi9wUfC11DY/JMwVS3FlAuT3JR8oGfpS14Fx2t8ZaKGBn+yERyJimfK3lzcxWEOK797AXLAbaHa5A+RO+xAWhk+nd9HzD4Gc4HAp0TdZket4hIIi4wo2s06ONIfyM0aHFClDln1qwMH1dUVU4DQdFGwHGZ/6UJaGUEiVdvrBtrt1y9aOaC9EK6FFpxqpNccKJJcS6rt3p4j2NxeUyVww2C7KaIQABUlvyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DyVMBIdvBV/T9d2dUxMK2O9taly2zXeKtUaTba+2Ovk=;
 b=WSdd5z8sAATIQBRLu95F36OnQm8TyUB/ZjM6b5zAtfl82Jjr/RlltezUJoQTXQdozza1bLcCNx4SgRlpwJKPSOJUToQqs9VgFMFR0GX1MIbcFb0RfB69pokqHdgcyAxjrz6mwaoepbO2DpyblQWEQbBdIWKWCvHWyZHHn4jDQUSO6Jw4S+dFFdtK5d5XtsxMy4wz95qvulhlCRLn04b5iCuOGpPrV1IuzMEEEK/l31AqAgQ+F6Vb50ID07aQQ2bH4PGSU/XH6c0IqZtjCPU3AJJpdZ2sLz8ZUBb/r+IIq0y1quJ4MMQ3lIgVOFCBTuz5gjPgV6R+0p1Zm+yTvTFjyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by PH0PR11MB4888.namprd11.prod.outlook.com (2603:10b6:510:32::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Thu, 5 Mar
 2026 22:40:57 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9678.017; Thu, 5 Mar 2026
 22:40:56 +0000
Message-ID: <51b0f779-4070-44f1-b136-77737da6dbaf@intel.com>
Date: Thu, 5 Mar 2026 14:40:53 -0800
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Yury Norov <ynorov@nvidia.com>
CC: "David S. Miller" <davem@davemloft.net>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Andrew Morton <akpm@linux-foundation.org>, David Airlie <airlied@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 "Matthew Brost" <matthew.brost@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "Przemek Kitszel" <przemyslaw.kitszel@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>, Yury Norov
 <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 <dri-devel@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, David Laight
 <david.laight.linux@gmail.com>
References: <20260302011159.61778-1-ynorov@nvidia.com>
 <20260302011159.61778-5-ynorov@nvidia.com>
 <20260304114319.GI71509@kernel.org>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260304114319.GI71509@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0055.namprd04.prod.outlook.com
 (2603:10b6:303:6a::30) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|PH0PR11MB4888:EE_
X-MS-Office365-Filtering-Correlation-Id: db401dfa-f600-404f-0e8b-08de7b08442a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: EFEx7wm8vOw4MU8WDadV12NLiUToEACIU0i3ThIsuyYuFY6u85/lNDawDjVG+vj0zPwNgRo6ZODByg/xUm0N8FSFOtyPcXpl8fwzRORjKBTVQ+6v7Najs78JiGcdAzLV1gcBXLlmJdfRWLwYGaX9nhtQoOZW0tY5vhKGlg6S9z8rcTC0FaMkWT0Y2P3zsjKfzWf60pnthdCZVhChlBUVF8uzRCkm+BfMXwi30bwi5Tnlyzs1WwFOBcdaLI72ww9cAE7LE+p0GX8UOQlpQn0taIY6BFZg2QX8frqw/xoWw02oKpqz8q9DQxfCg6rYT9es6NGlIgsJ6wKj0eNIUIPmGERirb91DRO2MLQyO6ecMxy9+W9Rz3y4AaMcCgMLOGEE1BuCgdVKvt71zz4RfbGWYvXECejIjv03RdFLSGKP5aQTuSEiK+I7izAeOxg8+soQKgX8a/9RzNtEZxBpmd+bmh1dwROHaghCiSVv5LBikmBbatcoJ6Uj1QjTuW6i+k4hnsUhuEWMLJansKAGt0uL4xyJYtgWNj2nJvlZDdNUpRbMiUDwUcLUHeuSm1LePA2HLSybtewH/E6E/oef6s95QKSExPaj8pauFu9/41cLG1nLUCWDvz+nMoUwRmcb2P7Yvf3OEK6gHwy/ZIGef2iJ2YpFeu30/y36wqrCe4WYdDC/v8Yt+PQQ90BMZzowIWqYdbx4gfvV35JJ1OW0qvqFjHg60die6JhtRorOeaH4y/s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmhabVJHTDVWeGdqS1hFeFRxdzZTeDRpaFVqWmc1T2pjLzJLSm0zSXZrUHNO?=
 =?utf-8?B?b3dMZXBHWmFMMkdaZUJ2TnZ4RXhRTVdsemFzOHJFQUdSU1N0VlVmcWtuTmU4?=
 =?utf-8?B?QWFSd1NzdHdvR2ZJNmN0S3lmbkdVVkZtbEluaXNCa0YxcVY5NVJiNkIyZWxQ?=
 =?utf-8?B?TDdNWjhSNllNUGpqUXk2WlpJcmEzd2pnaDA5QjRSL1FaWnF5NlhRQ2FtZXIz?=
 =?utf-8?B?MnFvVjhVRTJLOWNtNkNOVDUvNW5VVE5sdUhBN3JyK3piM1N2OEpPV3NxYzA4?=
 =?utf-8?B?N1hsWW1nN2s2YWZFR0wxNWRkc2pORDNHLzdXcEVqbU9KRjlJNWduYUs4dHc2?=
 =?utf-8?B?S3FwSXV6VnlrRUQ1RFVYamREeGxwVkFMOHgrcWRKdHFFMVYwUnRmbzVLd0VO?=
 =?utf-8?B?S0dlRURMNjIyRnFPVDRyRHFUZU53VEVpbVovV3k1dzJtcG15UVplbklCY25p?=
 =?utf-8?B?ZitvRXRrZkhwRkZmc2w4aXp3Yk0wbldZYjhuY05KeTZOUnBaa0xlN3JMRFpC?=
 =?utf-8?B?MlpNNWw5bThJSVZlQ2hjdkNvdEk1cnNvZmZlOXdzWjdLcmJVZHZOTlVmNmRL?=
 =?utf-8?B?dEtYVXc3ZXlVQUFhTnFackYzRUUyTXhuT1ZSZWZvcTFHOVdrNTk1NnBCSnNo?=
 =?utf-8?B?bEtCbzROczlQekdnT1FicHhRbGM5REFxYmcrY0ZKMmZxb3lFekdjdEtjbEdP?=
 =?utf-8?B?R25ZVU4wVU5zRmJYZXVlQm9OUC82azl1TzRlOGFIRVJ4L0tERkVybXlkQjZF?=
 =?utf-8?B?RjZoMS9Vd3M0L1NMNU85Ni9JZXpzdzhCSjZoeHFIWUdPQmR6My9XZGJmUGlT?=
 =?utf-8?B?ckxxNTZBb1Btb1lBWnNTZUJYZXJSbEFhSWFYR0VXWGtTbFJ1STZGWFFCdFkr?=
 =?utf-8?B?ay9zTmZJME5JRWJZTE1HeXBIcnROK2tQSXR6VDA0bzRHR1FFamU3a29Tby9a?=
 =?utf-8?B?TmJFVk1jQ0F0d2gvSzlDYSsyUkRQYWhxTG56RDJJWXAvNmNBMk1zZkhoM2Za?=
 =?utf-8?B?dHhuQ3FpZTlpRmJ0aTRobHR5WHo5OUQxd2xJSUFYRis0cEQyUmpSRGIyS2hr?=
 =?utf-8?B?QkdPTUJ4Z1hoZXFTMkd4d1p2SEFvT2xFZEM1NzBDQXNWZWV4d2xFMTY4OHhY?=
 =?utf-8?B?L0M5UTFGbXlpaTVqK3N4VFVua1Q0b0YxTFFsanRGVTlUUm0vSzVvVGRIRlZG?=
 =?utf-8?B?MTVyYnVnRXY0aHdqTENoZlhJZkwzZlZOcHZoMWpKWXRYYVRKZ0k3TGJWWGt2?=
 =?utf-8?B?SlRPNjgxNkw2RUovRno4SDBQWFpXOWk3MkZIZWxsRHVCcU42bVQweEp2bUFn?=
 =?utf-8?B?ZUlsZmV3eFJwcUp4a3RYNlc3eFAxNERtaHVQUmdSTFdGc3BvWlFjUUE4UjRj?=
 =?utf-8?B?bFZyaFgySlI1N1p0eStkTGtFN2tSNzdIRm40VkJCUzJrdG1JZHJSOG1ZL0dD?=
 =?utf-8?B?bmU2ekM0ZmVqTDU4R1hGRVpBTWdDb1dxT2I2VnpGWEpxQ24vd3c1VGZiVXc5?=
 =?utf-8?B?VnhNWTVRMXk2eWFnSXJkaG9wTTB1WVpyRGRzRy91NWs0WjdHaDJEM1ZJUUMw?=
 =?utf-8?B?SEoxaGtFQ1h1NU1OVmt3MVM0T0g0ZFdBbUxwMUFFdXQxL2VnRE1RV3FUdlJS?=
 =?utf-8?B?eTlLNXMvZ284c01DOVoyV2dxNnFJbHdER1N3MTNMeGt4bUFDYU5Gc0toQ0RD?=
 =?utf-8?B?TzdUUE9icmp3KzVQaGwwY0cvZjVtZjFQU0FpL1BlSE1jYWwybTVsV2dRWjhS?=
 =?utf-8?B?Q05vT2JmQmRkV0dzRlVkdTJ0ZkpQRFFkYnd3M1YwTXRlekIxMTY4Nm1BWkV5?=
 =?utf-8?B?OGhtRUpJdDRLTlVJTDk3MVlFa1FGVDBzc2VUV2gvWDVwSGlia0lWRUlkVENB?=
 =?utf-8?B?Y2Q1RHZGb05iZVBWQlkzZUFxOTFaWHNISEVWN0lDZnJtRTJHK0lNZDk4UzJl?=
 =?utf-8?B?b2d4SWxUTTUrcnlaSDNEU0k5WlJHRzBrVk9jdHlDRnZpWnc5Z1gzK1hSaUhz?=
 =?utf-8?B?VElNbFZqM3AxOWN6ZURLTzZKUGR6TmlGZGhBVGoreUF5S1kvOHZSbGQ5M2M3?=
 =?utf-8?B?bzlvcTNUMEVyY1ZnaitUdTNxeDJTaGh5MVJtM2FldGZveW93aUorYzdIN3M1?=
 =?utf-8?B?Z210QjJWdHpaL3RpSk9vYjRZNUdMdDN4RlZhNkJmZjNubTlCLzVhcnlWaWpK?=
 =?utf-8?B?ckcyZjA2dkE1NGRkaHoxRVp4RjFGQ3NzSjBmYnp2Y2dUcjBueDBzZElWZ2hk?=
 =?utf-8?B?bEZlRGZOWXhqa09Wd0tQRkF4WG9mS2h0ejBvdlpPa2l0cmc0NTYvRnN0ZGw3?=
 =?utf-8?B?cUo0amdGbVlFdTRuR1N6YXNtK09kVVRXdDY4S0VMbkpud3pYYVpSQXV2K1Vi?=
 =?utf-8?Q?EUF6N+VTBtFNtoy0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db401dfa-f600-404f-0e8b-08de7b08442a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2026 22:40:56.7746 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lGGpibDc4JH5SgjqQnN+Xr2tEE9N19iAj7eDaRkW4eBn96MXV05b95VFWHsfhbqnnbR1MlgVGXizogxJFgAAPKiHwvCMDp+pvhuYAmKCdpA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4888
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772750463; x=1804286463;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/7OaYmgLaw8u+QfPSloBmwsv3NuaYIZ2DxPMDT8ytb4=;
 b=LJT1/1s93+AQNJ/s+mn0Ms1GICHSGjT5gqaVGWBwFrdEWikfYRviSgH3
 cy4KsWD1evQZLIKH+RVOWzuExBQwb+7gO9FS+wdaMG2lhpxREMwNm+3/K
 yQABZSJJfRKzzeDTHzZ65h4FwAtdFpPDR3KR+LENLm+xeS1490wrsP8wF
 YL3sWle1HhJPQh2ZtRCFmJBXd8vwVojGNiQUCiWaJS5xh3X47tk2pBpJ0
 UGJClvat+ul65PyzCNLbHZMFPeWBfSm3XYND7pGkm1Cn4vaPhGT1uenJH
 WJcbnkahBV66ci0QMsOI3DOi7wYQ0bP7WlypIcJChpFXRSU3wjVr6Sn2O
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LJT1/1s9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 4/4] drm/xe: switch
 xe_pagefault_queue_init() to using bitmap_weighted_or()
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
X-Rspamd-Queue-Id: 1EEE7218FBB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:ynorov@nvidia.com,m:davem@davemloft.net,m:thomas.hellstrom@linux.intel.com,m:andrew+netdev@lunn.ch,m:akpm@linux-foundation.org,m:airlied@gmail.com,m:edumazet@google.com,m:kuba@kernel.org,m:matthew.brost@intel.com,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:rodrigo.vivi@intel.com,m:simona@ffwll.ch,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[davemloft.net,linux.intel.com,lunn.ch,linux-foundation.org,gmail.com,google.com,kernel.org,intel.com,redhat.com,ffwll.ch,rasmusvillemoes.dk,lists.freedesktop.org,vger.kernel.org,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action



On 3/4/2026 3:43 AM, Simon Horman wrote:
> On Sun, Mar 01, 2026 at 08:11:58PM -0500, Yury Norov wrote:
>> The function calls bitmap_or() immediately followed by bitmap_weight().
>> Switch to using the dedicated bitmap_weighted_or() and save one bitmap
>> traverse.
>>
>> Signed-off-by: Yury Norov <ynorov@nvidia.com>
> 
> It's not entirely clear to me why this patch is included in a patchset
> for the ice driver.
> 
> And it's also not clear to me why, but allmodconfigs - fo4 at least x86_32
> and x86_64 - fail with this patch applied to net-next [1].
> 
> ERROR: modpost: "__bitmap_weighted_or" [drivers/gpu/drm/xe/xe.ko] undefined!
> 
> [1] 2b12ffb66955 ("net: mana: Trigger VF reset/recovery on health check failure due to HWC timeout")

I'm also seeing the same error and no apparent reason. Since this 
doesn't seem dependent on the others, I'll take the other 3 and this can 
get sent/resolved separately.

Thanks,
Tony

