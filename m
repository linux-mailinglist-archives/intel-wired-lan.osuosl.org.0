Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E2900C9C944
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Dec 2025 19:17:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A81140AE8;
	Tue,  2 Dec 2025 18:17:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JxoW-ybEVGah; Tue,  2 Dec 2025 18:17:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D63D64071A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764699440;
	bh=o/WOt8oaQicdcgeHdEOwy4cdgrAeI/4vAEklF3UkzZ4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RQcpJ4QeAbOGkOHOQ3XWc8V6dBz8ZmMcxOIdjaT6zaT3eKF0GS1hj1/R3yhfcKYk/
	 ZhQ9ELZot3omFzZLZghhMdXOXXQ0dtLJkljqH0C6VRTU+asu5ua3DjF9sCQ92+/4M4
	 9cXGPEznM4cDsPhD8FQ2oQ21TD5JgOwxgv+938D4aGDTGYp0hPYojnY768o75ah7sT
	 gimlEzoCLAHHPefd+f30qu1tXocavn/o77mHPvSHU5kP3tnwMxsMFX6JwtwItNmDmu
	 EMilzIbvUBuF82z3Air/04msZ6zsiYZmX4kw3Sw+AQq5ufAjGBPn7FLlA4s/lgHVWL
	 THL5Hkj2KexWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D63D64071A;
	Tue,  2 Dec 2025 18:17:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B646E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 18:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C71A40540
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 18:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AjB0Ho41kAuC for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Dec 2025 18:17:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ABEB9404C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABEB9404C2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ABEB9404C2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 18:17:17 +0000 (UTC)
X-CSE-ConnectionGUID: StUwhdmOQQKF9jGXYTRUSA==
X-CSE-MsgGUID: QRhi8cxIRf229+VO2HLX9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="69271750"
X-IronPort-AV: E=Sophos;i="6.20,243,1758610800"; d="scan'208";a="69271750"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 10:17:17 -0800
X-CSE-ConnectionGUID: vJuXao+uTmGhPUM6G2V+vg==
X-CSE-MsgGUID: Dok5RNqqT1OQT3t38k23/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,243,1758610800"; d="scan'208";a="194272312"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 10:17:15 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 10:17:15 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 2 Dec 2025 10:17:15 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.60) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 10:17:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fvYOAVk9PL9ksyu68Fq508VU4jHK2fq1nZX7li2Y6Lsezg23wNcnJMNfakJg2CCZovBiAAUWbqs+JdlA5fLdTij/K57tbNidTtmD3/K9q2j8Y39MVs52IrV3mDuOsHT6vhH6BnO/A6cpVhWMnpOzXX0ELAMm3jzg/ywrPBVsTAfzs9QAFNcVJYJg/vK39ll2LaPXGM1SbTh0LqMwIgk+s78e441pbMShYEdBBa2yskU+sCE8kYROwEqd2A9gpoVsLvn2K9pxA6wKSTz3Kyz0E9Wk4qG5gVqoRZTulQEegrBKYjnOvpgHIjTWbCwLnNBXAMFbkUYnk6uBYgDyFLOXJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o/WOt8oaQicdcgeHdEOwy4cdgrAeI/4vAEklF3UkzZ4=;
 b=oA2bo9qMqPeZ1/kFx8RmJFQ1LwupmwOGo95/4s/xxeqFW6soEQt+Jf3+wMnQnwMUnWSX2lvFkImgdo650ri1nPzTYB9/O6XqGGSjVoFTacBvDss1bK1cNaxgz9itqccxf59dzPTBvrGFN5bEHUq77wENZGf0Jd0drKtGhY9Ao7PGOtvXPU/dGKI9p1Q7L4dYfZbbKFWMm1PoIkJ5T8+e7r27KxpguWF930EfAdTU9/wl2aoUJaxuHswJjaJ12xrM6gsODssHI+oaal5UPslPGjlZs3AkGqljlEoYVQEWOby1HergXBLA+9b/yWjOaMpoqdbyqGarx95VH03lF9+J5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB5901.namprd11.prod.outlook.com (2603:10b6:510:143::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 18:17:12 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9366.012; Tue, 2 Dec 2025
 18:17:12 +0000
Message-ID: <eaf30e67-ce1a-47ce-8207-b973ea260bf5@intel.com>
Date: Tue, 2 Dec 2025 10:17:08 -0800
User-Agent: Mozilla Thunderbird
To: ally heev <allyheev@gmail.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexander
 Lobakin" <aleksander.lobakin@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Simon Horman <horms@kernel.org>, "Dan
 Carpenter" <dan.carpenter@linaro.org>
References: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
 <81053279-f2da-420c-b7a1-9a81615cd7ca@intel.com>
 <ec570c6f8c041f60f1de0b002e61e5a2971633c5.camel@gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <ec570c6f8c041f60f1de0b002e61e5a2971633c5.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0043.namprd02.prod.outlook.com
 (2603:10b6:a03:54::20) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB5901:EE_
X-MS-Office365-Filtering-Correlation-Id: e6dbae6e-2ebb-4fec-efb4-08de31cf03ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R1kxUDBaNXdjYnBpWWp4YXo5b3M4d21xMmdkUGtkTVdxVk9UZGVjVlRkanlC?=
 =?utf-8?B?TVJCbHVuYlVSQjJvaHROVUdyNEQ3NWdnZWtqZkNDR1J3NkJ6ZERWT3FDTW9U?=
 =?utf-8?B?ejRlTWg4R3RPZkFJQ1o0cHJQU2p4SXk1WEF1emVRTFdPUlZaeWRpTnNHd3pr?=
 =?utf-8?B?T2JMN1VMWnpaU1hESU9ramxkT3Y1LzRRYWgzY1l2NTVEeGo5aUZWUHhmWjhZ?=
 =?utf-8?B?QytjQ3UyMEhXblNpUUd1aUhXZ1IrUE85Q1pZK0ptbGRCOXZJamx5OVJ6Q0FQ?=
 =?utf-8?B?Y29kdk9GRDVlNndoYmxYOEVFSTRFeXJYaUhIUldGWDdia1FUUkZVeFFzNmZa?=
 =?utf-8?B?RmRiVE1nQ3dwTTBqcTlCUENmRFphTmVsNm0rL0FMMlhlallWcU5MUFQ0TTdq?=
 =?utf-8?B?NktFS1cwQmcrU3NmTEdmRTJJWEZKZmZES2ZJRE1PSXh2LzFicE9DMWZ5T2VO?=
 =?utf-8?B?NU5rRzliNnlBUVN5Wkw3dGU4d3N2N2hpUC9YdVdMZFlQZW42dDBHRlVNZ0wx?=
 =?utf-8?B?dUJCZnJ2TXpHak5QS0NzUlNoaDFrdjlhNktzR0FEQ3EvdHNnWWcwZ2xRNTRR?=
 =?utf-8?B?Zk1KS1NEUFgxcXYwdDg4TDBXL1cxMVdSOEM2eFhJWk5JS1lLKzBkSG9BVktr?=
 =?utf-8?B?ZG5XaU9QUFBMUUprMWtHVHNLM21LM2NWemlVaHJMYWZ0Q2pqbFUxWWZIU2xu?=
 =?utf-8?B?OXQ0a1dlWVVramg2TER3eGJhNUlpWXNwci9mY25vQUhlOFJWbnZ4TVlLQjRR?=
 =?utf-8?B?aW5BMHp2Z2ZkQTlvRmU0NFV3bnN4ejY1WlFPRFZGTU5KY1dqTkU1Y1VvcERI?=
 =?utf-8?B?V1lpZE05LzYzc1BPZGF1cnNjMjJtLzBITjdrSGVpUHM4OXpQcFljS2pnUFNH?=
 =?utf-8?B?Yk1UdHAzSWkyeWI2SUd3SHhTZUVTNDRoSjZjNUJiRUtiOHpNSlFPQmJWeWVT?=
 =?utf-8?B?K2xROGpvTTFPbjE3U0JyM29zSWk1a1R0VGc5cG56ZjlYQWFPNFIxOW9INWMz?=
 =?utf-8?B?MUpiTmF0cFVhaFhmSHl5d0Y3ZmtWbVdvVE0xVjJ4Sms5dm9LYmpOcFEzb3VT?=
 =?utf-8?B?UDA1TVNMZS9SVUVKT1pmYmlvbm14ajFVdkNuMEJGT0NVK2NkSHNLY0pCRlN4?=
 =?utf-8?B?MzhzQzhIZGgwd3FJMjBicmJCVUJXTFhjbGVuTDZ4OHFiVlZIbFR5cnF0R1pk?=
 =?utf-8?B?amg1S0Rra2FNREQ2MzJGejNLeDZFUFExUUVSQzZneWpqczNhbFk3UGx3R1Fz?=
 =?utf-8?B?NUY1TTBrZGhjWEs5QlB2dERrejFlcUdQSUpGaHpDSzM5MmxGT05WbmJVclgr?=
 =?utf-8?B?MVVFT2pGUjk1bE0vWDBwaTRkaTZqWnU0NkM2MTFwMHNKOEhJNkdiRzdzS3hj?=
 =?utf-8?B?MHdnZGNtczlDRWpqSGtabHRxcDd6WW81MlZFK2tseEdkUzhjc2ZUcFNPWDN1?=
 =?utf-8?B?THoyVGRnR0QwSzZIVVp2MFpORDVLY3Z4LzhTdHlRcHhmL2lhTzZtTW0xaXNI?=
 =?utf-8?B?OHR6ZWFVT3Bvci8zbm4vNlV3Q0t3NzFUb1RuZnpyZnA0TGs5U2NyeUM4bmVH?=
 =?utf-8?B?YkxIUGY5a05MUmtyR1ZSV2NONklLRDdadCtBVVRnWWVJdFBKbU40SmhLNDZV?=
 =?utf-8?B?bDJ1TEFLRUtvOUFNbUlrejdsSXZZUWFydmZ3VklreHk3bXluelhOcVpUWWFu?=
 =?utf-8?B?QWVCUHVESlNPOWsreDQvenNMUmJuMkZQSGpsQnhQc2NlV0lvUDFNT2Jkbncy?=
 =?utf-8?B?N1daeGNmTGdpS3p4QVVFUnFKWDdBVU9nd2plekQ5MXdDZWpGeFh0c0JCK3Nj?=
 =?utf-8?B?RFoyYkI1UGRmR3ZwYzI0Q2htSzltTEM5WStERlhZU2NhMWNMSzQ0WlZHZjJx?=
 =?utf-8?B?dEVhVDUvRjFzenBzTEIyNURwa2k2L0R4aXBYQjcwcWcrUUEvK3FBTFB4b1lN?=
 =?utf-8?Q?8UGgyAlox8tpXw7XtF+zz9sZl/OyLeYn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3liUFhWaGt4akhwVElrU2hrZFQ5T1AxSTlwZkhzb3dZME5CTXZlQjlIY1pX?=
 =?utf-8?B?K0p4bjRvK3RZTWluQi9uZzhZRWRtVk1UaFFqRnFrMUpQb0hKeWpjeHd5dXZk?=
 =?utf-8?B?eDZPeHFBNHNRSG5mcnpnVU9XZ0p6MkRKL2lVZW5ZcElIbm5QVXRXcHpuQlAy?=
 =?utf-8?B?UzQyc3A0eW1ZVFE2Q0FxdWhPZ0lqK29JbGt6UnE5bVZPWWRpR05kVmhqY0JW?=
 =?utf-8?B?QWpaQk1rMm16OHNvNlBOQVE1NlA2d0Y0MWlCRDJRdGp1SmU1VStTNFQwSU1Q?=
 =?utf-8?B?d1N4YU5RVVg5UGJlQ2xqZ2t6eTkyZ2lWUlBNUmNVMFQyZnpDMC9SNDFMMFJx?=
 =?utf-8?B?MitTY0lMQWVuM2pOanV3RjFYOXJDSDlQUmtyY2Y5SWlNY041RHh0WVk1Y2g3?=
 =?utf-8?B?bkhmZm9PYnBWYmE3Qng3WnI4NmtpcENUdHRiaUVETDh3VW1GVE5EOHVIeFdM?=
 =?utf-8?B?bG1TbVJmTlYwckFyUUhVM21GVmxtRGVvek5FSkNIMkxUbFRmT1FFWVl3V016?=
 =?utf-8?B?V1BCdlRoOGlXL2k4dFN1UkRDVENqVlhVSExneGdRd2NqNWsyNGE3bkc4dTNw?=
 =?utf-8?B?ZDFuMDNhM2RrWXV3MEJVUlpMMGFWN2Jzd1J3eVdJTGdHZHQ4cVluaXI3VnZE?=
 =?utf-8?B?UUZuWXJkd1FkWVB5Wit4Uk5NZFhxM0YwN1FWaG1lbUV0T3JJL04yQ1ZuSm1L?=
 =?utf-8?B?UW9TbzRDWTFNdjdZZHRvMU1XRURqSWpLUWNxRHUvTk9nUGpQVGNPQmxVMmxm?=
 =?utf-8?B?TTdTVk9MME5TZXhKUGV4SWU4d3BsZ1ZiVWhXR0VpZGVDNG1BQWFBcktJdENQ?=
 =?utf-8?B?WXRzYzJqYjBsU0tjRGR5cHZzTGFPb1FhOXREbWd4VjkrRS8wTjlmak1LZFhQ?=
 =?utf-8?B?RDFZalNScXgzMm1GOTBtU0dGOURCWmo2azgwTXpKdXl6eE5mcUZqRWMwVFZP?=
 =?utf-8?B?T2ZJY044VGtvUXE2TEpTNEpiWGhxaVNOOEw3ODF0Yk1UWUUreEprNVlaS2VP?=
 =?utf-8?B?NFdCS1dTYzRtNkkzY0dSa3dkUVQxUktmdm80RnJva0ZOaXo5NFlNZ0w3UXBC?=
 =?utf-8?B?TUdlVHREK21KR051SnNsaWpQTGhISC96MXZLcS9FWWVVMG5Ta2pIRTdkdG8w?=
 =?utf-8?B?VWFxeXFicHluTEpFSzRMeEtUOUphdDlmT01jN2ZpRlR1L2JwcDg4TlVPeUI4?=
 =?utf-8?B?akNCNForUVlqN1VFUVdBQVBvNVJBZ1JHaDV2SzM3NFptWksxdDZ6MHRPU1BQ?=
 =?utf-8?B?enFvTUpJM1NIZTdNek1XYlJndER0dkhjeHFNV1RaN3MzK1NHV1R5eFh1eHBp?=
 =?utf-8?B?V1owdkd6SFZEUkdtd2pCb1pkQW5EcW5YQ1NmK0liQ2dmTG8xMXF1SStXWnJD?=
 =?utf-8?B?SlFrT285Y0hUTnhUaVVsQy9OUmF2RmU1dHRUZnAyQTVGSWU3NFRTR0l0MmQ2?=
 =?utf-8?B?Z1R6ODlTMFdKNkJQaXZ5SUVWL1E4QStxRFlNaXRGSFdnTTRZak4vbXJpODVo?=
 =?utf-8?B?cnZQc3BZRFJGOThMamtJcjYrSGVoaVdDN3ZIVGdEQ1VBQVVvYkNXU29hRGs4?=
 =?utf-8?B?K3hEQnN1Ynp4eU5VUFRVNkxuKzU3RExGL2Y4UUF6VDR3Z2tadlNOV251R2pY?=
 =?utf-8?B?amhCeC8zSTJZeEV1bU55UjQ2djFMc3A4NDlJK1Y5UlY1ZG4wVS93RnkxN21R?=
 =?utf-8?B?OGRTYUtDVkFOd2JCNFBNZGxDNmdlSXFZTmdQWkF4V0NmTEp0TGpWemRLblBD?=
 =?utf-8?B?K1MwSjZRL2w4dTByNmtmdXBYV0kyK2VJNUhmR2FTeHNpdzZoMTd6bXdMaUxL?=
 =?utf-8?B?Ukh1MzNVNGp2NCtyMTRmdHcwalpuQnZHRnJZUmxER0tnRWMzVkQ0WUhsbUxE?=
 =?utf-8?B?VWc1QW80aERoSkE0Qm9oV3htemdSY2t0MFBSTGFPSXFuSXVnVjhPbkV6WWh5?=
 =?utf-8?B?NkVpR054bWJzeG9qV25CMzF3Y2Z4MVZzT2F0OUNUL0duQisyWFAvbGUwTFl4?=
 =?utf-8?B?MjZ5Z2FKTmNKMEk0NDI2NGhLZ2hUS1NvT3JJQVF1Vk5sSEFrc3N1dm9WWHhF?=
 =?utf-8?B?SkxUbjZpemEwRE12YTJXdnFVaHhQUHg5UmJIY0dpMkVpNEpYYkhMVnFnd2t4?=
 =?utf-8?B?M0xzRHRzUEhneWxCbUpqRUUyRlZUM05LUVoxL3JJZUVZMnRtZWxPanNMcllr?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e6dbae6e-2ebb-4fec-efb4-08de31cf03ae
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 18:17:12.4521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lY65fazKgxGo+jK3rEHHInFqGSl7flfArTNXfCFFTOuJ0QMkEb4n9TjojbIsRuPurW2WHoB/HRhZOhnPpiSZOYB1gsEsh9oWz7f96BpV560=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5901
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764699438; x=1796235438;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZS49zGHbcfRUjzW9AgQWBRJEIfhVFNGEiioDKBNdbkY=;
 b=TLlXUYSx514ZeH3UdGWY9O30xoQEYG6RbeT4472U+tRupRVJ473kVtfQ
 p1oi4vgPnceqdi9C8EspyZxAVqv5L/KRiFJmHNwpfaH5nLnUzbSs4VpDy
 A4t/AVQJxC+iXaqfUl+znx/qV/nkbcVDwvtu6tpPik8quxAUemrL70thL
 T5rX6EpKTlpZDtBjkc4DIA2dj/Myz1jwMr74dIm4kvJNEr6TDakRojOAi
 9qseWxFNCJWekdxwgLvEDJtbvzSk9+F9AymlpOgHzem3VrNIqC6tB2+aS
 KNN/mN8LfM5+lIJgG4E3ZmBiJvucPT/+NIa3hzQEd1EHzhbbIHT2jy+uP
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TLlXUYSx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFT net-next PATCH RESEND 0/2] ethernet:
 intel: fix freeing uninitialized pointers with __free
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



On 12/2/2025 11:47 AM, ally heev wrote:
> On Mon, 2025-12-01 at 13:40 -0800, Tony Nguyen wrote:
>>
>> On 11/23/2025 11:40 PM, Ally Heev wrote:
>>> Uninitialized pointers with `__free` attribute can cause undefined
>>> behavior as the memory assigned randomly to the pointer is freed
>>> automatically when the pointer goes out of scope.
>>>
>>> We could just fix it by initializing the pointer to NULL, but, as usage of
>>> cleanup attributes is discouraged in net [1], trying to achieve cleanup
>>> using goto
>>
>> These two drivers already have multiple other usages of this. All the
>> other instances initialize to NULL; I'd prefer to see this do the same
>> over changing this single instance.
>>
> 
> Other usages are slightly complicated to be refactored and might need
> good testing. Do you want me to do it in a different series?

Hi Ally,

Sorry, I think I was unclear. I'd prefer these two initialized to NULL, 
to match the other usages, over removing the __free() from them.

Thanks,
Tony

> Regards,
> Ally

