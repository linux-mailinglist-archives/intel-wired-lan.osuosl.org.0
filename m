Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF9A9D147D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 16:32:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 417804018B;
	Mon, 18 Nov 2024 15:31:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MWBHV3kstyqC; Mon, 18 Nov 2024 15:31:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10605401F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731943915;
	bh=fGkejxy3/o+Lr+63xTPkWk4LpBFeCzbVCZwkpgdm5gI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R5A+3k+QPHW8TNKDBLTCNEMzss8uIJM42caxGMOs6pDSaGx+kjG9jCLFYBRp4eOiK
	 0vT/hSQ0J5jWQPIkq6tPAXp3F5zNhvZCNLkS9HQaDbAduQW6oeeuLaRdrhFZAVI1MP
	 mv0AkGlbTqtzkd/TtznjnHyt1xTKit139l3AYEvdrRZdnUUk+3Io4BmhYt0Bq/luPM
	 W+GDgERggl0+OHzc1Rb0cokhBBeFHnLa5nRELvoEkWf2MwKsypbYMTqD4Xtr2qsxKZ
	 jE4snAlMPCbi/9YwOzUzCPuVJ2QP5r6SWmZPS9T2s0bCYZ+1gXA20vrt98t2tk1dVq
	 Dxu8mfXc8AqRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10605401F5;
	Mon, 18 Nov 2024 15:31:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CDCEEDB3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:31:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A7D37615E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:31:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i-KnkrROg9ws for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 15:31:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B5C65608A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5C65608A3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B5C65608A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 15:31:51 +0000 (UTC)
X-CSE-ConnectionGUID: Er6QYmVERtG2TRzyjZ7lDQ==
X-CSE-MsgGUID: wVLDAUzmSrOMKgxLEKnDTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="31843885"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="31843885"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 07:31:51 -0800
X-CSE-ConnectionGUID: BwcEM9TfRbWRjE/2w0bSog==
X-CSE-MsgGUID: AivxTmUjQZu03uXQLKkYWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="120118151"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Nov 2024 07:31:51 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 18 Nov 2024 07:31:50 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 18 Nov 2024 07:31:50 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 18 Nov 2024 07:31:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=frWCRclAIaS+8nEGp/llIYi2pFk3WiEoCLggKiLej6x4xApmCksfUor9rn3zAWhudouYJavlHSzbOj0yBW1WvJcD16WF2j93ilF1PLnMPkqFqnareltSk5K+P+JKZneILrIJIFTjHNGLAOcEW9D7WcBP3U5wtk2VfNrszalWICNcf/AeVCT+paZ0UJyKqPOrzSJD0fydDNow1Rwd4SoBQehxCU/ROh4noMyjQqKPnTIu0sRLOmgriBdLcLi2Hlvg6E+U6s/h0vDV37jFes/COvKAQAAQRGEH2uIfF7uy6BoQp++wfB7KLleQddaWkYmhwa83HE90FQV1KJMpbuLxOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fGkejxy3/o+Lr+63xTPkWk4LpBFeCzbVCZwkpgdm5gI=;
 b=r9WxKFBSxYsq9jayn2FmsLLeB8DvtDi2kUpdSPzV+eFxrcgw+E2CfSdAsqGseSMjbvdndDFAGAV8K43J0tWLHE1EfoNnwuBBg6YaZCun1lpPe1A69nJDjmUTbjUXHgRT/MXDyMzNg6tv348I+ixymV/LjIpxle1tquCxGTF5CcB1h6puaS6Vk9wNn784FkIF+WA0rTicHV6sJenSYo0mnv7ASOU8Qp3qgwGjlLTAMAi4V1YI9cui3L9Ylcfn4DywSzPhWhDbfnwyVlYuC2q2/E4dqNFojqIu+xuCpjt//widlimeZXv4I1Cd0dYYm+kfXh+jWvi76e+zoF3rpnBICg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5885.namprd11.prod.outlook.com (2603:10b6:510:134::22)
 by IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Mon, 18 Nov
 2024 15:31:47 +0000
Received: from PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e]) by PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e%6]) with mapi id 15.20.8158.019; Mon, 18 Nov 2024
 15:31:47 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
