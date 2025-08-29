Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3AAB3B3C5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 09:05:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1398614B5;
	Fri, 29 Aug 2025 07:05:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G8ie2LY42ip7; Fri, 29 Aug 2025 07:05:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17355614B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756451119;
	bh=AbsRi0CgVLBdebxqfLnaFiPI4+uWDLwhdsMoWMp+ZsY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7F3l7CxniBhphOJnggqv9Caerr++FYXZy8unGYCqJJ3YSccBD4LNvgcACjC7pKrs5
	 786PMrwzils4Vy4zpY5Ope/YH+5B9AwTMLbQ/MCmMamLtQYulpYAm6oFKrggaX1ew3
	 28KdfiiXi9yJPb7qlkVbkwR8leMwJSpTVzny2mYCea7KRei1i53mJ1Hd1L0NspkxE0
	 ZxGx9ihWF1rRByABqhIvKfIZ/AawPeYgjakjmbm81Ze8Q8ZG5dR9NBrNPUqoHQKfsO
	 cMvjIc8EhdS1CcJ7QKgUWP5Ykw64XJLSfvuU8Hb+C5AKubxmWoG1sAp02GSMDLvs9I
	 dLH4IfblgPv1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17355614B1;
	Fri, 29 Aug 2025 07:05:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 15AE069
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 07:05:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12F68614AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 07:05:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ym3ZBpI7A_Qs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 07:05:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6AAFF61422
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AAFF61422
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6AAFF61422
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 07:05:16 +0000 (UTC)
X-CSE-ConnectionGUID: BYZbqTjfRGeCfEoKDuwUwA==
X-CSE-MsgGUID: x/2nbnPmQXSIssI+yzaWLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="61367442"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="61367442"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 00:05:16 -0700
X-CSE-ConnectionGUID: BZA4J2t3R0uXffJUjqwjDQ==
X-CSE-MsgGUID: J3jrBEE3Q2SnMhnnqM8Yyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="201256761"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 00:05:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 00:05:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 29 Aug 2025 00:05:14 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.44) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 00:05:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aEPeYu8kdWKp7znwAt9g3RmiIZGIN3d2fyjhRKkyQqsg4kXtSpRRdXiDbrfpTd990CT1AQMgjhFhA+I2M+B0818JmOjN0JMwFt1wQtkLVmpSiciGZ0MVT321vDCTbm9UIc/R8a3yVnf9uD84t2Q/5fsU2+2I4GrdZnsmW0WW6lfuMTmp9JC7hkFCHEs+jFK9YtHV1jySiB4VefFoyJsyRFr4iKQ8+x3I49Uk8oNDbtixtJrcdHDUt07kK3t2xYzzC1v6nkOqc5IO37KUqddCFu9Uk/JOd6dIBYeFLIgknfa18pOVhOmD35TV2h8UEY7liBondkmIf88F1bzzq/hnbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AbsRi0CgVLBdebxqfLnaFiPI4+uWDLwhdsMoWMp+ZsY=;
 b=swJJMweXy6dh2imI3S8YlWc1qpQmKEzUf4/lqzalIlBdCVWO7aZGg9+4Y4bk6FGIAHHqtNzuIecjaOJqk7tUkS1uj41dTLze1TDcT+g135ImwoSwgPYWHv58uGXFwMSM69RlZ27SIsKRDRrhC+8w4xGWtNHu69LnRnN9bZnRn1Y1sRDjwa2peRMgLkGc0p3j89l4Hn8L87SatHTh0UWWRUZeOZjvCG9ym5cz1iXyYs8gN+VeIqQfOVdHXUX0HrByd8wNBbJK+W6z+HZ+tZebPEnSJAvUVjqiVDwBgfkCwCn4fmbJjnC6kK9VM4v8fh+EVFGZVyD+hty4kzl0hqvdsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com (2603:10b6:a03:574::22)
 by PH7PR11MB8477.namprd11.prod.outlook.com (2603:10b6:510:30d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.17; Fri, 29 Aug
 2025 07:05:02 +0000
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38]) by SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38%4]) with mapi id 15.20.9073.016; Fri, 29 Aug 2025
 07:05:02 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Mina Almasry <almasrymina@google.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "sdf@fomichev.me" <sdf@fomichev.me>,
 "asml.silence@gmail.com" <asml.silence@gmail.com>, "leitao@debian.org"
 <leitao@debian.org>, "kuniyu@google.com" <kuniyu@google.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Vecera, Ivan" <ivecera@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [RFC PATCH v2] net: add net-device TX clock source selection
 framework
