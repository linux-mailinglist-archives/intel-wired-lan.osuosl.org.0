Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 127C3C993A7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Dec 2025 22:44:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B579782FA9;
	Mon,  1 Dec 2025 21:44:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KXN48GeHrsOS; Mon,  1 Dec 2025 21:44:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1E6182B53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764625450;
	bh=ZlDelYmTdCC+Y6aZUPOjwCblObX8P5/vakpJ65Yo5QI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yesbvXkq/HuIno2uLsNa0I3EyzQrwhVpvRWZ92H7wxj+oLEHuLVDimtF11D6aP8Gc
	 V0TqWhlwnIRE5Xp3T5G5Jn/oaHipwqXEjY9bjH4+p3uhgtLJ3VxJ824ksoXIyqWGEt
	 XfIoeX38Fz8/QEtnnXQx5DLU1WD0vTDHQvgdcSkk0UYMf5fUuxtTrSyCPJZQie61uP
	 ZJT2/sWGF40jwaKhd2+qV4/GE0XBvIDanYNXovch0dmjNdDPATfFNF35JpgUp3bBSy
	 /B2jhcBNgkcfND3W0YtYgmjmHEbJsOG/dOx2Xw5Wzv4Owaj4LCHnSYd9mAoY7TnQ9G
	 PZ5hWPhwF+EQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1E6182B53;
	Mon,  1 Dec 2025 21:44:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 504F81BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 21:44:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4233A6118B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 21:44:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zjCNFnJMOsXD for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Dec 2025 21:44:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=madhu.chittim@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7FDF760DDF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FDF760DDF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7FDF760DDF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 21:44:07 +0000 (UTC)
X-CSE-ConnectionGUID: 8XKJcGlZTjmgKbPxe0HrMw==
X-CSE-MsgGUID: xJRMG0tORDu14nhvKP09gA==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="70437797"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="70437797"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 13:44:06 -0800
X-CSE-ConnectionGUID: MaGfHxkbQy6Rx3LFV9E9zw==
X-CSE-MsgGUID: eKpgGbk4TiOf61Bur9iLtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="194626518"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 13:44:06 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 13:44:05 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 13:44:05 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.57) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 13:44:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MceJwm/PPrRLyDaaXhpwPV67AdOw30w6XCm9Ya5wAqxX5x9WlR9LelC6GHUJeklqH7QpbJu+FiKBuZOGXLqCHEO33nFcwc5bm3T+C7z0jHr3FP6F1dpEdGj6Vy6MH//yyOJfNBtSZOiBOfN3o+8Juc9Kk0kP+gyy4l5M0d+Nr9ZfqdxGZTz4OkYq/WQeP1jh8x5SEnstLNVMVxdfJWeOoSGo0ahaqXwS6a2FR0t9pAUeauNR0Qmnnewy0cS0QIg46uj/Ich1agW1SWxm9FRxlDlEcVC18Z0NTR6Hnz3vjBcO5gYHD4otinyv5EVVc2eYfSTEh9lL5G6Y0CCcdGns+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZlDelYmTdCC+Y6aZUPOjwCblObX8P5/vakpJ65Yo5QI=;
 b=T978fSki2dWjcvGolQPVdz/QgBg5nfvNQxXmO8D3gkJ0B1DaPLCGtXk3LkvngPyJRs+5px3hgWdfUGVR3je12mbUzJjkoQD45rCx8nuL3UTyd8K5yIMbplYraw5txNI//8AE59TJiSCi+OUtZd1YuuESzYM/XofZdgBYQ9dKIR7Bmc80NWpPjwn99eBgbOj96W64E9cRtIQ1D8siJAFp5e8D3QjohhNoGiVWE/jYKdmZ/CYkXoKLkIVnBlFnfmjer0M99dWmI3vm/kUHIF66jd7RpCp9hdZjvZYC+ZDIrU4lOT+TK7lyh4xGnqftM+IEyYpUVlH0wwX8ORFQq16oUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5690.namprd11.prod.outlook.com (2603:10b6:610:ed::9)
 by DM6PR11MB4628.namprd11.prod.outlook.com (2603:10b6:5:28f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 21:44:04 +0000
Received: from CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::6b98:f467:da49:e062]) by CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::6b98:f467:da49:e062%4]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 21:44:04 +0000
Message-ID: <31f701e6-fbd3-4674-82ef-2f835d4a8b41@intel.com>
Date: Mon, 1 Dec 2025 13:44:01 -0800
User-Agent: Mozilla Thunderbird
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <Aleksandr.Loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "decot@google.com" <decot@google.com>, "willemb@google.com"
 <willemb@google.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "iamvivekkumar@google.com"
 <iamvivekkumar@google.com>
