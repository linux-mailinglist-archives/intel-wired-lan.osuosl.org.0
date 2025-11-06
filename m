Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 898A9C3D82C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 06 Nov 2025 22:33:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E03840EC2;
	Thu,  6 Nov 2025 21:32:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Z1RUpG_dqJ6; Thu,  6 Nov 2025 21:32:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A86440EC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762464765;
	bh=pbu57kjMK2sYOe8TqsghUT03GZQciAZM9FsjfJBqnh4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RJt5SX80iBhkUTWI00XuWJcl8nWmD1zrjWVwjCXYvJv92IpMDQMIgIX2JTvxcqRdN
	 uSho4RWE4aoSlksHoLmAKd62OE1eyBusZUmQidceyIR0bsiTonQMERSra9Sb8bDfAn
	 Bpbub53vz22855rrlXAsJxHrv5GYtWIILp6eHxqXCNF3FRmyaR28lBJ5Z9GBBBhyFM
	 jwjhnR2jSPePhwIIMJ2JlzNw1J22VgngRqNsHfIKtX2rYGFuaqJnr3NacYtUqlLFoo
	 E/JjucSHkq0xFKAZ9li7xr5/B+fPHdIRITzkvXNSr4n4T6Pq9A3U1+ExTcI4mBm5IA
	 C0ubsxd7H6QKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A86440EC4;
	Thu,  6 Nov 2025 21:32:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E630B961
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 21:32:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D77B060752
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 21:32:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jK_w2chI512W for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Nov 2025 21:32:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BA41E6074E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA41E6074E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA41E6074E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 21:32:41 +0000 (UTC)
X-CSE-ConnectionGUID: CaA9sZ5jQF2yUXeXfs9odA==
X-CSE-MsgGUID: 95NKdcMbRKuJLTKAup/CGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="64652135"
X-IronPort-AV: E=Sophos;i="6.19,285,1754982000"; 
 d="asc'?scan'208";a="64652135"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 13:32:41 -0800
