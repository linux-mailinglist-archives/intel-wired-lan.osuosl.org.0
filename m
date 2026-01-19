Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4840CD3AFF1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 17:05:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6D9C80D0F;
	Mon, 19 Jan 2026 16:04:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a1owEqoLlQRv; Mon, 19 Jan 2026 16:04:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6444980C23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768838699;
	bh=8U8EOsgodQP1WSs5dkFHbRvfnz881qDNX10ZHiUrAII=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TaANBl4S6InZUFI1gn8fDif9KZbtVpG3hCc4qkOH8n6kIygYtZLVBIZrUs7n+eTMW
	 6mZeHX/hJLwdaSRVcobovRP1I8HC6ww07MGPR6BV3z/WTSgn+hnPZCqZtcZl3hCkoQ
	 EVPJTLqvXNOCWxAWFJEbKMIu60SSVVHlw/mXxw+poyNjQbNKeMQGJvxjOlXFhEE2w1
	 855cyJV+hsIFY7u6JBDjqXIB4cdkm3MQyLDVihc8DeZ0NfZIWpEIBucud72V9f6h3R
	 ivWr5h6hW1xOognwkxwdoqv2sDndxWgPaNN1QvRi8zvEfnYNiSZEN/VLSbWdQ0WZX9
	 uC9QGy5kmmZXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6444980C23;
	Mon, 19 Jan 2026 16:04:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 21CA02CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:04:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 077C0612AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:04:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zlPJDclV_TbV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 16:04:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 17CB3612A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17CB3612A6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17CB3612A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 16:04:56 +0000 (UTC)
X-CSE-ConnectionGUID: z6Wn1yDsQPehSX/sSLf+nw==
X-CSE-MsgGUID: GAHLm1IdS6iasS9jlf+YBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="69251977"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="69251977"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 08:04:56 -0800
X-CSE-ConnectionGUID: uRIsuGH1Si+dAJecYMbhnw==
X-CSE-MsgGUID: ch671K7SQCWyBtr4wzhtEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="210912297"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 08:04:45 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 08:04:39 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 19 Jan 2026 08:04:39 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.30) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 08:03:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c1HLMpwMc36cQ4mYWlmHUrzhIk/VJeUvtlVpDs4yxyA9fclhO8SV7y6PtB665kPPsuGAtNcBK1bUJ/rOHSFZfFA+aNDOmgMHFCfPkPDuR39tQMONbt1nieayUcV6kG+mDG2/K08707YF8h00Df6wLUOTOtmZQXOj6VoHCu7EqvDdZXUhCyUJoFH5bGM+OESdHNb3112jENBu8wTS+nu2CeW4KyEp2u+54IOjkF2ZO9efeAcrymFbhC4QmFVML4Vn5cn52hFU+EHaUIyshCPS2d/7aIyz7GmtUbInAzcMog4j4kEmNIBWmjwubrO5jB13U1XiB5qR+eVseYIjWmvfBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8U8EOsgodQP1WSs5dkFHbRvfnz881qDNX10ZHiUrAII=;
 b=ESKPxrVTaAewKtrQsHXsOeSx8/1t0vvolSfHOT6uZhU5hUkdn8hqWB+YCzb4Sn0qZUy6sTGaDcZc9rzxdvx+MwwVGWy31oY7ITO6KZMlbIGg0bJmFtdg7DHDPc3VSHJwvSumEWvHUwdyIelEF1MkwViYdErHCY61f6PfmV2a6eZR/+GsMCs1pXAYEU63Ca//DEMu7L+1RBBAp+4/HQ4OftV9r5BoifYGjJNUIG3fWAdvG7KP9fIX1FtU5M0I5qveFaUcB/iqvlVN3hkkARO4WdpNjBIilGzzqDwrV5H4NBqUnrQB1uVV+r0vP+kbPaNsoByDLPKcx0Fle7ttqEIznQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by IA1PR11MB8248.namprd11.prod.outlook.com (2603:10b6:208:447::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Mon, 19 Jan
 2026 16:03:45 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%5]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 16:03:45 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "dan.carpenter@linaro.org"
 <dan.carpenter@linaro.org>, "horms@kernel.org" <horms@kernel.org>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/2] ixgbe: e610: add missing
 endianness conversion
