Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D277EA27583
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 16:16:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17F09408B0;
	Tue,  4 Feb 2025 15:16:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fJsIWlMeWb2S; Tue,  4 Feb 2025 15:16:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E1F6410A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738682180;
	bh=OEqb3ApmF9NkMkCGO+ONVMgksURf7KAouFAug1CmJRE=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Px+7g7VScMnJuA6ArdH0MKzI68SObAe9VqMJZ4lAp5IVp0fUV7ZwpPe4vjPOGMkfR
	 lCPdSQrPR+TZ0+oG/JhLBKgDRGZa7OcG49XS99fmGM/gfZ94GhKGWrQ9YNJPKL80cm
	 erDlMPXfG+zWQufX/tvt/AyosKj2BIcqCYdCJZ3gwv4Kkc6qH+JAAvKTBnwvnZR/Hb
	 Dhj/ZZdGcPh2jLLTyuGgZGofs49yr7k1frCsU1lyCMtxj1hau0d6ZVP3TqV6O3ckCt
	 o0M4LhuaRo1M4AyyeIb7IaUyeblOBraxvNPhI1S6EdwRUt3iw3JAjPaOanrYnbIuyN
	 KKt2/wepBUndQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E1F6410A8;
	Tue,  4 Feb 2025 15:16:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8638412A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 15:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 75BF06089A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 15:16:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JujuNLkONemB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 15:16:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 889E060AD5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 889E060AD5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 889E060AD5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 15:16:16 +0000 (UTC)
X-CSE-ConnectionGUID: U/jXXd2JRBeDk0jz7p3r3g==
X-CSE-MsgGUID: ddvHmTVmT2SOayjsqEu70w==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="42050754"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="42050754"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 07:16:16 -0800
X-CSE-ConnectionGUID: dqTpBsktQ96+Fr7P5FCdwA==
X-CSE-MsgGUID: /Rlp7qjERouEwj4edDyL3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111069295"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 07:16:12 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 07:16:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 07:16:11 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 07:16:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u+tChFORYfLkbm9hyYMO+0oZDjBNVUwz91Gu5e2lwl1mXTnNHgzujz4jPa8NCi7fuaIDBvZKsJxb2Q8uYLbZrYkwBrqlXv/qiEm1m43rOQl5RsJ14ERy7vV1MkaMXaoCSaMcePBPu/t6CX34X/3ReIkvfZf1+kRaUI2QUShekBUsx++9/pV8Yn/opQnau0YFgC1ojalncQXsvTyZIcSfGaINnWz9abO5IZrFOyZveBFsNSIWuAO86SF1kGKjGK2A7tcZkaptvw1NbFV9qaRxwFVKnykWbEkpfRpa7hZoWycpUAQzuwOqllqHP1k4Dfwo9ALyYBsSe39FG7rAdTphNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OEqb3ApmF9NkMkCGO+ONVMgksURf7KAouFAug1CmJRE=;
 b=GVaR3eu3M3/eXuN67r+8csvZ2X62B4yvScejT0v7GCGBug7XDQrTpTyMhAmwq5XWmtktkfNYavakdw+XG/qActbL5B1JapEy1Th77NETO3DCA6nzA9LtvdDqrYcfVCOy3Ttxgsu9Ipn//cUBdo3ovzG3Jz19HNyA9fHavGyL0ym3PM02qIIAwbEiHOA7NhJdIKicTMCOVyiWKMtXGgKZBAwSJwd0zx4U9JHvLk3HPWvYwRpBZxPXSJrxzkNFcY133dKRoGDcZBB5hsOY5rKQ/ntZ5lxFOLehIpzAEGeCZW4AIHZvoSdKDYl2Z8pPL6CtdyXiYthtBckb/GkrqsFWQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SJ0PR11MB5939.namprd11.prod.outlook.com (2603:10b6:a03:42e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Tue, 4 Feb
 2025 15:16:09 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.8398.021; Tue, 4 Feb 2025
 15:16:08 +0000
