Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6412B15897
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 07:54:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C5A481165;
	Wed, 30 Jul 2025 05:54:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mI9sdX-VqTeQ; Wed, 30 Jul 2025 05:54:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81ECE811D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753854869;
	bh=Gou1Ca9FmuQHyVFCY8MA8seevZf6ThkZ9boqFhi+gAg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u1LC0i0IDgRF0IKtpK/YmYPykwAdtopKDKiiQNKEHq+/1tqgL6xpktr8ng7cfB/Z1
	 TpMogEKtB2CfrwLqaLH+AJbbvJjR/J8mC3IHFxZy9pp7SsnlXLlSd7X2g4lRlGX/38
	 WN/2UTBUXDmKZLlgmVi+h8z0JLsi+INKSsTWyXUF95rlUCEuL/Z4yr5oMquuQw31K3
	 L4Szq6ZMhAlZwWG+Go0SGT4nMgJ94MW8QrcVms5xa6OB5U1CWu0jveqh6IhacU/tr5
	 AxcHUpsRxQnH4CxxTbgYUmccRKQY/mRU3JSb5q63aMq2tafYJdxvfBC9z7HwiTn6XR
	 vP7a+XgR+w6Yg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81ECE811D9;
	Wed, 30 Jul 2025 05:54:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 66CD5186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 05:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 63A79407FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 05:54:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q7T6mch9JFvY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 05:54:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.244.62;
 helo=nam12-mw2-obe.outbound.protection.outlook.com;
 envelope-from=gal@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9A2F4407F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A2F4407F4
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2062.outbound.protection.outlook.com [40.107.244.62])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A2F4407F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 05:54:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J2IKIe0LZYBvLmiMYNbiyAa6lABwEctBJe6HT9Vz/6x4t8vLCVkHAk+4xNHGYgTHA4DFO5q2pW4uZQYbROtL9nyg9njvLuTX6baUnyfsGj0hoCeGV1RzgA6vdhKPIjQiNdHzi95bfK9mDz9IXFhJhUMdYfW/JzDqqWC73x2MsmoPcgrYgOpN6G1YS8/U8nv3JtQRP0jQiUXjiiSzYDuwCX3IDKz6p6Af6T9xtVGomsCsimIY4r1xqb7YfIH9fQGW6lzExnfoLfbYZvo6hx5R4TUQO5dvgwG+lbqo9H8aMhMphPiqgwCWvbzN6Bzr32XAviLNrfQjHbgBW4dYb5OaYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gou1Ca9FmuQHyVFCY8MA8seevZf6ThkZ9boqFhi+gAg=;
 b=ghfKhPBOLQI5s+fP5B6c7MsRH0mCc/Wp9symddyRozXGIwEdtEkvSNjo5tRSuqncIe5YFGar07Pxn5WoKc+Pd24Leo98b6KfzDWJdUp/WLkoQX5wtgsEvwji2lgb9WQZkOv4sqKAdWL59X4MUnNCOkj8zJdncOEnD7qS/3zXPJIyGhJNtWP7AG6RO/goWAAXJX9TVyczXote2RRw+TwQ1LEKVNTK77o/bhEodXmU5oY/xwgyuxFAx3aC4OzV5Fs7gcChVndTD1/2wNwbmyrXeFxTXlkjj/rjA7LD4PCSgOxjy3tuiPoGjXm8yHOH5OOG5sZ/SE52KbRT3AyTKnqr6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CH3PR12MB7500.namprd12.prod.outlook.com (2603:10b6:610:148::17)
 by CH1PR12MB9573.namprd12.prod.outlook.com (2603:10b6:610:2ae::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.27; Wed, 30 Jul
 2025 05:54:24 +0000
Received: from CH3PR12MB7500.namprd12.prod.outlook.com
 ([fe80::7470:5626:d269:2bf2]) by CH3PR12MB7500.namprd12.prod.outlook.com
 ([fe80::7470:5626:d269:2bf2%6]) with mapi id 15.20.8989.010; Wed, 30 Jul 2025
 05:54:23 +0000
Message-ID: <041f79a2-5f96-4427-b0e2-6a159fbec84a@nvidia.com>
Date: Wed, 30 Jul 2025 08:54:17 +0300
User-Agent: Mozilla Thunderbird
To: Vadim Fedorenko <vadfed@meta.com>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>
References: <20250729102354.771859-1-vadfed@meta.com>
Content-Language: en-US
From: Gal Pressman <gal@nvidia.com>
In-Reply-To: <20250729102354.771859-1-vadfed@meta.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::11) To CH3PR12MB7500.namprd12.prod.outlook.com
 (2603:10b6:610:148::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB7500:EE_|CH1PR12MB9573:EE_
X-MS-Office365-Filtering-Correlation-Id: 39ebcfcd-a22d-40ff-00f7-08ddcf2d88fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dkFzTktqVk92aXNOMXRNRlFtVm8wSysrc3FlYWtZMS8rVWdJQVlBZTdybHo0?=
 =?utf-8?B?cWRHZ2tQVE5IcTkzd3hsbDY5UFE1S0tNM2FOWUwzSGF4c3VCUE9ZNkNCWTFK?=
 =?utf-8?B?aHh4Q2RTTGFIYm1kbW1UK0c2T0lvUTd4aFJPSERpZW00Tk5UeDgxYzBQNU5V?=
 =?utf-8?B?Vk1oVFFEc01Wb29mVEwzNFlwNGx6UVQxWmJvVzgrRWNhQTBweFh2TFhsd3ln?=
 =?utf-8?B?LzltRTYvV0NIQVphOGRadjhRb3d4YkFGQVpNNytnSC8rd3lSdmlXeEg5aUc4?=
 =?utf-8?B?K0lmOGhhZkJnNE51QmdadVlQRCtBWWprclBPcm5vSlc5cGs0eFJ3MUxJek93?=
 =?utf-8?B?T3pPNzcrZ2tjZHZuMkwxZ2txTDFTZ0xaUjU1UG1DNTE4ejZhcm9lZi9waE9P?=
 =?utf-8?B?SDB4akx2Z0NrdE5RNTFKcklPUmdLMEgzRGFhQUludWc5blJBQzN6MGI4N2RD?=
 =?utf-8?B?YlBQYmwzTzF6Qmd5VDZXREg2ckVWSHo2Ym1LSE5MRGVQc0E2Z0UrbTN4MUxB?=
 =?utf-8?B?ZDNkdGVlSDdBcUo3SXFkcEJwNFBrZHJyekhpcDlUYnVQeGREWHhZQ3p6SzBD?=
 =?utf-8?B?dncwMm9MTWhuM3dKUk5USnFNZXdDZlZjMWRvQ0g0d0NqdEpqdXNON0MvYjlu?=
 =?utf-8?B?WUlNYjdpaE56WXlESElKUVo3YnNaZ2xnTExzcjRRU1MwQk10OHFSS3N2OVp1?=
 =?utf-8?B?WG8zZ2FpczlaeWZFY3IrbVBzeFFUeVVrQXphdnl2N3h1OGJER2gyMnEwWnNv?=
 =?utf-8?B?NFYvMkl3OUtEclVYdVVzUEx5dlI2djliUUZYdFhNVU9mQk16b3J0a1VyU1N5?=
 =?utf-8?B?cXRpTDRoYXo0akVDNEwwck1HR2RkUVFxMjdtVzFydUtwQ3dBOThQcVdDTGVk?=
 =?utf-8?B?MEZ1OXdhQVlXeGkvaVNQZXp3S3V6VnVFWGhwdDlHNHZLS2dSVE40UEwyVzVF?=
 =?utf-8?B?WUJWdE5LVDlWVVp5YmlEZFg4TzZTSVNyRDkwaGFKWC9tOGFBdDIxcWFqRXBJ?=
 =?utf-8?B?aVg2QVc1bVBvQmZEK1RQYkV1L3FTbG8vVkdmbnJFY0tuak9Cd29QWDJPV0Js?=
 =?utf-8?B?UG1LMCsrYTVUc1FnY0lqVmVyVGtJbnozU0hwbUxqblpOdWFMeUc1QzZnSHhm?=
 =?utf-8?B?clRpS2QzeXBnYmY2WEYvNTVrRjRQR2ZZOWZLeFpGRjhOVlpXUk5JdXZLOHNo?=
 =?utf-8?B?WlFCa01WaDRTeERHZDNDMmRFRWxpei8vd1AvTGc3NlZCMVFiaXo1S1RmazZC?=
 =?utf-8?B?eTJDNDlOTi9LMFFSZi9GNXVkLy8rUVE4TWlpQmd6TDJtblRrRXNHUzhmZHhM?=
 =?utf-8?B?K1lLNWR4M0lZUEVLN3FsajVLT3ZiYTZLaW8xWjBXeTN0RWtvc09vSmFpN0ZK?=
 =?utf-8?B?Uks5dDJTYTZESjlJRWphMHpoNWRMMG00SDlYQStZRHNKQWp6d0lMMkZvcmlH?=
 =?utf-8?B?Q2k1TVVNKzFKVml4MWUzenVoNmlUVys5c0JINWl1cnJUWVprN3QyTmFsSjJC?=
 =?utf-8?B?OFUyTkxGWXlQRVd5aGxMS0c2U3E5U0tKN0w3c0pwZ3VKc2FLcnhnVVcwN3F2?=
 =?utf-8?B?NlJ0NEFtN0ZHL3hmZHhCOUk3amNUSFBhdkcyU3FNb3dtVHZtVU5CQkh0d3A1?=
 =?utf-8?B?a0w1bnRPTEh3aUJNUXhJeGVKNWhUb2Y2S1llazVvSkdKV1RNRzJaNVJJREhh?=
 =?utf-8?B?QkdhejZzVU9uMGpRSFB4d1hZUmlQcmJsemdnWVZBVkE5b2NQNm52Vkh3bWll?=
 =?utf-8?B?Vi8zVWt4RUIwWFJqcGVqR3dyYXRSZG5sMGxWajdpQ05GZnpGWHQ2dUFkS2JC?=
 =?utf-8?B?U29GZjEvSU1aVTkxaThXWkdHaU1sLzBYS0I4N3pPcG1TYVViUU1XcjNQa0FP?=
 =?utf-8?B?c0FGUU4zbHlrQ0NNS1FUZ1VNMzNXWjZkeHZBWGowaEFuYUQ2OVVIbGhaZFNx?=
 =?utf-8?Q?LbXl50uYHQc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR12MB7500.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RzZDUzN0Y3RqRDMvNEtmQ1c1aW01dzFCTTRHd2NNUzRsWGNqT3N0MXFPN0s0?=
 =?utf-8?B?bWYyS1JlZnh4Z0VvdVREd3RVL0RZZi9rcGlmcXlMSGcwUE1oNDJYMlpzMjRt?=
 =?utf-8?B?aWhxVjk4MmJJT2tWVDBpeVpmOFNubEd6T0hkbFhJbEJlQzZuV25ETHJSNjB2?=
 =?utf-8?B?WFZQbTR5MzRPcUZNNkVPOXZTMjZ5SS9VaHhWWDVHbVR4VmEvc3dqbG1sN2Q1?=
 =?utf-8?B?dDJVSWgzMklnN3FJeElybFlrZkY4WEUwVUsxMWNyNEZ1bG8zejFaZnYvL01Q?=
 =?utf-8?B?ZEtBTk9Ta2NnUzhJTENUSFgreVJhLzBXZ043MTAwM3dMb2d6ZnVjUVIrR3pv?=
 =?utf-8?B?L2pYQy9vRS96NFlWNU5yRlRsaU1TaXlEUHRUcHRTZHh2ZHhkQWdkMUtnRUFJ?=
 =?utf-8?B?bVdWeWNrVk50dFN2VGdBSFYvOFpwR3p4WkI1MlU5eTFPaksxVGRSZURFU0FC?=
 =?utf-8?B?WS9Wc1hwVUNkb0Zuckhxbjg0T0o5N0FiNExzdkkrTll6VDZaamI5MmRIZlhK?=
 =?utf-8?B?d3UvTTVab0ZHUys1RE5PWFFTbGphN3FWT1dzVDFiWjJGbXFCVjFWV3JjVFFL?=
 =?utf-8?B?ZDZTZktlSm5LK2Nmb3duWjhGa3IyaUR5cVd2cGZrcHJ2MGtGTVBrRTNQZkxZ?=
 =?utf-8?B?Zks3Z3VMdGcyREs4M1BkdEhGamtjTTNyVnVMVFpuTHdiMXlMTGRNODU2Y2pK?=
 =?utf-8?B?UEIwT3VRZUErajNWazhxaTlrWUFsaWZzYzV4dW9pTlR1eXJBWHRld28wbkNF?=
 =?utf-8?B?R0tRS3Q0d29tR3hrWU8vVmxhcnpqcTNZNW1JOFVpZEVEYmU2VzFReFhYNHky?=
 =?utf-8?B?V1NRQ3A5K0VQQUp5U096NkxJa1dKc0NKMEQyYnBYdHVQenJwMkZ6b3BiTHRV?=
 =?utf-8?B?Q1UwTFh2OUZkVGNIZ2R3ZWphb0xqNGxIcHBOTS9vRnJXeUJyZEZQQnNXYWFI?=
 =?utf-8?B?UGJNZkJ4SmczM0FoSHBYLzUveG9WaHlCemJ0THpEQXdjKzZuNHZXZWpsM2s0?=
 =?utf-8?B?LzZpY0pHVkFXMlMyTDFKZ205czFSVG9tOVBNaEV6RmRpNC92cGo4bGJKWUQ3?=
 =?utf-8?B?WWRrdUV3Uk1rMTFLWFBIc0NFc3NjbTB1NitGcmNKVXN2YmhUVE1RbnA2NlAz?=
 =?utf-8?B?cUg5bmQvWVhFU2w0VVVKcVJ6MFl4cG5kVHJVNW53RnJnSStuc0hOcmpiVGcr?=
 =?utf-8?B?K3BveTdIVnZmS1huZ2s4Z3BtZzlrR1JzUXB2L1lTUDNWQnpyblVoNUhRbkxv?=
 =?utf-8?B?Mk5SS3VFVkZWc3BINEZtVVhkTlUrVlUvZHNqaG9TU3NMNi9iTHlzR3RJditM?=
 =?utf-8?B?dXo5b2lCaG9SQW5HTWtVeHVVaGJKdG5HT1pVa1RCRTVRWTNNQUQ5R09JVHNS?=
 =?utf-8?B?b3BlVnZoRUMxL2cwU3FXWU5DSVl5Vk9ORVN4dkY1bElISk1iYVFzK1FyUm1V?=
 =?utf-8?B?WFkzV2ZNWHAzemF2WlBUWFFob3ladDdMbk43Q0Npc3ZiN1ovZ0ZEYUxRTCtT?=
 =?utf-8?B?aGtCVDdBU2VzSjVxV3B4VS9LdGRUcG55bjMvakR0UnBsVUxaTVVINmtYOVlx?=
 =?utf-8?B?bU1sWkY3Qzg5TFpiNDZQZDZnbjFDeHhRVmwyUzNDYkF3Nk1DR2VNMUxpeFBj?=
 =?utf-8?B?NjRacjd3Mi95SHZyekhXTTUrQmE4VzBaNDhhc3dtY3VlZ21vd09oUE5Ybnkv?=
 =?utf-8?B?UlBnd29IQXJwMjFjYThwMkhwK0puYWwxdDEzSEFQVU5SbFFxbkM2SXZSL0ow?=
 =?utf-8?B?UzlKSmRKVjZLUnVSSEYwRVA1N3ljTEhuSEpEeEhsWEh5NXBTM01QcUNpWWUr?=
 =?utf-8?B?Y1F2MFoyZjZOUTRZM1F0dW9rd0xQYmVnSnkxd1Y3ZXpCTm5hUjVwSGsyU1Ex?=
 =?utf-8?B?RHgxL1VRb3B1aDVFT0lzaUJYeTNXVUEyMzZqeHN2VWRiTFhVanFPaVNXWXh3?=
 =?utf-8?B?ZDVMbmZETjJ3Nzh2TTBqNEZZQ2h0dkNOb3o1UWowemJzVnFOV3JJNW42b1hp?=
 =?utf-8?B?TnpjZDRiRHM0eWdjbFhMU2FlcDJ6RmhPU1FNVURoTFBMcE5uczc5d29mYkxQ?=
 =?utf-8?B?RDFoUjVXKzNzZk5vVk5zTGJBeU9vMEpqSDNpdFRKZGtYMW9oaU1DejJjVnVQ?=
 =?utf-8?Q?trNsF0vy0UaOUHTxQ4hTi9/89?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39ebcfcd-a22d-40ff-00f7-08ddcf2d88fa
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB7500.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2025 05:54:23.8189 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e5dfSuWM2YKGmTrXXX6M7sUTSvCX3dqdzxZ3tLSvZsDQFwCKJHGY6cWQctJ72d8h
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH1PR12MB9573
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gou1Ca9FmuQHyVFCY8MA8seevZf6ThkZ9boqFhi+gAg=;
 b=fq69LCRisFB6fwiAQ3MA/DD/37zW5rnsFMDQJk7vUCp9tJnvJRD3zeyyNIfqi64peJm24E3+IEgSgVNln0oaYPLdxGz9nU0gM529B0M1R8G48MwyFywd+XlsgiiidstJGC57iJZLKvTVE6FB9ZKHPWVrWUeKv8MAijZxCiAOJl7nAnN8gyp6UwBs72hqCWct0/IbZP6A9Nzw1z0x9l+X3w/xQlC6gKHZ5QQ2kamJ65VcQ7cr8nYVJU/g8kV2GFHnynZHFiUlrsvwQ9X2biMvs65ciZ5F4NTUSRJ60By5ncsH1DcsVKRYbSCCnqVE3FzDkvG9MLkL4YcevuFjwAf92A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=fq69LCRi
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

On 29/07/2025 13:23, Vadim Fedorenko wrote:
> diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/ethtool.c
> index f631d90c428ac..7257de9ea2f44 100644
> --- a/drivers/net/netdevsim/ethtool.c
> +++ b/drivers/net/netdevsim/ethtool.c
> @@ -164,12 +164,25 @@ nsim_set_fecparam(struct net_device *dev, struct ethtool_fecparam *fecparam)
>  	ns->ethtool.fec.active_fec = 1 << (fls(fec) - 1);
>  	return 0;
>  }
> +static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] = {
> +	{  0,  0},
> +	{  1,  3},
> +	{  4,  7},
> +	{ -1, -1}
> +};

The driver-facing API works nicely when the ranges are allocated as
static arrays, but I expect most drivers will need to allocate it
dynamically as the ranges will be queried from the device.
In that case, we need to define who is responsible of freeing the ranges
array.

>  
>  static void
> -nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats)
> +nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats,
> +		   const struct ethtool_fec_hist_range **ranges)
>  {
> +	*ranges = netdevsim_fec_ranges;
> +
>  	fec_stats->corrected_blocks.total = 123;
>  	fec_stats->uncorrectable_blocks.total = 4;
> +
> +	fec_stats->hist[0] = 345;
> +	fec_stats->hist[1] = 12;
> +	fec_stats->hist[2] = 2;
>  }
>  
>  static int nsim_get_ts_info(struct net_device *dev,
> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index de5bd76a400ca..9421a5e31af21 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -492,6 +492,17 @@ struct ethtool_pause_stats {
>  };
>  
>  #define ETHTOOL_MAX_LANES	8
> +#define ETHTOOL_FEC_HIST_MAX	18

I suspect we might need to increase this value in the future, so I like
the fact that it's not hardcoded anywhere in the uapi.