Thread-Index: AQHchuAgC2KTsqtLQEenvgVZOFWGCrVUxy4AgATkqjA=
Date: Mon, 19 Jan 2026 16:03:45 +0000
Message-ID: <PH7PR11MB598398D3E9316E00EEDB3D68F388A@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260116122353.78235-1-piotr.kwapulinski@intel.com>
 <c2a61a49-e84a-447e-a45a-61a44a5393d0@molgen.mpg.de>
In-Reply-To: <c2a61a49-e84a-447e-a45a-61a44a5393d0@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|IA1PR11MB8248:EE_
x-ms-office365-filtering-correlation-id: ea2eee75-11a2-44a8-93ed-08de5774531c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?aEdBTi8xUk84a2JDMk9xV096N1lOUHlqUnZMZDZFYWNLQUh1eFY0UWYxQkJN?=
 =?utf-8?B?Z3RNSGJRN1JLMzduVjhuZ3U2eit1SUNBL2RwMTFVNFhjWmtpcGhiLzI2czl1?=
 =?utf-8?B?L1pwMVdkaUlkaDF4UURhQVpzS0tLS2tPakNHaVluN0xpdVJhaXFZQ3lpSTVh?=
 =?utf-8?B?ZUVxQWVhZDZoUnU4RzlIM1dZaTY0dmQrMGV1S0xlREZjR0lPK05zc0dGbDhz?=
 =?utf-8?B?cFpjN3VneEkrS1FoZFRmNjJja3hXbk9LY3ZqaDhFaDJLUkRBcHM2ZndVcWFJ?=
 =?utf-8?B?cS85RGZrK3pZaGQvWGJsWUhIc1czbG1FRWpnMktEOVBBNWt2dnJvbUhzVmJh?=
 =?utf-8?B?SHpzNzlqZ1NjeW83aFFaU2FnbUZKUUt3Ym1md0lWY1Zxb1F3UjlxOW5qVDRj?=
 =?utf-8?B?d3kzaWV1aWJVdEhZRUx4Y0hnQmxubkNJSXBpVlFHNzhFa3dUNkpsNXNCYlVZ?=
 =?utf-8?B?SDZQZDBsQ2J5OExBZUM3MUpJRWpCQnl5ZUgxcFpGSDVYNlE4cWRlSmV3S2w5?=
 =?utf-8?B?ZGFIVjJqVEluUS91NTJ4em4vbit3QmVRby9VM3FWZmxZc1pwSFJyTzB4a1dW?=
 =?utf-8?B?MlIvdkNYOE5XYmhTcW9NKzFocWYzTXNvalp6QVBDSUhsR09Sc2crQzBLUjg4?=
 =?utf-8?B?eUwzd2FtZWhxQXp5Y0s4QUE3L2w2TDVvcUhVVWRubzUxVkJ2ZGZ5V05qUlND?=
 =?utf-8?B?dEd6Nld6STFtd1VNSTluNDhyUjRZcWd3QUEzNHZaOUN0Y1ZOc1M5c29HNVp5?=
 =?utf-8?B?aG9PbEh5Sjd4ajBNSWJLeU9Pd2JOSXc0eXdUbmlyd0ZpQmlrOW1XQkVCNEpZ?=
 =?utf-8?B?ZllLaXRhbWFRRnE2YVJpMWN0cmE4M0ZJbGtrbWdySEtvOTRXek1OdGVndDBQ?=
 =?utf-8?B?TzlsdHJOek9ZVG1sTHU4ZDNoUnl4K3QwRW9oTTZLNWt1K2J3NE1hMnUzenNp?=
 =?utf-8?B?WWY1K3lXQmFQaTlKYWFaSDJ1Rmc5SisxNVZCUWR1STFJTHpUcXpzMmhpWVlz?=
 =?utf-8?B?Qm4wSG9nOEVoTG5SRk85Z2NobGx4bE1RWjFiSUJFNVhSQUUva2k3dnFac1Bp?=
 =?utf-8?B?cUh5TURSSkkyalpYN3d5elEyYjViZDd3M3FLUm9EdFVSRlZ0cWhqZzFtcFJS?=
 =?utf-8?B?aVpXeTY2VHVTNmJiWitraGxrdTdkVVMwVGNoUVV0WjE5Q2x1bmlQWUQ4WlBr?=
 =?utf-8?B?TE1uWUVtYUlaNG9wMnpXOHZmOE1hd1k4blN6YTZWamFMODdFWm5lZ0lRcnps?=
 =?utf-8?B?eFZHaDN1M3NuemIrWE9CUEloMG5XNys4TS9qNk5HV0IxYXVFRVdETHdacVZO?=
 =?utf-8?B?bzBTbmF0NDg1bHVCN1RyeFN6d283ckIxMlZjNkNnZURnb0hTQmFSQjlVamhh?=
 =?utf-8?B?MXMySWNZRTFCQkRheURWcmsxZkJuYVpPRTVCeEI4eXVsaVV5ZUtHTFdvOG5H?=
 =?utf-8?B?VitNQzdIQWJnYTkrWVRSMTFRNDJSRkRUVVJaVzljaTdEWnRRYnN2WHhGNm85?=
 =?utf-8?B?MFBURFRnL1JtMTkvRE0zV1FyN2IvUm9iaWdBU25TQkcvNEdDTjNwRGEzMkpk?=
 =?utf-8?B?N2lWZ3VJUTJIeDZKM3h5MS90RkFVc3ppSFEwenpwbjZEcWs2KzYyc0RWN1B5?=
 =?utf-8?B?ZHJBSm44bzE2bnVzTjZETVN3dDM2VXI0bmFRTTV1OGZyR0hMNDRlOFRMbis5?=
 =?utf-8?B?VUk3NDFSbUxYN01ydVZQb2lpVmVDcG5FTDcyMzNtckhIajcwOHlHZHZYZFMv?=
 =?utf-8?B?YUlSMXJ2ditBa2JqSDhxNi9HZkI3eGlpamJtSDQ5WFNvUW14K1hRU0Qwa0hN?=
 =?utf-8?B?eE5VYXc5Qk16aC8reng5RWtBZzEzZk5hWmNZd1BNV0lBUzJZM1BFbGVKbldp?=
 =?utf-8?B?ekRwZ3F4WWlhL1lhVGV4RCtjS21QOUxERTU5ZWpOc3JzTmYxRk9CZ2cvUjJE?=
 =?utf-8?B?dDBGMHgyRW1kYVRMcEVQRkphNWZCS2hSa0NpanRNbmZtaEZUeGovbmY4Rmdu?=
 =?utf-8?B?L2M0RENyekFjT1dlelJ3VlV6bEgzQzltS0lmS2RvU3RwbmV1cDlHUjNaRlZS?=
 =?utf-8?B?SXFMLzV5NHJha3ArL1FiYVZLKzRDQ1pRZ2NHR2s4cEo5TGh1djR4TG1CQk1T?=
 =?utf-8?B?Z1JURVhjcWJOVGRQQzJnY1pwR3JZREYzYnlnOHgrL0x1azhWL2ZVNzZ4b1Yy?=
 =?utf-8?Q?bsojNsZkcFysyuxSc2hvm9I=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UDJ3dmZ5R2ZuenhlUk9keDVkM2pLQmxZVUZlUlhvY3pOaUkrMHNWSUcrOHRk?=
 =?utf-8?B?eXhyZ05OWVY0M1N1NjBGWjRaTEZuUXQxbHJVbnBOdHNuaFN2ZkJwTzNVSFdP?=
 =?utf-8?B?MFRuTThVOUxLMlB2azNDZXRBZ3B3NmIxWmhaVzZnRmdsUXlRMThNQzZqRC9u?=
 =?utf-8?B?M2dSV3o3SENnbGZnZ0FNYzA4Q2FhZUlLa2ZwUXF4R0hxYzRQSnhZUFY0WFdZ?=
 =?utf-8?B?VkwyT1R0QVIveUF6YytoNEV0R2dRVjdXVHFpMmFBZGFPMGozZ0J5MnhkV05E?=
 =?utf-8?B?NXBqcEw1L09hUzhjRHE3aDQ0d0ZONHV4VVA1MVkvUUtQUlVRTXZFcGtQTG5B?=
 =?utf-8?B?c1RyQnArSWRKaUkxei8rYi9HV2VGclM1QnY4czRkOGd1MUY4QmNhT21pRGxr?=
 =?utf-8?B?QXRxL2ExanhvNFd4Qm82Kzk1U0FielhxTkhqZ3ZaenZOU0NvSVNzUTRSYVBk?=
 =?utf-8?B?ZVlCanBXNVRyNjdjV080RVZiRlE5aVF2R1ZNdU9Ec2RyQ1NOVzhiTHVhOFVJ?=
 =?utf-8?B?cG0weGY3aENvOUFnYUljRzB4Q0ZZeWgweUVCZWVmMUVmbjg4N2w0RmVsNXp2?=
 =?utf-8?B?YjUxMW9SbWlvMXFiUHBJSStYV0Zua3A4NVhxVkhsdUlERksrZEFlMVZIWkFS?=
 =?utf-8?B?SStHajdVSGNHQm5sZk1zSkhiT0dsSTdyeUd0MXkxNW1Ma0UvQWJGQ0FuR092?=
 =?utf-8?B?NWw2UDZRSDNUOCtJTjZMQ01pajVGMzBPanJ3ZEZBclREUk1SdjQ4WGtNNllD?=
 =?utf-8?B?OURrdnNqYnpiQmpzMzUvZngrU2lmVloycFRJeE0rNmp6R0cwSk41dkNVRUQz?=
 =?utf-8?B?amhFQkhJN2NSbzVkWnVBY2J5TWVGbElrSllFa0diZllXTzUvS1g2d0ErcEk1?=
 =?utf-8?B?ZzJybFdkV0JWeHdGZGhheHJDVC8yNUJiTFV0MjJuakl0N1BiVTFkY0sxekgx?=
 =?utf-8?B?K0lxZWJhZ0h0Y0dPcnVGbTdMUGFCMC9la3pnc0tGKzRwdlEyeTFWeTZablRw?=
 =?utf-8?B?RmxnTy8yVVBwTnpPU3g0Sm0zTm91RVhwOVZPQmJtYkNtZ21pQ1kxM0l2ekdm?=
 =?utf-8?B?NWszVzlZRXk0VmJqVGlRRlhQRWo1WmpOM2V6NEtMOWp3QVR3QVdqWWJEY2xq?=
 =?utf-8?B?cTBCNDhjWXZKM09qTEtPVjhLd2tNSDM5cWNLYXhOVjZDYUJsajRDRDdoaHQ5?=
 =?utf-8?B?M2YzbkZhLzlCa3ZXckkydGx5eXZ2QTZOdVZaa0hUdVhualZBZ1lwNVhTZktz?=
 =?utf-8?B?am4xeUtoWFM2dFZzOFAzSHl4N2lvK1gyczIwY3M3WStjUmhhViswY200VmtC?=
 =?utf-8?B?Wk0yVlpobkI1eStXOUhVc0djUHJ0SW1DZk41WnRmVGpUTkI1S3luVjM0OE13?=
 =?utf-8?B?VVl0OERYTmNvKzlmNXoraklCYTRYUmZWaEVBaEdpc004R0ZCVFNycHQzUG9U?=
 =?utf-8?B?M3hOZzF0NWZBaFg3cGFZYTVKKzB3b0hUNzhEcEl1NkRPQVNJMStRQ3djbURx?=
 =?utf-8?B?T0pKdGttU2FONWtEdExjZGk5K1dDWXhudDN3b0JESWpRcWxYbVRwcENLOVM3?=
 =?utf-8?B?YlowWkNGZmdXTG51MHluWEk4Z0F2MWhNN0RWZ0FUODQ0WlR0a2JTRU5yUStZ?=
 =?utf-8?B?Z281L1hnWTVaRnBadzcreXVQVnpWMXc0Qkw0bjFETXcwbTZaZVVwYlY1Nmo3?=
 =?utf-8?B?d0xocWFDbTJNSE5mNHI0b0gyN2ZvMWhkbFVvYm94aGkxV2NxUUs4NVhXdk16?=
 =?utf-8?B?SEtxdkRKVmJYRVdjMjhTR3VmRXpnUjVVVHZEclgxVGJFQjFYb2liUWFjdnVE?=
 =?utf-8?B?T29aNGs0YVRDWlFOeUNjZjNvTThMVEJoTExZOXJNVlZUSGwvczJRMlFGRWN0?=
 =?utf-8?B?bTVzNmdqb2MybituVkxuNmhKdi9OTkdKK3pEUVVPc0pXalYyak5YV1NPTkoz?=
 =?utf-8?B?aGtreFJxNWtUeUVtWlZ3RWdvMTZSQldybGFQQmJ4SFNCWnI3NWdzQTVsa2ND?=
 =?utf-8?B?R29ZczZRQjljYnpjL1VJR0RvNlJpWlRqUVgvbVhWa1Z2ZXkzSEE5QmRUNXgz?=
 =?utf-8?B?UFpOTHNzeXRGV0h6dVA1cHZZdFlWQmxPN1ZNVFdUUk1pR3FmK29sZFNpMGgy?=
 =?utf-8?B?cUdpcGd6Q3M2SUFneTFrRmFRZXA4aEVKdDlzUTFndXg5WElsRmVPZzdQR09V?=
 =?utf-8?B?YlNnamdTaDdJU0V2R082S0lIK0NWUTFpc3VXWG9kdVljaHMwS1BxVTZaVmlF?=
 =?utf-8?B?eHN4OWpvK2xyRDk2RmNLVXJwNEtXK3dXZ3NaUStBRTltZ1RFZkpLQ0lvUjlG?=
 =?utf-8?B?WmhWcTZrNG4xZlBTOUUwSjd2RXFnUFV5RlNJaU5wcEM3SGdFcmV4UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea2eee75-11a2-44a8-93ed-08de5774531c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2026 16:03:45.5089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0VRuhrgZpva4UOW/blRPR7ABtl1E984C/okU57ouWeA0YUpagp7vXJK9Eq04CHfFosc4eGCv/2nwYPRydNBafC4pblaRd9VV+umsPibk0Sk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8248
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768838697; x=1800374697;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8U8EOsgodQP1WSs5dkFHbRvfnz881qDNX10ZHiUrAII=;
 b=EHwqkU+FB2agUqTsNZOKhV+xlnv1pmcWleKERqqFNnKzm4ZwLVJjgL3O
 3i7AobXAcfh97ZotSEC34L9xSeqLv7HzQ61ukGy4mdQSU3NvUHk8+qZ2p
 zNzrfikrVTHArdz1O3PHQNVV1+OVKi5bgBwNdvBIEjIp4BMl1eODiXYUk
 hAsmVx5ij6S21XwVoCRIbHoTB6lg8JAmpm6/BV9iUUaqbpzXx3nerMIsA
 EGrxgDO9i+iJ1p59/l2KsUFfDCIbXxnQTz2RCz/CFr/C9fHB0aAa+V8q0
 SrtYgkrJOIhkJySrzAs2fpwfJZMslbQeoIAHbUXHMKzDlCz9cLn7rMbrf
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EHwqkU+F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ixgbe: e610: add missing
 endianness conversion
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

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxA
bW9sZ2VuLm1wZy5kZT4gDQo+U2VudDogRnJpZGF5LCBKYW51YXJ5IDE2LCAyMDI2IDI6MTggUE0N
Cj5UbzogS3dhcHVsaW5za2ksIFBpb3RyIDxwaW90ci5rd2FwdWxpbnNraUBpbnRlbC5jb20+DQo+
Q2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwu
b3JnOyBkYW4uY2FycGVudGVyQGxpbmFyby5vcmc7IGhvcm1zQGtlcm5lbC5vcmc7IExva3Rpb25v
diwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj5TdWJqZWN0OiBS
ZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IDEvMl0gaXhnYmU6IGU2MTA6IGFk
ZCBtaXNzaW5nIGVuZGlhbm5lc3MgY29udmVyc2lvbg0KPg0KPkRlYXIgUGlvdHIsDQo+DQo+DQo+
VGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLg0KPg0KPkFtIDE2LjAxLjI2IHVtIDEzOjIzIHNjaHJp
ZWIgUGlvdHIgS3dhcHVsaW5za2k6DQo+PiBGaXggYSBwb3NzaWJsZSBBQ0kgaXNzdWUgb24gYmln
LWVuZGlhbiBwbGF0Zm9ybXMuDQo+DQo+UGxlYXNlIGVsYWJvcmF0ZSwgd2h5IHRoaXMgaXMgbmVl
ZGVkLCBhbmQgYHJhd19kZXNjW2ldYCBuZWVkcyB0byBiZSBjb252ZXJ0ZWQuDQo+DQo+Rm9yIHRo
ZSBzdW1tYXJ5L3RpdGxlLCB5b3UgY291bGQgYWxzbyBiZSBtb3JlIHNwZWNpZmljLiBTb21ldGhp
bmcgbGlrZToNCldpbGwgdXBkYXRlLiBUaGFuayB5b3UuDQpQaW90cg0KDQpbLi4uXQ0K