References: <20251121001218.4565-1-emil.s.tantilov@intel.com>
 <20251121001218.4565-6-emil.s.tantilov@intel.com>
Content-Language: en-US
From: "Chittim, Madhu" <madhu.chittim@intel.com>
In-Reply-To: <20251121001218.4565-6-emil.s.tantilov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0320.namprd03.prod.outlook.com
 (2603:10b6:303:dd::25) To CH0PR11MB5690.namprd11.prod.outlook.com
 (2603:10b6:610:ed::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5690:EE_|DM6PR11MB4628:EE_
X-MS-Office365-Filtering-Correlation-Id: ddbd523f-f5d2-4bb9-813b-08de3122bf20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VDFudmZ5RldvaWdNNW4rN3FuV3N1YW94bGpsbTZ4RSs1cjhUdU0wS1h0Si8x?=
 =?utf-8?B?VzVBejNISy9yaStrQm5meHVBY2xXVTFiOExYY1RvOUZTdkZmRUo0NUdXaFhD?=
 =?utf-8?B?MHhBNDJpeTA4T2pvRTVlbENTbFpzUldielpvQ05uNnRzc09TdDB5MHZNUXNy?=
 =?utf-8?B?VzVSTWd4RDhmbXA5TG9ZVTZ6VysxWUllN1cyV3Z3VTB1aW1tMGMwbktJSk5x?=
 =?utf-8?B?akh2cGh6UUU3eDNwemFvYlFTSWlmWGhKL3ZrOWFsV0ljYytldXFVSHFlZVJp?=
 =?utf-8?B?KzR4UWJ3Z3pTNjZHdVM5amhBZ1dOc2FtUUpYcWNOY0hCckFCNlkxd1hMaUxm?=
 =?utf-8?B?VzloaDd3VmxXWnJwQWpLbVErUjhXYXgyN2szVnJrMThsbmJqVDI3akpFNkVH?=
 =?utf-8?B?UVZLRE1CNDNmeDRFc3pSaDlnZ2RNQjdKT2NPZGJ0MkZQQjdmUTBZT1NmdEJ2?=
 =?utf-8?B?SGRoSkl3UGRhc09Md3NtTGxUWDY1ZmxqNzRkSHl6UW1iUDZYM3YrNkZhRTM5?=
 =?utf-8?B?TXh1cEZxV2s1NmVmQmNHYTNJVktNekUwNnljVlFMWVhGQUZiUlFvenBIL0h6?=
 =?utf-8?B?MW4zUlEyZXh6TzBXVEVxOG5Md1lzNWtub2ZpSkpCY3FMcW1RUGJjQkFiQXpS?=
 =?utf-8?B?aWFKOU1WaGRBcGdsNktCOHpIZ0NPWE1KOGtDTStQMS8zVE1WcExsY3EvUExs?=
 =?utf-8?B?RndwU00xNzBibGlnamZBUE1KRjNxdjk5NHptUEgxYWhjRm43UlZJVTNSWnNq?=
 =?utf-8?B?KzZpMDV1c0ZRNnQ2Y0EyMWJpZmtBZGZWeFQ4R1Q2MGVpYkNwcU02MFZPR01r?=
 =?utf-8?B?dXIxT2ZkWXhQbGcvaG9Ra2FhVmE5SW90a29MMFlGY0p4NFhyQ0lFVWRMcEQ4?=
 =?utf-8?B?ZWpxTEhpbkk3dUJRRVo0cS81ZldObmtBY2V2WFdXd2tESmFoVFpOSC9kRTFZ?=
 =?utf-8?B?d0pIOVNiRnpjcmRndlYyRVgwV0l4cll4Q3FRYzlIb2NNbW9GT3dZY2EyNXgz?=
 =?utf-8?B?ckFpa3o4dU42RUExTDAvVW54cWVQQUdNa01xVElzaTl6b3g5ZS9GMitBVW9j?=
 =?utf-8?B?My9NVmZHYmpmUnV3MDBtcTNod3ZKMS9YWTZjVXFmWk1lZzdGNDMyRjhYUG9D?=
 =?utf-8?B?eVZtMHJJWFVOQTMzS3JCVWY4b2VGNE0wbUI2VTR3djNrd252dmN1dDNTQVNP?=
 =?utf-8?B?SGxXQWZ5MUpRZXlacFZZN0RsMEhqdExhcWNsa3Y3dkRQSjlBT2R4ejluT2NZ?=
 =?utf-8?B?SVpuNVJlZmZXRnlrSWg0dnA5cTlBMFgxWVV5alFaS2l6c3hGMjY0dFlxZW44?=
 =?utf-8?B?UlVNSmNVZ3ZCbXBueEM1SzhON21iSThVZlR6ZWdBblE5Y2t5ZlRZQjlmcVRV?=
 =?utf-8?B?RWw3WXVzZENQTDJRM25XSkprWjZPMG8yUGVwV0hiR0V6VzFiSjJSWm1jVi8r?=
 =?utf-8?B?Q3gvU08wemhKR3pDYXhHUG8yZVpvSkM1V0dNQ2ZMdUppMFlMRjN4OGxUREE1?=
 =?utf-8?B?ckZaSGxBc0RCRENjWkpEKzBEUHFhRU40Z095THNLWUpQdzZvV2JxNlAyMDBL?=
 =?utf-8?B?TGdWQ1lENnhvWnVONk5rMzBlM0YwK2RMUDVQVUcvaElQbHZxUVFkQXZFU0ts?=
 =?utf-8?B?QkRlOUJoTk9PZTN0UzVuUEoxenFEdmJ5ZldPcnFmak5OS0tudGNTQVIzUHM3?=
 =?utf-8?B?NEpYZzZoTmV6VEtNNlBZeDRxUkdENUlray82M05US0F5NVlWQWxJd0VCMW5O?=
 =?utf-8?B?K0sxd0JyTkhmRE1BV2EyS2NDUWVIcFloL3o4c2owZkIvNVRtVk5HanNrT0RY?=
 =?utf-8?B?dU9lNkpuV0UyZi92WHYrU3ZUbk9GeE5GQmVKOXRRZTNBZWRQQlVoVGdpT0xO?=
 =?utf-8?B?djZ5aGVDSmZNZ0VLM0UwUDVSbmh0NkIwQXlRdlh6L3RmVi93VWZybTRxQThy?=
 =?utf-8?Q?BuOCnwJ7eART9z0bDAY8T346PUxm7Jdv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5690.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUNjcDZpNGtrQTlIaUNpcUV6NnhLeDVORzFFM2R5N0I0R2N6Nm0rSHI4dlY5?=
 =?utf-8?B?WVY0U1dIRU5KOVV3SEg2WFF6azg4MHZWM0t5NG0vV1FVL2dMZ0hFTGRLSFEy?=
 =?utf-8?B?VUdEbEx5TGk0SHBHWk5GMEljMjlnQlVQUyt2eTBscWMvbjR4V3ZyeG0yUmlX?=
 =?utf-8?B?ejlzYnNPaEYxdGl6UWM0cndhTitLQngxcHUzSXluYSt5bTJNTFZrQzE0ZHJF?=
 =?utf-8?B?RzJQWlRlbVk0ZWpLOU5DQ3hZVWlSS1IvbElWUFdCaWtFcE1NY3hxKzVUdmxj?=
 =?utf-8?B?Nm1TdStYWjljM1h3aGpJSGVja0hNWndWMStlS2ROTEZMVnZuQzVZYVRwWHBk?=
 =?utf-8?B?c1FNRzhRYnpqeEJlU2QrbW1IczdyVXpqOEZwM3U2NStoSTQ3MHJZNGhGcEJ1?=
 =?utf-8?B?eUUxMkpWQnoyUmZJUm9GZzRiNEcyZzYwRDlWbEI5bWEwQmhDQjZ0WVhsdWs5?=
 =?utf-8?B?U1dFSXloZkx1b0N0VS9TYlNubmVCWGlFQkRTdHFtUGo1VGtBWitpdXZnQWIr?=
 =?utf-8?B?WVVUdGdQVzdwc3hqbDhTelh4aGRNREtQaGl3VHlaUGNHclFBWThEM29RNzJO?=
 =?utf-8?B?aHNuTGhKcldhV0EwaFFheURMTlJ4S0tuTXBON3pYa0JJbEtWejBzeExGY0JZ?=
 =?utf-8?B?U3ZXRVV2encvMnVxQnRTZ1hGRnJSV2dDRWVmRVJ2dCtjVlVweHpoeHZoZnl5?=
 =?utf-8?B?UXNuN3NuQ0UxSjdJTTBmMXR2ajRBUE5xVXFtU3FDQXJFamVOaHFKNTJkWlBo?=
 =?utf-8?B?R3B1NFVFUzU2K1JSamp1M0JDYk9PMUUyRnoyTFJyYzcvTmtsclYvSzJ1MHRP?=
 =?utf-8?B?SjM1MnVJWDFKQmhtdXErYVZBUktiN21OWXpnRTVnNEdYdHdab1ppalFQaWtL?=
 =?utf-8?B?YTlWTUVLWmFPQWZ1M0puMGZvY2tnNW5oSGY4OXJhM094Vk9DL3MySW5velRX?=
 =?utf-8?B?bWVRVCt5QlVEWHcxTzdPVCtZMzhpTXdSODJuc1BMZWNaamZjUG04L2F4ODBB?=
 =?utf-8?B?VnZjWU8zc0J1LzFuV0c5MjdqeElKbWlmdThqR3FvbEozV3lyNWxVZTNoQ3pG?=
 =?utf-8?B?Wi9XNnI4SVM3UWZWZ1ZWbHZZcldISTVDQkNGQm1DOWloZ3plL0lwU2hNcktx?=
 =?utf-8?B?cGNkeXZ0S0xZSnpnNHI2Nm1EOUd0Y0cyTlphQVpUdE81WEErSk1VZC9uemdP?=
 =?utf-8?B?dXVBOUJlUXJQNm1FZjMzSW5CRjNGSkhGM0d0TFpNaHJZTlMrUktKV2NKZVRv?=
 =?utf-8?B?WGNJWWloRU95cWdxeWtRdlkxL1ZZQ1hzU3pnZFFSRUgvZEd6Q1psSHZEWEFQ?=
 =?utf-8?B?NERyTyt3cFlKSDFrRy80SWRLL3o4Q09UTFowN096ZE0yYTBoUW4zTi81R1pY?=
 =?utf-8?B?U3ZWM3hOS2xmRFhDdUx2TEo2M2NnVDlkN2ZudnZMR3oya09odWlxalN3ZGIv?=
 =?utf-8?B?MW5EdVYyRWlkQ1c2SnRSdzUzZ05mZjlGL2ZzUHZWWDk2a1p4U1BubUJGd0Jz?=
 =?utf-8?B?U2hJK212NjFTMU01WDNiMjNKc3pBNG5IaWpwVTNSeVVhbUpJcmViTW05dHBX?=
 =?utf-8?B?RHpXNUFDSmc0YlBvWVY1SmxhU2JWM1VZa0x4MHhrdGRyVWtLbUM3bUdYaXpZ?=
 =?utf-8?B?ZUZCak9Rb0V6TTEzdlJJK1UyUU1LVEJoZTE4ZWs5YXlkbEVvNFJjNE0vMFVX?=
 =?utf-8?B?a1lJYzdjNU5MNFdvTHdsTzA4d1phbTBVM1dEYnNjV2MzdlBZcElBaXJjQ25V?=
 =?utf-8?B?WlppSk9MSlU1cW1zN0E1U1JsKzY0RS9zY0h6MjRHVTJSbTFYNEYvbE1odjBs?=
 =?utf-8?B?cXo4bURuVDB5bmJENHZrM2Q1TkhrcWtmTFhXVGxPc3AreWJldzZHYjNHYUpZ?=
 =?utf-8?B?ZWVHYm8xQUxrdll1YkYyelhYaWFmTStxQldzNkgzME9GVHpSazRTb09DM2xQ?=
 =?utf-8?B?RnpVaDRhTW16cGpGeWlYWVYrWDhoMjROcXlWMURqN0E5R3pnTnAwcnFBcTFx?=
 =?utf-8?B?bTl3TzBpK0hsQ2J2WTZRZlNDZ3R2RmV1LzFtVXh3NkF5SSswT2diVzN0dUpT?=
 =?utf-8?B?YUVSNEhCNC9zcWE5cUJqRGZjb3hMSTZRTTEvOVhSdHN3cDlGdmFCWkZlTHN4?=
 =?utf-8?B?L29QL0pYOTVxTUxyYWp4ZmxrNmFXRHRLWDNaMXhtcmdMWFgxSFF4RFdtbkYv?=
 =?utf-8?B?RHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ddbd523f-f5d2-4bb9-813b-08de3122bf20
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 21:44:04.0136 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w2iudynt4zi7mJhOT9sC+5vQRwGyCDPcS3X4ku47oPmJx11udQiY1qO6hfwm+1D7EbmLSvzQlFbdNmnZqjvpag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4628
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764625447; x=1796161447;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R8JfsUDLd8jJmxls4kJb5TJN6UfhlAjqcRyyN15Rx7k=;
 b=i9ZLSZMMwBdp+IZSCBwZZObv39ZLVrm4dHl/iqpRe19Gb7LynWBEgpYh
 YlxBRe4x6K/P8OHGoC400SltdsC56EEgDMGQy0pfACb009D5/b0KfpwoF
 aHjpp4C5IGuJcYAWhGWLaz03FKo4zU8jXArU+kw3NjxvTTP/wzhzjVjor
 F7N3ecCm54wLoH1hw1eV5SC9hLAsieL/t7Yx/4RLnXi7mzYOa+JtRJjtp
 /PYYi7JpP5UUGYanIAOTBovXLkFGPl6qfP5IL+Lg+AUqpNFm5FpJM/YTJ
 3MJnQbuFUkaYuwOCe+K7Ar39LQKroU7s5n1xgWXb5ar6ZBRidzc5HU2uI
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i9ZLSZMM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 5/5] idpf: fix error
 handling in the init_task on load
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



