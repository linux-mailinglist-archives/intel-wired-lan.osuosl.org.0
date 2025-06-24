Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 459D5AE6D5A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 19:13:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF1B140E9C;
	Tue, 24 Jun 2025 17:13:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n4leHkvyAfOf; Tue, 24 Jun 2025 17:13:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E9E5410B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750785199;
	bh=olcmh2VUTlz0eqD3u4ExSKRs9LEuZXxUIvFsUAKPJd4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l1jfzZYuxGcF+Vn0elxs00hf1YrIs5qHDgNBOUjaX/Pntyn9VuVAAJ59tDbmvPP6J
	 i1V8FyehxoHvevrK5lIQ9DdCdUWqxJGyEw1yovcQAk2nLMp/Kh3sdB1wCXLzGgCC91
	 eVW69zQKTZUd+aW1wdInxk0ixpVMxgE/pMJg5FJw+X8vQeyYrOUjfXHkbalySSw23b
	 gKCAlPGwos5g3wT1ASFfLlXPwokDdsP/yRXu6NK9KGvTsLnueN6ky6CoKWzD4Nbap6
	 gvcCf1wuSZWn5esyCKzzMAyO4vk6aA0Mg5DyMaQPF3WDI3DITZ3+tjMQWkTO83AZ3G
	 oPd34ICO80bbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E9E5410B3;
	Tue, 24 Jun 2025 17:13:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 73E1B12C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 17:13:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6575F40B24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 17:13:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TDSENNcYedSw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 17:13:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.93.88;
 helo=nam10-dm6-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7884540E91
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7884540E91
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2088.outbound.protection.outlook.com [40.107.93.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7884540E91
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 17:13:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DarvpAg4CPDt/JOh00Un+MO8nFNgwbsKN2GmIAqpU9ksz8zlxxmnFJXfgsxktNGZw1aS4dVeEAX5wma87NSR8eFXauCbcpAcfOsiiIZ1PkGv0mr0tGFwjaYuZCCgSmA5OTqmInqXt6MkVeGPCIklDpGiFSsqUyw0Prhvn6OnBcszn0LRo5CbxLo/rV927BGjD3kDCLhQ+mCi7zOOv++Nk1nkM2gnN6CXmTYOjb9+WzTl2FIXoWuOpfHcZLryk7qp8G72/8JxpniId53R6vDEP4HX7j8WpxQPDF/zestKIbR7s37lBNPRyER88uHoWTL4gxAuQZGdLUm+iu2pbExUvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=olcmh2VUTlz0eqD3u4ExSKRs9LEuZXxUIvFsUAKPJd4=;
 b=SBegMyHScNJiAkKhSrDFhx7QGZEmwfEiTfJKtWYpMkb147HPvxfcTMvNJ9+hMS3awj1QoswzbVX5GIW06+5+E/wFJui4/qHGWwcAWDpPbcYLh7IhmkeG6E+JwMPipDBFeFrLB5ANQZ6KeMaqln6S1A0qpaVFTX0XQdj7J4Ew7GoyoxpHVm/46/Xxngkfjbn8ANH4y2t/OcdUIby9a59hLG3RoS321z7MKZSe/UqH7DqAVBgdE3ZJ1Y8cwU0SJ6M59DCfcJsE+zW539w8GqCpd5BZL3YT0RK9Wjen+Td79r6Xwpx1wlEelstszdZTrvXAILVfddpZWvbAis1ZnGiTlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by DS4PR12MB9820.namprd12.prod.outlook.com (2603:10b6:8:2a7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Tue, 24 Jun
 2025 17:13:14 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a%5]) with mapi id 15.20.8880.015; Tue, 24 Jun 2025
 17:13:14 +0000
Message-ID: <1d1ec8d8-84a4-4fc3-a89e-09cf6b42747d@amd.com>
Date: Tue, 24 Jun 2025 10:13:12 -0700
User-Agent: Mozilla Thunderbird
To: Emil Tantilov <emil.s.tantilov@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, david.m.ertman@intel.com,
 anthony.l.nguyen@intel.com, michal.swiatkowski@linux.intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
References: <20250624142641.7010-1-emil.s.tantilov@intel.com>
 <20250624142641.7010-2-emil.s.tantilov@intel.com>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20250624142641.7010-2-emil.s.tantilov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR04CA0027.namprd04.prod.outlook.com
 (2603:10b6:a03:40::40) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|DS4PR12MB9820:EE_
