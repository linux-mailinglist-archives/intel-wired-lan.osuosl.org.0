Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KuuLT4mnmn5TgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 23:29:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 083A018D425
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 23:29:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00689845BC;
	Tue, 24 Feb 2026 22:29:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dRlwTbu_DssR; Tue, 24 Feb 2026 22:29:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48223845BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771972154;
	bh=JJh1Fyb9ChMCIJk2DUru2Uj1wlHdUBKXKTeLOmkje1U=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zMEjsg4d5dvGY2li4HcgUftFlPTTLVkPki2e804u/yZG1sQ4ynT8fAuXNyrTfOBqD
	 NOKD2tCDCaodG55+iqkMzX5fpqdyf65BfMQKsr21JTWF1dJ2xvTFG5babAL71h3HUR
	 DmUVhKelvBHCiRxfaKJIGGos5BJ2FORalPz8z6uPWC240prnkEX7BWvMGzLSUpYU4Y
	 4RiNUE/8ZheFm9QiQFXwuNXvfNIvP8XXLuHvbTSqvhPcXtS1A3A9kmJCrl/PNsQn6S
	 5NOjWGWm2SUcWWk8u083TuUN6q2rXVneUzmnx1xWxRbHMyhEVsdszyVKIROhPvf/Tk
	 M5yFPZ/e+cIHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48223845BD;
	Tue, 24 Feb 2026 22:29:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6FF1923D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 22:29:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 61186845A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 22:29:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8jOH-ak0ca1y for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 22:29:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4FA8B845B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FA8B845B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4FA8B845B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 22:29:11 +0000 (UTC)