On 11/20/2025 4:12 PM, Tantilov, Emil S wrote:
> If the init_task fails during a driver load, we end up without vports and
> netdevs, effectively failing the entire process. In that state a
> subsequent reset will result in a crash as the service task attempts to
> access uninitialized resources. Following trace is from an error in the
> init_task where the CREATE_VPORT (op 501) is rejected by the FW:
> 
> [40922.763136] idpf 0000:83:00.0: Device HW Reset initiated
> [40924.449797] idpf 0000:83:00.0: Transaction failed (op 501)
> [40958.148190] idpf 0000:83:00.0: HW reset detected
> [40958.161202] BUG: kernel NULL pointer dereference, address: 00000000000000a8
> ...
> [40958.168094] Workqueue: idpf-0000:83:00.0-vc_event idpf_vc_event_task [idpf]
> [40958.168865] RIP: 0010:idpf_vc_event_task+0x9b/0x350 [idpf]
> ...
> [40958.177932] Call Trace:
> [40958.178491]  <TASK>
> [40958.179040]  process_one_work+0x226/0x6d0
> [40958.179609]  worker_thread+0x19e/0x340
> [40958.180158]  ? __pfx_worker_thread+0x10/0x10
> [40958.180702]  kthread+0x10f/0x250
> [40958.181238]  ? __pfx_kthread+0x10/0x10
> [40958.181774]  ret_from_fork+0x251/0x2b0
> [40958.182307]  ? __pfx_kthread+0x10/0x10
> [40958.182834]  ret_from_fork_asm+0x1a/0x30
> [40958.183370]  </TASK>
> 
> Fix the error handling in the init_task to make sure the service and
> mailbox tasks are disabled if the error happens during load. These are
> started in idpf_vc_core_init(), which spawns the init_task and has no way
> of knowing if it failed. If the error happens on reset, following
> successful driver load, the tasks can still run, as that will allow the
> netdevs to attempt recovery through another reset. Stop the PTP callbacks
> either way as those will be restarted by the call to idpf_vc_core_init()
> during a successful reset.
> 
> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
> Reported-by: Vivek Kumar <iamvivekkumar@google.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>

