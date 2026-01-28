Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJuxArBLemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:47:28 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0A8A7242
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:47:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03AF98274F;
	Wed, 28 Jan 2026 17:47:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U8mHrFiM5A5n; Wed, 28 Jan 2026 17:47:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B1DD82784
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622445;
	bh=tCqdlkMirQmetHonJciXmFnuYQHNvxx31YeAqzsRCsM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YRxgemuSkCSHi1svGQGC/g5d/nu38W/mq4x354bm0TcYEGLSTjv0E7UhvPPAN+M/I
	 QQsEU6AcGN0g4ThXvgC7vBT0B+Vk3f8xn611B0PJiDLiurTBjmL/Tt7qW7Z5UywXkc
	 dFo1gkxnU720artoHryO/dLgdr7YNrYjiPO8ktUJHd3HXK0PSivQajcmGWMuG+khJz
	 9x36rOJbxPX8pzJvwTwjAjcrsrhvVIChHyKg4N0tMKAXwz5HJWT/Z0H3K2tJjipk9O
	 0zbh6tBjhsUarwTz8MWTaBdl8KbPAKUC+MlgtmSK0PYCYTNoSb0Biz2a8Fzp/5Jmb2
	 jUjxmpRqvaw9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B1DD82784;
	Wed, 28 Jan 2026 17:47:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 404111AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 37EE440642
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K2KRxH5GLF8E for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:47:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2AC8140510
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AC8140510
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2AC8140510
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:47:22 +0000 (UTC)
X-CSE-ConnectionGUID: 8zBYd110RCuZcNM+ysFy2w==
X-CSE-MsgGUID: 7J5iam69Q7urfPcq12e8EQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="82271514"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="82271514"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:47:21 -0800
X-CSE-ConnectionGUID: VaX9IkXrTv2eptD6OFCxoA==
X-CSE-MsgGUID: xQ8K4ZRESjq5XF/zkbb9YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208407761"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:47:20 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:47:20 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:47:20 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:47:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W7HTkGGQFQBal9M7rdN5SdF4/MUfJSHkTJoHS+yHOm1brlu6i6hvRsaalff/7O7f7XyFn9TIj8+ji4CT+9/Gl+BgnQrEXMU3nFDR7JRu0U+lv4bK8Wq1mx2N8XeuOZXrzFmSeZocLlPSkeMrAdCukD4WsYJ0tfD5GgU8a8QKFpMkr+YudaRIYhNlWQzd+57JQh0A/vjCJPDARdsCUZrWh2pZuf/9VDUHQBJfgt0Pia3S3XmIv9krWQxvoSUnEzljfbGwmuurVeU+LpeoUDLMTbibUvhIBKVJZyPg3uibw/N+7LfLclSyBNzbc9BuiaUVAhvsWQFU1htMhQ/TvMnlkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tCqdlkMirQmetHonJciXmFnuYQHNvxx31YeAqzsRCsM=;
 b=rMJx+O3xiFBQBNBMTKF+TYmouRa6p8nGZNQK5IhQSgUJLC7yDPQTJ6OgA0CjzsAck5Cb/GG64jDOIbobTUU3FqpAqji5SBztaVNdveD5UUnACPdNBBAdwwjXkHhIz0SjUPLjwncqulPUGKliPNs4Ct0Dr4qBHcfwFwyeKQH5h4NsAMFabx5uCuNWoz1IwElOoHIgfOQLbB5978/0yoMO71RNeSVszj5pWLzk2scr5G4kDA//PjlwjYnEn51eZBvHZHMisa1D3Zqd52sdYnt+bdKVlVv6e5XrqKY/Kc9d12PhEFeMfbAKdzHkQ1umbGl+22S1HoaMNf4aYy9VJuKZiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF4B1ECA5EA.namprd11.prod.outlook.com (2603:10b6:f:fc02::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:47:17 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:47:17 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 12/25] docs: kdoc_parser: ignore
 context analysis and lock attributes
