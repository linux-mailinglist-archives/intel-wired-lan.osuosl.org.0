Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEBF93B399
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 17:30:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8780C40C88;
	Wed, 24 Jul 2024 15:30:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bZsUFRJwzYQT; Wed, 24 Jul 2024 15:30:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65F7A40C98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721835016;
	bh=kIAiJiAQdlFVxwl+0rIIAOs2QVgZ/ClN1fEKi6hL0JE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=flraOmbbWLn0VCFhdhNJMGGir88JA0Yf2+6L5a7MsCRMRk1ZsapmDG08mBblMTi4b
	 pOlbZyHXmghEzSNvfQddXxzK6QG2q22XKMp4d9vyxex0jdHY0PAX8XxF7TKNkfdJVy
	 CtfrbaJiAnnQbWNfX7Dj+Ae216STPBLY2giAHwrLoMUdtPW4+4S/tUilEOsXki1Kes
	 oElJpef+oF178r9NG5pWxYZR6FoffNG8qRZLHuczjUFaw2r6UsFqpOuCBFJeJ0MmZz
	 SFtLE9CE5YeVPD94xYkT9xjv6hEE1f/o9FidJ25aX0/WiuKYN4wkHwC0CMpdSKhu+b
	 8J/lw0Sc62hPQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65F7A40C98;
	Wed, 24 Jul 2024 15:30:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E193B1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 15:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D99504067B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 15:30:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V9Aq2D0tpkrg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 15:30:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.237.40;
 helo=nam12-bn8-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F17D540672
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F17D540672
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2040.outbound.protection.outlook.com [40.107.237.40])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F17D540672
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 15:30:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jwyH9lZVHkq3Zy/B1+BQ+4oyrdg3tsE7AZOx4BJQ3Tghi6MvTX662ujgdGkQl7+h6xWKLhJUUMgOr/KsgghNns2HEAdaOJYaKNxmJX3UjbWbpSSQtV/k+h21AfWCVI+1NBlM1OS/U9BCyeGZS1EDa4Om640wN1xExONOMxnp/0Rb4MnY5OTinQaQFm+0jkCSgvzNauZaY4jir0N/CZk1hN2eLQ2Xzgntnuxp3lwDs96c0x5lbpT30nBTTgGRQ9rMxK82y2h4rzqKrjbIpj6isxXFqo9Wk5DiiAzcVPQqI7LzmVrl0GSPbzP2QAgcOW6zSVkmsQHNbC7o7CvLCsxIgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kIAiJiAQdlFVxwl+0rIIAOs2QVgZ/ClN1fEKi6hL0JE=;
 b=KIUuU0IZBFzHk/Szc2pWeercRLYDV+zoCe8VJn8OnogPd2cSpFigV95V8qWH8ccUvZECujohRlAcI0yF2jz1/MOdPxa4aUQ7tmHF1PGjIkoIgSg/PjHNSiz6aWuzzW1wbiTiLydK0Ke9u78GbtOS+e/eWvvqQF5x5crofb3Sd+sg3vHWE7aoPCPt20m7tzKZ9QkPL5GUNOZ54ieRy9S7JY3YKu63hRsPfv1V0D0JWEVzWdpm3Y9o8AWYj8Ie/biiv/BaDZUTAKkQ47Ig9jo7GujrTdpUDCHMOpAne5VgS/C83qnekOHKbcv/iV25tcjFe3jgLoZ1XLM5foHJZsABOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by PH7PR12MB8793.namprd12.prod.outlook.com (2603:10b6:510:27a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Wed, 24 Jul
 2024 15:30:07 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a%4]) with mapi id 15.20.7784.017; Wed, 24 Jul 2024
 15:30:06 +0000
Message-ID: <dc93865e-e772-422f-92bd-a6d2b96e5d8f@amd.com>
Date: Wed, 24 Jul 2024 08:30:03 -0700
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20240611-igc_irq-v2-1-c63e413c45c4@linutronix.de>
 <3f8aef95-e7f8-4c47-9b19-a2ba90c4a532@amd.com>
 <87cyn3jln8.fsf@kurt.kurt.home>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <87cyn3jln8.fsf@kurt.kurt.home>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DM6PR08CA0046.namprd08.prod.outlook.com
 (2603:10b6:5:1e0::20) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|PH7PR12MB8793:EE_