Thread-Topic: [PATCH iwl-net 09/10] idpf: add support for Rx timestamping
Thread-Index: AQHbNeOo5ggllrMxeEWiLzNKathEw7K3QscAgAXvCWA=
Date: Mon, 18 Nov 2024 15:31:47 +0000
Message-ID: <PH7PR11MB5885EAC3A3687F97267F072E8E272@PH7PR11MB5885.namprd11.prod.outlook.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-10-milena.olech@intel.com>
 <67366352c2c5b_3379ce29475@willemb.c.googlers.com.notmuch>
In-Reply-To: <67366352c2c5b_3379ce29475@willemb.c.googlers.com.notmuch>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5885:EE_|IA0PR11MB7378:EE_
x-ms-office365-filtering-correlation-id: 9ea61123-4eca-4f83-f210-08dd07e61d64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MHI0N2MzOEJ5SkdMVjJyRTJPSWVuUG8zUXJ6ZGthRy9jVks5TUYxMVMzcm4w?=
 =?utf-8?B?cU1DendSMW9kdlYzV3puOTRvak9lN21QdDlEQVJSVW1CWHZQR2lGSjF1SzM4?=
 =?utf-8?B?TFF1NTNkVENRVjFaYWxTeWpQNzdJRXZSK09jZm05QTRzbktrcEJNOGorbmI1?=
 =?utf-8?B?RFAybFhKMkRTSWtqQ2pWQjhsakVMTVF1em8zMms5b05MNUR5UG8zWjVmcWZU?=
 =?utf-8?B?cXZ4STFFYVAxbFJGWDc5TmNZVGFJUExNYnZVNjBKOUhrSHBIWTRMd3ZyMXho?=
 =?utf-8?B?L0lPaHhFVU5pdjR1Y0ZmWGVTVklXaUIyNmNDSU9uUXpvTVZPVnh6bzFnK0pp?=
 =?utf-8?B?NHcwNEJQcll2NGdmREhxMzR6ZzRZK1ZycUJMd0pzaFR1bXA5S3VPSkhUbE9B?=
 =?utf-8?B?NytveEc4WllJUFZuSDFZK0tlYlZwd20zZnh6M0QvNldGQXRnQVdtUURQTzgz?=
 =?utf-8?B?NWQ1MTNnc2l1ajdIWk13eUQ0ZXRSekZkaGxUR3gxOHJ4MHBORVJpazZUakxN?=
 =?utf-8?B?MlI5c05JQ244RDFRVE1ETXo5MTJkRTRKMFNXSGdtRVNtTzdxRkIyNkVkMGd0?=
 =?utf-8?B?QnZXeEdFKy9tZ2wrc29hYkpqRjJnRGJSVXRuYlVDKzBLLzFpWHlScVVzTFJu?=
 =?utf-8?B?S1ZYVGhLOVpQZURGeDZ4b2VNS2J0WEs5dmg5S1NsQzUxSUQvVTRTVVN2NlB5?=
 =?utf-8?B?MnRvMzRLV3NzWUR1RjhianFxNGpkRmZsQ28vREIzbTN5SmJwMDBpMGJ0UUZR?=
 =?utf-8?B?cDk4cGpPQnZraWovdllmUlQvcGpLcWNkc1NRbjdoYVpaU2pseTZLWldiMWR1?=
 =?utf-8?B?eitpRGtWc3JRWjRsY0Fwc0M5aWV2QlhrK0IzV3RxN0JldGttYVpkMXZWMmkx?=
 =?utf-8?B?dUdPa3F2SHJ3eWVKRmc1N21sdm03eC9RVGxmZzRyakhkK1hjbU9NTE1ZZC90?=
 =?utf-8?B?MUZIRmt3cFpjcUh3Z2JtTjBYejdTYThnMFU4d21PYnBFLy9KMUd3Tm8zWWhl?=
 =?utf-8?B?SU1RdVVKdVNBeWE3S0hvSTZTeTVONnRZK2FvcUhtVVNFbzBaNnBtWTU1WTRK?=
 =?utf-8?B?dm9QVTQ5MUJxdGZLaHZJZkJVOGIzdC9GT0psalI5SWJNMDdScTVVeFBHMTBs?=
 =?utf-8?B?MWQwR0VPU3N6TlBocFA3QmFkcUdDcXN2RDVNcllaa0x4dDBTWXA1VGlyakFN?=
 =?utf-8?B?RktVR2ZyRnBNUzFEMHpjdDhmTmM0Rk52N0xUa2t6eDJieEtqU0lPWE96YVE3?=
 =?utf-8?B?U0pRVklQNHdEL2FDMkdneG5VRmxjM0dSUjVtRVRYUGl1SHBlRUh6NFRrWmZv?=
 =?utf-8?B?ZVFtUTJ5Y2VTeEpvSHBKZ3EzdlVtM2VLYWZoWkthOUNFdW95Nno0WjNyWTJZ?=
 =?utf-8?B?RzBNK3ltNVlXckVuYkpocGxGMExTNkxSMjFDZjM5czF3SmFKaWZaUmoxWUxr?=
 =?utf-8?B?S202WWk4SXFkWmlzVjRQWnZEaGtEdTQzeVJKRCtEd2lENVRhV1l6QkJHYVVQ?=
 =?utf-8?B?OWoyMjJnUmIvbVNwRHZxRHViQzZaS2FneEpoNGl1Z1JEcVpZRzZCMWp5Uk4w?=
 =?utf-8?B?SEVFdGVLUWJiOEFxV1FIZjNKUWN5UGdLam5BM20vUjR5azlwTHVBc2Y4QmJX?=
 =?utf-8?B?VXZycGIydmYvTkNMMEpVSDJjMDJNWWNqTFlpZVFKbUlXbjFMMVFEdGszWDE1?=
 =?utf-8?B?ZFBXMUU5OHM5clREckd4UVcvUHBVMFFQVDVBM2pGK1pzeUV1WThid0J2Q0wy?=
 =?utf-8?B?YUZRY3RUNFVyRnpBUDhoQitLQitoYXhRTVB1R29jYzQ1TjNaSmlKOXZsVXYw?=
 =?utf-8?Q?BjRzPeMXuFcSj+qvqToWz3g9i23V2Gm6Zx2vk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5885.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VGh4VzRldU93OGZ5cEVMOU1DckU1V1RuRVEzdVJ1eU40WlFoV0Fma1JQV3RI?=
 =?utf-8?B?WHRmQXBMT2Z3NW9PY2pUazBTMXhTL3hha2Y3YzFvalM3aEp0THJmVk1jTGNK?=
 =?utf-8?B?QXZObmM1cTRyaGZQKzlERUJmVG1EYW45ZjFuQ0Rsc0FucHVPakh3MFVXeWpY?=
 =?utf-8?B?ZHpRcTFQdWhZQ1lSb0xreDg3Q1BORnpaOEpSbStYU0tmYTNYZGZ6SEU0WUxK?=
 =?utf-8?B?Wi9iNmhpSGRyYXdad3krZWhaTCtZQzFXeTVyODk4V003RUtNa0NwUjRqUkNr?=
 =?utf-8?B?VEpCRnljSEl5SFFSaGJNQkcxeE1PeGljbitOVVNUbm1CU0drQ0hOR0FtV3po?=
 =?utf-8?B?NGVzakRMdjc5MmtNZW5QNHpQUk04QmU2SEgxWHNwYW9oczVBYUtJZ3NsSVpR?=
 =?utf-8?B?alRwYkFibTdDc3JZOHdGZ3BmWGF2Zjgydmk1Rm11Z1hUQ2NYYlZ6YUdLbnZh?=
 =?utf-8?B?enBFS2tINmU4SGN1S1dvYVRSU0ZIanNsdHhXQjhrZUg3RTdWMFQwZytjZXVT?=
 =?utf-8?B?R3dtNTdQVE96OHBTa3htTEVKY3VpYVdFL1licUNNbHJYNXJSdVdzS1h0VVV0?=
 =?utf-8?B?M2JYamg3SVNJRS92UU92T0ltc1VZN2h6UkZsMnJIRjJkU0daVzNnaS9PNGs1?=
 =?utf-8?B?L2dCUHpWRnZabXZ4T0RPUTVURjhuZDErNXhZaThiaHYyMXlldXV3TGF6TXE5?=
 =?utf-8?B?RmFmRlN6YU5tcnhuRHFLSTlXK3l2NGFiOGZrZkhUMC9xbGdCUFhweXN2cGt0?=
 =?utf-8?B?NDBoUUVCK3hDbTdFaExkTUh0dlRvZExQR2I0WVV2UEJUbExselIxTnNFTTly?=
 =?utf-8?B?aDdZSXl4VmRZTzd4aHpvZXM1T1J6WThCTzBnOHNaWDJaQ1loeUM3VUpTbmNM?=
 =?utf-8?B?ZEFka2RUM3ZZdEhHSGYzdW5GQWhySkVndWtNYmZzWnhIbXp4NUZTZGxsb2tP?=
 =?utf-8?B?RU5oZThRcUZCOWZKd2JCTkJMUUk3NkJ3MG1hZ3lZNGZrMHZ3WEdpaFQxdCt1?=
 =?utf-8?B?REUvMVNJeXY2Qk94VFZ6SU4xK21mQXN3VVZJTzdJaVVSeUQwQ3JudVBFN2p5?=
 =?utf-8?B?Y0U0eEo0VGFyOHB5S3JrK2pLM2JJVkZEd1ZkTlRMRWl3RWdIMzJCNVRiVDY5?=
 =?utf-8?B?UmM0cG9OQnNQaHVLT3A1ZlZIU1VaaWxkVmVmUmY5QXZwdFo5MThoWWY3VnNN?=
 =?utf-8?B?bkZTQ2QvVVJVU25tV2llY0krd2gwdTBQOGhXaFd1bERlSmhCOGZCVDkwekhL?=
 =?utf-8?B?bHdSNHFJeW9oWFBnamZDUnZmSi9qV09aVXhmV0t0MktxQmtJRU1MR0pWUllD?=
 =?utf-8?B?UjhZdlRwbzA4TnlzK29iMUNPeGdLQVdJUjA2aURPWkNmQ1FEK1hxR0VyNVNK?=
 =?utf-8?B?WEFVdFYyTXdiY24zdXRjc2Y1UkxvdWNGQWZvNjQxbXBVZENqQUNuZUlOOWtQ?=
 =?utf-8?B?ZFNRZmNzMGt5QlhNbGppOHFEQld5TVpFdU5ISUduQzZNYzhIb1Q0RVpXUVZO?=
 =?utf-8?B?VTEwRFRnUEhFclVja2crQzRKaS84amt0d2J1MUVKWWQ5Q09QTTRWWFhqa1hy?=
 =?utf-8?B?N2R1QnFLQ0ZjSk81OHVrZ05Wb29xUGg3YjZJMHAvM3plaEJjcGNtOXJZR1RR?=
 =?utf-8?B?RFZyanZpVVVvbGlWSHh3bm5jYkhCN0hxeGdBKzZhSWc0aXc3RkQvQkx1Q25J?=
 =?utf-8?B?RG0reWhKQ3kvWmVYRTFwbHF0ZC9icDZqVkNJckt6VUo3c1VkRnE1Q2hjOERQ?=
 =?utf-8?B?M1lQMG1sSEh3dTI3cDJyRHBHZ2p0ZllMZEo4MXFheHo2M1BHci9iZ0x6SHdt?=
 =?utf-8?B?czdEQzFmTnZCV0xOUmNzMHhDaXJtZmF6N1dwamw4cm1JQ0MvWFloTXJ2VFZY?=
 =?utf-8?B?N2tpc2FuSytrbllaQWtsOEhvVUdCQlBaOFMyb3ArWEg3Y0JVbjcxdlRmSm56?=
 =?utf-8?B?VlU0VGRSam1mdFNIM1hSYlp0WHFySDRrRnFkM3dtamgrenFpcG9GWkgxSmVU?=
 =?utf-8?B?SzdDaE1uYS90dG9JWGpvd2x5Z0J5bVdDVkEzQUxIL0lWeGNDa3BsMkhsMndi?=
 =?utf-8?B?TlFzbzI5RDVabjkrcHBQSEF4enI3eUZDbHhQZmJxV1VodW41OTJPWWtXQXBW?=
 =?utf-8?Q?Lt2+fiDfLIwvTm00cQBqsGulm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5885.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ea61123-4eca-4f83-f210-08dd07e61d64
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2024 15:31:47.2940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tJzlSIfKcVJwKCBD7OweyWBgZ8BGQNJFuQkY/Gi3ZS6epTHUv0u1TymZ3icgDOH1kObtjvg3t6TCHLWEaDHDXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7378
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731943912; x=1763479912;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fGkejxy3/o+Lr+63xTPkWk4LpBFeCzbVCZwkpgdm5gI=;
 b=jZA7wG15CIjfjIs0cjT4L07lj+LFve0fGpzTAOIqGQlmW7yMEo4KLlIE
 mCt3mexi/HvXTGqS04e+atMySpcPLqYMMHJJtbcxhZn29CtAo+jdPv1jk
 84dvxOqhFCCsqDwE0UDzNhNDiX4BOViaZnvKOEx80oOkSTErogkjluQ1S
 n21N/hr8Z+QfFD9/RPRSK0syH4pS0ZA+kGY0Xpq7kfqmDNDjnvsqr6nkw
 ZVRHpmNV00az23GEf+U+Fu/CiXlS44jUnscO88QpsjA6oNs1nLpbDhnsS
 OyKnA7YbXyccp78Q4RAXKYKoIug+vVAxn2PZvTPl7wB3cgh6Q4CO3erTE
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jZA7wG15
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 09/10] idpf: add support for
 Rx timestamping
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

