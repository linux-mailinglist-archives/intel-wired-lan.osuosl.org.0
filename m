Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D9657A4D647
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 09:28:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B686406E7;
	Tue,  4 Mar 2025 08:27:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NbIu7jbnnt8T; Tue,  4 Mar 2025 08:27:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14AEA406E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741076877;
	bh=H1y5UH4jlI0BLiGOH1ijK2BwCRvyP7wRdDqgn47eztk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FBKxRsydIbZsfZleLK/143cHqUBkhRgZk5Se2S4pRgHe9RxXg/rtwKGJPjGoEvDde
	 zHZU/8bG+VWjTA3uUfbIrl1ls8vB4S9rLMI8PllbfPGXtdsXwlCQhCbXrkK6UE8mwg
	 4kZru/RvxnTEQ8bSJOpMqOG6CI6Q4RPHEDI/rAZqA0m5dFp69qoDnNRaVFnXckvzxv
	 AV7CgJS2WTlsN5Ll0X+jH8By+ybaEqLrGmZRItGPrg5yMfDUR5x4qcFGmZffK+lA2v
	 7lQY4bIpQC0BBERfoTsDbK4dps3nFTuMHOWmj7o/b4qFmOkOtBboOnN31Yl56GoF4V
	 hBFD/Dq8MnHLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14AEA406E1;
	Tue,  4 Mar 2025 08:27:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 415FFD2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 08:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3065481145
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 08:27:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jZSTZwI-uVmF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 08:27:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 774998115C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 774998115C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 774998115C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 08:27:54 +0000 (UTC)
X-CSE-ConnectionGUID: kCzfKXyPQ6WElY/SJYqxHw==
X-CSE-MsgGUID: QyAxN5FAREOc9sfglTrztQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="53387348"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="53387348"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:27:50 -0800
X-CSE-ConnectionGUID: 2OS3Fs4TQHax+yPrkqwVRg==
X-CSE-MsgGUID: u7IsZtKcRi6J37iB57a8pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="123427393"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:27:48 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 00:27:46 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 00:27:46 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 00:27:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ytByUauVtJddJ8OydCo6toivSr0q/p07pRqgvAaU4egCjNzlQdtD4vC0D1sejYVINcmJD0htVfZl2eO5c4ul1dHdhq5jS79SklMf/y363Ys7alazNTnePRcWAEb9+ZWun1RFwa49fQMqVdM57zA6aI2vuDVJ0ru33UxSQjHStk9aKQooGllu3YAq+EfTswsRpKMtF7Vv+IieQVEs1Q0djIE/puS1/pYHdP6URwSPfHwuUN/sAMHaaDfSoypPA/LYv806+P9/+exrK+bqiZ9sU+f/41bXTScOXs35Uz4RUPW4lRb5kv1DAAcW+RLqqEY0LJKOh0YfDzLtkC1lxnAUBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H1y5UH4jlI0BLiGOH1ijK2BwCRvyP7wRdDqgn47eztk=;
 b=JZMpQxvXLP6kXTJ3VtMAVcaAFE+Ho8rv2DDwdkuyvqa/pUnOLmsIOPDq2WMRbz0Qv3jyqraSL94s1fBvFsr6Rg4M4gk2MMw38KmWArbdMPaZNM32yogvmvmf396NKZ13U+RfwutwyDb/CqqLLNd5YrKb7hVsm907JN78nGWXPJKOAzaJNmEodkGApe/i8qpexSIixxg2vafWsA/PAEJFQco7/oyakEN+mm/f+5YWdlxxwfR/AaWZeFLGtuTBsCMcKbfvr4t8RJmo44a2XN3RyBGpDBm72IhLR9O8XX7ZCTPK3Y7dcpNznbEQu9HNQl8enPWh85FeNHD/awLsHPqkMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS7PR11MB7950.namprd11.prod.outlook.com (2603:10b6:8:e0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Tue, 4 Mar
 2025 08:27:44 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 08:27:44 +0000
Message-ID: <a17f8193-10cc-4e23-b2d1-125a336c9ce0@intel.com>
Date: Tue, 4 Mar 2025 09:27:37 +0100
User-Agent: Mozilla Thunderbird
To: joaomboni <joaoboni017@gmail.com>
CC: <anthony.l.nguyen@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20250303204751.145171-1-joaoboni017@gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250303204751.145171-1-joaoboni017@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0077.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS7PR11MB7950:EE_
X-MS-Office365-Filtering-Correlation-Id: a97eed52-87e8-460c-5cc6-08dd5af66fcb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bjNLTFYzeEtsaWExNWR0WlphOFZ2czJSZTFDc0hFQ2ZZbGZCZnhtNUl3dnZp?=
 =?utf-8?B?QkpHYWZXTHVnQ1duUjhESjdNc1VTNC9TUkZELzA3MUZSc2xHWUI2ZGlsb3Br?=
 =?utf-8?B?WlRtcHEyQ0NZTGF1dzBTWmFwMlJQaFVNOVNsU0dKc0tyNXZGVUZRQm9tSFht?=
 =?utf-8?B?WXBWVmpRRTZZd3o0WjhPMHEvUWdSUEJuMUl1MmZOL3NDcUxZRDlpZ3d1YkIz?=
 =?utf-8?B?Q3dIMzQxREFqV2lwbG5BK2U0Mm15bTFFRDlmMEdFYnRFWThIQTVBdkNxQTlh?=
 =?utf-8?B?L0JCMjRXc2x1UzBnWDhiNXoyN3ZDSTl4UDFBY2pVK1JKYytsOU8wakdRZ0h4?=
 =?utf-8?B?Tll3OFRCT29TcXhzVzQwN2ZncHNwbGFGZEd3NXRCbkh0cCtQaWErZ0dZcW5C?=
 =?utf-8?B?Z0dtZ01sMFNYeTZIclhIaktpMmpxYzZyMTdOZy9GTnhoazU2YTV4UkNWNUdB?=
 =?utf-8?B?ckVTYmtERWdNbEZmeVljMzVMbHQ2aFZ2WWkrT0t5Y2d6MlB0U0QvV25yMUlZ?=
 =?utf-8?B?TlRpaTN0d2UyQlRYS1hQUlJEL3pONmdXMmdsUWVXZ09yeTF5emhCejVyVmc5?=
 =?utf-8?B?blZLbHBQamNVZWNwZEVHZFdtQm5keGZtMWRyK2hrNDlqbHB1VEpsakRuaEdE?=
 =?utf-8?B?VTNPcFRyYTZSbFhQUU5tR085UnJlNnQzQ3NJaGdJSWROQW0reUtxL2tZeXo2?=
 =?utf-8?B?VkNLZXRXQ010SnZXYk1DOFptd0R4dzZKKzFPTnhTblZ1YkJlcjFoc1N4MnBl?=
 =?utf-8?B?cm5IbFo2SGhOTFgrWm5mc0VyWWJuZHJXYStJKzNFSkpzc0JmSVVzWXZxZVI2?=
 =?utf-8?B?c2VGL0tkVHliYzMwZWdTcXdYOWpPdDdXNTlQaHdOYlh3b1FON2Y0VUtteWY0?=
 =?utf-8?B?QUtjNmdJVXY5M3krR3k1WHdveXg3cEYzYXdGcWhuZysvNFZ1eHBFdVF2UUNr?=
 =?utf-8?B?aWVFR2FyanRpVVB0VkUxb1VrRVk3WkUySFMwdGZjYysvTnFkeFZ6TE4xVWJK?=
 =?utf-8?B?d0FzazlyUVNEamowN2R1OGZMRVUrc1FOZS9OS0NrTWV6ZTF0bHdHYVI3c3Fh?=
 =?utf-8?B?QlVRUzF4ckphZ29ybHVBeXdlckxoSEU2VGVhTC9LZHBTMmNwWXplTlpWaVV3?=
 =?utf-8?B?SjZaeWVyL01IZHJnRzFsMTR2a3NCdG4zUGVQVjg4RExCM3dWRDVBendxaG82?=
 =?utf-8?B?OHJ2aWo5bktnbVY5K0RFMk9GaXF5UnFmRy9Sa0ZtOHNhM0tBZjRoeE5vUjh4?=
 =?utf-8?B?clFBSG80bjBLV214c1NDano0dWVRRVVpR3ZOenJtVU5qVUpnZjdjTUs3MmdZ?=
 =?utf-8?B?TkNZckNXcEF0MStqb0dwemFoa0pNQ29kRjNhWjU1RUx4R0xnYUpUQ3Y1b3RC?=
 =?utf-8?B?TU9WdG95Q3NOTlJYUG1RU0prYWt1UjFZNEVmamhQQjRkcXZRanNaR1liSEdR?=
 =?utf-8?B?b2kvWTZ3SUtsekJPMTNnSnl3TjZSNEF3cUFJVGFTT0g4RnNaWXpWb25sMzgv?=
 =?utf-8?B?UkZaN2VVV3BqRTRBU05hQ05NRytIKzVzVXRrRWRLRlpzWGpzTU52VmthUml3?=
 =?utf-8?B?ZHh5ZXUvcWliR1YyZUVjUFV4L0VVMlBZaG4ySmd3aVZmaFRzUFprQlRzZW5O?=
 =?utf-8?B?WmlXY2JBTXdna0NWVDBCWkcyYXZRZjZoVWJvdjFBT0dWbDhpTzBjTDA1ODNh?=
 =?utf-8?B?eFlTbWZCcjBJWHR4VkVFRmdydk5sOER6UEFrWGk1SXhUTlhZY1YwZDVXcGhz?=
 =?utf-8?B?N09JTERSZmJuTW1ROVBOc3JHVU9WTHN5aEhyRThndTYzS0Z2UG5lYWNuOU1x?=
 =?utf-8?B?bFBlTlkrb0VMVmJrdTNKTS84dWhiRDk1RVZ2eXorSTJoNlRDcFdFMGFIS1N6?=
 =?utf-8?Q?rAKZDD5bqki/x?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWJtQUxhbU9Gb05IcUt5UHFsZjUvWE9aQm5tWnorM1ExeFY2dE5xQ2wrNW8z?=
 =?utf-8?B?bjdwcTZiN0RKbE9rUlJPUERnOUUzeUNYMDNsR2YwenQ0a3drQ05HNkx4M0xJ?=
 =?utf-8?B?UWZ2b2xIZk1kVm5ya0xraTJtZUx0VlJEKzNrZ041L2grSHhUd1kxZDZydGNB?=
 =?utf-8?B?WFlwZTY0ZmNCb0YzS01jK2FuUTFQYjY4S3k2WVJHYVJmM1N6NXFiRkhWWnBs?=
 =?utf-8?B?MUsrc2ZuT25TN2JBdCt3SHVUYjlMUzBBL3puV2x2Nkk0SHZ1UXlsMzJGMmhI?=
 =?utf-8?B?SUp0cGJUaFZhbUNvUUZ3a280Qk5GN25vOWNVaTE1alhiOGxSL2owZjFmMVVq?=
 =?utf-8?B?L2RUcGdiTURxV0h2UHlRTVgyVnJkbWVqTSsyZlhTTk1iZlpaaUYwUU5yRG42?=
 =?utf-8?B?ZzFlZU1jLzhiN2xnam9GbUZhWnhkK1V3NlM5Q1gzTUJ6MFN1dWIvcUJtT1d5?=
 =?utf-8?B?UFlCYzBvaFp0MkRhR3J5TGprOEp4MVJHOVRvanF6YVpQVmdLbzgrYlBjaEVm?=
 =?utf-8?B?bHFUNExjV1Zha2FyeEtvcWo3OWM0TEZIK2ppT3N5QUxuWUJMTHRybUorTUc3?=
 =?utf-8?B?czBhR1Byb0dlYlJ3M0pBaHViaHF2Kysvc2dwNWlwbGtHRHRaSmFrZXh1RXE4?=
 =?utf-8?B?ZHBGUm9KYzM3L2tVNHlaR1gwbythK1hXMW9YNHQxWFV6OVloUUljSU45TXJO?=
 =?utf-8?B?aVVCYUZ5MGk0d1ZmWG1ZZStFRnNLL1dDVFA1ZGNKQWRrM3p4aVdRMlBrWll6?=
 =?utf-8?B?ZmJjRFNRbTlLdTJaK3NiWmtIazJpUmpGb3ViUkUyQ042dVpjZXloTFpJY0Zv?=
 =?utf-8?B?SGQ2RDFQQXRUaUxmNkEvcStaRXY5elVoSWFOT3ZaK2N5VUk5MTRjR2dLTmZN?=
 =?utf-8?B?MHB0N1VqL2w3d1hUemQrQXhucjZsQmxRNlcyREhrbER6NWE3RE9QeUpNYUs1?=
 =?utf-8?B?QTk1dXA0YmUzUUNabW1qeWc4d2JWSldEdkl5NFBtV2paaHFYaDBtcHpELzQx?=
 =?utf-8?B?bTJqU2toQWc2RUY4R1g5UzQreFFXY3VRYjk3akZ0Q2piRzYrOWFFaHp5SnFE?=
 =?utf-8?B?ZmFCVW04aDVIbDFxR1hQd0lEVHRLcFJEc1VPMjBYTWZ4T3RLTXdJcFhjY1VL?=
 =?utf-8?B?bUhZbGNFSEpnaG55ZVpvN0JPR2dUOFV0UGRBWkNqTS94THZpQ0x1M0VlQ2tG?=
 =?utf-8?B?OFhNVFB2em9obnp2ZzJSQm12T3BvZkdGeXlMSkRJRGRqR2p4cEZhTEsyamJv?=
 =?utf-8?B?U3lkOTAzSzdEMXBRTkIySE5EUnBDd2Vub0lIaWxDSzkzamZZaWsrSFNBTFJM?=
 =?utf-8?B?MnhKVmwzTldpaGJJbmV5OXFscmpIa2RuQy9LWldsVFF5dzBDQTFHSE92dnJZ?=
 =?utf-8?B?bUdDSUlSQUxFaTRUd0NqeVdyYU1HaWlNVkdpVGk3bTdZRXo5Ly80ZHh1bDBu?=
 =?utf-8?B?YTZadm5ZMU1yUWJDS1B4ZTVEZG9tWndybFJldEo3M2NnNm1Hb2RDb1lNbzk0?=
 =?utf-8?B?TDJYMjl6RkREYURZQW9MZDhvRE1ZMWtLUmtRQ3lBVm5ZSnJKVGVXdml3RTBU?=
 =?utf-8?B?ZW1MQWFzRG9Nc1pvYytDaU9ZRjFFNVZ4YXZBYWNXRDBaRGR3cFg1MlYyaUs3?=
 =?utf-8?B?OE5zelhiMy9TTzh0MHRoTUxtV3BqeFBFTUxnVzA0bFVKU1NUditYU0w3c3VJ?=
 =?utf-8?B?WVlDYmUySVpuM1QraWhoT1d6Y0liaUlXSmI0cklTNFYvd0JZY3JNY05ncnVQ?=
 =?utf-8?B?NUYwU3ZTOXNXVFdYZGMxTVQ4WXEzbkdpc3lEM2RGWGhPVVdNeW95NC92N0pQ?=
 =?utf-8?B?QnZzTnJSMlphTHJuK09MSUZ1eHRjUmdRQ20vMkN6c3o4VGlrMmFsanFFY2M3?=
 =?utf-8?B?eFFmbk9sVkJCNC8zT0luVGJEZFdPdlUzUmVIVHJPOVJFZUM5UEc1Y1ZYck5J?=
 =?utf-8?B?YTZ5WVBlait2UjlBY04zZkJBT1BPcGtGaDBqMmx1Q0dGcm02QXIrUTZmSW5S?=
 =?utf-8?B?Y3lNYTlQTGo4K3JIM242QVUvYktTUm14bG5GYlJ4bGtZeHRYYVkzQnBoRDh0?=
 =?utf-8?B?Y2t1TWl0MTNuaXFBdzluY0srek1kR2lUTDR6QUpwalppOHVxVkJ4WDN1TDRt?=
 =?utf-8?B?YmxQNDFNTEg4OFVVNjNTZkticjEvbDFNUUVBVElJTFFhZGhMakJkME1ia3R4?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a97eed52-87e8-460c-5cc6-08dd5af66fcb
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2025 08:27:44.2806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KSYbejAutyFcYqXSTRNF6x6EsS83At4T+xAbYy3Gi/TJR0zarA9swGgfDwE4DzcoE46LwpzpAn+yDMLhBY3KiFJuJVyObAjj8HCehmVe9vA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7950
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741076874; x=1772612874;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2fGXQw63hVVx8n2kbl/6jGjNQzWoj7u4WdAJNb1tUHs=;
 b=DSfetwuI7rEljp8/u9aovtrtEDk+mvXNkMS2Pf53u3ad0pE/Bfb0cG/7
 KVYXwTERha6AmQ0eoFA71HUHjsg5dIOX586wPfF3HedK3mL99gASu9K1g
 yRcu+45c474esRY6L1C1Y6mYtA+lkl8nCXVgZyHCM574zEuCurDGK6niv
 1DW2vurhrslVLqS+eVG8BkYyyYHrl5qFtDDekGSpCNrm39Sn9H/Knlq9l
 Ov6I3o3xTpJ9J3uqc9UEFviIkfEQEYy8nqKS2daQLw4R/PqfL3lxQItH/
 hKtjZ/7WdecRcmiXZOp1aUt6fOG2CdfbeP3shOEijmua1CeAPFUYKAUrK
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DSfetwuI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000: The 'const' qualifier has
 been added where applicable to enhance code safety and prevent unintended
 modifications.
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

On 3/3/25 21:47, joaomboni wrote:
> Signed-off-by: Joao Bonifacio <joaoboni017@gmail.com>

it will be good to use imperative mood in the Subject,
and add one more paragraph, like:

Subject: e1000: mark global variables const where possible

Next paragraph:
Mark global variables const, so unintended modification would not be
possible.

> ---
>   drivers/net/ethernet/intel/e1000/e1000_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index 3f089c3d47b2..96bc85f09aaf 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -9,7 +9,7 @@
>   #include <linux/if_vlan.h>
>   
>   char e1000_driver_name[] = "e1000";

your commit message suggests that you add const "everywhere", but it
seems that there are other candidates, like the one above

PS. You have to wait 24h before posting next revision.

> -static char e1000_driver_string[] = "Intel(R) PRO/1000 Network Driver";
> +static const char e1000_driver_string[] = "Intel(R) PRO/1000 Network Driver";
>   static const char e1000_copyright[] = "Copyright (c) 1999-2006 Intel Corporation.";
>   
>   /* e1000_pci_tbl - PCI Device ID Table