X-MS-Office365-Filtering-Correlation-Id: 46f13360-053e-4bfc-e9bc-08dcabf57eea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OG9OMXNsZTcwSW9yOXRXajloODhaT0lwQStzbFZ4b056R3N1RUtNbWZjMG1P?=
 =?utf-8?B?YmpXYjFvWEJIMHlRUk1rUTVoQ01YaXdySXNGVjB3ZGJKNEd6Ny95T0ZmOHJ6?=
 =?utf-8?B?TTZyc24wa3prMjhzeFRMWlIvWGVqaDNELzhxWDM5TEYrQm5CVGxlY2s5NTds?=
 =?utf-8?B?a3Z6MUZZOVhjcythYWptd2oxSGVPOGw1M2hCZ2hQL0dEeGJZd0NvWHI4R29i?=
 =?utf-8?B?RGFjRUJGY2dRWDYxd1R5MnVidk9rVkZYbnAwRGtrRVEwK2t6aGlFUEdUd2Vk?=
 =?utf-8?B?aWtVeEluRzBpeFNqMldIcTRPYy84ZTEzRzkxajA4ZVdYQ0E5UXczeFo1ZWtG?=
 =?utf-8?B?aGErb1Mxcy9nZWZ2OUlMMlI0Q2szOVkwSGIwaU1ycDdsZml0ZHpMT0tnNjR5?=
 =?utf-8?B?aUxQL3U2WEg0RzdFWUUvN1p5NWlaTVUySUVScklKcVAvelBQM0FwUWczVDYz?=
 =?utf-8?B?ZTVMMDk2QXZKRk56dkZHTHBpblNvc1hhc1hKMGlVZ0FpdXBabHVPR0tKNDJ3?=
 =?utf-8?B?bWhkYTVaTU1vc2ZNRzQwMVhyWUJYRG1pNm5VUkFvb0xiRmdSbHBISUx2MHQy?=
 =?utf-8?B?cUd5SDlvTlU3OVJ6N1o2c241K0k3ZE1rU3k4SklDN0hwSzdaV1UzUGJEY1hn?=
 =?utf-8?B?MTFvRHo3UEp4YStVa08xcnpSTjlmZXNGVmpFdDNxY2MvaFRXSzNaQmp1N2sw?=
 =?utf-8?B?clFoVExyeU50S3VscGx5RE9jUW5xTU5LYXZmMENpa0FMVCtLbHZIbWMyczdo?=
 =?utf-8?B?SFhhM2V3NHZOREdrMUZiVGs1Q25NWENKdkw0WERMZWdsTlVkdSs3Sm5NMk9H?=
 =?utf-8?B?bUlOZVNZZHB1d1JMS0NXazhucHNmc1U1cW5SYUdIZlZoeVRJaHBoTU85M3Bz?=
 =?utf-8?B?bExoVjdkS21QampiVkxKdzNad0FKM0pKdTB4WU9Wa3VqV0p0R00xUFBwTW9S?=
 =?utf-8?B?bHNBTk1nNk9Vb0JGN3RKQzVYUHpiMUlyT211YUM1eDRkUFFTNlppZEl1c3Nt?=
 =?utf-8?B?ckNUVktodklLWFRrUGYxR1F2b2h3bUtzamRMQ3ZWcEtlTHJ1anBaRDNyeVlw?=
 =?utf-8?B?NFBmZFJ2M1hoQnc2RUIwMzRhZjBkNzBNOVNDS1JmQlU5Zk1FckJJY2doUjd4?=
 =?utf-8?B?d1Y2UmRFRTJKb2pRZ3RNMnZ2UUQzaEZkNmdkZ1FUSmN4QjJxdjV4OTF5UXFC?=
 =?utf-8?B?T09kaEdKbXI4eUh0QjcwWlFseTJDT21qT3hYcFZrSGhrM1hBWVZ6UC9Pcy9q?=
 =?utf-8?B?RGVITnQ1cndjUDRVcDFrWmpWZHFEelFsQUd4b0lnSlZKZHp2eGx5Q0RMQzVG?=
 =?utf-8?B?eEZQdm0xekozRmdlQWdhTXVXVlJVQkIxazB2b3ZqcDBpaWY1S0JBUVoyaE5I?=
 =?utf-8?B?YkJLbk42dytKWnkxUk1GcDUzQmxVeEs0Z3JId1IvVVhmVTVDRmdzRHl4bDhN?=
 =?utf-8?B?NjhlaDV2WWdod2VHUkZwUC9qbGlzRFQ0VVAwZlV3RXNibHBYWW5NWHZkSGIz?=
 =?utf-8?B?d1l2WEFoL0RVMUdpcGRrV3NjdytxZnBURWVmL1d0dld1SHg5cWNKLzZSWnRi?=
 =?utf-8?B?TGtORFFRSG9mU3NuN2h1U0NTQ1dVUWpaaUxNaXcxOUlFdUVSMU1YRFF5TXVo?=
 =?utf-8?B?SG5BcW0wRW9XNDNkelNCT1JuVmNNRFpvd2VyMzBBTVg5KzV0N0EwbGZFWXZL?=
 =?utf-8?B?NjRacjJ3dnBPSWRQR0RQd1dzcGRZZUNXVmJ2VGhnRDB6QVJhb2NaeEc3ZXVh?=
 =?utf-8?Q?73KayiUR7T5Kly5Hck=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S09sd3NIM0ZCZkxCL1BvUnFONk9lRER6WGFjMzNURXVxZ3ZEMFN1MnhtdjNu?=
 =?utf-8?B?WXJXdXVOcVhKVHl0dlpad3NvZlJTbzV1WnArcHVXajRhYk95SHZZNFNvSXJt?=
 =?utf-8?B?aVpFZmJ4eWdQVEdVTlJ2Q044ZlRhUEdUcmdpb1dBdmp6aGhVSEU0WkVxOCt4?=
 =?utf-8?B?M0RRdi8xYUVZMml2UGFxdm0vaUNhVWdWQzhtb3dZSEFXQzZLVWdLdEpWNmds?=
 =?utf-8?B?bjNGTWhFOHJQbGIxOWs5VGk4Vlg0Qm96N3NvYXFFNm4zRGU1dzEzM0JKNThY?=
 =?utf-8?B?cUZXYWR3QU5TR0hoeXllVkNDOEZ3OVBPTUtId2VBeDF3OHAxZCtPVzRFdUlE?=
 =?utf-8?B?d2pKcWxKT2k2TlZzNFRrblFXMWplVEZxTXBWbWJkcVNSOThkYndxZ3Yxa09E?=
 =?utf-8?B?b3o5RDE3K3RvaEswVjV3K1d3djE3M2VWOU1YVjBxWkhLU2xENElDcE1jRGdQ?=
 =?utf-8?B?SEN6OEFFTnN2RW1vZXB0Rk05RCtLMmdscjVYOEw4OHFEbERGSlRoSGhQZlV6?=
 =?utf-8?B?ZzFyRThyL3VjWkRKdUhGekMzaUtqdG05ZUFSeUtSamRGLzBob04xVU40Z1gr?=
 =?utf-8?B?MDJDeXdHdUJnQnQzMEFNK3ZhTjRmdEhSVCttcWNTL3V5T0xCa2tLaU9sTHNs?=
 =?utf-8?B?dGp4cmpUOVl6aGwyaWVCYmFSOCswM0gwOTgzNjVDcW9uM1Q0VFBZaWFYY2ZN?=
 =?utf-8?B?TCswcWtHSzNZeGwrSEhIYXhKK3ZFYlI0VDRYbWI1VzZyQlRsLzh6U1k2TVpr?=
 =?utf-8?B?M1BUTWlYOXpUenoxM0llRkhWNGl5dVhRTU9sdzFJdGZCdS9PYlpGQ0dMNUcw?=
 =?utf-8?B?b0dEVzZVYlgvbytPaHhuSmFDNGJxcTdmNXg1Z1NJZVd5NTRFaEcrZmt1WjBv?=
 =?utf-8?B?aWw5Nm13NlZWSjY5bGRId1lIMjJFRW9aRlFLbTA5YWdnZElSbnhCYmcyT1JV?=
 =?utf-8?B?dkhxQnZwamJWdGdCeFczL2sxYU1WQm5VYXNCU0RTdndMd29TUWdrb0dMM2No?=
 =?utf-8?B?VC91OE9oWGt1d1h3SXlKUnBQSTZvUHUrVk1SVXZ5MnpHS1lEOVZ5REVwY2dI?=
 =?utf-8?B?cHBpVmtOUmdYb1dYN0s0Y3pycEpvSmVlNTkwTnZab0dPaTdQaDhQTG9sSDh1?=
 =?utf-8?B?d3FwVGNNWGI2MlZjSVcyUFY2YzBoZmk4WGV4dG04MXdwYUZXZXlRdG5UdGJi?=
 =?utf-8?B?dDNYOE1hUWhtMVJwMGxxN2ZjbkZrYVpPNVZwakM1WUNmbzRobENUNFpMQklh?=
 =?utf-8?B?bkNBYlExL1A5Yjk2TzRuR2Q0d3BEejFrOHgrQm9OdUhQelo0cVVOY0RYK0Z4?=
 =?utf-8?B?L2k4TDJ0N21mejdWbC9zZkpNeUZidDRpdVdvKzc2ZzFTREtPRU1NRDhBblor?=
 =?utf-8?B?QmwrRlJ4U1ZKMzdQS0hjejRWKzZtRzc2RWpDVTBhZjRQMUNieTM5V1hEOGJq?=
 =?utf-8?B?T3RXNnA5ZjJUSnVjY2gzTVFzQmttR3VGVXhOazJ4N1VTdDZyZWo0VXEvTEpE?=
 =?utf-8?B?WUViSG5rRnordTJEZ0VGQkFEM2NNYUZBbnZEQXYrbEh5OGtoM2pzWG5uaGJF?=
 =?utf-8?B?K2hnYkQzbk56NTRrNzFlZjZWQlNSLzNEYjVZNDdCWFVkSmdhZVhjRFFjYWR3?=
 =?utf-8?B?R0VNT0VIVDNJUkxSUUNDNWJZU2dHK0xmT2pLQVdpUnFubEJ1Vkxod1lTaWI5?=
 =?utf-8?B?QU04N0RWRnR4aFVuMFVlSEhjZWJqbzhodUlkLzVYa1UwanlSL1BvRzJiQU1v?=
 =?utf-8?B?c2E5UFJsQmpVRXJBTWRTZFBFU0xybzRVMUZpNVhVMjk1NFhEeS9nM3VwUVBo?=
 =?utf-8?B?UnZmOXlEcG5mWjRHcTU4YUxOZTNwNVcrMThRblAxcWlXQlkrYlRXUURFSHJ4?=
 =?utf-8?B?R24wb2p1WmJVenFVd2ZtNUM0dHMxSHYxT3pSZm1BbUJOcW5CVjlRdlpPMEpY?=
 =?utf-8?B?Vm40YTZoeis1VkVCY0hxd3JnczVTY0huN2Z3cjZOWm04Y0VHK3AycC9EOHRL?=
 =?utf-8?B?UmxZSy8wTGxwVU1jUHM0elBybDdjZWZ2SUZCYTczb1lpSy9yMGFRQXdmZFZv?=
 =?utf-8?B?YnBPN3ROMEwyTmpBWU9iTUJuc0dwMmorR2pCdlBWT3ZpZGRLOHhONTRDRGwv?=
 =?utf-8?Q?D3UZceBZtLH61SPhTqdkNghD7?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46f13360-053e-4bfc-e9bc-08dcabf57eea
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 15:30:06.6090 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iymYatHaVqgQK8FcnQcfGzMutKfaPry+Hwd1/08gEAtzgn5AQNwk1d1rfcPTR7PDoVxFQnERrL050FSqn7lsMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB8793
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kIAiJiAQdlFVxwl+0rIIAOs2QVgZ/ClN1fEKi6hL0JE=;
 b=deQNJBn2MhWBCNenQn6QW8xEN0e77YtVLHtwUWz/bRgJebwgKIaQISn5ahrFjgD4wi5XMct6olGYjDcGStrz6gWjoy6JxNgI/is3CCRYQNwkS7TuiKOKF7WCuPMA8/4NM7oOUyqSGZENIBdYpUF818vgcgDIyilGNAFlEpCzbfM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=deQNJBn2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Get rid of spurious
 interrupts
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/24/2024 12:26 AM, Kurt Kanzenbach wrote:
> On Tue Jul 23 2024, Brett Creeley wrote:
>>> @@ -5811,11 +5815,29 @@ static void igc_watchdog_task(struct work_struct *work)
>>>           if (adapter->flags & IGC_FLAG_HAS_MSIX) {
>>>                   u32 eics = 0;
>>>
>>> -               for (i = 0; i < adapter->num_q_vectors; i++)
>>> -                       eics |= adapter->q_vector[i]->eims_value;
>>> -               wr32(IGC_EICS, eics);
>>> +               for (i = 0; i < adapter->num_q_vectors; i++) {
>>> +                       struct igc_q_vector *q_vector = adapter->q_vector[i];
>>> +                       struct igc_ring *rx_ring;
>>> +
>>> +                       if (!q_vector->rx.ring)
>>> +                               continue;
>>> +
>>> +                       rx_ring = adapter->rx_ring[q_vector->rx.ring->queue_index];
>>> +
>>> +                       if (test_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags)) {
>>> +                               eics |= q_vector->eims_value;
>>> +                               clear_bit(IGC_RING_FLAG_RX_ALLOC_FAILED, &rx_ring->flags);
>>> +                       }
>>
>> Tiny nit, but is there a reason to not use test_and_clear_bit() here?
> 
> I believe that question was answered by Sebastian on v1:
> 
>   https://lore.kernel.org/all/20240613062426.Om5bQpR3@linutronix.de/
> 
> Other than that no particular reason.

Okay, that makes sense. I should have looked through the previous 
comments. Thanks for the link though.

Thanks,

Brett
> 
> Thanks,
> Kurt