To: Piotr Wejman <piotrwejman90@gmail.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250202170839.47375-1-piotrwejman90@gmail.com>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <efd253a9-c630-654a-dfed-bd1094a8c380@intel.com>
Date: Tue, 4 Feb 2025 17:16:02 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20250202170839.47375-1-piotrwejman90@gmail.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0010.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::8)
 To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SJ0PR11MB5939:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b5be28f-f840-457f-141a-08dd452eda1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aGN5eDlROEpjSTkzcFlCSmZueE0vN3hvM25IWGtnakhwUjloSlFuanU1WXZY?=
 =?utf-8?B?MTdibWJJNEk5ZDg3ck1rM3hTeVR4ODRxZDVwb2V6cTV3M0xidjlGVzFpckMw?=
 =?utf-8?B?Y2Q2U21GbVoycVJiNDI5TVV3ZEIyME12dm8vV2pZcjBJbUtvL1RFN2kwMmtE?=
 =?utf-8?B?dVZpVVFVUUR3Mm1pQ25pZ1ZIMGxLWlRPdkF1TjJVLzNXemlveTd4dkhnNkNy?=
 =?utf-8?B?Uy81cVZlUWcwdXBtejVMM1UrNmtoQVFHUEptM2puT0dDeCtkKzJKUmNkK0VF?=
 =?utf-8?B?Mm1lbGxzb2Eva3lPeWZ0TkE3d2dtd0hGYkxBcFRKTmJEUm1pWEMxYU13V2Ny?=
 =?utf-8?B?bzEvNVo4a0pBaW1vc0QzTUZaUkZlbFFna0thZlcvT1daUU11OGVzVDlWakRa?=
 =?utf-8?B?WUlrRXY0Y3NFd2FMb2RxZTRyeldFbVJ6T2tGN1MyNnQ3UzNLc254M3ZTQzQ4?=
 =?utf-8?B?eE9aYUxZK2ZnaDgvckJrSm56dkJDU1IxN3FuQ3RjVFRacjVxTTZPa1NLQ2py?=
 =?utf-8?B?SmwwaEUrTnQzSUxpTjlvUmlsMDJmeUtscFFTeW9kbkl2N29ydlllYmVUdHUz?=
 =?utf-8?B?QXVxRGduajVWZ0ZEY0J1cGs2N2VXdlg3b094eEJEQ1pNWkp5Lzl2MzdUcE01?=
 =?utf-8?B?enNGaERvSzlsUGdZcWs2K05wbG4wWkFJaU0raE00N2JzWFJkRmVWQTJUN25n?=
 =?utf-8?B?Y1dPQ3NBdkI1RlM5UVB2eU1xSEdJeHE3Zm9pTGlaUjJXQVVtTHBwTm1jZGNs?=
 =?utf-8?B?eGpqL3EwdFF3eWIvK2FFTjBUYjNHUnZWbXNGUGFVNlhkTGJkQktOL0tOVmVu?=
 =?utf-8?B?RmxkM0JhazRZVmROUHNBTklkbG85azFMR2FTZkY1MGFHNDNlZTZvcHBJUlJ0?=
 =?utf-8?B?WDh1YkJqU0p3WCtsblRLTmRLbXJOTllLNDQ4OHQ4WEdYR0JIc2JQbUNjZ25t?=
 =?utf-8?B?Q05jVEVtd2Q3dlNuYkZNNVltSU9EZEQ0VmFOY3NrZ3NnbnB0OERWSC9YLzFR?=
 =?utf-8?B?ZjlVSDFTa2dHVHpaMGR1bFNVbXE2N0tQYm5FTjdJUldpSTdtZjdCSk9TNTFr?=
 =?utf-8?B?U0lRQ2ltNEk4aVgzTElCUHBxc1BCdjhWbGdqNWFEVm9UaGVzU3pMVFRsVGFK?=
 =?utf-8?B?Y1RwRytjSWI4cmQ4WDhsQlQ1OVpLalpxdHhEakx1bmlvNWcxV1FpQmY2U0xj?=
 =?utf-8?B?OXJLYkNXTW91VmsyWkFUMm9lYWVWcGFsWTh3ZkplMW1URG9NNStXQW01eUFD?=
 =?utf-8?B?Yitkb3dIczdtWHF6NXRrSGVMWkdtV2RoWFlSUU55Q3lRd0IxMmhpM3IzYzQ1?=
 =?utf-8?B?aU15RWhoMUtobkpZcXpJTG9LVlhzb1FkSEp2cUI4RDU2UDRhMjh0cUUwc3pn?=
 =?utf-8?B?Q3lwZmp3ZlVYMVlBUXNUZzFsRk51OWxyUDBNcFZvWHZqdjFUcWJLbjY3dTlZ?=
 =?utf-8?B?V0FTVFV3Y2tpdmlyTXBYazQ0em1zWGhiSUdnMGE1ek1OemZkdkxNUGVoc1NG?=
 =?utf-8?B?eE4zS3BRd0p1Rng5Rlh0dkRDMlBPck0wNWt5aGJjQUM5cWE5ZVlaK21JS3Jj?=
 =?utf-8?B?eVQ1end5QTV0VnpOUzlUNHBJWVRlbkNjMUhqNEF4STE1MUROV2c4WUJybWJG?=
 =?utf-8?B?U2J2Wloya2Q3aEpBR0VKdW5vYmFheU1TeW5BTUZnUVIweHRVQkpBZU5CRDQ2?=
 =?utf-8?B?dEYwMGp0emJncmpqcGxiL0FSMGlwcmV2V0dwOGpvdDQxT1A4enZiM2c0bDAw?=
 =?utf-8?B?QUJVQ2dscG9rVWNwekZ6WGhqVUU2ZU0wOHdIZndqcVFzb0FOU21kd3dEK1ZW?=
 =?utf-8?B?VnpPY092eWwxYU9FL1JzRjd6ekZpUHA2OE02WkdXQlNDdUNkV3RwQ04xb0ZO?=
 =?utf-8?Q?WnfW/GV6pQ9p4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dU5VUjRGaFRRTlZqZ3ZwUi9SLzVqcFJXM3pZVmlIeWFRb3JwMEhkZWowQWhm?=
 =?utf-8?B?QzFubHl5OCtHaDlUSjNnNmtvbTFYazZBZE9SWU1VSUJnYURyNnJNclp3VkFn?=
 =?utf-8?B?Q3dxMDdmQkJMTDdlWDdxdUZ1MWJEeXZmT0F5MytXeWY4YSs3b0lXd0Y1YmY2?=
 =?utf-8?B?V2FyL3J3THdwMGdtdnpZemgralFqSDQxeXhBZ0I5RlRnbHJ4WTFGaC9kM3FH?=
 =?utf-8?B?UUovdm5rQ29hNkdXY1hKY1d0bm8zWVBKdkRleEYzZGp1N1VZNUI0eDZYZGUv?=
 =?utf-8?B?a094K2dydFdtcmFjcUR4Z1VxUVd3b21iRFhrZFBybXllaUFpVUpHb2RqN1h2?=
 =?utf-8?B?UlRhcDZjQzlwMVNaWGdVZThlcG9nNS9VMXdpMnRzRTRXUTROZURuUlNqWWQy?=
 =?utf-8?B?VXczS2xDdnY4bkl0TDV3R3pXUXFZeFpyMzBZSWx4YW15dEVzSkNjbE1BQXhF?=
 =?utf-8?B?d04za0ZYVzZwcldsZ3hNbWQzNHdDTmRhUC9kRWlaS0tkWnk1TmRzN0hRdVg2?=
 =?utf-8?B?Z2krM0Vxb0pJN2hHdVhZajVwOEFFT2d3Q0R6bDBiRTU4Zkxrd2k4TkF5T2dP?=
 =?utf-8?B?cWR0djZWdmZkQmpTYUx0cEFsaCt0TG14ZzJYNk55NHg0UXRpaldoS1F5Q3BD?=
 =?utf-8?B?Q0pzSWNHYld1NDdrb2Z4YkNQN3hPbThVTnMvaHFmR3VuMmZpQmpZTm9iU3pB?=
 =?utf-8?B?ZStLZ0tWa1YvVWxveW92WFQwZFdmTlpuUDNNVHNJSWdRVzZoRHJnQmw2eGxM?=
 =?utf-8?B?ODN1OFkzS2s5V3VXS1p2bzZJaitCUHhObU52ZnhyNXR3dXByN2IzYmE4cXRa?=
 =?utf-8?B?Z2NUSnQybDBsTjlndEZjdmVHYit0eWlscUIrdnM0bHpoRTFISVkyaFM0aDdI?=
 =?utf-8?B?VnRPOXhwWjZRU0VhOVkyNE1PM1gyUEtWTElPSXY3TjhMTW1uamVFK1JmeFFu?=
 =?utf-8?B?SU55K3ZSYXlmT05WdnNrSlVBS0oxMmxpSVo1VmRoaHpKVkN5eTVDSDM3UG0r?=
 =?utf-8?B?M0JLMjRFV3NHTmFLNjZhelkrVHQ4dEJ4eXpGbk9sS0s0dmxuS0h3MklWZmVr?=
 =?utf-8?B?QU43TnJ6Q1VUNEFJZFBWMmFGdHQvYXMzcnVRMjN6RmtWdHBvOEJUODdBRkdI?=
 =?utf-8?B?RXozOVNabjNSYk5jT3Q5NVhhNDE1Kyt0dkJiQnc2dXVxNHpGd3ZHeUJ6cmk3?=
 =?utf-8?B?NXZYWmZhUk9HbW9QUnlwRnROb29QNk1jSTFxRnAraWZpdFE3KzNrL2srVDND?=
 =?utf-8?B?enloWTFFY05HblRUaVFGejRzeFhqZjZkZDdCZjFrWklhelRQN1UwT1BzSWFu?=
 =?utf-8?B?TUI3SUtZL0JxUG55WkJkOVMxVjN0Skw1MzdCemRnZnI0MEJ0ZGFpQ0NlZTlt?=
 =?utf-8?B?c0FLN1FVQ2FrNGt5L3o2SDNQL3NYWFRkVGYvVDR1ZkZrV09HbzdEMWMvK1Fq?=
 =?utf-8?B?VVh3cFRjZHEwSC9WRVlBTDhWKzlMYmNlYjcwSkprTExhMXFEYjNoQ3NlUWM4?=
 =?utf-8?B?Z0tZYTVjeFN0QWRISG1lQWJ6cy9hcFBzRWd6UlZkM09tdzhjSDNGY3NRVUdp?=
 =?utf-8?B?a1EzQ3VNbSt4NkNSRlpkU3ppOXpUWW1WZUY1bmp0UkdPbzRxcE1jQkxNNXpw?=
 =?utf-8?B?cjJVVE92aUdrY0JidTVsZjkzZnc0U2QveWdjbTBLVU5YQzIrdE5JMk1pQnc2?=
 =?utf-8?B?U25zZXM1T2VlNm0xakQ4SDFEbjBXRHBHYjVLT3EwNEFiN0NCUnhzR00yMXlJ?=
 =?utf-8?B?b0Jyb3lkUkhTbGJwSGFiOTJmZEIrbm9qNTl6emk1OGhjZlcyT3lLL0xYcXR3?=
 =?utf-8?B?eWJiTEJ2Z0NKektvcEFNTUFSSDhJa2lsMVBRZjlGdVRRSnpsQVlhV0dzc0pB?=
 =?utf-8?B?aUJSUmtsQXg0bENnT3pKMG1jOVNnOS9kNDBsR0VQaDFIcUtwVUE1b1ZEdzkw?=
 =?utf-8?B?Y1BMREU5UTRlS0dMZitDSDhEd3V5K0x1VjA0MjFXcjFOYkRxQVNVUE9sMjcr?=
 =?utf-8?B?UmxwWjZac1BQQUN4NkdpYW9JNFNHb3oydUljNUNoQldqeG91ZWcybjFMUVd3?=
 =?utf-8?B?K29uUmplRW03WWRkTmFXeWRtU1RlbkpMeVlEZU9jWEp0d0tSU2VaZzRMMzQy?=
 =?utf-8?B?K3d4RDlFZUJGQ3BTZVFMZ01PdzNtOHZSM2FpT0hTTWtYTVFBYzdXVjBDWGJn?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b5be28f-f840-457f-141a-08dd452eda1d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 15:16:08.8240 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YgDs2DlfXHjYUV6SLtqoraqWr8RjInLoy8reXu2nmo1OFH1zhG5cZHvNWajhLGPNwFV4iH+cE1IaE4AdogTGtsPLErCLZNkC/y79RpWVr7o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5939
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738682177; x=1770218177;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=omtGwBDWeP3AaZqMcqlCF0QXj4oH8vXLjbxyl+EfNLE=;
 b=glb1J8+d5xxLwWXjwJvr0e1CQqB4576X8B9OlFqOuUp/leXYZwGXd08K
 3SB9nea7yD264wWNevnB6MlTjdzfqcjrl3HF3n3nZfNPTY8Yw57HmhnTg
 zwGFYy02m4n11mV5JW0EWUHcBomggqMqrtajOqxwDjhNIGGbQCWNjQ0iN
 E8Mnpu3zglaIMH+pKeq37FsAR2ofKLuK/erFcSFosy0YjOzxlyS6AZHzZ
 3TGiLs4yAP0D6JR4zG1Y105Z52KQHt1GcCtm+3iHBVAwV0JyYQw2M+/Ob
 6l1FnUqVc75fdfc/sWwB+5dshOI8Ew9/lBfK8HBpK7vDM5ljPK4r9SRuq
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=glb1J8+d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] net: e1000e: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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