Thread-Index: AQHcGDvl/LMwp05JjkKtLLSsBfpR/LR4ST6AgADsK+A=
Date: Fri, 29 Aug 2025 07:05:02 +0000
Message-ID: <SJ2PR11MB8452C5DFFFDDF084EE1C066B9B3AA@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
 <CAHS8izPU7beTCQ+nKAU=P=i1nF--DcYMcH0wM1OygpvAYi5MiA@mail.gmail.com>
In-Reply-To: <CAHS8izPU7beTCQ+nKAU=P=i1nF--DcYMcH0wM1OygpvAYi5MiA@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8452:EE_|PH7PR11MB8477:EE_
x-ms-office365-filtering-correlation-id: ad9405a9-5e6d-442e-34eb-08dde6ca5fc6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Ymx2QnpxY044a1NsSFB5RnFjRlZoZG4vdEd5N2VwV1RQVy9LMlRScFhxNWlR?=
 =?utf-8?B?UndLT1VBK2dKQkhYU1c0OVNZWjlQV0dpOFZWTFJXVTVJZ2tiWHIvVVVpc0tp?=
 =?utf-8?B?aFVDRUVReTAvNUJCbUg0VTlDbmZZTWFhbUlYUjJYY25sSUxUM1ZhU3ZFWXh1?=
 =?utf-8?B?QkFCVEF5OFVvNUdyNzJYZlFVcHVwMDN4cDdRQkM4Wm5VQXdBTmEwMUJuU29K?=
 =?utf-8?B?ZE1VNHlVYkYyRzZsdDMySkwvbi9aU3JVQ3RZWlYyZHppVzZBQzNRR1lyN0Jk?=
 =?utf-8?B?WktuZ3FDdmVQUFZoWkVUNklTVzA3ZFZ5WGZEOE1uaDlFRGdBUU5BU1hkT0Jn?=
 =?utf-8?B?Y2xwRzZIbGUyVmJYTXRiMXdUNDhsSzk4bWJ6Z0h1OVMyeFh2OVJrVnVlSTRO?=
 =?utf-8?B?dGpseXZ0Q2UzSjQwaGwxdDg1Njhzdlo5cGFtbUYyem1yeXR4UlpZL1Z2amNM?=
 =?utf-8?B?b2liTDRJMlJrY0NxWFF6OGpVb1ZBeENHNm42M2RTenFXRWRENUlGbUtXOEpu?=
 =?utf-8?B?VWhIR1RZNTFNZ2x1U3lPSXpFdlE0cStuWSt3NllxRk14QXFMalMvTjFLejh1?=
 =?utf-8?B?Yzc4UzM0NFN3dmhxamovaHBLd2l5M2xVeFVFVWZzN3hicXhBUndxWjhVQmgv?=
 =?utf-8?B?U2RGWU1PcFQrZDkyT05YeENHNjJCQlZYMVQ0Q0d3eEw2ZWJoS0l2cXpoS0R4?=
 =?utf-8?B?bEozbi9vSlNoWDRwOWJMTXMrLzVKcTBKZTlaZXExaWVpdDYrdzFFTGtzS001?=
 =?utf-8?B?ZTJPakhLaVpySkk1bTFUQUdMRjJEbFkvcnRxbjZwK3ZXVktoRXVrYnZyN3M5?=
 =?utf-8?B?eG84Z2dKK3UzZzJYdlB3a1kyREZlUGdmbGJRbkp3L0ZYbE9rendWM1JDUlE4?=
 =?utf-8?B?ZzhvenQyZW1IVG9oVVRvTmdtcGZYWC9YL0FsV2dQQ0hiZDZJWmZiZVFLdHgy?=
 =?utf-8?B?bmoxS2FMc0RwZGxBVEpTQ2g4K0NJcGhEYVRsTnJsS0tNWmpUOU1uRVRXMU45?=
 =?utf-8?B?aEtZNk1vMWV5ZVhleXZ3YXFzdmZja01rQU8zajJVbkc4NUR0RWZWTnZyN0sz?=
 =?utf-8?B?NVcyelVGYUh5U1lGZnRLUVR4Zmk0cjRCZzZnMzlCQUtXNDBadnEwWnpNWTNh?=
 =?utf-8?B?cWlaVEI3WlIyRGdBNE5obmJYdmg0TFFyTjdNMjVvRStUZzA0dU1aUXRhZ1E1?=
 =?utf-8?B?YTJ1dG5aNXpaL2VDd1ZoMkw1SzNTOC9yOVNxV3haKzJFaWFsblhlTW9NaTVS?=
 =?utf-8?B?bmNSb0YzQmE2eUdrVXBydlEvWEg2ZTJNYmdBSFZ1RDllUVdWbC85c0VuVmJV?=
 =?utf-8?B?L1k1VkNyU2QxWUNuaFhTT1oyd2haZ3hYSFIzU0lYUmRLSVVKU2g5QThtUjdo?=
 =?utf-8?B?bm10d1BjSmtWQTlPbTNFL2I5ZU5kNUpvUnNKSmlRczE0bTBnN3hNdHlrS081?=
 =?utf-8?B?cklvMFJUM05QQjZXNDBtMEpqWnZpTlJKS2I0NHJScUhqUksrL2xiM1ZSWUVR?=
 =?utf-8?B?dnFndE1JUjY4cXZUTHVJTmNGR1IvR3pYQjFHYmxZa3dTdks3WTNuMzZpWndJ?=
 =?utf-8?B?Nmk2bGRYOGRyQ0YvTSs0eHpGbXJGVkJzMFFHZmFjaHBLWVFKZU9uV1NQc1Bx?=
 =?utf-8?B?a3Rkcjd3Q2x0MGFhOXh0My8yNTBsYnNpajlBRSt6Wld3T0F4OWVtdnk0TkhY?=
 =?utf-8?B?S3haNkdITkQycE0yOXgzNm94NUhvRzFBTUhzSjd5OU5Zd0VsaDFWbGhCVGcv?=
 =?utf-8?B?NHhIcHBZbWtZbGxqZW5BM0VOL1E1d2doSFo3TjlTWTJHdkRXRW5WQnRlaUdL?=
 =?utf-8?B?d2RNd2xVd3VxYmp6aDQ2SjdVWGNqMWZONzliVDFhU2Z0eGhudzUxTjl2Znlq?=
 =?utf-8?B?NURvSVI4d0NWVnFhRGUzbTFWeExvZVlnaU1WaC9jSnpXYzE1NkxORm5oMXFz?=
 =?utf-8?B?bkpwbnF2TzZaV1ZYV0c4Y2JWZUNXQmJrN0lySHJwSDl3Qzh6Wm9ZbkNZTVVT?=
 =?utf-8?B?dkhmajRzayt3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8452.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NVFRVlJ0QzAyTXBQQ2IyRE9GWkxWNklhNVNiUHNscjdFellWbmdCQndlQjda?=
 =?utf-8?B?Rk8zZE5UYnZvM1pwamVIMytKODdkc0dvYzhHOU9PTHZUSlBjcDM3NkNIdFI4?=
 =?utf-8?B?MnozeXVSQWEveG9weEhuM0NqTmN2a3JkMStQdWYvUzI4di9tSTJnMFA4ejRK?=
 =?utf-8?B?Qm92OEZwYjhqL2VuNmpiamc3d3cvZzVFSC9wOXFpN1ZzKzR3cHJjazlMMVdi?=
 =?utf-8?B?VDZGVllhQTE2MUd6TzB5bktFSzJnRGJITCt2aythVk9kRGxaYTNpMmI2RFlJ?=
 =?utf-8?B?L25ZMmtjRXBWYUVtaFF3YTdLKzNxYW1kVTdJZXFCRnExdnpRNG1Ec1hoSWxJ?=
 =?utf-8?B?ZVNZRVFUOWs1SW5zQVN4OGVyeGE5dnU5WDJ6TGI5WGl5S2Z0N3F3UU9rMith?=
 =?utf-8?B?VElVdnd0MmxIRmw1QnlNUW44YXI5ai9DYVVyK08zYkpJTTdVTTBiREo2RW9B?=
 =?utf-8?B?eFJNM2theERobEtFMFNDdXlsTi9WbU1mbit0RG5zek9jY0hTcExvOXluYWtw?=
 =?utf-8?B?NmhldUs1bVM0Y2FzL0JEais0RVZhR0hpUTV4NU53TTB4UmhQWkhBSVVWQVJE?=
 =?utf-8?B?Ukh6WTc3THhWcWljL255andyVUhiSWsrS0lsUDRHNkY2SnBvVWNTWDZqUldU?=
 =?utf-8?B?UVZOdHZyK2MrN0MzR04zbmpENnFDVkRNck9WSlhrbTZuMHc2SHBvYnZRUFZy?=
 =?utf-8?B?dlV4Y1QwOHlTMTVnTk5CTmxacEF6TXI5MW1CYU9ldHNNeFdEUkRNNUd2Z215?=
 =?utf-8?B?S1ROd3FNL0lEbjdLbzM1ZWZHYzRzNjBwbWl4bVBldGJScS91OWtaakpuYlF6?=
 =?utf-8?B?cUdoTUU2Q2ZGMEJGZE1Zd0laRW9rcEgvcmVUYXgvbkxGT3ZHMW9FUDhOTVFO?=
 =?utf-8?B?QXY0QjMvZWdhR2tvZ3FIQytLY09OU0JxbldabTh5Y1B6RjQ4L1IrYWE5aTVu?=
 =?utf-8?B?Mk9UT1UyaXlWbHFmd1dweU1JeERFcElDbU8ySEtvaDd5dEN4RDJTTDZyZkFz?=
 =?utf-8?B?WjhxVDdVQUoxdXFEMWM4ancyZGk1QjRkU09iSjc0ZE9uN01WMlEzbTNoWE5E?=
 =?utf-8?B?Q1VHMEsycnZvRnNQZWZ2ajlhOXZwQnhWUHVZc2lXMUxCQ01FQmtIc0R1MXRV?=
 =?utf-8?B?RUhjSDRENFNzcG5DSkh0dWRZcFFyeVE1YUVLeGppanBYMjY1Z3dMb1cvd2tB?=
 =?utf-8?B?L0lmMzNnbWdSMHlSYkFjdTZlT2Q5bVBhcmpWby9SdE50YTlMSm41NEx3Y285?=
 =?utf-8?B?amJYV1Q1V2lXVU5YOHlZL1FTRFIvUVR4R1N6UFlZRFNaQ3RTU1U1OUg2Qnln?=
 =?utf-8?B?NjRvQWhqRmRxb29DNDJqRE03Sy83eUM2VldscGNSS1dpSE9rNkFNenFIZ3dO?=
 =?utf-8?B?T0swbEwzUE1GNVNScSt4MEpPS1dncHh4WEl2OWNjMTN1Z3JXTUladUg5M0d5?=
 =?utf-8?B?VGwwc2FNQW10SkNjS0pKZUZtWndNSWl2blVEVlR2ZlRZTUFZdDZmSFlFL25S?=
 =?utf-8?B?MkQxWHcyZVR5c3JENG5WT3JSc1NBaHRSSElycW53Z0FYSFl0d08zT0JoREtr?=
 =?utf-8?B?V3doUGJlMlkzdXprb0Zxd3MvT2ZOQzJScVZVNWlrNWdub2NqS0NqQkJackRn?=
 =?utf-8?B?VVhVc1A4ZnBmcHZmdTRwMWRMQWJDUzR2cEQ4dzBBMzZ0NUVoU2ZBYkZTZFRX?=
 =?utf-8?B?SFBkMnJVRzRMZUUyL2dYYm1ZZm5RNHBDYjFkdjZwdjVuV2FxREtweHowUkla?=
 =?utf-8?B?dFd0QnR5UzZuWndtbmVBWS8zb21FWE9xUmlrSTVHd2pkUTlVS3B4Q0lwbFRO?=
 =?utf-8?B?eUd4RkN1T0NlWUUvb01EeTdjVTQrNEFlazRQaktNR2g0MC9SRE1oWHpHY3pI?=
 =?utf-8?B?aW1HYnYzcFc3TG5QVHhxa0IrcDQzbit1ak9XbzZWUHEzYVJIbzNXcTdOemMy?=
 =?utf-8?B?RjExTllwbXB0ZTYwSnNxdmQxZ3p4OXI5aUt2TTBFbzNqYnNKdXZOdGUwa0tw?=
 =?utf-8?B?RWFqei9RNkwzSXkxZDJNTHE2cFhwVW1KQi9tRjQ0VFJCWElrcmwydWsreDFa?=
 =?utf-8?B?OW0xcUJWMjBYR0RqWVBXL1UzUm1RNjVUVTBFZUtPckhuek5WVCtXTzRmTE9l?=
 =?utf-8?B?bHBnZEczQ0RIMmsxSUFTYzZMWkNTOGJyenMyQ1gxby9saVFLU2ZtZHB1K0gw?=
 =?utf-8?B?Q2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8452.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad9405a9-5e6d-442e-34eb-08dde6ca5fc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2025 07:05:02.1022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WHC9JvvZQFc9vOnmzAet4RfVDALlF6j9XKFFcNjo3Oz0PGToc9iTWr4SbhGlhvMLO0EZVYs4j2C6sd3zU2JBUNbla0i4qzId6Lf1NnNVaEk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8477
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756451116; x=1787987116;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AbsRi0CgVLBdebxqfLnaFiPI4+uWDLwhdsMoWMp+ZsY=;
 b=YgnFqSNVqeFVKzaZzle30qK94S0BEn5DhMcxy7DJFjWgXk3SdcqJ+5xy
 ujCwhwcr4RFSyL8JA34gFJAph/1Gv/XdxMHULU3tmIyCC3Y329UHxzRfN
 wUGMyfB+CNBpOPVonWEUgzr0sFSgFmD0LhhwdOTuU9uVb6Gow1IQ81MLv
 /aNe6ZMzIpQHlxG7nACjG62lyF+c+52nMAo7zAzRWPPydn5wNFPg1qRg7
 cHH7TpydvZV8bcw78KAfZUlFx74ltcRnvlmZOLvGdz2Z3UQySfIi86o2K
 DkFOLQ60WU57raMZcyIRE0Pr41CNaJi2rBp8Isy8AQpd5oyuPWStltny8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YgnFqSNV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v2] net: add net-device TX clock
 source selection framework
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

