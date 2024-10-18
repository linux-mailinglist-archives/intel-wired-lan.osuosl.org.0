Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFDA9A49B2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Oct 2024 00:34:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C53E60B6D;
	Fri, 18 Oct 2024 22:34:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id frEA_rnj8xmr; Fri, 18 Oct 2024 22:34:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4010160B94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729290868;
	bh=oZAuuUob0WORbiayLnAj6XE8wz4BHOYzsTF6kZC6B4w=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zzL6bccbhDFwaGGjsK5uQDPXCDeE5PCxCeHTxa9HQnjZvMVjJqrC6qMo9OJ7gYk07
	 R/auN2Vffir1iYOcmqoYDa4lxYtUzmmRUsbeDQq+MTosAE2zDnrWxQjZSbP7wWUCqV
	 VcWrYixu7qiRiNgH9K4zE8IVOi/K2pK32M05631Stz3Q92qnZHBsd/lcHVmfdzC5bh
	 DvawEoc3TIZN0T5EdZqnwPVrAznx1jgXdBlBizXwI2NjC68QKYGyAvgEs6sGFaPtKm
	 ARuv5XN7hyPxxeF/l9MZLVRZen6uozRs5EAfeRnp6MPPSGtRtixynCjKzaFHNWxtgR
	 PaGERkvRgPWzQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4010160B94;
	Fri, 18 Oct 2024 22:34:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B731727F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 22:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9815481EA2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 22:34:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c_09y0MdD357 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 22:34:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CDCE081E9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDCE081E9C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CDCE081E9C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 22:34:24 +0000 (UTC)
