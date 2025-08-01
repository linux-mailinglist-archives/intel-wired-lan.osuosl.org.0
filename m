Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B71B18975
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 01:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04624413FB;
	Fri,  1 Aug 2025 23:29:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zGAw5RsepzhN; Fri,  1 Aug 2025 23:29:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C17DA41402
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754090978;
	bh=PnLnjSN/olW/B7coAWx6JKfMww2BEEdgoTHD+DlmNDA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3hMxcKHqNzbGUzIzK0wmCnGGi3IAa+a8mL0L60qu/FDuZ/CNF/VPrNSOGru0FwSIA
	 9Sn5YdXTHOBUVPkyzxwZPkwyCut4D3BehU19djs7pBan7WS9Lss8RM+MLT0YNjAxPH
	 mtfQ+qb1T6S/uupPcPoTGFTh8GgtDPw2Dxfm35jk/HOxj26exS64DnqqTj1t4xbbt4
	 wUv+YCDaOnHeHfRi/oYqm034ShLcqHeIIMwxt+dBO05rdQaVgUTtibHt01sd28S9ok
	 NicHnrd6nFSaL/p0fxA0IzZBMAkjKSLIZgtMljNaRPWHTe0hcwn1m+p/aSAP+AwnKH
	 Z6yWqfUUq3P/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C17DA41402;
	Fri,  1 Aug 2025 23:29:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 57B8DC8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 23:29:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 489CA83774
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 23:29:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IE5jvrb-NXkR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 23:29:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1923F8333F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1923F8333F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1923F8333F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 23:29:34 +0000 (UTC)
X-CSE-ConnectionGUID: yLlw6nVWT8O/zuFayTEKzg==
X-CSE-MsgGUID: Y9BH2jfQSPiBzLnm3x1WWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56527613"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; 
 d="asc'?scan'208";a="56527613"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 16:29:33 -0700
X-CSE-ConnectionGUID: 684MRrziQ3u6ereHv2ZyVg==
X-CSE-MsgGUID: huRutbhBT2KbZ3DggGE4ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; 
 d="asc'?scan'208";a="163605068"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 16:29:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 16:29:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 16:29:32 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.45)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 16:29:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IyTLSqgy+AeDxhMyDJGV4ZpHOWJLZCPXvI3SSOC8/eL3nEjthcv+zFNHu86qOKL0/7rTO9x/ftahkfPGU3Ji1yz9gipOmZD6FvVvqFrpDl4k/4VjcytZNSsVAfZaLfpv6LaKWGTYgJjZbni9fL6uvhAoBEJsdiAlplxtoFdoXaGKl25i3E5bU1BH6M6E4lSMxDZrghX8hx/uJXfrNCBEwPrSOYOTPTL18tacabjZ3CkFNtpryFGO2jIdNXSVL0I6nHMPvKDk03yHgViEPi/QvZk010nyvjyEgl3U2GvqI0nZfN2EapGaHM7B6F06+B/0Rrdz0ZCe3VjLIsN97PB3RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PnLnjSN/olW/B7coAWx6JKfMww2BEEdgoTHD+DlmNDA=;
 b=phLVUKcz+Y3tfMKswlXh2oHXHjfwiYk/DWxfYu42NHvqM1eYhuvBMsy1K0f7gZgpX4+rPSKNqsv8OWo2QPrNiv83wEhHJVDfLYomtSw2gf+LHQmjAAJQ/4aAc7VBaRzMgjCIReFkkDb07JaAfH6WC0gLO14rg/30HHJvn9zcOQ8IZpbqjXMwC/Cei0xRBJDCuwwP7otWepKZMHIqhyaeVMPivtYeHjxhOYBe2YP2z3d91ZC8UvbWPOHcYD/TTmEGoGYYfkWrHyXqX9cWdyNZD/twpTLMb4+rSLzABTlUtJMovqmz/WeBf+kyvJuksrKYV6pxV2Dq2Gh7R5k41Y3O1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ5PPF75B6D7B42.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::835) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.25; Fri, 1 Aug
 2025 23:29:28 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8989.015; Fri, 1 Aug 2025
 23:29:28 +0000
Message-ID: <934e0690-d080-4d01-8041-394de0546e03@intel.com>
Date: Fri, 1 Aug 2025 16:29:26 -0700
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
 <dhowells@redhat.com>, <David.Kaplan@amd.com>, <jiri@resnulli.us>,
 <przemyslaw.kitszel@intel.com>, Jakub Kicinski <kuba@kernel.org>