> ---
>   drivers/net/ethernet/intel/idpf/idpf_lib.c | 16 ++++++++++++----
>   1 file changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 5193968c9bb1..89f3b46378c4 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -1716,10 +1716,9 @@ void idpf_init_task(struct work_struct *work)
>   		set_bit(IDPF_VPORT_REG_NETDEV, vport_config->flags);
>   	}
>   
> -	/* As all the required vports are created, clear the reset flag
> -	 * unconditionally here in case we were in reset and the link was down.
> -	 */
> +	/* Clear the reset and load bits as all vports are created */
>   	clear_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
> +	clear_bit(IDPF_HR_DRV_LOAD, adapter->flags);
>   	/* Start the statistics task now */
>   	queue_delayed_work(adapter->stats_wq, &adapter->stats_task,
>   			   msecs_to_jiffies(10 * (pdev->devfn & 0x07)));
> @@ -1733,6 +1732,15 @@ void idpf_init_task(struct work_struct *work)
>   				idpf_vport_dealloc(adapter->vports[index]);
>   		}
>   	}
> +	/* Cleanup after vc_core_init, which has no way of knowing the
> +	 * init task failed on driver load.
> +	 */
> +	if (test_and_clear_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
> +		cancel_delayed_work_sync(&adapter->serv_task);
> +		cancel_delayed_work_sync(&adapter->mbx_task);
> +	}
> +	idpf_ptp_release(adapter);
> +
>   	clear_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
>   }
>   
> @@ -1882,7 +1890,7 @@ static void idpf_init_hard_reset(struct idpf_adapter *adapter)
>   	dev_info(dev, "Device HW Reset initiated\n");
>   
>   	/* Prepare for reset */
> -	if (test_and_clear_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
> +	if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
>   		reg_ops->trigger_reset(adapter, IDPF_HR_DRV_LOAD);
>   	} else if (test_and_clear_bit(IDPF_HR_FUNC_RESET, adapter->flags)) {
>   		bool is_reset = idpf_is_reset_detected(adapter);

