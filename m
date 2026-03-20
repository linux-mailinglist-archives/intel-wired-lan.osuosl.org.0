Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMDTEb29vWnyAwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 22:35:57 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A71A22E16FC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 22:35:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 454BF41E90;
	Fri, 20 Mar 2026 21:35:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HbGQ7ANFGGlE; Fri, 20 Mar 2026 21:35:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DBF341EA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774042554;
	bh=AbBz/RwdGvLm5U5TcHpA33iDWlBZ7CQj6jvZycPYyRE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oIlTcvPPJQsbldP6Su7EYoFJwwaeqhsisf4pwgZLayig7lrzC4ievjkraKdrDqEKO
	 HTa2aUU1ZH/IHyKmrbWVH9W6Y7t211e3nTArBcUJwHz2kw5u1bb0MjFxw3BWsK1ojL
	 bmJyoxXHgVKGObQFlANrwfwA1jT3CqTzDQkIQYyXZ1uceyP8YBQabjn/izsN729VvF
	 VWlBRJFLBUnWh3FUzc1WvNk0IVO69hvd79CLB/g/LnZJIy4cQRs1GCC5bSn5BvNPu6
	 fqVdm2CM9qvnImpFxKIoQhSRufDxl3qOVzNWqEpczoRq7xqnx8ATp8EnWXmZlEAhQl
	 4smWtYovTvVKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DBF341EA4;
	Fri, 20 Mar 2026 21:35:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D246D25C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 21:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CF18541E90
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 21:35:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pCfQgEORSH1W for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 21:35:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B731141E8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B731141E8F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B731141E8F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 21:35:51 +0000 (UTC)
X-CSE-ConnectionGUID: 90C+fkcsQvahtJD61MahiQ==
X-CSE-MsgGUID: 5mWsTbU4TRqKpbM1bQsEvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11735"; a="75023072"
X-IronPort-AV: E=Sophos;i="6.23,132,1770624000"; d="scan'208";a="75023072"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 14:35:51 -0700
X-CSE-ConnectionGUID: i46r9TMUTL+3DiIRn4YA+A==
X-CSE-MsgGUID: uiJeIjQWSFupUS/4+DBUNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,132,1770624000"; d="scan'208";a="219160322"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 14:35:50 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 14:35:50 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 14:35:50 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.32) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 14:35:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kiUuM7qEmB+1zFiznqtYt6Ae4cRQBRWpu3ppzwqvEmSFf1qIQNXuT7xzT1nCqFxp0XFbpwS+evFJMSKM4WGrXppQnInTkXdPOfLo3AblwaO66QpqdtYGr0VoFgyhtOAZ48m/0cRS+mGsCyRDdupHnSKNvYuqBgki1krFpXdfF/n6/GyuJ/mqMDBJW0ZDW7lOOjojmhZqHHZJ0nD62b/y38dg2LJLmooXNCnkdF7yP5amNZVUVTHboapQ8H853mAjx3jKPtFjeACQdBv5feeHF6PH3FpDGI4iu7oEq2BD46LILm9luDv4swGrOHURgOUg/LZLP3JU/7AmHDMtw9EMew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AbBz/RwdGvLm5U5TcHpA33iDWlBZ7CQj6jvZycPYyRE=;
 b=ZlbALQ0QKaZkdDn/+aYp0icca2pj9pLbJMIENOZ1SC9ZwrLC5haxniKPV9f0dB3Qax6vMfMif2W3P9RZeOTlCap51JPOE0NpPnbdN+Zc+180UmCYQ10v2UTnDsxrXJs31mpOTINP00Z+Vbk0yLGYjVQM7ZrCvAh2EPXX4wy1lmxMFfTEvSuEKcw+Epy8pGpJB1jPwtY8e5JyXRrSCK8zhAWJadKyJFc51/BQgK20oUbF2v/IqKCFcM4ezYZfR8dNsFs6H4tKU5OelAUMzo4gAHlZ4XMD7Opi62C0I7XsqmRZpuEP7y1FBxknFvSu2U2yG3TGsqwlkDW2tbMiYFW4aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8168.namprd11.prod.outlook.com (2603:10b6:610:186::20)
 by CH3PR11MB8344.namprd11.prod.outlook.com (2603:10b6:610:17f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 21:35:47 +0000
Received: from CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee]) by CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee%5]) with mapi id 15.20.9745.007; Fri, 20 Mar 2026
 21:35:47 +0000