X-CSE-ConnectionGUID: qAqniMgZSr6E8y1ZIRH9Qw==
X-CSE-MsgGUID: mpcPDY57RvC4c+7+u16ujA==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="46334903"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="46334903"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 15:34:24 -0700
X-CSE-ConnectionGUID: zp4Z2/AoSJWnnGf/IAA/vQ==
X-CSE-MsgGUID: OP0O0+PjT0aeE8twdCarMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="109817098"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 15:34:24 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 15:34:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 15:34:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 15:34:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y1fcytWQ0f66xzQL+i/C0St2Mz33J+aJB3knbeb+aqPBtLq5xa76TNS+uAJl4GScUtiTcyKk+Y+UMgaLQ/USBXvVQENovDukQS4sJm7jv/LgwvwAz01SEeiPuz6wxeYdO3rFSU8ianrvJH0VDl/I/uJQQ1FskLqWr2xSQzO/5v4XYR6wEDN8UamtE6SydvxVn2+8I5kCccgjctRsEX/I/ISd3X0+XetsoU9bYJIYVIFC+AnQlmU0wJWA+XRTCCcLMABf+IouVxC08BcuN4vSeTfKqQIgMZArPkeZd6SsHxN3cL68Mn8Cb3Ze6UFlKUxd7kFxGmkAbGhzvQBSvUodXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oZAuuUob0WORbiayLnAj6XE8wz4BHOYzsTF6kZC6B4w=;
 b=wfYLiznzSce4Qg5AOOVG80yuB4AJ7VlTbmlrq61lMd6NMYFiZ7rLYYbRy9llFVfqN0tN1gjAqcZgfPFSBwuo75FQG3OEge9tXmW02ShzQQR6vfrudO7MAu3tHTmEvFXuCTggdlxPJcMvxYw7/MH3B+Ujj3r1uWwp3HIWcbO8R1N7u8DcNWEt3AfuRzUNeqMC1beQk1yaXhe2ZU63Ydr+wm3jMxGjCjgxerqQB4GCnbZ4dEZxoAJYJ853wBSzP6MXPEAlpH4nwro/jygx/iMqc+adm8T4x1Tbutd2OI/rT1+rc1h3h7sc4fwDnbbeess6kon0XiBuZaS0mXvLKswHRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH3PR11MB8140.namprd11.prod.outlook.com (2603:10b6:610:15b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.17; Fri, 18 Oct
 2024 22:34:20 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8069.019; Fri, 18 Oct 2024
 22:34:20 +0000
Message-ID: <ae6c51ea-3479-4be2-b955-10895a8f8a38@intel.com>
Date: Fri, 18 Oct 2024 15:34:18 -0700
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <aleksander.lobakin@intel.com>
CC: <netdev@vger.kernel.org>
References: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0064.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH3PR11MB8140:EE_
X-MS-Office365-Filtering-Correlation-Id: ce7eb5ca-7b7f-499a-fb8b-08dcefc5025c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Wno3endsMzdYOWJPNkI1Z1p2VnVmNUJnaXNEam1WT2I1dGRGc1pWeXYrRUNp?=
 =?utf-8?B?K1QySWtMT0d2TWh4Lzhmc1loek8vemRnNDVyMEZYSEY2MktjaDRiZTRBTlk5?=
 =?utf-8?B?elRIbmZublluZDZHcFVwZlJyYUh3STh4VzhwMkZCdlcyUlI0UWxaTEU3ek4v?=
 =?utf-8?B?TXZpNmJNVld3cWF0SzU4ancxMzdyTmg1dW41TlROOW5vajVnTUViaGszOGxr?=
 =?utf-8?B?aVViRUowaFloN0ordzJJWit5bmpnUStyQjBqMjZEaytkV1dnTFdqSTIvNFhm?=
 =?utf-8?B?cWpKVVl1VnVUczVNK1lMZGFvWmh5VXNLY1VEL3RTUW51bTM2OFdiMnp5YmdC?=
 =?utf-8?B?dkkramNjS1hFSTVjRmR6QnlNOHNVN0tablNPOG1QWlFqT3ZCUHhISlFiSEtI?=
 =?utf-8?B?WkhjQzAvWlh2YkxkdEZ0YnFXUzN5UjgwMGl1MStJSmQra0x2Vys4NmtPbVln?=
 =?utf-8?B?cmpCYk00NFlwTDdhcVpyYitTYWZjRnZPVG1uSUFiSHVJTHQzRmkrdVBrQzdy?=
 =?utf-8?B?Mkh5TjNNNmFKTEJvMlJVZURKTU1wdEZDbkp3c0hjbjlZS1JvY2xHWmdXMHBJ?=
 =?utf-8?B?Z0R3bm9rMjJLdXgzNlRrY3Exc2dWaHc1TE5GSXhKWWpVVUgzNm5FRlZYV3VJ?=
 =?utf-8?B?YW4yTFc1TUpDWTA5YzdFWitnOFZ0QXFMaU54M0dtWFJJaC9ubGpQRTBWdFhH?=
 =?utf-8?B?QUpkMWJ3ajVvdHhTOUVtRCtYSUZOWk41OEtNUHVDYWMxT2VPRndPWG9henJB?=
 =?utf-8?B?NW82cnNaY3FaeHRId2VtWnBCenlYc0wvTGMzQTBaTWdPS3krdTU0SUdtZW5T?=
 =?utf-8?B?dHNvc3JsZVBxd2FsdmxqM0tmY3hQbG5sVkxuK3ZGa1B5aWdTNVp3VW9vWTB2?=
 =?utf-8?B?S0FkWnAwTldWYjQ4cU0yZ2QzcndLTTEvdUxNaHlpRUE4TzlrWVJ4OWZmQWJF?=
 =?utf-8?B?UjNYTm1pNDBvMWFFS2hSZmtKSDM5Q1lHZXRoamhkNlA3NnZGSUxWWUZzcXFD?=
 =?utf-8?B?citMYVVaSzJrY2J3NEs5YWd2dXo4cEozeDdQS0NKbHBzaUtxK3lVU0ZQUDBC?=
 =?utf-8?B?QWIzazVkVmZDbGhrVktJTS9UQ1VFR1Y0QUxWU08wRzlDZTd4cHhSUFU5V1pV?=
 =?utf-8?B?VGZnaUZxalZPd043R0FTUG9pN2pwN25jdXRVcmtqOFY4Q2dFeDNDRE1DM1pp?=
 =?utf-8?B?NUEzRis3T2hucHBZZjhOTjlpRHVjbnBTMTJMZGtpRnhtbjIxRHlNZXM2U2k0?=
 =?utf-8?B?WlJRa0RmYWRXb0dCb1lSK0lqMkk0aGxBbjdCelJ0NVcwOFFmTjB6Q2RnUEtJ?=
 =?utf-8?B?M0Ixcjc4YXRtSmE5YmhvSkUzV3Q2M2oxVWhhVWRpOStLRmpqSE9WcDFMMTFL?=
 =?utf-8?B?d1oxUzhOelRza1oxTlhmRVkxeC9ZV3RjdWVNczNqTnIyaTVuNFYyZ2dydnlN?=
 =?utf-8?B?K0ZDTEhhYkFvcWN4MUpMSmkzUHFDMTBGdkthbkVIbUJoc2dXZDU0SUxwcHQ1?=
 =?utf-8?B?cHJUMXlCd3JibTEza2tUc0VaMTlSMXRDSHVHOTZOdG1SQ1RTRll2ZVJqUmRz?=
 =?utf-8?B?dnFhTHBVcVVXSHdMa2w2RkRiK1Jzbi80L1QveTBqSkt4S0tpMmdGTGt2aHhy?=
 =?utf-8?B?R3N2VVFJT1NRUW93ZFpINFhVQkQybXBNUlpPQ3AvN3F0S3VIUzRNQ0hPeWhF?=
 =?utf-8?B?amY5aVVyL2NvL09TUHR4S3psK3daNGJMbHFFREVmbnd2N0RJczZqRTJQSDZR?=
 =?utf-8?Q?zPfaXPtqQh+VeuItn0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?emlSTFVQWkdZa2k5VzhlZzE2TmNyRFVmMEhJYWdRa2VFTkNGZ2prcEU1a0Ir?=
 =?utf-8?B?cUhlRzZrbkRyV1YzK3h6bG5idE04MmlLSkFmMDUxR3Z3OXhkUFp1TTVXTmtE?=
 =?utf-8?B?YXErbkZVYkE2SmZscjBuaFJuQTdXWUhYVG84VGpYc24wMzhvZlVINkI3RlYy?=
 =?utf-8?B?ZThVRWsrRmx6YWdySGQvekxzbG9vbVR1L1A2bE9aZDM4c0llK3NVRWVhaWVE?=
 =?utf-8?B?RnpiemF6R3NVbHhNSENqNEtZalBaQWZlVWw4ck1HK3Bnd0xzTStQS0NYblBJ?=
 =?utf-8?B?Uy9PeHRDc1puRFp2RnRKYTBlNGFRaFFickZ0L2hIeTJidHRBZ0FEd2w0Z2hC?=
 =?utf-8?B?WklnY00xck1oZ1ljV1JJekN4UmVnUVpsbkhJWS9CUkVhVjhBQkVXNGVRRkh3?=
 =?utf-8?B?Mm53Z3FjQTh2UGNnTnNUdzhUblVJWXQ4anpEaEs5UCtmVWJVaDNMZmtEOWw1?=
 =?utf-8?B?cThBejNxTk1GZlRBQkMrb0xlRDh3emxidGJCdXM0SXhNUVFlL0RhcnB3USs1?=
 =?utf-8?B?aThYWVp1VEpxVEFVS3RZekdOSWx1cUgzMDV2RU14QTFnMm1DdzBlTUVMb2V3?=
 =?utf-8?B?YzU2S2hBVXpXY2I4K3Z4N1R2cnNVRzdGdXROQjZRd25sSWIxT0cxa0RyZTVI?=
 =?utf-8?B?SXMzckpsS3h3MTI4cjNmVE9NS1FRdUsvenpvSW9GcmZ4OVNvK1RsdU9NQVZy?=
 =?utf-8?B?UWtna0ZkL0Zic2UwRW8zQncvVVB0QUVLbXN4NzJNUW9xc05GR2VrMmh4emlB?=
 =?utf-8?B?NlBNODhMWDFFbkJaT1FFU1kxb1BxTU44VVFnRjdlOFNkTHVFYjYyZkRyNnVn?=
 =?utf-8?B?VnBibU1BY1d6anhIdWc1N3JFd1VNbWpTcGFrSUl1blNNRExSVDYyOEhDOGo2?=
 =?utf-8?B?ZFg2WGdQdFQ0Y3FHemJlRmc5UlpJNjFqNHJmbHdWZThUUnlRMUVmSkREK1Nh?=
 =?utf-8?B?RHFQU0NTOWhxTExaQzFIdEUxcEd3UTBySUI5K1VHekZyM1NOSWRCWUpxY0Yr?=
 =?utf-8?B?dzFneWJiUStrUGphUmlyZUs0Z3lXTVdNY3dSWnhiaGVJWFMraE5PUm83LzFI?=
 =?utf-8?B?b2REK1pLWldBaGZNdzc4dzNqOUthekZYcHRWTzJTd0tTbTZUUUtjV2lzTGdI?=
 =?utf-8?B?S05BdzlEaWtpRGpaV3JUL3BMelQ4NW1SbXlJK1FicWorZm5YZmFaYjBweUN5?=
 =?utf-8?B?My9HNzNQOVM4aDY4Ukd0SksyaUtKTUhCRlZSeVFhOXBCQmNYM1FGV2UvbWVa?=
 =?utf-8?B?a3BoTUVxTXVvVkF0RUdjNG4yZVljanpnNG5RZ1FSRHFHOGFqdDlFOXlVOU4x?=
 =?utf-8?B?cUxkMFZEcmw4cTBaV0gwUnVhaTgrSFpTRm5odDBNL0gydnZNODRUcUFaUHdl?=
 =?utf-8?B?bFNCbkRNd1lhVmZXTmVZUHU2WGVEYmkvYTUrcVpBczRzM2gxOWhlSmhrVHNy?=
 =?utf-8?B?amVUaGlQMzRvQ2NUNitCYlNCYjZnYUVxZVhKa3hxM2Qra05jRTloUVliWTNz?=
 =?utf-8?B?U2tlVlN0dXpSalFUdUtkZE1VaW1yUTExQTVZTUZoL1JjRmQ0NWtFdDhtMEpu?=
 =?utf-8?B?RnlTVTArR2d5RUlZRGlLekhpMXVJRnc4RjYxeWtkWDMrN21zY1JTWXJqeWtv?=
 =?utf-8?B?dy9SV3NCTVFid3NlNlNjY3pWNjAzQ09scUtkV09qQ1hsMXVZYmR3OHBvNnYr?=
 =?utf-8?B?N01tOC9EMllpUmxwc0RuNGRLVUZNdVNXSmdGV2JaV3NhcVhvc2lLZnY4MkZp?=
 =?utf-8?B?aklDN3RWK2F5SDZZMVFMZ1dFSVd0N0xhNVZPYkhWc3dpSXVDOUptczNiRjFX?=
 =?utf-8?B?cXJwWlFobXRZWW1QN3pnTEtwUGE3aFc0emZRaTJEY1JkNmUyUFZtKzYyS3hk?=
 =?utf-8?B?eHFKN2E4ZmJsV25WN2pJMk5RWGhQQXBka25JRkJzSjdPSGlPSldiZXdiSGFx?=
 =?utf-8?B?VCtTaDFBL3BMK3pZSHBySWNod0lvd21NZ0tUYUtwcTY2dTNJZTV5aWlvUXZF?=
 =?utf-8?B?MVhlZGVjNXNSa2pNNVQ2eFVwb0N6QWs0Q1JnMVBCdzlYNTdKVzBHRjRYdVFB?=
 =?utf-8?B?NUJGTE9UbTVDMWRKQWlhN3NHZEJJV2hoeFpzZkFTSFplK01iSERmNElvSTF1?=
 =?utf-8?B?eVZhUkd3ZEhVNGRZdXpKRjVSOE9ONU5USE1RZjRjc29kMXJPZ1g4bGpsc1Br?=
 =?utf-8?B?OWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce7eb5ca-7b7f-499a-fb8b-08dcefc5025c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 22:34:20.8067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P41Kc607z10jokKAhUQIIWouEz9+2gLsUyLWzDAEsGJovwsIaVgpJYRhEf4qRcutM/F5dl1TmAjrO59FwkC6lIVSTuSogMXLv8zKNmg7r70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8140
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729290865; x=1760826865;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dn8Vn7woSG31zZdlGJ1q55DosYsExlRFVTj6GlAdpNo=;
 b=jSyG+1GnmsX4IfQjwMI9ALcVEXH80pGloE/gfN/RFCfPWzalMHejwZHk
 eIjji4H+DBgF3nc63VbqspcrRYNvE7qbppL39NLOp51pKPzKKiNAblRkY
 5IeEwnP/eN5Ir+oVAoGKswjoudYsLPaEWEMya0Po+EC9ixcNWYYEoyHig
 kkP4d5nMYSrFTJyP6a57FRSrr6A4KBvRdS5AaR5tZK5rjx8jgI6gybRJk
 e9y6wesBSOfnTJR28DIxUwf2gQkvQI57fPZnZuIndyNSmvYJInL6ajJLq
 eGFR6Jj3psk+5BoAqE1e28R8B1QFOkXECuzB00uGlp+rJ9vzLVglGUfdN
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jSyG+1Gn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v11 00/14] Add support for Rx
 timestamping for both ice and iavf drivers
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



