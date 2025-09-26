Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F0BBA21BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 02:48:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6925F41B5A;
	Fri, 26 Sep 2025 00:48:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e-qiiPmaUuUJ; Fri, 26 Sep 2025 00:48:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A6EB41B5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758847720;
	bh=mJlD40ioKg6OaJ7tfBbmvE9yRViKdhgVDQDcX5PLzH0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RydYLQ+LT5rjbCA+PvjQSHaTZd+Rrfi21nSZ9PDxEmDv3PeYgmCTrg+1upHXTsO+S
	 6YMTmS9LaqMOc7Uqv7iuWUscgsiRD+KzSnnRQSNV9kpw3XJR7meyvbXEweSI3/amu5
	 yXKjjEN7wXrzDCEm7p8S0UHKpcMw+QBL7pCkEIFlTzcr5otluzF67gxUf0CeVKlnXn
	 BC2aJVep0O50MfHYWtD8mScO2VvMiklk5XiBG38vv90XKZkoG7p0D8pK2XXoa4EJZv
	 4koBNMjwQsyv9d8RVyZ26mVqM33aMTeOShUX9YA45sTiYjGR/1Yai8rmAwYR35ddY2
	 wgB55y3O1y+aQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A6EB41B5E;
	Fri, 26 Sep 2025 00:48:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7135E198
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 00:48:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4F83A84032
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 00:48:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6_apud3tO7Mf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Sep 2025 00:48:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=madhu.chittim@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B8DEC84217
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8DEC84217
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8DEC84217
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 00:48:36 +0000 (UTC)
X-CSE-ConnectionGUID: g0yoGs+aTkW0exwpmzErZw==
X-CSE-MsgGUID: 29Bmad2BQGudXgJfL3p6/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="60877122"
X-IronPort-AV: E=Sophos;i="6.18,293,1751266800"; d="scan'208";a="60877122"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 17:48:35 -0700
X-CSE-ConnectionGUID: 066QzngJTW2FzVhuQE0vBQ==
X-CSE-MsgGUID: lXO1nOQeR1eM5TXPTMixGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,293,1751266800"; d="scan'208";a="177310499"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 17:48:34 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 17:48:33 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 25 Sep 2025 17:48:33 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.50) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 17:48:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YZkx4iKz5+hruprfb6DTPQYSMz8+RfAYplkzT++t4umOOhH38I0GxAVmpS4ppKINzRSraGWb0+Jg1IfoqT8AdcicYGebZlSTRrXwEvr77J3a2xaltclhgpVgy0C5lQxKqTM8hFL66nFOjwh3s1os8C7SlwEvktGv6aLEeCHsUNyAL6UairqeRZiqR/jRcsr0teLbbKhuLTUPXxXQnx/XUGLH0iO1KkGEcX5v6MsMXyzk3SuRr+TlJXPPrjWvbkG+olni8GiJB0xJ/UFq9/0IilEoLDDS/E+MpOhMtItmsteONPfggMAgP+M4TQUt+efMNfvdxvSmP5VPJRH/gVMCug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mJlD40ioKg6OaJ7tfBbmvE9yRViKdhgVDQDcX5PLzH0=;
 b=UouhmNll6p0YviKHNIqnS68o8Pz5M+lSkPIYXlubaU99N3dPPZ7l1rKcqpWBO5d1XEWreeRy1pld2sRhC3aXLm3pSpc467lOrU0UMJlyWyZHPiPBC7OwOh2szpI03NazPJAD3Zg56NaDpK3EO5bsZP3QnF0IEwP0g/U/VSW2BDcvNKtjTLR9DaRvJ8iS3Z3zCANsEgRLhilI7pwZXWhG2wmGGIE6uSbQ5NGz1DcCW7XHfJ54B6msntAGLElDEHrVWFtNDlKbqvQXCObS5vYw8DCz+SvZFQ8HprK/dMWVdwEmhrz4jS2MlZnVNd8v8SaL+me9AXGOzyMmudIpaZrlGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5688.namprd11.prod.outlook.com (2603:10b6:8:23::12) by
 SN7PR11MB7065.namprd11.prod.outlook.com (2603:10b6:806:298::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.11; Fri, 26 Sep
 2025 00:48:29 +0000
Received: from DM8PR11MB5688.namprd11.prod.outlook.com
 ([fe80::a4c3:61c6:e2ae:c9c4]) by DM8PR11MB5688.namprd11.prod.outlook.com
 ([fe80::a4c3:61c6:e2ae:c9c4%7]) with mapi id 15.20.9160.008; Fri, 26 Sep 2025
 00:48:28 +0000
Message-ID: <95135d40-5991-48af-aa1f-771fc9c99348@intel.com>
Date: Thu, 25 Sep 2025 17:47:06 -0700
User-Agent: Mozilla Thunderbird
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, Pavan Kumar Linga
 <pavan.kumar.linga@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Simon Horman <horms@kernel.org>
References: <20250903035853.23095-1-pavan.kumar.linga@intel.com>
 <18111eee-3b3b-4cfe-98be-ab5f93b0aafb@intel.com>
Content-Language: en-US
From: "Chittim, Madhu" <madhu.chittim@intel.com>
In-Reply-To: <18111eee-3b3b-4cfe-98be-ab5f93b0aafb@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0364.namprd04.prod.outlook.com
 (2603:10b6:303:81::9) To DM8PR11MB5688.namprd11.prod.outlook.com
 (2603:10b6:8:23::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5688:EE_|SN7PR11MB7065:EE_
X-MS-Office365-Filtering-Correlation-Id: 58482b93-3bee-4686-30d7-08ddfc966676
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aE81U3hBcm56aEZqSmFnaVZsb3JSUzgvZXN5ZkFaVnZaNC9odzlRaW54akpG?=
 =?utf-8?B?WUFmMXg1OUNOV3pUWmNXWnJERnpjaXNNT1k5Y3BkcDAwbE1ZeGhvY0ljOGZa?=
 =?utf-8?B?b2hFNUhnd3hsK1JtcGNsUGp5NkplUURxVk9xelJXdUlGRlFnQzZDRWhZYWNr?=
 =?utf-8?B?aVBsczVZSHBOamFpVmRrOE5uZTdheFdHT2tUeVpRZkkzaHBUZDRLSjgwZ3pm?=
 =?utf-8?B?RlN1T1locDFQaXgwMEtMYlMzVFRMZmpJODBmRmJUcnV3M3A4LzRsbUdvVTc3?=
 =?utf-8?B?UVVMU1h0VFdOOVRBbUhpelpvVTRMSHNKTjc2OHdlaW9zZWJiaTVpQTdRY3A2?=
 =?utf-8?B?bC9TVXdXUlh0VHlkcHdYUUF3NDdmcnMrSWZzV1VkKyt1K3JkNnZrdmNTSUNL?=
 =?utf-8?B?ZDRZNlNINzZtVzlSbWhMbG12UWFKdm55ZzYvLytOT1FFZDlpUGZlaWdSYnJH?=
 =?utf-8?B?RHVVUTdIalBTb1oxNXhZdk9TMWJZQitiaEwrTUlJQ3M4NUVxODFieWc0Y2F0?=
 =?utf-8?B?WnpCOWhsV0crRjFNWnZscDUzc1piRktHcnRNM1lIb3AwTlIwNll5OURSYlhZ?=
 =?utf-8?B?ZGJleWdUSzZxY3hZZ1U3bHhUcEVHeUl6cFR3Z2gzQmh5N1lnYnlpeUV5SWJ3?=
 =?utf-8?B?L0kxZU1CNUpuY0FoZE0zeHNrSk50R1JGUElpdVdrOFVSSnl1QnZya2ZYK1RH?=
 =?utf-8?B?eTNFVlU0RU50QlhIR1dyMm9TTGthUEJxK3BoUElJYjh0alRBNWhBUHlQQ2hj?=
 =?utf-8?B?dEZCVkRGNDloNmZYVXp5WTJDSks0NWFHM1dtODNTc28vaU9kbkE1djJhUk54?=
 =?utf-8?B?c2VaYlBERTU4czZ0cGlSNHdiN3pYd0QvTmcvMUE2RHdOcC9wTXlsSC9TNFQ5?=
 =?utf-8?B?YVJ0RTd2bHdRY1F2OElxaVV0OGp0b01xeDBGL1lqZkg2YXV6dzRuaFhXdlVh?=
 =?utf-8?B?YmRSUitvMU5zRThPeEE2RVEvREk4S29tNGhGd2NFc3NNSlVTMUQ2d1pWVXNX?=
 =?utf-8?B?amk1SDU0WmMzMm1mYjVCYWYyUnZJdzh6M25aeVh2SXd4cExtQlBBYUFZRHBh?=
 =?utf-8?B?a0pYaWlkbDFmLzErSTlQaTlvNm9oT2FCV0NMVUtPenJPTUUwb0FBOUJtSzcz?=
 =?utf-8?B?bEFwVEJEMXJBY2lOSm9kelFBT0JqUEl1SDN0VFFFNTEyNXBQSWJEamNZYksr?=
 =?utf-8?B?TmZTUjNWK3ZrdjduSmthLzNuS0d6cDhwUkRkVU9YYTJteTJoaFlITU55aGZa?=
 =?utf-8?B?c0VPbkUyQkhZdFNMdUVrb2dpVXVSK1FWTDN2aGpkWVBvc2NJajVWU3grVkNR?=
 =?utf-8?B?cE90M1RjaHVNVEdwVTcvd0FGTXRPL3JySkdCNjRIeHc0a0tIb1JmTkpSY0ZC?=
 =?utf-8?B?YVBhZzljZEZkWUgwUEloczhYcGVBZ3NjZEJ3MUptVlgzWGNYMDhobnNhWk96?=
 =?utf-8?B?VHdGR1hZRFpISVBBL24zRFhQckJNL0FYbDhPb0UrUlpQemRQa0UzQUFQL2lp?=
 =?utf-8?B?ZEdNTnJZVkdsZEZzVDVMUFRJRUJJYk5Mb2d0VzdkMU95SzNVVWZ2bVBjaUU2?=
 =?utf-8?B?bldrVStUZDJLYU1mZVNGT1RGZ3RVV1J3SDlCbGEzOVoxeXRwTCtmQS9SbTIx?=
 =?utf-8?B?czc1THd6RDFtcWs4T0JjR0N3M3pUdFRvME0veVV0RDQ4bnFjdHlCNGtGWTRt?=
 =?utf-8?B?R2d4UDVaclVZb2szbXhMdmx5RVZuM1VnT2hqS3dzRnFueGQ1ay9ERENIaTho?=
 =?utf-8?B?ai9BdXVBU0JJQVJNeFN4ZFBnM0U2UG56WDJadlppemJjKy82TW1lKzJkeDhw?=
 =?utf-8?Q?Y4rqSKAcherG8zDmJkY0Q/UHp5c9opEEoUaSk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5688.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDZQV2ZPdUU5VDQ2OWROanRMeXBnZnk2VVN6S1dYa0J3K0VOOTVEOGFBTFdi?=
 =?utf-8?B?bkxmZnNzdFNxVGV6N1hYWUxPL3dtd3ZYcEF5RDFUaUxKVGdxWkZPazQxQUtm?=
 =?utf-8?B?WVN4eWxGM1Zyd29kU054NkxrRjFlLzhlZldza1hJMUtnaFBpWCs2a1IyK2lY?=
 =?utf-8?B?RG1Pb2VRS1BQdzdUTGZmTEJwaUFyMjZKcWlQZjIwV1ByMHYwUjlJeEJVRyty?=
 =?utf-8?B?akxjQzBxcXd2WWFjUlNXZE9kYkJRblNKUmpiM1J1Z1E3L2pyK1BPWHBzK1NP?=
 =?utf-8?B?SUdSZzNtYzdKdnpnelJvTFhNRGV6bkVaQkxTbXZnWklrM2FvUWx5a090NHo2?=
 =?utf-8?B?M2xDK1FhbEMySXkwc3lDa01KOGQ0OE5HaWVtd2x4VlJOdmJlQm8vSG9kS3p6?=
 =?utf-8?B?QkZZeXNCTzl6bHhHcDNVTnlESmtvTmxCWDNNWnFCbVhWNitWS3hpbDZFQkRN?=
 =?utf-8?B?NTIrWnUvUWNCY1ZiMDVvNUx0dWs0cUVSUXorRnl0TzZDRXdXRmpOby9mNmp5?=
 =?utf-8?B?bStmRkVkTncwYUtmRmRHUitNTXg4Zk4xK2toZzhCZ09ocnRSZFA5ZURBbXJW?=
 =?utf-8?B?d1NSS1JWVEtTMUVrVHhPeVhqYmZwdXBnelUzcFNOOVREa1c0UVZGRXJIb0lB?=
 =?utf-8?B?WTNLaFRhaGV2Rm9SMm9sakJpRW8ybC80cEZOOENlbDljY09oNUh4RVRsTCt6?=
 =?utf-8?B?QTl4azk4YStPVnlGT1dicTFSaEFMT2g0ZmRxV0FEeENObXFaVGlURGhRVnF0?=
 =?utf-8?B?c0ZmbUtWM2lIQ0JXaGJ6bERUY21QczBGOHR0NGExNEZ4ODhTcjd1VjRhUFdw?=
 =?utf-8?B?TmxlaWlRQjBKQkc2K3FKMG9xM0dlVzBjZFlRSFlYbHdqcy9LY21rcWRUY0ZI?=
 =?utf-8?B?UWhEM0lLUUZmeW5zODBrS0txRVdPOUJDQzQ3UUU1azMraEZFLzduTlZsNStr?=
 =?utf-8?B?WHpxM21WNDNEZmdZdWs3UnlNNVdCMTNlVmdSVGpJUTJyL3FjdEROS2dic0Er?=
 =?utf-8?B?b1VjTm13WEtLd2xaYktEN25qay9NT3hEU2VCeGV0aDFZZk1XZFg3NDMzeDhi?=
 =?utf-8?B?dWI1eWlwc2JiRmNKOHhMM3pZd1VJNnBiU3FxenlISnJDbmNNUG1MZ0VDMnJv?=
 =?utf-8?B?SDZ4RjdpUWlWcTBCM1F3OFcwMkZCS3AwNVNTWWNUREJ3K24rd0xSTVh1aUN5?=
 =?utf-8?B?VFFWaWRBVG4rUkhBSHRYSHloRGFna21EWjRWN3dqOUdwWlMxaFpyT0dNMGhT?=
 =?utf-8?B?bC9wNFgyaHc1Ull0T1NtTU9wUzYwSS9vaFNld2FEN2lqaHVLR2R6T2VCcmFl?=
 =?utf-8?B?SmQwa1ZHcXF1d25TazBydXM3dG8wT0dzQys1dHJTMFl2ZzBEM0ZlZENPQkJm?=
 =?utf-8?B?WWlQL3hrcHFrMXVYb2NEZFNjVlcxZTQ4UWdZRCtXQmFnbTB5ZVN1SUw2SXMr?=
 =?utf-8?B?OXh2dmFhd0RVWUt5UHNJZjB4ZkROcWNDdXhLWGQ1R2V5M2tNM1lLbTNEL0Q2?=
 =?utf-8?B?dUJnb2M4S1c1UUN3cmNQK1FGTjJGNmFrV0JYSUs0OTU4QjF1cityQUI0d2hT?=
 =?utf-8?B?UWVsMm9hbmlpNFNVYk9PUFhSak5INW51Vm4vZWloazVzRWs3TVJQRU5XVlJ2?=
 =?utf-8?B?bFd2azBRT2czd05XOHZLS0FHeDN4ZjFTOEJXa1c5RUprdjRCNnl0NEZjelNH?=
 =?utf-8?B?S0Q3S2hsZWZtekNYRi94MGkzMlZxTkdjRk9ERGFrZ0sxMlV1cUwrS0wxMFJ5?=
 =?utf-8?B?V0EzdEUva3UrS1FydHlZamt5TVFENE4wejBSTWJkTDhBR2xTaG9zNlZPVk9p?=
 =?utf-8?B?ZS9nWUp5QXJYNzdwK3FJSTBRb0gyVmVvM3dIZWI1alM1bW5DeVlFZWs4L3Jm?=
 =?utf-8?B?cEtsNm1lZWYwdXM1S0ZGMXVhY1FFdmd5Y0g4cFI4YTFFZ016Zlo1WE11Nk5U?=
 =?utf-8?B?M2JLYTVDakV1alY5SHl4NnU3Z0YzaDBwR1ovUnNPVFdqeDVBdUdKTzRiY00r?=
 =?utf-8?B?djdLSWo0ODNJZTVEYmlmQmdNam1sTmNLVGcwSHg2M2R5aVVmYnNXSi9RU0V2?=
 =?utf-8?B?TlRxWUY4U3BwM3c2WDRKajVTSTQydDVVUklGRVpibUlTU0RyS2tiUy85Ri9J?=
 =?utf-8?B?dTRsN2FIM3J5YTJrTnZpRHFobVAyWlJPV3UyYXkyak9WZ2NsdkZVQ1l1VXpO?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58482b93-3bee-4686-30d7-08ddfc966676
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5688.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 00:48:27.9373 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hjRw3Ubs4ydHnshZRHJEZtLPWTZyaiTweJz5cMVl5yF1uazWwl08kaefrUMQ1wMgEsC8wyvAcS6AWVe09wiCOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7065
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758847717; x=1790383717;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gj1G5FexpRZhcOCxuIP+qCVRqCuUTqliF07Ype0agVk=;
 b=aYmz9xq+jmBaRq8cMXkzqoBBoA4cgOeIjc1z83ni6mUpqSqMUy02H7u8
 iucR6qTIbYofJaQMay3ORxltvd4+mPni9xnQPA5YYn8nLmAGuHr7mxx4c
 wu8gKV+rRPg0pGkWDEQFvBgFAWE69K4gfpo06rx9//YiLNPK25EbsUm7f
 iPRFJHLQpzD/u50GgR7zakPaxBVZncULr3uALNQea5F/EBxkKsFz4DwYA
 qf/Ni2Cm4+Zd62i0Glrbj8jdc5yXWddNgm2QfQthVmGG7X6U9pBDcbWjU
 MOd+QGcAF04HeauGnOh0EBiXJAP8U6K0fRvqKLTLtp2ubdA8nMstJU7K4
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aYmz9xq+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4] idpf: add support for
 IDPF PCI programming interface
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



On 9/24/2025 7:52 AM, Lobakin, Aleksander wrote:
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Date: Tue,  2 Sep 2025 20:58:52 -0700
> 
>> At present IDPF supports only 0x1452 and 0x145C as PF and VF device IDs
>> on our current generation hardware. Future hardware exposes a new set of
>> device IDs for each generation. To avoid adding a new device ID for each
>> generation and to make the driver forward and backward compatible,
>> make use of the IDPF PCI programming interface to load the driver.
>>
>> Write and read the VF_ARQBAL mailbox register to find if the current
>> device is a PF or a VF.
>>
>> PCI SIG allocated a new programming interface for the IDPF compliant
>> ethernet network controller devices. It can be found at:
>> https://members.pcisig.com/wg/PCI-SIG/document/20113
>> with the document titled as 'PCI Code and ID Assignment Revision 1.16'
>> or any latest revisions.
>>
>> Tested this patch by doing a simple driver load/unload on Intel IPU E2000
>> hardware which supports 0x1452 and 0x145C device IDs and new hardware
>> which supports the IDPF PCI programming interface.
>>
>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
>> Reviewed-by: Simon Horman <horms@kernel.org>
>> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>> ---
>> v4:
>> - add testing info
>> - use resource_size_t instead of long
>> - add error statement for ioremap failure
>>
>> v3:
>> - reworked logic to avoid gotos
>>
>> v2:
>> - replace *u8 with *bool in idpf_is_vf_device function parameter
>> - use ~0 instead of 0xffffff in PCI_DEVICE_CLASS parameter
>>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf.h        |  1 +
>>   drivers/net/ethernet/intel/idpf/idpf_main.c   | 73 ++++++++++++++-----
>>   drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 40 ++++++++++
>>   3 files changed, 97 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
>> index c56abf8b4c92..4a16e481faf7 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf.h
>> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
>> @@ -1041,6 +1041,7 @@ void idpf_mbx_task(struct work_struct *work);
>>   void idpf_vc_event_task(struct work_struct *work);
>>   void idpf_dev_ops_init(struct idpf_adapter *adapter);
>>   void idpf_vf_dev_ops_init(struct idpf_adapter *adapter);
>> +int idpf_is_vf_device(struct pci_dev *pdev, bool *is_vf);
>>   int idpf_intr_req(struct idpf_adapter *adapter);
>>   void idpf_intr_rel(struct idpf_adapter *adapter);
>>   u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter);
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
>> index 8c46481d2e1f..493604d50143 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
>> @@ -7,11 +7,57 @@
>>   
>>   #define DRV_SUMMARY	"Intel(R) Infrastructure Data Path Function Linux Driver"
>>   
>> +#define IDPF_NETWORK_ETHERNET_PROGIF				0x01
>> +#define IDPF_CLASS_NETWORK_ETHERNET_PROGIF			\
>> +	(PCI_CLASS_NETWORK_ETHERNET << 8 | IDPF_NETWORK_ETHERNET_PROGIF)
>> +
>>   MODULE_DESCRIPTION(DRV_SUMMARY);
>>   MODULE_IMPORT_NS("LIBETH");
>>   MODULE_IMPORT_NS("LIBETH_XDP");
>>   MODULE_LICENSE("GPL");
>>   
>> +/**
>> + * idpf_dev_init - Initialize device specific parameters
>> + * @adapter: adapter to initialize
>> + * @ent: entry in idpf_pci_tbl
>> + *
>> + * Return: %0 on success, -%errno on failure.
>> + */
>> +static int idpf_dev_init(struct idpf_adapter *adapter,
>> +			 const struct pci_device_id *ent)
>> +{
>> +	bool is_vf = false;
>> +	int err;
>> +
>> +	if (ent->class == IDPF_CLASS_NETWORK_ETHERNET_PROGIF) {
>> +		err = idpf_is_vf_device(adapter->pdev, &is_vf);
>> +		if (err)
>> +			return err;
>> +		if (is_vf) {
>> +			idpf_vf_dev_ops_init(adapter);
>> +			adapter->crc_enable = true;
>> +		} else {
>> +			idpf_dev_ops_init(adapter);
>> +		}
>> +
>> +		return 0;
>> +	}
>> +
>> +	switch (ent->device) {
>> +	case IDPF_DEV_ID_PF:
>> +		idpf_dev_ops_init(adapter);
>> +		break;
>> +	case IDPF_DEV_ID_VF:
>> +		idpf_vf_dev_ops_init(adapter);
>> +		adapter->crc_enable = true;
>> +		break;
>> +	default:
>> +		return -ENODEV;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>   /**
>>    * idpf_remove - Device removal routine
>>    * @pdev: PCI device information struct
>> @@ -165,21 +211,6 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>>   	adapter->req_tx_splitq = true;
>>   	adapter->req_rx_splitq = true;
>>   
>> -	switch (ent->device) {
>> -	case IDPF_DEV_ID_PF:
>> -		idpf_dev_ops_init(adapter);
>> -		break;
>> -	case IDPF_DEV_ID_VF:
>> -		idpf_vf_dev_ops_init(adapter);
>> -		adapter->crc_enable = true;
>> -		break;
>> -	default:
>> -		err = -ENODEV;
>> -		dev_err(&pdev->dev, "Unexpected dev ID 0x%x in idpf probe\n",
>> -			ent->device);
>> -		goto err_free;
>> -	}
>> -
>>   	adapter->pdev = pdev;
>>   	err = pcim_enable_device(pdev);
>>   	if (err)
>> @@ -259,11 +290,18 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>>   	/* setup msglvl */
>>   	adapter->msg_enable = netif_msg_init(-1, IDPF_AVAIL_NETIF_M);
>>   
>> +	err = idpf_dev_init(adapter, ent);
>> +	if (err) {
>> +		dev_err(&pdev->dev, "Unexpected dev ID 0x%x in idpf probe\n",
>> +			ent->device);
>> +		goto destroy_vc_event_wq;
>> +	}
>> +
>>   	err = idpf_cfg_hw(adapter);
>>   	if (err) {
>>   		dev_err(dev, "Failed to configure HW structure for adapter: %d\n",
>>   			err);
>> -		goto err_cfg_hw;
>> +		goto destroy_vc_event_wq;
>>   	}
>>   
>>   	mutex_init(&adapter->vport_ctrl_lock);
>> @@ -284,7 +322,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>>   
>>   	return 0;
>>   
>> -err_cfg_hw:
>> +destroy_vc_event_wq:
>>   	destroy_workqueue(adapter->vc_event_wq);
>>   err_vc_event_wq_alloc:
>>   	destroy_workqueue(adapter->stats_wq);
>> @@ -304,6 +342,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>>   static const struct pci_device_id idpf_pci_tbl[] = {
>>   	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_PF)},
>>   	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_VF)},
>> +	{ PCI_DEVICE_CLASS(IDPF_CLASS_NETWORK_ETHERNET_PROGIF, ~0)},
>>   	{ /* Sentinel */ }
>>   };
>>   MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
>> index 7527b967e2e7..4774b933ae50 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
>> @@ -7,6 +7,46 @@
>>   
>>   #define IDPF_VF_ITR_IDX_SPACING		0x40
>>   
>> +#define IDPF_VF_TEST_VAL		0xFEED0000
> 
> 0xfeed0000U