Message-ID: <0275cffc-7a61-46fb-9d1e-c309ac680b80@intel.com>
Date: Fri, 20 Mar 2026 14:35:42 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <daniel@iogearbox.net>, <ast@kernel.org>, <willemb@google.com>,
 <stable@vger.kernel.org>, <decot@google.com>, <bpf@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <edumazet@google.com>,
 <netdev@vger.kernel.org>, <pabeni@redhat.com>, <andrew+netdev@lunn.ch>,
 <kuba@kernel.org>, <davem@davemloft.net>, <sdf@fomichev.me>,
 <aleksandr.loktionov@intel.com>, <aleksander.lobakin@intel.com>,
 <john.fastabend@gmail.com>, <hawk@kernel.org>
References: <20260319224159.23885-1-emil.s.tantilov@intel.com>
 <20260320174843.137651-1-horms@kernel.org>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20260320174843.137651-1-horms@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0128.namprd04.prod.outlook.com
 (2603:10b6:303:84::13) To CH0PR11MB8168.namprd11.prod.outlook.com
 (2603:10b6:610:186::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8168:EE_|CH3PR11MB8344:EE_
X-MS-Office365-Filtering-Correlation-Id: 53341f03-6705-42f5-850f-08de86c8a5fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: igXV5Hh3PGoXGxg8hz2UBoH0nG1Mwhy4njazgjIjlJFBo2MW4xCL2c5bNPOczUzpQyN+F4BsOuv1thbjDfqSXRX1gXCmAgYuvyWWpKkIG8nfBwQe/OR3mim8/mp7bg4FRGohy4cOw7HEUfrCTi3C+Rq3LzHAxlhvmG+mojhc5zouQYx2WmmaDiFMHS3A2fexO92hcfYvGVvbfBa98KCT7ADlHlUKzH2mYJSUMa5BCFsujF9iYPc7fdVdx05mV1jDlYJz7KDO6fQ9UOB0Fhus+INBPnK6ARoKgwNZM7D4YDkA2KyfHdiDmhIneUVg1T3MB6BBfaBWvPfh7VKtyDAVFaR6+TXvxQ+CHDvpCwef5iTsyAEkRi+3uub/Nfg8TdUStqNQ+YK4i4BSkUeyV2ujUNUdzEQmYiAgJU4QBqULhabyjn9ScPC+eiwlHQ4ex47HLqRVUbjMvRGEGzkIlJ1S/Y8ScL0P2I9+rKU09dWblHiBtH+Oxlkw0iob1q/m1TAzS81W50Reo4p80/vYRXrMrNRMxomU90e197FueA4cRW2ORM46CpOhCu0beJJhGpjK0V6/Zq0eGevdbRT1wALRuI3UMR2bd4Kss0ChBpYkD/nSstr8jRVGNgPhBE4kaRwU2p4DZS4K/QYn+RQr0paupLXQd0l9UvbFD0YVTrdSFKuRPASn5bwVT3/jkRwJpfTo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8168.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUowRk5iTUFUcUFxSW5sS0J3ZEFUSWVjWTJqM3RWTFpSSDAvQXd5YmYwR0xQ?=
 =?utf-8?B?MXhyTEFseXpQSFRrZU1malFXS25QNXUwZHdBZTZsV3M4QWhsV2tlYStERzNI?=
 =?utf-8?B?aVhKakFYYkk3SFdxWCtNZ0R5TlN3bHdISm9zU2tCZjBXQ0xLQStwWVhDaktp?=
 =?utf-8?B?Mk9MWUZJNkpMK0R6VVErOU5vM0JJZHlrNlNyZVA5dWYzSC91bjJqSE9KRlRV?=
 =?utf-8?B?YVBqdXlmdUNoWlZFd1FuVmVDSzExWHJEM1NBZXhRdHF4Q3lQQU1acjFUL2sv?=
 =?utf-8?B?dng4VVZESlk2T00xWUpYL2Q4ak1HaDVTMFRZOFA3TWYrdkx5ditzblhld0Rr?=
 =?utf-8?B?ZFhwNDNZaitoaG5RalB5UTNtQTlIU3ZvZHBDRFB3SGNQa3h5aEwyelVyYitE?=
 =?utf-8?B?YTFmakZ3aWVxeHlsSXpBNW45WWNOdzJZRnladjRxeU5qeG9FbVBwYUtMcGF5?=
 =?utf-8?B?M3RsODZzaEQrb09PQkJ4L0k4UmNCa21rTW5CZUNYbmR5TW03ZjllYmxaSDV6?=
 =?utf-8?B?UlZ0UVAyUkFXVWVuZUgyRTBUSnhFTGVKRDljWEhWd1NVb01SVFdaOFhHR0pO?=
 =?utf-8?B?SUFhbFNhVlZVMW4way80N3R0QytSblhIMGhlL05jOWJweWJWOHQxNVlhTFBG?=
 =?utf-8?B?QXVDSEJ4RVF1QWgwaWhrTnFULzhUeTh5MkdMZGc2ajMzNFRCZENXUlFlMVh4?=
 =?utf-8?B?MzQ3dC84SWM2ZTlZdFdJbzNySDBlbzhWcTgzd1ZYcTdFMEtyZHlOZTlWQUk5?=
 =?utf-8?B?WTRiTG1YMkhXbUYyNkI4MDg0WnRvUHhGSk9FWHBwaXF5TlpXeE1vbm9ZL0Vz?=
 =?utf-8?B?U3MwQ0tHQWd0TGVGY1ptYzJMVXBsemhtU2VRZ0JVNHhrN2l3NzRIeEY5ZFVh?=
 =?utf-8?B?Q2xDTjc1U0VCVURDN29VN1BTS2RtaWRxZVFPZ3Z2NVNIL0NyWlFRL2VidEFB?=
 =?utf-8?B?RUU4U1hBbWI5SmpYeHhBMnVwRk8rK25zWklnY0FONkphcCs2dXZmOU05UGgy?=
 =?utf-8?B?aFloaSt3dm56dDlCK3lGc1V1UTdoMFZvTGpJdTdjeTJmSnVRblRzL0lVSmNo?=
 =?utf-8?B?RWdTNVdoWDV3RkdIaHZmdmpoL1BWSnZzUGFrYTB1NTFhYWtYUGtab1ptT09O?=
 =?utf-8?B?YmtVTkt5OWlVZVNERzg4dWdBdzN3K2M4bE50NzJ2WTRSZ1M2M1Fuand4MHhY?=
 =?utf-8?B?Q0R6cXlOY2F4aDlUaTh2NHdhYmhaNDlBTGliNitiYjVXa2EyODRMbGo4OXdx?=
 =?utf-8?B?ZG91SkZTVVFWNExYcThKNk1NNHJyN2dzNVFmM1ZkOFN3Snczam44U3VlWlR0?=
 =?utf-8?B?cm1sRVVSS2c2RnFTL3RDV1pnSUxxY0xCWG03RUE3bnFXS1R6Y09OL0tGOW9W?=
 =?utf-8?B?c2JqbEhrZ2Zhek1UcG1uSTFvaWVzNEJCTG5xOXEwWUhFbVlaUDM0ZUQ0aXRP?=
 =?utf-8?B?Vi9ud2Y3WHhvQ2pLbVdpTFNGNllSZUs3eXRIc3JjZWo3dXV4d1hDYytNcUxh?=
 =?utf-8?B?TERka3FRSzBwdllzNTJRVk9yUWxZbVpWUzVGaktYNDVQVTFIdGxuMHRyd2tH?=
 =?utf-8?B?RWlxb1p5WXdDZTE2Y2o3UklQWCs1eHg0UlU0djdhaEVmN0xQZzB6SDJka2pF?=
 =?utf-8?B?M0tEUUZVL3ZRUmZ0L3VsOUlpcFFXZnlPQXl3ek5odW1mbm5zV1kwd3p5b3Ba?=
 =?utf-8?B?TG5rRmlTc2REd3VlVEpPTzdmcGE4dFlHeWJTOS9pdXcrV3p2U2pWMFltb2V0?=
 =?utf-8?B?UUE1cjhZYU9jaTJGdmM5UnkrbStVblpnZitWbE5STXJSbXN5ekNlaXh1blFY?=
 =?utf-8?B?UWthSWpCdEZlK2F3ZDc0VHc4bVFKYUgrTDNpU3pXaXNhMUhKaUZOalRQRngr?=
 =?utf-8?B?L2pyRWFidExHTzZ5cExOdTYyaEV1V2VGZWpxYmFnbTFGV1hGaUVnUlhrTXhG?=
 =?utf-8?B?SFpVMjAwdUdnT3YxclR1MGdJZVZiQTEzUGRGclEwbjRnQU9hcUdCRVEvcTFT?=
 =?utf-8?B?Yk5UNmQwUlJBRVgrb2ttR1JBTGVqOUE4czFwb3RIUlgzc1ZxZW9UdTlQeUVt?=
 =?utf-8?B?NzhBTkFtNi9yd3N1ZnZ4Mnl0djMzaTIzSnN5eTkwNDlmYjd0VjBwNXBYckVT?=
 =?utf-8?B?NHdGNTNXd29GSzI3SG12bFRwUUFiRy8wejlUaVFLZFkvV3lGeTluSnV3a0ZR?=
 =?utf-8?B?WmdaZXIwTlY5bjE4SEIzaVhaVE1ISFhjak9WNDd5bGxodmlURHpOcXoxUkN3?=
 =?utf-8?B?ck1NdERNbkZ6MkU4eFFQemg5MWpGQXdnTHhWUStZS2gwZzYrL0FCdEVCTDhq?=
 =?utf-8?B?eC9WZkF6cncwZlcwdC9CK3gxSDEvV0F3aE1aY05ST1pWY2dKeU9HVC9VVTNW?=
 =?utf-8?Q?0nlZDqgKriMmso5Q=3D?=
X-Exchange-RoutingPolicyChecked: waSZTGBK364Y7w5ZNmhI/uyJzDpIfcvS6s2PgE2G/Oog4n+GhATjgnUUqVWQIly8yLRBBBAuB3fAbI13f/e9OH9atHWOvpHtT1LwROqpG3WgIGPsOVFwq8NyDI+GbaP3SNSLKH41mYZA7Rssq2tUNcnSKRLPwFXhjl8uqpfJylCj0/R5QGoNGOVAJs54QN+GB/U6bHEVAVB72i6hz7SAAt9H8tM77Ms6PV/QOs6DGsoKY7wqggCVJn/wrtL8xHD7Nn+I7XwO6JNBg87ZWyTqkl/Opu9B+K/OhGerqg0N2QG0LYH3Ny8zRvxWg72vNnNNrr7Aohctd92ITSUOOK6s+A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 53341f03-6705-42f5-850f-08de86c8a5fe
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8168.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 21:35:47.1345 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: miDNgbzvMM1I/3J4mFYPCpBKBXHlWVceUctJCBwpBGnwz2mF6yDrfjhcPR5oKgjPu9dACev/bEKUTd1lstVdI5ker+SkxnH+Pneam0uC58M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8344
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774042552; x=1805578552;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AUkJkQ5T+mPJALjddFGc3i4h385UtRDvOwZ0KEveIws=;
 b=KYj4xdkRlCwEyxvyQ9U4jPe1EsV3kWrsmLEurb8J7d6B9c1gI0D9/tQv
 5GnKvscIr0NOxnc9DhjXt4PCrBznZP0TBGV9DJlecfliBRlaut0oix4bG
 nxJ6g5KfouglBKzukcnqI9n6ItBJUN/jrnzvTBEBE2gBdAMTschF8eJOh
 iI/DTRHPZXW6VziCzfXz3h7ngIAVrpkXB57xVIj/Og7EdLldoMEtlvhfU
 1L9Rrmhggbw4gMiyCNhGokbefcIgRYnUIcTKK5GRJWiA2D4IRR6/CQnuz
 HPErSvOj2oKhW0Gau9IrQzqXDHnfO1gIxSvV+qxvPQCPVU3Z18AYbdlDI
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KYj4xdkR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix xdp crash in
 soft reset error path
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:daniel@iogearbox.net,m:ast@kernel.org,m:willemb@google.com,m:stable@vger.kernel.org,m:decot@google.com,m:bpf@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:kuba@kernel.org,m:davem@davemloft.net,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:aleksander.lobakin@intel.com,m:john.fastabend@gmail.com,m:hawk@kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[iogearbox.net,kernel.org,google.com,vger.kernel.org,intel.com,lists.osuosl.org,redhat.com,lunn.ch,davemloft.net,fomichev.me,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,linux.dev:url,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: A71A22E16FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/20/2026 10:48 AM, Simon Horman wrote:
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> 
> For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
> ---
> idpf: fix xdp crash in soft reset error path
> 
> This commit fixes a NULL pointer dereference that occurs when
> idpf_vport_open() fails during soft reset. The fix restores
> vport->xdp_prog in the error path and updates the restart check in
> idpf_xsk_pool_setup() to use IDPF_VPORT_UP instead of netif_running().
> 
>> Fixes: 3d57b2c00f09 ("idpf: add XSk pool initialization")
> 
> The Fixes: tag may not be targeting the correct commit. The primary bug
> being fixed is the NULL pointer dereference crash in idpf_xdp_setup_prog()
> that occurs when soft reset fails and vport->xdp_prog is not restored.

This is not exactly true, this is just one of the instances that would
cause idpf_qp_switch() to be called. [1]

> 
> Looking at the git history, this missing restoration was introduced in
> commit 705457e7211f ("idpf: implement XDP_SETUP_PROG in ndo_bpf for
> splitq"), where idpf_xdp_setup_prog() was first implemented. While commit
> 3d57b2c00f09 introduced the secondary issue with the netif_running()
> check, the main crash fix addresses code from commit 705457e7211f.
> 
> Should the Fixes: tag point to commit 705457e7211f instead?

The reason I chose commit 3d57b2c00f09 is because it is the commit
introducing the function where the crash is occurring:
[ 3179.284770] RIP: 0010:idpf_find_rxq_vec+0x17/0x30 [idpf]
...
[ 3179.291937] Call Trace:
[ 3179.292392]  <TASK>
[ 3179.292843]  idpf_qp_switch+0x25/0x820 [idpf]

The setting of the restart variable is where the above commits "meet",
in that both conditions - netif_ruinning() and idpf_xdp_enabled() [1]
can be wrong:
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git/tree/drivers/net/ethernet/intel/idpf/xsk.c#n571

which would end up calling idpf_qp_switch() instead of taking the
alternate path:
	restart = idpf_xdp_enabled(vport) && netif_running(vport->netdev);
	if (!restart)
		goto pool;

Which was introduced by 3d57b2c00f09.

Thanks,
Emil