References: <20250707085837.1461086-1-jedrzej.jagielski@intel.com>
 <20250707085837.1461086-2-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250707085837.1461086-2-jedrzej.jagielski@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DIYWcgHzy102UsoSSCCJXJ6i"
X-ClientProxiedBy: MW4PR02CA0021.namprd02.prod.outlook.com
 (2603:10b6:303:16d::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ5PPF75B6D7B42:EE_
X-MS-Office365-Filtering-Correlation-Id: 28d4c2de-11fe-4118-2ee3-08ddd1534248
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OTIzTURIVy9ibGRQUHoxNGw4bTJhMTV4TStPbUROeWdPZHNoQ1VZOGZoUmNj?=
 =?utf-8?B?ZStkNDJpL3dTdVhkQk5RaWFEVWNKa29xbTFPQ0VRV0VKM0RNbytPRG9nSktI?=
 =?utf-8?B?ZVphalk4K1RmK3pWL3l4bHJFQXllaDRpN0x6b2xMbGFZQ2hxa0xaSUQ1OFdy?=
 =?utf-8?B?NVFTN21ZaXBYSGlPZTUzd3daazNrRkFkMFByWUFhd0R5Uk14dlVDS282TlRz?=
 =?utf-8?B?Zld1ZlNHa0VTUjNtTXpzSGNSemFackF6alRJUVBnZk04S01XTUVoYldQbFF0?=
 =?utf-8?B?REEzcC9zZ1lrRDI5QVBnVHlpTVlVbThBRTNuK2E4dzNrQk9KalgyZW5UdVV1?=
 =?utf-8?B?SmlSdGEvK1BsTjBSRWJ4bTZxNUQyYjMzNFRtdHRXZGhTRmRCR3V3Z29CMmtZ?=
 =?utf-8?B?MytZSEZhV1N0ZG5Cb2I0emRYWXZNczkySWRacXZicjgrL01JM1JHa3k0UEtz?=
 =?utf-8?B?TFhBcHZNQjRQb1VoUVYrbEtWQWs0cWFpbW9wM3BOTzFYQkxMWEczOGFaaHZ1?=
 =?utf-8?B?bmxVcWloUmtZL0VydE5OVm84R2FaYTZyY0R2VWpqamZCM1kxekh2bjZSTW5h?=
 =?utf-8?B?dE9tWDUrSEcrL3RtQVNQOHlFdm53Z0RISzNzc3ppUGZ6c1QzcUJZSW90M1B4?=
 =?utf-8?B?ZmRHUFlzQU84V3owVkd4L3cwRzkrdk5NbkprL3VsUUFJdUhPeEhnd2xUMzBy?=
 =?utf-8?B?L1p5QW90OWdNYU03R1ZpQ3dOa01aN3NxdFVZMEcrWENBVGVvUTYzc3JvdmNj?=
 =?utf-8?B?TFNBSXFJMGpabksrY3ZUZ2R2YVczK2RXRGV4RjBZa2RyVnlWdkhsanhyMkc0?=
 =?utf-8?B?MlgvYmdKeTFJcnd2a3ZMeFhZa1Jrb2hqc0pVdHE2blZvTjIvQ3lNd1I3dmNj?=
 =?utf-8?B?NmxtTEpQRWkwRUZwcnhTb1A0ZFV6MFNrS1Fad0FKSDZ6WGVqRUVZTXYrREIy?=
 =?utf-8?B?SzU4T1JGWnZ6bE5IdE04eS96UDJveVFEMVo0WGVjLzk1NTc4K2pObDZKQ0RN?=
 =?utf-8?B?ZUJOK0RBZU45cElDOTJwOG9sQ3ZPY2hNSWZtYyt6ZFRod092ZW9sZlNZOW5U?=
 =?utf-8?B?bjkzUURqdmhFUjF6MEZTTGIrNVl0VlBCa0lBc0o1RnVldW1hNFB6NEU1d2ts?=
 =?utf-8?B?MFVQdWpZUHhsVFlvM1hOWkZkTkZzQXJvODV2bzhYTVhqNmgrVzB4SHorTnkv?=
 =?utf-8?B?U2QwQi84SG9XV0dualEzRHJOQjBPYXRSZkhNQ0xqS2YrbzJtVzc0UzFFMWFP?=
 =?utf-8?B?VVd2QjA4VkdNdHZxdWtvK1o0NGR2c1ZTY0hrT2JteDh6c2x6dVo0djFid3RR?=
 =?utf-8?B?MktWNWMzV2RZVUlab3ExTk93YjdJUDYyTStMUnd6ZHJMNW9vSGo3d21NUHd6?=
 =?utf-8?B?ZSttaS93Y0FveVNQMUd0M0pOVzhJZ2k2cGlmOE1iZG12V1J2NEdYYThjODJJ?=
 =?utf-8?B?UVNESWZLY2J2SVV5TmhSQUZYbnlIdUkvTlIrY0VLWHFQRnRNNXl4c05jUk5w?=
 =?utf-8?B?MTlHOU5XQ2RPWlNVOFRWcXA3Y1Y5bDZ2NXVXN2d0clhsTUZ2WDBRZXM4bnZS?=
 =?utf-8?B?NW9ZZkJablVNT1ZlZ0p2WmQyaEZTY1lEOWc3QkRPQjJqS1ZBRnplVytkK1Yr?=
 =?utf-8?B?RnNzRm4rVWJsNG9LM0RUUzYwTzBiZ2dOWTdjQmJJaCttVWttL2NIMHVKM1k3?=
 =?utf-8?B?T21jRy9xdHp6aVY3MXhkR3ZpUHU1NnM5WU42clZZQlpiRlh5MmZkVmkxYU5i?=
 =?utf-8?B?VzkvaGxINlJMYnBBN2xheG5NazdvM2hMUDR4YTRlME5mUlorSHR2Z0oxUUpL?=
 =?utf-8?B?VU15ZytUYUxzbGNXUjhtUlBQdHhqNTkxVnQyb0xQQlBPSGJZbTJDeCt0YWdU?=
 =?utf-8?Q?RnenRpZxOuJhu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3o4VE41MnYrL3NCS1Z1R0hmTk9VYVd1TFB4aVY5VU9CS2pRdFl4NEZrWktr?=
 =?utf-8?B?SDJTQU42emNWNG9tK3pINlR6MzFGM3hicnhGZG0xVkRrUEk0QmJhbndGenlG?=
 =?utf-8?B?M21oQXhpWGVyUjVxVUZaK09nYzdJSC9PVW1ZRjNQYXJMSkFVMHYwV3M5TzJQ?=
 =?utf-8?B?b0c5NHpETFBJVHp2N0daRmg1SEkrMDVkbTJucGovZXZCbXM0SWIyb1Z3bXNN?=
 =?utf-8?B?MFo5bDhmdVNVVEt3T3UvWWhiWGcxZE9WQUpLczVOTGp1aTM2anBKdkU0K0dB?=
 =?utf-8?B?aXoxVUd6R0VGREpmMXNKRTJ4VDVRaXFpTjRtTHp1OXY5VHRkUnhjeW4yOUw4?=
 =?utf-8?B?K2U2dG5wQ1hwY0ZqTXh3YUdTTm9wY1hnRlFXRmhrTjRTR2g3ZjJtVEVhNXUy?=
 =?utf-8?B?TktQa0NwbVVmSjBFTXBzckd2RENpSUUwWUdSbnBKeXJoNFhiai9RMXZ6SnFj?=
 =?utf-8?B?ME9WVGREMGNFcVhXbWdReWduM3owTVdhSjhhZHR2azdjSWxGOU12NG5rTkdu?=
 =?utf-8?B?YWNhczhXSDVLVkdYRmx5VXREZmNBRlBxaElWZy8yYVMyZGhnNDQ0elBHU3dL?=
 =?utf-8?B?TGl6RFU4K3dlNE45cHhOSnZVWGpuTDFneU5PSG5aVU8wUkdBTWxHcGwzaEZY?=
 =?utf-8?B?TStCOUJ4aTl3VkhxQnZyVnhtNVl6NTdhNlM0T0RsWlBrL3JBV2dIdmQ3L2Vh?=
 =?utf-8?B?cFllV2kwVlEwK2FxN0xZejg2ZkpheFhMZlpUbi9TenhIR3RCWUh6NStPYjRE?=
 =?utf-8?B?VjkxbzdNOEFjeTg1dHNYSTRiRjlHZ0ROVjFhcDhpNzhXc3RvbWQra0syYXZt?=
 =?utf-8?B?amNFSmFDQ3EzQW4yc0xMeTNDaUtLRENqUVN2bzAwQndYWVcvRHR2aWlUckM2?=
 =?utf-8?B?TUFNWlp5aE9mM0lFTC9GbWtaQXd1czBUdDFoL0JmcXAwSTdXNU0wa3lUS1dS?=
 =?utf-8?B?WS9XbFpRNzhwejc5ZmJhb1lwcDMrdUgzblg0U3JpZUwvL1V4c0R5RjRIdmRs?=
 =?utf-8?B?bTYybnNITlNrVXUwUTM3S3V6Q3MyTXMxb2JFTjNtZkZpZHZocjhla2hKVS9r?=
 =?utf-8?B?QktQRGdhenJqekQ1ZUtBYXllMDdvTlVsbWMxYy9lakRKQldJbDJPbTN6MTlj?=
 =?utf-8?B?NVpCV2VCbTZXY1hxK0Q3L2FmRWo5NnU2VE1HSEEvUVJleGQ2ZUcrSldBeVdV?=
 =?utf-8?B?TmR0UE81NTVvcFhKOFMwSWRRSlROWkNGeWE4d2VVQ0hXaENXWENuQ0VTTkxI?=
 =?utf-8?B?K0hCRVpqOEl5T1JadXdXdlBOOCtnWXlycERpV3F6Tmp1SGFQQWQvN1I2Y24x?=
 =?utf-8?B?amszbkNzblJnQk04VUxmUHByT2d2MGpZNzFIM21OdXM4Y04rRG11MzQ2VXg2?=
 =?utf-8?B?TU1HeVY2dzBPcDF4WjBBWHk1clFUSEUyaWhvbkRUOXJDdkloT1lWdzJQZVkv?=
 =?utf-8?B?VWVZcUdCU0RRcnR6Zkl0N1YxaHZVM2lLbjJOVldSTzJSZEFxZHNnWFpTdFhk?=
 =?utf-8?B?WTBwYzVEbmEzMHR3R2RnYmNRQ1ZOU1ZUQ04zWllhVVBOYlF5bmQ3WjVOZis0?=
 =?utf-8?B?bmNvdDNtTHhPRVRtNHpjcytSdW5wclNWeWQzNXE2dnVETUpSMTV4dk00dVMx?=
 =?utf-8?B?VHFRNnI5OWEzNGJ0R3BqbWRsRzVEd3JFR0ZQSTkxbmtycDJNU0g0eGJJTVJt?=
 =?utf-8?B?QXgvRE93OXB0Sjh6YmFSVTFwR1NGQmJhdFpFOElFL3VoQ250cHl5Yk96NFZa?=
 =?utf-8?B?WGxzTnFCNzJzRmFmUkFhaWVYRGQ2d2p1QmdPNmZGS2hobXRQSTRYdmxMRXFz?=
 =?utf-8?B?dkdRYnk3N3FMQnp0c0lBUktCTisxTk9URzFMZWd4ak5aT3VrK1pVbElZOVV1?=
 =?utf-8?B?Y09OOG5vM1lieWlpc1IzMUI5bGZpQUo1cXQxcUVRaElkSTJzOVBKckZ6UEw1?=
 =?utf-8?B?VmdZZ29HSzEvSllaSVlwYlREUkJMRHFkanJRVEpQd1IxTHE3bnpsalJXRDJQ?=
 =?utf-8?B?R3RnR2d5dk93RFFzaTdrUEwvVGV0L1EwVlpKNVI3K2ladFdWaTBweXk0M01R?=
 =?utf-8?B?YWZiK3ZYMHBOeWpUVHN4eHpLQzArL1F4M0Z1Z041VWthVWIvbGhkRS8wR2NM?=
 =?utf-8?B?YUpITGtuby9nY1ZZTG8yUUdvQ2p1OGZlOERpZjNJMjE2YnJENW9WMitITFRv?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28d4c2de-11fe-4118-2ee3-08ddd1534248
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 23:29:28.2067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RxphBEC5GmKUVjuFTcjNdDjFJCglTeTEMvLIPhW08CIrDL9poRJVmukmohxDtDeMjCFUxjCLmZ5pnngY1D/UbkTXy8tmls3DHb+6+pRni4s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF75B6D7B42
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754090976; x=1785626976;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=RyQ/35vDMHDpAbZ/HDPAwjWnUWh5oAIvKeD7AbUxAuY=;
 b=DEcJ8qkfPHl2pCGCcZRCKHfYkDqtt1c2MxWZ6YFFKCNi+ztEC41mEcK8
 M4YL6c+rqF513fezTPd99Vkpz+LB9knUJsELlgxR+W/cOsi1DC3UDiBjb
 veTW0N/w3vihZ3Hm2nIyk4aeBXb3ry1+0Vn7GRTegTolDCYIbgtLaCF4w
 E87DSMAAARB+aed/619aDgKrUAeY4Gi/GeMq15LaMe2I1UdHyFE+HJEtL
 X4uyXryUs5fUOWU5IvggrYEhXBdSWTi41g+QSWdbkQBzNNM9YwdTin5W1
 VNn974pIcAyLI2Poni0qUkwLFzNv8o7GNnmbUCsrcT1ILLenUg9AGFa5m
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DEcJ8qkf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: prevent from
 unwanted interface name changes
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

--------------DIYWcgHzy102UsoSSCCJXJ6i
Content-Type: multipart/mixed; boundary="------------SEcX05BPawrLCUW3EoPCUc0R";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, dhowells@redhat.com,
 David.Kaplan@amd.com, jiri@resnulli.us, przemyslaw.kitszel@intel.com,
 Jakub Kicinski <kuba@kernel.org>
Message-ID: <934e0690-d080-4d01-8041-394de0546e03@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: prevent from
 unwanted interface name changes
References: <20250707085837.1461086-1-jedrzej.jagielski@intel.com>
 <20250707085837.1461086-2-jedrzej.jagielski@intel.com>
In-Reply-To: <20250707085837.1461086-2-jedrzej.jagielski@intel.com>

--------------SEcX05BPawrLCUW3EoPCUc0R
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/7/2025 1:58 AM, Jedrzej Jagielski wrote:
> Users of the ixgbe driver report that after adding devlink
> support by the commit a0285236ab93 ("ixgbe: add initial devlink support=
")
> their configs got broken due to unwanted changes of interfaces names.
> It's caused by changing names by devlink port initialization flow.
>=20
> To prevent from that set skip_phys_port_name_get flag for ixgbe
> devlink ports.
>=20

I thought this had been discussed on other devices, and the consensus
had been that this is not the kernel fault.

> Reported-by: David Howells <dhowells@redhat.com>
> Closes: https://lkml.org/lkml/2025/4/24/2052
> Reported-by: David Kaplan <David.Kaplan@amd.com>
> Closes: https://www.spinics.net/lists/netdev/msg1099410.html
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Fixes: a0285236ab93 ("ixgbe: add initial devlink support")
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: use new flag instead of creating blank implementation of
>     ndo_get_phys_port_name()
> ---
>  drivers/net/ethernet/intel/ixgbe/devlink/devlink.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drive=
rs/net/ethernet/intel/ixgbe/devlink/devlink.c
> index 54f1b83dfe42..47fae5035b9f 100644
> --- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
> @@ -543,6 +543,7 @@ int ixgbe_devlink_register_port(struct ixgbe_adapte=
r *adapter)
> =20
>  	attrs.flavour =3D DEVLINK_PORT_FLAVOUR_PHYSICAL;
>  	attrs.phys.port_number =3D adapter->hw.bus.func;
> +	attrs.skip_phys_port_name_get =3D 1;

The use of an attribute here is a lot nicer than filling in a custom
ndo_get_phys_port_name() option, I agree.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  	ixgbe_devlink_set_switch_id(adapter, &attrs.switch_id);
> =20
>  	devlink_port_attrs_set(devlink_port, &attrs);


--------------SEcX05BPawrLCUW3EoPCUc0R--

--------------DIYWcgHzy102UsoSSCCJXJ6i
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaI1N1gUDAAAAAAAKCRBqll0+bw8o6KTg
AP0TBogXsnMKws/qGbOqQuiafUuXSV2/eQRulcpNNMXubAEArv2XrCzLsLMIkffd/BiZzW+Jrz3r
E6bwQC2/haLX3QQ=
=GdYS
-----END PGP SIGNATURE-----

--------------DIYWcgHzy102UsoSSCCJXJ6i--
