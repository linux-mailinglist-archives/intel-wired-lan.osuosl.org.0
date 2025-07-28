Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD16B1374B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Jul 2025 11:11:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A7A282051;
	Mon, 28 Jul 2025 09:11:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QkxJwrMdukcg; Mon, 28 Jul 2025 09:11:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F49282173
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753693871;
	bh=qx9h+/L/xVgGZQ9CS3S8AyY4TxcHvW7aNETHbeQ3tyI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B9gQHtNJJ9gLI6KLO+lnrEKOmUT4cF3kSXmgGrMxLZGG644XfA4x8S7b0m7KHzDQW
	 I743uYpoJl2dXLrqb/BeEHZEe/HLuipOPRftin/Ki9BJXLODijRVYUoSCL6UqBDr++
	 7SH5bWIu6tyWY9zxq8LpkHBcDiATxOQdTsbzpjUby2/+18H0So+pWVpjjOa/gX/SNm
	 fei2zrnY7M5OxlvLCCqZQlad2ji717V7MeHLtdRiZK5sejnwQOMqJpwniWPXdrplgW
	 QyGiTEzeIB+HD9F+vqWbyd5VZ/jdcIZLtWFNQEiEv62nBFb3j4UQgq1rjtk7oIejW3
	 e9Z1IGJHxV1qw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F49282173;
	Mon, 28 Jul 2025 09:11:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B6B8BDA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 09:11:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B385D6076F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 09:11:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ecp9KGL5GDb4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Jul 2025 09:11:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AE92860B5D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE92860B5D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE92860B5D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 09:11:08 +0000 (UTC)
