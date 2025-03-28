Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0965A74E1B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Mar 2025 16:52:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 655908584E;
	Fri, 28 Mar 2025 15:52:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LBu6DVFMCWyl; Fri, 28 Mar 2025 15:52:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2C7285846
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743177120;
	bh=bnxJjFI5wRQ2CmoZQMvae0PAVWhz0WvQdVBhPdYr/KA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YwRS9FN3RUD3BaRxUyux6TVifW+9yKFcJHHq3dHfp6hvKN1Nx/HYHG7razkYU4P15
	 V0cf1W2nFIJFUwJpv2/6YdceYL7pxXSTln/oYCq9eSDMBr1UXDwby85dw59bsLQmO1
	 6LPIUvrKnDCQ4n1sT76tmabYXxqDaBKk+twHZj8sk7HDKt5xbDMvX8Jy0u4Oi+lA42
	 NGAXjGlY/R7d3mytcjVYKvYsUbcA837PEbjnO0/apaGUfQkiewlYgPJ9wudSImiW2n
	 BpY/mN5TDimYot9eCxjs7vAXingNIcpr4Zliftr7x4kbtDqC7bmD0wQwe+/jLqXzwx
	 JF2iefL9oh73Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2C7285846;
	Fri, 28 Mar 2025 15:52:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E28271B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Mar 2025 15:51:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3BB585626
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Mar 2025 15:51:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sgapj6OHlghr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Mar 2025 15:51:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2324185842
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2324185842
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2324185842
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Mar 2025 15:51:58 +0000 (UTC)
X-CSE-ConnectionGUID: 112Gll/BRYiEZkaBdwbpNQ==
X-CSE-MsgGUID: Jz2eORkAQdyhy7VgYMAXDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11387"; a="44553795"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="44553795"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 08:51:59 -0700
X-CSE-ConnectionGUID: F1+H30j5QnyCPFjk6OtZcw==
X-CSE-MsgGUID: T5aahztmQkuDDO7ybmGX0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="148653493"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 08:51:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 28 Mar 2025 08:51:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Mar 2025 08:51:57 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Mar 2025 08:51:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RqWbBjWFn+Hv+0OvNJM79yIJIWyKmQZ6tJsxjI/F/2tHx9JORkwn9QgbdrrUT4jkdhPTlTTqI1NDNIXT8j44gXFLiIYi9vsoKPiEKbeG4+EbkQ1WwJ7Xu12VNEafFkcr5ZkGQBFg2AuvqCW5XRknGkIDT2Wkdg7FZzkNNrN5nWwa9kDtEsAae7q91BGrgCGTofG14x+2t95Bpuzhkyg8Loc6mgL4EHf04cL3tolJXI8bKTkHpEg4Vq6pIn6WQSbvlpmPWCRwD5t3shJ5ueABRXhgFNrnlUSn80r0iv3Gt5xHawCZ98tl3mQ4fW0MMVKJ6PSdTXF322BkohKI4NpzbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bnxJjFI5wRQ2CmoZQMvae0PAVWhz0WvQdVBhPdYr/KA=;
 b=Iw+7+ccAbkZBXm4YsxxXvohaavLJb7Uvq1BxOCSDKESgtYHIbWLn3pWY0ORxz+B04oNyVFFtBAFqa0DvJ3q5QerTfnvEdObLO0ls60a0sPq6K3UBzXzSVsLALfc0TyY3SwWSPDZoRwdASg5To6gF10E3iSSeM6dExFSIb74BW4ELefnSOcRfivhW62pwrDrLaLFOoekEGfp9XkubFAgQXKKfh8nqB8GDe+vMeAEJwrYaA/Ecf7dVYrHP0HhyTuUQ+GnUsrpYHO3LcS2iKj0NYwFiGJ0DUeqDsyKqzcUQsQQUEQPdpEAg5LHUE12LWFN1QaNCfo0HZCfPu+KuyWdN0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA1PR11MB7039.namprd11.prod.outlook.com (2603:10b6:806:2b5::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 28 Mar
 2025 15:51:21 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%5]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 15:51:21 +0000
Message-ID: <024fb8ce-adb1-42f8-91f9-ef08868fee01@intel.com>
Date: Fri, 28 Mar 2025 08:51:18 -0700
User-Agent: Mozilla Thunderbird
To: Rui Salvaterra <rsalvaterra@gmail.com>, Mor Bar-Gabay
 <morx.bar.gabay@intel.com>
CC: <przemyslaw.kitszel@intel.com>, <edumazet@google.com>, <kuba@kernel.org>, 
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250313093615.8037-1-rsalvaterra@gmail.com>
 <2710245b-5c2d-4c1f-93ef-937788c3c21b@intel.com>
 <CALjTZvZYFEqSGZvSfthsTC5sOkVixAFyPg0Jj7eXZ0tac4QS8w@mail.gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <CALjTZvZYFEqSGZvSfthsTC5sOkVixAFyPg0Jj7eXZ0tac4QS8w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0377.namprd04.prod.outlook.com
 (2603:10b6:303:81::22) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA1PR11MB7039:EE_