X-CSE-ConnectionGUID: CM/b0hlaSf+nQlwqpsHhLw==
X-CSE-MsgGUID: 89pa5n2+QTCrBh/irS3mXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,285,1754982000"; 
 d="asc'?scan'208";a="188308128"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 13:32:40 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 13:32:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 13:32:40 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.35) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 13:32:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f47SWoCZSs7qVVhFiaOzrl+o6venU1Fe3SFWuTKd2UR1Li5HmitPC19nJs/wEhUfpFUChhZAgl4x/p3aJnAN+Mp/VABdOahPygOegTssNW+yV8vDfEPsh+gytMcVpMy//gHsgXQCuvM2qIneL3v/kcM3PjgMBHYYCge9rAGh2jtJkG6re1ieosfFKPnnRwau9rap4hruIpWOromeksV4X4kz7pghM4eUFCJ6uEF3fDLREFZmbydr3HNgkjf0jVSoRH390XYN8AXP/RnuqiwTq53FWVSZDKyD6SHRnGr1TOpfdS80DBUJar932KmrOdGb5sGNPNHAV70t8lozUsBVUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pbu57kjMK2sYOe8TqsghUT03GZQciAZM9FsjfJBqnh4=;
 b=ewRGts44moS/tGh7KFMlxnhl37o7HlS0s+QMJ5OWrtKdcwbuDN5OJMujwfNwRpc3ML4/pxrtcfHUkklJ9RLDBPcoS5phYm0YU6QbNbp4ZxIiYHA6GVmW6b8tuj/ujqfAIqL1+igmRp6btLOlH7/uuFJLBDAkojVbOEWpQyDgSGjCmVl2pFb+UQ0b7dA/x4JNDRQhC5IckSgYWLPzxd8VZTjekx+v9SIH1mBKzprvAH+ruJppH+OkEs8Bs+/M14aUeoAszlTjsVqGkREMY1QSxzet9FJkh4ewIhkuhGgGFhoxQOcNRKpnXIWKu5ePDimypsnTC2mXVkkkAE2bxq/qNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB7004.namprd11.prod.outlook.com (2603:10b6:510:20b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.8; Thu, 6 Nov
 2025 21:32:37 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9298.010; Thu, 6 Nov 2025
 21:32:37 +0000
Message-ID: <3e32abe4-5c7f-4cbf-b4de-1c136b921a95@intel.com>
Date: Thu, 6 Nov 2025 13:32:35 -0800
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com>
 <20251105-jk-refactor-queue-stats-v2-2-8652557f9572@intel.com>
 <aQzZfXz9qBjr5vtB@horms.kernel.org>
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
In-Reply-To: <aQzZfXz9qBjr5vtB@horms.kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jwYJv6zPHt0KoSZXSgi09nn6"
X-ClientProxiedBy: MW4PR04CA0354.namprd04.prod.outlook.com
 (2603:10b6:303:8a::29) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB7004:EE_
X-MS-Office365-Filtering-Correlation-Id: ebc0325a-17b9-4842-3e81-08de1d7c019b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YjBWbVRHVFNudERPWW1TaVd6NWxGRmRKRnJLL3lPRVNaeHpHR1libzZrb3JT?=
 =?utf-8?B?dEN5VFduY2o4SHBIdlM1ZkQ3NlBVcWRjTVZJb0NBamlYb1BmbGw5cEtXbWFk?=
 =?utf-8?B?UWRwVVBmQm9JYmNuWnZOVWJackZtd2FKN0ozWTBKN0syRjlFL3BCQlZMYmpj?=
 =?utf-8?B?bUNPSElteHJibHJvdFFNU3cySWdPb0cxNmlwcmJQdnNqV2hrR2xCdWFRUktR?=
 =?utf-8?B?WTBFUkV3S3A2Y0g5WW5tTU5rOVhSa2dlcFhVNGpEMUtXSmNxNGEyMlI4UHZs?=
 =?utf-8?B?dzUzRFRvSk1UaUV2TXZvOVVyeUR0Q282allwNitXN2RKbXE4STBGWlFOZ1M5?=
 =?utf-8?B?OWtNQ3R5Q0pROE10MVFQTE5CVks0K3hVQnUwdTExUXI3YWpSOW0yN1lCYU9m?=
 =?utf-8?B?ZGhZMnhxUzdlWVV0QktQT2hMMVFDekg1QlVKRklCNVFlb1VvK2tPWEpHSlVm?=
 =?utf-8?B?M0U2eTdzUHFaVnVzOEJlK0FuRWZLRjBVcWpJZ0ZmZmtnT2hhU29yc3FlVlJR?=
 =?utf-8?B?OUZNejdCS1VvaHM1OWhMRUtxMURzTmJ6REF3R0JIb2FsQkg1RjRFWmdXNTgw?=
 =?utf-8?B?QjdrMnlTL2swTjR1NXVCQ1pRRWFWcy9aaWFQUDdQVm1rQTIrSktaV21mQk5P?=
 =?utf-8?B?ZnFNWWpHQm1DMkdSYW1SWWdnSFdxbTc3UXY4UGJub0RvNnRPa2pqdHgwSUMz?=
 =?utf-8?B?NkxFUVNRQnFhNkN1ZnIrR3NmeUZkZ3dVY3UralBvL0pvR3BQOW1iTVFnZDI3?=
 =?utf-8?B?a1JKa05qcUxVelhzdnY3T3ZMbUhhQ3V6T0hSRTRFR3pYeUx3aWJXWjhENUNQ?=
 =?utf-8?B?MzVaN0hKakF1Mnl1N2dmdFZ2SGFCV1RwYVE3L2Yrb2QwQXFrcTl2bmxnRXRM?=
 =?utf-8?B?K3JVelFmV3h4bjNyNXREdFR4TjlrL2V3WUU2S1hWMUhTKzVDek9ySXdWY3oy?=
 =?utf-8?B?azNERVM0OXBneGpNMVA1b1A2RldlWnRDbnNzUFRIMWhWb0RiN2xzSFh6Nkp2?=
 =?utf-8?B?Q2Q2YTZ5cms4ZVVFZW1TeXBOTjJvSmsxUnZoWGdlVDRrb0RyOThhN0VOdjJW?=
 =?utf-8?B?SjgyRW9kbjBIRGVQMEp2bmoyTjQrbkhIalZvSy9Vc2tMc21jTTZPdmNlakNV?=
 =?utf-8?B?eDZXNnJaK2o1OHZYY2RyTDNvY1RpL3N1REhTTXdpUlZ4U3lMR3BWQ3Fuc2JW?=
 =?utf-8?B?ZU82b3dsV0xBKzlGUlQxZjE5Qlp2VnY4V3lVbjhiZGtLNzQ3eWxzbm5HS0h2?=
 =?utf-8?B?QlViaGFNUm54ankwZyt0V1FDS0FFdW1FZlR1dWxFTEZwTTZIMVdVNTQwVDZr?=
 =?utf-8?B?R1duSnQrRTBWbEljNktoSHdHd3lOekZTMlRNSmU4K0J3Q3ZHOExoQWdRb21s?=
 =?utf-8?B?SVVLWHdNOWNNa3JDSUpZeUtYVDBwNDF0djNhYitpVUZieCtJTnBvTWhRblBn?=
 =?utf-8?B?bUhDbTJtaXJKZ2VHNGlpdjE2QTdOYXArb1FEdCtQMDFvTitjVlZ0REtZRWFO?=
 =?utf-8?B?a0tVQ0JVcWVINDVEYWZiMDZmWVhrU1U2YVQyZ1Q0eEs5MzdqUVhXdmduOGJt?=
 =?utf-8?B?SU43NlIrcHk3ME4yNXRJRVg5Q1ZyNzd3WVVZV1EwdEFCQWViVTdJUTM5aTk0?=
 =?utf-8?B?eFQ0UmcxZnlUU2kwTlM4MU9YR1FOaTJ1aW84SElHVzRDbXNxYWh4YVNPNGVM?=
 =?utf-8?B?WERkWDZzN3JUMDVnWm51eGJYQUxOazlUVE0yWWNRZ0pHYXYxQStOdnNtNmZM?=
 =?utf-8?B?VERKdDZDYm41R3E3Vm00eUxvY0JEbElUR0kwN3JFcmdsYmcvMS91NmJid2Fp?=
 =?utf-8?B?T2xySnZ0ektyYUVPVU1VR1BJOTRYMnppT2VMY3hYbXJwRWRlcjhka0dpdFRT?=
 =?utf-8?B?TmcrNUY2cExUTzlhd29PbFRpeVViZWIzUVlaV1N6Tm5DVUtydVhYdUl4V0Nj?=
 =?utf-8?Q?ijQAlcyZTMdH8M06P9lGpHH7IE9HD9mU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWxPcmlRUXpIQ25sK1k2MHc0NGt0Nm5NckNQOXhsMkV2TVBrUnJCNG5xdjVB?=
 =?utf-8?B?cWhLVGZSdUVhVWIvb3BhTmdHbU1rUkxpV2RKQ1VQd1BYYXdPY0o4b21nRjBs?=
 =?utf-8?B?NXVtN3JoVmgwYnBSVmpGMkEwWm03TjlwVlZMaXBHUGJ4eFJBdWhCV2xzUkl2?=
 =?utf-8?B?TzlLdDNzNjVobU96R0p0OFQ5dXhGM3laNDRuRS9mdWYxQWgrdUtJTHhkQU5k?=
 =?utf-8?B?eE9SNUxQSWpxeG1Jbm5rdmNjSUhrTEM0akN1N092bytoY2dlaENMdE84T29K?=
 =?utf-8?B?aStodEo4NC8rcXd0Qmc2VjVmUlJ3OHhqRlpjc204UEUvalFLQnlTN3dZTTFm?=
 =?utf-8?B?a0pqUUUvSWFwR1hJRDZaOHovZXV5a3g1dFZTNWwyWU9aQ25Dbko1UndBQk5Z?=
 =?utf-8?B?dWpqM3lZQmljVmNpY2NUSjRWa0o0T2NTSXdZYVpZemJHZHBMTDZ4bjlvZWdT?=
 =?utf-8?B?dUd2b3BPU0doYTRrV1FDUEtaNXNKRGZieitJOThzVjE3L3VUQXpTS3g2VjNK?=
 =?utf-8?B?M3NpVTJrUWgySWNEY0ZGZVlnVFJYc0krZUlnOUxURDBqVGJnWW1pb0dJbjM0?=
 =?utf-8?B?eGJ5SjZpUHNRTXFCNkRLb0VBUHNXSnA2ZTI2Wld6RnkzdkdsN3NxNU41VWNF?=
 =?utf-8?B?bjBkQmhESE12S1RQaG90aktDd3BkNEVPWlZ0S1kreTZuNXMrZDdhMWRsMjhT?=
 =?utf-8?B?dVhnMjBya2o5M21ZeWhZTE5vbVEyVnB2TXZ3UWpCeDJyK0w1VmdWQnVzTFV1?=
 =?utf-8?B?czczZnA4dnJhQzhid29DRjlFcWxjOXhQdllTVk5HUkt1Z2dpZWlRTkljMG9T?=
 =?utf-8?B?STJKd09nWE5tUzNjY0hJWGhhcmdxamQ1UVBxdzAzYjVDekYzYkk1MHB4WEta?=
 =?utf-8?B?R3hTSjRxcXQvRDBZWHFiWXQvVGlOK2hBa1dmc29HYTkrMkR1K0t0QWtsaWtB?=
 =?utf-8?B?ZGZrWnQ2eFphRWRqdFRyV3d3bzFNZTFvL29IeWo5NEFjQjZIVDlNaXQ5Q2l0?=
 =?utf-8?B?TzhWWFQ5enBFeHRvUmFxRmtFUEd2enFYZDJqcHVqUG5ST2VEV052Uk1GUE1q?=
 =?utf-8?B?blB6U1FtVXRXQ3QrcEI3V0dtdk9QTUdQTHBMM2ZocERPblUyMDA5aWxNSDI2?=
 =?utf-8?B?dEFVeG12bUJZMTQxVDUrSHN5dnZqdGJOWkF5WC9lMFVDSnRrZFJsY1FtRk9C?=
 =?utf-8?B?TUY5RzEraTFiYm5sWk9Pby84UWdWNmNMb1hna2NFMDhHR2ttVkZqM0RYbWFZ?=
 =?utf-8?B?ck5EUDRSTHhnZWlkZUJnM1pUWjdnbmtWRSsvV0VOMHFCUnA5R0pQOWZxWEd6?=
 =?utf-8?B?ajk1akVsdVZaSzZPRWdTZHFENFE3NUFGcG9aMXd1Z2dNSFJ4OHptMEhRRmU2?=
 =?utf-8?B?SWs3TExSNTc3bExLNVdwRVYvZklBSnpPVk5ZOWRKeUljQUJPb2tWWmNVSGRF?=
 =?utf-8?B?S3NLdDVrVmVNZFVqMkhSU2ZBK3loYSsxV25tSVBUYVFDSVJUTHpGbDhROXdW?=
 =?utf-8?B?a0YwRVNudUo5SU9Ja282akEvQk9FV3ZxMFRuaGo0NnljelhHQW1KaHhMeVlU?=
 =?utf-8?B?a3lrTzZabkR3NnZDVVhaVWhHVWhteXc0VDltajZNaFlLT1N6Y1VDR3AxcmNN?=
 =?utf-8?B?Q3puN3BnSlo3WEJ3cjZ2ajI5NkdaL2NyVXM3RW94cnhNNEs0TnpNb0pudHlp?=
 =?utf-8?B?MndlQXlrd1FNdzVkQ241VG9sZ3k5Nm5SMXkyaXp2a3RDNFJDZ2hSZ2VKTzA5?=
 =?utf-8?B?OGZ0MERZZGlpOHdjdk12QXlHK3dmaGxRZHJlaStmbXF6NGp2QXc2WnM1eU1H?=
 =?utf-8?B?S1I2ZmNUK2RYZUczd2MxRU51TkVMVG5hWWFUUXJuRmwyeGF4U2gyZ1pjTzZU?=
 =?utf-8?B?VHlKMWxJTGo2QzhpNGNLZVZpVVJsa1NQMHlacmJEQ3MvUHlrM3R2Um5GYXM0?=
 =?utf-8?B?b1Y4VW9aVXN3cEpJYkFyYTlBNVVDbGNFeTRmRXlNdXBBYThrcGZXbWk0Y0Rs?=
 =?utf-8?B?djBsdHgzL1pFL1l1WlRwSlBQaFN1NENvVzJOQ00xT3didlRlbnhRT2ZCT0FY?=
 =?utf-8?B?ZTVaVU1YYmZPTGlJVFF5UXJ5VUYvYXZOTkNoVEdxL2k4cG5LcEpJd0VBNHJv?=
 =?utf-8?B?b2I2YTFjUnNRUUI4YVVXMDRZaTRzQ0tFOEYvQ2hhVG1MbWszR2xmTWFZbEN0?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ebc0325a-17b9-4842-3e81-08de1d7c019b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2025 21:32:37.4812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2lQrTl0PiHqyqou5FBI/pnx6k2ksfAT/KUCu85tKcOZjskiMpS2JNk6940geu9/TRFUzVBjxepVFPlMNlxPzJokEaIIzwki4T33DYjKhyII=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7004
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762464762; x=1794000762;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=HKIdF0BF0fJ/+Si4DKaujD2FQu2DwEYa6vCuExOHhvg=;
 b=ADhl0njyGEnw90Lzau+ALR+avr0PyrjkhHddDUE/6YXpJ+kYHm74I6xS
 uXivgIDD4qwRqYIwXis/N6Ziu2N80Q6+e2iLZgD/uViJwk+1sfcX4XdCM
 BPSRFG3q4yKMgj9LPUXRO4y5Eod5eiciNemdfMSP7PPzGBTAQLl21QOvR
 UDyo8h/RGcy6ElnOJ4m/dL3f8eCilRGJY6Ru2qaCnDDVabtJmeJxC71aK
 a1AxZ/Lwm4K9GCrmYPzX7KGRZAC8jvTI3Xsu16uEFyfMwXVs3gf6N0IHx
 2cMFj812zVXDyswdCNBxk2+m0dH5JXH8NFBzNF7+3Ix+wHJc1PH/Q/IG9
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ADhl0njy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ice: use cacheline
 groups for ice_rx_ring structure
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

--------------jwYJv6zPHt0KoSZXSgi09nn6
Content-Type: multipart/mixed; boundary="------------gkRoYhSnTdvUjKQnXy0hOqsu";
 protected-headers="v1"
Message-ID: <3e32abe4-5c7f-4cbf-b4de-1c136b921a95@intel.com>
Date: Thu, 6 Nov 2025 13:32:35 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH iwl-next v2 2/9] ice: use cacheline groups for ice_rx_ring
 structure
