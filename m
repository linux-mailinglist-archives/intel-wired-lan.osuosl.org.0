Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0011FB1225B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 18:54:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7740A617A7;
	Fri, 25 Jul 2025 16:54:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wzYXTmKSw23k; Fri, 25 Jul 2025 16:54:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C687617A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753462485;
	bh=T7zg85ZdTaLIDe5Cjk67LeVhxga+wCMjN9e5vHO8/F8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5Y4WMIPrp9t6UMz9QZ5OrBITYICOWsP4zcoGlVtt55I3pyuHiqQHxjfLpQUhct2Zn
	 eCHsM8kxvY09uEnEGQgg+eDAH0qioYs3rGzbpFxlg1k0QiFXD8tY23vMb5mwcIXj0z
	 PGIEt161u9xwUkBrUCba/QaprqXQIKNl/SxITI3Btof2eu9e2vjvSI4AiYJLFWjuqv
	 ZJZBon1eYo/tw/nL8ze30Rg1kMmGZ6zSEK/B72b6NpYGljq1aIxWFyo2mzZxyW1nHd
	 6G9wHppggzacNWoOPNguy35Z7yhqmZ5PUM3IjP/mhiiT80cpwXT7fZe9gV4iqUfg3u
	 ml5TDFsGn5WPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C687617A3;
	Fri, 25 Jul 2025 16:54:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 41425909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 16:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32EF941D2B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 16:54:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5I5sVX1wPETi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 16:54:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2EB8841CE8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EB8841CE8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2EB8841CE8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 16:54:41 +0000 (UTC)
X-CSE-ConnectionGUID: kc2RgP4QRl+HAvs6nqobXQ==
X-CSE-MsgGUID: pL5JXUodRI6E+kbYSN3gHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11503"; a="43416541"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="43416541"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 09:54:41 -0700
X-CSE-ConnectionGUID: X7445opiQl2szVuRsWsxTg==
X-CSE-MsgGUID: dT3B8LGhR7e57SghCZhvDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="192021809"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 09:54:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 09:54:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 25 Jul 2025 09:54:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.50)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 09:54:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yUyuEiCAfQ9tpYwel9OaeTNF6MF0rFpxtLqiEzUiYL5nVDpt4+aWw+kIZY2cM0VzKtAEUKiGMX/F0f7hYKbZB/eq++ji822oUzEud0NVgNIafeFN222FyiJtsWXdlbrGUEkrsjfTLjmcq5ZQ+pLNLdtli+RHJb3Hyfrb9MU8B0950BUO+GrKMRZuPc/YFq3fuqpnxgCZoFZIJUkHx23Ghyxi5klQDyJG1fjROkZhREe+maRr9suxs+JCFggV8JERoCsPdy/0PpkMc2z3xtxQWQ04faJ/WDizuX4RxjWWXliW1CnxKA/TIlxDnTgTJApr3KwBMkiEcepYOGFtPldiNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T7zg85ZdTaLIDe5Cjk67LeVhxga+wCMjN9e5vHO8/F8=;
 b=W6G+iceff2lIA4oI3z+KYxbGKVUmm1RnAb1biR18gAczpt9rk+5vUOn+n+XuPpZZ9+0WV0LSFWwhIkOFZwizqDzVRpS/dZHjxJmJetJiXktmPCsjmqqgm2HUwk1z2RQ/2Nrmlq2JlfvOs9WPvQJG72Ud4rEAxznNxoD1E9RFjSlzoCspa5/YGLpaF14dnI3sQvtnJR4ObXeNw8Mo2V+Pn0+1Qs0kMDw6f/b4FRadbW4oFg4utPhuivFDrjoW0TqJ0+LPKsenqChcWYxoi8x7YXFDRI2UUTepWSw5uYvxQu3SYh91p1YwOroO2W5+WQn0e/gsKkZ03K+OVzVE90CuTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH7PR11MB6030.namprd11.prod.outlook.com (2603:10b6:510:1d1::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Fri, 25 Jul
 2025 16:54:23 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%4]) with mapi id 15.20.8943.028; Fri, 25 Jul 2025
 16:54:23 +0000
Message-ID: <cae34d33-3e32-4c89-a775-df764d964c4d@intel.com>
Date: Fri, 25 Jul 2025 09:54:19 -0700
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>, Jason Xing
 <kerneljasonxing@gmail.com>