X-MS-Office365-Filtering-Correlation-Id: 51d57df9-5218-4c2a-2d4f-08dd6e106294
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MVJJYS9qaHFJWktTQWRnSmtLNFhrblNIYVFsM3BPbDdnOUxzWjZ6Znh3SVdS?=
 =?utf-8?B?TURuRm5kMFNMWHhZZUFYbm5qNDJyOTZUeFVuZno0V2ZZUzQ4K2VEWkEwUU8x?=
 =?utf-8?B?MWN4eDF5SUIzWjhjbTJGOTEySGViK29BZGlSUVAvSExaeTFqeGtHNmtsU1Va?=
 =?utf-8?B?c2hGSFk4RURtdldvUW5PZFNETEE3cHFHeTlTT1FJSzJjamVyZ2pFVFdDVTRU?=
 =?utf-8?B?ejJUZGU1S0xhM09iaUFUNG9QcHozb1BTaWYwN3lBQ0lWOWs4ZHZ5YlV1UUNU?=
 =?utf-8?B?NENpSm9FcVV4bTBjRzFNeDJMd0NtdVU4d1pnQktVY2piVFZtNURuNGk3TFBN?=
 =?utf-8?B?TUpsNnVPcGc0WEJ4RGdnSU11cmxUZWZrMW9idDFqeklQQ0gwWmh2cFBLK2ww?=
 =?utf-8?B?ZWlmVUF6RkFKK0tjbitrYTc2LzFHcDRVNk45Syt0eVBsTnVKbkFtelBsZWVW?=
 =?utf-8?B?YWxZcy9jd3NzTHkvZkt6QWJ1RmpQMTJLNVAwcmZJOXQ1R20rVGppOVBDQXVP?=
 =?utf-8?B?ZlFTR1h6SXdYNTNNQm1UWTVZMjlNMXRGbXZlQk1aNy9yQ2FEM3R2N20xUWgz?=
 =?utf-8?B?Q1BYS0pOTmNPQUxHeFV4TVErTFJQTTkrNnErZFBwZkNscU9nYWl2aldhMGtH?=
 =?utf-8?B?Yko3R2lPWElCQmVNekQzYWRWVzRIcnhTTTcvZW5Fc2pINmdtRVJ3TjBKUTli?=
 =?utf-8?B?aEIzbjRuRmJ2eDZMQ01pTzBjTEcxWW9kRktyRDM5c0NOVXNHK1doTnNTVDNL?=
 =?utf-8?B?ZGNDMEtldXNJNng1eEpWbkhKK0wxVUI5YkpGK2owRmF5NkhLckp3V3Urb3NW?=
 =?utf-8?B?YW9lbTZWV1gvZUVjMmdldks5bm9wVmM3S3JDRTgyWk1IczU4VVRFOU51TnpL?=
 =?utf-8?B?SnZHbHBuOW13T2VGZENOOXlsaEpTWEdDZjhnNUxoUExZSzUxMm8yaXFrZUg3?=
 =?utf-8?B?czNZaWtiQkowOW9sV082Njd5YnN2VUphQ0ZETGR5Tk5MRlp3MlY5d3dOU0Vp?=
 =?utf-8?B?YTV5WTQ0L3BUaDJ3Z3RyVVh6eWxka2ZSL09iVGlRQTIyTi91VkhOZVlSYlZv?=
 =?utf-8?B?K05nQzVMQml3RTg4TVdMQU5Da3ArOGgxWWNzQ2l4S1o1Q1JYRVhoWVJaYm91?=
 =?utf-8?B?Wlp2TXFsRWxxSGtGcVNIVkh6ODQ5QU1Jd3lpa3l4NmFsWk9ISGJ2OFdZQWpB?=
 =?utf-8?B?Qk8ycnJsOWRCK0ozQUxpdWpHMlVoaVpUTVpmbTlGVGFwZ2VyN3R6NXl2VUc0?=
 =?utf-8?B?SXRzMXpHUmJidmRYUEdxN1N5LzIzQ2MvUVFueHh4WlJVNFhMdlBmUmc3U2xp?=
 =?utf-8?B?cTFXNHFKQU9US2VHcC9neitSUU9EZFQ1T1diQ2FBZ0N0ZXFWaS9FcDUrZ0Qw?=
 =?utf-8?B?WFlqT09ISW01V0xPZTdiUk1lbjJ1N3R2WnFrSUFubDZQbkdOd0ZIeHU5bVlh?=
 =?utf-8?B?Mm15YVMzSnZnbXVLdkkwN01NSU1XUm5NcWI3QWo5U3dyRkRidUxpMGFObDFx?=
 =?utf-8?B?RFc1VjRtSHh6N1MzRk9MQkswNTNiZVh1SjJSaVh4anpLRTVhLzBEaUlLNksw?=
 =?utf-8?B?emhGZFZ3Mis4YTFqRTh2bGIzMC84YVU5WUlBVUc4QlI3TTBSRGViamNIMHBQ?=
 =?utf-8?B?dE95eklyTXZRL0FMM0xhQzEzUVFJTVJoTEdER3diK0pvZFVtem1tb2ZXZ2s4?=
 =?utf-8?B?M0ppUHhac1pLZ1Z4NE5Gc1N1OUd1N3dYdVNnTDJDcDFFZ3BCYmU2MVFHbnpK?=
 =?utf-8?B?ejBQTVBqcjZwb254VWEraVZsOWZtV25QOVc4WmwyL1RkNkJUelp0TEdZdzZS?=
 =?utf-8?B?TmFQRExIN1IwbWJvQURkUEdvb0NFK29tRXJuWU8zK2hneWJVNW4xMVZleUV6?=
 =?utf-8?Q?K9OygoaThwMt0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjVqV2daa0Jtc2p1UTlqZGRtTU4wQW54WTZTWVlhdjJwTVhrZWJCd2NXMzZ5?=
 =?utf-8?B?T0FkVDcyVXBqaFpNZGFIeTE0ZHdQUjdXVHZUL1J0WVpaRjRUUEJJenRNQlFn?=
 =?utf-8?B?N1E1cGZteDcwNS9hay9hYUxBVlZHTUpqSm80OWxWS09yL3hBT3dHcWN2S3RD?=
 =?utf-8?B?U0JsQ3ozUWlrcytvSXRzK2hPVGVwcmJwNDRDazVwL0dlNm5IRU5raGVJcjBE?=
 =?utf-8?B?WTFTdnJ1c0R3NVIwMU9wK1FQdkg0R29jNExwYXNtSG1Gby9MOFBQc2VJTHpU?=
 =?utf-8?B?TERlNzZVVTVwaEJBUVB0M1grNGpLT3JHdHdIdWpvalVBWjYrZlQwZmNCVU45?=
 =?utf-8?B?TVg5ejE5Nng3TUpxcVcvTlhHZ3c0TVA2ZjkrWkZONENUYVRiR05IRGk2ZWtH?=
 =?utf-8?B?NGFKRHB1TWpnRzRadDlwTDBoR2Y4UW8veHV4MnVuSUh0dFBDUVdmc0YwU21y?=
 =?utf-8?B?VEZJMnlkR3dqbU1OdTdlUjN1RE1FTS9ReHgvYnA2M1VEOFFzMnRQMkdkR3ln?=
 =?utf-8?B?T09ydGZCcUlkMCt1dFI3RC9ZUEphbU5GWEZZbDVoUjFvYUJLa1hKbzZITTBD?=
 =?utf-8?B?YjFDMmdYanhCcU5KNFFDcDBDNGN3eTV2aDBZSjVVemxMMFo0MTVuYUpnVTRk?=
 =?utf-8?B?WFdIUHI2dnJ3RlRTczE2VVdNbTZsTTV4T1Y3WFVUME0vK2dhZUpVcVhWQnJj?=
 =?utf-8?B?SG1vbktEOVNrNWlKWk1QY2VhRkVQV2RjNkNtWGpRdUdvdGpTSnRoRE5VYjFs?=
 =?utf-8?B?WUxhUXNoM3lQL3MvREpRdFU0KzBVcmhGTHlnZ21lMVY4YTdzZTFLVmlTbEN6?=
 =?utf-8?B?K0lVR3pyN0JOZkhjTnoyYytpVFFacDZwMGlHSThaZXI4d0V5QndnV2djdXZI?=
 =?utf-8?B?NEFtV2luOFNoUml1UDRoNHpFRGtrSjlSODhjUitpajdiTyswYy9aS0lTZHhI?=
 =?utf-8?B?MDIrL3ZreGlxeDl6MlQxT1R4UU1KY0hMcVlrNWFPUFJFU3VGYzQ5L0R6TWRz?=
 =?utf-8?B?NXhnZG4wNlF1dVhmeEdIVkxRR3o5Vy9rY1lsVitoYTBiU3Z6YUZ1dzZkcjky?=
 =?utf-8?B?UFVlZDRjbDBoQS96NmJnVDBjbHR5YVIvZnNIN3VDRGNqSHhab1VCSXlyWjRV?=
 =?utf-8?B?dnJoT0p1aDY1WXk1NWYvbHJ6UXVKbitTRi93QVlERVZpZ09IMWRydkREdmRl?=
 =?utf-8?B?UG1XekQyVkFGWDBvelRGdkY0NFEzZWRVN2dmMHVBaGtjV3RXNkpWL2RrbVNz?=
 =?utf-8?B?aGNwbElXYWxzOGR5NURRdXlIVGU1RGVEem1GVjdVVlZRS3hRcDlCMjI2NHBH?=
 =?utf-8?B?Zk9wSXZSQklpUStuME9HUmx5YWU3RUNvVHIzNGlHbTkwRjBkRXJLdmtxU1g2?=
 =?utf-8?B?VDBNZCtRaGRWcUZNZ05Xc1VEdFRTS1FOb29FZVNhYnc2VHNUQVJ1U213VnBH?=
 =?utf-8?B?TXpyckhBMHhqTGdiMzV4Ri95TFV6OEFucCs2VXRBVW1oQTVCaXhxQ3RDKzRm?=
 =?utf-8?B?dFA3WW96ajE0VnFjMGR5dE1XRnJ4WURIbnVZeThMcGxFQ2RnczBCRzVMM1Vq?=
 =?utf-8?B?NEhhaUhiNyswcGYxR2ZtSXdlZ0xiVXcyY0hZa1VXcE9xSU03Y2tXaDVwUkVE?=
 =?utf-8?B?MG56MEJGT09hL0RKcUR3OVlMdW5DUjdocjBJOWlEbVpYSHI1MjZNTzVCNkdG?=
 =?utf-8?B?SGNyNlJSWUF3UmJYTkVXUUpTakF3TDRwTGthcFpRcXNNQ3BzZnJHSExWejJl?=
 =?utf-8?B?RzFtN3Y1YlpkOThOQnAxNGVkcE5lc1JSc3pDYk5nOTFtSGxiUjlLQTNoc09E?=
 =?utf-8?B?RS9XOHBycTVqMk9VMXc4NEF0Tm1DSC8xKzFkdi9Hdnl0V2tuQndBOHNpc1k0?=
 =?utf-8?B?YW1nVGpQMGR2OGFqdzVTSnhtSjgvMzFTMWlxZzFsWDlBZUtLaUoyeUJwRS9H?=
 =?utf-8?B?UC85ckQ3Y1o5YkxMbnk0WXp5N3YzaFNwNWhqOWVOR2VndG1xbDRZWWF6THNJ?=
 =?utf-8?B?bU1LSWpUT0RSSmsxYlhFVnd4b1ZnRmlUY0hXTXU1Qm42UlJibkowdHNDTU1w?=
 =?utf-8?B?SHZzWFY4MEROT1BpaEUxV3lzM3N5YUd6aFpXQXJML3Z1bUFCV28xbDJHV1pC?=
 =?utf-8?B?cFBRZkZ1ZHNyT3lkMFdZOXc4S3N2eTBZL3hQR3RrYnZKSElYeEpoU2ZWb1lv?=
 =?utf-8?B?bXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 51d57df9-5218-4c2a-2d4f-08dd6e106294
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2025 15:51:21.1673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VKIlcfwPmqbi2vTe4dhPRdkL/xnw5IX+Dro6Trf/D8U8Em767ErOloEPWBaZLAQTpGX8211a5omAvSk0nSJDOdSDSyJyXdf/R/D0X+MvI9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7039
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743177120; x=1774713120;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D8apzgDdkPpyXMMvUe0Ykz9sCOCdBblvVrs/qACxjdk=;
 b=DF+4faDxHPFM0LWrdMgdtfE2qF9iKPHypxCazgHzL/70qXny0mB4j8B0
 PWhjesYA6ZXsWYBl2ta0De1R6WyDkc+JZokr6x4JxfbNKJfHmxbmvGKG4
 HNXNVQuagW/VmrlWFyY0/oYmbAKriYcranfyTqxtiHoL8oPMrX7AZ2b2q
 Psm7jPFhXHmkCcFxAet2WfGXPIlTNUpYZPDosWxmt6YjHk9tp1sT9o5PB
 THGGRA+PsPNrZ0oIy4x5oQfbm8+/tcSOEsFkMpHZAOPFCzQErUVLtPnBq
 hS+ZauBwilVigeSLNocwVW3ec8LN/yLfQizCJQPPaeZgMrUxx8TVJ7jY+
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DF+4faDx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: enable HW vlan tag
 insertion/stripping by default
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



On 3/28/2025 8:01 AM, Rui Salvaterra wrote:
> Hi again, everyone,
> 
> Just a quick question: this is scheduled for 6.16, it's too late for
> 6.15, correct?

Yes, it will be submitted for 6.16.

Also, please don't top post :)

Thanks,
Tony

