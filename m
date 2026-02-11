Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WO81FGjPjGnbtQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 19:50:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6601126F24
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 19:50:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48F94814EE;
	Wed, 11 Feb 2026 18:50:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nMpDe5UGNuDO; Wed, 11 Feb 2026 18:50:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B86F481760
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770835813;
	bh=JwL1pUW8ElQ7KtkxLiHd5CMnLAAY+Cd6n/ZUOtlIZ6Y=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=11dsEiwFHuSFJZUGoFKIbX0rPOIXYVvEjz+tcKCx23mfDWVA3gxG9dv7mucuDkHwk
	 96buEyl9YA0tVj6fgxd9Y7q6oe9wfGDsaVyXzvxaEMIahCOSj+1b56TKbtN0nt1UvE
	 wBMWrtQS5CEdzxw8t2cA/kNW8x1pPvixxlMgh6Kvesr17nxwlHT8Yr+enCklTeSfN2
	 tbCoeV4L3ddk5Qgy/NJusrY2u4uds31kRg19NAR/KhmWfNODXFqgAvlVa4qG2zK5Ob
	 vaeEeC+9xqTrK9gqBniAVP8F6Bb8ur6ZvaPw39Akg6Mbd3B86TpSaVE2GaPjbFXAX8
	 W1BcwGyDLIrbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B86F481760;
	Wed, 11 Feb 2026 18:50:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8284C23D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 18:50:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 737496106B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 18:50:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I35aSwCqWPBH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 18:50:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 732DA60A65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 732DA60A65
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 732DA60A65
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 18:50:09 +0000 (UTC)
X-CSE-ConnectionGUID: ZCMNfbZETi2yo7Tsp2qy0g==
X-CSE-MsgGUID: kDDBHvR3RSSc8IlK+U19zA==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="89401373"
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; d="scan'208";a="89401373"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 10:50:09 -0800
X-CSE-ConnectionGUID: w84XHJZqT7KK8mBmkt1AKQ==
X-CSE-MsgGUID: ru3u2TxXQvm3EHLI1DaoLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; d="scan'208";a="216837403"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 10:50:09 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 10:50:08 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 10:50:08 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.44) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 10:50:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p1LDiuv3z1lZz7D1V+tn85wY08GGKiHijY3PGvfM7+KpKBRyO913aMffqxt9ZR+PEQhOFGjjtdblrFeMbp86pir/DwA5Nx94/g1p7H+xUV6ObC/RZYNhi+lHwNBdp2wLDcL7shQsZ+eDjFlNSNLjP0CCXBdDGStVq6ypK8J7akrOwZBwExwRYT0W6/e9txOUQcuMcux1HxajfuftBRKi07QcxOv5A8Z/3qR2G5gbtBrr9F+3LOAgmgkueo6gq3O+wFJ1tzyihZ6Ap/W06HoGuXeBSIJxHY4iXcGiVTyzpyGA31vfuf8bSfwfLXrkrKiW0Ksc8fsAtTQVoCd05W+wTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JwL1pUW8ElQ7KtkxLiHd5CMnLAAY+Cd6n/ZUOtlIZ6Y=;
 b=dZedWWNPU58/jCD9vYz+UY4/zBiqGzpVFVVmy/IGuicj52TUmSPmFGvoPnsdFkJ5Nb5ZZAld2l5w0NCEEQPFadc1D/Jl1ejKbOUVV3BoSCaBMuMUERAT6DSHtNAlejJVx5dZlOO0ejJAP1LXF04IgEHCS5LJ+n1mHAsx0heRQ1AKGzHwV3RoijMXJcY7ymMYDmLeqeiTGvYF6tQR7NGIuM/CutAlldAWA4YhkkbiWC01awSDIXRmhzmgJKWxs2dCmJqyUvwhD0IEw6+yjNYFLdR0vV2+c+8cns6PEXhoo1XKI7U5h4pDZCKROgp/uOTSIR6TlAILdc/g7z163nLcZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 DS4PPF6CF7B12C6.namprd11.prod.outlook.com (2603:10b6:f:fc02::2c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.20; Wed, 11 Feb
 2026 18:50:05 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9611.008; Wed, 11 Feb 2026
 18:50:05 +0000
Message-ID: <14cccd55-f737-428b-91da-1daf68d4f899@intel.com>
Date: Wed, 11 Feb 2026 10:50:03 -0800
User-Agent: Mozilla Thunderbird
To: Paolo Abeni <pabeni@redhat.com>, Petr Oros <poros@redhat.com>,
 <netdev@vger.kernel.org>
CC: <ivecera@redhat.com>, <aleksandr.loktionov@intel.com>,
 <shaojijie@huawei.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Stanislav Fomichev <sdf@fomichev.me>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>
References: <20260207102245.812795-1-poros@redhat.com>
 <d97612d0-09ed-4895-a22a-6fa73abfbbf5@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <d97612d0-09ed-4895-a22a-6fa73abfbbf5@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0135.namprd04.prod.outlook.com
 (2603:10b6:303:84::20) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|DS4PPF6CF7B12C6:EE_
X-MS-Office365-Filtering-Correlation-Id: b7d4e047-a67a-4d52-7a8b-08de699e5f0b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aC9BSWQ4VVVDRVFPa3I2UENtQk1nUTFWNkhEOXpyYTErNDYrV0ZBKzROR29s?=
 =?utf-8?B?R2FMa0k2c2RhOEUxTzBBbzIrQUtoZWF2RW5jZE5IMzJGUzA3eEVzeVRvbU9Q?=
 =?utf-8?B?SEhhTU1xNUYyMHU5OVplZFgvaFhNM0dkeklRb0M2b0NRTFd3eFFNZERMdDFZ?=
 =?utf-8?B?L2E1MDBBSWN0Q3hPclRnVzJQWkRkdDgycWhnckxwY0plUlp3RHRreXVnaWd3?=
 =?utf-8?B?Sy9MR0xmYm5JdmxnVUVVeUh0ZzJLcWYxekFzN2g0NVB4ek41M3JpZnRCaURs?=
 =?utf-8?B?OVZRd2EzanVyQTNMNkkvWk1iSGl4anM3M3JiN3V4U1NvVDFLUjFUbytscldQ?=
 =?utf-8?B?U3R1ais4dHBoUG1TL2F5NHYvYzhZMUNOUnJlK3hXRG5kcGQwOWNtUnhNZ2xI?=
 =?utf-8?B?TnNoZUk5VTIvaS9ZSVRxK1dHTGszUENUNWN4dGhCRGR4V1pNZ0JTcDhpOTYz?=
 =?utf-8?B?NHcwbmJ6MkE3Q0xZRGI3bjZBanRLL0lYSFBiaDZtQ2hna3AzVmNFTkhsK1N5?=
 =?utf-8?B?K2w2bjZyOFdJVUFzTVRHL29yQ0xwTlp6aTdxSlhORlllNXBCcFAxT0R2SDhZ?=
 =?utf-8?B?MTkybWRhNWNJeHVyOU1VMzVLZ2dxd0NUVm5oSG8vcnRUQlp6ZEJYZ0M0Tzl0?=
 =?utf-8?B?VzVmTFVGYUtOWGNSTlZYdmh4RFFaQXNqODE5Vm15YWhTVlpOZ0VPQVE5VHdR?=
 =?utf-8?B?bXc3SFNZSm5sUEdTbytDQ1M0dGI5Yi84OWdrSEhobXlIa0IrRlFOdjJ4dHhl?=
 =?utf-8?B?K3pmemptc09uSXZOd1J0U2tsRXMrTUNoaGUwLzJYUzFNRElLZGV4YmxBakVi?=
 =?utf-8?B?ZTFIZ0pBTEZ5aFZSeU5GRnl2WFoxTXNlaXQ1V0gxd0ZTa0M1SHIyRTduazRi?=
 =?utf-8?B?WkVVaVZYNDlyZ3U2dC9FK2VPUnZPYW1ZcWtYQWRBbVpiNWpTUWtTTS95a2t0?=
 =?utf-8?B?K3BJSXlZUmdaaXdQYzR6bDhUTm5Jbjh4YjNFeDFvNU1oVmMxeTVUcEpLQndM?=
 =?utf-8?B?MmNBbXZNQjBIZjFUT1NPSFRmeTFSemdhSEIrYTVZNFpoQzFWN05sM01OUGo0?=
 =?utf-8?B?Z2l1a2VQZENnRS93MXkweGtpL3NOQVJjZTJrNHpnT2JTeVRBMnY0VW8xNXBW?=
 =?utf-8?B?S01PZzUxQkVXVWJDakxvOGlwQ1VHWlFkYzZENXRxTlVnYUZqQi80b29IUG90?=
 =?utf-8?B?NGUxNHdtclVIWFJKeXQrQUVzZmZaWENnaWZDTWl5cVA2THVibFFCNFZhOFdz?=
 =?utf-8?B?SVZDQ2pKTEc5L3gra0xHRTlSSlo4OExPTXY4VDNVK0U1T0wvWloyYmkxd0xs?=
 =?utf-8?B?ZHNBMWFWcUp6TWhWTm1qMnJ3RzV3R2cyVWhlYk9yU2VXbnNCQjJqV21sWkww?=
 =?utf-8?B?YkxoQ3NCZ1JRLzFGMk5wTW8waTd4eENoV2VjLytpM0Jva3BQLzFwWUcyZEQ2?=
 =?utf-8?B?UUNSc29iblJ2ay9wanRKNUlha2hOd3ZCYm52a2lleFM0UDY2ZFZUSkZEQ2ZO?=
 =?utf-8?B?c1lsVVhCU3dSQWFWMWFyRmplNEdIQjBmelArVDZnSXlHdGdXak1hYTdkTVNJ?=
 =?utf-8?B?R0ZhV1ZLeE53ekJWNWNNMS9kQlJ6c2paSmQwR2JiTStrTFQ0YVdwNnJiNkNq?=
 =?utf-8?B?RnNKUVhUUFd4ZVdPSjEvZGQ2YWVDT0x4WHFOdkhjTGJFREl4UmdVaXNXVk41?=
 =?utf-8?B?dm5FczdNVWF6ZjFnN2FaN0VqeVRFbGVxa09WdHVBd1FtVTVCM25FOTF1TmVy?=
 =?utf-8?B?VDhKL0dzRFp1MW1BeUhyeWNhM25rQU8zVFNjRGZvN0dXaEZyZkFZYnpOa2d3?=
 =?utf-8?B?MTZ6MlpVaXphUHJGeHVCeG5QWE16djNqZlpRem4rbUpHaGlQdWFGRE1HcVow?=
 =?utf-8?B?NDlYaDE0elE0WTdmeVg4YzkwUTVtOGhFUDdKTitYTEJFZHo2NU1ZVnpNK0d0?=
 =?utf-8?B?emNhUmlxNWdVNFA1L1p5SFVPTkFjOUNHd1Ruck5pSTlEMGQ3Y0FVL05uTXph?=
 =?utf-8?B?UHZodDAzSEhxTko4Zlo5MThSTkg3dXVCYUgySFM5NkNaNmlwUlVvQXdnM3Jj?=
 =?utf-8?B?aTYvK3drMWdEZ3ZFRXkzbm5STXAzU0ZpeElHOSt1c3I0QUN5YStUeW16T2o1?=
 =?utf-8?Q?bYFY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cC94YlhaTjRHQW1DMis0bXQ2TU56ZVJhYkk5WGh2eDkzSGFqTGcrOU1RcG1p?=
 =?utf-8?B?Zi91MHZQTDdpY2ZjblBrTGZ2M3VSMTg0ZzFSLzhQMGM3SyswOVRRQzVXNXRU?=
 =?utf-8?B?ZTFJUU9RTHZMalBlckY2cFIwR25rSWxQRTY4VXcwRElOTUpvdmxoMnpvVk5m?=
 =?utf-8?B?bElyTDRFL3RaRHVsUGUrSDVmWnVRbTQra1V3dEZ4aEN2UzduVmdqNUxxclRw?=
 =?utf-8?B?bEtha2ZSLzY1QXVvWFV0M3hYMTMzRURmTTFKdHlWQXkxcythTW5xbEEzanBa?=
 =?utf-8?B?ZXg1WEhNREFSZXRsWGNlNThlVE5LVTZRVHN3L0dMelRocXNPL1hSTVo1eHVa?=
 =?utf-8?B?MVhhUUx5Vi9JbkN4Zm5jNHdydHpQNC82cUZ1VHgzczB3bmQ4SGp5TjgzcXFF?=
 =?utf-8?B?N042L2ZZZ0VWaElUK1duazZGN1AvbmZWZ2dkZEcwSWR6QXVQQlh2U2gzS0or?=
 =?utf-8?B?dENtb1lFQmxWTFR0TWtmc0xVeE1RWm9MZ3pONHRGb2lrTXA3UlMzMkZZalhH?=
 =?utf-8?B?VkRzelVjOWpVZ3JuVEpzaHFTMUR2dkM0L1pTUDlrNXc0cXYxR0Y2ZGdQOVNO?=
 =?utf-8?B?UUxaWjg2OGRqVWpMZzluNHhGYU9XWEJTa1hiR3ozWDhhNGhKdVJFdlhRT2xG?=
 =?utf-8?B?K3d6TDF2a01PY25HWlFncWxyNmdkZWtSNEJsUDREVXpzWlhFWDVJU2dpaWNo?=
 =?utf-8?B?UE80ZVZBc1UxTXYwSTdlMkZSMmsrdE52U1hYdUFjaVVkbWJQNko4cGpqWFJK?=
 =?utf-8?B?TjllYTltbTBtQ2owUE5VaHlKZ1lHOTVTUzlKb3FMOXpPaEt6bDlNL3Rzc2t5?=
 =?utf-8?B?ZDlhUDNYQ0JrcUlaQmw5QUVXMmdaaVJiajA5Y0Noa2tKVFBMdU5VOWRiYmpJ?=
 =?utf-8?B?QnVwVW9INnNEM3c0aWRKL0pEdjlZM1UzRlZqd1huS0NVKzUyMHQ1OEJVaDhU?=
 =?utf-8?B?bjBpNjExdlNtTDFyR0JyZ0tFM0ltRkhVa0dhTjh3U3ZVQ1I1TERXaThxZjE4?=
 =?utf-8?B?RlluTjROY0hSRWFKekNreGd2bm5uWXp4R3FWR1dWa2xTazhreW5zNWVxclE1?=
 =?utf-8?B?S3lZTlJyTDhXcURYLzE4QXdNWjlvVkxOOHJxZHp2L0lnSmwwWnhlTWFqenVF?=
 =?utf-8?B?L0xDN3BoOXh6djNBaGxYZVY2OEI4RFJjY0Vyd2lBK3ZyeDZkVFA3am9jRGhK?=
 =?utf-8?B?RWR5bEp6VmxXZWVYeGxhcW1XeDdrT29uVkxWR0dxL0EwalFFN1F5eDZiRGI2?=
 =?utf-8?B?NXVUclZpT05CYTNlNWFtSi9NbTJjL3NTSzR4eDFKaFo4dU8wdU4xdVFWZzFy?=
 =?utf-8?B?Zi9rRmFjYlRCVG1DNTV1Mi95S0FmWjI4Z1RwVHM3aUFRNytXRFRnQXhHKy83?=
 =?utf-8?B?eE4zSi9jS2x5WGhvdm8rL284UlRDMldWYnB6eHRXVnR1dW5MMDlMSzVRdkk2?=
 =?utf-8?B?TXcxM1VyZWxseEhBb2tMUmxKRUZ1Nm1kMFVNTFpmQWVzanBTV1VBSU9KQ3Rk?=
 =?utf-8?B?emFCZjlJd0V6Y2Rud3RwWDBiOTV5eGdVaUNSTEFML0RuVzJiNHZWWVpPSnBK?=
 =?utf-8?B?eW0zL3RUd2dZQ0hlWlJhUTcwU2YwU2RXaFJhR2prdnFUTFBjQjR3MkNDd2Mr?=
 =?utf-8?B?UEFKQnIxbFYraFE2b2ZQV20xUU9lRTlOVytObHZmeU5aSnJtZFp5UGM0WDA0?=
 =?utf-8?B?RXIra1RFQkQwMU9hcktyVlp2a2RFNnF2MjVoMFVXc2s5SUhWN3FEMXRucWZw?=
 =?utf-8?B?VHpWNmxLUG90TmE4Y2hTeFp2ODVBbGtsMms2MlcxZ2tVK1BYTEJUa1gxRmNi?=
 =?utf-8?B?cjZyeVNPRXhSR0pGdXpvbU8vWWJSNjYrRURnbFZoWmQxc2h0M1ZlcEhhTXFa?=
 =?utf-8?B?MnNYdUxtWDZ2bVBJaDcrS1FIdmhMOUJXS29FYWdMeFF6Wk5iSWFDN0d6dnE2?=
 =?utf-8?B?WXF1aXdTbjk4UWJWTnFudTNldGtaWmJPVTUrL3ptanZSMGxVUm1DdTNIa2ph?=
 =?utf-8?B?YytnZ1lFellhZUhSSFV6OHRQVFZlMFRjRTFJU3NadzhlajBDOXRFYWtuaHRx?=
 =?utf-8?B?R1J6YzlLcmFIa2NjaUU3cmsyMXpYMHVGSnEvQkxlTzd3dFlQWitMdjBkMGIy?=
 =?utf-8?B?Vjc3UFRyZTZuZUZsdXFuTzhUSndnYnM0U25mbHQvcEdTTGRLTnFMOTJOcWhz?=
 =?utf-8?B?S1UzTFZxRXRUcWxLSnlHdWZZL3QrRHRMQkFBSWVVQU9OV0FGeDExRE9XdlVO?=
 =?utf-8?B?ZnROWDA4WUNmQnFWbE5BQ1dQZFJQU3preHhOekVhVUF5NE9sK0JGSmw1K1BB?=
 =?utf-8?B?UGtKc3NZem9TQnlWa3BKMXJMSFJZK09PVnZtNjhiY2NwamIva0Mzd2Y0alBB?=
 =?utf-8?Q?JuhIW363DYD8mv1A=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7d4e047-a67a-4d52-7a8b-08de699e5f0b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 18:50:05.5169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TuW9m+wwQjO6v7sg/Ild+6WINBlOUL2zSw6n5i7yNG2n4Um8ZEMQTrSdENz3xr1sxK7oGbMjLPkYMnbMzJU/GyT2QPF1BBFvx/BWsUgaUYY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF6CF7B12C6
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770835810; x=1802371810;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3azPsdfh+/UsirkscrkQsjUaJ3CRlqjgsDmGIF77B4k=;
 b=AXafjOfey0mHlGNz17RY6GFC35r62ldrlBkWh41ismEKFciWhjBcuneu
 gIQ/GprGjyZsr2QVvJYR6FiHyQRt1dZBklrNopdm+D1HSgNzFnIUVNg78
 xMlv5M0W+QbjBsOGGhzx+gQJb4ybk/WTBvxsO/jdfbGHOkL8eFbFZJVZu
 EF4uxisvaXB5pu2+m/K2LFc8457lxeQ2Ku0rI7tCaJu4qaSX0X520CsNz
 4CHznBKxx6lAa1o9mcExDNBu2296cJPpOUk6ZbD52nbRVP2SfCW5wuTkM
 kZmq16hK4Ofg8jBjBPRIVvQiVnyHT/NErzfVR/2DAxSjP9+OOJtL0yrZH
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AXafjOfe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: fix deadlock in reset
 handling
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:pabeni@redhat.com,m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:shaojijie@huawei.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:sdf@fomichev.me,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: A6601126F24
X-Rspamd-Action: no action



On 2/11/2026 3:50 AM, Paolo Abeni wrote:
> On 2/7/26 11:22 AM, Petr Oros wrote:
>> -/**
>> - * iavf_wait_for_reset - Wait for reset to finish.
>> - * @adapter: board private structure
>> - *
>> - * Returns 0 if reset finished successfully, negative on timeout or interrupt.
>> - */
>> -int iavf_wait_for_reset(struct iavf_adapter *adapter)
>> -{
>> -	int ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
>> -					!iavf_is_reset_in_progress(adapter),
>> -					msecs_to_jiffies(5000));
> 
> AFAICS, after this change nobody waits anymore on reset_waitqueue, do we
> still need such wait queue head? I think a bunch of additional code
> could be dropped.
> 
> Thanks,
> 
> Paolo
> 

Yea, that seems correct. We could do that cleanup through next instead 
if we want to keep this patch smaller and focused on the fix. I don't 
mind either way.

Thanks,
Jake