X-CSE-ConnectionGUID: Bt/fQhMxTfqtkwwgSP0k8Q==
X-CSE-MsgGUID: pdrmDKqJR5WJYDOHXe2jhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="76836326"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="76836326"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 14:29:06 -0800
X-CSE-ConnectionGUID: eFTuEiWvSt2R0rPE8IeKBQ==
X-CSE-MsgGUID: 0A7FsUBaQBSYoNMWmpY6gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="221036715"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 14:29:05 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 14:29:04 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 14:29:04 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 14:29:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gzb7S4acwG4VxKrlTBFX724epCnD9DKU/jq31yg+nwhlJvBcF8DOGisbzVNLfTRMS4SFVpcEbwbt2wODgE9wGa9zg8Bwz7b5me51ckR+wmj42NNMAQu0oMNYS5sY2HAdKAzzsuM874NOr6uzloc2hnQ3iRVW4Jdh91X9A01IJQrmqR2ya4jFTeBX8WWHly8vyw1WRlqiq8x+Kwj/nOUgEMGqXeEVgFjo8McJCJ27lMaooYC7EDQYyYP/kapV2qHfxo242tyg1MsIvhTs5PW0Z60RRdQBFgkn5TBNjUhRH575RZVfuNfu26au1BzG6QWYRj/s2GPjLUEN4176HLdBLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JJh1Fyb9ChMCIJk2DUru2Uj1wlHdUBKXKTeLOmkje1U=;
 b=vc7t5xTelf+6CIm/gcahVVRoXcoFfh3qXDmJjNuAzkOM6xPkA1EN68o6d9rVIL0ldjdedae3dzGnE1Mtl2ZCy1sKAmt416qYOKyROV/IWsxRpNAX9y/3y29WhywPMb9/6pigFQkP9Mwov/nHgEdRyvKPtjEJU6ecuEye7kHURCmX5J79ZVdihwjuIIYlKQLpNPoxfy4dfze8rjiFwis7kfbDaWtSMypbo8UCxWPyp7kAjMy3zO2Fna4Evri+kMLZ6bbsrQhrA/q29Ulbz2BRUNQph/IIZCzzj9MyMbHsze3tM/fYxV4ToHEBgZeJyzZ9+WFeFsiUAT5zmxfZ7GxiVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7588.namprd11.prod.outlook.com (2603:10b6:510:28b::16)
 by SJ1PR11MB6276.namprd11.prod.outlook.com (2603:10b6:a03:455::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 22:28:58 +0000
Received: from PH0PR11MB7588.namprd11.prod.outlook.com
 ([fe80::42ad:6451:1ae2:edd3]) by PH0PR11MB7588.namprd11.prod.outlook.com
 ([fe80::42ad:6451:1ae2:edd3%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 22:28:58 +0000
Message-ID: <52cd8eb5-230a-498c-be87-2da9b1df4893@intel.com>
Date: Tue, 24 Feb 2026 14:28:56 -0800
User-Agent: Mozilla Thunderbird
To: Mika Westerberg <mika.westerberg@linux.intel.com>,
 <linux-pci@vger.kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Lukas Wunner <lukas@wunner.de>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, "Saeed
 Mahameed" <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Tariq
 Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, Richard Cochran
 <richardcochran@gmail.com>, Andy Shevchenko <andriy.shevchenko@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>, =?UTF-8?Q?Ilpo_J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Dima Ruinskiy <dima.ruinskiy@intel.com>
References: <20260224111044.3487873-1-mika.westerberg@linux.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260224111044.3487873-1-mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0006.namprd03.prod.outlook.com
 (2603:10b6:303:8f::11) To PH0PR11MB7588.namprd11.prod.outlook.com
 (2603:10b6:510:28b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7588:EE_|SJ1PR11MB6276:EE_
X-MS-Office365-Filtering-Correlation-Id: fb2b0a40-2c86-4dfb-430e-08de73f41a3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bEEwejlNWHVFbGl1a3Nza3J0MDVxb29zaG5hdWw4TGRobEcvOVBwaitwWVdP?=
 =?utf-8?B?Q2VHMFdKeHcwQnU2YVVGc0ZSR0drT2M4ajhjQnBzOVZjcDhrNE85Z29OaEdN?=
 =?utf-8?B?NUhIenVUeFA1T1BqM3VKdnZwWGF6RCtzNGRHRDNJVjA5OHpra1plN3NCQkpK?=
 =?utf-8?B?azNGa3dtLzExSVlwMzhVMzhJVU9ZbnRzdEJ1U21XS0JFTmFXZytFYVFxU200?=
 =?utf-8?B?SmV0RU5VUFRqZW9VODdsOHB3UzFwY01SVVpDVW5zY3oxT051UzdtUnhOT3A1?=
 =?utf-8?B?d2lUWTJscVdLK3h1R1dRN3RFbTlnYkdibzQ3ZnltMlhYbThXc0dUUStuOFZQ?=
 =?utf-8?B?TTMvWHJweUs1QS96TjcwS0JRRDIzUFJkeHpoSm5SMEJKU2pKc29sYVZ6YkhB?=
 =?utf-8?B?OHNKaWRUSXRqUmJBT21VQlh5cTBqZkF1ZkpFK2o5dDZLaVBWZm0vdW5YeEc4?=
 =?utf-8?B?YStHWEl2VEFSSFcxelFMMHFtbTZ5SzBBNXJJd1o5N3FCaU9RaVlpWk9PSHV5?=
 =?utf-8?B?MjVVNnRXT0JQQ25FTmlrSzBPc0dvN1UxVkxKUmxIUVE2c3c4TjNkSHZCcDVU?=
 =?utf-8?B?c0JoRllFdUVsWDJsbWlLY25TR3cvWE9GTzVSRStyWmpWNU01ZmRoUEhiR3dl?=
 =?utf-8?B?V0V0KzFHNHZrMU0zYkliL1FGVDRQdUgvS1RjTEVCNXNEd3lVU2ZCbmh1RDFI?=
 =?utf-8?B?VE9zc2k0cjVicmN3YXBLTFlMQ2trV3JDT2FReWpDcVlVMC8zclg1ZksrQkpT?=
 =?utf-8?B?cUhhTkJDNTdHZ0UzQnhrWDQ0VnRXSVRPejZpNHBpbWp0MjVRUnBJZy9UOWxT?=
 =?utf-8?B?dlY4N0laZVNSQWhsZDhNU1UvOUo0TmV0TDRuTmVpU0FHY2FXc1dtZFRnZjZE?=
 =?utf-8?B?cFRadDRqeWZWSEJZM09HRitVYUxFNjBTOHlzL0gwTDQ2MXNVUDR4NHZGTFVL?=
 =?utf-8?B?aHRPMHZpK3F5aG4vaS90L1NXM0RBZnFvVlRvckVEKzB2czJkOFA0b1ZQUklT?=
 =?utf-8?B?WHROUDA5MGFTVEc2OEFteFhsQ2l0VGFPNUJSYXkrNUNQeVpKZGpBQjZqOEZQ?=
 =?utf-8?B?L0F4UE1hV3VleVM2eEIvMGFRck9hc0Y0WDhMYVdoaUg0b09wc2ViZStBZG9L?=
 =?utf-8?B?ckt6YzZKWFVEdlc2WldFUHBzTG1jbG5ESkJ1TVFBQ2M4TlpHVGJheTVycE1Y?=
 =?utf-8?B?OVk0bTA3OStMMHYxT1g0TTN2WklqUC9pVzVyb1J3Y2NBMUFPazlRSDNjTEpH?=
 =?utf-8?B?STg1MlRGWXlJZXgwcGFCakd6b05mcmluTVY1Q1paY0FWUk0xVW9ZeEdGSkVZ?=
 =?utf-8?B?ZDhUU1g1WHZ0UE81ZG9wYkRFaGNSK2NHc3RXNG5IRFlZbmJNekprdU82STlJ?=
 =?utf-8?B?Rng0b2JLWkd4MnZvYnRTM1RjRXNKWU1ERmZkaVQveG1nMExJVVY5TVo0eS9S?=
 =?utf-8?B?WkQ1d3NvNEgzSUNFTXphT2ZScTc4Wk9oQlpHMHJoZ0tZWlBqQnhxVDRaZG5t?=
 =?utf-8?B?Wkh5VEpLZ2RNeklhQTJmOE9NanNWMVN5RjlsTGN5ZGM1SHFEQ1lHa1NyODdl?=
 =?utf-8?B?NjZ2VUE0YXBhOGpzLzFxWEswQ29iY2RzL0ZGOGtlRjhYbUVvN2ZXUTlKaEpq?=
 =?utf-8?B?NGNNalJ6cDhWbmxTTmN0WmlGRXIraGNjeUprT1liRldLbjBaSVFJejFsUjBK?=
 =?utf-8?B?UHl6Tytldklkc2VlRGM3a3VCb1lpQ3N2K2pvV2tQbHFUd0hjU2puUnFHeXJp?=
 =?utf-8?B?MitoOWl4cGZUSVk1dmlOV1VaTE0xT1ROUHpodjJUSnFYQjcwRHR3SllldG1T?=
 =?utf-8?B?M285emUvRm1VSVY4UFhFd0R4UCtVMzZJOVl1dlM2Yi9HTURac2JqU1ZPL1g1?=
 =?utf-8?B?VjlUeXEvWnZxVURuVEh4N1pXbXhKNUhvMTJGMHdlQ1NNaFhyVk9vRVNZRzMr?=
 =?utf-8?B?NXRUOGVXM3lzV29GbVZQeXBldld2eUVzNm9RMUNWK0d0L0xCOGJISStRNG5U?=
 =?utf-8?B?SlUzVVo4SmJTV3pRTXg3NHp0T0EzckRlVzRxYUVPSnpHZjFaUWhuVHFEZ1Er?=
 =?utf-8?B?enhlMHh6SDJndTZhNExnLzFoa2xndjJlTFNTd1NBN3o0ZkpvdXVJc2c3OE0w?=
 =?utf-8?Q?3I1Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7588.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUZ6WUU4eGxwMTFySk1RWnNydWY3SWVpUytMWEhpaklIbHFSaVF0UU0rZ1p5?=
 =?utf-8?B?Q1lXMXpDY0p2NlhEK0QxR1B3dzkvZzF5eWZ4OStRTndpbTZGbVp1LzdlSTZs?=
 =?utf-8?B?Z2NjYUtMQTF0N0tBanFuUVpuMkhRejBiWHU4cnZPUGdSaWJJQUt1ajRPNmNW?=
 =?utf-8?B?eisxL3ZaQTVxZ0J1TmFTQ2cyR2hjYTN5VjNuWFM2L1N0ajVMN2xBZFg4TUtB?=
 =?utf-8?B?MnlhU1N2cGk2VS9mWDk4c0xEaEh1NXBxNkM4V0ROWFJDSnJHZTUrQzZtcFR6?=
 =?utf-8?B?Vm5TN1hGVlB0YWdjMHpWMWxvdE9RMkhjMkJwYTZBVmdtaEdFQlZPQmp2Ylhr?=
 =?utf-8?B?VzAwZlF0MzlvRG5iNmJ2cWlvQm0vRUlqUy8rUnRiL1BQbWlqOEVGRmxZWTZs?=
 =?utf-8?B?emRkclUxY3pWR2lNZFJOMnlMdGJIeHVtWG16ZG5IVDBnZENabGlRc21Hcldm?=
 =?utf-8?B?KzF6clBtd3M2NnVkSkhhRDh0eW5IdXl2bFZ1TURNN0RBbmZmTVM5S2ZjcWFs?=
 =?utf-8?B?aVlQU0t2Q1FWSGI3OGMwWTZSZ3QzSnk3OWtiOWZ6WW8zTVU4THpnOVNtUXJh?=
 =?utf-8?B?cTZ2TDFQNjdqSGYvNVNpYWRPT1ZlSWIyS0F6bENtWkpzVTQxWTVsbHMzUjly?=
 =?utf-8?B?UURzbGhWdmIwcHRXK0w4ODRndHlWdXpWVS9MYVAwV3N6M0h6dGJVWWtwN0xp?=
 =?utf-8?B?dXhXTDhNSFBkODlLb1hGRUs5UURzcmU5bUtRbnVJRlRPbTBpaVRVL3diQTFu?=
 =?utf-8?B?Q2V2MDFqNFJhWVI4WUx1ZTE0UEdodzlreTFPd2lzNHdObEhXL3pnZ01nRlVv?=
 =?utf-8?B?RzR0NHFEMzNzVFdoVHY3Q2FvLzZicm0wU3RvMXh4YTlGN1EwNk1WbnpWWlpm?=
 =?utf-8?B?MWlTYVYvSUxJR2pqdUNER3RsM3FsUXAzazBEZU96cm8zcFJhWHdmajlKVXpU?=
 =?utf-8?B?d2dHV2dUVUlNNHFlbEZhdUFHb0tYbmRQTHlNTjlMSFBadHRnUjRac05reGNC?=
 =?utf-8?B?eTFCUVZmNklzM0pGZzZEOENiUHhuVDZKcVd4aVhTTDBaWmhFYUordE5xZzBh?=
 =?utf-8?B?aTUrQktDTGYvb0V2Ulg2TjBsTjhoR1JPM212TGJFMG56d2J0enNDaXI2NUFl?=
 =?utf-8?B?LzRqUVFPZFc3NWdTajdvMjl5VmN0UW9rbHBQaStPOGI1MTRoMmZDLzNaeFFw?=
 =?utf-8?B?MEdJeXlrb0R2UTNVbVIzSkRtaVJkNnZHKyt1V3hIWVQwdlVlVTV6QTlKc04x?=
 =?utf-8?B?S01iZks5bmFGb01mKzhMeU5abGhwREYwVUw4S0V4MWtHQUFzazN1ZGtNbDh4?=
 =?utf-8?B?YzRhOVNTTHE1Q2QrZ2ZVV1NEeDRuSmNRVzR2SnJ4RTlPa3hkNFZIczVFL1h5?=
 =?utf-8?B?d1Y1RzZ2eVZaQlN4Z1loRnorN01waDVlSnVxUHhVWXZoRk1iMFZwNSthbU9l?=
 =?utf-8?B?V3N2SjNXUGZsSS8rbFFwblZBaHZ3ZHlDanRHYmlOMVB5a29tMUxaOWt4Z2hy?=
 =?utf-8?B?bTdieEx4RnlYazZweVVqOUZTbUQ4d0dBeFQ3MUNFZzZNdlRPbDhmWFBiSGFM?=
 =?utf-8?B?SzQ2WTJCU1kzUVpXS3dCVHp1c0VaZEs3bk1nNWdFTXNrUmJiUWRBOHc4L2Fn?=
 =?utf-8?B?c2pOaTFpL3habDAvOW53R1RZMEVpUnBZZngzZ1JYbmNJSzRHZGxHb3o5UWY4?=
 =?utf-8?B?MkR4KzUzOUZSOWoyUnRSZTUvQ2dKL1d0VHErdTUrZ05Hamd4OXd0UXlldTNW?=
 =?utf-8?B?VWpOc21YRVdMTW5Sbk9yZkZIMnhMWGpVdzlENDdEekxNZ210a1o1R0RLZDBx?=
 =?utf-8?B?M01kL3pBWTBJYm9SWUxROENtam1lYUhodC9KOU9XNzJzWkpTR2swQUFDQjQ2?=
 =?utf-8?B?L0V5cUw4WlM1bVE1NFFCZklZWmcrdHZvVjRob2RPa3l5Qy9hOEgwVzVjOWhp?=
 =?utf-8?B?SGEzOXYya3N3RVZpbERFRlJxQnZUWTVwdEVETlRjc0hONVNBYXlOTG5IYUJC?=
 =?utf-8?B?eENFbEF6L0JvS2pKNzM1SFovdVZaZnp1QStoTEx4ZHhYSitKdjZSKzlvQlFH?=
 =?utf-8?B?WnpEb0ErdlhaYUpGVWxITHVaVkVvYUZncVdlTHVvZmlkRk1LUTBSM0ZNcml3?=
 =?utf-8?B?OG9WeXJaUSs5NzZEdlprdWF2ZllEN1FONUYzdzdwQTk2UXBBamUwQXdOTW1M?=
 =?utf-8?B?QStLRHlWNWtIaDJ5cURaQmIvb2JTZUlZWUlOR0VuRlN5OVVuQ25VbWYyeXk1?=
 =?utf-8?B?L29wS0tjTDN5U2tyZ0NucitNSmVoZVRDeVcvaytTSXR6YURZcXAwWHVBNDd1?=
 =?utf-8?B?NlFrNHpEV0xTR1BkR3NNWE8vT2R3TmRJcTVMMEdJU0FZcHBtNXdtUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fb2b0a40-2c86-4dfb-430e-08de73f41a3d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7588.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 22:28:58.5028 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P/H1guWDeTN7sbUaw9QJuMA11qx3ogGVQ8ClxulgKCF4AUcl1z1FbdDvgSsCRWb/smNUr0DYnwiAke4UO3Q3qDJju37zSTlZSyBAxfA0X/8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6276
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771972151; x=1803508151;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BLXHVBAqpDSlPEyVWDjhlbrID3xM9xK+mTtuRcZ00mQ=;
 b=XBVXu/hODbwNShwyS6x1ipHKKjVmY1eaLWbXiy6v3yI57v1uqrfQuhE3
 exEef3RIWhkFDFoShPXpZy8dvE6WqDxHhCewOx3UIX5bD9dqF6HvXxgNX
 GYkq2z0RKAz9XBIRASjaKFt7V4ffNgeH+eXjoo8FK5cb+/5EfUFNzsm/v
 EGNZGk+SprBKc6e1r9mIrVD/Ive30pKmXCf2o0SohNLGAhaLVfpnYYdhr
 FXHOFF7u8DTNKGxDmwJvX0nnq3dfxHKoTxKeBAPiuEWqYFjbuqLdTxq+I
 5YdekbeneVPE8M5kZtKdRVRCpi7DXLmAtuoGgoWbd5JBIVXELOL0DhUra
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XBVXu/hO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 0/5] PCI / igc: Improvements related
 to PTM enabling
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
X-Rspamd-Server: lfdr
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
	FORGED_RECIPIENTS(0.00)[m:mika.westerberg@linux.intel.com,m:linux-pci@vger.kernel.org,m:bhelgaas@google.com,m:lukas@wunner.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:richardcochran@gmail.com,m:andriy.shevchenko@intel.com,m:vitaly.lifshits@intel.com,m:ilpo.jarvinen@linux.intel.com,m:vinicius.gomes@intel.com,m:dima.ruinskiy@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
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
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,google.com,wunner.de,intel.com,lunn.ch,davemloft.net,redhat.com,nvidia.com,kernel.org,gmail.com,linux.intel.com];
	NEURAL_HAM(-0.00)[-0.945];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 083A018D425
X-Rspamd-Action: no action



On 2/24/2026 3:10 AM, Mika Westerberg wrote:
> Hi all,
> 
> There is (still) an issue with Linux PCIe PTM enabling that happens because
> Linux automatically enables PTM if certain capabilities are set. However,
> turns out this is not enough because once we enumerate PCIe Switch Upstream
> port we also enable PTM but the Downstream Ports are not yet enumerated.
> This triggers floods of AER errors like this:
> 
>        pcieport 0000:00:07.1: AER: Multiple Uncorrectable (Non-Fatal) error message received from 0000:00:07.1
>        pcieport 0000:00:07.1: PCIe Bus Error: severity=Uncorrectable (Non-Fatal), type=Transaction Layer, (Receiver ID)
>        pcieport 0000:00:07.1:   device [8086:d44f] error status/mask=00200000/00000000
>        pcieport 0000:00:07.1:    [21] ACSViol                (First)
>        pcieport 0000:00:07.1: AER:   TLP Header: 0x34000000 0x00000052 0x00000000 0x00000000
>        pcieport 0000:00:07.1: AER: device recovery successful
>        pcieport 0000:00:07.1: AER: Uncorrectable (Non-Fatal) error message received from 0000:00:07.1
> 
> We have ACS Source Validation enabled so Requester ID 0 which is sent by
> the not-enumerated Downstream Port triggers the ACS violation AER.
> 
> This can be prevented by enabling PTM when the whole topology has been
> enumerated and doing it like that seems to be reasonable anyway because we
> only have a couple of drivers enabling it now so it does not make sense to
> enable otherwise as it consumes bandwidth.
> 
> I did that fix and the problem went away but wanted to test with a device
> and driver that actually enables PTM. I have a couple of igc NICs here that
> has this support. However, when testing I noticed that during power state
> transitions we still get errors like this from igc:
> 
>    igc 0000:03:00.0 enp3s0: Timeout reading IGC_PTM_STAT register
> 
> and after this PTM for the device stays disabled.
> 
> This series includes fixes for igc that deal with the issues I found and
> now PTM gets succesfully enabled and works accross suspend and runtime
> suspend of igc, and there are no flood of AER errors as above. While there
> there is one cleanup patch in the middle that drops unused parameter.
> 
> Mika Westerberg (5):
>    igc: Call netif_queue_set_napi() with rntl locked
>    igc: Let the PCI core deal with the PM resume flow
>    igc: Don't reset the hardware on suspend path

I'm not one of the main developers for igc, but everything here looks 
good to me.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