On 10/13/2024 8:44 AM, Mateusz Polchlopek wrote:
> Initially, during VF creation it registers the PTP clock in
> the system and negotiates with PF it's capabilities. In the
> meantime the PF enables the Flexible Descriptor for VF.
> Only this type of descriptor allows to receive Rx timestamps.
> 
> Enabling virtual clock would be possible, though it would probably
> perform poorly due to the lack of direct time access.
> 
> Enable timestamping should be done using userspace tools, e.g.
> hwstamp_ctl -i $VF -r 14
> 
> In order to report the timestamps to userspace, the VF extends
> timestamp to 40b.
> 
> To support this feature the flexible descriptors and PTP part
> in iavf driver have been introduced.
> 
> Side notes:
> Wojtek did great job handling this series during my vacations. Thanks!
> ---
> v11:
> - addressed all comments from v10 done by Alexander L. Short list: changed some
>   logging functions (like pci_warn instead of dev_warn), fix RCT, fix indentation,
>   remove unnecessary comments and casts, change error codes where applicable,
>   remove ptp.initialized field in struct (now check for ptp.clock as Olek
>   suggested), invert condition in few places to avoid +1 indent level, function
>   iavf_ptp_do_aux_work made as static, add more descriptive kdoc for libeth
>   struct fields, restore ptype as a field in libeth struct, remove unused
>   defines, pass to specific functions quad word of descriptor instead of pass
>   rx_desc, add asserts to structs where applicable, return from fields extracting
>   functions when !fields.eop, refactor get VLAN tags, remove unnecessary empty
>   initialization of structs and few more. Please see v10 to compare all changes.
> 
Unfortunately, v11 doesn't compile. Can you please address that in a
v12? While at it, please also address the concern about the post_ts
calls in the .gettimex implementation.

Thanks,
Jake