T24gMTEvMTQvMjAyNCA5OjU0IFBNLCBXaWxsZW0gZGUgQnJ1aWpuIHdyb3RlOg0KDQo+IE1pbGVu
YSBPbGVjaCB3cm90ZToNCj4gPiBBZGQgUnggdGltZXN0YW1wIGZ1bmN0aW9uIHdoZW4gdGhlIFJ4
IHRpbWVzdGFtcCB2YWx1ZSBpcyByZWFkIGRpcmVjdGx5IA0KPiA+IGZyb20gdGhlIFJ4IGRlc2Ny
aXB0b3IuIEFkZCBzdXBwb3J0ZWQgUnggdGltZXN0YW1wIG1vZGVzLg0KPiA+IA0KPiA+IFJldmll
d2VkLWJ5OiBBbGV4YW5kZXIgTG9iYWtpbiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWxlbmEgT2xlY2ggPG1pbGVuYS5vbGVjaEBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9wdHAu
YyAgfCA3NCANCj4gPiArKysrKysrKysrKysrKysrKysrKy0gIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lkcGYvaWRwZl90eHJ4LmMgfCANCj4gPiAzMCArKysrKysrKysgIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl90eHJ4LmggfCAgNyArLQ0KPiA+ICAzIGZpbGVzIGNo
YW5nZWQsIDEwOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfcHRwLmMgDQo+ID4g
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfcHRwLmMNCj4gPiBpbmRleCBm
MzQ2NDJkMTA3NjguLmY5Zjc2MTNmMmE2ZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfcHRwLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZHBmL2lkcGZfcHRwLmMNCj4gPiBAQCAtMzE3LDEyICszMTcsNDEgQEAgc3Rh
dGljIGludCBpZHBmX3B0cF9nZXR0aW1leDY0KHN0cnVjdCBwdHBfY2xvY2tfaW5mbyAqaW5mbywN
Cj4gPiAgCXJldHVybiAwOw0KPiA+ICB9DQo+ID4NCj4gPiArLyoqDQo+ID4gKyAqIGlkcGZfcHRw
X3VwZGF0ZV9waGN0aW1lX3J4cV9ncnAgLSBVcGRhdGUgdGhlIGNhY2hlZCBQSEMgdGltZSBmb3Ig
YSBnaXZlbiBSeA0KPiA+ICsgKgkJCQkgICAgIHF1ZXVlIGdyb3VwLg0KPiANCj4gV2h5IGRvZXMg
ZWFjaCByZWNlaXZlIGdyb3VwIGhhdmUgYSBzZXBhcmF0ZSBjYWNoZWQgdmFsdWU/DQo+IFRoZXkn
cmUgYWxsIGNhY2hlcyBvZiB0aGUgc2FtZSBkZXZpY2UgY2xvY2suDQoNClRoYXQncyBjb3JyZWN0
IC0gdGhleSBhbGwgY2FjaGVzIHZhbHVlcyBvZiB0aGUgc2FtZSBQSEMsIGhvd2V2ZXIgSSB3b3Vs
ZA0KbGlrZSB0byBoYXZlIGFuIGVmZmVjdGl2ZSBtZXRob2QgdG8gYWNjZXNzIHRoaXMgdmFsdWUg
aW4gaG90cGF0aCB3aGVyZQ0KSSdtIGV4dGVuZGluZyB0aGUgUnggdGltZXN0YW1wIHZhbHVlIHRv
IDY0IGJpdC4NCg0KRm9yIHRoZSBzYW1lIHJlYXNvbiBJIGNhY2hlZCBUeCB0aW1lc3RhbXAgY2Fw
cyBpbg0KaWRwZl92cG9ydF9pbml0X2Zhc3RfcGF0aF90eHFzLg0KDQo+DQo+ID4gKyAqIEBncnA6
IHJlY2VpdmUgcXVldWUgZ3JvdXAgaW4gd2hpY2ggUnggdGltZXN0YW1wIGlzIGVuYWJsZWQNCj4g
PiArICogQHNwbGl0OiBJbmRpY2F0ZXMgd2hldGhlciB0aGUgcXVldWUgbW9kZWwgaXMgc3BsaXQg
b3Igc2luZ2xlIHF1ZXVlDQo+ID4gKyAqIEBzeXN0aW1lOiBDYWNoZWQgc3lzdGVtIHRpbWUNCj4g
PiArICovDQo+ID4gK3N0YXRpYyB2b2lkDQo+ID4gK2lkcGZfcHRwX3VwZGF0ZV9waGN0aW1lX3J4
cV9ncnAoY29uc3Qgc3RydWN0IGlkcGZfcnhxX2dyb3VwICpncnAsIGJvb2wgc3BsaXQsDQo+ID4g
KwkJCQl1NjQgc3lzdGltZSkNCj4gPiArew0KPiA+ICsJc3RydWN0IGlkcGZfcnhfcXVldWUgKnJ4
cTsNCj4gPiArCXUxNiBpOw0KPiA+ICsNCj4gPiArCWlmICghc3BsaXQpIHsNCj4gPiArCQlmb3Ig
KGkgPSAwOyBpIDwgZ3JwLT5zaW5nbGVxLm51bV9yeHE7IGkrKykgew0KPiA+ICsJCQlyeHEgPSBn
cnAtPnNpbmdsZXEucnhxc1tpXTsNCj4gPiArCQkJaWYgKHJ4cSkNCj4gPiArCQkJCVdSSVRFX09O
Q0UocnhxLT5jYWNoZWRfcGhjX3RpbWUsIHN5c3RpbWUpOw0KPiA+ICsJCX0NCj4gPiArCX0gZWxz
ZSB7DQo+ID4gKwkJZm9yIChpID0gMDsgaSA8IGdycC0+c3BsaXRxLm51bV9yeHFfc2V0czsgaSsr
KSB7DQo+ID4gKwkJCXJ4cSA9ICZncnAtPnNwbGl0cS5yeHFfc2V0c1tpXS0+cnhxOw0KPiA+ICsJ
CQlpZiAocnhxKQ0KPiA+ICsJCQkJV1JJVEVfT05DRShyeHEtPmNhY2hlZF9waGNfdGltZSwgc3lz
dGltZSk7DQo+ID4gKwkJfQ0KPiA+ICsJfQ0KPiA+ICt9DQo+ID4gKw0KPiANCj4gPiArLyoqDQo+
ID4gKyAqIGlkcGZfcHRwX3NldF9yeF90c3RhbXAgLSBFbmFibGUgb3IgZGlzYWJsZSBSeCB0aW1l
c3RhbXBpbmcNCj4gPiArICogQHZwb3J0OiBWaXJ0dWFsIHBvcnQgc3RydWN0dXJlDQo+ID4gKyAq
IEByeF9maWx0ZXI6IGJvb2wgdmFsdWUgZm9yIHdoZXRoZXIgdGltZXN0YW1wcyBhcmUgZW5hYmxl
ZCBvciANCj4gPiArZGlzYWJsZWQgICovIHN0YXRpYyB2b2lkIGlkcGZfcHRwX3NldF9yeF90c3Rh
bXAoc3RydWN0IGlkcGZfdnBvcnQgDQo+ID4gKyp2cG9ydCwgaW50IHJ4X2ZpbHRlcikgew0KPiA+
ICsJdnBvcnQtPnRzdGFtcF9jb25maWcucnhfZmlsdGVyID0gcnhfZmlsdGVyOw0KPiA+ICsNCj4g
PiArCWlmIChyeF9maWx0ZXIgPT0gSFdUU1RBTVBfRklMVEVSX05PTkUpDQo+ID4gKwkJcmV0dXJu
Ow0KPiANCj4gU2hvdWxkIHRoaXMgY2xlYXIgdGhlIGJpdCBpZiBpdCB3YXMgcHJldmlvdXNseSBz
ZXQsIGluc3RlYWQgb2YgcmV0dXJuaW5nIGltbWVkaWF0ZWx5Pw0KPiA+ICsNCj4gPiArCWZvciAo
dTE2IGkgPSAwOyBpIDwgdnBvcnQtPm51bV9yeHFfZ3JwOyBpKyspIHsNCj4gPiArCQlzdHJ1Y3Qg
aWRwZl9yeHFfZ3JvdXAgKmdycCA9ICZ2cG9ydC0+cnhxX2dycHNbaV07DQo+ID4gKwkJdTE2IGo7
DQo+ID4gKw0KPiA+ICsJCWlmIChpZHBmX2lzX3F1ZXVlX21vZGVsX3NwbGl0KHZwb3J0LT5yeHFf
bW9kZWwpKSB7DQo+ID4gKwkJCWZvciAoaiA9IDA7IGogPCBncnAtPnNpbmdsZXEubnVtX3J4cTsg
aisrKQ0KPiA+ICsJCQkJaWRwZl9xdWV1ZV9zZXQoUFRQLCBncnAtPnNpbmdsZXEucnhxc1tqXSk7
DQo+ID4gKwkJfSBlbHNlIHsNCj4gPiArCQkJZm9yIChqID0gMDsgaiA8IGdycC0+c3BsaXRxLm51
bV9yeHFfc2V0czsgaisrKQ0KPiA+ICsJCQkJaWRwZl9xdWV1ZV9zZXQoUFRQLA0KPiA+ICsJCQkJ
CSAgICAgICAmZ3JwLT5zcGxpdHEucnhxX3NldHNbal0tPnJ4cSk7DQo+ID4gKwkJfQ0KPiA+ICsJ
fQ0KPiA+ICt9DQo+IA0KPiA+ICtzdGF0aWMgdm9pZA0KPiA+ICtpZHBmX3J4X2h3dHN0YW1wKGNv
bnN0IHN0cnVjdCBpZHBmX3J4X3F1ZXVlICpyeHEsDQo+ID4gKwkJIGNvbnN0IHN0cnVjdCB2aXJ0
Y2hubDJfcnhfZmxleF9kZXNjX2Fkdl9uaWNfMyAqcnhfZGVzYywNCj4gPiArCQkgc3RydWN0IHNr
X2J1ZmYgKnNrYikNCj4gPiArew0KPiA+ICsJdTY0IGNhY2hlZF90aW1lLCB0c19uczsNCj4gPiAr
CXUzMiB0c19oaWdoOw0KPiA+ICsNCj4gPiArCWlmICghKHJ4X2Rlc2MtPnRzX2xvdyAmIFZJUlRD
SE5MMl9SWF9GTEVYX1RTVEFNUF9WQUxJRCkpDQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiAr
CWNhY2hlZF90aW1lID0gUkVBRF9PTkNFKHJ4cS0+Y2FjaGVkX3BoY190aW1lKTsNCj4gPiArDQo+
ID4gKwl0c19oaWdoID0gbGUzMl90b19jcHUocnhfZGVzYy0+dHNfaGlnaCk7DQo+ID4gKwl0c19u
cyA9IGlkcGZfcHRwX3RzdGFtcF9leHRlbmRfMzJiX3RvXzY0YihjYWNoZWRfdGltZSwgdHNfaGln
aCk7DQo+ID4gKw0KPiA+ICsJKnNrYl9od3RzdGFtcHMoc2tiKSA9IChzdHJ1Y3Qgc2tiX3NoYXJl
ZF9od3RzdGFtcHMpIHsNCj4gPiArCQkuaHd0c3RhbXAgPSBuc190b19rdGltZSh0c19ucyksDQo+
ID4gKwl9Ow0KPiANCj4gU2ltcGxlcjogc2tiX2h3dHN0YW1wcyhza2IpLT5od3RzdGFtcCA9IG5z
X3RvX2t0aW1lKHRzX25zKTsNCg0KVGhhbmtzLA0KTWlsZW5hDQo=