On 2/2/2025 7:08 PM, Piotr Wejman wrote:
> Update the driver to the new hw timestamping API. >
> Signed-off-by: Piotr Wejman <piotrwejman90@gmail.com>
> ---
>   drivers/net/ethernet/intel/e1000e/e1000.h  |  2 +-
>   drivers/net/ethernet/intel/e1000e/netdev.c | 52 ++++++++--------------
>   2 files changed, 20 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
> index ba9c19e6994c..952898151565 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -319,7 +319,7 @@ struct e1000_adapter {
>   	u16 tx_ring_count;
>   	u16 rx_ring_count;
>   
> -	struct hwtstamp_config hwtstamp_config;
> +	struct kernel_hwtstamp_config hwtstamp_config;
>   	struct delayed_work systim_overflow_work;
>   	struct sk_buff *tx_hwtstamp_skb;
>   	unsigned long tx_hwtstamp_start;
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 286155efcedf..15f0794afddd 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -3587,7 +3587,7 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca)
>    * exception of "all V2 events regardless of level 2 or 4".
>    **/
>   static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
> -				  struct hwtstamp_config *config)
> +				  struct kernel_hwtstamp_config *config)
>   {
>   	struct e1000_hw *hw = &adapter->hw;
>   	u32 tsync_tx_ctl = E1000_TSYNCTXCTL_ENABLED;
> @@ -6140,7 +6140,8 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
>   /**
>    * e1000e_hwtstamp_set - control hardware time stamping
>    * @netdev: network interface device structure
> - * @ifr: interface request
> + * @config: timestamp configuration
> + * @extack: netlink extended ACK report
>    *
>    * Outgoing time stamping can be enabled and disabled. Play nice and
>    * disable it when requested, although it shouldn't cause any overhead
> @@ -6153,20 +6154,18 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
>    * specified. Matching the kind of event packet is not supported, with the
>    * exception of "all V2 events regardless of level 2 or 4".
>    **/
> -static int e1000e_hwtstamp_set(struct net_device *netdev, struct ifreq *ifr)
> +static int e1000e_hwtstamp_set(struct net_device *netdev,
> +			       struct kernel_hwtstamp_config *config,
> +			       struct netlink_ext_ack *extack)
>   {
>   	struct e1000_adapter *adapter = netdev_priv(netdev);
> -	struct hwtstamp_config config;
>   	int ret_val;
>   
> -	if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
> -		return -EFAULT;
> -
> -	ret_val = e1000e_config_hwtstamp(adapter, &config);
> +	ret_val = e1000e_config_hwtstamp(adapter, config);
>   	if (ret_val)
>   		return ret_val;
>   
> -	switch (config.rx_filter) {
> +	switch (config->rx_filter) {
>   	case HWTSTAMP_FILTER_PTP_V2_L4_SYNC:
>   	case HWTSTAMP_FILTER_PTP_V2_L2_SYNC:
>   	case HWTSTAMP_FILTER_PTP_V2_SYNC:
> @@ -6178,38 +6177,23 @@ static int e1000e_hwtstamp_set(struct net_device *netdev, struct ifreq *ifr)
>   		 * by hardware so notify the caller the requested packets plus
>   		 * some others are time stamped.
>   		 */
> -		config.rx_filter = HWTSTAMP_FILTER_SOME;
> +		config->rx_filter = HWTSTAMP_FILTER_SOME;
>   		break;
>   	default:
>   		break;
>   	}
>   
> -	return copy_to_user(ifr->ifr_data, &config,
> -			    sizeof(config)) ? -EFAULT : 0;
> +	return 0;
>   }
>   
> -static int e1000e_hwtstamp_get(struct net_device *netdev, struct ifreq *ifr)
> +static int e1000e_hwtstamp_get(struct net_device *netdev,
> +			       struct kernel_hwtstamp_config *kernel_config)
>   {
>   	struct e1000_adapter *adapter = netdev_priv(netdev);
>   
> -	return copy_to_user(ifr->ifr_data, &adapter->hwtstamp_config,
> -			    sizeof(adapter->hwtstamp_config)) ? -EFAULT : 0;
> -}
> +	*kernel_config = adapter->hwtstamp_config;
>   
> -static int e1000_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
> -{
> -	switch (cmd) {
> -	case SIOCGMIIPHY:
> -	case SIOCGMIIREG:
> -	case SIOCSMIIREG:
> -		return e1000_mii_ioctl(netdev, ifr, cmd);
> -	case SIOCSHWTSTAMP:
> -		return e1000e_hwtstamp_set(netdev, ifr);
> -	case SIOCGHWTSTAMP:
> -		return e1000e_hwtstamp_get(netdev, ifr);
> -	default:
> -		return -EOPNOTSUPP;
> -	}
> +	return 0;
>   }
>   
>   static int e1000_init_phy_wakeup(struct e1000_adapter *adapter, u32 wufc)
> @@ -7337,7 +7321,7 @@ static const struct net_device_ops e1000e_netdev_ops = {
>   	.ndo_set_rx_mode	= e1000e_set_rx_mode,
>   	.ndo_set_mac_address	= e1000_set_mac,
>   	.ndo_change_mtu		= e1000_change_mtu,
> -	.ndo_eth_ioctl		= e1000_ioctl,
> +	.ndo_eth_ioctl		= e1000_mii_ioctl,

Now that you removed e1000_ioctl there is no reason to call this 
function e1000_mii_ioctl.

Please rename it to e1000_ioctl.

>   	.ndo_tx_timeout		= e1000_tx_timeout,
>   	.ndo_validate_addr	= eth_validate_addr,
>   
> @@ -7346,9 +7330,11 @@ static const struct net_device_ops e1000e_netdev_ops = {
>   #ifdef CONFIG_NET_POLL_CONTROLLER
>   	.ndo_poll_controller	= e1000_netpoll,
>   #endif
> -	.ndo_set_features = e1000_set_features,
> -	.ndo_fix_features = e1000_fix_features,
> +	.ndo_set_features	= e1000_set_features,
> +	.ndo_fix_features	= e1000_fix_features,
>   	.ndo_features_check	= passthru_features_check,
> +	.ndo_hwtstamp_get	= e1000e_hwtstamp_get,
> +	.ndo_hwtstamp_set	= e1000e_hwtstamp_set,
>   };
>   
>   /**
> 