CC: <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <bjorn@kernel.org>, <magnus.karlsson@intel.com>,
 <maciej.fijalkowski@intel.com>, <jonathan.lemon@gmail.com>,
 <sdf@fomichev.me>, <ast@kernel.org>, <daniel@iogearbox.net>,
 <hawk@kernel.org>, <john.fastabend@gmail.com>, <bpf@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Jason Xing
 <kernelxing@tencent.com>
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
 <20250720091123.474-3-kerneljasonxing@gmail.com>
 <6ecfc595-04a8-42f4-b86d-fdaec793d4db@intel.com>
 <CAL+tcoBTejWSmv6XTpFqvgy4Qk4c39-OJm8Vqcwraa0cAST=sw@mail.gmail.com>
 <aINjHQU7Uwz_ZThs@soc-5CG4396X81.clients.intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <aINjHQU7Uwz_ZThs@soc-5CG4396X81.clients.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P220CA0017.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::22) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH7PR11MB6030:EE_
X-MS-Office365-Filtering-Correlation-Id: 4748b8ac-01ef-4535-0581-08ddcb9be851
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UkNLTkdNcEIzeXZ6V0JxYkl6NUlZZEFuekxRTGYybVZaM3l4ZUVtL3luYVZn?=
 =?utf-8?B?SlYyUEF3MVdnMWxsZG9XNmh1ZVNPS0RDNUgzTGN0ODIxUVNSWVpxdjZQVFVr?=
 =?utf-8?B?dHlOdU9URG1iWmxzZ2x2RDhJU3lZR0ZTZjhJY1RuSllad3NQTisyV2pza1JT?=
 =?utf-8?B?Y0lwcjZ5S1lmUWQ3TUljeXpGUVV1UlA4SVl6Y3RpRHpCZjdkdWhvV1pJTjRl?=
 =?utf-8?B?NmU1R05KRzQ3aXJicXJvWUtGSi9jUHAzNEdGT251VDBlc3FWTzZURFpNNjRz?=
 =?utf-8?B?LzZhNURGTStyT2lIOHM2YVZqQWdwVys2L0FMNGdqZjFKc3h4WlhhdEZwZ0dM?=
 =?utf-8?B?bzlGMXJnaGpBenhDekVWRjNPNlNDRGVQWWx0V01EVzZMWFV4bDNKK2s5bmdq?=
 =?utf-8?B?U0ZZTTcya3A4V0RmQ3o0Rkp2cTFUMzJTejVRdVVwVGFUaTB5UThqaGJKRVVO?=
 =?utf-8?B?bVJQY2tISFZGTVBibGNoK3dzK05pclNkRTE4aE8ydE9IaktmMjBPTE1MUFIr?=
 =?utf-8?B?ZkJHSWF4RWYrVDdPZm4xWmJ1V0hndGdhR1B6VHI1MHVSQm03cDlsTTB1Wis4?=
 =?utf-8?B?YlRTK1hUQzZVUEhhc2ZuanlUZURyaksxRXI2Uy9ZMVhZdEpLNU9ON2ExNGx6?=
 =?utf-8?B?dDFqaU5ZM3MwdEZlQWlUZFpvelhRbk0zakdwOXB3OEluVDRWbm9FeElXOUI3?=
 =?utf-8?B?UldnOFl6NHphUlJDdWNsZnZEZ1RMTzJKMVBTakVoY0xRTmxIRG91Zm5kT1NV?=
 =?utf-8?B?ak96UTU0bW1zdUxtcGdkYXdoOTZHUUVoWUpBenZJZHVneW1wSHJNaWhqeEF2?=
 =?utf-8?B?d0s4OVpBeW9JczZ2K2txMTNxUkJQdXdrVUk1SFRDUVltbnJuMTFMVlRoT0xm?=
 =?utf-8?B?YW42ZllMdCt1M1g2QlpUcEpxOHZWSEJyVFBLNFhqOVhSdE11SUduOXpsek5n?=
 =?utf-8?B?TjFpSUp2MjN0REZjUkJIYmJHRWJ5RjhybHFIa0poc0paZ3hlbVlxYit0M3hl?=
 =?utf-8?B?bHJSS3RZTStlZ0QyN2JScGtYWS9tc05sK2M2amRGTkpBTnhBNm5qZWVaTGhF?=
 =?utf-8?B?TUJtdGUvZGw4UWdXWlU3b2xVaVlOSDNNQnVyelJkdU5WMmVRYTY2V0xuNjhP?=
 =?utf-8?B?QThHS013SUdha0RTc0Y2OWhWTC9SRE5rb2xFU29wbSt1R05NdzlMMnE0SThM?=
 =?utf-8?B?Wi9BYnEveDI4VTJnRFovZW1STzJvUFRMNkZBa2hPMCs2N2NRMlVyTXBScDVY?=
 =?utf-8?B?bmtYM3B3TzVCOXpuRkNobE5FVkttWVhzODhLa3BzaWdSbDNkOS9aNVJjTncr?=
 =?utf-8?B?c2Y1OUcvSEI0SlNmV0pmaGw2ZVRXVWtZcHJTamVxSUphZ2lsMkFHVlFLR2l4?=
 =?utf-8?B?dStDT1NHTFNFTDErQUxEdUZwUmFOQzNQNVFjMEYyRDlETkc5TXVuVEZMY3pG?=
 =?utf-8?B?bmZZQUU1VGVmaVJ5YmozQWhpK1Yvdzg0MkJGNFdTdUVIN3hkdUgyYkRyNmJp?=
 =?utf-8?B?VUJYWFREdi82bGh4TGRaODF4UDBJc2pjVDljenhydTV5VEhyYklkUSswS2Fi?=
 =?utf-8?B?Q215bUx0aVdnOEo2aTczWG54T1NINVBqSC9GQ3AzZHVZUGpvTTNjamN6dzZP?=
 =?utf-8?B?cE5uajg3cnlMTnppUEIweGZQcEFpTklGaXlyTEFIZm8vVW43YnZmOVBqSlhT?=
 =?utf-8?B?c0FzYVZYUGNVU1JLd3IwNVBXdFM4dFJxbkNwV2pCM3dmcGVFTEJkR05uT2Jh?=
 =?utf-8?B?NG50VkVBbm9wU1BtYVhDOVgxWG9zNk5pMTY0c1FRQm92eFFMRC94T2YzYzV5?=
 =?utf-8?B?V0ZVa3VzaUxUQWRQaUJ5WHNoOWtBZ1NMUWw1VEFSWndXSnRGUlVRV2UvNVNs?=
 =?utf-8?B?MG03NER5MElLOUdwSjJwYkRIcVZ3TmZITDR1em41WitUZWFWWFlRd0U4VGdN?=
 =?utf-8?Q?vU0w0WliMOQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2xoMzFuVXFHSXZXc2NPNncxU0wwSHFrWi9mRExZRGQvaXFIVFpUWHlwbEF0?=
 =?utf-8?B?OXo2ZGtaNDRnNlUvSWlXTzJGb0N2VFpiQXdzanpPWHdNTUdONDA5cWIrSWVy?=
 =?utf-8?B?V0p1RXdGWTlWRzAxSkdsT0F4L1dORUoxOElCR0JQVFhDcmZNNjBYUWFuMWpG?=
 =?utf-8?B?VE1GVW11VVVpdkQ4Z3hsUTZpTFppcFZPbnByUmx4TEdrRTJGM0l3UFh0NjZJ?=
 =?utf-8?B?d0htcjUwTWZmTno3K1hSWjYwZ3BLS2tSWjIyUmkrNnUxR254QS9yK3UyYTkz?=
 =?utf-8?B?T3pHa0RydGgzNWRUVE5YaHZudHE5YnBmeU1ucXRrM2tzck94OEIzK2cvZWlP?=
 =?utf-8?B?VjhxZzFyTDhacEh2VFBFY2Z3NEhKc1VoUjB6cG5RZzB1OXJ2UEhtUVhkaWNW?=
 =?utf-8?B?UmkwaGVmWXRwTTVYNU1mY1hBYXFidU0zakdTS2F5dzBqWHJocGRtZnRIYzVr?=
 =?utf-8?B?d0VHeWNzQk1pLzRvQzZMd1FCL1pOREY3bEJsU3NpS3NEZGZsUjZvcEV4cEsw?=
 =?utf-8?B?azdEdWFzdXVRdm9iQlRyckZPczVzNlRwcjNhSjFEamI0Q3phTEdxR3lobkFM?=
 =?utf-8?B?RkYvWU1TT0E5dFBMck5OUTVHSDhnM1d2NkZoYllOZEV1Y1RyalZxOW80Y3Mw?=
 =?utf-8?B?VzhrdExBK0ZjM0t6WlU0UElESGxENnhnYlN1ZkYzUzFrb200YkdPb1dNQVo5?=
 =?utf-8?B?ZUd1Skk1dUsvRW15Zm9QcmJackUrb3Y3RFprc0tsYllJZ1FGWUJaYmtXeUxK?=
 =?utf-8?B?Z05ycVFEZzdPKzhvWTgvRGR4ajhPSkNCbHdtT1NjNkhxLzJjNGhraUI1OVA3?=
 =?utf-8?B?ME5meW80UEt6UDVDUUtEaVQ1dys4VGF1eEt3WEI4QW8wRHgyc0xXcEdHaVYz?=
 =?utf-8?B?MitVK0dwdmgyUmtia2JDdjRKckw5ZDlPbzVpNVREQ0V3Mk14VTJUNCtWdWZ3?=
 =?utf-8?B?S2wrRkRUYlFaK29BeU4rYnJSRndPREVlcXZwbk9WNmtlaXNUM1lsdnU1MmFk?=
 =?utf-8?B?ZkhuUzFxbWZXUm9jMmx0RU05WG9EeTN1QU1kOStGWElJNG5FaU5iVnRSZEpr?=
 =?utf-8?B?YjY3aFBDd1FLYXl3Q0FxN08xNEZQZ0t4dUd4Vk9rbG51NTBKbCt6NnFVR0E1?=
 =?utf-8?B?MUZHUjVZWFducVpOa1RwZWdQR0RBTExVR3hTSy9DdlQ2STdnek1yMmVHQW9v?=
 =?utf-8?B?UFdwcXIvaUVjRTNMUFJwR2dIeEphQTZzRlN2L0xmbWREQkpmcnNlUDlES01C?=
 =?utf-8?B?cG1qcHBhb3VkU0JtSGxad0xHcG0xbW00L292NXAxdVNUUE03M2hDa2ZlU0gz?=
 =?utf-8?B?KzM1S1NhZXl1NExyR3VpSklKNDExQStYZnlQUzVycFFnaCtBMDBBbHRqNWI4?=
 =?utf-8?B?NGduZDE3RDVyOUxmYXJXL2JXSjRUNXM1NzB4VXpXTHQ3WHlWVS9uWktGUXhP?=
 =?utf-8?B?RGZUZE9JSnJqblg3MEVCbi9oa1pud0FLMlVUejhUcmpkbyt2L09mQ1IwL08y?=
 =?utf-8?B?YjZ3ekt1U3A2UjBuUlU3R29Lb0V1MTdYcTIxOHlVZFFyU05RcnJGNGRlVmpi?=
 =?utf-8?B?NnFobTJodDV0UUN3eXJYUXhteDhYWldidEJyRC9Qd0w4MElpMS9ObTF6amc4?=
 =?utf-8?B?Rk1MM3BkdTJRcElvdHJNbGJSNkoxTGRoVy8vY1ZoZ0RuQXhqNFpnNFQ5blJ0?=
 =?utf-8?B?TUo4R1MyS0VjMVhHMVJsdm9qTEZJNVdoQVFZZi9QalhqdzJwNzU4TjVGQ0M5?=
 =?utf-8?B?V3hlSGhtMFQrc2FndDNXQmV4c2FOZ251MTBVWnNscE5Ydm1pbkZQOGcySGZ6?=
 =?utf-8?B?VUxVUHovdzVCc2JOQ2hDWXd2MktINlZFSWRJRWJCWldXWmZBWmc2VlpTSG5y?=
 =?utf-8?B?ZEx3R3JaK0lRa0twQ1ljQmFXMlJNWng0VTBoR2d6blFFczgzRW82a2p0R0d0?=
 =?utf-8?B?MWhKVC9sOWpVU05oUDN0U3p6T2VzMjJtQzZ0eVh5dkovMTI0TXpUUEVxUUZv?=
 =?utf-8?B?M3FTUXpZMml0YWZ4QmR0Q05zdXI5ZDluL0RIaVZqMzhNYmRXYThiZFJFUlkw?=
 =?utf-8?B?MGlnNXZvOTQ2R0E5Wit4cGx4dzF5UTFXKzdsSk5HUVFVSm9sUTZZRnZkRUkr?=
 =?utf-8?B?ZHIxTTBjckwzNU1qL09HWnpIR1ExSDBvdGRnZzdFOFc2cEl2dDZ2VnBWZnp3?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4748b8ac-01ef-4535-0581-08ddcb9be851
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2025 16:54:23.6582 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JWHB8uSxgXPqvo+DgUfcec7ocawamLkCB9gy5Jf8Wr7ogz2TVSlyrkad2qwQoi7wOy2jvKBkB64QLcgVWF6kjPvZZe2i+xTruWGYAY17wCs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6030
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753462482; x=1784998482;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sMyHspFuiOyQFVp9a/9JUx15OMhT7/dsjaqNIJEDc4Q=;
 b=k9saWgcB4Xz5Pa+MwFUPeex6N68j0Y/heG6D12za4WOnEmGK/Wgwqsy+
 05RgG/KQuMACxIo4kuS8rrR5Jas++eMRQ9r7zcmec0AhlIOTVquFQ5Dio
 MYDPfmEciWGAfc+saBqqzsa71kSeLEmFd1wx9nX4xK5f+x9FgtHaOQtD4
 3TQOCe4VXhZvvWgF3w1/qcAaAtEAvbH2DnCfSkY3eh9pKfIERJ+7OsPV4
 Yls9Ou/lQshiwntcga05Y6XXV5fYIEO2PR41l/Im0eqK5Hv2iWeEbikoo
 4viRP3/+et+ih/xMsHsxaXl6NPxfGpL21PgO066AJmdyBn489bP/2RKzR
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k9saWgcB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] ixgbe: xsk: resolve the
 underflow of budget in ixgbe_xmit_zc
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