X-MS-Office365-Filtering-Correlation-Id: f01dc695-cf5b-4de0-f74c-08ddb3426764
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NWhQdFZXS2NNcjAxUmRUNHZBUUo2dC9IMU5MWjBPNGV4SzZFa1VNdW10MkZE?=
 =?utf-8?B?VENRK09ib2dLeE1zb0EzS0VxemVrZk9nTXVtTHZoeVNwQnc4YjlEalk4V21Y?=
 =?utf-8?B?eDBCSEl1aUlVd1JDNEtyKzVmTThVVGJVZDZkRFQ1bi9hTlFTRUZkQlA2U0Vy?=
 =?utf-8?B?aVJmV21sRi9xOG5qMVFmdjNZTnVJSndWTHp6R2ptUzJZdUtPNVdsbzdZYUIr?=
 =?utf-8?B?RDQ2OFFMVTVMV0RuZkJxYTFUd3dYWi9oUlI0bm1SQXBSdThsYndnUTloZysv?=
 =?utf-8?B?Smtyd3crVW56RnlIaDhjelZyS0dLVTZZL2tuaDlOa3c4QlR6Y2owZE1rRFBZ?=
 =?utf-8?B?WFhGclpHYk9jRGFLUWVXNjNWTCtJUmF4eHdCVGEvU1ZGUStHRzVzSUJJNGdU?=
 =?utf-8?B?MVZCNXBxdmN4YVFKWXhrMHV2Sm9xbSt5NjEzTE5XSE05VjVwWDFyaEtDQ1RG?=
 =?utf-8?B?MEh0VFJTQzRHZGU0VkFKMG1iODQ2Q2pPTnhPRHhsVVI3WHM4aFE2aHR4K1ZU?=
 =?utf-8?B?RGVTbnFUNzUrU25FUk9vVHA2bGRPRHVaNkh2S004RlFadFNOUDBJSTlFMzBL?=
 =?utf-8?B?WXBkamVrUGRuQ25weVdNa3ZGV2k3RW1ZUTc0aHh5ZjR6aWs5bXpPcmoxSVVZ?=
 =?utf-8?B?c2lXSGZJdXRLYTE4WUZMbEJtaktJaDNwVHFpVitCOG95Y083ZXI3Ry9rTHRQ?=
 =?utf-8?B?RCt2S2dveWZBcFBMOEhIN0tvNnRKUTFLY211Q1Fjazl3TlZTdXZ0R1g2TDYy?=
 =?utf-8?B?MXlDdGJuWmRDMDRpNlFiL1EzQ3A5WDhMQ1NVVGZmN3RnVWxmVVZuZWpXNE1q?=
 =?utf-8?B?MUgvU0FUZHFoaVlHeVRFdk0wQzIxQmlkUjNmZ3I3MlAxMHhFTE1MVUdGNTlh?=
 =?utf-8?B?SExZbi9KRkhPMmRnL1Z3TXlDYXRlL1JZdkRGZGJXOXdOMHVSTXFRRjNQNEVa?=
 =?utf-8?B?T2NJeDVTdUoxN0Q1ZGlYZVlIclRmRU00ZlRUWC94cTlGOVFsSjM2RTI5a0FN?=
 =?utf-8?B?cFd1VTdqS2VBSWh6Vno3RU84Y01hRVR3aytqVkx3MWhiUDRPQU1DRFdaN3VE?=
 =?utf-8?B?bUtsWWE1VnV4cks1SkFRNFB4UlVtSmxQaUR0Y0ZzbFlHaXBocHphUWZLL09s?=
 =?utf-8?B?K0ZvaW5XRWxQRFNOUWtldlB6NXRTVzB5WXVQaE82SmdLSENLdUhDSW1VT0p5?=
 =?utf-8?B?UXpid0h6MjkzN1QvNHJjbHdKVGpqWVFwWVBMcFpYajQ2LzRsckhKTVh2L2lj?=
 =?utf-8?B?UmdoTWVjQTBHK3IrdWxnVENpcDV2Ky9nSkc1cHlBTW9CWWdvN1NaUWpzUUw0?=
 =?utf-8?B?b1UvR2xrV3VWWTZLcGdLK0ZqMnpJb0R3TXFkZ2Mvb3prclhJRGk0cGxOOHl0?=
 =?utf-8?B?a1MzNkJMalVVZFlQeXlGdFlpK1pYWXZ5eS9BYVFuQ1VqUjRwRDRKZHVUa0xk?=
 =?utf-8?B?MEJMTFpnb2N0WDZRdnNFRHBYMS9DUTZCY2M1citJTDlLazhkYU8xTnJmdFZi?=
 =?utf-8?B?MXdsazVVOEFuekN1VjBHQ2tNaDBDTDBHQ28wdDU2NW1Vb1NuNU82ZnhTNkI4?=
 =?utf-8?B?cTNBNTJ4TEo4UURHMFk5UzIvY0taOGdmb1EyTjREWFIwYnJaay9FckpWUWRs?=
 =?utf-8?B?d2R1cjRsUlhaY0U2cmVLVGVPQkZwb2hPdEtVRzYzMHpiMzBIZncyeDhWR3lO?=
 =?utf-8?B?aXhMSUtCcG83cGVDb2U5ZlVmbll0MEdPTlRsZzBOTm1Da25tK0l2VkxIUUda?=
 =?utf-8?B?VDVCNmFoSlJ2QlByZSswOGo1ZUF6aWsvdk9xMktremZQN2VpYXpUOWVrVDBw?=
 =?utf-8?B?dy9rTjQ4U3hqcWFXam0ybERoVk5wTmhaQkl2cVM2K2xWa0xpcXNJK05yVnZp?=
 =?utf-8?B?OHB1YjBqYjRvdXZDaktTVTkyejJGdmNMb1pzd2dRa0NaNStteTBpUlJCMUVw?=
 =?utf-8?Q?sX/g1XHOJjY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkJYOXBrOUQvRWVmaytqK1A4QjBaanViZU40dFpwYllnMVVtVnljdktzdkhP?=
 =?utf-8?B?ZU9yUFdxWURXamdhL1RLeHdJaTQ4bFk1cjhBTFZjM1FSQ3lJdytycXlYUUhx?=
 =?utf-8?B?NWU1R3hRTzBscVdHZklvei92cGhUcU54L0wrRkxMbkxvZHVFMXFrSEJRTHZU?=
 =?utf-8?B?V2xHNWVlQUYxemZ1Vm1EMWFndVdqbW52L1pmdGpTK3JoUFhDamJuVmhGdWNl?=
 =?utf-8?B?MlhLL0hWMFYwVzUyM3FHV28wRTg1N011clJBY0Q0eTBqTitsdHdJV2ZQL09X?=
 =?utf-8?B?YlVoQkVXTjBGWUhMZVVYaUdDcStmN0dwWGJKZlZDeE9adnd2SXQrWno3emxx?=
 =?utf-8?B?SFZMVjJHcmx2blRrVEtKVkw1enRrNUZGTW5lM2pRczNwNkRLakJtRzgxL2Z5?=
 =?utf-8?B?eTIySnorYkFOUUl6bmVJVE9XODBlMUpzVUtibWRqSFNVekE3VTZsMUVvc2FH?=
 =?utf-8?B?NUFXOTVTVFBrRlhnVFExc00rcmVDVE5vMnFVVUJnNEJmNWFtNWdYU0pidW1R?=
 =?utf-8?B?QlpOSFVrZytYOHdtTHZRcG1MZ3Z2MlZLYTlvN2QvczhldTNFd3B5RU8rQnhT?=
 =?utf-8?B?Z015VnVkcXpmM3N5Q3lYZlRvZU92Z2E4ajZkSWFNRW9BcmV6SG50bzVIRS83?=
 =?utf-8?B?NTVIczJQM3ZtQWhjYytYY0RyZ0x3QmdvQlZRZTg1d1ZId3RuN0VWSkl1UWxI?=
 =?utf-8?B?M1UveFRHZnhYZFpOc2RQU3Bxam56RXhHb05uZjN4Y0xEd0w2dEdjR3VRdkY5?=
 =?utf-8?B?WVEvWld5WU5lUWdaaE80UnZ4eWlyK0ozUzkrUExzdU42QTB5T1pGMmNGdy9N?=
 =?utf-8?B?V1h5eEV0VHY3UTkxTU1TUTlrbGt3VUhzQ0p2R1F3K1NpN1VYMGkzTkQwVUZu?=
 =?utf-8?B?T3ZEaGZldzFhQlIyaUJIVERMTXZzdDFsUGUrWjV6L0NQOG1KNzFoeW4yNklQ?=
 =?utf-8?B?SWI3RVlXVXVYeE5HZC8yRGUzaGMvdW1hNjVQUm8vWFJoaE1oVm5tR2NzQS9q?=
 =?utf-8?B?R3BEQlA2ZjNBQkJKNlliTmxmRlRDb1p5SktMTWhQeWJMamIzbEJkU0tKb3N1?=
 =?utf-8?B?WUZUcjBTRWgwdURaZlo0WGI1SlRxSUsvN0Z5YkVBQjZsNFBRU1JWZHhEd1pD?=
 =?utf-8?B?SHVQV0l2Ym1tUmZncTR6RkxMZ2tBN2dDRUR1OXFKVWNRUno2NUk1ZVBVMmdN?=
 =?utf-8?B?d09xWjBRZWVlMGN2LzNjTE5Ma2RqdWtoTEZqcUVNK2tvL2NzZDBhZEF1cFBG?=
 =?utf-8?B?K0Qyem9QY1VXbE9mTjArR3BYK2pWT2FqY2ZYUEVRVW5UcnAyU1JZUi90aUZu?=
 =?utf-8?B?RXE3UVJ3TjZEZEFFMC9BS2JWVzMrTWVoOEg4V2tiOUNlQmpIUTd0dU05Qiti?=
 =?utf-8?B?QzJyVkkySjJhSUNsalJpLzVxaGhDZmVtbmxuOHdTV3VlczlMQWVBSXZCSVR3?=
 =?utf-8?B?NFFlNEIzVURxYlVXV0hFQ2FyTzV3V2RqZGdyMVdLQ3Ywb2UwbHpGdFRaY3Rk?=
 =?utf-8?B?MWJnNXNxbHdjak5yRjJYRllxUVNGRU9UelY2MnloTGdVTTR0UmxvUmF6UXdM?=
 =?utf-8?B?RVJvUXFhMEp6eWFnc2xaSTVSSWRMUjNEejRSaFQ4S0tONE1La3JmOC9Ec1BB?=
 =?utf-8?B?RlVEZVBRQlMrK2RyZDdsZjRMY0NVSExxcnNaTDJiaUpwRC9QZW5jSi95R3h5?=
 =?utf-8?B?YVJtcDBlR1FBUHJyZC8rYUVTR3JobFlOTzFqNWZwZW5oR3FKSys1ZjcrdGYy?=
 =?utf-8?B?angvUlBXMi91V3FqejdpRDFmM0dTMVhxVnMzUlo1amp6UzBpRUZWVjBlZHpx?=
 =?utf-8?B?Wllaa3kyUXRQRWVxa25KRWJNbm5VQjJCalhiTG9mQzY5U2RJUG8zbzZLbUxT?=
 =?utf-8?B?S1BZeVFnNFNMRENpTVFFekhtcDdYTnkwTkR6NVY1Qm9lS1dmSWY1ZkZJM2I3?=
 =?utf-8?B?UGFFSnM1WTQxWGVTZFNBVnVHcThYd2E4TEh3bGFIZklYa1lPYmtZQWdlK0d1?=
 =?utf-8?B?Y0RCTEJhcWdOeUFiS2xaaUFRMXpUK0htS29hWGhHeW4yaHJDbGF3NG5PSk16?=
 =?utf-8?B?NkdNWGVxa2NFeGtGMCtHZ09KZVdraEVXWEpURHFWSlJ6QnB4T0g0TE15aWdI?=
 =?utf-8?Q?rSsih6iptcI3FQqokCjPwuJQH?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f01dc695-cf5b-4de0-f74c-08ddb3426764
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2025 17:13:14.2151 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D7jyL5goyxRLecB9dLTGiDmgXgvPFr/WKlOlen58KJlp3zGMMAHaxPEQdanYna0lsZGTfmKBfBcDJEZ3g14aiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR12MB9820
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=olcmh2VUTlz0eqD3u4ExSKRs9LEuZXxUIvFsUAKPJd4=;
 b=0emBVCzOJvl/U5HSUyR/2LtKsRTUQuNkvg7XzYs7EuHRxDO4Mi1I8xO+ElgWTXAkRdGE0PEdon1LCu+FcfNxCXurHns7Md6zXrEwJxXpPXc3sLyYIYqAJodioWa0y+70QcEBQFEYfnL/Iv/ZnruqBN5CiAgdG5uchA0CH6OUqkk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=0emBVCzO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix NULL pointer
 dereference in ice_unplug_aux_dev() on reset
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