To: Simon Horman <horms@kernel.org>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com>
 <20251105-jk-refactor-queue-stats-v2-2-8652557f9572@intel.com>
 <aQzZfXz9qBjr5vtB@horms.kernel.org>
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
In-Reply-To: <aQzZfXz9qBjr5vtB@horms.kernel.org>

--------------gkRoYhSnTdvUjKQnXy0hOqsu
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 11/6/2025 9:23 AM, Simon Horman wrote:
>> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/e=
thernet/intel/ice/ice_txrx.h
>> @@ -298,10 +302,22 @@ struct ice_rx_ring {
>>  #define ICE_RX_FLAGS_MULTIDEV		BIT(3)
>>  #define ICE_RX_FLAGS_RING_GCS		BIT(4)
>>  	u8 flags;
>> -	/* CL5 - 5th cacheline starts here */
>> +	__cacheline_group_end_aligned(cl4);
>> +
>> +	__cacheline_group_begin_aligned(cl5);
>>  	struct xdp_rxq_info xdp_rxq;
>> +	__cacheline_group_end_aligned(cl5);
>>  } ____cacheline_internodealigned_in_smp;
>> =20
>> +static inline void ice_rx_ring_struct_check(void)
>> +{
>> +	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl1, 64);
>> +	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl2, 64);
>> +	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl3, 64);
>> +	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl4, 64);
>> +	CACHELINE_ASSERT_GROUP_SIZE(struct ice_rx_ring, cl5, 64);
>=20
> Hi Jacob,
>=20
> Unfortunately the last line results in a build failure on ARM (32-bit)
> with allmodconfig. It seems that in that case the size of the group is
> 128 bytes.
>=20