Thread-Index: AQHckHZdZOlTz29qJUKA6JxuTxjjWrVn21Ig
Date: Wed, 28 Jan 2026 17:47:17 +0000
Message-ID: <IA3PR11MB89866E86D78E671054BC49E5E591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <b85fadd1fc9eef164c8961adf79cfdbfee629019.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <b85fadd1fc9eef164c8961adf79cfdbfee629019.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF4B1ECA5EA:EE_
x-ms-office365-filtering-correlation-id: 62ab7566-4ca9-4c8d-57e0-08de5e95477a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021|19052099003; 
x-microsoft-antispam-message-info: =?utf-8?B?RzEvTVMwTHVxRGFNYWJzQVZVMk5IK0hVYzN0eHVneEVTSkhXMjlqZzE3L1kz?=
 =?utf-8?B?Zm5PVkd3STcvT245aUltMERJUFpsVzZmYUt2cjI4S3dTVWZUNmROQzZCV3p4?=
 =?utf-8?B?RDlsVjBXbDdDU1NuVGJvMDRYZDJad1VKYUxGOWRtbG4xNjZVdzU4NnJGVDAy?=
 =?utf-8?B?ZStZdjhzUGhiWVFwcDBBT2QvaEFuV1kxdms0UnpzdUQ0NnVKTC90b2F4Mkpp?=
 =?utf-8?B?eW9aeTAzRWdxL0o4dmtkRGtUMWhvWERlY0VSdDROb2M0MHB2eHV4TXFGcmxG?=
 =?utf-8?B?ZG1QdlVpODZDemhMeVg5OVh2VE5Sd3N2aXJjQmtkRnExTlFlbTVNVkIzU0sw?=
 =?utf-8?B?YjJCUG5XRnoyNk5leGZ0K3VyN21NSExNK3c3UWx4clFXeE5lSzNhUHRQVlF5?=
 =?utf-8?B?MlNHV2Q3TllvQlZiRDVVOFQyUVNKREp6RXlKTS9kTnk0RXJ2cStiRVVhcVZ6?=
 =?utf-8?B?WDZ1TXk5OTZURmZXTVE4TkEzWnU4RTM4cnYzNzZNbVRmbG5UVURjZ2pVQTZj?=
 =?utf-8?B?V2IzVG5DZkNLdVBPVHhPUi9taEs4QXlMQy9kcnA1L1gyVm1SVUExMC96UlBN?=
 =?utf-8?B?MXIyV1haWUwzb0h4emJiWkRNQlFVdW9HeEhBVmdKYzJ5WmxMNmZSZ1paRHV4?=
 =?utf-8?B?NFNMblNQMkR2UlJmTDFhaXBXK1NYVVU0cDUxZ0llb1Z2RWZLREZzdEFZMm9D?=
 =?utf-8?B?MnNyZ1E4My9CV1ZrL0p1RVhTWFR5bUhiK29Eak5SOFdzbzlHZmFTVkhvNmRH?=
 =?utf-8?B?dmxsVHNQZnluRVFBVTVQQVR1SFV1UWN6QjFPaXRrdDNwdFpOSExjcnM4UmtY?=
 =?utf-8?B?a1pkRVBYTDRGSjlaekJxN1RzNUhrSEhvV0RiQStSZFBiN2NJSFE5VzJjOUVm?=
 =?utf-8?B?RnIzeEpJNVlwTmxXM0RncWNjd0ZKWmc2b0dPYjZ3aWxDUWQxS205VHBrc1BL?=
 =?utf-8?B?ME9kaERRcTNvZjBXWVZZOVJDRE9LR3lTWThHM1NNSll1eVI0SGtjeER6NVhV?=
 =?utf-8?B?MVYybCtqcVE4Y3hwUFZKcWprdS9wMUpYUVljaVU5Uzd4SG04dEhMTkZjSGNo?=
 =?utf-8?B?bTdzMktvaENKbEhFK05BU20weEZEeFRpTU1RbkVQWWUwbDNKOFBkTHhpZmdN?=
 =?utf-8?B?Q29FZ3c0TnpRZDgyWUFKS1AvKzJxNmwxbS8zTEV1bnBSMEhVRlZCRzJFdnVO?=
 =?utf-8?B?OWVsVmF5Nm8zdWlmNkF6NG0yRG5LRUY5emRwK3JtbGd6L0ttOW5HQjhkQjlB?=
 =?utf-8?B?L24ra2xLSXdhRXo3L2UxL1BaUjlaaHRMc2wxMGJROGJNUy84K29sSTh0YytZ?=
 =?utf-8?B?ZkllQ1d6TUVoTGN2YmtBZTB5c1N4cndYUFhKenFOZEpEN0w3bTNDSEhhR3dm?=
 =?utf-8?B?NHhqMldaTGdKSjMvV3hEcFFWSStKY0t1RFFrdEhvRHRwTWxtSmhmQ2Rkc0xQ?=
 =?utf-8?B?UzYzN0crcnFtTlpPZmNxcGR0VE0yQ2ZSVk5YVGppT05BZlArSDlYbzh6MzQ1?=
 =?utf-8?B?VVRuWXMvQTRvVHpIcUdRdUordTRYSW5NNlFkWVJlUWxRWC9NVGl0cHgwb0xD?=
 =?utf-8?B?VmR1eWFKMlZBaUZ5ZkVzRHNjSDl5cVV2ZFJVQ0UwcWdYTGRxR1EwY050NThY?=
 =?utf-8?B?NjZmVG5uUmQxN0xDSG80L0dRSDJjd2ZHYTc1dWhTTkc4UXBYVXJlaVVxaG9H?=
 =?utf-8?B?NVpHVktmWm5WT012UE1JMGdPb1VJTzBpVXJYOFFsMVVwSHNSS1JpT3VqdDlQ?=
 =?utf-8?B?VjcxbTdIQ2h3RmRnMU5SVlA4ajByWWNUekY4ZUlHV0lvMnJFUTRLQWUzb1Jq?=
 =?utf-8?B?SkNWeW81SHRBS3o4R1c5Y2JnWmE2UFdNUU1LbUgrWlZXVnNBQldJUmEzNG1F?=
 =?utf-8?B?RDJPTVIwdE02YkxUa2pNRXhFWmR1cnBMdzhyWTQzMnJmby9iSUF2YmVzdEhk?=
 =?utf-8?B?TXdQUVpCdzUvZXFwakFBWWgwUlJZak5xWTRFczVuWUFvYitFb00yNHhyUEpD?=
 =?utf-8?B?SWFLSHh3UzhOZytvcVJuQzRmNkxseTNzZWRyYVVaaEszWkFQTmNxdWlQRUFX?=
 =?utf-8?B?cEMvUFQrMTFEbWJhTXRWanJhOThNNmIzalFHUGxMQ2k3ZUZnWCtjYUV1R0xP?=
 =?utf-8?B?WGgvU2liT2hiYTBLcFBkd1U1R1ZYVEtoL3ZrT25HZDNteHdTQVhJNzVTR0Iy?=
 =?utf-8?Q?gPFWYgPgQjkGUXt5UFaBbYU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021)(19052099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OGZ1NVJBNnJhRzVXOFlZUTVJUWJYYnZuY0NYczUrMEFKTlZaQ1kyYnJ3ZEtH?=
 =?utf-8?B?VGJ1RE1mUkcyVkZ4bHA3L2VsQlhrMUdkWEE3MCt1eGVkNGZYdGhTQkdwcGhm?=
 =?utf-8?B?dkZ6Z2h5WnEyNDkvVHJGZzVvYkp5UnVXOGNiTjVGc1pvRkVIU2VVUWVENStX?=
 =?utf-8?B?VE43MkptNEFBTGtUV0FZMHJ6SGU1dE9Pbm9wUWNGTE5JWitmYm5NcmpVT01u?=
 =?utf-8?B?MXQzZjRSMndzZ1REMllnVW44eC94RzAwblpNZkorY0E5ZG5vN2dtY0VlREdW?=
 =?utf-8?B?SjJhUkxDWVBlRzVQVWpwbE90SFJvZnBabm5sMng2YjhKakEvU1Z2YUpKNkhX?=
 =?utf-8?B?SlRaTlhsTC9YRmg2cUdjYjFzVWhVamprMksxcTI3eHFuQTh2SkV5ZWVCOEoy?=
 =?utf-8?B?MXV2TFpVYkM1ZndGMjE2ejVtQ3VmNVhmWnZGMll6Lzl0Y3hLazZ3a3VrOFZJ?=
 =?utf-8?B?WHdqcVF5VlpXcks3TjV6K2JJSHVlaFZJWVlJcjR2N054a21uV1hTZWxubFpU?=
 =?utf-8?B?ZzZ1RkJ0WkF3Tkg1cWVvMDlCQ2tQdzJvWmtEdzJxTVVTdytUUG5CdUtISDZY?=
 =?utf-8?B?N3BoWWpkYXRyZ1J0NXBqYWZhSStLdVhLWjRTZjFuWVVOeHY3MEVDUGg3MXVV?=
 =?utf-8?B?ZGI0bUFudTFmM0VBYUhkd2hZdlN0bTJSTGtvTWJleGY4VTNMNUR5WkpkQ2pC?=
 =?utf-8?B?dUxWK3BKdEhKaThSUnhUY0syT0d3Y1JSOHFQdElCTnh6T1Npa2gyVW9JRHRo?=
 =?utf-8?B?UHNmUFB5MmpSNzBFMUZVblVNSnJRazFlZW55eldIc3Q1alhpNVNXdHZxdnFq?=
 =?utf-8?B?R2g3MGxIK3A1NE1NdE10bU5Pd3BtOFdhRzUxc0tucE9lZ1h0emhaZm54NHNH?=
 =?utf-8?B?QjNsQXdnMWpHYzdiaUszVlpadFNRS3Q5NG96U0xZY29wOHdwa1AvTU5mQ0NU?=
 =?utf-8?B?Uk5teGRJa2hwQjhHd3p3RHlGeWdmeDFYbUpNLzhGdXpUZ2x2Q0NJSmQrMjQ0?=
 =?utf-8?B?QXVYQWFpSEtlNy8wWmdjR05aNjQrVjNJT1RtVGZRWUZBT0JwMDIrQ2lrQW80?=
 =?utf-8?B?bkZLWk43SWFUSHZUcUtHRThteHY2WHg1dXNVTndpRUJPcFZNbmZmQmRJcjFK?=
 =?utf-8?B?QzBHNCtQeU56aEcwVjJTd2FLMFVGK1BzZlVZdmVPU3NSUFRmVUx2VkwvbS9L?=
 =?utf-8?B?elpUak9ieVVhOXEzUVN5Qkd0UlFGT1dBcTdGNXJ3L3N3Qkt0bittcURIcDht?=
 =?utf-8?B?a3ZveXNJV1ladzYwL3ZGbm5udk9lNS9odWhWV1pvQjZtL0FJSUwxZHVkSXUy?=
 =?utf-8?B?ZmtDNWY3Vytacy93d2hBRXkzdFNWUFdZTUJZTTZEUWtSSnREbGppYSs1U0c1?=
 =?utf-8?B?dnM1YXhpaU5FTVlXQnNVTHJOY0dJUlF3UmhEU0piVkdZY1ViTlhaeW1LVktK?=
 =?utf-8?B?Q2QvOVVNU3BVUW5mSlRVcnh0UXdvZW5xUmM0d2c3QlRpM1V3dnRCOGJkaFRz?=
 =?utf-8?B?amNENGJLVkNnUzJkN3BTTlFsczIzekYxTUU3SE1Dc1JSV2RDMGhSZTk0aVJn?=
 =?utf-8?B?WHcvZzlCNnEvRzNQRW5Kdks0N2QxUDNiUWFieGd1aFJxMGRMV1l4OEVtaE1i?=
 =?utf-8?B?SnlxSHJrY1JDdkRYR1pybDhFNW1uOFd2dHU4T3MwWktuOUlOL1k4QzUzWHZO?=
 =?utf-8?B?ZDVZbXUwYUZzZnBmR0RZRWpxNWNSNTYwWGplRXpUb3F2YlBHcGsrV1RqNHM5?=
 =?utf-8?B?QzZtTU9ONFRveTI1SnNLYnpHU21CU2pRRFA0R291cm12TzhpUldVTmV3dEs1?=
 =?utf-8?B?NW4yUHZBOVBsMEl4RnUrZ1BPaHlnVmZBWW5vWkY4ei9QK1BVWklRZFdCQjVH?=
 =?utf-8?B?YmxBblFXSld4TG0zeW5tZXEvU2h4VmR5RWttak1qVitKN1Iyd29aOEdIMGlS?=
 =?utf-8?B?UFJJNDlVN2NKWUNjTHZVKzBRT1dCNFFzeVhndnRyaFBIRHJac0JpVVVUYTVk?=
 =?utf-8?B?UnpuVFBjVkg0eU4yQXhFdVF0OW1lem1vU09jZUJvb2xmbVFBUzBaMzhrN3ZJ?=
 =?utf-8?B?ZTdQcW9YWC9XblE4UHFBc0N0dVhrOXFLekVsVG9zQUdHOS9BRjhZLzNUZFRx?=
 =?utf-8?B?clRvTkZlZE1xQlR3TnJVR3U5bmxRTnpKNVQrZytqTE01SXU5SldabjFhQXEr?=
 =?utf-8?B?Q2dQM2NoL2Z1bzVOTnRaYXo4YWN6Nk5keFhoUjhYV1JEN2VZcVcwMDVaRGMy?=
 =?utf-8?B?Q21tVnpvek1XYUdmVk1LRUE3NE03NEYwdTJHTjBWTFAxTm9JdmlrRmJ1ZEtN?=
 =?utf-8?B?RjJkRUE2UHNVQ2RicHRJK1NiR2VIRDJvRW5YUHdrU2EyaVFCdjFLUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62ab7566-4ca9-4c8d-57e0-08de5e95477a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:47:17.4935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zxcDXmTy4u7NdPVcoyEh7lnLOF0U1Hv2F5tzb+Y9G1GDOg/rrcc2R+bMBUr4yltC4DYvTuXVriutrbwFlK5VQhl5XWz1fVpRFWiqvxGqNYM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF4B1ECA5EA
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622442; x=1801158442;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tCqdlkMirQmetHonJciXmFnuYQHNvxx31YeAqzsRCsM=;
 b=hDEJbIihGVtO3Mf6IhETXOxqHmmj479qsX/jkspIwCrywuqXOgu17Btz
 Me0DTUaW4TDiTPbskBRuV51bas6Vs4nXO76bSa5X2CC4inOj92jGg6tdd
 sTa0/e30ekThHpf+vB4OEpbXz5Uju0BxVqRWP4DAzeJdDUdvva8YcEWgn
 JzGODV3UFjOgu2dREbjYh8PCTxd5ZvfjHjJEAxZ7WOfVEPOFX7lyq9E7D
 1eU6L+MpRKiNMniZwIRVqA96zx9q61brzuIuUuRMgK02EmJrfF3HXXAVB
 YcN4ARt6/RyQbUL6J8Y8dcPWpGXCbxqzbm9UsVLhtb9LDw79NolyLNKdk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hDEJbIih
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 12/25] docs: kdoc_parser: ignore
 context analysis and lock attributes
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,infradead.org:email,lwn.net:email,osuosl.org:email,osuosl.org:dkim,auug.org.au:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 5D0A8A7242
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAxMi8yNV0gZG9jczoga2Rv
Y19wYXJzZXI6IGlnbm9yZQ0KPiBjb250ZXh0IGFuYWx5c2lzIGFuZCBsb2NrIGF0dHJpYnV0ZXMN
Cj4gDQo+IEZyb206IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPg0KPiANCj4g
RHJvcCBhbGwgY29udGV4dCBhbmFseXNpcyBhbmQgbG9jayAodHJhY2tpbmcpIGF0dHJpYnV0ZXMg
dG8gYXZvaWQNCj4ga2VybmVsLWRvYyB3YXJuaW5ncy4NCj4gDQo+IERvY3VtZW50YXRpb24vY29y
ZS1hcGkva3JlZjozMjg6IC4uL2luY2x1ZGUvbGludXgva3JlZi5oOjcyOiBXQVJOSU5HOg0KPiBJ
bnZhbGlkIEMgZGVjbGFyYXRpb246IEV4cGVjdGVkIGVuZCBvZiBkZWZpbml0aW9uLiBbZXJyb3Ig
YXQgOTZdDQo+ICAgaW50IGtyZWZfcHV0X211dGV4IChzdHJ1Y3Qga3JlZiAqa3JlZiwgdm9pZCAo
KnJlbGVhc2UpKHN0cnVjdCBrcmVmDQo+ICprcmVmKSwgc3RydWN0IG11dGV4ICptdXRleCkgX19j
b25kX2FjcXVpcmVzKHRydWUjIG11dGV4KQ0KPiAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS1eDQo+IERvY3VtZW50YXRpb24vY29yZS1hcGkva3JlZjozMjg6IC4u
L2luY2x1ZGUvbGludXgva3JlZi5oOjk0OiBXQVJOSU5HOg0KPiBJbnZhbGlkIEMgZGVjbGFyYXRp
b246IEV4cGVjdGVkIGVuZCBvZiBkZWZpbml0aW9uLiBbZXJyb3IgYXQgOTJdDQo+ICAgaW50IGty
ZWZfcHV0X2xvY2sgKHN0cnVjdCBrcmVmICprcmVmLCB2b2lkICgqcmVsZWFzZSkoc3RydWN0IGty
ZWYNCj4gKmtyZWYpLCBzcGlubG9ja190ICpsb2NrKSBfX2NvbmRfYWNxdWlyZXModHJ1ZSMgbG9j
aykNCj4gICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS1eDQo+IA0KPiBU
aGUgcmVnZXggaXMgc3VnZ2VzdGVkIGJ5IE1hdXJvOyBtaW5lIHdhcyB0b28gZ3JlZWR5LiBUaGFu
a3MuDQo+IFVwZGF0ZWQgY29udGV4dCBhbmFseXNpcyBhbmQgbG9jayBtYWNyb3MgbGlzdCBwcm92
aWRlZCBieSBQZXRlclouDQo+IFRoYW5rcy4NCj4gDQo+IFJlcG9ydGVkLWJ5OiBTdGVwaGVuIFJv
dGh3ZWxsIDxzZnJAY2FuYi5hdXVnLm9yZy5hdT4NCj4gQ2xvc2VzOg0KPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyNjAxMDcxNjE1NDguNDU1MzBlMWNAY2FuYi5hdXVnLm9yZy5hdS8N
Cj4gU2lnbmVkLW9mZi1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+DQo+
IFJldmlld2VkLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5l
bC5vcmc+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYito
dWF3ZWlAa2VybmVsLm9yZz4NCj4gLS0tDQo+ICB0b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19w
YXJzZXIucHkgfCAxNSArKysrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNl
cnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2Nf
cGFyc2VyLnB5DQo+IGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+IGlu
ZGV4IDIxY2M0ZTE5YTFlOC4uOTJiNTUwMTg5OTg4IDEwMDY0NA0KPiAtLS0gYS90b29scy9saWIv
cHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gKysrIGIvdG9vbHMvbGliL3B5dGhvbi9rZG9j
L2tkb2NfcGFyc2VyLnB5DQo+IEBAIC04MSw2ICs4MSw4IEBAIHN0cnVjdF94Zm9ybXMgPSBbDQo+
ICAgICAgKEtlcm5SZShyJ1xzKl9fYWxpZ25lZFxzKlwoW147XSpcKScsIHJlLlMpLCAnICcpLA0K
PiAgICAgIChLZXJuUmUocidccypfX2NvdW50ZWRfYnlccypcKFteO10qXCknLCByZS5TKSwgJyAn
KSwNCj4gICAgICAoS2VyblJlKHInXHMqX19jb3VudGVkX2J5XyhsZXxiZSlccypcKFteO10qXCkn
LCByZS5TKSwgJyAnKSwNCj4gKyAgICAoS2VyblJlKHInXHMqX19ndWFyZGVkX2J5XHMqXChbXlwp
XSpcKScsIHJlLlMpLCAnICcpLA0KPiArICAgIChLZXJuUmUocidccypfX3B0X2d1YXJkZWRfYnlc
cypcKFteXCldKlwpJywgcmUuUyksICcgJyksDQo+ICAgICAgKEtlcm5SZShyJ1xzKl9fcGFja2Vk
XHMqJywgcmUuUyksICcgJyksDQo+ICAgICAgKEtlcm5SZShyJ1xzKkNSWVBUT19NSU5BTElHTl9B
VFRSJywgcmUuUyksICcgJyksDQo+ICAgICAgKEtlcm5SZShyJ1xzKl9fcHJpdmF0ZScsIHJlLlMp
LCAnICcpLCBAQCAtMTY1LDYgKzE2NywxNiBAQA0KPiBzdHJ1Y3RfbmVzdGVkX3ByZWZpeGVzID0g
WyAgIyB0aGUgc3RhcnQgZGVsaW1pdGVyLg0KPiAgIw0KPiAgZnVuY3Rpb25fbmVzdGVkX3ByZWZp
eGVzID0gWw0KPiArICAgIChyZS5jb21waWxlKHIiX19jb25kX2FjcXVpcmVzXHMqXCgiKSwgIiIp
LA0KPiArICAgIChyZS5jb21waWxlKHIiX19jb25kX3JlbGVhc2VzXHMqXCgiKSwgIiIpLA0KPiAr
ICAgIChyZS5jb21waWxlKHIiX19hY3F1aXJlc1xzKlwoIiksICIiKSwNCj4gKyAgICAocmUuY29t
cGlsZShyIl9fcmVsZWFzZXNccypcKCIpLCAiIiksDQo+ICsgICAgKHJlLmNvbXBpbGUociJfX211
c3RfaG9sZFxzKlwoIiksICIiKSwNCj4gKyAgICAocmUuY29tcGlsZShyIl9fbXVzdF9ub3RfaG9s
ZFxzKlwoIiksICIiKSwNCj4gKyAgICAocmUuY29tcGlsZShyIl9fbXVzdF9ob2xkX3NoYXJlZFxz
KlwoIiksICIiKSwNCj4gKyAgICAocmUuY29tcGlsZShyIl9fY29uZF9hY3F1aXJlc19zaGFyZWRc
cypcKCIpLCAiIiksDQo+ICsgICAgKHJlLmNvbXBpbGUociJfX2FjcXVpcmVzX3NoYXJlZFxzKlwo
IiksICIiKSwNCj4gKyAgICAocmUuY29tcGlsZShyIl9fcmVsZWFzZXNfc2hhcmVkXHMqXCgiKSwg
IiIpLA0KPiAgICAgIChyZS5jb21waWxlKHIiX19hdHRyaWJ1dGVfX1xzKlwoIiksICIiKSwgIF0N
Cj4gDQo+IEBAIC0xOTUsNiArMjA3LDcgQEAgZnVuY3Rpb25feGZvcm1zID0gWw0KPiAgICAgIChL
ZXJuUmUociJfXyg/OnJlKT9hbGxvY19zaXplXHMqXChccypcZCtccyooPzosXHMqXGQrXHMqKT9c
KSArIiksDQo+ICIiKSwNCj4gICAgICAoS2VyblJlKHIiX19kaWFnbm9zZV9hc1xzKlwoXHMqXFMr
XHMqKD86LFxzKlxkK1xzKikqXCkgKyIpLCAiIiksDQo+ICAgICAgKEtlcm5SZShyIkRFQ0xfQlVD
S0VUX1BBUkFNU1xzKlwoXHMqKFxTKylccyosXHMqKFxTKylccypcKSIpLA0KPiByIlwxLCBcMiIp
LA0KPiArICAgIChLZXJuUmUociJfX25vX2NvbnRleHRfYW5hbHlzaXNccyoiKSwgIiIpLA0KPiAg
ICAgIChLZXJuUmUociJfX2F0dHJpYnV0ZV9jb25zdF9fICsiKSwgIiIpLCAgXQ0KPiANCj4gQEAg
LTIwNCw2ICsyMTcsOCBAQCBmdW5jdGlvbl94Zm9ybXMgPSBbDQo+ICB2YXJfeGZvcm1zID0gWw0K
PiAgICAgIChLZXJuUmUociJfX3JlYWRfbW9zdGx5IiksICIiKSwNCj4gICAgICAoS2VyblJlKHIi
X19yb19hZnRlcl9pbml0IiksICIiKSwNCj4gKyAgICAoS2VyblJlKHInXHMqX19ndWFyZGVkX2J5
XHMqXChbXlwpXSpcKScsIHJlLlMpLCAiIiksDQo+ICsgICAgKEtlcm5SZShyJ1xzKl9fcHRfZ3Vh
cmRlZF9ieVxzKlwoW15cKV0qXCknLCByZS5TKSwgIiIpLA0KPiAgICAgIChLZXJuUmUociIoPzov
Ly4qKSQiKSwgIiIpLA0KPiAgICAgIChLZXJuUmUociIoPzovXCouKlwqLykiKSwgIiIpLA0KPiAg
ICAgIChLZXJuUmUociI7JCIpLCAiIiksDQo+IC0tDQo+IDIuNTIuMA0KUmV2aWV3ZWQtYnk6IEFs
ZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