X-CSE-ConnectionGUID: lLX5ZQU9TQiU/Y7y9uihIA==
X-CSE-MsgGUID: 9PpgHBlhRKSwJVToUvkY4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="55636994"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55636994"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 02:11:08 -0700
X-CSE-ConnectionGUID: V7udRjdQSuWc6NO4eIP9HQ==
X-CSE-MsgGUID: CUR5P6y0T3+yfWsoDLyX7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="185993876"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 02:11:07 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 02:11:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 28 Jul 2025 02:11:07 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.84)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 02:11:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OP6VD9adMcrYtIfR92efaJXuCcF+GxNKB7GHBeNjAZHV2DKXgatEX/n4GyF8heMGt6syC7Jxf+1CZ06nVa9GYwVQLRLWAuQUunJO7+b/D/melC2RajY1l/tmqEjyJD6LlsYkGPPNZaoJqdtbO21tv4NpyGpM7teh7ygWPW3DU0zs3jSLMYjqhW1Yavgkrn4YAVtxmu3c9ApdjXY9AzhEnn/XUg3Y7/124frFENYPyQI2J7zgfF6/iNaAopvp/hqa3rB006njj4dM5fkH/AySfoGMlUkdYUCgvs8SDgvA6arYdtDZ5bEvQ1wiLhjweUy+nE83By7Nrjd2w43sYGPNDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qx9h+/L/xVgGZQ9CS3S8AyY4TxcHvW7aNETHbeQ3tyI=;
 b=f800ceIY7uWiXDWtBCBKyi9bFxxdJ9irbt5E/z8WhE1pZF6iGkMn6TGnhbtS1EhSh+JBsA7vFXr3VeLOiG/oOeWOSujdH5BAl7AenV5AvP+XHmz4QuV4GOz/hb9JtRnxNDr9psSujPYDTVB+dcBOgVPz2dUbgTaQazf1zWBbtxHMG73DrFFJeXetjUdtAjdcBasUVaM6IYfyXS9xt0TUO3EHKe63SdMkXffATAUYx5bs6f53EKcnqaQpn7M1/Fpxt/e4foinf769mtNlalY/xgkHEjlTnoixgYK+4itXCx+z8HR+sefonx02oTJuydjuo/D1bH6LjRwkgwlzlRG4wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB7174.namprd11.prod.outlook.com (2603:10b6:208:41a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Mon, 28 Jul
 2025 09:10:22 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8964.021; Mon, 28 Jul 2025
 09:10:22 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kunwu Chan <kunwu.chan@linux.dev>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: Simon Horman <horms@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Wang Haoran <haoranwangsec@gmail.com>, "Amir
 Mohammad Jahangirzad" <a.jahangirzad@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: remove read access to debugfs
 files
Thread-Index: AQHb+2btL62Y3wID80KNIenCAtV2ELRCuOEAgAR0cCA=
Date: Mon, 28 Jul 2025 09:10:22 +0000
Message-ID: <IA3PR11MB898687EC5F1D1583A8678A80E55AA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250722-jk-drop-debugfs-read-access-v1-1-27f13f08d406@intel.com>
 <c6f54d34-a22f-4533-a7d7-c991ae08d725@linux.dev>
In-Reply-To: <c6f54d34-a22f-4533-a7d7-c991ae08d725@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB7174:EE_
x-ms-office365-filtering-correlation-id: 53761fd2-2315-4a9d-f26d-08ddcdb694fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?b3pzWGRtamJRbWFvSUswVCtjR1hadTlibzNLOHpJZDIwTEwrNlRLcjE3NVJr?=
 =?utf-8?B?SXdQWmNkYVhrMll5OW9hbEVoS2tSOHNpblNSUGQzVEs4VUFDM0U2VVMwN3Iw?=
 =?utf-8?B?SU4zRDdGaktFNDF5KzAvWE5sTEgwalhlUTZSQ1ZNZG84aDNadWYyQ3JZRmJN?=
 =?utf-8?B?OHhEY2VYOC9QUnVUMEkzWTV6WlFpUFB2T002US9mWUJUT3lHa2NTYmVRd0xH?=
 =?utf-8?B?Z1VKOXJyMzV5b0kwZ1o5ZGdoZWFUcGNuMXhNcENIN29NSFhrUnlQaW43Rlhy?=
 =?utf-8?B?ZzBIekc3WkduaDZ0enFhNVNBdUVWQkZhQnA2R0tQOTFHNnZNSm92QjlTV0xG?=
 =?utf-8?B?c0RPQnpxSTlwTjZMeU1YM3o2dkJKZU1BRHlGR2lQbmxMRnFOdDVaWUFlNnUz?=
 =?utf-8?B?UWpkVzBOV0VIZHVPbW83VWpFS0pkenhtc2ROT1ltZjZaRmtIbmdHR29BRGpp?=
 =?utf-8?B?aGhXcUhUWmdac2pIa1lVWGUwWFJ2OFFBalZoMks2dXc0ZVBKdXl2U2pGZkxs?=
 =?utf-8?B?UzU4UlFZdHEvV2YyYjFqemRieFUyVFlCRStSZkJRNSttUWRqK282MFRYb0U4?=
 =?utf-8?B?eDRORkFpb1dONlNBbVNnU0hvUVZLWmFWQ0tkY3grRm1JS2dGVWtybWRHdFRR?=
 =?utf-8?B?WjJoZ1dxLzl2Z0ZPQUUvVlIwK2w3TytReTVicEdpNktPUDNJYW9BcW1GdGFV?=
 =?utf-8?B?TWFpVHNoUHdaOWR1UDFWK1JYaXMyVGhOb1kyMUZ0MzJrWVdDSjdxcTUyNTgx?=
 =?utf-8?B?eWZVNHU5LzFoYVJvTFNKRGR2MlA5bmQ5bUtyU2JxbGZiUUVuMWR5VGJOYWFS?=
 =?utf-8?B?cU1sNHh2WHlVdUwrY2RFa2d5aVN4TjZlTThReERrNng0YTM2blV2QzFDa0k3?=
 =?utf-8?B?YzVyNE1jSEhZdEhQeGdFNkhvM1ZjSlgvWGp2NzVIaGlDSElNSjBKbCsxZkZD?=
 =?utf-8?B?MmJYL003TzZGalIyNW9ZTHZZTTc1RG91TmptNnVUNjBPN2oyNGE2SVNIZkcx?=
 =?utf-8?B?SFc4UUpKTHVocjlzZFpyVkVRR3FXcjRaRWx5T2RHdC9lVWxpOFJTSWg1VVBO?=
 =?utf-8?B?UjdrZWJ3em1MejZCdkZFbm52TlEwM2RNWWg2QzZsU2g4TVNFL2E4eWNZa3NW?=
 =?utf-8?B?d2dkMENpNlU4VjFjcTBRVzlmY21iY2p4YVp5MTdEVVZiaDJFOVlHTTBwcVBs?=
 =?utf-8?B?cGdjWUM0WllSOEpqdWJyWnRldG1NK0VSN3g4WUpUa2FaVnl5RHFRMWt0U2Yy?=
 =?utf-8?B?L0Q0K0pVMmtGTXo5c3pRU2JvRUpyTUdGbXNhN3JUSHI1Zm9UR0lLb09zUjR1?=
 =?utf-8?B?OTU1SDhTU0RYSEx0YTV0cDJoSzFGL3lkWUd6cWVNU2xYQ1ZEa0I1Q09INllI?=
 =?utf-8?B?ZnprQUNHNjIzS2l4RGhMNkdsc2lWZDR6ZkVRVFRLVVc0YWVGRXpjVzc0c1dL?=
 =?utf-8?B?U1QrTmtOSWpZRmttTzBMSllYa1dab29ON0FqRlFlK3pGaGdNdC9zNi9TU3NP?=
 =?utf-8?B?VmlrYUE4aVhoSUtBZWN4eUdNU0FZSkN6NUFYOUdoaWtEWWptZXZsb003MXQv?=
 =?utf-8?B?bFQrOTdqWVlyMjBObVk0WXAwQWQ4Rld1TDFiOHlXQXlqeDBxUHJEVjBrT0VT?=
 =?utf-8?B?VC9CUEJqMVJRbnZRbldyWE5nMUdwcmxPb1g5VVVNQ1FkT3lCeXJmSGJFa1ds?=
 =?utf-8?B?R0hsUDRvMm9VV3lrd1Z0L2pWL2QrRFhWNVk4V2JLcmM2R1hiVm82bmhTd1R6?=
 =?utf-8?B?V2R3K3dCU3dXM25MbWdHSFVUaXdXY1c5V0FvaDZTVW9DVkJiR1RiQVlnUGh0?=
 =?utf-8?B?b0hGbDVKdHdZL2tVa0hEd1BJQnBRM1haQlJxMjRyTUNsYnRKS0FHTTN1cW95?=
 =?utf-8?B?MTJOTFZTYmVoVkg3ZnZFWjY3dVhvVDNqR1hnYkNaRXlXUkhTRitLdDROVTNq?=
 =?utf-8?B?eGlLSHNSbmkxOFM2bmgrL0xZdXZybGJFWlBRQjNtOTFrRXpkbzdTV2hHMG9J?=
 =?utf-8?Q?Te86J4HeF877nUUOSp4CqS4IhlG91c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T3ZsdHJqSEZWeUZGMTJsbUdRcEF6ZDBQTUlXK0F2Q2dyei9kdWdpZnc0SmJw?=
 =?utf-8?B?bkNDOFM2SCs5OGo5bUpZb2dDYnhONWxvakgvNzBwaGZEWmVyV3BWSUJEUTZE?=
 =?utf-8?B?NzVVclA0V2FiK0xjdEJQL3oyTEFiTlBqajhmN040Wk1CSmd3MEt2blZPUllT?=
 =?utf-8?B?S2N6Y0t4bW5Hdzk1eDZ6eStDdkZWTEZZMDFkdk1uYjQ2UlNtSUp0L28rWENT?=
 =?utf-8?B?bWY1SHhVd0l1c1pFcnhEUEQyQ3J6T1pvSGpLeFJLdk9pZHdMNnN4NURTaGZE?=
 =?utf-8?B?SnoxRFlKNEh6czBZY3MyVHR1WGNtM3R0Y0ltSXRPUWdVVld6c1lFdjF1YS8v?=
 =?utf-8?B?Mm1kekFxbXBmUFEraEU3cVkwSXZaWE5KdWxPTlYwWWZPbjZNUTdKOVZ3YVBE?=
 =?utf-8?B?bmRLOHplcjVkcnVMdGE5aTE1TDE3S2VqekdjellVUzVhM0Y1bzRmeG5JYmdz?=
 =?utf-8?B?bG1zWkFPQjlPOUcyNDRwQndMbVVqRmxyS1JpMC9VU0ZjeThQa3h1SUZOM1N4?=
 =?utf-8?B?MTBnSXdRdTlyK2w5Q2hSc0hBUUpJamFjZTRvUmVlRVQ4WTdBaW5hMzY1TGhH?=
 =?utf-8?B?N3BXeE5CNGhYY2VWcjB4bUJCbWJkOHBRWXdySFE0UnZrQkFpT0htaXBlMEN5?=
 =?utf-8?B?UmhkR1lpMERvdWZFMW5tRW9VdEY2Z21yZkdhZGpCQXV0dGZHODY0enh0WjV5?=
 =?utf-8?B?dm5zMzlINUNlYzc2akE5R1k3T2YwVTVoZlBOZ3FDMThxcjNFUzZwaEhDR0lp?=
 =?utf-8?B?MzhDeEJ1RE5oT3d1aTRSRm9qNW1UTVJiS1Z1Qm9yQ04xOGhzbkdJYXIvQzd5?=
 =?utf-8?B?NTgwdkhYVUZRWEdrbzdZMzJmTU9qb3NaQzIvbDZ3bWpLZHRZTmxjQmhzSVJt?=
 =?utf-8?B?eGZIa1dyK1FjbzNPaVZNTnBYQmhnWEE1dVRRMDFCU2xEM2lybzU2MGw1M1Rq?=
 =?utf-8?B?cGVMQ2RzWmkxUE1zQkFpYVUxYytkNXVxSTVkZ2JJemFuWTk3SzJXekNGQjhY?=
 =?utf-8?B?dWlIaUV2cWdmUFlDZzdKSW4yVkhOSHBQK0EyZVEzdEJEazNTVTQrS285MitB?=
 =?utf-8?B?bWNIT0tCRHJ1bmhYWXY3WnlkSnRmU1VvVDJvMmljY1U0OUw0aHZPd2cvcnM3?=
 =?utf-8?B?T29tcVVpcEVMUlcvUjR6bFJ3OEZnNG41cktPUkhDWHFUeUlJczBnZXRNcEsy?=
 =?utf-8?B?aTBrS0pOL2w1YjlIZlpGTG1XQVJISitDSEZjVGZ0UWpWTFpuMjJIQnNtRk5l?=
 =?utf-8?B?clUyYmhQQXBrTWZRZFBDWkkxSW4wWWFMalgwbzVjSk5aWmE3MjRoVXFFU1M5?=
 =?utf-8?B?WXArQXowNVNjTTVVMUdRU3hUT0prV2RVQ043bmpneC9QSW9wRzRGK2pRVXIz?=
 =?utf-8?B?L29Tc2NTV2EwU2dTMFpONThjZjNvSSttSm5GT2ZCTk4wUjFETXFLcHFPQ2FR?=
 =?utf-8?B?N0RuU1RucG1kbU5sajM3blduVURENHNUU1FVeTFvTGxnTnNCdE1FNFVwd0p4?=
 =?utf-8?B?dDQ2RTI0VDl3WkdDUk9TcG1ZU0RabzFRU284YXk5MlVzRUJjNjFQVkY5Qzl1?=
 =?utf-8?B?NGdlbmJQT3JSTCtZN1oxTG94ejl5Q2RMOWpUMWl4b0c0Q0ExRmlLc2hGS3JQ?=
 =?utf-8?B?RHVpbW4wSVlTcWtZU3o2eEZtTnRseERObTdUNGZLQlhrdHl5UUNQYnkzS2pC?=
 =?utf-8?B?ajk1d3RFdFV4a2M5L21XSGFlaUt6MXFPbExyaXhKUk14L2lkNUdhVWZRNkdQ?=
 =?utf-8?B?bTNVVVVJT3l1ME5ib3BpbEFLWTJUQ0UzOVhvQUQ3ZlFsNXBScSt4MlVUbFdo?=
 =?utf-8?B?bHA2VFlDa3J2MDYyM0paeXdvUEwzMHM3N2I2UDFRVTVuaXJvZVNnbGN6aU9a?=
 =?utf-8?B?THZGVUg0eFRjRFRta1UvRnFvQ25OYmJHYXUvcm1iNnZkb3ZZb1pFd1lmRmQ3?=
 =?utf-8?B?Nk50VXE3ZEEvbGJzczU0QXQ0M09uYWc3RE9qR09UL0RjeHhpZXZraGlveGV3?=
 =?utf-8?B?VTl5ckFjSlZEamhsUTN1bkwzN0NIZTBjclpqNmZBeVUvbFVYbDBLTDVrQU1B?=
 =?utf-8?B?ZVRpNTFlZDhFU3VBd1J4M2ZCZmJrS1JZOXpiMWR0RkFPMzJOSVJhTEdlQ0Rm?=
 =?utf-8?B?Sm50Uy96QXdKR3hla20wTUNlUGozeHFUUDBHOVpSSlU5U1BqRWV3TlIxY1hW?=
 =?utf-8?B?b1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53761fd2-2315-4a9d-f26d-08ddcdb694fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2025 09:10:22.3146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y1BILa4SESNPtEak8ZI6npoTG6AgIf6JUxG3rMaPWvYUAWETPdBlbpPBDegpXH5DSE5zu8q0+jnCEyaN5u0ipiZqy4yxHOH8OdLkZJWPh2E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7174
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753693869; x=1785229869;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qx9h+/L/xVgGZQ9CS3S8AyY4TxcHvW7aNETHbeQ3tyI=;
 b=hjGOHrJRF9xAtDqHoR9SKczF3qY7A66jSJxXMhyqcaXYnSAR0LmLHZZA
 5+STgbHMvIix4wbn9SaAoWqab+rGhwjakw3LfYSq2czRpaPnOUQW9ywte
 Rk+K0ZssClkUSGXgJUryDaY/GFPN1rssZkw7AvxS4cQvXd9TQxdg4YCKk
 zHhZYHS+ScNKNWDRm12OHSJvzHdOHSzRElgexZVXgA/eIODurwXnhl546
 3jlCbc5iHRQHrzLGKQUgJKtier4LMw1LZpFWao+yWv05bFn7absRpbxZG
 DMRT8zj4NAjlZjZaVYU6jd4vBe8uUUtS/h9v0P7S2RzwB6nM1cD401/3U
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hjGOHrJR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: remove read access to debugfs
 files
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgS3Vu
d3UgQ2hhbg0KPiBTZW50OiBGcmlkYXksIEp1bHkgMjUsIDIwMjUgMTozMyBQTQ0KPiBUbzogS2Vs
bGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBMQU4N
Cj4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgbmV0ZGV2QHZnZXIua2VybmVs
Lm9yZw0KPiBDYzogU2ltb24gSG9ybWFuIDxob3Jtc0BrZXJuZWwub3JnPjsgTmd1eWVuLCBBbnRo
b255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgV2FuZyBIYW9yYW4gPGhhb3Jh
bndhbmdzZWNAZ21haWwuY29tPjsNCj4gQW1pciBNb2hhbW1hZCBKYWhhbmdpcnphZCA8YS5qYWhh
bmdpcnphZEBnbWFpbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFU
Q0hdIGk0MGU6IHJlbW92ZSByZWFkIGFjY2VzcyB0bw0KPiBkZWJ1Z2ZzIGZpbGVzDQo+IA0KPiBP
biAyMDI1LzcvMjMgMDg6MTQsIEphY29iIEtlbGxlciB3cm90ZToNCj4gPiBUaGUgJ2NvbW1hbmQn
IGFuZCAnbmV0ZGV2X29wcycgZGVidWdmcyBmaWxlcyBhcmUgYSBsZWdhY3kgZGVidWdnaW5nDQo+
ID4gaW50ZXJmYWNlIHN1cHBvcnRlZCBieSB0aGUgaTQwZSBkcml2ZXIgc2luY2UgaXRzIGVhcmx5
IGRheXMgYnkNCj4gY29tbWl0DQo+ID4gMDJlOWMyOTA4MTRjICgiaTQwZTogZGVidWdmcyBpbnRl
cmZhY2UiKS4NCj4gPg0KPiA+IEJvdGggb2YgdGhlc2UgZGVidWdmcyBmaWxlcyBwcm92aWRlIGEg
cmVhZCBoYW5kbGVyIHdoaWNoIGlzIG1vc3RseQ0KPiA+IHVzZWxlc3MsIGFuZCB3aGljaCBpcyBp
bXBsZW1lbnRlZCB3aXRoIHF1ZXN0aW9uYWJsZSBsb2dpYy4gVGhleSBib3RoDQo+ID4gdXNlIGEg
c3RhdGljDQo+ID4gMjU2IGJ5dGUgYnVmZmVyIHdoaWNoIGlzIGluaXRpYWxpemVkIHRvIHRoZSBl
bXB0eSBzdHJpbmcuIEluIHRoZQ0KPiBjYXNlDQo+ID4gb2YgdGhlICdjb21tYW5kJyBmaWxlIHRo
aXMgYnVmZmVyIGlzIGxpdGVyYWxseSBuZXZlciB1c2VkIGFuZCBzaW1wbHkNCj4gPiB3YXN0ZXMg
c3BhY2UuIEluIHRoZSBjYXNlIG9mIHRoZSAnbmV0ZGV2X29wcycgZmlsZSwgdGhlIGxhc3QgY29t
bWFuZA0KPiA+IHdyaXR0ZW4gaXMgc2F2ZWQgaGVyZS4NCj4gPg0KPiA+IE9uIHJlYWQsIHRoZSBm
aWxlcyBjb250ZW50cyBhcmUgcHJlc2VudGVkIGFzIHRoZSBuYW1lIG9mIHRoZSBkZXZpY2UNCj4g
PiBmb2xsb3dlZCBieSBhIGNvbG9uIGFuZCB0aGVuIHRoZSBjb250ZW50cyBvZiB0aGVpciByZXNw
ZWN0aXZlIHN0YXRpYw0KPiA+IGJ1ZmZlci4gRm9yICdjb21tYW5kJyB0aGlzIHdpbGwgYWx3YXlz
IGJlICI8ZGV2aWNlPjogIi4gRm9yDQo+ID4gJ25ldGRldl9vcHMnLCB0aGlzIHdpbGwgYmUgIjxk
ZXZpY2U+OiA8bGFzdCBjb21tYW5kIHdyaXR0ZW4+Ii4gQnV0DQo+ID4gbm90ZSB0aGUgYnVmZmVy
IGlzIHNoYXJlZCBiZXR3ZWVuIGFsbCBkZXZpY2VzIG9wZXJhdGVkIGJ5IHRoaXMNCj4gbW9kdWxl
Lg0KPiA+IEF0IGJlc3QsIGl0IGlzIG1vc3RseSBtZWFuaW5nbGVzcyBpbmZvcm1hdGlvbiwgYW5k
IGF0IHdvcnNlIGl0IGNvdWxkDQo+ID4gYmUgYWNjZXNzZWQgc2ltdWx0YW5lb3VzbHkgYXMgdGhl
cmUgZG9lc24ndCBhcHBlYXIgdG8gYmUgYW55IGxvY2tpbmcNCj4gbWVjaGFuaXNtLg0KPiA+DQo+
ID4gV2UgaGF2ZSBhbHNvIHJlY2VudGx5IHJlY2VpdmVkIG11bHRpcGxlIHJlcG9ydHMgZm9yIGJv
dGggcmVhZA0KPiA+IGZ1bmN0aW9ucyBhYm91dCB0aGVpciB1c2Ugb2Ygc25wcmludGYgYW5kIHBv
dGVudGlhbCBvdmVyZmxvdyB0aGF0DQo+ID4gY291bGQgcmVzdWx0IGluIHJlYWRpbmcgYXJiaXRy
YXJ5IGtlcm5lbCBtZW1vcnkuIEZvciB0aGUgJ2NvbW1hbmQnDQo+ID4gZmlsZSwgdGhpcyBpcyBk
ZWZpbml0ZWx5IGltcG9zc2libGUsIHNpbmNlIHRoZSBzdGF0aWMgYnVmZmVyIGlzDQo+IGFsd2F5
cyB6ZXJvIGFuZCBuZXZlciB3cml0dGVuIHRvLg0KPiA+IEZvciB0aGUgJ25ldGRldl9vcHMnIGZp
bGUsIGl0IGRvZXMgYXBwZWFyIHRvIGJlIHBvc3NpYmxlLCBpZiB0aGUNCj4gdXNlcg0KPiA+IGNh
cmVmdWxseSBjcmFmdHMgdGhlIGNvbW1hbmQgaW5wdXQsIGl0IHdpbGwgYmUgY29waWVkIGludG8g
dGhlDQo+IGJ1ZmZlciwNCj4gPiB3aGljaCBjb3VsZCBiZSBsYXJnZSBlbm91Z2ggdG8gY2F1c2Ug
c25wcmludGYgdG8gdHJ1bmNhdGUsIHdoaWNoDQo+IHRoZW4NCj4gPiBjYXVzZXMgdGhlIGNvcHlf
dG9fdXNlciB0byByZWFkIGJleW9uZCB0aGUgbGVuZ3RoIG9mIHRoZSBidWZmZXINCj4gPiBhbGxv
Y2F0ZWQgYnkga3phbGxvYy4NCj4gPg0KPiA+IEEgbWluaW1hbCBmaXggd291bGQgYmUgdG8gcmVw
bGFjZSBzbnByaW50ZigpIHdpdGggc2NucHJpbnRmKCkgd2hpY2gNCj4gPiB3b3VsZCBjYXAgdGhl
IHJldHVybiB0byB0aGUgbnVtYmVyIG9mIGJ5dGVzIHdyaXR0ZW4sIHByZXZlbnRpbmcgYW4NCj4g
PiBvdmVyZmxvdy4gQSBtb3JlIGludm9sdmVkIGZpeCB3b3VsZCBiZSB0byBkcm9wIHRoZSBtb3N0
bHkgdXNlbGVzcw0KPiA+IHN0YXRpYyBidWZmZXJzLCBzYXZpbmcgNTEyIGJ5dGVzIGFuZCBtb2Rp
ZnlpbmcgdGhlIHJlYWQgZnVuY3Rpb25zIHRvDQo+ID4gc3RvcCBuZWVkaW5nIHRob3NlIGFzIGlu
cHV0Lg0KPiA+DQo+ID4gSW5zdGVhZCwgbGV0cyBqdXN0IGNvbXBsZXRlbHkgZHJvcCB0aGUgcmVh
ZCBhY2Nlc3MgdG8gdGhlc2UgZmlsZXMuDQo+ID4gVGhlc2UgYXJlIGRlYnVnIGludGVyZmFjZXMg
ZXhwb3NlZCBhcyBwYXJ0IG9mIGRlYnVnZnMsIGFuZCBJIGRvbid0DQo+ID4gYmVsaWV2ZSB0aGF0
IGRyb3BwaW5nIHJlYWQgYWNjZXNzIHdpbGwgYnJlYWsgYW55IHNjcmlwdCwgYXMgdGhlDQo+ID4g
cHJvdmlkZWQgb3V0cHV0IGlzIHByZXR0eSB1c2VsZXNzLiBZb3UgY2FuIGZpbmQgdGhlIG5ldGRl
diBuYW1lDQo+ID4gdGhyb3VnaCBvdGhlciBtb3JlIHN0YW5kYXJkIGludGVyZmFjZXMsIGFuZCB0
aGUgJ25ldGRldl9vcHMnDQo+IGludGVyZmFjZQ0KPiA+IGNhbiBlYXNpbHkgcmVzdWx0IGluIGdh
cmJhZ2UgaWYgeW91IGlzc3VlIHNpbXVsdGFuZW91cyB3cml0ZXMgdG8NCj4gbXVsdGlwbGUgZGV2
aWNlcyBhdCBvbmNlLg0KPiA+DQo+ID4gSW4gb3JkZXIgdG8gcHJvcGVybHkgcmVtb3ZlIHRoZSBp
NDBlX2RiZ19uZXRkZXZfb3BzX2J1Ziwgd2UgbmVlZCB0bw0KPiA+IHJlZmFjdG9yIGl0cyB3cml0
ZSBmdW5jdGlvbiB0byBhdm9pZCB1c2luZyB0aGUgc3RhdGljIGJ1ZmZlci4NCj4gSW5zdGVhZCwN
Cj4gPiB1c2UgdGhlIHNhbWUgbG9naWMgYXMgdGhlIGk0MGVfZGJnX2NvbW1hbmRfd3JpdGUsIHdp
dGggYW4gYWxsb2NhdGVkDQo+IGJ1ZmZlci4NCj4gPiBVcGRhdGUgdGhlIGNvZGUgdG8gdXNlIHRo
aXMgaW5zdGVhZCBvZiB0aGUgc3RhdGljIGJ1ZmZlciwgYW5kIGVuc3VyZQ0KPiA+IHdlIGZyZWUg
dGhlIGJ1ZmZlciBvbiBleGl0LiBUaGlzIGZpeGVzIHNpbXVsdGFuZW91cyB3cml0ZXMgdG8NCj4g
PiAnbmV0ZGV2X29wcycgb24gbXVsdGlwbGUgZGV2aWNlcywgYW5kIGFsbG93cyB1cyB0byByZW1v
dmUgdGhlIG5vdw0KPiA+IHVudXNlZCBzdGF0aWMgYnVmZmVyIGFsb25nIHdpdGggcmVtb3Zpbmcg
dGhlIHJlYWQgYWNjZXNzLg0KPiA+DQo+ID4gUmVwb3J0ZWQtYnk6IEt1bnd1IENoYW4gPGNoZW50
YW9Aa3lsaW5vcy5jbj4NCj4gPiBDbG9zZXM6DQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
aW50ZWwtd2lyZWQtbGFuLzIwMjMxMjA4MDMxOTUwLjQ3NDEwLTEtDQo+IGNoZW50YW8NCj4gPiBA
a3lsaW5vcy5jbi8NCj4gPiBSZXBvcnRlZC1ieTogV2FuZyBIYW9yYW4gPGhhb3JhbndhbmdzZWNA
Z21haWwuY29tPg0KPiA+IENsb3NlczoNCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
Q0FOWjNKUVJSaU9kdGZRSm9QOVFNPTZMUzFKdG84UEdCR3c2eTctDQo+IFRMPQ0KPiA+IEJjbnpI
UW4xUUBtYWlsLmdtYWlsLmNvbS8NCj4gPiBSZXBvcnRlZC1ieTogQW1pciBNb2hhbW1hZCBKYWhh
bmdpcnphZCA8YS5qYWhhbmdpcnphZEBnbWFpbC5jb20+DQo+ID4gQ2xvc2VzOg0KPiA+IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDcyMjExNTAxNy4yMDY5NjktMS0NCj4gYS5qYWhh
bmdpcnphZEBnbWFpDQo+ID4gbC5jb20vDQo+ID4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVy
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gSSBmb3VuZCBzZXZlcmFs
IHJlcG9ydHMgb2YgdGhlIGlzc3VlcyB3aXRoIHRoZXNlIHJlYWQgZnVuY3Rpb25zDQo+IGdvaW5n
DQo+ID4gYXQgbGVhc3QgYXMgZmFyIGJhY2sgIGFzIDIwMjMsIHdpdGggc3VnZ2VzdGlvbnMgdG8g
cmVtb3ZlIHRoZSByZWFkDQo+ID4gYWNjZXNzIGV2ZW4gYmFjayB0aGVuLiBOb25lIG9mIHRoZSBm
aXhlcyBnb3QgYWNjZXB0ZWQgb3IgYXBwbGllZCwNCj4gYnV0DQo+ID4gbmVpdGhlciBkaWQgSW50
ZWwgZm9sbG93IHVwIHdpdGggcmVtb3ZpbmcgdGhlIGludGVyZmFjZXMuIEl0cyB0aW1lDQo+IHRv
DQo+ID4ganVzdCBkcm9wIHRoZSByZWFkIGFjY2VzcyBhbHRvZ2V0aGVyLg0KPiANCj4gUmV2aWV3
ZWQtYnk6IEt1bnd1IENoYW4gPGt1bnd1LmNoYW5AbGludXguZGV2Pg0KPiANClJldmlld2VkLWJ5
OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg0K
Li4uDQoNCj4gPiAtLS0NCj4gPg0KPiA+IC0tLQ0KPiA+IGJhc2UtY29tbWl0OiBjZjA3NGVjYTAw
NjViYzUxNDJlNjAwNGFlMjM2YmIzNWEyNjg3ZmRmDQo+ID4gY2hhbmdlLWlkOiAyMDI1MDcyMi1q
ay1kcm9wLWRlYnVnZnMtcmVhZC1hY2Nlc3MtOTk0NzIxODc1MjQ4DQo+ID4NCj4gPiBCZXN0IHJl
Z2FyZHMsDQo+ID4gLS0NCj4gPiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNv
bT4NCj4gPg0KPiAtLQ0KPiBUaGFua3MsDQo+ICAgICAgICAgVEFPLg0KPiAtLS0NCj4g4oCcTGlm
ZSBmaW5kcyBhIHdheS7igJ0NCg0K