On 6/24/2025 7:26 AM, Emil Tantilov wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> Issuing a reset when the driver is loaded without RDMA support, will
> results in a crash as it attempts to remove RDMA's non-existent auxbus
> device:
> echo 1 > /sys/class/net/<if>/device/reset
> 
> BUG: kernel NULL pointer dereference, address: 0000000000000008
> ...
> RIP: 0010:ice_unplug_aux_dev+0x29/0x70 [ice]
> ...
> Call Trace:
> <TASK>
> ice_prepare_for_reset+0x77/0x260 [ice]
> pci_dev_save_and_disable+0x2c/0x70
> pci_reset_function+0x88/0x130
> reset_store+0x5a/0xa0
> kernfs_fop_write_iter+0x15e/0x210
> vfs_write+0x273/0x520
> ksys_write+0x6b/0xe0
> do_syscall_64+0x79/0x3b0
> entry_SYSCALL_64_after_hwframe+0x76/0x7e
> 
> ice_unplug_aux_dev() checks pf->cdev_info->adev for NULL pointer, but
> pf->cdev_info will also be NULL, leading to the deref in the trace above.

What about in ice_deinit_rdma(), can the cdev_info also be NULL there? 
If so kfree(pf->cdev_info->iddc_priv) will result in a similar trace on 
driver unload.

