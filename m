Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 743669C5C89
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 16:57:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 302D540589;
	Tue, 12 Nov 2024 15:57:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fw9p-sDAsbXJ; Tue, 12 Nov 2024 15:57:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41FB24058A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731427030;
	bh=FFocUE4Kbucvuai0zcuuXGscG3WFg18UHuWPBIkEWFw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j981EgAHXlp7t/1ZslcYlNIOpGScdpSWo4vw4Tvawql0xlBC54dHL4SbsALTX9YNZ
	 6K3JQ94XzgasjQsU5iPRwZus5HSBtOKwY9uEvpU33jEByaRcLFb3cUJzC6o1lxITpL
	 3tLl7whau8zlJvCNL8/ycEKWOP7eW1aoHniejOfBiLigov8lr0RORHTsy+kpL7p8hH
	 oowzwx4LwUqloHTi6pYNfnpgltTXnEJnnGzNU/um8LGhoUzpROSegpUVjJBhy+Gr8e
	 VMht8LOBvevYKEgLeQamOkuBn7Z9JFGGcH3Rqcw2XuGxWHg+94z4L7YAW0boPg/M8l
	 vwYvGkROUjzlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41FB24058A;
	Tue, 12 Nov 2024 15:57:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 18C75725
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 15:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EDAAB40583
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 15:57:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bo0rACDGZ7Ae for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 15:57:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0147A40585
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0147A40585
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0147A40585
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 15:57:05 +0000 (UTC)
X-CSE-ConnectionGUID: fqwLQYwWS7WdZYysCLUD5A==
X-CSE-MsgGUID: i2YgaaMcTqa7SQYaEy5P6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="30672858"
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="30672858"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 07:56:55 -0800
X-CSE-ConnectionGUID: GhWCp56qRUO/M+ye9onKbw==
X-CSE-MsgGUID: gWWyHrlWSy2A3FYmgZu+YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="87952261"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Nov 2024 07:56:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 12 Nov 2024 07:56:54 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 12 Nov 2024 07:56:54 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 12 Nov 2024 07:56:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x6xRDD2ccMjurM8ieaYJbDhFTrKQVKTixXk6nIlCHsJLBD799TkbYpwzqhnYDrN68brXzrknbxKlYkKmcqu47Qz7tt/uPSROfHdY5F3d3OyM9UOGb9hkqi//XekZKtegQfTPXKgMey0YQPrJp08WGMsSs733Q1h7CsGtNHWlq7TkD20zAYOUwc90sj9pMFpmE9kczAPmItDLdkyatx+HIXRP1lktHZ/SHzT2NaXHfuus344Bt3UGIsrwxO7Gy1nYxa1Xs7TFFjtXE5fJVp/x15F+ThSw04tZ+J4S4wG78CtJIIYPUV5ZqFPkaufv6TxPD6B/GK+0SGBWEDamfvgg3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FFocUE4Kbucvuai0zcuuXGscG3WFg18UHuWPBIkEWFw=;
 b=p3pkl1pXu+beUcXdzgkw9Ybvf4iCgXsxoHfmmrBW1oIovNtfQEPudrUqEqtxrOwun0kAOZXI0+JtoXrWOqReOexcur3yeWAwbi2pNGoLASMEC3Y1lugU+TM7JSic3K876g0sQnw8TLf72zK/gi2G6cB1j/Mkt39liUOfyFce1bi+v+WuvkoKR9G4eVxrQW+yrlqG/OrnGXhWjgaa7WSO3DnnnPHtczPY1tvePrF4o38VtawJB4NB/FF+IVUG/rdj37lsTFK4ghSH6SBwg/Oono/iwNbSE4eFWA4AdruHjiXaoPjwv5D4AZ5T9Wvrf2rmucbHBYWqRbhKSsT9DkBVfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by IA1PR11MB8801.namprd11.prod.outlook.com (2603:10b6:208:599::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Tue, 12 Nov
 2024 15:56:51 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%6]) with mapi id 15.20.8137.027; Tue, 12 Nov 2024
 15:56:50 +0000
Message-ID: <e7200ce3-97cd-4ce6-accf-e3041bc3eb13@intel.com>
Date: Tue, 12 Nov 2024 16:56:43 +0100
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Jacob Keller
 <jacob.e.keller@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Wander
 Lairson Costa" <wander@redhat.com>, <tglx@linutronix.de>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, "Clark
 Williams" <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 "Simon Horman" <horms@kernel.org>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, "open list:NETWORKING DRIVERS"
 <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open
 list:Real-time Linux (PREEMPT_RT):Keyword:PREEMPT_RT"
 <linux-rt-devel@lists.linux.dev>
