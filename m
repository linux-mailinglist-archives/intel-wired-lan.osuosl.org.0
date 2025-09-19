Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A400AB8A41F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Sep 2025 17:24:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5AC040F60;
	Fri, 19 Sep 2025 15:24:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id abfkOm_ssbFp; Fri, 19 Sep 2025 15:24:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CEB740F59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758295479;
	bh=XVBZigEoapltOC564Skp9COTwdJYvFPAGdmf97/l9hA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ITQ5OhAR+NgsZhVaa2cvNAUiffPkl6yBPmgCsekVuAiZCrLEreP7zY5egfSqpQcWR
	 dhQB8J3fGQyZu4i293hM9zEZmoaS+7QaBApg/ziPqCxwtkfI8vK5XWIMfVjV9fo6vk
	 OOLNHFcZQgqe/Vr7HAbJ/NQ31CJfPgjYiRW482Hdygj314q/Y+Io/F+nhFanuEWiSW
	 NpLFnkqQBkT+1eSvZO+RDrcxSJ/f3MpTsrZ0n3waGqBXVsvoVLKXByD+aomZLJsJoB
	 jSPhTCYA7g5gwemEhIfMUbsNQQ8u2t8OE+pl82NGBE49wDRH+DMPpfZOYrhriCE4S9
	 U4Pj/LTMcGpwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7CEB740F59;
	Fri, 19 Sep 2025 15:24:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4DB9ED7F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 12:57:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 340A080F7B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 12:57:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fHAGBbUeTEZX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Sep 2025 12:57:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=avi.shalev@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4810F80E60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4810F80E60
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4810F80E60
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 12:57:23 +0000 (UTC)
X-CSE-ConnectionGUID: hOWIFgEGQ2OXS+OSLmScWQ==
X-CSE-MsgGUID: N09V5LdCTeyzuzOtl3WEHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="72061036"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="72061036"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 05:57:23 -0700
X-CSE-ConnectionGUID: rwO44vOwQHKaVysIKEBGww==
X-CSE-MsgGUID: yQ/picagTySfn3Ih98tT2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="176637265"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 05:57:23 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 05:57:22 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 05:57:22 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 05:57:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jRMjMsOIyam2iT8MjxzVK/KDnnVVd5DDiZ3GuC8GQDNfAWvCM/iyt94PKjC6cYzTNdmhLaDVfwQCtX/SFYnN+A/jXmFXqziOCN7C66xJajxg0bFRJfQRJF4Mwb5aD3ES5eM2pewSH8z+/6QZXawkstDbIFjaMSZ9n6qi/AWW3b7xz+q9M+dXPdo3noXCJ+S90eTznmyGlUfvL9DmIWNJuI4gDx1y52vlhyxZWvLuyq9zacNISBjvvDcuKWj5aiqovCj3CDa6MufyXbVweL/N6FmOdh/OXPrq0gQD3hhlNpSddGrfSLnJ/fHy+Vq69rNzcVi9l+PN8xKErZx1+NIw+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XSS/wR2W1SD6MDKMLraVXrNi/SK0dOU4Fz7EJmFg0yY=;
 b=Axm2HAo0JwpdYpmGFwNChiaEYR1PGjl1jMastq6opzhWmOpENip68XQYfKtfmiMLDlkUph67jGtu5nY4nOCwzoveIgB8fUpkiiJnVW7L6aD0a+DkpXTbyPAUUvQZCE+89FCMs1rtjmOdHuC3Xp0Ax4E2Fmotsjeifu46HD5PrnpY+vroEoGIBj92N/tXcjU5TXFWGpJQ2oRIap+3fgvM5FHy6LvajKSVUp4qQguurm7T1zBZ5ECR3fEhjG0D7XGwrbVLtXNcSUqePcFByq4iKBe5pCLHHhcuwlkFWhOtyi9sUjID3qxUMG1fA1IHacMp6cOVKxgAshTLR7Uiv1S6ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6537.namprd11.prod.outlook.com (2603:10b6:208:3a3::14)
 by CO1PR11MB5044.namprd11.prod.outlook.com (2603:10b6:303:92::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.16; Fri, 19 Sep
 2025 12:57:19 +0000
Received: from IA1PR11MB6537.namprd11.prod.outlook.com
 ([fe80::20f7:6d09:bff:7d0b]) by IA1PR11MB6537.namprd11.prod.outlook.com
 ([fe80::20f7:6d09:bff:7d0b%3]) with mapi id 15.20.9137.012; Fri, 19 Sep 2025
 12:57:18 +0000
From: "Shalev, Avi" <avi.shalev@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, "Choong, Chwee Lin"
 <chwee.lin.choong@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, "Gomes, Vinicius" <vinicius.gomes@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Song, Yoong
 Siang" <yoong.siang.song@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix race condition in
 TX timestamp read for register 0
Thread-Index: AQHcKItdyDuhhQTvsE6tDcxg2bQ92LSZadOAgAAXMICAAJjPAIAAPQoAgAAWfGA=
Date: Fri, 19 Sep 2025 12:57:18 +0000
Message-ID: <IA1PR11MB653723B4B25B0EFDA02C6D8A9A11A@IA1PR11MB6537.namprd11.prod.outlook.com>
References: <20250918183811.31270-1-chwee.lin.choong@intel.com>
 <0fc877a5-4b35-4802-9cda-e4eca561c5d1@linux.dev>
 <d30d7a43-ca17-445e-b7ae-641be2fcc165@intel.com>
 <SJ5PPF4422C53747941CD81779E97F26C34DA11A@SJ5PPF4422C5374.namprd11.prod.outlook.com>
 <9bf5066a-a006-4f93-93fd-38e4c063e59e@linux.dev>
In-Reply-To: <9bf5066a-a006-4f93-93fd-38e4c063e59e@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6537:EE_|CO1PR11MB5044:EE_
x-ms-office365-filtering-correlation-id: ef9dc595-e7ea-47b7-5ee1-08ddf77c10e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?cStNWFprNlNRZEdsTXA5NU9hdU1UVWNIZ2hWNHhhMUR0MkVuMHNhT001NjNi?=
 =?utf-8?B?VEN4SnQ0bjB4ejROK3d4L2IremJVK3o4N1lUSnlycFhqUXAyRHV1UzJZL2Jj?=
 =?utf-8?B?R3dxZ1J1WUFLMDUzMlc2SWt2OFV2aCs1azB3YjVLd1lTQkhmNzRZN1VTcU1T?=
 =?utf-8?B?YVcyeUtvUmFxem9rKzlTK0ViM0UvMWY2OTgrcXZuSDNodjJDR05xNWN1STFM?=
 =?utf-8?B?bjlnT0NyelQ0S1ZGa2ltL21IcTd5eVdoMWJESDZCNWlKVVErMVdxR2JmbzN6?=
 =?utf-8?B?cnphZGR1cloyRy9vZlhWK1AwbG9QVUVicTl6ci8veUtDZlF3Q29pc2tkTTZB?=
 =?utf-8?B?b00rRmNuWGdxaXNkYWJIQ3RuNVVvTXhRRzlHZkx1dWJpUytTN0Y0dFJUcloy?=
 =?utf-8?B?c2NYMnpDaG5xbG1PbTV5Z1BtRkE4MDE5TnRMUkczN2hhNWppa0xJcEZ3R2hp?=
 =?utf-8?B?TGphckt2bitzU1JWR2VFNkV1Y3hLdFpOQmpwK2JvMWRGR3czeDdZS2hHcys1?=
 =?utf-8?B?ZGxhVnhka2JZRkREUFVHS090QjFVNUQ0UFNxVElQaG5tVHhBWXVYTTZhejAx?=
 =?utf-8?B?TU53bnY2T2ltajJrVG5NL2tkZ0RhcGRDUExqUE9XRURTN2hTRXpBVStubFhD?=
 =?utf-8?B?WCtFRlJFSVVVNzIzaDFPL1BuNDArS00rSW9zR1IrNlNwWnlqemE4Ui9OcEJ1?=
 =?utf-8?B?S2l4YVYvMGRRNkFGWmNBSGEyM0RFR1g1dlVXRFdTblVJSW5LRTJLVzBwTjB3?=
 =?utf-8?B?Y1J6bExmRkpDMUlWVk5oUWRTcGxDZUE3akFXODN4a1dKc2lQeTlsZEd5WlBP?=
 =?utf-8?B?cG5wZVhSaHJlS0VNMno1aWZ1aGRoem9WSFVNWTFyNTgwenFBQjFvdFRxVThh?=
 =?utf-8?B?VDc4UEdMV1MvWGVMRk54UUZDN0tHSjN1NHlXcUNVWkdzcDVSZFJqNU9sZWsx?=
 =?utf-8?B?ZHRPWE11VjlFMFZKMERtWlJSM2pNZ0xrWFI1Z0pxb0NVRlI1aVcyOWJKZXNh?=
 =?utf-8?B?ZjdaREhpUFo2cHk1MHZaU0RIS0ZGMWE3TEY0cWN0MmswbFV5Y3l2UDJHbGNU?=
 =?utf-8?B?TTZpdkNZNHdCRHNhWTV3NjEzQm5TSnhkblFFeC9keXFONTVBMHRZOTVVS3Z0?=
 =?utf-8?B?RS9TWE9iN1MvemhSQm1YM2d0NC9ZK0VFTk1sM0RTeGJnVlJOaVFoSTAxKzVj?=
 =?utf-8?B?d0hHbmR5bXUyVzR6SkRkUXBOTmxZYmV6MmFWbGtwUkV5QkxCaHFMclNBZXNZ?=
 =?utf-8?B?eDhGdjI3aUVhV1ZsSVQxaVBrTjc3T2ltbVVIcmpTZHFFOEFGcHYyWi80RDZq?=
 =?utf-8?B?b0lVandrdjJZazlodHdUNkNrNnVPb0MzeGFSbGx5UW44RTk0Vm56b0tjV3Uz?=
 =?utf-8?B?czBVcDM3L1huZlJUaWJTbjdGaDhQNXdEQmwxUGk2b3ZSRzYwUnFyQTJSUVBC?=
 =?utf-8?B?cnRTT3pROWsrQmhPZFpBY3AxYWNzaGlNSHFDdmcvcnh0OTRLYk5BVmlYdExT?=
 =?utf-8?B?V2d1eHBxM3A3Zmh2YlFyL2NJcElqYmR3VHd5Umw1WEJPeGZLUmpTdFlJeWdQ?=
 =?utf-8?B?RkZNc0RaL1d1ZmxGcnBETHZKMHdHNHRmUGZnaXlXaWJOSkR2SXQvSWpjYjNY?=
 =?utf-8?B?U1Q3TDRsdFJaeVNyY25KeUtzVDhVV3dNbmtSaTlLQWxmdkcxWmVYQlg4STE2?=
 =?utf-8?B?LzFuZ0h2L1hSbE1DTnIrUHo4d2l5S1BDQXRlZDRIYVkvdm9FZVBsVmw1QTlJ?=
 =?utf-8?B?S1pHWWo2QjdNQnh4ZzVpejIzZHVjWUZjelQzUmdaNk5IRjZ2ZUVmb2g4TFJq?=
 =?utf-8?B?U2IyVm5IQzY5bVlwYlRpNDRhVXJqVkFaNWJWclQrcStJNHVnRW12Qy8zcFdZ?=
 =?utf-8?B?WDc0Q2tRcWFBck1MTUJKS0EyblR6RnZadTZXQUxjQldBUUdFNnZWMkllbWky?=
 =?utf-8?B?WllEVStlUmZSVlFHR0VRTWNVeEFiSk1hdUxlVVJPWjVCVUFCb05rL1lQMmwv?=
 =?utf-8?Q?4+RNajVMHdCStprRjL1UfTKJ4I/C0c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6537.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UmYvbGpTZDcxeEo3YWM2cnU4b3FUREZRbmdlSFRsYitBVmorMGtVOHE3cjVv?=
 =?utf-8?B?T3dDTkJ4ZUM2aTBFWEUyeHJZQm4wWDZ1ZmFnQlpzYmdVNG1CT3c0UjJGczQ1?=
 =?utf-8?B?dE1ocFhtTlNXdkozZWtOR0FJOEp4ZG44R3RtV1lYSTZXMzRSQnZCQ1VQNFdu?=
 =?utf-8?B?SnphMUVHSkx2djR2RG13WVFXelpjWkhQK0xKWnZVSkowR2JvaHlMVE9QVDJh?=
 =?utf-8?B?dlpndFovU2I1eUZKRUNHdFl1QWU5WGZqZXlIQ2NGdndHeEUvSTJ3RWR5bVNw?=
 =?utf-8?B?a0R4U1g4cE96NEY0TmFwUjJ0RERPUm4vYWF5enhjYWFZNzZ2bW9yVUxrODFG?=
 =?utf-8?B?bHZ4dnU1SFBCeGRmREUvOU5iQ294dXd3NnNuQlZVUW15VFAxTU51aDBFdEpn?=
 =?utf-8?B?SG5xOGhxZGhFK3B3ZTFFMEt3R0FTNmNVTG0wc0FOUm9EYlBORWZGZHBkbXp4?=
 =?utf-8?B?UnpIYWxtT3VZV2NISG14cCt6RGg5ZzNJZ3FDNXU2VTZkYlBHc0JodS9UMzl1?=
 =?utf-8?B?Q2VZd1M1bG93cGhGUFpLdnJWUE5BQm5zdWY0d3prWGwxaTV1NGo2TENsNEh1?=
 =?utf-8?B?RXRSbmlwWGdyVnNoYmFaOTV1OVJsSjY5ODVGcmNrQjI3UG1QZVJnUFV2MTJi?=
 =?utf-8?B?ZTBadnB2OVRDdS8xL1N0cXBoZ2s0QVRhM0ZLd3Y1OHZsUWhkQS8ycWVEMllU?=
 =?utf-8?B?MjJBaC9XY3B6SkN6MkRtWEZUd0FHQm1iMFNoMzN4N1pocTE4dlFyWFFmVnc0?=
 =?utf-8?B?bS9rOVRqN2ZWL1dwWFdNL3luUm1FL012cVVuMVpjRldVQmxsTlFGcC9FQ3JV?=
 =?utf-8?B?aUlNUFVod0xlSjU2VHpqdm1XUjJkbXI2d1o2ckNIY0U2UVpuZHdEbS9FQ1RY?=
 =?utf-8?B?Tno4VVBjY2FQVS9OZHdoZE9xUHpzVUdSRHFhT0JFNlZJaWxMUWJmVE5TSExQ?=
 =?utf-8?B?ZUhJNEsyVFdnWVRVNWRtazNhZnZMUzdNS2hEOWQ1RWlHaFBuZzU1NDhNUGRX?=
 =?utf-8?B?M2xNaTRQRXl1MWVCeGRLbytwM1RqeXFzenYxdXpQYWN6ZjR5MFlPeXgrM1lQ?=
 =?utf-8?B?ZTNqUmhtQ3F6VkFUNTc2eUJNN29uMURHZWRNMDZpRnJSM0lGaHNZaG5JZitz?=
 =?utf-8?B?eitiOGN3cW5UOFY5NUZzNnhSVllHcXMyRnJLbm9iek53dzQ0VGUxTWJRRzhI?=
 =?utf-8?B?VUFONjZ4RkdKWGR3UjVrclhKN3puT2RBYUtxWGV6bkZCclBJSWNMajIzT0ZT?=
 =?utf-8?B?YVVRbXQrSUUzVE5XbTBnVHJqVDAyaTJBS0tyZ055UVUyQWp0bGo4OC9kMVBK?=
 =?utf-8?B?QjN1em5PakhQSzRmVEVXd0MxU1BZQkQzZG1kY2I5ZnVFYm8vZ2xWbVdpNk81?=
 =?utf-8?B?T3pvQU03dVlsS08wUkw4cjR5R1Q4ekZUZUNTeERjL0U2RTVFSUtpWE5UbDFT?=
 =?utf-8?B?Q3lyYWd4Y1JnRDFTa0RDcllsUUw0c2M5U293a1Q5TkFrOGN2WXdzRVlaWFpl?=
 =?utf-8?B?K3Eza25YMmgvaXUydlVObEQ4MXRzTmx4d0ZwOTVWeUZtWEVnWGo0eUpWVmQz?=
 =?utf-8?B?KzNWbEFPcys0OTg1dHh5Nlk2bkxWU2daNEd4U2d1R0ZnSnhvTVdpR3VCUkNv?=
 =?utf-8?B?OWdJckkwK3MvSFZUYnN2SEJJWXpVTWVFY05rZmdjd0ZYUThYd0ZZU0xwMVk5?=
 =?utf-8?B?eHVnLzF0Ri9PVmVNYXZaa24zMXEweFpONEtEVHVqUVpyRHNsME9FdVIwQ1Ro?=
 =?utf-8?B?bE9aSE1SdzJJTjMwM3gzOHBHMStDbkJBN083aHBVdlRqWlpmOU5ORlR4dVhV?=
 =?utf-8?B?V3ErZDhydFoxOXlicisxMUF5R1BVMlN0bStCNThkVzNwOWxkcWtyd1BGeTFF?=
 =?utf-8?B?Ulg3RG9lZ1pRajJjN2hiYnRnQzVJTEJNUFJsRHpxdFVjang1V1h1WlIvOExJ?=
 =?utf-8?B?QVBJUnJqV1BuVXlLYUxFRFhrSGpVV2pxS2dzejlxOXIxc29OUS8xK2tkejV3?=
 =?utf-8?B?elJkbE16UUxmQVlFeURGdWFSMG84UWRUdmQ0aWRDQ1BBWjR0UW9pVko4cDcw?=
 =?utf-8?B?ZkFlbzhlY1U2M3ZCa1ZOTG5kS3BMeFdNcXROUjcvWWcrUlJycktna2JlVW1i?=
 =?utf-8?Q?OgnhAFfJCw/XzWmwZ5eHpwgU1?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6537.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef9dc595-e7ea-47b7-5ee1-08ddf77c10e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2025 12:57:18.7717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P2wiBau1n00bp5LIpcrIuvJVWeUl6UViZmRvrMG1iNPeHoyQ62+VhGxP5+ZvPIUBzSf8SzJLitKJjB+Skdpysg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5044
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: base64
X-Mailman-Approved-At: Fri, 19 Sep 2025 15:24:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758286644; x=1789822644;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=XVBZigEoapltOC564Skp9COTwdJYvFPAGdmf97/l9hA=;
 b=gxfyyxgrMqwltFwuk9YVv9lmHAmTJ+ETRsMAebYccIfCWDRqehYFYaiW
 yCWopLv1J4IO0xqWyfeCeGQHiMSPII2YNGzraHBULfTS4SeyqV2xdhgNv
 14ySRGr/Vhl5ODITwTYNMwe7zSP2TfPDJS3UxM8sCg5yYQkFtXb4+VNkS
 ujXSSWGUjpWQVLtzon8ITSK6bLv7Uludbo4GfAVbwrCQoPMwDgc20J49P
 ZUDfD/FTAAHM9NCxqLlOSw/u/pOPOUwJvv9IufX+cyQzqb8zjLILdnSrF
 F0jiQrs8nEeCflqAUOq7E9lJYsudDH3Wdw1SO8U2+xTziK8+zKxV45u3N
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gxfyyxgr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix race condition in
 TX timestamp read for register 0
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

SGVsbG8NClBsZWFzZSBzZWUgbXkgY29tbWVudCBhdCB0aGUgZW5kIG9mIHRoaXMgdGhyZWFkLg0K
DQpBdmkgU2hhbGV2DQppMjI2IGRlc2lnbiB0ZWFtDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQpGcm9tOiBWYWRpbSBGZWRvcmVua28gPHZhZGltLmZlZG9yZW5rb0BsaW51eC5kZXY+IA0K
U2VudDogRnJpZGF5LCBTZXB0ZW1iZXIgMTksIDIwMjUgMTo1NiBQTQ0KVG86IENob29uZywgQ2h3
ZWUgTGluIDxjaHdlZS5saW4uY2hvb25nQGludGVsLmNvbT47IEtlbGxlciwgSmFjb2IgRSA8amFj
b2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5
ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGlu
dGVsLmNvbT47IEFuZHJldyBMdW5uIDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+OyBEYXZpZCBTIC4g
TWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29n
bGUuY29tPjsgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxw
YWJlbmlAcmVkaGF0LmNvbT47IFJpY2hhcmQgQ29jaHJhbiA8cmljaGFyZGNvY2hyYW5AZ21haWwu
Y29tPjsgR29tZXMsIFZpbmljaXVzIDx2aW5pY2l1cy5nb21lc0BpbnRlbC5jb20+DQpDYzogaW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxp
bnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFNoYWxldiwgQXZpIDxhdmkuc2hhbGV2QGludGVs
LmNvbT47IFNvbmcsIFlvb25nIFNpYW5nIDx5b29uZy5zaWFuZy5zb25nQGludGVsLmNvbT4NClN1
YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldCB2MV0gaWdjOiBmaXgg
cmFjZSBjb25kaXRpb24gaW4gVFggdGltZXN0YW1wIHJlYWQgZm9yIHJlZ2lzdGVyIDANCg0KT24g
MTkvMDkvMjAyNSAwODoxNywgQ2hvb25nLCBDaHdlZSBMaW4gd3JvdGU6DQo+IA0KPiBPbiBGcmlk
YXksIFNlcHRlbWJlciAxOSwgMjAyNSA2OjExIEFNLCBLZWxsZXIsIEphY29iIEUgPGphY29iLmUu
a2VsbGVyQGludGVsLmNvbT4gd3JvdGU6DQo+PiBPbiA5LzE4LzIwMjUgMTo0NyBQTSwgVmFkaW0g
RmVkb3JlbmtvIHdyb3RlOg0KPj4+IE9uIDE4LzA5LzIwMjUgMTk6MzgsIENod2VlLUxpbiBDaG9v
bmcgd3JvdGU6DQo+Pj4+IFRoZSBjdXJyZW50IEhXIGJ1ZyB3b3JrYXJvdW5kIGNoZWNrcyB0aGUg
VFhUVF8wIHJlYWR5IGJpdCBmaXJzdCwgDQo+Pj4+IHRoZW4gcmVhZHMgTE9XIC0+IEhJR0ggLT4g
TE9XIGZyb20gcmVnaXN0ZXIgMCB0byBkZXRlY3QgaWYgYSANCj4+Pj4gdGltZXN0YW1wIHdhcyBj
YXB0dXJlZC4NCj4+Pj4NCj4+Pj4gVGhpcyBzZXF1ZW5jZSBoYXMgYSByYWNlOiBpZiBhIG5ldyB0
aW1lc3RhbXAgaXMgbGF0Y2hlZCBhZnRlciANCj4+Pj4gcmVhZGluZyB0aGUgVFhUVCBtYXNrIGJ1
dCBiZWZvcmUgdGhlIGZpcnN0IExPVyByZWFkLCBib3RoIG9sZCBhbmQgDQo+Pj4+IG5ldyB0aW1l
c3RhbXAgbWF0Y2gsIGNhdXNpbmcgdGhlIGRyaXZlciB0byBkcm9wIGEgdmFsaWQgdGltZXN0YW1w
Lg0KPj4+Pg0KPj4+PiBGaXggYnkgcmVhZGluZyB0aGUgTE9XIHJlZ2lzdGVyIGZpcnN0LCB0aGVu
IHRoZSBUWFRUIG1hc2ssIHNvIGEgDQo+Pj4+IG5ld2x5IGxhdGNoZWQgdGltZXN0YW1wIHdpbGwg
YWx3YXlzIGJlIGRldGVjdGVkLg0KPj4+Pg0KPj4+PiBUaGlzIGZpeCBhbHNvIHByZXZlbnRzIFRY
IHVuaXQgaGFuZ3Mgb2JzZXJ2ZWQgdW5kZXIgaGVhdnkgDQo+Pj4+IHRpbWVzdGFtcGluZyBsb2Fk
Lg0KPj4+Pg0KPj4+PiBGaXhlczogYzc4OWFkN2NiZWJjICgiaWdjOiBXb3JrIGFyb3VuZCBIVyBi
dWcgY2F1c2luZyBtaXNzaW5nDQo+Pj4+IHRpbWVzdGFtcHMiKQ0KPj4+PiBTdWdnZXN0ZWQtYnk6
IEF2aSBTaGFsZXYgPGF2aS5zaGFsZXZAaW50ZWwuY29tPg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBT
b25nIFlvb25nIFNpYW5nIDx5b29uZy5zaWFuZy5zb25nQGludGVsLmNvbT4NCj4+Pj4gU2lnbmVk
LW9mZi1ieTogQ2h3ZWUtTGluIENob29uZyA8Y2h3ZWUubGluLmNob29uZ0BpbnRlbC5jb20+DQo+
Pj4+IC0tLQ0KPj4+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5j
IHwgMTAgKysrKysrKystLQ0KPj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQ0KPj4+Pg0KPj4+DQo+Pj4gWy4uLl0NCj4+Pg0KPj4+PiAgICAJCSAq
IHRpbWVzdGFtcCB3YXMgY2FwdHVyZWQsIHdlIGNhbiByZWFkIHRoZSAiaGlnaCINCj4+Pj4gICAg
CQkgKiByZWdpc3RlciBhZ2Fpbi4NCj4+Pj4gICAgCQkgKi8NCj4+Pg0KPj4+IFRoaXMgY29tbWVu
dCBiZWdpbnMgd2l0aCAncmVhZCB0aGUgImhpZ2giIHJlZ2lzdGVyICh0byBsYXRjaCBhIG5ldyAN
Cj4+PiB0aW1lc3RhbXApJyAuLi4NCj4+Pg0KPj4+PiAtCQl1MzIgdHhzdG1wbF9vbGQsIHR4c3Rt
cGxfbmV3Ow0KPj4+PiArCQl1MzIgdHhzdG1wbF9uZXc7DQo+Pj4+DQo+Pj4+IC0JCXR4c3RtcGxf
b2xkID0gcmQzMihJR0NfVFhTVE1QTCk7DQo+Pj4+ICAgIAkJcmQzMihJR0NfVFhTVE1QSCk7DQo+
Pj4+ICAgIAkJdHhzdG1wbF9uZXcgPSByZDMyKElHQ19UWFNUTVBMKTsNCj4+Pg0KPj4+IGFuZCBh
IGNvdXBsZSBvZiBsaW5lcyBsYXRlciBpbiB0aGlzIGZ1bmN0aW9uIHlvdSBoYXZlDQo+Pj4NCj4+
PiAJCXJlZ3ZhbCA9IHR4c3RtcGxfbmV3Ow0KPj4+IAkJcmVndmFsIHw9ICh1NjQpcmQzMihJR0Nf
VFhTVE1QSCkgPDwgMzI7DQo+Pj4NCj4+PiBBY2NvcmRpbmcgdG8gdGhlIGNvbW1lbnQgYWJvdmUs
IHRoZSB2YWx1ZSBpbiB0aGUgcmVnaXN0ZXIgd2lsbCBiZSANCj4+PiBsYXRjaGVkIGFmdGVyIHJl
YWRpbmcgSUdDX1RYU1RNUEguIEFzIHRoZXJlIHdpbGwgYmUgbm8gcmVhZCBvZiAibG93Ig0KPj4+
IHBhcnQgb2YgdGhlIHJlZ2lzdGVyLCBpdCB3aWxsIHN0YXkgbGF0Y2hlZCB3aXRoIG9sZCB2YWx1
ZSB1bnRpbCB0aGUgDQo+Pj4gbmV4dCBjYWxsIHRvIHRoZSBzYW1lIGZ1bmN0aW9uLiBDb3VsZCBp
dCBiZSB0aGUgcmVhc29uIG9mIHVuaXQgaGFuZ3M/DQo+Pj4NCj4+PiBJdCBsb29rcyBsaWtlIHRo
ZSB2YWx1ZSBvZiBwcmV2aW91cyByZWFkIG9mIElHQ19UWFNUTVBIIHNob3VsZCBiZSANCj4+PiBz
dG9yZWQgYW5kIHVzZWQgdG8gY29uc3RydWN0IG5ldyB0aW1lc3RhbXAsIHJpZ2h0Pw0KPj4+DQo+
Pg0KPj4gSSB3b3VsZG4ndCB0cnVzdCB0aGUgY29tbWVudCwgYnV0IGluc3RlYWQgZG91YmxlIGNo
ZWNrIHRoZSBkYXRhIHNoZWV0cy4NCj4+IFVuZm9ydHVuYXRlbHksIEkgZG9uJ3Qgc2VlbSB0byBo
YXZlIGEgY29weSBvZiB0aGUgaWdjIGhhcmR3YXJlIGRhdGEgDQo+PiBzaGVldCBoYW5keSA6KA0K
Pj4NCj4+IFRoYW5rcywNCj4+IEpha2UNCj4gDQo+IEZsb3cgYmVmb3JlIHRoaXMgcGF0Y2g6DQo+
IAkxLiBSZWFkIHRoZSBUWFRUIGJpdHMgaW50byBtYXNrDQo+IAkyLiBpZiBUWFRUXzAgPT0gMCwg
Z28gdG8gd29ya2Fyb3VuZCAtPklmIGF0IHRoaXMgcG9pbnQgcmVnaXN0ZXIgMCBjYXB0dXJlcyBU
WCB0aW1lc3RhbXAsIGFuZCBUWFRUXzAgaXMgc2V0IGJ1dCB3ZSB0aGluayBpdCBpcyAwLg0KPiAJ
My4gUmVhZCBMT1cgdG8gT0xEDQo+IAk0LiBSZWFkIEhJR0gg4oCTIHRoaXMgY2xlYXJzIHRoZSBU
WFRUXzANCj4gCTUuIFJlYWQgTE9XIGFnYWluICwgbm93IHRvIE5FVy4NCj4gCTYuIE5FVz09T0xE
LCBzbyB0aGUgdGltZXN0YW1wIGlzIGRpc2NhcmRlZCAtPiBjYXVzaW5nIHRpbWVzdGFtcCANCj4g
dGltZW91dA0KPiAgIA0KPiBGbG93IGFmdGVyIHRoaXMgcGF0Y2g6DQo+IAkxLiBSZWFkIExPVyB0
byBPTEQNCj4gCTIuIFJlYWQgdGhlIFRYVFQgYml0cyBpbnRvIG1hc2sNCj4gCTMuIGlmIFRYVFRf
MCA9PSAwLCBnbyB0byB3b3JrYXJvdW5kIC0+IElmIGF0IHRoaXMgcG9pbnQgcmVnaXN0ZXIgMCBj
YXB0dXJlcyBUWCB0aW1lc3RhbXAsIGFuZCBUWFRUXzAgaXMgc2V0IGJ1dCB3ZSB0aGluayBpdCBp
cyAwLg0KPiAJNC4gUmVhZCBISUdIIOKAkyB0aGlzIGNsZWFycyB0aGUgVFhUVF8wDQo+IAk1LiBS
ZWFkIExPVyBhZ2FpbiAsIG5vdyB0byBORVcuDQo+IAk2LiBORVchPU9MRCwgc28gd2UgZGV0ZWN0
IHRoaXMgaXMgYSB2YWxpZCB0aW1lc3RhbXANCj4gICAgICAgICAgICAgICAgNy4gUmVhZCBISUdI
IGFnYWluIGFuZCB1c2UgdGhlIHRpbWVzdGFtcA0KPiANCj4gTGV0IG1lIGtub3cgaWYgdGhpcyBh
ZGRyZXNzIHlvdXIgcXVlc3Rpb25zPw0KDQo+IFVuZm9ydHVuYXRlbHksIGl0IGRvZXNuJ3QuIFRo
ZSBxdWVzdGlvbiBpcyAid2hhdCB3aWxsIGhhcHBlbiB0byByZWdpc3RlciBhZnRlciBzdGVwIDc/
IiBUaGUgY29tbWVudCBhYm92ZSBzYXlzIGl0IHdpbGwgc3RheSBsYXRjaGVkIHVudGlsIExPVyBp
cyByZWFkLCB3aWxsIGl0IGFmZmVjdCBwZXJmb3JtYW5jZS9zdGFiaWxpdHk/DQoNCltBdmldIFRo
ZSBsb3cgYW5kIGhpZ2ggYXJlIGxhdGNoZWQgd2hlbiBhIHBhY2tldCAod2l0aCBhIHRpbWUgc3Rh
bXAgYml0IHNldCBpbiB0aGUgZGVzY3JpcHRvciApIHdhcyB0cmFuc21pdHRlZC4gDQpUaGV5IHdp
bGwgbm90IGNoYW5nZSB1bnRpbCBuZXh0IHRpbWUgU1cgd2lsbCBzZW5kIGEgbmV3IHBhY2tldCB3
aXRoIGEgdGltZSBzdGFtcCBiaXQgc2V0IGluIHRoZSBkZXNjcmlwdG9yIGZvciB0aGlzIHRpbWVz
dGFtcCByZWdpc3RlciAoMSBvZiA0KS4NCldoZW4gYSB0aW1lc3RhbXAgaXMgbGF0Y2hlZCwgdGhl
IGFzc29jaWF0ZWQgVFhUVF8qIGJpdCBpcyBzZXQgYW5kIGludGVycnVwdCBldmVudCBiaXQgaXMg
c2V0IChUU0lDUi5UWFRTKSAuDQpSZWFkaW5nIHRoZSBoaWdoIHBhcnQgb2YgYSB0aW1lc3RhbXAg
cmVnaXN0ZXIgY2xlYXJzIHRoZSBhc3NvY2lhdGVkIFRYVFRfKiBiaXQuDQpUaGUgSFcgYnVnIGlz
IHRoYXQgVFhTVE1QSF8wIChzcGVjaWZpY2FsbHkpIG11c3QgYmUgcmVhZCBhcyBwYXJ0IG9mIHRo
ZSBpbnRlcnJ1cHQgcm91dGluZSwgb3RoZXJ3aXNlIHRoZSBpbnRlcnJ1cHQgZXZlbnQgYml0IChU
U0lDUi5UWFRTKSB3aWxsIG5vdCBiZSBzZXQgYWdhaW4uDQoNClRoZSBwcm9ibGVtIGlzIGhvdyB0
byBrbm93IGlmIFRYU1RNUEgvTF8wIGNvbnRhaW4gYSBuZXcgdmFsaWQgdGltZXN0YW1wIG9yIGl0
IGlzIGFuIG9sZCB2YWx1ZSB0aGF0IHdhcyBhbHJlYWR5IHJlYWQuDQpJZiAgVFhUVF8wIGlzIDEs
IFRYU1RNUEgvTF8wIGNvbnRhaW4gYSBuZXcgdmFsaWQgdGltZXN0YW1wLiBUaGlzIHBhcnQgaXMg
c2ltcGxlLg0KSWYgIFRYVFRfMCBpcyAwLCBhbmQgdGhlbiB3ZSByZWFkIFRYU1RNUEhfMCwgd2Ug
Y2FuJ3QgYXNzdW1lIHRoYXQgaXQgaXMgb2xkIGJlY2F1c2UgaXQgaXMgcG9zc2libGUgdGhhdCBh
IG5ldyB0aW1lc3RhbXAgd2FzIGxhdGNoZWQgYmV0d2VlbiByZWFkaW5nIFRYVFRfMCBhbmQgcmVh
ZGluZyBUWFNUTVBIXzAuDQoNClRoZSAiYmVmb3JlIiBjb2RlIGlzIGEgd29ya2Fyb3VuZCBmb3Ig
dGhpcyBIVyBidWcuIFRoZSBXL0Egd2FzIG5vdCBwZXJmZWN0IGhlbmNlIHRoZSBuZXcgcGF0Y2gg
aXMgaW50ZW5kZWQgdG8gZml4IGl0Lg0KVGhlIG9yaWdpbmFsIFcvQSB3YXMgc29sdmluZyB0aGUg
Y2FzZSB3aGVyZSBhIG5ldyB0aW1lc3RhbXAgd2FzIGNhcHR1cmVkIGJldHdlZW4gc3RlcHMgMyBh
bmQgNC4NClRoZSBwcm9ibGVtIHdpdGggdGhlIG9yaWdpbmFsIFcvQSBpcyBpbiBjYXNlIHRoZSBu
ZXcgdGltZXN0YW1wIGlzIGNhcHR1cmVkIGJldHdlZW4gc3RlcHMgMiBhbmQgMy4NCg0KVGhlIHBh
dGNoIGNvbWVzIHRvIHNvbHZlIHRoaXMgbmV3IHJhY2UgY29uZGl0aW9uLg0KDQpUaGUgZXJyYXRh
IHdvcmRpbmcgYW5kIFcvQSBhcmUgZ2l2ZW4gYmVsb3cuDQpUaGUgbmV3IHBhdGNoIGlzIGp1c3Qg
YXNraW5nIHRvIGNoYW5nZSB0aGUgb3JkZXIgYW5kIHJlYWQgVFhTVE1QTF8wIGJlZm9yZSBSZWFk
IFRYVFRfMC0zIChpbiBUU1lOQ1RYQ1RMKSwgdG8gc29sdmUgdGhlIG5ldyBjb3JuZXIgY2FzZS4N
Cg0KSTIyNiBlcnJhdGEgKG5lZWQgdG8gdXBkYXRlIHdpdGggdGhpcyBjaGFuZ2UpOg0KMTU4OCBQ
VFA6IFRyYW5zbWl0IHRpbWVzdGFtcCBpbnRlcnJ1cHQgY2FuIGJlIG1pc3NlZA0KUHJvYmxlbTog
V2hlbiB0cmFuc21pdCB0aW1lc3RhbXAgaXMgY2FwdHVyZWQgaW4gb25lIG9mIHRoZSB0cmFuc21p
dCB0aW1lc3RhbXAgcmVnaXN0ZXJzIFRYU1RNUEgvTDAtMyAob2Zmc2V0cyAweEI2MTgg4oCTIDB4
QjZEQyksIGFuIGludGVycnVwdCBpcyByYWlzZWQgKFRTSUNSLlRYVFMpLiBPbmNlIFNXIHJlYWRz
IHRoZSB1cGRhdGVkIHRpbWVzdGFtcCBhY2NvcmRpbmcgdG8gb25lIChvciBtb3JlKSBvZiBUWFRU
XzAtMyBhc3NlcnRlZCBpbiBUU1lOQ1RYQ1RMIChvZmZzZXQgMHhCNjE0LCBiaXRzIDM6MCksIGFu
ZCBjbGVhcnMgdGhlIGludGVycnVwdCwgaXQgaXMgZXhwZWN0ZWQgdGhhdCBhIG5ldyB0aW1lc3Rh
bXAgY2FwdHVyZSB3aWxsIGFzc2VydCB0aGUgaW50ZXJydXB0IGJpdCBhZ2Fpbi4gSG93ZXZlciwg
dGhlIG5ldyBpbnRlcnJ1cHQgd2lsbCBhc3NlcnQgb25seSBpZiBTVyByZWFkcyBUWFNUTVBIXzAg
c3BlY2lmaWNhbGx5LCBhcyBwYXJ0IG9mIHRoZSBpbnRlcnJ1cHQgaGFuZGxlciAoZXZlbiBpZiBU
WFRUXzAgaXMgbm90IHNldCkuDQpJbXBsaWNhdGlvbnM6DQpUaW1lc3RhbXAgaW50ZXJydXB0cyBt
YXkgYmUgbWlzc2VkDQpXb3JrYXJvdW5kOg0KQSBzaW1wbGUgVy9BIHRvIGFsd2F5cyByZWFkIFRY
U1RNUEhfMCAob2Zmc2V0IDB4QjYxQykgaW4gdGhlIGludGVycnVwdCBoYW5kbGVyIGlzIG5vdCBn
b29kIGVub3VnaCBkdWUgdG8gcG9zc2libGUgcmFjZSBjb25kaXRpb24gc2luY2UgaXQgYWxzbyBj
bGVhcnMgVFhUVF8wLCBhbmQgcG90ZW50aWFsbHkgbWlzc2luZyBhIHRpbWVzdGFtcCB0aGF0IHdh
cyBqdXN0IGNhcHR1cmVkIGluIFRYU1RNUEgvTF8wLiBUaGlzIHNpbXBsZSBXL0EgY2FuIHdvcmsg
aWYgVFhTVE1QSC9MXzAgaXMgbmV2ZXIgdXNlZCwgYW5kIG9ubHkgVFhTVE1QSC9MXzEtMyBhcmUg
dXNlZC4NCklmIGFsbCBmb3VyIHRpbWVzdGFtcCByZWdpc3RlcnMgYXJlIHJlcXVpcmVkLCBTVyBj
YW4gZGV0ZWN0IHRoZSByYWNlIGNvbmRpdGlvbiBtZW50aW9uZWQgYWJvdmUgYnkga2VlcGluZyBh
IHJlY29yZCBvZiBUWFNUTVBMXzAgKG9mZnNldCAweEI2MTgpIGJlZm9yZSByZWFkaW5nIFRYU1RN
UEhfMC4gU28gdGhlIGludGVycnVwdCBoYW5kbGVyIHNob3VsZCBkbyB0aGUgZm9sbG93aW5nOg0K
UmVhZCBUWFRUXzAtMyAoaW4gVFNZTkNUWENUTCkgdG8gc2VlIHdoaWNoIHRpbWVzdGFtcCByZWdp
c3RlcnMgd2VyZSB1cGRhdGVkLg0KUmVhZCB0aGUgdGltZXN0YW1wIHJlZ2lzdGVycyBhY2NvcmRp
bmcgdG8gVFhUVF8wLTMuDQpJZiBUWFRUXzAgd2FzIG5vdCBzZXQ6DQotIFJlYWQgVFhTVE1QTF8w
IChzdWItc2Vjb25kIHBhcnQgb2YgdGltZXN0YW1wIDApLCBhbmQga2VlcCBhIHJlY29yZCBvZiBp
dC4NCi0gUmVhZCBUWFNUTVBIXzAgdG8gVy9BIHRoaXMgaXNzdWUtDQotIFJlYWQgVFhTVE1QTF8w
IGFnYWluLiBJZiBpdCBpcyBkaWZmZXJlbnQgZnJvbSBiZWZvcmUsIGl0IGluZGljYXRlcyB0aGF0
IGEgbmV3IHRpbWVzdGFtcCB3YXMganVzdCBjYXB0dXJlZCBpbiBUWFNUTVBIL0xfMC4gUmVhZCBU
WFNUTVBIXzAgYXMgd2VsbCBhbmQgdXNlIGl0Lg0KDQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbnRlbCBJc3Jh
ZWwgKDc0KSBMaW1pdGVkCgpUaGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250
YWluIGNvbmZpZGVudGlhbCBtYXRlcmlhbCBmb3IKdGhlIHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRl
ZCByZWNpcGllbnQocykuIEFueSByZXZpZXcgb3IgZGlzdHJpYnV0aW9uCmJ5IG90aGVycyBpcyBz
dHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQKcmVjaXBpZW50
LCBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGFuZCBkZWxldGUgYWxsIGNvcGllcy4K

