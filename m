Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJhlElBIemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:33:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDC6A6F5F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:33:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04BF540BC9;
	Wed, 28 Jan 2026 17:33:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PxEoyd_yNCpr; Wed, 28 Jan 2026 17:33:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62FD440B13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769621581;
	bh=zjwfmVn49V22XUK82ZOC6w9HJzCnpeCUg5PzEsi1Gqw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0HrktEoNuYsgXWTw64VJH+GTp0wVsj7qezNUcAM85/0wnXssFkmy0Y7jfZ9xSzaG/
	 V0W7gEPpu6dV00oQ3kRb8fjiLuqRosNldAY7WhlwQhUZJHqF+6DRogJnm70slLdBjL
	 s7t1MatdXXy8DMU7fWEQqesD/TyKEKM7iWbq8B/vXzWiV+QeO8aTSLVn3+WSXGGv4B
	 NMnUqNVdP4Rqnucs/JBIcPDbQuiCEp/aAxzLsHDi3+ytky9lv11Cqx/i0ZjGh/AAbF
	 tssiEENl0VqOc8TFqi8GwrlFHgq2jQs4PZ8Fnz6z7cUWGccuuWUoNyH5TAf25OgYbd
	 Jdn7t3MDvXDUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62FD440B13;
	Wed, 28 Jan 2026 17:33:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 545011AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:32:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 41A6340AFD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:32:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xR23I-HV6vfi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:32:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5BDBA40296
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BDBA40296
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5BDBA40296
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:32:58 +0000 (UTC)
X-CSE-ConnectionGUID: DJ+0luw/Tu+r2cfk91QpcQ==
X-CSE-MsgGUID: XOtLGyz3R/madTs3IOY0xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="82269889"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="82269889"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:32:57 -0800
X-CSE-ConnectionGUID: MLNkqMGOQVWuLZe4XiTrfA==
X-CSE-MsgGUID: 6Cj5+vbiQ0Gplgcrl81iFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="207459190"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:32:57 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:32:56 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:32:56 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.31) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:32:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pbHOkdyv143JenVQtjRjwQj3oZh2OapMNSyNqYzG4FUjqjTDWzC3uc22Y8xk1HlZxufiVlchwBz/IMjboPl/9SK13Kuak8Jpp8LhgB23N6AaWvci/XKSJ3rsqIBUGEtn6uea1C022A9e/fAdHCcsOYd8hGACJ8f6Qx+b+Ycig1RPA/3ti5S4KCsLAm/IlrPLUtQtRgO30aMfIZWXLQxBieRKaKjJf7KNbVjdCfugNOWLQCM6M8rWFw3HeHsYoWLAo5nFgBEAG2B2aNeOetuHP4w/bGYlOUV/nd02p/B0+3ecz1xFotkP55Bt2ddc8PG7hgfXbSD/UVCj6LSg6dmCcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zjwfmVn49V22XUK82ZOC6w9HJzCnpeCUg5PzEsi1Gqw=;
 b=HdfVLgwOB5ec5Rgcz1gKbftiuqxIy4nl3wcvX/9n0TH193bANBxU9CEd/f/IGvv9OTjXUKeVuiicGow8Z5+m1DtIKC1+i8qAvqPncMgmivORf3AwuhFNzqiytgBT0I7Rbgi/pOBesxUyfYdrl1A/877/usnOxhwv1Rfbje8hnLjkHjkhuB8ygzig5O65Okz6QBWF7vSUq+bezf64jYigVfpLB8Ve2mTpSaPpL0ed0GwBcQ7T8GkAHQNgUSJJdUWF1b1NtcxjzdHK8Yvcj17ttsuxm76fb2D66eS2XbD1iBPgpNmAmlH2Y/0ZY39CbzrH48efwLvLMHIWcZphSyTL0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW5PR11MB5809.namprd11.prod.outlook.com (2603:10b6:303:197::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 17:32:53 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:32:53 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, "Mauro
 Carvalho Chehab" <mchehab@kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, Shuah Khan
 <skhan@linuxfoundation.org>, Stephen Rothwell <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 23/25]
 tools/lib/python/unittest_helper.py
