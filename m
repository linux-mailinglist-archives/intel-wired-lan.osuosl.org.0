Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F22ABB87FC0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Sep 2025 08:23:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E7C981DEB;
	Fri, 19 Sep 2025 06:23:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fFS4wB441G4U; Fri, 19 Sep 2025 06:23:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FC6C81D46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758263010;
	bh=dbj2c3NnhWWLXdjkKuLjZLgu62ZHGF1huJlE2NCp2ZU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XlhLsevaVcxQWpyj2PBCTs0fVCkJP3fkr9kLzpWoPD92X1AmefIpxQ8S9b5mdKxjX
	 Sru5Y0cdHFkrztNslXfn0Y1ed+z22dl9O31WEjksSiRQqCzg2bbqzsS6AkBxkoouqX
	 F+tZProcPIEg0Ly5f+0Q4yjfeLbsaRvUyThLcpWpUCFJ+rpDFAje1J3VA3sFIA3UeA
	 EJGZA8rUAxTzBbktzppJUZiLCQ9gWcguCXYnwaq8vtjC/nxEaLsXqoHMdUbCUv1iNb
	 wa4kBCkvSsTxo1aIX0LZhw/5ioeF6VYhOI6unPXC0JB7qSkxcw+pAqi2jETWYkTL2e
	 n9a7J9jZEMhUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FC6C81D46;
	Fri, 19 Sep 2025 06:23:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 863B1E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 06:23:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6C43E409F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 06:23:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qdqNGca4Ac7i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Sep 2025 06:23:28 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 19 Sep 2025 06:23:28 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2330240677
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2330240677
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=chwee.lin.choong@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2330240677
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 06:23:28 +0000 (UTC)
X-CSE-ConnectionGUID: ZTVDCPbOSg6lQQfH5Tesqw==
X-CSE-MsgGUID: j4d8KkAkTxC3Cj1/x5mnqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="72033678"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="72033678"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 23:16:20 -0700
X-CSE-ConnectionGUID: vhdVpaJzRimmMU78sAKdjA==
X-CSE-MsgGUID: 3XOZkN6fTvCoa4XKboAkYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="176557947"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 23:16:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 23:16:19 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 23:16:19 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.35) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 23:16:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IeCW4upZKW/1BuNsd1bfNW6STytsDmWRKka1UaY+mpAtDJt1wzUA7aRH0DFeijUWEep4jOvM8pw6EE5BO3wlvG6a3lj32ps3fOEsX0dZ3TTjBMQAxaVKrbSSFjcMRAWf7Hr5TWmdZMCOWQxB7xNibO1bzIVQ+E4CLQbXSqTo4Gq/rZm2Lu2294hK5BKqBiHDsFActIIaYC7yYRsO1IFWxQ+WpguW95zC/sHhVTjTL6MabFPTP3ZjoGltNtBtWRWqAoYhNLPwRhd3HUYC4JvTt/Nc5sbiZPlZ2MLXB5UM/GO2oPDGTozJ0tf42f3hz+ezdpw2FdZaVpzhS2hCavxNIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dbj2c3NnhWWLXdjkKuLjZLgu62ZHGF1huJlE2NCp2ZU=;
 b=O/asaZxhfysWWUcfU2xO+iafw+GlEF5spLUxZhbhAe+luD1R+hEke2CueIcB3A6o8YS9eHIq1crTlgQ4q7dvyIhtvnhWpQsvFg2/V5kEwmCVhigVef07fduOXJ59ac1mq8cn19bxoEltiN51Ea9u2x8ZpSktsycbTDJRDMf2qSSu7Xs0pW0QL9FzeaEBISo/EAHGQF2YxcL/mzVzp5xErt23xech+tDfbmOZz3xiZ6qNN7eoHs/HvL+A/dJ3XHSpd3yxhLYmIenSLim6qkJFS35YWhVsNiNFinx6aTXY8JdoepU8AyRIEGfgiVFEYhA4qLh39BKDK9e539RXxuo2JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF4422C5374.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::824) by BN9PR11MB5227.namprd11.prod.outlook.com
 (2603:10b6:408:134::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.16; Fri, 19 Sep
 2025 06:16:13 +0000
Received: from SJ5PPF4422C5374.namprd11.prod.outlook.com
 ([fe80::8eb9:c184:2364:c523]) by SJ5PPF4422C5374.namprd11.prod.outlook.com
 ([fe80::8eb9:c184:2364:c523%8]) with mapi id 15.20.9137.012; Fri, 19 Sep 2025
 06:16:13 +0000
From: "Choong, Chwee Lin" <chwee.lin.choong@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Shalev, Avi"
 <avi.shalev@intel.com>, "Song, Yoong Siang" <yoong.siang.song@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix race condition in
 TX timestamp read for register 0
Thread-Index: AQHcKLX+Out1guJz8EWZMUQ+pfGNwLSZ/cVg
Date: Fri, 19 Sep 2025 06:16:13 +0000
Message-ID: <SJ5PPF4422C5374EA58BEFC6B6CA1173E00DA11A@SJ5PPF4422C5374.namprd11.prod.outlook.com>
References: <20250918183811.31270-1-chwee.lin.choong@intel.com>
 <11e02598-3fc8-4350-91b7-5fc587a8cf6b@molgen.mpg.de>
In-Reply-To: <11e02598-3fc8-4350-91b7-5fc587a8cf6b@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF4422C5374:EE_|BN9PR11MB5227:EE_
x-ms-office365-filtering-correlation-id: c06c422a-e8f7-41bd-9af0-08ddf74408e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?bGNpUS9QVkpINXBWVEc0U0RNYnF6cVhuYU5SNG90V3NZcGNYMGQ5alhJTzdS?=
 =?utf-8?B?V2RmaEc4T2FTTWRrdnNYMmpJanFoajcyVTRWYTNnOGZTblFObW9oRWVyd1RR?=
 =?utf-8?B?WkN3QWtlU3JhTFhBbXBmSW5pOTNzU1RzaUJpMlR2bWxFbXY4aitWSmsrQUlx?=
 =?utf-8?B?TG9Ma3cyei9Wb1p0QU1abldSOVF3VHl4YzBuS3RadUczM09WTEJnQ0I0alJj?=
 =?utf-8?B?dlViZEZOdTFXUUdSdFRCQ0g5aGw3T3RUYS9pMFZwakc2UHIzTEwza3lOVEdH?=
 =?utf-8?B?UHNzNGtDSnZsZFN5cDVBT09wUTNDZmJNMDlWdkRValhXemRUUkNWSDVjNlJi?=
 =?utf-8?B?TGl0NzZCcHo5bm81WERYdFJsR3Z5YlJPMDJSNnl4anNYNUR2MHpzTW0xMmdX?=
 =?utf-8?B?ZlNqT2wxMkQ3bUlLQU9iRkUrVzAyWjRMamZCQjdCRGNJdWJxM2lrQTR1aCtx?=
 =?utf-8?B?UytkR2drWUNYckxESndvODMzT3BKdmhRbkNMQ0pkUUtMdHZweVBJckhWM043?=
 =?utf-8?B?bmVyK01OZjgzcGZUaU1WMnVZajVMK1R1emdiUTA5M1V6bzdLZ0Y4VWN4Qkoy?=
 =?utf-8?B?VmhYL0s3N3cwS3ZoWmlackt3OFFob3QxYUdDS3hxS2pUQzNON1YweEM4WnUw?=
 =?utf-8?B?ZlVtZTVTMlZzQ0x0ZkJnMEtKYjBiUkpnWUZ1enVFcGJ3N3dRdXUyZDJQYzcw?=
 =?utf-8?B?UUVDa0hpcUlOMmN6ams4cXFwbE1EdHlIY2U0K2dCSzBUNnUraXhSUE1EN1BU?=
 =?utf-8?B?djVEdGd3MTN1VFNUaXdJZGZJSTV4cjU1cnM3c3l5c2RHQTh6MEN0ZDlOTG1y?=
 =?utf-8?B?T0I3d3ZOSlFoRyt4WThzQ2txd2Fpb0hUakhRVVM5VjZuTXZaMGx4VERCUTJK?=
 =?utf-8?B?dEg0MFFTOWpkSDk3cStZclg2emFvSmkyWi9MbE9XckU1NmVLTVQ0TUJjTVIv?=
 =?utf-8?B?ZVBNekFNTXNYUVJGVUQ2cVhWQTdlLzFGR3pxSXdyL3Z2ZXUwQVkrMVI3UWpH?=
 =?utf-8?B?TEtydEEvZG1nMUE1YmFKbU1aVW9DNG1keks5alNqTXZwZWxuNFdkbFRCQnlo?=
 =?utf-8?B?NnRXRG1NQnNIb2lCTGNBSWhVdWNkVHFmNURFRDJvR0h4dmJGY1YyR2VXOHBW?=
 =?utf-8?B?T0I4alo5eDhWSmNrK1VtVnArTVRaQnZrSExLSWdmRjByVk45ZU1lOThUNVEy?=
 =?utf-8?B?RzFSYThMNHlQVGZDL2dhdWc4UEUydWthZ2xPb29adWhuVmF0SmpXdW1DZEFu?=
 =?utf-8?B?VWZrMEFqbDJEc1l2MHk0dTlubmY2S0JaMXl3YUM0dC9sZUN1bHJvWk9xa0NO?=
 =?utf-8?B?ckl2UmRYV1FLUVowL0V1OEJoVXVXTlNaSGdRcXppK2dFREhMMGwxY3RQZzZv?=
 =?utf-8?B?a0htSnAvVVpBSGlpZTYwNndscDRhTnhvZzZjUUhhVFZCbEFSaUlEUjdRbVBo?=
 =?utf-8?B?Z05BaWxSazgyU0xkdnpNRnc4SThhdS8xd09YTWgvM3VCK1E4Qk9SRHlVclNS?=
 =?utf-8?B?T2ZPS1hiV0g2MDloTnUyWUkrUnFIOVFkSkpkbFhTdGtEWnRLZ2xSeHlWbjFs?=
 =?utf-8?B?UFU3OGZlMkorcllxZVVEYnhIaGNVQmFaN1NtRWlRdXFRVUZPU3M1cTF5RTRr?=
 =?utf-8?B?MUVxcElXRG1tWGtMc0pGL3o5Z2NPUXhpQ2Q1Q1NhNU5waW9hMlJaTlpjeDJv?=
 =?utf-8?B?UnZOZjVSTTRIUkJsZWxCQ3EzVUdCa2ZRN2xLUXdBNndhb3pHUDZCOGg2amJX?=
 =?utf-8?B?Y2xKOCt1Y0k2TSt0NW9CYkIrejJ6QmpXTkRLY2JtcXVZbnFqanozVUhNNFBB?=
 =?utf-8?B?VTM0OVlMQ20xaHRhTmVOQUJPMXJRaWVsWDg2eVQ2empaMUVPbXlnRWlRaXBY?=
 =?utf-8?B?T2JRMEZuK0pKeU5ZK2NSUUJaZCszMmpFbUhYamxDVVpYbmYvckpWQ2RtRzIr?=
 =?utf-8?B?ai9QdHVzZTdvcnFvMEY1KzB6c2djTnRlblRRTWRVRmljWEM3VVpPcjJVa1pM?=
 =?utf-8?Q?Kov6P2CdLMR6qkzZ7QAEHlJuvLWgOs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF4422C5374.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UEl5Q09mRG5oVFozZTcyTGtmM3VpMGdBTkRrTlc0TTRNd3FweFRudlBxNVUr?=
 =?utf-8?B?cUhkTEU5TFBBbHBDZGlHS3ZzSXpVK2N1ZVhjczZHUFdDYXgxd3pyc0RUd09F?=
 =?utf-8?B?eHREbmd6bDlJSE9LRlpUTnVvYlVyRzdQSVV5ZkVqbC9VRnFtK05yNVVNT0gy?=
 =?utf-8?B?QXI3aVJuUDFhUEgrb0d4RDNOUW5RVFQ5YkFwMUc2elVKcFd6RGxDTjNGcDdu?=
 =?utf-8?B?TlphTjQ4WnpKenQ2eG5HdkRlSTBIR3AyR1dIZGZCYzRneW5JSHFwVW0wS0Yr?=
 =?utf-8?B?NFphK1hpR3BCeUJ3clhTZXY1VCtqWWVWSWZnMi9YSWYreHNrS1dqM080TUVl?=
 =?utf-8?B?Wm93b2FPMzJyMEI2SXU1Qkp4UWJENzBkTG10N3JJU29HOFJlbkdmU3ErcElu?=
 =?utf-8?B?MUxaakhDaDFnb01STHFhMXR5QWRlNGZvckY1UW9TR0pRZ1hnT2M1ODROTE5L?=
 =?utf-8?B?ekRjeHRBUEZjbjVxWmFXdmYxRVZFNlFnc3hlaWFBV0xKTnNTY0k0TktNdFlK?=
 =?utf-8?B?THRxa084OEowYktncERxcG05cFpuQnExRmVkZzRVOXNoaU9Xbk1OeDlOZm0w?=
 =?utf-8?B?NFBIQUlWeVJlNzN1c3lYVUt4NDVRM2VYUDg4VC9QbWZaUjlmRHV0RjJpemgy?=
 =?utf-8?B?R1Q5NUwxekV6SVBudVQvekdPaC80ZTNZUHRZMXgvWXhwa3AycENhS0FvWjBI?=
 =?utf-8?B?N1hKNkxBdyt0WDE4TE9GUXRhR1gzaldybzY2UWZmL1JLMXd1MFNkQVVMdDND?=
 =?utf-8?B?dEFLdG1ndkwzeGpHajB6Q0tUT0hVS1JBSFFlTk93SUtUYUc5UVptTlBMckha?=
 =?utf-8?B?MDd3QXJpQ1lFMWZlemZYRStoQ0ZMUVExSHl2NVczZlFWYXlaeG5CUy94b1lB?=
 =?utf-8?B?OUk1UmUrVTg2TGYxTGJJcnFYN2Y4azRBb2pNbjhBK2ZlUk5GNVAzN2c1cXpK?=
 =?utf-8?B?VWc2ZUdOLzBraTd3bGpDcEJaUytQOXAyWEcyc2s5eWxZMHZHZFpzWjdiQ2hT?=
 =?utf-8?B?aHRjSnVMcTR1eGdlVHgvMktHbjBBSDlKMzhxb3hBTlBuWFF4Q0doVlFDczgx?=
 =?utf-8?B?NFJUK1NudWl1Vy92bDJudkFYSmRQcFRYMlFEWUVBV2U0VFJSSTZEMFBqbVlQ?=
 =?utf-8?B?ekVBazNHL3Bvekc3ekVqM3JRWHBOQ0kwVXNEUTROUEZNRzhFNE9vL3diTnpq?=
 =?utf-8?B?YVlmZENuUlNmOWFIYVhBVXdSOElZOGpUSHJoRzF2NzRTL245KytLbzFUaHdu?=
 =?utf-8?B?TjBQWHd6amdzRTRsa25FU0IxaC9xQXpZeGM5Qk9aQTNETnVsRUtSK3UrNGJH?=
 =?utf-8?B?UnhqUDZLSWZIeW9mSzhJK1RwQmJMTG9uNXhKM1pPVDRWMDYrUGF3WkwzTTJv?=
 =?utf-8?B?Y05Nb1JFYytVUnRWNHgwYXc1M05YOUtGeHk5VjZNMVlrVlFrRFRRdHVZMmlz?=
 =?utf-8?B?aDk5Lzl0akJnMjJ4bld2b213WDYyajZLOUdKbmgwc0drby9ZaXg4b0pTWWJq?=
 =?utf-8?B?QW56NXdlc0p3a0FXYWJRN1FmYzJ3ZG1NRG5SSkh6OUp2b0lZVjlGWGhCaHlh?=
 =?utf-8?B?YjZYZ0NuM3g5T3pzMmZKV3U2c01TQjhvNkhoRy9QVmptTWtNbC9yeHdtMVlK?=
 =?utf-8?B?QlVnRUx5c2xYKzd2Q2FQSzhEUkx1SDJNWnFpMkJ5WFcrSG44K0YvMTRmVnZa?=
 =?utf-8?B?amdKd3hTZUVRL2x2QllnRTZla2s4UllaRk40VC85MUtyYW9VUzQra3dVZzF5?=
 =?utf-8?B?S2h1MVhSaE5GaXJ4NDIranVPR0I3MHJMaVA4ckovemhkc3QwK2ZNUElucFNi?=
 =?utf-8?B?dEFjUFY0RTdWdjduZ3ZZWXN6YWpZTGhKeUUwWCsvK0Raa3NLeHNGUE5TMXZa?=
 =?utf-8?B?Z2ZCNzdoYk9OcTcxck1LcTJhbWNjQ3JRQS9yVmtpRno0RDVFU1ZnakEwRHZW?=
 =?utf-8?B?MFFLcmQ1Mm9OV1IvWGVXQ01DQ3ZmdTdxTkFLZDVJdW4wUWRWbGlhR3dKTVp2?=
 =?utf-8?B?V3p0NU5Xa2QxdVhpbEZmQnYrMkcydlhXM0dCaE9RcjF6ZXdQelVMTVhLUThO?=
 =?utf-8?B?OWNEZFM1R3pSYUtwWTRXaE9sM085UEI1dkl0VTNqcHI3eTRaTnBBQmo4ZUNz?=
 =?utf-8?B?SXVKL2x3WXFlUjRZYXJNZGVuVENBSnB4MDMyb3BLMFBhVTNpOW1oUHdGcXVQ?=
 =?utf-8?B?ZWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF4422C5374.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c06c422a-e8f7-41bd-9af0-08ddf74408e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2025 06:16:13.5312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 53enL55rg+SImujB8R6gVBJTiUhhyvpwJ+RZMajpYkO4bpBpTEJwO8LgiF+wzNuOb/6DXugkxHjHCSDr1WKyXYSHbG3I7mAEtgGm05R3Rk4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5227
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758263008; x=1789799008;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dbj2c3NnhWWLXdjkKuLjZLgu62ZHGF1huJlE2NCp2ZU=;
 b=FnaKQX6sZGnQKVImMUiyVkwFfsStWOCxzZSFusowym6/ixmJ6KqWXqyA
 FFz0yGduw5KAjUa6qULCi3OXtfbuOdDx4BnwjCj9AyfE+1vNc8Uu7KOrI
 rFaP/2i4EE07houAIklx8XVQRb6/LP6tzrOIFTSb50ijqQLKHbVNntVd1
 z5VX2NtxiSK6qkkbR0/ktjc4fGtSCitsTl2ovlKxrsij5t91vfJscKO7i
 vu9knOCyGufUXMSGaZIsc0RbRVuv08FFm62whfAZpYMAgjQUKOWQXSwcj
 3NQmY3S7ekEusnqQyGRDiNopdytWzk9VWRtC9Pheej+FhIXxzNAIuSMG+
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FnaKQX6s
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

DQpPbiBGcmlkYXksIFNlcHRlbWJlciAxOSwgMjAyNSAxMjowMyBBTSwgUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4gd3JvdGU6DQo+RGVhciBDaHdlZS1MaW4sDQoNCkRlYXIgUGF1
bCwNCj4NCj4NCj5UaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guDQo+DQo+QW0gMTguMDkuMjUgdW0g
MjA6Mzggc2NocmllYiBDaHdlZS1MaW4gQ2hvb25nOg0KPj4gVGhlIGN1cnJlbnQgSFcgYnVnIHdv
cmthcm91bmQgY2hlY2tzIHRoZSBUWFRUXzAgcmVhZHkgYml0IGZpcnN0LCB0aGVuDQo+PiByZWFk
cyBMT1cgLT4gSElHSCAtPiBMT1cgZnJvbSByZWdpc3RlciAwIHRvIGRldGVjdCBpZiBhIHRpbWVz
dGFtcCB3YXMNCj4+IGNhcHR1cmVkLg0KPj4NCj4+IFRoaXMgc2VxdWVuY2UgaGFzIGEgcmFjZTog
aWYgYSBuZXcgdGltZXN0YW1wIGlzIGxhdGNoZWQgYWZ0ZXIgcmVhZGluZw0KPj4gdGhlIFRYVFQg
bWFzayBidXQgYmVmb3JlIHRoZSBmaXJzdCBMT1cgcmVhZCwgYm90aCBvbGQgYW5kIG5ldw0KPj4g
dGltZXN0YW1wIG1hdGNoLCBjYXVzaW5nIHRoZSBkcml2ZXIgdG8gZHJvcCBhIHZhbGlkIHRpbWVz
dGFtcC4NCj4NCj5SZWFkaW5nIHRoZSBUWFRUIG1hc2sgaXMgYHJkMzIoSUdDX1RTWU5DVFhDVEwp
YCwgY29ycmVjdD8NCj4NClllcywgcmQzMihJR0NfVFNZTkNUWENUTCkgaXMgdGhlIHJlYWQgb2Yg
dGhlIFRYVFQgbWFzayAoYml0cyBsaWtlIFRYVFRfMCwgVFhUVF9BTlkpLg0KDQo+PiBGaXggYnkg
cmVhZGluZyB0aGUgTE9XIHJlZ2lzdGVyIGZpcnN0LCB0aGVuIHRoZSBUWFRUIG1hc2ssIHNvIGEg
bmV3bHkNCj4+IGxhdGNoZWQgdGltZXN0YW1wIHdpbGwgYWx3YXlzIGJlIGRldGVjdGVkLg0KPj4N
Cj4+IFRoaXMgZml4IGFsc28gcHJldmVudHMgVFggdW5pdCBoYW5ncyBvYnNlcnZlZCB1bmRlciBo
ZWF2eSB0aW1lc3RhbXBpbmcNCj4+IGxvYWQuDQo+DQo+VGhlIHVuaXQgc2hvdWxkbuKAmXQgaGFu
ZywgZXZlbiBpZiB2YWxpZCB0aW1lc3RhbXBzIGFyZSBkcm9wcGVkPw0KPg0KVGhpcyBvbmx5IGhh
cHBlbnMgaWYgVFggdGltZXN0YW1waW5nIGlzIHJlcXVlc3RlZCBvbiBhbiBBRl9YRFAgemVyby1j
b3B5IHF1ZXVlLiANCkluIHRoYXQgY2FzZSB0aGUgZHJpdmVyIGhvbGRzIHRoZSBUWCBjb21wbGV0
aW9uIHVudGlsIHRoZSB0aW1lc3RhbXAgaXMgcmVhZHkgKG9yIHVudGlsIElHQ19QVFBfVFhfVElN
RU9VVCwgMTVzKS4NCkV4YW1wbGUgZGVidWcgb3V0cHV0Og0KDQpbMTQ2MzIwLjI4ODY3Ml0gaWdj
IDAwMDA6MDE6MDAuMCBlbnAxczA6IEJsb2NraW5nIGNsZWFudXA6IFhTSyB0aW1lc3RhbXAgcGVu
ZGluZyBvbiBkZXNjIGlkeD0wLCBhZ2U9MTU4ODkgbXMNClsxNDYzMjAuMjg4NjgxXSBpZ2MgMDAw
MDowMTowMC4wIGVucDFzMDogVHggdGltZXN0YW1wIHRpbWVvdXQNClsxNDYzMjAuMjg4Njk5XSBp
Z2MgMDAwMDowMTowMC4wIGVucDFzMDogRGV0ZWN0ZWQgVHggVW5pdCBIYW5nDQpbMTQ2MzIwLjI4
ODY5OV0gICBUeCBRdWV1ZSAgICAgICAgICAgICA8MD4NClsxNDYzMjAuMjg4Njk5XSAgIFRESCAg
ICAgICAgICAgICAgICAgIDxkNjE+DQpbMTQ2MzIwLjI4ODY5OV0gICBURFQgICAgICAgICAgICAg
ICAgICA8ZDYzPg0KWzE0NjMyMC4yODg2OTldICAgbmV4dF90b191c2UgICAgICAgICAgPGQ2Mz4N
ClsxNDYzMjAuMjg4Njk5XSAgIG5leHRfdG9fY2xlYW4gICAgICAgIDxkZTM+DQpbMTQ2MzIwLjI4
ODY5OV0gYnVmZmVyX2luZm9bbmV4dF90b19jbGVhbl0NClsxNDYzMjAuMjg4Njk5XSAgIHRpbWVf
c3RhbXAgICAgICAgICAgIDwxMDhiM2ZiMmY+DQpbMTQ2MzIwLjI4ODY5OV0gICBuZXh0X3RvX3dh
dGNoICAgICAgICA8MDAwMDAwMDAyYzM0Y2U3Nj4NClsxNDYzMjAuMjg4Njk5XSAgIGppZmZpZXMg
ICAgICAgICAgICAgIDwxMDhiNDM4YzA+DQpbMTQ2MzIwLjI4ODY5OV0gICBkZXNjLnN0YXR1cyAg
ICAgICAgICA8MjAwMDAxPg0KDQo+RG8geW91IGhhdmUgYSByZXByb2R1Y2VyPw0KPg0KVGhlIGlz
c3VlIGNhbiBiZSByZXByb2R1Y2VkIHdpdGggdGhlIExpbnV0cm9uaXggUlRDLXRlc3RiZW5jaCwg
ZS5nLiBieSBydW5uaW5nIGEgUHJvZmluZXQgdGVzdCB3aXRoIHB0cDRsIChub24tWERQKSBydW5u
aW5nIGNvbmN1cnJlbnRseSB3aXRoIFRzbkhpZ2ggdHJhZmZpYyBvbiBhbiBBRl9YRFAgemVyby1j
b3B5IHF1ZXVlIHdpdGggVFggaGFyZHdhcmUgdGltZXN0YW1waW5nIGVuYWJsZWQuDQpodHRwczov
L2dpdGh1Yi5jb20vTGludXRyb25peC9SVEMtVGVzdGJlbmNoDQoNCj4+IEZpeGVzOiBjNzg5YWQ3
Y2JlYmMgKCJpZ2M6IFdvcmsgYXJvdW5kIEhXIGJ1ZyBjYXVzaW5nIG1pc3NpbmcNCj4+IHRpbWVz
dGFtcHMiKQ0KPj4gU3VnZ2VzdGVkLWJ5OiBBdmkgU2hhbGV2IDxhdmkuc2hhbGV2QGludGVsLmNv
bT4NCj4+IFNpZ25lZC1vZmYtYnk6IFNvbmcgWW9vbmcgU2lhbmcgPHlvb25nLnNpYW5nLnNvbmdA
aW50ZWwuY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogQ2h3ZWUtTGluIENob29uZyA8Y2h3ZWUubGlu
LmNob29uZ0BpbnRlbC5jb20+DQo+PiAtLS0NCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdjL2lnY19wdHAuYyB8IDEwICsrKysrKysrLS0NCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYw0KPj4gYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jDQo+PiBpbmRleCBiN2I0NmQ4NjNiZWUuLjkzMDQ4NmIw
MmZjMSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2Nf
cHRwLmMNCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMN
Cj4+IEBAIC03NzQsMTAgKzc3NCwxNyBAQCBzdGF0aWMgdm9pZCBpZ2NfcHRwX3R4X3JlZ190b19z
dGFtcChzdHJ1Y3QNCj5pZ2NfYWRhcHRlciAqYWRhcHRlciwNCj4+ICAgc3RhdGljIHZvaWQgaWdj
X3B0cF90eF9od3RzdGFtcChzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0ZXIpDQo+PiAgIHsNCj4+
ICAgCXN0cnVjdCBpZ2NfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Ow0KPj4gKwl1MzIgdHhzdG1wbF9v
bGQ7DQo+PiAgIAl1NjQgcmVndmFsOw0KPj4gICAJdTMyIG1hc2s7DQo+PiAgIAlpbnQgaTsNCj4+
DQo+PiArCS8qIFJlYWQgdGhlICJsb3ciIHJlZ2lzdGVyIDAgZmlyc3QgdG8gZXN0YWJsaXNoIGEg
YmFzZWxpbmUgdmFsdWUuDQo+PiArCSAqIFRoaXMgYXZvaWRzIGEgcmFjZSB3aGVyZSBhIG5ldyB0
aW1lc3RhbXAgY291bGQgYmUgbGF0Y2hlZA0KPj4gKwkgKiBhZnRlciBjaGVja2luZyB0aGUgVFhU
VCBtYXNrLg0KPj4gKwkgKi8NCj4+ICsJdHhzdG1wbF9vbGQgPSByZDMyKElHQ19UWFNUTVBMKTsN
Cj4+ICsNCj4+ICAgCW1hc2sgPSByZDMyKElHQ19UU1lOQ1RYQ1RMKSAmIElHQ19UU1lOQ1RYQ1RM
X1RYVFRfQU5ZOw0KPj4gICAJaWYgKG1hc2sgJiBJR0NfVFNZTkNUWENUTF9UWFRUXzApIHsNCj4+
ICAgCQlyZWd2YWwgPSByZDMyKElHQ19UWFNUTVBMKTsNCj4+IEBAIC04MDEsOSArODA4LDggQEAg
c3RhdGljIHZvaWQgaWdjX3B0cF90eF9od3RzdGFtcChzdHJ1Y3QgaWdjX2FkYXB0ZXINCj4qYWRh
cHRlcikNCj4+ICAgCQkgKiB0aW1lc3RhbXAgd2FzIGNhcHR1cmVkLCB3ZSBjYW4gcmVhZCB0aGUg
ImhpZ2giDQo+PiAgIAkJICogcmVnaXN0ZXIgYWdhaW4uDQo+PiAgIAkJICovDQo+PiAtCQl1MzIg
dHhzdG1wbF9vbGQsIHR4c3RtcGxfbmV3Ow0KPj4gKwkJdTMyIHR4c3RtcGxfbmV3Ow0KPj4NCj4+
IC0JCXR4c3RtcGxfb2xkID0gcmQzMihJR0NfVFhTVE1QTCk7DQo+PiAgIAkJcmQzMihJR0NfVFhT
VE1QSCk7DQo+PiAgIAkJdHhzdG1wbF9uZXcgPSByZDMyKElHQ19UWFNUTVBMKTsNCj4+DQo+DQo+
S2luZCByZWdhcmRzLA0KPg0KPlBhdWwNCg0KQmVzdCByZWdhcmRzLA0KQ0wNCg==
