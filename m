Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B306B15889
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 07:39:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69813810CF;
	Wed, 30 Jul 2025 05:39:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QMEedi_ndPRi; Wed, 30 Jul 2025 05:39:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1018810D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753853979;
	bh=L9PaJKIe6RqwrJzcYYlIIiy2I7V/A0RGYqxZtTI81Wc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7vJqB1p0kcb/5NDrMvJxI4ZCA0QvKN4FuVby43P/P04+AywWO3GvaZVyJF3uOdYxa
	 qoHYlUziXduR7XCFALdwlfkSGqKpTNlB23JaPPWG086qNYD8JeHQcJv1A3HG2z4VAt
	 SnFb+p1CZfmBB7dF+GsSTGRFUaAwaq8gCGPkp263ww2Rd6JCIfsbuomV53qcJhmBcl
	 puf/i4DNf5at19NnBlptGW6IvLbIQntQM888+myQ3iIZjtk9VAdqaKxKBoBcIjfW/S
	 IgNkmgEEL1Zj9PHEABoKXoorDTUrt+TMurARwYd/t+/tLK/TwUDiBc8/AqhQ898DgA
	 puh1B51S4wIUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1018810D9;
	Wed, 30 Jul 2025 05:39:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 85C59186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 05:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77133810C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 05:39:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BKdrJMj1qdaW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 05:39:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.237.43;
 helo=nam12-bn8-obe.outbound.protection.outlook.com;
 envelope-from=gal@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 91B8C81094
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91B8C81094
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2043.outbound.protection.outlook.com [40.107.237.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 91B8C81094
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 05:39:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cNDVMi4rwKUHeQKBBk8mktIHDt48p74gVuBcP2aKyergQCoRFs0R0ehaOiSCN3bB/V9MR+Rxv23YQjExWj6pc02EeAA9U3iL8lSut9wNw+G/6i3cH58WAtNEc0r4gbRfADF5peuFsCJXzRRkp6bpiZXJquwKv227cWcNdCglvG8iesogEw/oYFZH/9qPUJ4vLz1pWCZSVLYvVoXAdGMr6OytYlP+MP+aAnHT3SMVjg6OZjbgF2DpVOV07iHfEC23tPaNQyLtfWyttnAJr6XuPJUcPTyKOxUn0LvUkpwR/FPiyTJDodyrzCPhR2ggAXAokw+TFkmNGAIi876BoOvIsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L9PaJKIe6RqwrJzcYYlIIiy2I7V/A0RGYqxZtTI81Wc=;
 b=LieAxvqDOo/z1LNWRJ9g+dsC6hXwTWJGcDf2h3D7amraWfzka/kkwfV5UEVAeZoZAFCvqvMsnvb0aUFH3cpqAi3zVU2ClIMsbNvlzoiXG3c1aG9DgsTjMiNILPRqjM+B1diZYHGd6UMZoeNcy+I44OP1KMTdNeuvVOHc2yaq5bNO7ULCRmKPuQ8qIir+SXdr2MLE9VntZIq55w1qRSx56kovxqmgHl7WaBC5bnFXY7EC1tamUONhydUOGYGfSp8j2dboxUJYOScSWCGpVHHYm3e8LgkWy6JXtnQ4zyPd5fbBfs3NqZJyIUli9oJBL/lJEUMewYk7JyhMpYD5ec36qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CH3PR12MB7500.namprd12.prod.outlook.com (2603:10b6:610:148::17)
 by CY5PR12MB6251.namprd12.prod.outlook.com (2603:10b6:930:21::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Wed, 30 Jul
 2025 05:39:32 +0000
Received: from CH3PR12MB7500.namprd12.prod.outlook.com
 ([fe80::7470:5626:d269:2bf2]) by CH3PR12MB7500.namprd12.prod.outlook.com
 ([fe80::7470:5626:d269:2bf2%6]) with mapi id 15.20.8989.010; Wed, 30 Jul 2025
 05:39:31 +0000
Message-ID: <b16f0738-9b73-46f4-93ba-edcf84eb961a@nvidia.com>
Date: Wed, 30 Jul 2025 08:39:25 +0300
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
References: <20250729102354.771859-1-vadfed@meta.com>
 <982c780a-1ff1-4d79-9104-c61605c7e802@lunn.ch>
 <1a7f0aa0-47ae-4936-9e55-576cdf71f4cc@linux.dev>
 <9c1c8db9-b283-4097-bb3f-db4a295de2a5@lunn.ch>
 <4270ff14-06cd-4a78-afe7-1aa5f254ebb6@linux.dev>
 <c52af63b-1350-4574-874e-7d6c41bc615d@lunn.ch>
 <424e38be-127d-49d8-98bf-1b4a2075d710@linux.dev>
 <20250729185146.513504e0@kernel.org>
From: Gal Pressman <gal@nvidia.com>
Content-Language: en-US
In-Reply-To: <20250729185146.513504e0@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::18) To CH3PR12MB7500.namprd12.prod.outlook.com
 (2603:10b6:610:148::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB7500:EE_|CY5PR12MB6251:EE_
X-MS-Office365-Filtering-Correlation-Id: a1d938b4-4c22-4ff2-c061-08ddcf2b7537
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d2NhbVZFWk9rd0pjbDM3QzFtVGwwamtvUHFoeFd0RTFWTENhMytIN3dXazBj?=
 =?utf-8?B?RlFXOUxKRHRPSmIyRERwYWZMQ1RzRW5NUXdhMVlZRDJBQVdRNkpQRnE0aUI1?=
 =?utf-8?B?NHgxTkVSenVmdGhZN3dsZ1AzTitZWDkwUFJZb2M5VG1jaTViNC9hU0xKUHR3?=
 =?utf-8?B?T2lXTXBmKzBjNUoyV0NnZE5WdW8xejlPd2g1ZGlvZ1RWWGw3UzNFQmZRZFNU?=
 =?utf-8?B?c1V1TG5yT0ZTb0R3TWNoMWFuVEluSEVLZHZBUnhudm5oNWsyNjZ0WHF6eHlo?=
 =?utf-8?B?bElQS1hUVWNRUFhUeXljdjlxb1g3bGJBQUxZU2toTWlLcmpYUWlaVmY2MklY?=
 =?utf-8?B?T1ErakVoOERHRnV1bGZrVldVN2pDaWlDblVKa1pZbGg3Z25uOVlwSE1PTW8r?=
 =?utf-8?B?aU8wbUNSOGFVR2V4V2ZYbmpLRlFOT1cyUTFCdVdTaFI0WXByaG9FSlVod1JC?=
 =?utf-8?B?TWNqSFJ5YVpuS21wVkRYZGFheVJkOHM4U2hjWTZUay9aZlhQeGtFS0NpK1E0?=
 =?utf-8?B?dUEyNFg2MXJNMUp5cStpcXhDVVl6bE1lL3hCWEl1Nk14bm1tandkaDk2NGIx?=
 =?utf-8?B?bGh6amZqTExNVWNwR0hYL3BFNkU1L0F4RnJNOVFkT0dHdGNyWFptemlXUUUw?=
 =?utf-8?B?N0R3UzJRZllOZDE2aGNOZmFET28xQXlLazN0YlVwQUNsSS93VHhua2tLZTFI?=
 =?utf-8?B?YkpTaUxMUVF2VFpvYTd4LzdlTDVubjNIOEJKbUVMeTZJZUlDTFc0QWNCdWFi?=
 =?utf-8?B?Zm1Kb3hBT2YzSGhpWHFHSkREd3hmMjlTRlo5ckVhbEIxS3ZQcmVMYlpSZE16?=
 =?utf-8?B?Rk1Fcit4OVdhQy9jYVdSeE82Ull4UlNSbW81SHRudnZTOWZpSkNTcW5jV01D?=
 =?utf-8?B?TmhaY0MzS01zTi9YRDkwaktUeXBkdFRtZmUrRzNucVh3Z0U2RDJacTVaeGlE?=
 =?utf-8?B?bDVFL2Uyd0tCbVB5Q0pNUmUzZC9rUXVEbytYNHpXUXl4SStsQVQ3aFV6ZG9Y?=
 =?utf-8?B?WWs2eHltNlJiNk1CSVp2eHNGZGJPbUZvS1JNeTdRTkd4TXU2MkZOS1lGVHcw?=
 =?utf-8?B?cFpVd09sR1BOQ3U1c1d1aFVVWkhTdTBpYjJNdHBoUy9iSnpYWk5sWlc5ZERK?=
 =?utf-8?B?WVB4VHIrVWxLaGQySlhHdHpPTE9xWFNNbjRiVFlBclE1QmxIUFhkTk84YTFG?=
 =?utf-8?B?NkxCcDlSYy8xWEFoSjhTZ3piVCtXNnVMTXFjSmQyQWxRMFhGNS9HS0hlSlVN?=
 =?utf-8?B?RHVsekFkcSs3RnRGQ0JjR2g3Uy8xeTNnM3hTVTdGT2pMNUVmdi9hNXMza2JO?=
 =?utf-8?B?VS91TlFPYk5DNytWc2Y5d0wxNkpBamNqSElQRG1WQy9Pc0JReEQwbWdJS0Ft?=
 =?utf-8?B?MnFocTdHdlF6UGZrQlJQemp4cjhLdlZab0ppZzRUT09IRjNWZmJ1dklFZ09Z?=
 =?utf-8?B?T1RyWFpTYXE5TVBPb1NKZjBsTU81YlZrVWs4K1Q3Wmtla2NHNHJHTktZQnpt?=
 =?utf-8?B?MXRITU94U0lUVHl5YXlseElXanYzY0ZuQWFudXB6aUQvTjY4MU1CR0o4ZVBM?=
 =?utf-8?B?U2tNbWNoSGw0VlA1c2o1eVk5VklCVi9yTnNxN2Q0UXAydWlTcGkrU2tSRG9u?=
 =?utf-8?B?N0JNaGptR2UxZGF6MnowcU1GZEtuZTFTdUxIczZnRlJVWjByWjA2OGFMU2ZH?=
 =?utf-8?B?cFNRVkVaTG9pRWVjc3A2cEt0dWw0ejQ2YldKNm9XRVZuY3lBRE4vWmhJK1F1?=
 =?utf-8?B?bE9vR29BNC8yMHJZejF6Sy82VUxSQjVxRHZtTERwbGlpSFpmRVRGMi9IS3Jt?=
 =?utf-8?B?ejhhdW04L0I2b1o4ank0UWkySFdpQmZxeGg2WGlUK2M5amJ1OGJuVmhZSlNB?=
 =?utf-8?B?SU9TMTBxZkRtVjRFbnpBT3MveUZtVE5JK3BmVW42cWNVZDd5WlNZOTNRQmMw?=
 =?utf-8?Q?sLyWJT89V8Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR12MB7500.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OExaODJCT2EvYjFWQ3JZOS9TbVdmRHJMMVNEdzQrYjlrdlhTa2RPYXVXY0d3?=
 =?utf-8?B?U0RwUm5JN1VkWjVHNnlGaDUzbmI5K1JyYU9Jei8wUnBlMHJ4MFkxWWIvV3Zh?=
 =?utf-8?B?UWc1YUJyRng5bzc5bUpGN0J2T3ZkaFFFYzJnWTl6U0JNMURkM3g1TWZnMzUz?=
 =?utf-8?B?R09GRnA2OXpzYUZhMzMxSUZwUWhtQmR2SmNWeUNuc1FucmdXTXpoL1JnOHNm?=
 =?utf-8?B?ZWl2bWM1ZGxCUG9IMkwrbHdDS01ZMnF4aitveFJYQmJOdnc1RkdrOHFhWkRZ?=
 =?utf-8?B?czZtaDNqdENoUkI2V3FTREkrZ2ZZZFJDN2dvbjBpTjF0dDIvU3U0d1BwNHg5?=
 =?utf-8?B?cDZXMCtVLzdOWnVGKzFVWDRmcXdiWlpTRTYyQVN3SW9OR0xZVmZiNEFZN3Zx?=
 =?utf-8?B?V1BiQk8vTHRxdlJrck8ySEFaNnBMZzJRam03ZkN0OGl2WEZKaDNVNmdyZUtK?=
 =?utf-8?B?dmVyMHdpTXJnVGFmMmRuaVJjTTh4WkVISys2SDRlQjVXVU43SENKWWNZUzVK?=
 =?utf-8?B?YnJ4WjR0MmhodjhJU2tPOUtIdzQvNHk4cGxNTDQ5NWxDZ1lkNS85VTFjY1RZ?=
 =?utf-8?B?a2RpdHRQWXRxbkJybEVpcUdOZG5nNDNTY0xsNUJSZjh3Ym9GRnczajVYaXl5?=
 =?utf-8?B?bC9QUEtzN1BPMFNDeUxLRlV6bmhKUkhQVXRhRE9wR25VUUF1OVZvZVlBdEVM?=
 =?utf-8?B?NHFmMkZtZEZIUzUyTVhnSUt3TVAvNkNTQm4za3paZStBZTJheFV2TDBvTjVm?=
 =?utf-8?B?TGpBSnNGKzdpbGpNUXJESkIwbnFjK0h0V3B2cml2ZXFXZnZ1aW85UXpEaENh?=
 =?utf-8?B?d0l1NmdqOE9TT0FIcW9JUmZ6aUkvb25qbDVyQ3dmcm1SYnVqcXNSc3g3YThD?=
 =?utf-8?B?d2k3cGZtck5PNGtobDFtQ1ZmTU1hUGxKTk5QZGpieG5MZ2MvZ3BWOG16WS9x?=
 =?utf-8?B?Tm05VHEvMFV3L1hQTFZRakp4QlNscjZyUkhXdGh6RnNKUDlqbVladWNhTWhp?=
 =?utf-8?B?Z09WZkswOEc4bVNVakpUM1RCeDliYTZ6ZDJ2UGkrQWhmZ3hsTWJ1OHdlenYz?=
 =?utf-8?B?UlVmbWtyTlYvK1c5Z2FhdFIxay9MWlA4ZlBsWUxKa2xRQnU1QXlZdEpwUC9n?=
 =?utf-8?B?VHY5RmdmMm51ZTZ5ekFuODhIdmZ2TUJqWXIwejQ1c0hwZTRXWElLRkd3bE9L?=
 =?utf-8?B?ajhxSzdtaXJVMUIzR25hSTk1N0wxY2VZRUlJTlpmQmsxRVpqekxrWkMxUGVD?=
 =?utf-8?B?NXhHVE82R2RiTXZRdXUwMG1iZllrRkU3QXZ0d2Q0NWJBbUlNd0pmajdxekxr?=
 =?utf-8?B?NVBTRFdlajZaUTJGNXo3WnlTaytybVJHOFVnekRnQTA0dXpNWlU5Y0VTMXQv?=
 =?utf-8?B?dDhhWFh0OHZIWU9OV3lITXRtK24zZGpNRjk4MW1kblJuYzF6R2kvTCsxNVBP?=
 =?utf-8?B?Si9BK0o2YkE0TkZOQkN4aHpGQWZaUGVLL0pRZjdBbkU2YktOMmhtSVFnNjY0?=
 =?utf-8?B?YkJIblA2U3dFWjQ3RG10MDd0ZzdQaUpqdjlWT2p1SFdvRnRaV3VZZXVpZ09V?=
 =?utf-8?B?WitLbHU3ak10L29sSDkvaVlOZ2ZlMnV5K0lHNGswQVYvSVJXSGJUd2QyMFpX?=
 =?utf-8?B?eW5OY1FQYlVjZ2hvVU5tU0hFL3dSUGwwYnZITkZrcDlFdDUvbStXWnpnRHRa?=
 =?utf-8?B?L1lCMTB1ZmdXdHMyZ3E0Z0xpL3JSRnRNOGwzWGFxZVMxaWRFWnVKTzN0QTl5?=
 =?utf-8?B?ZlVlc2RpdGFBbm5CZUhsUVJvazJxZmRFeC92OXEwOVJUYVFqaDcyYjBTWm5R?=
 =?utf-8?B?bUlFQzNsQ3JXWmRTM2E0VmpRUkVEUXdzamtUOFU4dmhRdXpYY2dEdXpic3VY?=
 =?utf-8?B?U05kYUVxVC9weGxlWFZYUFdrTThVQzhpejIyMVBOeVE5L08rNWJPYytDZkkr?=
 =?utf-8?B?S0pDVGtMSzU4dUNUWUUvVzgyNjRDbCtXbVBCaUlJQkI5b04vUWtDc3VUZjAx?=
 =?utf-8?B?MVgwRkNQU0l3c2hKaitIc1UvS2VzYWlpT0VUTzFBWFh4MnpWaWNoUU9CV1FQ?=
 =?utf-8?B?U3lPRk9pc29xWlkyU09vSHdMNlNWWm5TcU4xZFZoNVlQTWNYMzByU1dGOEY3?=
 =?utf-8?Q?ddjiLmQ5U3qix/zKZEQPMHxi4?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1d938b4-4c22-4ff2-c061-08ddcf2b7537
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB7500.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2025 05:39:31.7455 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fpdaqgfeR0x6zvT7iBPZXSk1C0xCpCLrttnjMfLYnL9/fvoCktzikeiGRQwiKRWY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6251
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L9PaJKIe6RqwrJzcYYlIIiy2I7V/A0RGYqxZtTI81Wc=;
 b=k7ZDKIAIX3OG5154ych2CBIzY69WpGpY7IFaglKex7vamMVfyaOkeNo7sSKFqnZcf2YjZ2DMigFAdmFE02sCTblDjX93QSDyzTbahjQF9kADmQnV2Y4tnFX6q0zEQlwjG4oj9rcOqtdvmjyBr3/0tagoEzGxZUk5TYqSqr1SmgHgFXjkWwjNP7NkZxk4R2Ey8DmT6vrPmNRypWJFe07GjNHcAvoyDQ+PPW0+5PQVrvJcUDlxu8Dkzi+R7Fgb2aKly4c3hoPnh2uPpamO/52c07E3AJre74yj0dlHcazjRepXVcorHTPy+B5PorEZ0GhPISjaX6lrpvQever8KEJ8GQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=k7ZDKIAI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
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

On 30/07/2025 4:51, Jakub Kicinski wrote:
> On Tue, 29 Jul 2025 19:07:59 +0100 Vadim Fedorenko wrote:
>> On 29/07/2025 18:31, Andrew Lunn wrote:
>>>> The only one bin will have negative value is the one to signal the end
>>>> of the list of the bins, which is not actually put into netlink message.
>>>> It actually better to change spec to have unsigned values, I believe.  
>>>
>>> Can any of these NICs send runt packets? Can any send packets without
>>> an ethernet header and FCS?
>>>
>>> Seems to me, the bin (0,0) is meaningless, so can could be considered
>>> the end marker. You then have unsigned everywhere, keeping it KISS.  
>>
>> I had to revisit the 802.3df-2024, and it looks like you are right:
>> "FEC_codeword_error_bin_i, where i=1 to 15, are optional 32-bit
>> counters. While align_status is true, for each codeword received with
>> exactly i correctable 10-bit symbols"
>>
>> That means bin (0,0) doesn't exist according to standard, so we can use
>> it as a marker even though some vendors provide this bin as part of
>> histogram.
> 
> IDK, 0,0 means all symbols were completely correct.
> It may be useful for calculating bit error rate?

Exactly. mlx5 will use (0, 0) for sure.

> 
> A workaround for having the {-1, -1} sentinel could also be to skip 
> the first entry:
> 
> 	if (i && !ranges[i].low && !ranges[i].high)
> 		break;

Yes, that is a valid approach.
