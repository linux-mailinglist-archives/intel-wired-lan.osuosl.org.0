Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MPRGxmIemkE7gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 23:05:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60231A9603
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 23:05:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06F9980E3E;
	Wed, 28 Jan 2026 22:05:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JRdnIq4qmd22; Wed, 28 Jan 2026 22:05:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 943C680E5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769637909;
	bh=qQKQTsc0IshiO7uO/QTNm9Fx/stNM2z5aUk3/w/zmMo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P96WjZ1K/ZipPx41QO0nw9Hz/m5ae30VlJy3+PiMKwVizde8wDJV1KHBby/1NAaQt
	 xS8bXSY4HUISeUlQLtKcnAwNwTGuLo0mlitMqBJK99Gz9BhjKLDbz6L489OB/os0cy
	 2//gTGiQsIUA4z3STF53X1JogumTTedF87r05ytCZjkGD7XrAsYIpUBXRpYgTpFxOW
	 plRLhHrK76YUJdNO3kvvBoDzipPSKDzzw2RC0YCwXE2Kd0TZ82hPgPD8ZonmB+8PFk
	 tcNGHq+C2w8tpP3lh0mljURbWNOjFBnnlbMprl9Cs1r4yE5ZTk4PDO5MxDl3Ih2zy8
	 5bxihHUJeySHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 943C680E5E;
	Wed, 28 Jan 2026 22:05:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F3B6118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 22:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B0B960604
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 22:05:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gmFFsPZdPTVn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 22:05:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EA634605F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA634605F7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EA634605F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 22:05:05 +0000 (UTC)
X-CSE-ConnectionGUID: OlRWmGp9TZKVbuBkaSRsgw==
X-CSE-MsgGUID: HikBNXD0T7KXpbW+0XQTHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70954359"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70954359"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:05:05 -0800
X-CSE-ConnectionGUID: XclgFGivThyAIZRPS1lcyw==
X-CSE-MsgGUID: zNbf1rC9T0ulIrJrj2YtrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="212892036"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:05:05 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:05:04 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 14:05:04 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.19) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:05:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HDbPEwPS8fhlhpg3/YhcUwsr8yU8VtepiBdgli4h1tBGHpeac82relI+5JDqkTLdmlnCBspoM9itqEbBBw/bizIlAkh/SQWs0KqQ4V7NUXs0VDGTy1Xw/GXvThkiLyLX1Ktkj2f+D7tqJmQX6vcTeRxO2mU1Wy39+H3POt3nnhM9IxK0mXCn5mZyviVf4YlQeONS5Fky0jfOb+LgOqvCvg/A3KptdDlOP4aHXHzpLeENkT5YT6h3JvH/n5dgQxCJMjLWKclilM0JzkFmvFOxWhPdRSrhHCn75REbAMsopDp9Inf6HtgSscc4aEv+TyUCPu+maqaoE19ZEnmamWDY6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qQKQTsc0IshiO7uO/QTNm9Fx/stNM2z5aUk3/w/zmMo=;
 b=GoQACqtYQ8xsxn6/sW79xr5FBzo/S7pujMHkjyRAOxtDj+9hrbfv6EX5pXh/h3Q40q3roRPotZ15DRhIDdniROIwbZIq99rgkAoHNfFX7VkhHKIQZ3Ek43PraJ2bTm66kuylaBjuIKUWpFQEsbZ32NLLz0vzlPen5Smc6UYQ6gBAX2JdQt66+t73ZeneMxZJTNdQGNVs+fFcMmCHJGLcmPNJGWmlgSSBOgKehZhpBtsX/ns+kF+C/LNN/F7HH0GBqFKXPsi7olTQFd0tApBauPcWAGc7M4obvyP34olrZy0JckTGuhtWC7urR9zAZZPDfvGmEjHwIBWXxjIllsLU1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA0PR11MB7257.namprd11.prod.outlook.com (2603:10b6:208:43e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Wed, 28 Jan
 2026 22:04:56 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 22:04:56 +0000
Message-ID: <15f24a74-05ca-41e1-94c4-f905e20bc190@intel.com>
Date: Wed, 28 Jan 2026 14:04:55 -0800
User-Agent: Mozilla Thunderbird
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
CC: Jonathan Corbet <corbet@lwn.net>, Linux Doc Mailing List
 <linux-doc@vger.kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 <bpf@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, Shuah Khan
 <skhan@linuxfoundation.org>, Stephen Rothwell <sfr@canb.auug.org.au>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <f370f2a0dfcaa679c9969488c908eaac82026031.1769617841.git.mchehab+huawei@kernel.org>
 <5b8fe4ae-25a2-4967-bb83-a52dd5907951@intel.com>
 <20260128220248.7a0d5b9f@foz.lan>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260128220248.7a0d5b9f@foz.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0250.namprd03.prod.outlook.com
 (2603:10b6:303:b4::15) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA0PR11MB7257:EE_
X-MS-Office365-Filtering-Correlation-Id: a17650f9-6498-4d7f-45ce-08de5eb945b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Skg2clUyb1FpY3Q5L203ek5xWVovUTcxTHU2K1ZwbnkxYmtXN0Fpc0VPcjM0?=
 =?utf-8?B?NVgzUVZPUmgvVE94SU8rVFYwYUJUdUVHQkJNalptaUxaem9IU3R1eEJKd0Jl?=
 =?utf-8?B?VFZxUTVnbVRwcGQ2RVQrMFpFdjVHUm5DQWltSEpnd0ppWThCL3piSlB2V1d2?=
 =?utf-8?B?VDVhZWw4M1ZtcW1JZTVFOUlObkVWTEkvWWNLMDFaUkNiZWlHemxoTnhIcmov?=
 =?utf-8?B?YWNmcVlIcU1qd1BEbGNsUFB2cm92b2ZWUXlZZFdGb0Zrd1U1YUFXZndmT2lU?=
 =?utf-8?B?Uy96UndMQXRqM0xXcnJqck9weUxCY2pLVzlaWVRhNFVtT1RQT1FXMk8yTXIx?=
 =?utf-8?B?WU9zZ2tuZHpHWGlzZWtGbEhGQ1RTUmxROGQxcyt6Q0hIc0Jhc3V6WWsrUCtJ?=
 =?utf-8?B?ejZFYnlIQWpwazBzaTJ1NERUclVIaE1SMzVVeVE0d0QxUHBra0pOMjVIUW1N?=
 =?utf-8?B?blZ5Z09FRnk3QzZFNGI4elVqVUl2b0c5RVloUm1za1pFdzdNTkNCUWRubFM2?=
 =?utf-8?B?SktHYVVCY01yend5VzRMNTk1MUR2cXo0dUN3d3BtWE56VnpiRUhFRTZaMFZS?=
 =?utf-8?B?MlI3K2RLTmU0Y2k3empqN3Y3Vm9SNTZhcWNTNGcveDlZM0p1b1ZJa1JoTTZl?=
 =?utf-8?B?bS9DaFJMQ2hXcy9yazlqMDlWcVlDRWxLSm1SSGViMS82OGg5eEdqQmYrakw1?=
 =?utf-8?B?VE5TTDdWZm9jV0lzME9SeEM2Vlo4Y3oyM2tXUWpzRm84Ky9KcDBoZHR4aHoz?=
 =?utf-8?B?ZFJ2RkUvdzVlZ2VWcUs4eU1ueWNMbk00V1ErMENaSGtzc3dUNDg2MkVXUnd6?=
 =?utf-8?B?b2w1YUVibFVvUVJHTVFOcHhMSUU5ZnlKVHVBQjRyMmphcStVenNNSnh1Ykpa?=
 =?utf-8?B?OWZDbEtUUWR2MVJKY3RaQktMUU9wSnY2TThyZ3NrU2xwbVFaYU1Pb2o0VEpH?=
 =?utf-8?B?eFNyR3lDRDRvN2JsVFFMS29PUE9aUEVSMWxjWlFzczk3cnVPZXZRcHJSdUVX?=
 =?utf-8?B?KzZ2TC90ZlRYd1hXYkRRTWJBRGRJaUJJVTBWNXpKbVBLU29jZXRTMVZkTlRh?=
 =?utf-8?B?SXNzOVUxQ0laOER1UEgvTmZHWnJ2NndBTUplbTVnOUpwY3UwVVlmcCtLMmQ1?=
 =?utf-8?B?OW5IaEx0TXV1M1RnWjNBaFRrT1hZNURkSFppSlI4dS9OZG0zRmEwVUJvYURp?=
 =?utf-8?B?WTZnSm9SR1IrODNDVjdFMU9iTDNXUEp4RmFsOGhTRDNWUWxnUldTN25SRHVh?=
 =?utf-8?B?VForQ1R3bjFxdWlib0ZyTldUanZ6aTdxQStMTGVlSllsVlFYS0dqbWdha3NH?=
 =?utf-8?B?MnpPOUJLc1lBUEVMVDd1L2J2L1FTeTg4Ym1yMDRsYklJK0E0TWtKWlc3eVZM?=
 =?utf-8?B?cGp6M2FRNnRvZk5WSTE4WHN5TjZETFUzb29jSmtCcWE4bkIvWUNjTTJxcVpD?=
 =?utf-8?B?VW5VRzJ4eGRaTEFFK2ZjTmZhdytIQWg0NnBma2ttSVdiZTg3TlpObzFpYjhQ?=
 =?utf-8?B?Y2NhNFRQRHVpL0ZrbHM3ZGpVblVrdGp3bXM2QjEvRUhhM2lIMjhjVXJUOEJt?=
 =?utf-8?B?M0d0V3paYWZwc091WnFnWFZQeXVzNmNDTk1nRWQ4Z20yWFI2N3pIclNKaCtL?=
 =?utf-8?B?eGVWbk9sNGIwdUhtNmRQZHZrSHlUVUxiV2FFZC9qQVFpa01CVlJqalpaZld0?=
 =?utf-8?B?d2pWN2dFK2o0UWF6UU5OTVpySm9LU3JKbE56MHVqSTBLbzJMNlRYVkRLeG9N?=
 =?utf-8?B?bWJNNjFjL0pGS3ZYSlRjL00yaTJKbVJxV3NJUWRuczN0RThWTnZuRzhCTzQ5?=
 =?utf-8?B?akJRcktjenBja2pvallaeGl3Mko2VW5ZWVF1SzdINzJ4d3BRcURJekVRR0pC?=
 =?utf-8?B?VUE1ekhwaWI3cU4zcXNPK0U1a1BSTE1BVmQ1eFFqYW14WWZQUjdDZUVveUtS?=
 =?utf-8?B?T0RMZC9nNU5hVWpURU56TVFFMWFIZEhBLzVjM2k5QVJsbDlGd284dE83ejR5?=
 =?utf-8?B?NHFHTlloOUh3UnpzTHdYRlUwT0l0NjdIY1B0cDRuYkRIaHRYUU1QTjNoZk5X?=
 =?utf-8?B?VDRVM1R3dFFRNmVpb29CMm9JT0t3MVFYZ1BDaEtwY2JtVjJvOHZMMTUzMDVQ?=
 =?utf-8?Q?FXyw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjBQU1M3Y215WmlTZnJUTVZxZElnRVVBSHNQOUJLWFJWeEVEZG1MR1A3WnEr?=
 =?utf-8?B?bWhMd2lnMitBbUhFTCtLaVZUdG5VVlR1WGp0SzJ3TWFrZ0o3aUl1eU9IODFw?=
 =?utf-8?B?eER0Q3pESTBZUWdObFgrM2JIY0RTM2FLQ1pHWVpETlBFNmoyUnI1dnZ5NktG?=
 =?utf-8?B?aXRYVDc1NDZRaWI2b2cxWlgxbVVpNzZkaEtrQk1uU3VWZTlvN2JURkFEeE5r?=
 =?utf-8?B?M2JDeFBKZFdmOWhBTU9MWGxZN3NTSVJyT2FWQlAraUYyOXZFOU00OGZIZFBT?=
 =?utf-8?B?M25zU014Qmp0Ui9iVjc3R1B5QTltY0hGbzJSZ0RKNERiWEtvZ3RzeGlucHo1?=
 =?utf-8?B?aFp1dEpXSFlaaG1QaitBU01qNUVPMnM1S1BCNC9LcUhOaXp1amxPT1RXb2xB?=
 =?utf-8?B?M1dtc3BsVWhRK3hzcURsUUFhckFEaHQyUFdTeDUvVmRhb0RrZmVSL3U5UHdF?=
 =?utf-8?B?ODF1QVFTT2Z1NFlVdTZxLzFrUkZvcWMvb1JFbmw0NGdmQ2J4TW42SzMwbXMy?=
 =?utf-8?B?bFB0T05BSmFkekJGVlRaRzY2VldIUTBsd0hmckFSdSsvK2kwbG4zaWYyUytY?=
 =?utf-8?B?VW1uYzB2eHpidGpqVnVuWDRNVWZMVWJ2Nm03QmRQYXlCQ1pWdWlBaDFBYUF3?=
 =?utf-8?B?N0prVXZDVnBMQ1BtZkhySnR4cEt5OFNmazV1T3g2RUMrRFFaNzZNVGlmUlc3?=
 =?utf-8?B?bFJqamlKeTFWY0szdndDcUsyZVBWb216M1RFUElXMVN2Z1pKeHhoYXFMVHJr?=
 =?utf-8?B?cm0zQjZCR0pqWU9QYzBhRzJHRzhMSFZxeUFkWjZkQ0VnandKdnprcTVselhD?=
 =?utf-8?B?MElLdkYyUUgvSlM2OTRxSE44YmtkazJxSUJIZ25BWHZLVmpOMTRYVS9EcnFh?=
 =?utf-8?B?V2MzdVlMc1F0MTVPNDAzd1EwMVR4QXRRQTVqb1I1a3B0SGdoTHhkdzhSS1ln?=
 =?utf-8?B?b3dHOFhPRkZkaDFmTTVhaHdKOWhjSFdLRmM5NkRqRHdCOVZpVU1ublBLamxj?=
 =?utf-8?B?Z3ZEd2orY2haVmY1M1FKaGpLRlZiTVV4YUdUeWlxUVVwZDFyNHpFZE5iV01I?=
 =?utf-8?B?bUE5a1I0cDNGVXBhbmpaTVBwaGFVTHdlUzlwTG0wcGpLenpNcnVEbENKcXpU?=
 =?utf-8?B?dUo5N0lERDJYVUl2eHNhYzZWQmNOSFZBVVhnV3g0d2lreG9jL2ZWcmVBdm9s?=
 =?utf-8?B?cEgzZW5uSFhaeTJ5NjJkMmxTdFpMMnNyWnhWazFqUnVoZ2ZvcFRJdzdoK1lj?=
 =?utf-8?B?Z0o0WDJadWJQdW82L2xsdURUdHpVVktuM3VURm8yaUROc3NDckhvQlhjSzdF?=
 =?utf-8?B?NnRzNklmNkZNRkw2UTA1UjE0ZXI1em0xem8rWUhlc3ArWXM2ajhXUWpvQ3lM?=
 =?utf-8?B?dGo2OTZROUh6Vm5pOE9PT2tvbzlibDEzTWxPRjY0TDM2YkdkOVVMUmpiNnlY?=
 =?utf-8?B?UndCbDBwcDBsU3hFdlJBZXV3VnZRV2YrY2FSUzZ1MzZGVEFWSDZRTkg1ckZx?=
 =?utf-8?B?cmFTYk8xejdQWmFCanV1Ym45MDRxcEJ3a1JjSDFRSVpLSEc5U3hGemswMjNl?=
 =?utf-8?B?RmJQRXg1ci94OG90Q29OdlJoWWpnYzVNN2pmN3RxalBJaHAya1RnSkNRZGU1?=
 =?utf-8?B?R1RtSUluWkJTdkZSSEp2VHNSbmt6RHBKU3d4TXlLQXZJSDFoV3A3UnB3a2Rx?=
 =?utf-8?B?VmF0Y1plSTg0UlVDVE1MTHpKTVNWZ1Q1b0czR2JqWElNSlAxS011eWV1c3cz?=
 =?utf-8?B?VXp0Z1BrM0VtajRqNTV3V1NVcUZaTnJaRUwzOEs1b2w0SE92eEtnb3BGa2lK?=
 =?utf-8?B?b29XTnhBdUlRQUdTdDk4eWJmKy96TzZBWFR5bUNRZmZpeERUaWlQTW1LT1V4?=
 =?utf-8?B?NGlCN0ltMStZYjFmd1VCcTRBakFWV0IxUVlKczh4NFFBakFhaExwMW5KdFlt?=
 =?utf-8?B?Wk5oaU9XdXBwc256Nkx4aDYvNzFsOFh1SmkvNXRMKytwajUxUWpLTEVQaHd6?=
 =?utf-8?B?cU5YNm5tVkJzaXJrYkM4a0tYamh2L3p0UEZiNFh6cnFxWVJpMWFERDJQVVFs?=
 =?utf-8?B?cFE0N2lYdFJoNzYrWi9RMTZFaGxXT3QwNmMzeTFhMklEVmtLUUZWWVZRZFls?=
 =?utf-8?B?ZzV2WlF5VVFZa1YvQ0k0VGVMaTRDQUNram1xWE1sNXRaVW1CdkpMeVdWUGI0?=
 =?utf-8?B?b3ZmOUNadkczMUpWd0laZjNzeEVsbWQxK1orRTJpTWQ1UHMxcktkSXJJS0NV?=
 =?utf-8?B?bDArU1V5dmZ3U3g1TkQ0RGh2SE11Z1ZQYzdUaTJuOXZYWDlpR2lVVnQwTWVw?=
 =?utf-8?B?dms1S1ZPZDI1bWNBRjZXQis1RUZiM1FDSVJ0ckdsLzg4dVNrQVN2M2JmQ2Fk?=
 =?utf-8?Q?IHfnYAkhyL07OcB4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a17650f9-6498-4d7f-45ce-08de5eb945b5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 22:04:56.6456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AYLbLMYvUp5pdEvbeljLMvryd8z3+wgNamBu4F7l2Xrq283Eh2KjRwqwNH8nDIwPE9LWuxjcazkNDs/4Pm1wZxKtLvBIyMIkd9bHIlk0ZEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7257
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769637905; x=1801173905;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g5VWBSahEtijrJcRaxoieyWcsIlwjK4YQRihPTmbBnM=;
 b=jvEeK9Ays3eY0sq9nE6jIxhEsNPvFF+PhS5cmbGy/VJ4hciO9KYHjdTH
 uYxrp/QN+AvIgOGOibTavvr2xJximgMZaT/HhwXgCJRwCuQkvTR1fcqAT
 gUMbQ4TmMNjmLNMX40aE9crgyK7scAxb8f8D4r0NXiBYbLiNgnZzBtgFm
 sJFQCX1m068uUk+4732EX8BhBR1jnIOKVZhv7MNXGMDig34PCxy3BYCIh
 xFsOKHkj4Qu74+WvWCpV5DkUxQHvHe4DkSWwPNy1liYcdbgQ9eINl2DaM
 eyGQ30Gm3U72W4TJbN4jLhWbMkZA9HQWkV2keztsqUyAaLIWOcf4vQ4GE
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jvEeK9Ay
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 23/25]
 tools/lib/python/unittest_helper.py
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab@kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,m:sfr@canb.auug.org.au,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 60231A9603
X-Rspamd-Action: no action



On 1/28/2026 1:02 PM, Mauro Carvalho Chehab wrote:
> Anyway, I'll handle it either way at the next version.
> 

I also saw you had replied already.. but I hadn't gotten that far in the 
thread yet when reviewing :) Thanks!

> Thanks,
> Mauro