Thread-Index: AQHckHZoFPMnL97tvk2Qhr2aOauK37Vn1y0w
Date: Wed, 28 Jan 2026 17:32:53 +0000
Message-ID: <IA3PR11MB8986E4CC5927FAFF114E3A9AE591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <f370f2a0dfcaa679c9969488c908eaac82026031.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <f370f2a0dfcaa679c9969488c908eaac82026031.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW5PR11MB5809:EE_
x-ms-office365-filtering-correlation-id: bd877235-fe84-4cda-57f6-08de5e934499
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?eWM4cU0zZ1dCaTFSa1lqdEZVeTUrWGxtS0p3L3ROaTFvRHZkMkFLZnB3Rk1K?=
 =?utf-8?B?UHVDMVR5cHNydCtaemNybmNCSDNHUTAydHJrMU00ZUlEMks5Z012UEJlczRt?=
 =?utf-8?B?NVh0Y3ZWNnljcWJ3RGpXSjgzVG9kb2pOc21YNTV2Q2NIRjI3OUVsc1FEcnh2?=
 =?utf-8?B?MlAyYVJ6N2NIbTlXZ1FSUkJyb20zRU4zT3FXRm4zdGNudStRb0hUSnl1TjY2?=
 =?utf-8?B?TUxkSnFtTGZlWlpTUTFzMGxEdFBVM1pzRGhxcHhmdWl1UU5MZkkvN2dnbUZ6?=
 =?utf-8?B?NXlVQVlCdHI5Znd2WHF5V3FVbVpSNU5oOStNZHoxeW9ESWw2ZUhNY0RIckZj?=
 =?utf-8?B?cXpkZkZSMU0zZllETDNUd2hXLzIwUmFIeUdPU1l4Q2tEOHdvZHZ0SHBtYUNt?=
 =?utf-8?B?THBxek4rSTV3bDJxaUg5U2MrbWRZbmdRUEFrMEVMWlJ0clZna1A4eTBvZ2lt?=
 =?utf-8?B?aG5iK3VjSTlmQVluakxQS1R0NG1Cd1ZtYXdEeTVmNzI1cHVmWFNHODR2U3pw?=
 =?utf-8?B?UkdQQnNTVWEySEJUWHZhZE9PcmdBTzhubTFRcEVyY0YrcS9YaHl6bExkdHNz?=
 =?utf-8?B?WUFwUXd0Vk9kR0wzLzVmT0hXMHFtT0hKZnNrMFdPQjVQUHlPbkRnd2x3bDh4?=
 =?utf-8?B?aTM5dGR5ZVJOS2FEVTRsbWNDK1FhU2pDMWlMRGFBN041WmdBelF1MWFUMnJE?=
 =?utf-8?B?VW5zdUxKUEtGVmhkUE1UZEpnWHUvTFA0R0J1SjA4VFZwQ0ZUK3dlWG9JaG5Z?=
 =?utf-8?B?ZEdoamhTYTJ3Y2hYNkt1S3V1ZkM3MWdBVTdEN2h0bjErY1hxNXo0bG5iTWk3?=
 =?utf-8?B?bXdFU2FCbG5mK0FROUhZRXMvcVh0ajRsUFhTVGpYS3NCcGptU1lsUGtacTZG?=
 =?utf-8?B?UFdBR2h3Z2M1U29SamZaTHh6M2o2QU5yYlFiNjVHczdRbE5IMWZtazhUSC9u?=
 =?utf-8?B?YmVTNmxxTWljNmVEWEFUMWJrWE04VldHa1V4WnFROGdSeVhrQlJwSU1UMVlG?=
 =?utf-8?B?aGx4Rmh1c0FsUjRlUWNLTnM0OTd5MDJlQVRjNU5mTXByaWlzTFEvbHJYc0kv?=
 =?utf-8?B?c1BlWFdGaldJQ0VwU0lCNVZuYXpjZ2Y0azZqYWZjempRKzdMRG9ORTFYc2Uy?=
 =?utf-8?B?VU1lanhXSVdpK0FLOVRydXoxa3o5eE9aMzIyanRmNjVHQ1RESE5aajVYdWN1?=
 =?utf-8?B?TmhjcUFwbytqL3ptSTFYZWYxTEphbDVmN251aDlyQm5XVWI5T0FLODlLcTZq?=
 =?utf-8?B?dG1DUzR4ZUNRMWl6aFhPWmlTaFpsTHNTTk5rc0hEaThqdTg3QVZ5bzZOalhH?=
 =?utf-8?B?K3RmUXFjd2VEaUQ1aGMxQlhXOFFVazBHUk9BSUYrQzBGaWhhNlJDSnRHWm80?=
 =?utf-8?B?bVhUUTRLdUNOUStsWmEyTnE3bUdaaUZWdXhvWmNJbC9DZzE1dWxkZTF4Nmh3?=
 =?utf-8?B?WVRjOThUQmwvdWVGdlhjRUhzQWoyTUdvS01ldmczY1E0c05leWJObENWV0VS?=
 =?utf-8?B?U1NiTjVBNS9oY2djMXdJekRMNi9JNXFjMlhzYkNtL2QrSmVFYUFWTTVsRTVS?=
 =?utf-8?B?Rlc2cmViZkZCdEw5Q2tWSjVxaVJCU29yZ3RJOTh0MmFUWFVHdzJISlRnZHhk?=
 =?utf-8?B?UFB2anFLRzRmMFJhTjVuSG4wMCtDM29tcHViZm9jQVlsaEtISDBpMXZLM0tJ?=
 =?utf-8?B?MHlUMWFML2RlK3ZHKzh1UzJmSGV5OU56djJSS29jYnBKVnBub2wvaEMrdysx?=
 =?utf-8?B?VDlQa1drbzZUSlp1dzY2SnY5UWo2V1JDbFFIU0NZdEZma2VBeThKb3lSL2FZ?=
 =?utf-8?B?dG96eDZwWUVoZklSYmdqcE9oWHBtNDdzc1NHSi9PU0tjU0xLOWJ5VzlQWmZ4?=
 =?utf-8?B?OFh6SXF6Q09KeXNKd2Nxa2hjakhiUUVrejRjRTVSWlc5Zno2YVZoSnpQUklK?=
 =?utf-8?B?dmRmRXVaS2pzK1c5NG1sSG9rSEN6Mzk4ZUNoOC9GS0xXNDJYYkk3c1NvYzBy?=
 =?utf-8?B?UmlRamxBaEVRSzRlY21zcUEzTXZxUmNQeE1lelVvaG1scjQraUQ2cmd1Z1RI?=
 =?utf-8?B?QkFoYTVKQ2dkbG9OVG53c1hLay9PbU43S3JRa2t5YkNDNVdYbndkcUh3R2s0?=
 =?utf-8?B?dzI5QitNU3RONFFLLzZBREpvOThBcjVFZVg3K0VnSGVtQ2ZrMHB6Yk9CLzVm?=
 =?utf-8?Q?9Sj9X0BwabtpPFwVzEFjo7k=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDJJK0c1dGxpZzRIQ0NER2F1U2RXTCthREV0MDdQUGIwYTEvYTZ1K0RPK3lr?=
 =?utf-8?B?aWpha2o1NU9kSkxXS2MrbFZ0U01tQU01VFdxeXRGYUIycTFueVhTK0R0YjNn?=
 =?utf-8?B?bjRYblI1ZEZUWHFCZDNOajI1YnJJWmplcHZHTlp3ZjFicFlBaGswQVNEcDR6?=
 =?utf-8?B?enVLT2liRnZuR2cvMi9iUnE1SUlPQS9YeGpUbmNvMTQ1V2NNT0dmcnJOUk43?=
 =?utf-8?B?dFZIcDhzdVkxTG9zRzE4YTFicWFkM3pvQ3NjY3NNYlNUSHNaVzFaNTNmMFd0?=
 =?utf-8?B?MGVGUG03d1FwbGtNRTBlcW80Qk1BYVZNWjNvYUdVTk5mZDltVUpLWmI0dHN6?=
 =?utf-8?B?VGloQ0NBSEZhSUlzL3RORWYvNGdYMzgzTjBIamcrbTgvdVJlOGdCL0ZiMGhr?=
 =?utf-8?B?a0RKOThYWlIwSzVoS01GUC9wOFdTTkI1bkZJK0lrdnRneXE0N0dzY1NMaDVP?=
 =?utf-8?B?THZ1YytkMVBWdTIxeXluakJ1UUlrNHViZ1krYXZUK2IrQks5QVZHZG1nMXQv?=
 =?utf-8?B?RTlWb2FTM0FSWVM5ZWFHYkJlYVNJZGNDZ0hoNHpoMTBxbVlGK2oyU1ZzWGxB?=
 =?utf-8?B?SkYyUStjc2hWVGREaCtHUXJCN05GRERLUWhTVzFLODY1T25MSmp4Sk00YkRO?=
 =?utf-8?B?L01hWkJQV0hzSGg1WnlIMjZHVVN4VmpuV0VYTnlhOGZOcVl0OXRaZ0F5WEIz?=
 =?utf-8?B?S3VndWtqMmQ1VmVFL2p1d09XNnNNS2ZHL3YwVWdrbUFUTlRQYjhheHpJM3Jo?=
 =?utf-8?B?Qm81Ym5TU2w3Z21EZXF6dDJoaWlmODB1R1QzUFVwY2E0L2RBYXVGT05NWXFj?=
 =?utf-8?B?TE1NZGdEMFFWYjIrd2RjQUFwVW1JWW55QmNzV0E5Z00yOEFSbXhiT2EySTh6?=
 =?utf-8?B?Q2l6U0NxUEpKMDd3TUphdkc3N1NxSzVmOHJFd052L0M0cTkvMFVaSDNXaERq?=
 =?utf-8?B?ZEM1WkxGN2JPNkQwczZiMFJkV1lJMUpOMWVMQUNxbkIwRThZVG9UbWxEckp3?=
 =?utf-8?B?d2d2bC9zTm9DMUY4MXpBWjVaNldBcFlTT1pDWnk5Q2NQVkpsUGJYUUh1U0xT?=
 =?utf-8?B?Z0NUaTBENFJFQURRL0F5aEZXM1hORzh4S3l5SGZsZ0NSbmNnNVlXdGxsVmZT?=
 =?utf-8?B?bmZCTFVoUW56WGk5RDM5cDkyTEY0YWlCMVM4NFhFNFNNS0JYaU9ra0MveDhy?=
 =?utf-8?B?UkVmS1FSMFNCeTh2aFdhYmRMUnZyZi9xWE42bmZteGlmRTlzSklGQ3JIZk5I?=
 =?utf-8?B?eEhhQWpTbHFlNlk5RVBYTDAxaW5qSDlNQlYxTjZ4WlpiZWczRGcxalBQZGRZ?=
 =?utf-8?B?Tk9XaXlUUXZ3Rm50TjhGazR0TldObEFCUysrMm1TWVM5MHBNZURsWDg3U25h?=
 =?utf-8?B?ZlhtN2xaNEJRVjkxU3FQcVhhdEsvZkZYMmROSGhvUXI1RUU4MTdRN20zdHln?=
 =?utf-8?B?b3paY25DWmpnMnhFRWl3K3RidEVvcmsvdkNtWGxCUklubzVkTVYwMFNFc0E0?=
 =?utf-8?B?cVpZSDF2QlExOVVITjEwTE84WUhoKzI2UVFacE1xQ09hZTYranZCUDQxTUJE?=
 =?utf-8?B?SlBXVFB1SVhSbEJWM2d0QkRDNFlxbklVSEo2b0tqeHZrWXUyTTNzTEpINHdz?=
 =?utf-8?B?SzVSZkhLYlhiZ0NIQ3dNeGg3TFhFbXdEczN0TnNKc2dWZGswbFc5RzZiVng5?=
 =?utf-8?B?VFY1WFFtUHFwZUQvRkMrODBsbVVFMjI3U0xyd1NDZjM3SXBOcyt1RFd6NXZi?=
 =?utf-8?B?K1cwYWg1TFlBSzV1R3cwcUhhMHR2eml3U0NTZ3d1MDRpSmlnVTUvdjNIWXNj?=
 =?utf-8?B?KzFFUWNLL2lvaGZVY1p6eGJCenNLRUFKVFZKOGZZeXVtSVpyMnVkMVZYeFdJ?=
 =?utf-8?B?R2FTeFZBZU00UCtTeUZkUkxyZVdqampaWGRnMlpRN3IvUi8xQTFrU0htUWZG?=
 =?utf-8?B?UXBFL2VMcndhUXVZc2VWTUcxVGx0Q2d3U3ZvOWVpekVhQ3ZRSm5QZll5MWV6?=
 =?utf-8?B?NzVGcUJCWEt6dkwrcjMrUnQrVXBYVGR1dERVdXlHRTZScjBhejRrMXU0SlU2?=
 =?utf-8?B?QjdueDBHekRWaGJidjBsVDZVOFVkNUNpV3dTYkQya1laWDNhUnd2QVFtSFEz?=
 =?utf-8?B?QlNTSVp0RHgxdWprSGZudFNmbUUvU3N4RFFPeWpGUXJGNUpXNjlpRlR3Vk43?=
 =?utf-8?B?Q1p3ck41QTNDYWRKSkFBVkp0SEp1blZzVzQrUE9adG9aL1pXOE9Pazd5QlJt?=
 =?utf-8?B?YTc1ZS94emdpT0Y1NDg0MVU2U3IrejlWbm9MendHR1ppN3ZxYTExMkZCUS9U?=
 =?utf-8?B?cFJlMmxRUlNOQ3pmMUYyYWFwUlAzdkRFazRhQ2xCMisxVCtpcEM3UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd877235-fe84-4cda-57f6-08de5e934499
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:32:53.7203 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gvO8iN9fgEqRPU4yzg1fAzQ2cwZO+HNU4tkpbtZOg5efWqENoNMef6S+hneOSW+UiiAD2p2eXrdLRntE8O208+QcvlkdpALaPNT7TY3sD0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5809
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769621578; x=1801157578;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zjwfmVn49V22XUK82ZOC6w9HJzCnpeCUg5PzEsi1Gqw=;
 b=L3ggRSLTn6srvh7VCifm4FuAIAUuu43N/Tx7n3LRUiN9oduzA9jb3Pe9
 4SD9KzT9ZdTSRZL+hqLwkLSPq9McabGK1tHsTe13r5iIBoeg45rMJZ/IO
 JcJ69UQzG+Ki1Nc/X3XLjl6lcLRoilTYaEnO2/mRWBmeNU3hon8B4ppNS
 XWx4gOGoitLtTrDC+0TyQE1+Lh6ksBEL9c6jsDP3zIVLyplA4vu0+cxYQ
 QL7z0fmfhrwxNrcTHPW+M4mabPWfIjXpHo1aSiIcyVKVkuidQmk3+fVcQ
 CwuC7be2cWwaNsQSOnbox1d3e61Hya7qsHhBuHmTfX7He4Vq/4dj/3xRK
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L3ggRSLT
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:mchehab@kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:skhan@linuxfoundation.org,m:sfr@canb.auug.org.au,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,lwn.net:email,linuxfoundation.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 8DDC6A6F5F
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+OyBNYXVybyBDYXJ2
YWxobyBDaGVoYWIgPG1jaGVoYWJAa2VybmVsLm9yZz4NCj4gQ2M6IE1hdXJvIENhcnZhbGhvIENo
ZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz47DQo+IGJwZkB2Z2VyLmtlcm5lbC5vcmc7
IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIu
a2VybmVsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgUGV0ZXIgWmlqbHN0cmENCj4gPHBl
dGVyekBpbmZyYWRlYWQub3JnPjsgUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+
OyBTaHVhaA0KPiBLaGFuIDxza2hhbkBsaW51eGZvdW5kYXRpb24ub3JnPjsgU3RlcGhlbiBSb3Ro
d2VsbA0KPiA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1s
YW5dIFtQQVRDSCB2MiAyMy8yNV0NCj4gdG9vbHMvbGliL3B5dGhvbi91bml0dGVzdF9oZWxwZXIu
cHkNCj4gDQpDb3VsZCBiZSBuaWNlIGlmIHlvdSBhZGQgcHJvcGVyIGNvbW1pdCB0aXRsZSBmb2xs
b3dpbmcgc3Vic3lzdGVtOiBicmllZiBkZXNjcmlwdGlvbiBmb3JtYXQNCg0KPiBTaWduZWQtb2Zm
LWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+DQo+
IC0tLQ0KPiAgdG9vbHMvbGliL3B5dGhvbi91bml0dGVzdF9oZWxwZXIucHkgfCAxNiArLS0tLS0t
LS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDE1IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL2xpYi9weXRob24vdW5pdHRlc3RfaGVscGVy
LnB5DQo+IGIvdG9vbHMvbGliL3B5dGhvbi91bml0dGVzdF9oZWxwZXIucHkNCj4gaW5kZXggZTQz
ODQ3MmZhNzA0Li4zY2YxMDc1YjFkZTQgMTAwNzU1DQo+IC0tLSBhL3Rvb2xzL2xpYi9weXRob24v
dW5pdHRlc3RfaGVscGVyLnB5DQo+ICsrKyBiL3Rvb2xzL2xpYi9weXRob24vdW5pdHRlc3RfaGVs
cGVyLnB5DQo+IEBAIC04LDIxICs4LDcgQEANCj4gIEhlbHBlciBjbGFzcyB0byBiZXR0ZXIgZGlz
cGxheSB1bml0dGVzdCByZXN1bHRzLg0KPiANCj4gIFRob3NlIGhlbHAgZnVuY3Rpb25zIHByb3Zp
ZGUgYSBuaWNlIGNvbG9yZWQgb3V0cHV0IHN1bW1hcnkgb2YgZWFjaCAtDQo+IGV4ZWN1dGVkIHRl
c3QgYW5kLCB3aGVuIGEgdGVzdCBmYWlscywgaXQgc2hvd3MgdGhlIGRpZmZlcmVudCBpbiBkaWZm
IC0NCj4gZm9ybWF0IHdoZW4gcnVubmluZyBpbiB2ZXJib3NlIG1vZGUsIGxpa2U6Og0KPiAtDQo+
IC0gICAgJCB0b29scy91bml0dGVzdHMvbmVzdGVkX21hdGNoLnB5IC12DQo+IC0gICAgLi4uDQo+
IC0gICAgVHJhY2ViYWNrIChtb3N0IHJlY2VudCBjYWxsIGxhc3QpOg0KPiAtICAgIEZpbGUgIi9u
ZXdfZGV2ZWwvZG9jcy90b29scy91bml0dGVzdHMvbmVzdGVkX21hdGNoLnB5IiwgbGluZSA2OSwN
Cj4gaW4gdGVzdF9jb3VudF9saW1pdA0KPiAtICAgICAgICBzZWxmLmFzc2VydEVxdWFsKHJlcGxh
Y2VkLCAiYmFyKGEpOyBiYXIoYik7IGZvbyhjKSIpDQo+IC0gICAgICAgIH5+fn5+fn5+fn5+fn5+
fn5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl4NCj4gLSAgICBBc3NlcnRpb25F
cnJvcjogJ2JhcihhKSBmb28oYik7IGZvbyhjKScgIT0gJ2JhcihhKTsgYmFyKGIpOw0KPiBmb28o
YyknDQo+IC0gICAgLSBiYXIoYSkgZm9vKGIpOyBmb28oYykNCj4gLSAgICA/ICAgICAgIF5eXl4N
Cj4gLSAgICArIGJhcihhKTsgYmFyKGIpOyBmb28oYykNCj4gLSAgICA/ICAgICAgIF5eXl5eDQo+
IC0gICAgLi4uDQo+ICtleGVjdXRlZCB0ZXN0Lg0KPiANCj4gIEl0IGFsc28gYWxsb3dzIGZpbHRl
cmluZyB3aGF0IHRlc3RzIHdpbGwgYmUgZXhlY3V0ZWQgdmlhIGBgLWtgYA0KPiBwYXJhbWV0ZXIu
DQo+IA0KPiAtLQ0KPiAyLjUyLjANCg0K