References: <20241106111427.7272-1-wander@redhat.com>
 <1b0ecd28-8a59-4f06-b03e-45821143454d@intel.com>
 <20241108122829.Dsax0PwL@linutronix.de>
 <9f3fe7f3-9309-441c-a2c8-4ee8ad51550d@intel.com>
 <20241111125345.T10WlDUG@linutronix.de>
 <2e6cea97-0ebf-4767-b014-680a0502e1f9@intel.com>
 <20241112070450.5917c986@kernel.org>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20241112070450.5917c986@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0048.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::10) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|IA1PR11MB8801:EE_
X-MS-Office365-Filtering-Correlation-Id: 225ea1b0-5091-4d38-b516-08dd03329ea5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c2s1ZlBGb0NmS0hRNU9mS2diYTNhL2M1T0dwVlF5c3p4Qkl6RmM3Y1JaNWo3?=
 =?utf-8?B?dW13djhaVGR4WUgyendLVENWNkxiM24waUJyc01pcmozVUlxWW1ObFlraDN6?=
 =?utf-8?B?ZkVTSy80YmFOQUpzVmEwTnB4N3I0amR5OFI2SW5hcm9jc2V4M0MxRTJBbjhQ?=
 =?utf-8?B?MGRidDVtTnNyTmhzajdkbFZuRW0wWlZSL1JRT1FEeS9GaUZ0ZnZmNTBSZVJX?=
 =?utf-8?B?U3FqMXJwMDR5VXc1VnBWMlhLYURlS09UY3FKaTJKalJDSjg3NnhvdE9HT2RG?=
 =?utf-8?B?N0hkcVZWVmVyZDJqSmdEKzFtTmVRY2h5bmpQUTJteFZxdmJQWUZIU1hXZEl6?=
 =?utf-8?B?dk9RdTZjcDlVb3B0alNsN2p6czREMHhCRFBoUktJVURESGl5b2ZJMXdkY3M3?=
 =?utf-8?B?Z0hPTEFtSmRyOVNrOEFlU2dheGsySVFXQ01wSElmVzhOU2NRdkN0VGlwZ2JX?=
 =?utf-8?B?UVNSQlp2eGlUbmNGTkRBWEg5QVFrVmt5cXpBZ013VFJ2MmwxWFlUcnJ1YUp4?=
 =?utf-8?B?eFdDQzU0Wjl0Q0xKdkRDS0JIRFBqejRHVG9XNXdrUkdzMjZzdEZnOFl6QklS?=
 =?utf-8?B?bGROMUFYb2VQYnhCcXFLQUcwU1M5OW51NXhJOS9ockdsWjVCOXUvUmZPWTJU?=
 =?utf-8?B?QkFDYmpwRG1ab3lkZHFPU0krTG9RWW5Vd2ZVWEorWWJPeHFZVkJiTW96bVRq?=
 =?utf-8?B?QWNUUm5SN3IzODA5SG4vMGswZzA0TGZGdElQcFh3T1ZTazJjSnlsQm0yQVFM?=
 =?utf-8?B?T3F1VEpzVm5HeGlubTFUeEVuRXhzTlRrbjFHWERTLzBZS1p1K010QjlLdVpF?=
 =?utf-8?B?KzJBYWtxVWZvNnpzc0FjNzlRWVU1bWJMYUE3aHZidHd0MXI4MXpPdzhtTE5h?=
 =?utf-8?B?ZVBIcWhoMU1Tc1FHUDZFSzRuREpOajJMd1FLejkwTEw5aGs3Q1RuSFB4MWRS?=
 =?utf-8?B?VHkzMGdYbGRpVHAvSnMwTWw4bStUU2k4N1dCNG5BWkc4VDVrT3ZmdE9tWXRv?=
 =?utf-8?B?NUw1VzdrUmNKOWt5allrWE1YeCtvZExWUVJ2YmNtWEZEdlFYRXh1Ri9udzFU?=
 =?utf-8?B?Q2Q3VVFobDU1cFdDYjlzR0VCYVU0Vk5LWWlxRHVQa3ZRYWxGZ0p2b0RRUUhm?=
 =?utf-8?B?aXMxV3hqZjgvNUdiYWNKaFpsOE82TEZpdFVieTY3SDVlVWFQNjRJU1AxN1c4?=
 =?utf-8?B?SndRTzdsblRZTERaRkVYTXNOdWdxQ2JhSTIvZ2N4a2oxS1BHWjVqdk5OdjhX?=
 =?utf-8?B?THZCOFltb2l0bDNNOGJJUzU4OWFtQm1aZEdUUHBYVU9uVkdDMWN4WTdUTzB0?=
 =?utf-8?B?ZkpsWDdLZy9ybWJLSGl5NDExVS9rdjBoSzYvVFV3SXFqUEVQNytTWTlxRjNp?=
 =?utf-8?B?VGcyQkhoTGhmT1JzSG1rQk5lTmdWQlhqWXBqcTM5VEF2ZmZnemFKMWo3ck1m?=
 =?utf-8?B?VmFiWlc4dWJlcEVTQk1GbTZQYit3Z3R4WHRBOVEwZyttMG5ObUlWQi9ETEN3?=
 =?utf-8?B?RTZwb3JBcUpwUURyVExBblpHNzZ5SnlGemhXa25HVDU0SDhld2lsRi9Rb2ZI?=
 =?utf-8?B?VjNyTHdqZEhHcjZRSTkvQXc4U0JGQjFPUFh6eDNRN2VJdXkvYk02TjBGbTls?=
 =?utf-8?B?UllURlM4ZmxMWEMxa25vQmJCRU9IdGJMNkp0aUxQSVVxcElmWk9XZlpIN2VX?=
 =?utf-8?B?QklQSkRwWmhDMDlFZmxVcEVldXdvWmoyblJGZEhoWFc3bGsrb1VIYVZzTGdO?=
 =?utf-8?Q?GvlCaRfNp7chy9HmtvGGQbDThANOmZlJT7gndXF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWhyUFlZc1RVM3poeGZ4ZGd4ZzZrdlB6RlZrNVBCTmN5UkxYOFVVcmQ3ZVlq?=
 =?utf-8?B?SVBjd2JLOENobmt3YVhCaGNCV1l1bTVyamFVSVdXL3BiR3RpeVhFbjRLZmtS?=
 =?utf-8?B?ZlcyQXcraXFkaVByWFl3Y2dHUk9vMHZhOXNkTk8vdkR2dlpHV3A3WWVrUmZ2?=
 =?utf-8?B?dzE3VTdmVzd6MU1iaHU2ZmFzdXBUODZZYm8vRHpQdjBNSlJCRHNPZ0JOUVFi?=
 =?utf-8?B?d28vMlBwZHJCc2NaVEpYeW50RDR1ejhRdXNmeGc5d1NlTlZJRThUZmlDc3Ey?=
 =?utf-8?B?SkVoVkR6WWxQalN2R21pZWhhMU5makJEaENiQ1RSbDhvZUkva3RCOFh5aUdr?=
 =?utf-8?B?WkxpY2gzeVg5bzhlYi80SGV5dFBXME8zRWRoV3gyVEthRGR2bzBzUDNQblRN?=
 =?utf-8?B?UGxRM3orVGx5di82bUg1VFBmU0RUblArM2pRYm9jaktzcFljTTRaQlpWUDU1?=
 =?utf-8?B?TXdzd2ozcklTcDNlbWpudnJsZmkwYmwwZ0xxekxUdEdrb1NWYTloOTlnSnRj?=
 =?utf-8?B?Tkx6Y3JoUmRYRkxlbVRKdDRtV3MrYllQdGJzKzVzcjZLN050YzRKTVRxMDV4?=
 =?utf-8?B?RUIwb2l4Q1FnaVZYUmhXQnVzZDVoUWFHUDBzS2E3cUFVMHY5dzBUK3cvRHJj?=
 =?utf-8?B?eGkvZk9QNUNlQmlRelZlZWdtcFJocWI5NzZKSlQzWTBRZk0vNG8zd0hBR01a?=
 =?utf-8?B?V2dwTklBSzJ6YkJvbmZ1N0RsTVp6QkFDdnNya1dDaWJ1b25CT0hpTTlUcU96?=
 =?utf-8?B?MEdycHZmRlpjRDB1ZDFjcEVKRmZXcVJXZThFMko4Qm4zYVBDWk1Pem1naVBI?=
 =?utf-8?B?VnpqSnpKeTVKOGc1ejNKSldhTk1nSXhiZ2JmdlJ1NFhhMWx2dVpnK1FyV0Zs?=
 =?utf-8?B?MUZ1Q2pkVW1WcWI1QUIwU1I2N0trc2NGL3U2SlNvWUJoZWtucGh3bTBJTWQx?=
 =?utf-8?B?VFRqKzRhY0IySVgvMGh2RUg5bHBlNnoyajlvQkxIM0RycFBHbFNJOXlxckxl?=
 =?utf-8?B?UWxTMWM3dlFUcVpjcFNBU29lYy9TU3ZKQlJseTFrNWt2OEhaVllBMDRxdkJH?=
 =?utf-8?B?UWdaNG5kOXdLSzZTbHZOdnJOUk1lek10YWJJbXBMM21TVmZ5aUZxYnU2T0w0?=
 =?utf-8?B?R3Jpb0ZUeTNqSmVjQ0IzTTB6dVhka2lmM09razZkZFpmVTZoYzM2TCtYTmRi?=
 =?utf-8?B?eFZrU1Y3T2hlMzI0SzNlWHNlVlpTTUVxc0RFNXI1c0RlUFRJRXNqK3VHWm0w?=
 =?utf-8?B?WC82WVRvZWMycTg1VjYzS2NubUZjOVRhY3BrUi9mRzhzTjM2R21Kbnl5QURJ?=
 =?utf-8?B?ZWxxeG42cEQ4MFVQcUJhc01CbmlHMXdGM3EwV015aEo5S0NraXQxY2NxbXRi?=
 =?utf-8?B?dWlaSkNRZzYxK0Fva09RTWdCczRwcTdGSEd3THR3M2YwNnhIMXVNVzVGbkV3?=
 =?utf-8?B?WDlPdFkrVnNGd2ZpRTMxL2dnZGRkWGhNdU5Sa01KS3Z4WWR4a281VXJBR3Rs?=
 =?utf-8?B?anhLRmNNYnozdEpXa3hQN05WVGFOODlGQmR6eDZZZTBDOXNwTTJwL3BSRW1o?=
 =?utf-8?B?NDJ4STB4YkJVOFZZMWZpdFc3NTBUVWFQbS9VUGQ1L3llSXV0cjcraG9hR3dh?=
 =?utf-8?B?ODhOUEtPaTlnSlIyODRvNzVDVHVkWlNPZ3Jjbjdmdmo0WWM5dnNuQS9RNUtJ?=
 =?utf-8?B?c0FWTHAxeHoxN0JXdDl2SUhnM04xTWxMUVYreTBGZkVneFJwRmtncE5CRk0z?=
 =?utf-8?B?UVN0Vk53Mi9mOEpFOVY3TGRYWWZxVm55L2Frc1dNZ2lXWmszWlYvRkRQK2sz?=
 =?utf-8?B?Si84VGFFbjNQQmdTM2wvZ05zVzZmRjI4UjhQendrWDk3YlMyeTlGeTd3Uncy?=
 =?utf-8?B?bWdBY3FvWm9ET2NaN3ZYNDJoQ3hUeStOWDEvV0wxV1NKcVZlM3ZOZE0yQW51?=
 =?utf-8?B?ZjJodWNRS3liaUh1U1JtcHRQMlNuT2t2OGhqcnNHZ1VJNEsrT1I0aGlSTXJl?=
 =?utf-8?B?em85c1JvelpWWmVkejFRR2svcElhdEVrSmg0bXFrRnVzUmx3SWo2ZEVhd0FW?=
 =?utf-8?B?M2pqelRFN2kvOEdtcS9mWjd5TmVnZjlqd013ZnpsOFlCd0t4TjZrVVBmRk5z?=
 =?utf-8?B?MGpJeFpBbHRsbWtYejY2Zkg2TlhxM1U0WTlFT0V2dVFvNGh6cHNZeEFBM01p?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 225ea1b0-5091-4d38-b516-08dd03329ea5
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2024 15:56:50.4193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Agi7T0XNOWG5NsdXOJyd3U7jtzPAG8zZtqBbNyIxRey1q7oWEG3EvAGajKulG7TE9FgGingA9FDBxFzRmbLvvMQfvjbijAykt7J2yIJNKd8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8801
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731427026; x=1762963026;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mU+kfUuN+WLdBEpOA8lsB0sLPTcx9sLL5DYEsFYP9yM=;
 b=G6TZpq+UYJfmHaxjEpiRzgGez9bbAHup2GXanBcyR39AV3tS3vWE9a4p
 GbhNNSdYurjOda8zCiOkxfSXOx1aBhf0VXvU7Ab9JNx1RRkS1u74APcCV
 jeiB6SECR9wQpEIqLVzuqHEE//jFxq80rpWerVh7nETdhn4+ZU0y7dgqt
 NvP0fJ43HHQRmAijjg+KdK3PEZ7jTA9YOFuPB9BFmIBmKQKdihwawTVBg
 EsyZHH71aOlgEAn6N6MaM9haBRzcXfjTBDV1D550vHC48nZUU/+uxRjwy
 GOCYpHPWhGSd2elaLJgZd7c7il+Mm4teLzzQfHB/K9GZSI/Ir7iY38QAg
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G6TZpq+U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/4] Revert "igb: Disable threaded
 IRQ for igb_msix_other"
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

On 11/12/24 16:04, Jakub Kicinski wrote:
> On Tue, 12 Nov 2024 15:52:34 +0100 Przemek Kitszel wrote:
>> Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Do you want us to take this directly?
> To be clear - we only treat an ack from the maintainer who usually
> sends us patches as implicit "please take this directly".

Please take this one directly, Tony is OOO today, same for Jake
that could've provided also his RB otherwise.

I usually don't Ack intel-only series to avoid such ambiguities.

for this particular patch I wanted to say "fine for me, on behalf
of Intel", especially that this time I didn't provided meaningful
feedback on the code (put in that way to be nice for myself);
we have a track record of discussions preventing application to
the iwl*/dev-queue (as for this patch).