On 7/25/2025 3:57 AM, Larysa Zaremba wrote:
> On Fri, Jul 25, 2025 at 07:18:11AM +0800, Jason Xing wrote:
>> Hi Tony,
>>
>> On Fri, Jul 25, 2025 at 4:21 AM Tony Nguyen <anthony.l.nguyen@intel.com> wrote:
>>>
>>>
>>>
>>> On 7/20/2025 2:11 AM, Jason Xing wrote:
>>>> From: Jason Xing <kernelxing@tencent.com>
>>>>
>>>> Resolve the budget underflow which leads to returning true in ixgbe_xmit_zc
>>>> even when the budget of descs are thoroughly consumed.
>>>>
>>>> Before this patch, when the budget is decreased to zero and finishes
>>>> sending the last allowed desc in ixgbe_xmit_zc, it will always turn back
>>>> and enter into the while() statement to see if it should keep processing
>>>> packets, but in the meantime it unexpectedly decreases the value again to
>>>> 'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc returns
>>>> true, showing 'we complete cleaning the budget'. That also means
>>>> 'clean_complete = true' in ixgbe_poll.
>>>>
>>>> The true theory behind this is if that budget number of descs are consumed,
>>>> it implies that we might have more descs to be done. So we should return
>>>> false in ixgbe_xmit_zc to tell napi poll to find another chance to start
>>>> polling to handle the rest of descs. On the contrary, returning true here
>>>> means job done and we know we finish all the possible descs this time and
>>>> we don't intend to start a new napi poll.
>>>>
>>>> It is apparently against our expectations. Please also see how
>>>> ixgbe_clean_tx_irq() handles the problem: it uses do..while() statement
>>>> to make sure the budget can be decreased to zero at most and the underflow
>>>> never happens.
>>>>
>>>> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
>>>
>>> Hi Jason,
>>>
>>> Seems like this one should be split off and go to iwl-net/net like the
>>> other similar ones [1]? Also, some of the updates made to the other
>>> series apply here as well?
>>
>> The other three patches are built on top of this one. If without the
>> patch, the whole series will be warned because of build failure. I was
>> thinking we could backport this patch that will be backported to the
>> net branch after the whole series goes into the net-next branch.
>>
>> Or you expect me to cook four patches without this one first so that
>> you could easily cherry pick this one then without building conflict?
>>
>>>
>>> Thanks,
>>> Tony
>>>
>>> [1]
>>> https://lore.kernel.org/netdev/20250723142327.85187-1-kerneljasonxing@gmail.com/
>>
>> Regarding this one, should I send a v4 version with the current patch
>> included? And target [iwl-net/net] explicitly as well?
>>
>> I'm not sure if I follow you. Could you instruct me on how to proceed
>> next in detail?
>>
> 
> What I usually do is send the fix as soon as I have it. While I prepare and test
> the series, the fix usually manages to get into the tree. Advise you do the
> same, given you have things to change in v2, but the fix can be resent almost
> as it is now (just change the tree).
> 
> Tony can have a different opinion though.

I agree. Normally in these situations, send the fix first and after that 
one is
applied, the other patches can be sent.
This patch would've fit in nice with the other series, however, as that 
one is already in process and this one can standalone. I would send this 
fix by itself.

Thanks,
Tony