PkZyb206IE1pbmEgQWxtYXNyeSA8YWxtYXNyeW1pbmFAZ29vZ2xlLmNvbT4NCj5TZW50OiBUaHVy
c2RheSwgQXVndXN0IDI4LCAyMDI1IDY6NTggUE0NCj4NCj5PbiBUaHUsIEF1ZyAyOCwgMjAyNSBh
dCA5OjUw4oCvQU0gQXJrYWRpdXN6IEt1YmFsZXdza2kNCj48YXJrYWRpdXN6Lmt1YmFsZXdza2lA
aW50ZWwuY29tPiB3cm90ZToNCj4+IC0tLQ0KPj4gIERvY3VtZW50YXRpb24vbmV0bGluay9zcGVj
cy9uZXRkZXYueWFtbCAgICAgfCAgNjEgKysrKysNCj4+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvTWFrZWZpbGUgICAgIHwgICAxICsNCj4+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlLmggICAgICAgIHwgICA1ICsNCj4+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2xpYi5jICAgIHwgICA2ICsNCj4+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX21haW4uYyAgIHwgICA2ICsNCj4+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3R4X2Nsay5jIHwgMTAwICsrKysrKysNCj4+IGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfdHhfY2xrLmggfCAgMTcgKysNCj4+ICBpbmNsdWRlL2xpbnV4L25l
dGRldl90eF9jbGsuaCAgICAgICAgICAgICAgIHwgIDkyICsrKysrKysNCj4+ICBpbmNsdWRlL2xp
bnV4L25ldGRldmljZS5oICAgICAgICAgICAgICAgICAgIHwgICA0ICsNCj4+ICBpbmNsdWRlL3Vh
cGkvbGludXgvbmV0ZGV2LmggICAgICAgICAgICAgICAgIHwgIDE4ICsrDQo+PiAgbmV0L0tjb25m
aWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyMSArKw0KPj4gIG5ldC9jb3Jl
L01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKw0KPj4gIG5ldC9jb3Jl
L25ldGRldi1nZW5sLWdlbi5jICAgICAgICAgICAgICAgICAgfCAgMzcgKysrDQo+PiAgbmV0L2Nv
cmUvbmV0ZGV2LWdlbmwtZ2VuLmggICAgICAgICAgICAgICAgICB8ICAgNCArDQo+PiAgbmV0L2Nv
cmUvbmV0ZGV2LWdlbmwuYyAgICAgICAgICAgICAgICAgICAgICB8IDI4NyArKysrKysrKysrKysr
KysrKysrKw0KPj4gIG5ldC9jb3JlL3R4X2Nsay5jICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAyMTggKysrKysrKysrKysrKysrDQo+PiAgbmV0L2NvcmUvdHhfY2xrLmggICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAzNiArKysNCj4+ICB0b29scy9pbmNsdWRlL3VhcGkvbGludXgvbmV0
ZGV2LmggICAgICAgICAgIHwgIDE4ICsrDQo+PiAgMTggZmlsZXMgY2hhbmdlZCwgOTMyIGluc2Vy
dGlvbnMoKykNCj4NCj5Db25zaWRlciBicmVha2luZyB1cCBhIGNoYW5nZSBvZiB0aGlzIHNpemUg
aW4gYSBwYXRjaCBzZXJpZXMgdG8gbWFrZSBpdCBhDQo+Yml0IGVhc2llciBmb3IgcmV2aWV3ZXJz
LCBpZiBpdCBtYWtlcyBzZW5zZSB0byB5b3UuDQo+DQo+LS0NCj5UaGFua3MsDQo+TWluYQ0KDQpZ
ZXMsIHdpbGwgc3VyZWx5IGRvIGZvciBub24tUkZDIHN1Ym1pc3Npb24uDQoNClRoYW5rIHlvdSEN
CkFya2FkaXVzeg0K
