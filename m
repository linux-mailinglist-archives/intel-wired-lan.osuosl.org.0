Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0698C9D265
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Dec 2025 23:08:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5058A6132F;
	Tue,  2 Dec 2025 22:08:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 27RrEo1ygT2Z; Tue,  2 Dec 2025 22:08:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81242613A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764713329;
	bh=fAPt3f39fQUMmDQcEHzIjLRXAli8juf8oxgSQJJ6AB0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C4xSMDi4sUw+jLfohu+Supkh3eIL1GZyamIUw/H3Q1oOyd/XCgzpBjIbDf5BlpcYp
	 1Uvv/Pm6UvaFx4WGoN7887sKJ3XdjZe+ZvbO4t2vLo9V7n8qvN0Dv3p3xBp9Wnmwq9
	 khEWzTvcftaPNUAteUD1GAfr+dU9wb4phWRt6GZ8K80wrQUJKl8TPtPFmxBmOUUSuF
	 50/8a0yyQVD7XX1xD2xmEUae0qUSJBRY6RXFhN46hL5Ffzz3UFQdkTOyDpTn01F5sx
	 pOSfbBNsVjoCUBXLntkbKfGmO7jo2wrDLNOY5/eedBWPaejfRkXvNjrsklAJ9ZSYL5
	 h0/9jDfucJ8WQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81242613A3;
	Tue,  2 Dec 2025 22:08:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2CF63E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 22:08:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1300284006
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 22:08:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qJxu8VcbFjYa for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Dec 2025 22:08:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CD3F883FFE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD3F883FFE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD3F883FFE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 22:08:45 +0000 (UTC)
X-CSE-ConnectionGUID: hPvjvn1uTCKve7wpTd71Dg==
X-CSE-MsgGUID: 6Up3dGx5RgWgwwUX5nk8FQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="70555585"
X-IronPort-AV: E=Sophos;i="6.20,244,1758610800"; 
 d="asc'?scan'208";a="70555585"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 14:08:45 -0800