Hm. That's interesting. My understanding is that
CACHELINE_ASSERT_GROUP_SIZE calculates the size without taking into
account the padding after the last element added by the
cacheline_group_end_aligned. Perhaps there's something in one of the
groups that gets larger due to also being cacheline_aligned and ARM
system having 128-byte cacheline instead of 64, and thats what results
in the larger increase in size.

Is there an easy way to cross compile for ARM so I can check the struct
layout myself?

The easy fix option would be to only enable these assertions on the x86
platform they were designed for specifically.. But thats kind of ugly
and I don't like it...

>> +}
>> +
>>  struct ice_tx_ring {
>>  	/* CL1 - 1st cacheline starts here */
>>  	struct ice_tx_ring *next;	/* pointer to next ring in q_vector */
>=20
> ...


--------------gkRoYhSnTdvUjKQnXy0hOqsu--

--------------jwYJv6zPHt0KoSZXSgi09nn6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaQ0T8wUDAAAAAAAKCRBqll0+bw8o6E7e
AQDR7z6Pp1piVl+6l6++a55UxwspKdNZg0YcHik6IMnyMAEAg1j5yhY3ojcvLkXP0qBxlHE3Yx25
/sUQ62Bbvka8jAs=
=lD2m
-----END PGP SIGNATURE-----

--------------jwYJv6zPHt0KoSZXSgi09nn6--