Will fix
> 
>> +
>> +/**
>> + * idpf_is_vf_device - Helper to find if it is a VF device
>> + * @pdev: PCI device information struct
>> + * @is_vf: used to update VF device status
>> + *
>> + * Return: %0 on success, -%errno on failure.
>> + */
>> +int idpf_is_vf_device(struct pci_dev *pdev, bool *is_vf)
>> +{
>> +	struct resource mbx_region;
>> +	resource_size_t mbx_start;
>> +	void __iomem *mbx_addr;
>> +	resource_size_t len;
>> +
>> +	resource_set_range(&mbx_region,	VF_BASE, IDPF_VF_MBX_REGION_SZ);
> 
> Why use `struct resource` at all here. You  have start and len already.
> Encapsulating them in a resource only complicates the code.
> 
> 	mbx_addr = ioremap(pci_resource_start(pdev, 0) + VF_BASE,
> 			   IDPF_VF_MBX_REGION_SZ);
> 
>> +
>> +	mbx_start = pci_resource_start(pdev, 0) + mbx_region.start;
>> +	len = resource_size(&mbx_region);
>> +
>> +	mbx_addr = ioremap(mbx_start, len);
>> +	if (!mbx_addr) {
>> +		pci_err(pdev, "Failed to allocate BAR0 mbx region\n");
>> +
>> +		return -EIO;
> 
> I'd remove this newline.

Will fix

> 
>> +	}
>> +
>> +	writel(IDPF_VF_TEST_VAL, mbx_addr + VF_ARQBAL - VF_BASE);
>> +
>> +	/* Force memory write to complete before reading it back */
>> +	wmb();
> 
> Make sure you know what you are doing. writel() is not writel_relaxed(),
> it already has a barrier inside.
> 
>> +
>> +	*is_vf = readl(mbx_addr + VF_ARQBAL - VF_BASE) == IDPF_VF_TEST_VAL;
> 
> Maybe put this `mbx_addr + VF_ARQBAL - VF_BASE` in a variable to not
> spell it out two times...
> 
> Also weird logic. You don't map the whole BAR, you map only a piece of
> it. Ok. But going this route, you need to read only one register. Why
> not then
> 
> 	addr = ioremap(pci_resource_start(pdev, 0) + VF_ARQBAL, 4);
> 
> 	writel(IDPF_VF_TEST_VAL, addr);
> 	is_vf = readl(addr) == IDPF_VF_TEST_VAL;
> 
> ?

I like this approach, will fix it

> 
>> +
>> +	iounmap(mbx_addr);
>> +
>> +	return 0;
>> +}
> 
> Instead of returning only either 0 or -EIO and passing the result via a
> pointer to bool, you could instead just return either:
> 
> * IDPF_DEV_ID_PF
> * IDPF_DEV_ID_VF
> * -EIO

Will fix it

> 
>> +
>>   /**
>>    * idpf_vf_ctlq_reg_init - initialize default mailbox registers
>>    * @adapter: adapter structure
> 
> Thanks,
> Olek