X-CSE-ConnectionGUID: 8IDvZkMASxSNzb0H2nVaTg==
X-CSE-MsgGUID: OU3jqCI3SCqHpRfd8VsHBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,244,1758610800"; 
 d="asc'?scan'208";a="193785304"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 14:08:44 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 14:08:44 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 2 Dec 2025 14:08:44 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.35) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 14:08:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nbROZWiHGFWiwbh50Eki5KrxPBwAz+u8AjsnT78/Q8PWjhkx8gHPrnTzBb5yXcUzLl/PTc5JNQ8zXvMBxP7NKnX2Vfp+EIJ8MZDbufkvnOMkA053mXZYoW0FHD/0igxoUJMO5rL7f2kRiXADF5R4D1BknvCqsNga8MNrhCwwWV+oocMbsNIFPGcB9DXX1ko1wlomtKihWtMOgvogf76r5iGnJ7FFB+sCubd34QlAABpTUi3g9m89m18VyuVY73/EQ+VihIQc97a+O36WkEAPgXC6Rjfa2mo2zcbfFPT0WJxIUpkebKTGc+O8wIo4BgkKk6SzQe1uVjXtlTskIEQljQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fAPt3f39fQUMmDQcEHzIjLRXAli8juf8oxgSQJJ6AB0=;
 b=sHG5E0O+Ri0Gx5E43h9jFxf2+wUKxmhtvMxUZ+O/wnf0y9EYXhfJPZJH4AzrE2pDkzL1CH5wSh8yY25Fi8CLbqPXqFKHzdDBuA843zmBH42cOW38SH9rwpSh55Hbn3dgAPwtFyUBjM6LO7KevNoPWoSw3ZsmgPwaKcTx3NVAfHGJ5y8BWGssM95NQ2jy2QQbc7gBxh9uxCzD/QsczoGxXN68Vo3jgTa4vAucOixj1eUSKdfXLR42vBZhPm3zd0D17SdE6+RifyEg4ROyo2bhyBFZ3NOMJ4ZDCRiHURHbRpmJBRNDOivAYf1F+GV+vkz5TcoDgs8tnQ7PU4+GIEi1Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB7760.namprd11.prod.outlook.com (2603:10b6:8:100::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 22:08:38 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9366.012; Tue, 2 Dec 2025
 22:08:38 +0000
Message-ID: <85edbf2d-f1f7-4286-8c11-a0c8ce715696@intel.com>
Date: Tue, 2 Dec 2025 14:08:36 -0800
User-Agent: Mozilla Thunderbird
To: Jesse Brandeburg <jbrandeb@kernel.org>, <netdev@vger.kernel.org>
CC: Jesse Brandeburg <jbrandeburg@cloudflare.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, IWL <intel-wired-lan@lists.osuosl.org>,
 "Przemek Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "Brett Creeley" <brett.creeley@intel.com>
References: <20251201233853.15579-1-jbrandeb@kernel.org>
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
In-Reply-To: <20251201233853.15579-1-jbrandeb@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------j00NNtrhp74Kt27riJj0T86v"
X-ClientProxiedBy: MW4PR04CA0047.namprd04.prod.outlook.com
 (2603:10b6:303:6a::22) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB7760:EE_
X-MS-Office365-Filtering-Correlation-Id: d560d785-64cb-4261-a676-08de31ef5817
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SEIwQVZUaklDanBvaUhUdFlqTTRzKzh1ejNwWlFIZWVWc01jTHpWMDJuNm5t?=
 =?utf-8?B?U3Rib25VY0dDbmIrT1VrWlA0OHorcGYwZVF4cTlTZng2TlEyVlUyOG1hdE5Y?=
 =?utf-8?B?aGd2TUxyRFkxZ1BkQ0w5cUs0b1ByNm9TdktETWg0Zk9CS0hqaFppSTZFMjdx?=
 =?utf-8?B?dkpaSEE3UFpYREhBNVRhcHN1S0w0TlFaN1d4YU1hUzFFOEUreVYzS21Xemh3?=
 =?utf-8?B?YnRIUWp6d1NZeTZvSmVPU3A1OFpiRkFvNjZISHNPWEZONWNGOU9lQjZlc2hu?=
 =?utf-8?B?MytxN1VTMWRkdFpnRS9wNGF4L0dBKzJPRGhqYjRxdFlMYXVBNElLazZjWXBV?=
 =?utf-8?B?djl4SnBmT1B4N2FnN3dZNTJYOElGZG1mZ0UxcndqVTJzcUUyem5hcHpSZmVI?=
 =?utf-8?B?UUpXaldzckp6NG5QMHlOczRWRVo3cjZOdXBNZHgxcmQvb1pudmNjc3Zaajlm?=
 =?utf-8?B?WkgxZW5aOTVzcWhmbyt6OUp3emFLWUR0dWlEWjJ6cm9ISTVCak9DM2l2NEZp?=
 =?utf-8?B?b1Q4eGR2cUZzVmNCKzZKNzJ5eXRoNkxmcXJQN0Y2am9BcDJCMnBvWTU5K095?=
 =?utf-8?B?ZmtNcEQ1RGVHdEVxY1pmRVM5TFpRYmlqSjFlRysvbVVMa3V6TlZWUytKejVw?=
 =?utf-8?B?SFZzQ3A4NWhIMEdCOThDSml4SGFaWHRtOVFsUWtMczNLVDE2TXpwNWF6dkVI?=
 =?utf-8?B?b3A4TjZpQ3VTcmd3YU9Sdi9NZEZxZUxnYVphVE1KOGRta2tuRVM1MitZYUhC?=
 =?utf-8?B?QThPL1dxbC8wcFZ6eUZreFg0cFB2dlFZcnB3ZFg4ZGZRdzkwSkFXREtMRGgv?=
 =?utf-8?B?dXlZU2VxV3cyb0NieHVBek1XaUdqdXhkZEhQV0hkMTMzMEJjUkRzcjBjbERK?=
 =?utf-8?B?RFMvZWVST0JZbFZhMnZvSlZVSjBiaklmTEZGbWYrMkpBY1ovTSt1THhHTE9m?=
 =?utf-8?B?ckVFam1oaTZrOVVvZnNFdVc3cFZNWlRwTzVFVVJUSmhDWlc4TnpWOFltNHZv?=
 =?utf-8?B?VU0yUjVOUkJFOUVIRFBrVGhTSXozMHp6OS9xWjlSNUNmWURZa0FOTzdoc253?=
 =?utf-8?B?V1R5UDFyUk1PQVhBR1NnMHZNaVZZWkxFendsRmJReHJ2MVhOaUpsQmZBKzVm?=
 =?utf-8?B?MnNuMzk0QlR0THBWQ2tIVUtlajJNRE9ielA2YWFaTFdBY0FPZWluaWszcTk5?=
 =?utf-8?B?YXhUK29lRHJHZFJpQlduVHpjbCs2emtQK1FVTVBZM1FSdEExc3V2UUJnK0dC?=
 =?utf-8?B?RzlrQVoyRnYveStNOVN3OGpDcFE3d3FtTnVXbmZvSG15b3FZMDBGR3N1Zk12?=
 =?utf-8?B?VmlHcG1nM0J3MFQwa3VzdEJOb2swTGxISXJ5OVdmdTJ5ZGM4WjhhNjNyWllT?=
 =?utf-8?B?ZXYxNXhTQ0xwWFFLSm5JY2U2MjdOZGd3dnFsVXRHQVRmVG1Yck4rNWl5aHc3?=
 =?utf-8?B?ZXBpOWZoTmVZanRKOUwyWUFnM2phM3hRVktvK3Q3U3Y1U1gwMkZVbVpvTXdw?=
 =?utf-8?B?RVlIdWx3TEY5eWdKcHd4bnN3OHJONUNQUnJraXNjOHcySHhCTWQzSDlySFM3?=
 =?utf-8?B?Vi9nRjZISEh0V000Mm02ZkMrTEd0UjNlV05TU1BYRFhlbWZRL1BLQkh6azVV?=
 =?utf-8?B?MUtSZlpPV1hDV3ByRFRXRGc4Q1BaeVBmREhCVko5VDc4SWJMNnM1S0k2c0Vv?=
 =?utf-8?B?WWJxNkgxem9kWUNRcFg4TElkdXV0ZllCVG1UcUFiaE9sQUlRQWxWbzN6YTl1?=
 =?utf-8?B?d0c4cDBWVnhsU3V0RVN0ckZSL3FYL3p3MHhzay9KbVRvS0xMdW1YMTVXM0o2?=
 =?utf-8?B?NDlpcnM3TlRCQks2NHFCNEdxZVE4ZjlXNVBobkFrUWVSbGxtYlFvNzk4WmZw?=
 =?utf-8?B?bzYxZ0lmZW9KVTVSSWd0VDRVeGY4eFdWbU9aSGZ6MGh5QzQxTGY0ZHgyeFFQ?=
 =?utf-8?B?TkJ1TFFYKzh2NlBWSlFoQyswQkcvcHhPeEZCTytuN1FoTWcrc1ZOc25SWHla?=
 =?utf-8?B?MDhtSEdwSFlnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXNMNFMvS0pJaUZaQzI1MDRFNjJiYlFRbURUYng2VDJTaHVFcTBZZ2owSEp2?=
 =?utf-8?B?MEcrNm1QNXdkekQ0NncvWmRPYjcxUFdlWm1SVzlYdFl5TmlDemg5YjlubXM3?=
 =?utf-8?B?OFIrSjRoN1krOXQyL1o4NnlBQ0RTelZYTkRWK0RNQ1ZlUWdtL3J1bldManFL?=
 =?utf-8?B?N0pXNmQ5R1ZBRER3VU1uTWd6bE5JTkczL2hnUUdaeElVUm5XS25hRGV2dU8x?=
 =?utf-8?B?Zi84Ylg2dWplUzFmOFZTTm0xTGJCOFVod0tJWkFpUkNDS1B2ejI5K2F3V2pZ?=
 =?utf-8?B?S2lVeWtPcVdKSUVzK1JUTlBMb0JzaTUzM2Z2dkFWN3BZWFFYTmlZK2hldE80?=
 =?utf-8?B?M1RhNXdpTVo3REJzdElqN1VxM1VaZWJYUnZNdWFSald3RnRLK1NoNlEzVEYw?=
 =?utf-8?B?TlBjVVo1c085Y2hsNWJQeTJGY3kxdHozblF6blhlaE9Ta294RDRjSzhTWmR6?=
 =?utf-8?B?S0lOMEJJSHV4RXFwaU8rd2t3L0xtQlQ4TG9kUEp1aGpPTWgxUEZxV3lqRy9o?=
 =?utf-8?B?ZW5vRVdTU3JBc2p3RjFyUFFWTHFxZ21KOTFhSnpiNXgwRUpweSs0YXg4czBm?=
 =?utf-8?B?Q3g5SVBEY3h1bExBYkNWQm5ESi9nUGhBWTdhM0xSYTV6VUQvZ3d2YU9KR0Vm?=
 =?utf-8?B?Z09HUEtIQWxMQ2h1THJYMTRxSDlPUVVUaENUdlpRcCtrQzRXNitVNTVLYWlS?=
 =?utf-8?B?bjh0TXZHQnR0MHlERVRqdXFkOG1xSDE0dWQ3OTVJay9BR25saTlqd2Rmd0xx?=
 =?utf-8?B?bGJYdW1mR0UzMlo3Qlp4RmdTblI5aVVLTFE4aCtIL0xzTDI0U0w4bkgzaXBQ?=
 =?utf-8?B?ckhWd0VldmJJSVZucjgrSmg1RnJnQitld2wzRm5TNUlRQzBsaGJIamRQTXVo?=
 =?utf-8?B?anVIL1NYc013a01WZlpGYkRYSmVQMjVsRFN0U0hIQWFCc016RGdMemRRNXpO?=
 =?utf-8?B?dFBQQWtzVHZoSWltQ3dYbUg1WmtIbW8wR3BQNlRHNFo2NG9rQnVGMDBoNjBM?=
 =?utf-8?B?STBtbWg5UVhnZEV0UjRra0hnWDAwZTBXb2EvMWdzcnExYXEzbjZTUjJ5QUcv?=
 =?utf-8?B?Y3NzWkF0d0ZwM254a3NrQWEyWkZjMjlJZnFhSFFUMHIzU2U2ZE1YK09USXRq?=
 =?utf-8?B?N2ZVbzNaeHlVcUZiYzVWS1pDaVZWSjhaT2VqTHZ0M2NZMjhsamJBNUVXYjQ4?=
 =?utf-8?B?M2wvR1dIMjZvY2UzR0toQzlPcUQ4RlBveXhBb2ZLeTNOZFljNU1TU00rOTVv?=
 =?utf-8?B?VHozTlU4N3RtbFByZ1NNZER5dzIzeFNxOW50N3d3aXR3UG1IR0hEemcvUHZv?=
 =?utf-8?B?SEhCenp6WXpBdjBicFFQZTFMQ3RHS2plbWVubDZnRklYSU9ZU0FTSHg2eWVK?=
 =?utf-8?B?ZkRUTnhvSUgxZlgxaVVObFZTRVJDK3ZBVC9wdmpuZ2dXb3h2OEVmSnZBbk9j?=
 =?utf-8?B?UEcvVXpxczdZTUlIUFdDZkdmT3VyZHdJSkFYNkhGUkZueDg4R2tpMHJUZFdW?=
 =?utf-8?B?TllEbGRQTE1vdkZxRWplQ0draUNJb0JWVFFHdkVmNythWERzTTFsVm9oZVlN?=
 =?utf-8?B?WExzenlrR2RRYTIxc2pYU0gyWWxPb2wzbnR3WWFMbXc5NmpuM0ZML294MVll?=
 =?utf-8?B?NVprSE1wRE5xSzZ6WmJNckpUQjYxa1JpVTBGMW93cktqVGE2VUZKT2M3Vk85?=
 =?utf-8?B?MzRYYjd0OGd3Q210NlVQMTlYRk1KVXo2RXNYd0dWU0Y3S3l6UzkvRDVwaU1P?=
 =?utf-8?B?WVFOK05WRnlWb3pWODlVM2pDNUFCKzVOeXNFWnBkYXg1enlPMnpqKzJsRWZZ?=
 =?utf-8?B?eWVBQkdzdm0vcUF5NkZ5YUQ1Z3dmb2FiMUVOY3VjUmFXZUViK1o1QUliZDVU?=
 =?utf-8?B?WTFUTitMb3dpdEFWb3I4SklwOGszVktWeDNWcGhTUnU3dlBNUVVuSmZGanZO?=
 =?utf-8?B?Mk5YMlplS0VrS0tQanhyM201Vk40cUFRUlovMGZ4cDJZNUNjOWxmeFhJYlE4?=
 =?utf-8?B?Z0twS0hPWEZDZy93WThhU3lPeStpUnBkOGkzY1RWczdINnovT3JFZHdpbWRY?=
 =?utf-8?B?ek1TblFQdDRET01YRUZSYWU2WlZKSFhlWE9RK0NaYy95OGZWZjlxUnVCdmhh?=
 =?utf-8?Q?xDPWtk1ziAiwxkQJzqwZhZOfK?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d560d785-64cb-4261-a676-08de31ef5817
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 22:08:38.2791 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ReYeUqMtnOkqp8QkgVyAqQ1D7/XBzwRGOi+ulr1S/bpq5kflBR4LXOdcrpKMTUUiSEQvkEQqjJWgcQWc3sIPFE8joXDjDQ4btkLvqcvviFY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764713326; x=1796249326;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=Pd8fs19wduCR/hOHVZoW85fW5ng8m05ZVNNtQoaMzQc=;
 b=nKaTBzqSCSeILLCuZzaKmtMhyUs5kL1HWoxe6QIKUzKmjinYMvZ6/kH5
 1ciqIW4oK8rxOaXVy07oEOkKJdljH8dvE9HV4ayPIV1QivixU7aYTlUwj
 0gz/QsHqZn40EWR2wd1TGDg3LWG38bmzUT4skAdfr3LpUSGgJOZx+TKah
 d/UJ7HSx8kQim1WqGzoELRuVaVP91pgFXPRM1TleyH+FUtiTWKfRsXCLo
 S0sAMF27Jyt4yGLwsuGqiGMVzIuStNRCvvqh6OaHOEbRJ+V2XbiQHkGE7
 xQv3YUFXW72k57YDXGfkU1hKVt19MPQFIt+tU8dCkNoyw1MoIUhwnanRH
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nKaTBzqS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: stop counting UDP csum
 mismatch as rx_errors
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

--------------j00NNtrhp74Kt27riJj0T86v
Content-Type: multipart/mixed; boundary="------------NyuOvcGTQ1bjBYqS1gT27p2V";
 protected-headers="v1"
Message-ID: <85edbf2d-f1f7-4286-8c11-a0c8ce715696@intel.com>
Date: Tue, 2 Dec 2025 14:08:36 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net v1] ice: stop counting UDP csum mismatch as rx_errors
To: Jesse Brandeburg <jbrandeb@kernel.org>, netdev@vger.kernel.org
Cc: Jesse Brandeburg <jbrandeburg@cloudflare.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 IWL <intel-wired-lan@lists.osuosl.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Brett Creeley <brett.creeley@intel.com>
References: <20251201233853.15579-1-jbrandeb@kernel.org>
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
In-Reply-To: <20251201233853.15579-1-jbrandeb@kernel.org>

