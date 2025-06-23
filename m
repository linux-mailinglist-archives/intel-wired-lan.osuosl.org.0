Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC9FAE4924
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jun 2025 17:48:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F07140A5C;
	Mon, 23 Jun 2025 15:48:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6c5dZZS8lP3O; Mon, 23 Jun 2025 15:48:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD3C540A2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750693693;
	bh=Y1mrLlUwnkCr3GD6zRZ7lln+6fuJXYzTrE9Yi5IMuoo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yq7iZT8teG9qnhqLzkfeWQwEi70e3Jo6IkBqN/o4yHkisi2fUAxbWRFbvuWBlvMyC
	 NwiNm74uxHb8I6pYU4RNuj7qStsZMgzAFApp6qn4LvasQInmjTkWRA+8cPTfI6cKBf
	 jPpsuZRvWUDiiIPOucI0ByviCWauQUeXeaj4PxpwpNr/6uRjk/VEQth8sqLfmJR5rg
	 RhkUULHdZ995Ah68u9Po1xYNTqsZL9BwDXsicnvaqLku/NborDp1qPkfFcwjK0b7bd
	 CQ2Yq4uD7KJbbvnBEtR8cgrhrrHoWq1YjFShdFUMJOPr8MzDxubBZlZmI2fZMovXze
	 ROk802M0wY7xw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD3C540A2E;
	Mon, 23 Jun 2025 15:48:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2EC17443
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 15:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2054D405D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 15:48:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bhMU7Fjj71fE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jun 2025 15:48:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 71D6E40698
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71D6E40698
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71D6E40698
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 15:48:11 +0000 (UTC)
X-CSE-ConnectionGUID: KkVmmEbvRfWx1vu0yA37Ag==
X-CSE-MsgGUID: z4Rv8nZCTjCFy1bT8RQhJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52877057"
X-IronPort-AV: E=Sophos;i="6.16,259,1744095600"; d="scan'208";a="52877057"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 08:48:10 -0700
X-CSE-ConnectionGUID: qbPKT3kYQP+ptImfqWJSng==
X-CSE-MsgGUID: /MoK6+/wTka23tJH2Jha8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,259,1744095600"; d="scan'208";a="182679990"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 08:48:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 08:48:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 23 Jun 2025 08:48:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.84)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 08:48:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mMLwLG06QNbf5mPu8/53GjeuMetdR1D7LlAYLEZESb+x0SVJgRkFSw1I9PjQK++4xV+uu5Xe8RKjO0rT/LqIQ3JUGZKf+OKARqvaZARryYGA+joqRB2qkMeFt9ugHAJKdS0WXwQkXMmwMyAWalrm1xuQ4uLJnSFPaMaRGJIK/OB1f5sto6qEb1BDRZ9CwEdnLxdvSYWK/bJE0YiOEOeucK9PAHEDsIZcC5S1p5Clp5PRGvCspgAG/IajTELILLpDNoVJLPjvmvtMr3IHRYbk9lcFiSsm42LCsx65VBDsivx2hsrOkYrshm2hp9FD3DQIWnGnij9qThQ2Ze0rbrWiGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y1mrLlUwnkCr3GD6zRZ7lln+6fuJXYzTrE9Yi5IMuoo=;
 b=XB6mRMotgNNyKPOQESJPYI0saiJ5p7cu3kBPN8klS1LSvBq+ZJiyqfV6kys7jVlnsu5loYl4c8ndWpWS3pZA3haZjEhpfH0zuXTB2bFQgqgC6PrDrYJkodn1/QmLFe0/DAUe3xP6VCNKX0yaNkpYhhc4Qli7Sq7rqCyTxGtuQGc+OS1N+TpK2oc+WNe/U0gs9MFz00NQKh3X/G975ZGjeAnYFdMi0U4EEqTfTqPSM2beKr+75Ttm3Vbv6ZwtaMvmwqSD+Eo7AeWzL2CUs4BnnxcgXVmNoEWz+YMfNMNBPYEIU/bWo7hshads24JXZd2ClUnI5uJAyTCASj4Z+F2VcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7427.namprd11.prod.outlook.com (2603:10b6:a03:4c1::15)
 by CYXPR11MB8664.namprd11.prod.outlook.com (2603:10b6:930:e6::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.25; Mon, 23 Jun
 2025 15:48:07 +0000
Received: from SJ2PR11MB7427.namprd11.prod.outlook.com
 ([fe80::b9f6:e360:c76:f885]) by SJ2PR11MB7427.namprd11.prod.outlook.com
 ([fe80::b9f6:e360:c76:f885%5]) with mapi id 15.20.8857.026; Mon, 23 Jun 2025
 15:48:07 +0000
Message-ID: <c4164071-60c8-4b06-a710-70d5fbef2b11@intel.com>
Date: Mon, 23 Jun 2025 09:48:02 -0600
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Madhu
 Chittim" <madhu.chittim@intel.com>
References: <20250620171548.959863-1-ahmed.zaki@intel.com>
 <20250621121346.GD71935@horms.kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20250621121346.GD71935@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0047.namprd07.prod.outlook.com
 (2603:10b6:a03:60::24) To SJ2PR11MB7427.namprd11.prod.outlook.com
 (2603:10b6:a03:4c1::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR11MB7427:EE_|CYXPR11MB8664:EE_
X-MS-Office365-Filtering-Correlation-Id: 680cad10-dfa4-4e99-1269-08ddb26d58de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1cwUVRIb3BYZlZvUkkwTXVSNmhaR2FKL1Rwd0UxSzMya3JUUzN3aGtjaGRQ?=
 =?utf-8?B?Q2JHVzB3TElVSjBNeis1R2pVUmxKeWZ3ZkorMHcxbjNLSzltUGNFa2cwSGIv?=
 =?utf-8?B?VEo5aFYzSXJXSnhRaGFFWFN3Ti81bXJlZW5KOUN4QWxqVGpHRTZ1ZURXYlhC?=
 =?utf-8?B?MlduSm8rSlE1eUcxcHdyc01IY2RNNjNLemNPM0xWMEZjZ1dWM2FGdTZWc1dj?=
 =?utf-8?B?Z1dpQ3I2T0JuV0hkK0JuVkRXcHliRE5Na3kwZ1RzTXhnZThoT2VvUEc5M1Bl?=
 =?utf-8?B?Nk5MbHU1ai9yYTV2c1R6KzNXYW0wMVRTbTh2cGd2UGJvWEVYWlZuNGJQTEkv?=
 =?utf-8?B?WURhQXc2UVUzZnVWS2FGaVovajJlWjBGNHBpWjV0Y2c0dDhUSjZkZHRJcDhJ?=
 =?utf-8?B?Z3Nld2pKNTRhVy8zM0dIUTFQT2M0UDd5UythbEU4allHcnkyb3MxZ3RTcHh2?=
 =?utf-8?B?UVkzY0lIcnBWMUx6K0pkWTY1bHJ4N2FZSXZ0N2JTbkhMb2RZWjA4RkZWVW00?=
 =?utf-8?B?MHZlYXMwcW03SFMxRkJrYVFRcThIYktQZGJaL0xoSDlCeSthMUN2dlQzWFFH?=
 =?utf-8?B?Z2ltd1d1ZGpSZ2NnZUVLdjMzajlyUjFheXFQUk54MmVBakxaWUtjWk9Ic2JE?=
 =?utf-8?B?SEZIWUd4MkdMUDZ4Z2E5M1V3bHI2UDlkMnJsUzZTMVpRZkdmQVFyOXRQYjQ3?=
 =?utf-8?B?eEJhbkd0a3B3b1RyYmIvNTFkVzVNT1hFU3lCcEdQbHIwYVpLaWVFZ3Frd3A5?=
 =?utf-8?B?T3NJQitrYi9jbk42RGFTVFR0SDVYS0x6TUVaRGNOa0t3MHlFSUxEdTE0RWF0?=
 =?utf-8?B?S0p0MUdabHYraHdWQXZqV0t5TnZRMkd0Qnl0OUJWYm1xU09TLy8vMU9rTHVr?=
 =?utf-8?B?MmtLTHdXcDdzVzMwYXh3YmxxbHN1SEpNaC9xMjFhYUJHZ1M0U1ZMUi9Xa1lh?=
 =?utf-8?B?YlBieEdCWnhkUEVSY3NhTk9yNVRST0RZaVJHVEpNcVRFMzBSSkF0VUNnUE9p?=
 =?utf-8?B?Q3VVNzJscXRoRGFtZmNEcGgxMnQ0N2t3L0txUXVtZWs0Zll6dWtOMEVQT2Zm?=
 =?utf-8?B?Y2l0aVQwMmE2TjdacHljbnBML09SME5BcmU1eWdYdXczZ0xUdWVHVElRa09C?=
 =?utf-8?B?VWlKcHJPVjAwbGlna1UwaVA3WUNma3dycTFZQnAyRzlnWFpnR1VkMGZ6Zjdp?=
 =?utf-8?B?dmQ3NVYwVHR0N3h5UStZWGhITTlhTHRxVUdLREFjeG9obTNYNjBPOXVTZUVy?=
 =?utf-8?B?OTk0OHVxa2lvQ25nRU5lMHgrL2ZkeVhSV050SkdEUmRNUzkreWhpOXNYaXhX?=
 =?utf-8?B?UEhRVVBQWDJkdFdFeFE5ZWNFVnplbkwyYXVJbDd6QnFqSGF4a01Vdi91Vkxj?=
 =?utf-8?B?eEJORlVrRDdMaU9XcHdCWHBwa3lzYmhUOFlJVXVWTFV6UzU4enBBMUJDOUlT?=
 =?utf-8?B?b3lYNytNWW0zTWp5U0lodTI2NmtDT25ZMW5qRVBqNTBHRzdLVDZtOEp2aXd0?=
 =?utf-8?B?V014YzlIMFg2MkFQZEdwN0ZyckN4a1dRbmNOTWxCN2Rvd2JqT0kyMXVZWERw?=
 =?utf-8?B?UElreTlsckxpQnB2M0VleENUYTg5N3FXb3NoZjlhK213bHE1NzFNNS9kdzUx?=
 =?utf-8?B?OHlxVHU2RnpIMmVkN3BTVVVQMWpURTYrdWlrYnh4dmNGbkIzSzh5TEJNa0hV?=
 =?utf-8?B?Z2hxdEhnTFYyNm5OVklDdkhOdVRRdFU3dk40Rlo0bTFWb29nUUgyMlNYUWl1?=
 =?utf-8?B?VHNKTTJtSklUVSsyblJGem5tT3BGbUlXeE5mRGJYWG50MU9BT2tnSlR6Szlk?=
 =?utf-8?B?b281MjF1UTFLcTVaRWR1ZU9UTjhxbndyM1lydHB5dFRIYjNObi9GckhjVk9p?=
 =?utf-8?B?dTVIcDhDNjdLNjVPNE1velpBYm01MTYxZ2t6WmRvZmdSd0g2S0JuQkg1UU9K?=
 =?utf-8?Q?JNNpUJZIPdw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7427.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z21vN2E3RW0xQnRJTk9rZmRRN2doaWFxZjZBcGJkQnYxWWNoQ0NxYWdEVHl2?=
 =?utf-8?B?NWFZZVpqNmhBdjRIcit1c0hpVEhSS0pRMTYvUFFSdEltbU9IZmNUOHRlSVRZ?=
 =?utf-8?B?SStIalNVMk1BTkxJaDRnM0hMUWE5VzhGWTd6YnNudUhua3JRbThvVzlZaXo1?=
 =?utf-8?B?WkRjRU9WSlBFUWd1TzBlTFMvcEtSMjFQVThrVmUyWVNNOXB6TzZrSnhETmR1?=
 =?utf-8?B?cjFTc3pTWkI3NFJTK0QrUWdKMEVFL01XNXIraG10UVUzNGsxdnQxWVNhazhS?=
 =?utf-8?B?THJNQ000di9aUDlYSzBnUDFiYkl1aTFMcnVxdnNZbG9CdENBRTA1VHdHbXpK?=
 =?utf-8?B?U3Jac2cvS21VZlVJaXdhaFdhMFRrb3JLTFN2UVJxbDk1UG1YWi9xWXE3N21a?=
 =?utf-8?B?WmhTQUErZWE1YUlPK3lOMEVVRWNta01HdklDZHFRSnQ2QkxZZjJ1bnl2dFFw?=
 =?utf-8?B?aE5SYmJSbERJTjJlcHRrUjE1KytUUlQ4ZTBZQytJYlNGbGRCMEswa3dkSVNS?=
 =?utf-8?B?dERHSGVIZ3RjcW40V01xYW10eDY1eWVXL3hSN1BFTUUweCtUc1FCc2VCaFgw?=
 =?utf-8?B?NFBIbEp6UzM1K3pvMGJTem5oQXpoWWJJRVlIbWNmVS8vMDNaQzNOSEtpa0xv?=
 =?utf-8?B?NnhobkY4R3BZSko3dHFhQzlReXEvOFdoa0xIV2plc2tKTkRaOHFueTlqVTMx?=
 =?utf-8?B?cXh2b1Fxa2ZGai9FMllPVGxVcXF4eHZnbmRoaHpyYzVMeFlrRzlldzRrYnNq?=
 =?utf-8?B?dzlGcU5vVmoyTXZCazR4TDh6bTBRS1E2NFVZWEVZbVRuS0hpbzVOTGpuMkJ6?=
 =?utf-8?B?Tnh3U3N4ZFNWcXdGQUM3a3l5NDF4bjk3S3MyY2diSXFJcGMwR2Nlck1rYVQ1?=
 =?utf-8?B?eVVGSmpXN3U5Q1FOSWlDWXlYdDFubnRBbHY0V0xNMUpUZlZ3Z3E1NGpKam5n?=
 =?utf-8?B?U2cvd3ovZ0xIZzhyQ283RFZuNGRlL3oraGFwSUZpS1BnUkVqSVVnN2NZQjJv?=
 =?utf-8?B?a2RVd1BjUlM4OG0xWE9sZmtPcnQxTTRpLzFDRWhNNjB6L1kzcWhyZk4zS1dT?=
 =?utf-8?B?elRET3B2NU15VXdMem5KYXhtWWc4czFKT1U1WXpwS1ZuOG5KY3NRVmNuQzY5?=
 =?utf-8?B?UnI1V0xPRGN2bGNrTC9MbnlUYWY1MXVGRWRkdVBqY3hQQlVURzZwV2xhVElD?=
 =?utf-8?B?RzIxNUF0UzIweUxHdnhsZXlxVmQzeThmTUtGT0lKWVVEUjNMRjdwK0ZjY0hj?=
 =?utf-8?B?Uzg1NE5vK0gvWDFYYUxUVUxrQ1ZRMUloa3pQU0Zwb0NHNjNEWmk3blZQU1JD?=
 =?utf-8?B?SkhqZCs5ZWR2K1pZSDZGYnVZcmZYcEFQWnJzNnNaSWRjYTU5VkxrVE1QNGJF?=
 =?utf-8?B?ZmorS3NxTEtxRlFPVkFVTVRXMTdpM3pWNUdESnRRSEo5RUR3a0l4bzZmeE53?=
 =?utf-8?B?MGIrN3ZqQTlYN1VXUzJBTUpaNENVLzJMWDIyRW5teGpEUkdVTE8vNG1DZ0Z1?=
 =?utf-8?B?c3lzVHlnWFFZYVZkUTdQYnZlVkVEYk51SE5vR3pxaWhjNmovSE9COTdPMHpa?=
 =?utf-8?B?OElJbmN1bXI4SHJscHMreVBuOG5zbUc0OUFlWmVnczJHZi9YQWhYQUgraXE2?=
 =?utf-8?B?b0lCK2dncDVPNnFXdlBGVzdPcVZoMjVLU0dHNVpROTdWRThFMlc5YUpidCt2?=
 =?utf-8?B?ckJuT2hiQjRWTDJPYVhxWTkyU2FYSVFVRnkzUTByblFNcW1yZDg4SG5jeDJN?=
 =?utf-8?B?ajExWkxtYjkwMmY4cDk2Y2k3c25QbHFVd1JiNHRBaU1ZcmFLTFJoTTl6eEhy?=
 =?utf-8?B?WTBxSDREa05BVnIzRXVhODl4V3lWRkRGK1JPcDZSSkVZdW9OWkZFN2tBWkpL?=
 =?utf-8?B?Ykt6eGlXYUN3VTZqMzg4OXQ5b3hmK1JQbXlpOHlyekJ6SFdncVFBdExaVnU0?=
 =?utf-8?B?SVQ5RUVITUJPUEFNa1NvQ0lBZzZTMzd5M2RDRExXdWZEZXRUUHZSeWJEUTBI?=
 =?utf-8?B?TUk5aG9vZ0o4MjRYOHgxbTNVcDhsQWY1dW1tRUJKTUVyTTMyNXRZQmErQXo1?=
 =?utf-8?B?bXNJWGk3RDBoRTFzMEFQZ1hCRWxnUXRRR0F2cklLU2VqN3R5Y1BhNXk1dzZ6?=
 =?utf-8?Q?Hk4d7SUfU6PxEctSe/hUttjS6?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 680cad10-dfa4-4e99-1269-08ddb26d58de
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7427.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2025 15:48:07.0959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7YRDv1ODuIg2PBVZ+s3xFQreuKGLk0uSqnZ1FJLs4InFgZTWC3UWy+c5XhqhHbxVizDQLkLNXGsGCpjxTCgLxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8664
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750693691; x=1782229691;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hM6/gc5umNMsuWFp51BynqU6XtuVNEths1bACVr6XNU=;
 b=NP/SB5ecGM5owdlO0Iy8lTzLcQ4eYgpJ4jBdGA1MrAP8vwQCCEaXQUR4
 IeFwTYMGGtIEKRJ+Fet6nI6ALDQDsBUjO2zGjQ/M3MgeuKH0HHSd/cLtx
 pBvS07SoHGJpMI0aPn5Ie0XV1EUFX74R8iRn6zJwsT25S2t/rmAcTMW8D
 Wqw4VqZVCJCcOcH21L3OEJvIrfpjxKTsNVlBeVqwhLnRkpfuQXyEMS2Zj
 jDD68od5SuPBIKnhMlfiHsfVXi0VmbmdOgMS2a/HhPyTjhJtBlToespw8
 FUp0Bu4nhFL0NEK/VK5hzFUiGOrOc1rCfwv3XuS85bZtZZ3B5eiFHCxi3
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NP/SB5ec
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: preserve coalescing
 settings across resets
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



On 2025-06-21 6:13 a.m., Simon Horman wrote:
> On Fri, Jun 20, 2025 at 11:15:48AM -0600, Ahmed Zaki wrote:
>> The IRQ coalescing config currently reside only inside struct
>> idpf_q_vector. However, all idpf_q_vector structs are de-allocated and
>> re-allocated during resets. This leads to user-set coalesce configuration
>> to be lost.
>>
>> Add new fields to struct idpf_vport_user_config_data to save the user
>> settings and re-apply them after reset.
>>
>> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> 
> Hi Ahmed,
> 
> I am wondering if this patch also preserves coalescing settings in the case
> where.
> 
> 1. User sets coalescence for n queues
> 2. The number of queues is reduced, say to m (where m < n)
> 3. The user then increases the number of queues, say back to n
> 
> It seems to me that in this scenario it's reasonable to preserve
> the settings for queues 0 to m, bit not queues m + 1 to n.

Hi Simon,

I just did a quick test and it seems new settings are preserved in the 
above scenario: all n queues have the new coalescing settings.

> 
> But perhaps this point is orthogonal to this change.
> I am unsure.
> 

Agreed, but let me know if it is a showstopper.

Ahmed