> 
> Introduce a flag to be set when the creation of the auxbus device is
> successful, to avoid multiple NULL pointer checks in ice_unplug_aux_dev().

IMHO adding a state flag to prevent NULL pointer checks in the control 
path isn't enough justification unless there's something I'm missing here.

> 
> Fixes: c24a65b6a27c7 ("iidc/ice/irdma: Update IDC to support multiple consumers")
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h     |  1 +
>   drivers/net/ethernet/intel/ice/ice_idc.c | 10 ++++++----
>   2 files changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index ddd0ad68185b..0ef11b7ab477 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -509,6 +509,7 @@ enum ice_pf_flags {
>          ICE_FLAG_LINK_LENIENT_MODE_ENA,
>          ICE_FLAG_PLUG_AUX_DEV,
>          ICE_FLAG_UNPLUG_AUX_DEV,
> +       ICE_FLAG_AUX_DEV_CREATED,
>          ICE_FLAG_MTU_CHANGED,
>          ICE_FLAG_GNSS,                  /* GNSS successfully initialized */
>          ICE_FLAG_DPLL,                  /* SyncE/PTP dplls initialized */
> diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
> index 6ab53e430f91..420d45c2558b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_idc.c
> +++ b/drivers/net/ethernet/intel/ice/ice_idc.c
> @@ -336,6 +336,7 @@ int ice_plug_aux_dev(struct ice_pf *pf)
>          mutex_lock(&pf->adev_mutex);
>          cdev->adev = adev;
>          mutex_unlock(&pf->adev_mutex);
> +       set_bit(ICE_FLAG_AUX_DEV_CREATED, pf->flags);

What if this bit is set already, should ice_plug_aux_dev() be executed?

> 
>          return 0;
>   }
> @@ -347,15 +348,16 @@ void ice_unplug_aux_dev(struct ice_pf *pf)
>   {
>          struct auxiliary_device *adev;
> 
> +       if (!test_and_clear_bit(ICE_FLAG_AUX_DEV_CREATED, pf->flags))
> +               return;
> +

To re-iterate my comment above, I think the driver should just check if 
pf->cdev_info is valid before de-referencing it. Also, the local adev 
variable will have to be set to NULL to handle this case.

Brett

>          mutex_lock(&pf->adev_mutex);
>          adev = pf->cdev_info->adev;
>          pf->cdev_info->adev = NULL;


>          mutex_unlock(&pf->adev_mutex);
> 
> -       if (adev) {
> -               auxiliary_device_delete(adev);
> -               auxiliary_device_uninit(adev);
> -       }
> +       auxiliary_device_delete(adev);
> +       auxiliary_device_uninit(adev);
>   }
> 
>   /**
> --
> 2.37.3
> 
> 