--------------NyuOvcGTQ1bjBYqS1gT27p2V
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 12/1/2025 3:38 PM, Jesse Brandeburg wrote:
> From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
>=20
> Since the beginning, the Intel ice driver has counted receive checksum
> offload mismatches into the rx_errors member of the rtnl_link_stats64
> struct. In ethtool -S these show up as rx_csum_bad.nic.
>=20
> I believe counting these in rx_errors is fundamentally wrong, as it's
> pretty clear from the comments in if_link.h and from every other statis=
tic
> the driver is summing into rx_errors, that all of them would cause a
> "hardware drop" except for the UDP checksum mismatch, as well as the fa=
ct
> that all the other causes for rx_errors are L2 reasons, and this L4 UDP=

> "mismatch" is an outlier.
>=20
> A last nail in the coffin is that rx_errors is monitored in production =
and
> can indicate a bad NIC/cable/Switch port, but instead some random serie=
s of
> UDP packets with bad checksums will now trigger this alert. This false
> positive makes the alert useless and affects us as well as other compan=
ies.
>=20
> This packet with presumably a bad UDP checksum is *already* passed to t=
he
> stack, just not marked as offloaded by the hardware/driver. If it is
> dropped by the stack it will show up as UDP_MIB_CSUMERRORS.
>=20
> And one more thing, none of the other Intel drivers, and at least bnxt_=
en
> and mlx5 both don't appear to count UDP offload mismatches as rx_errors=
=2E
>=20
> Here is a related customer complaint:
> https://community.intel.com/t5/Ethernet-Products/ice-rx-errros-is-too-s=
ensitive-to-IP-TCP-attack-packets-Intel/td-p/1662125
>=20
> Fixes: 4f1fe43c920b ("ice: Add more Rx errors to netdev's rx_error coun=
ter")
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Jake Keller <jacob.e.keller@intel.com>
> Cc: IWL <intel-wired-lan@lists.osuosl.org>
> Signed-off-by: Jesse Brandeburg <jbrandeburg@cloudflare.com>
> --
> I am sending this to net as I consider it a bug, and it will backport
> cleanly.
> ---

Its fine with me. I can't find anything explaining why we originally
chose to put these in rx_errors, and I think its better to align with
other drivers and vendors. I suspect its just as "this is an error, it
obviously goes in rx_errors" even though its of a completely different ki=
nd.

Acked-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/ice/ice_main.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/et=
hernet/intel/ice/ice_main.c
> index 86f5859e88ef..d004acfa0f36 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -6995,7 +6995,6 @@ void ice_update_vsi_stats(struct ice_vsi *vsi)
>  		cur_ns->rx_errors =3D pf->stats.crc_errors +
>  				    pf->stats.illegal_bytes +
>  				    pf->stats.rx_undersize +
> -				    pf->hw_csum_rx_error +
>  				    pf->stats.rx_jabber +
>  				    pf->stats.rx_fragments +
>  				    pf->stats.rx_oversize;


--------------NyuOvcGTQ1bjBYqS1gT27p2V--

--------------j00NNtrhp74Kt27riJj0T86v
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaS9jZAUDAAAAAAAKCRBqll0+bw8o6NWD
AP97/wvmG4W0WQZPXbOF2zPXKZtt7TvLUf9DUwbvprdReQEAt8nOex8DibVRezM9TwsdqMWW0SSA
hYW2Dhb4qNhdSQI=
=n5lF
-----END PGP SIGNATURE-----

--------------j00NNtrhp74Kt27riJj0T86v--
