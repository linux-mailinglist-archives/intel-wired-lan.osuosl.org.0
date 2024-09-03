Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5C796A646
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 20:14:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EB10607A7;
	Tue,  3 Sep 2024 18:14:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H8e0ipnjAVVc; Tue,  3 Sep 2024 18:14:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A44496077F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725387243;
	bh=I9qxsi2zUTRU/+FDW6VhS1GUHSyl2c3ZksyRhS8LYL0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Im4TjeUqKZPFPuWay2m5yHl2mYy3eWCcGuSV3B3PbJgtOmJLhm+rJC29ZxcCuY7OI
	 79LQzquomqps9A98PUHdS+C7xgLX7gftvtkqFQW6LJmEaeYV7cSO3OXqY7v70WuW2s
	 uyWkI/GoxfW9I1QTmgpEzBJ6SKk4Lk+OfRhvv3KvU7kSxwozcKZO7q1SuHxcti/BTv
	 ztqO5KNovjE2erBJ3NWyLlxzwwf3B8klfxcFYe8u/itiBTTnYpRU7Mebvu7kda5FYK
	 8ljhLJO+eeIRayKTBTTlkD0hZzTHPyQ4Vf6tUhcYZrYgWjraAY8QurRdEZ1kCkZka6
	 zXP2UqiJ5LyhA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A44496077F;
	Tue,  3 Sep 2024 18:14:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58A181BF356
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 18:14:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 43826404E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 18:14:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bI3KlvxZ7kyp for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 18:14:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D223E400C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D223E400C7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D223E400C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 18:14:00 +0000 (UTC)
X-CSE-ConnectionGUID: kxgA2Fg0QqOSdqrEpaTwWA==
X-CSE-MsgGUID: r0/6HVvQTpqx1MQQP5D2dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27762267"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="27762267"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 11:13:59 -0700
X-CSE-ConnectionGUID: Ws9Cb/aNRjm4uEVBHKhndQ==
X-CSE-MsgGUID: mTb5gslgRQGYSUIsKAqq1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="65228082"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 11:13:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 11:13:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 11:13:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 11:13:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vvWTfdR8y+0cvNF51GnIyOOgahNGQdjMQA53O7X9bthqUScut61H+FWHN5JelyoR90gwrW4LEyvsydQamBovC7HchOKskDv8v21GxNZwNm0vmOIdoJfAZPpU79NMifO/RHlLFwH4EFOVNeT3umSCcGKPZbIPYGZK3KNkKRZ6QU857zxuBOrGvGSm07JaXlgbywmaoHWVlZ1KXzF01fEhYCqD82xKXzfoN8oZj9NQtMqfCjJR+YbxuzMS/QfVTdIFc85nwY1MapvaEcDPwtfNJYQnYXY1jjwhv7Eyvmxk2N6SSRzqU3zVU3gtjmvPr3IFBZrMJ1PqIKvIcO5DBBiEQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I9qxsi2zUTRU/+FDW6VhS1GUHSyl2c3ZksyRhS8LYL0=;
 b=TJVud1Q1DID0pr1J02WuOXzxcf2UKWaDEyTn5k82zDPx98v6/J4k/wK3J6zIt2lpyUxehokFqN1RoqSW+p/eqUnysUZAbLuHmEUIkM1qa4HkOjpGtC7Z8bP6V9oShu4mKVcU6wA3EaiVsCA2mVN5hP+E1aVjFtTSb1YOCdiEiJXVJb3ZLRbMk1RvWpzwk7YvMapG+CjxaEcPElYUJSuV8JLonfw91SGP9knExVkm8NuwVH7agAWIjbl3HBHe2hV/nIEWqVKU5zCpI/brRvdnbik5GelOIYA+2ZHk5XyiLVNLTDIng2yVF3u5qyrG2liRIznG17yWq/qhFGdkWZYMcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH7PR11MB7497.namprd11.prod.outlook.com (2603:10b6:510:270::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Tue, 3 Sep
 2024 18:13:56 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 18:13:56 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: mschmidt <mschmidt@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] i40e: add ability to reset
 vf for tx and rx mdd events
Thread-Index: AQHa+xLFE+hHXP8jHEmej6nLA7aeI7JEgPGAgAHh+zA=
Date: Tue, 3 Sep 2024 18:13:56 +0000
Message-ID: <SJ0PR11MB586669F98C3D6D4544EA9E32E5932@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240830192807.615867-1-aleksandr.loktionov@intel.com>
 <CADEbmW17Sa6BGpUF0FAVW2Hwq-mKQ0b-2a+L8cS9aRm9=SqUYA@mail.gmail.com>
In-Reply-To: <CADEbmW17Sa6BGpUF0FAVW2Hwq-mKQ0b-2a+L8cS9aRm9=SqUYA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH7PR11MB7497:EE_
x-ms-office365-filtering-correlation-id: 08e3aba3-dab3-4d17-5b3e-08dccc442cd9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VHJLSGJTcjZOd0Z3Ky9WQ1JScW1abXZnMjlTMGZ6dUZBdFdvZEJWc1MzUXJ2?=
 =?utf-8?B?UTVDaWQ3dUJveVNyOXhNb3p2enc2RzNrNFhBbXN2Q2VCS0l2N2F0K2tpTnJQ?=
 =?utf-8?B?UG03M1laejZKekpkdWZCcDcyTFMwb051RTdJS05VQmZNaDlmT2x4Q3BRaEhZ?=
 =?utf-8?B?NGZpVWZzN0ZrYllCUnRPUG1sQkgrdUI1WnVrNGVEbWdXdlIvWmF5Si8wekJ6?=
 =?utf-8?B?ampaSk9EY0k4L3ZvSjZiMmlKenpwZmdaeFBuRzl3QTBPZ3NWWmxMOGRGVlN1?=
 =?utf-8?B?encwM3QxTjU0dTluSW5xRzY1djFkdm5jcmxXUDdLNWFoZlFKRjVZN2IxNit3?=
 =?utf-8?B?WUdJUHhzMVRreGluYTFCR3BUWlRmVkxZc2FGQ0E5L2FlUDA4bjM4SWxhd3Z1?=
 =?utf-8?B?SzRqY1FKc1A3U3Bqb29nVE1RbE80N21zd0NOZStvNkxHaHhWS3A2dVd3TnUx?=
 =?utf-8?B?Ni9NZElQK2tPM2E1bXZ6UmUxQkdobWxlWkRDWXhkSnpQNnFhZlRyRXBkQ0hU?=
 =?utf-8?B?SUpkc21ZNnZtL2Z5ZVlmcWd0ZDF2U1F0aW4wM2pWVkl0QU9zMzZXVG5VVk5C?=
 =?utf-8?B?dXptcE1BSi9qTmFORFNTQ2FsZms5S2JzWFAvN3VMMXRFRjNYamp2QUQ1bjUz?=
 =?utf-8?B?SzJoZzB1VHA2UVp2d05QKzM0T1RJNVpQeWhURHh6eEM2cXdYRXY2aktlMUFD?=
 =?utf-8?B?RXQ0dGgyelprWW1FY1ZJTlN4aXRINmQ5aThHS0FQR2ZQN1NvZzNURm55Ly8r?=
 =?utf-8?B?RWtFcy9BcElScFVkRGl1QjFoSXdmUmZ1dEhaQUx5bWJhejdWNzEzZk9jRU5H?=
 =?utf-8?B?ampZUDh3VjZyeFVFQnpsM0lpa01IRWNzdjNSQ2pyaG84MExnclJScSthb2hM?=
 =?utf-8?B?dDBwQmdLY0NGbmhIS0xrYXRhQWtQWDVBcHRBNks0VTQvOFh3YUNBSGNzRWVT?=
 =?utf-8?B?a1NaZWlqU0RtMW9Wd040UmZMbEZjbGExV2VvSW9VczNuQW50dHNaM0ZuMVda?=
 =?utf-8?B?YXdqUmVJenlXa2cyWjNVMnNsUmN0Tjh6eG9TYkFOaVVpbitnVDZWOXkrQnJa?=
 =?utf-8?B?YlIvejlXbUN2Z3U2Yzd2V0E1WnZrcExYUHZrdkVqWjRROVZKQWVCM2xvOS83?=
 =?utf-8?B?OVJiR1BkRXFlL1FXZXNyWHdTZ1RXZjdobkVZQzVzZEF2cUQzWi9IRTE0U083?=
 =?utf-8?B?ZE1PNnJFMVVkMkJ0SUprS2FjRHdpdENJM0dMRGRZYzFCM1d6WTc5RFZSWWM3?=
 =?utf-8?B?TVIxYWN3RkF5MEU2Z0U0eEpYMXBQVkxBMi9TYjlKUldVVisxdG9kL0l2SU91?=
 =?utf-8?B?RlEvdWtXRWphc0xmcWtUSmY3WnFyQlV3d1drdHNuLytZNTdDYnd6NkNOQjJu?=
 =?utf-8?B?Rnc4WUZoUXQyTC9Kdnphbk1LNVlLOTFFSXFaMlZwTkNzeFNlY0hEdEJzcUxV?=
 =?utf-8?B?cEcyNXZqcS9BV08rTGp2WWZDeXBVd2NybjBTeHZCRk1LZTlHMnpLaW9lWGpS?=
 =?utf-8?B?dXVWL1dZK1BpY0RoN0g4QStmbHM1YkJybThaY3I3QmMycElqUEVic3Z6NVE2?=
 =?utf-8?B?bHF1QWpIZkFQMkJWK2F2bjNLb3JManQyQVNkK0s0QXRtRU51dFNheXB5aFdT?=
 =?utf-8?B?a2FrYzNUTDJJWit5alpGK0ErVFVac2ZMQ1F5blpoMk1SY3ErYThaWURuNU5o?=
 =?utf-8?B?R1Q5NEhxdUxTU0xoSHJnUy9UbjJ5SVNaS0dUTjZWWjFERUs3NTB1Z3BHOTF1?=
 =?utf-8?B?VnVJYVFqOFhTZ0RWZXRGMFV6WFUveGt0S3RpRC8rN2tjb3p6Mlp4b3EwVmFY?=
 =?utf-8?B?M0NLNmdRUStpK2FlM3JRbUE4aTZHTzJGc2U1RDNZYy9BS2pHNmZsTEZXSUNM?=
 =?utf-8?B?T255S202ZXd2bTV2SjVzV2QwaSt6akVYaDg2OXd6T3ZISEE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aTZMOEtNRnMwZEdoMjJJRkFZdGQ3ZWxaMVNtN3A2VWQzRWZWYVBYVWlXbndK?=
 =?utf-8?B?SFJqOWZTdllNcHJLeURVblVTWWlMV2o3dVNaVmJma0U4TkxqRUx4WjAxVmQ5?=
 =?utf-8?B?d0UzSllhbkVZOStzTEJGVzgva2crV2NQNWVXa3FESm1EcS9NZE5kc3g5U1JP?=
 =?utf-8?B?VHFKRkRHVGd4QW45YWNVMUt5WkhtMUdKTHA4bWNlL1RuM0lONk0ydlBiWkx0?=
 =?utf-8?B?U21XMDZBTjV6V3VTenYvc3VCRVdWZDVoK1BSTzBrYmFXYlIwV3hRTnREeU1r?=
 =?utf-8?B?dGlqSHpjZzdQVFk2eitxZGFtYkZpYXpsVDFOMnhCUHFSVWI1bDFNc2Fpc090?=
 =?utf-8?B?VDhORUVXa3VodHB2dkI2MjV4QzAwbE1ERU40QWRocFl1MzRZbFR1RjB5S3kv?=
 =?utf-8?B?TCtVNnhjeE8vZlpjbEpoRHY3YVg1WCs2clREaWt2V2NxVjNBMmdoeFRvTnUr?=
 =?utf-8?B?cEUrYkp0UFlCdEJUQ3BNK081MkNIaEo5VmVtNHlrVktLbVBUeWtqQWhWNGdU?=
 =?utf-8?B?eUNBcTJqcEs5cFpjNncxNzVsOFoxei9kbUt3V0FiZ0ZJVzkrLzlPMU5oWVVZ?=
 =?utf-8?B?TEVzSTZkMXZwSUU3UldHUkdxOTlvRHYycGRlOGFqU1dpb29qTzhRbFpwT3Nk?=
 =?utf-8?B?dFRQMm9pcGhiS2RaYXRydG55aFV5bzdhUGQrUjVDUEhyWGhuTEViVDNueUp1?=
 =?utf-8?B?WVYrZmpwMEx5RFd2NVBhOVd1U1o5NXg1M3pVcnk3Zk5oQXJuNjhTSUhiMnl3?=
 =?utf-8?B?YlhId1IxMmZySXdCOXpTNkR2c2lvbS8wQW5TS2hLdEFUdWJZYit2c3FWaENL?=
 =?utf-8?B?SGNkNG8xOCtEcHFOUHN1dWE3eDdTb3Q0YmQzK3hoUGxMV3FpOVZ6K1YyU0hR?=
 =?utf-8?B?Q1NkOHYyWGRaK0o4N3NXckVrSllmclZaMy9maVo3NTNYOXM0SmJqUXM3NVVS?=
 =?utf-8?B?cWVnVytaYktYNkx4NTlGaVdVSzJNeVcxd2NjSTlBWFZoQmZadHA2akFzem9Z?=
 =?utf-8?B?UnU4NldjdHF3aGtjVlhVU2NoU0ZrZHpVWldQNDJqQkJiUXI1Qjc2S0o5QUxX?=
 =?utf-8?B?aXFybUZHUlRodWJLUDlEbXNueUd2TnJ3ZEg5UEpDdlhJcFloVjIrdXlybnFh?=
 =?utf-8?B?UnhrNktyRi9JT0d5clRTZ1NRbE95Y1NOR216U2FHTERhRlprMjUzV0xUN0hW?=
 =?utf-8?B?ejYxd1NxYmJCOGlNWWZlVEVtQVhkakdCcjBxMFI3OWJPQmcwYkNlSWxUMERT?=
 =?utf-8?B?cjJCbnliN3pFSU1xVi81NXVuK01JU3ZrMDQxenNvb1lGaGgxTXRqcnNwaTVM?=
 =?utf-8?B?QzN1L09FSHMvWHRFZGQzVW5pTDJFRnpRSmNRZSs4S3pDTVFzZXlVUXltbUhP?=
 =?utf-8?B?Ni9OUi9mSU5yTWxnTDRZV0o5U1VTRUtkcGFEbjBEaTAyVVlxdFljVG05Wm1w?=
 =?utf-8?B?Y09PT1pkZ0lnQ3kxa0JSVi9UM0VGOVdCakdCYzJyb1pxYjBiQndrY25Db2xX?=
 =?utf-8?B?cS80RVJqU1RGRUpyMVpuRXpyV1cwUXl6NFlROWs4N2hnRDlwNkw4S01NSUxD?=
 =?utf-8?B?b2ZxTnpCZnBIeWJzUmRGMFZNbEdYUVZFQXJlK1YyOUtmay9mb1RrVStWVEFx?=
 =?utf-8?B?MEFLNkZDZUVNNWJkdm5PYUtTTW5sdm04K3o0TUxhdEhaeXQ2NzFyTGxMN0pk?=
 =?utf-8?B?K2RoVVlaUFQwMlFkZTZXUTd0RFlIZHd5eWk0MUJMLzZtSjk3UmhQZ3M2VnZa?=
 =?utf-8?B?SFpjT29vK3l3YXVBRnBvTHRJVmN6Z0xYSmxPZTRMeWJaUm9MMkhjbmlNTDlp?=
 =?utf-8?B?TmxveEQwN0FtRndFMTB3OXl1NS9JZGpYanlCbEl1OUJkRkNjTFQ2VlBuM0Iw?=
 =?utf-8?B?N09wVThUcElGdSsxa0ZLOEdBSDBrbzBnVDhTZjJodEVyMC9BZW9sVmVjYkR2?=
 =?utf-8?B?MXhkdUJXZXFyeENHenZNOU9HMDJ4eUVnc084QUUrT0dRVkVmdjkvWWhZQ3ow?=
 =?utf-8?B?TDIydE9YVk84Um9hYlRhTWN1c21kM0JHYitReXhjMHRpREhpNWlXMjdWcFRE?=
 =?utf-8?B?R0xKaTY3Y3htd3VSRUJOWXQ4VmVIVWNDdDRxWXV5YUVITXpHTndseTh4S2xU?=
 =?utf-8?B?dG1zU2JoS2JsNG8xZ0ZacGRJS3pRc3VEWjVNSkJGZFl0WDk2S2VQMkN4M01X?=
 =?utf-8?B?OGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08e3aba3-dab3-4d17-5b3e-08dccc442cd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 18:13:56.1750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I8IZTuRbpcllYvh7aksshf/vMzGAIx70ZFVe+uc8gzp8ccfTV+NhzvIyxum/s/qUUkfViZw5eejTiL1CejK7LJLfjW12Fa5VMggvVlRr/LI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7497
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725387241; x=1756923241;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I9qxsi2zUTRU/+FDW6VhS1GUHSyl2c3ZksyRhS8LYL0=;
 b=S82h5wNb6GqDFJoWk4GDJFFosRDubN2k61StSKP5PhEk9QUPGulz4/Zp
 Z7Zcrvia4YVwmeTq8OPyx+XuA8VOtL6IvG0OQ6SVVVYAM7D7rVJqWZiFQ
 72Mg6CXnUWS7zK/DSEqyI2tS2ZAM3iNOPXEj73Rbs3fR81anz+nu1Ef+E
 Oo9aHfOXK1AM4Ru3j7dHdz/hBiZF2AthZgoIrEq27HC8otZKV3DNH3IzI
 AisHHnN3u1lkgVL2aYCNUKcIkv1TDL0KbEKXykznrsy3hW/qZd8n0StX7
 cJbPgQ9CKfvKwiMJwT2IY5hvysDY06XiSpdg2HkZOILydHe8/4wTPCeKZ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S82h5wNb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: add ability to
 reset vf for tx and rx mdd events
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Sokolowski,
 Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Connolly, Padraig J" <padraig.j.connolly@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWljaGFsIFNjaG1pZHQg
PG1zY2htaWR0QHJlZGhhdC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgU2VwdGVtYmVyIDIsIDIwMjQg
MzoyNSBQTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IE5ndXll
biwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IG5ldGRldkB2Z2Vy
Lmtlcm5lbC5vcmc7IFNva29sb3dza2ksIEphbg0KPiA8amFuLnNva29sb3dza2lAaW50ZWwuY29t
PjsgQ29ubm9sbHksIFBhZHJhaWcgSg0KPiA8cGFkcmFpZy5qLmNvbm5vbGx5QGludGVsLmNvbT4N
Cj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2M10gaTQw
ZTogYWRkIGFiaWxpdHkNCj4gdG8gcmVzZXQgdmYgZm9yIHR4IGFuZCByeCBtZGQgZXZlbnRzDQo+
IA0KPiBPbiBGcmksIEF1ZyAzMCwgMjAyNCBhdCA5OjI44oCvUE0gQWxla3NhbmRyIExva3Rpb25v
dg0KPiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+IHdyb3RlOg0KPiA+DQo+ID4gSW4g
Y2FzZXMgd2hlbiB2ZiBzZW5kcyBtYWxmb3JtZWQgcGFja2V0cyB0aGF0IGFyZSBjbGFzc2lmaWVk
IGFzDQo+ID4gbWFsaWNpb3VzLCBzb21ldGltZXMgaXQgY2F1c2VzIHR4IHF1ZXVlIHRvIGZyZWV6
ZS4gVGhpcyBmcm96ZW4gcXVldWUNCj4gPiBjYW4gYmUgc3R1Y2sgZm9yIHNldmVyYWwgbWludXRl
cyBiZWluZyB1bnVzYWJsZS4gV2hlbiBtZGQgZXZlbnQNCj4gPiBvY2N1cnMsIHRoZXJlIGlzIGEg
cG9zaWJpbGl0eSB0byBwZXJmb3JtIGEgZ3JhY2VmdWwgdmYgcmVzZXQgdG8NCj4gPiBxdWlja2x5
IGJyaW5nIHZmIGJhY2sgdG8gb3BlcmF0aW9uYWwgc3RhdGUuDQo+ID4NCj4gPiBDdXJyZW50bHkg
dmYgaXF1ZXVlcyBhcmUgYmVpbmcgZGlzYWJsZWQgaWYgbWRkIGV2ZW50IG9jY3Vycy4NCj4gPiBB
ZGQgdGhlIGFiaWxpdHkgdG8gcmVzZXQgdmYgaWYgdHggb3IgcnggbWRkIG9jY3Vycy4NCj4gPiBB
ZGQgbWRkIGV2ZW50cyBsb2dnaW5nIHRocm90dGxpbmcgLyogYXZvaWQgZG1lc2cgcG9sdXRpb24g
Ki8uDQo+ID4gVW5pZnkgdHggcnggbWRkIG1lc3NhZ2VzIGZvcm1hdHMuDQo+ID4NCj4gPiBDby1k
ZXZlbG9wZWQtYnk6IEphbiBTb2tvbG93c2tpIDxqYW4uc29rb2xvd3NraUBpbnRlbC5jb20+DQo+
ID4gU2lnbmVkLW9mZi1ieTogSmFuIFNva29sb3dza2kgPGphbi5zb2tvbG93c2tpQGludGVsLmNv
bT4NCj4gPiBDby1kZXZlbG9wZWQtYnk6IFBhZHJhaWcgSiBDb25ub2xseSA8cGFkcmFpZy5qLmNv
bm5vbGx5QGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiAgUGFkcmFpZyBKIENvbm5vbGx5
IDxwYWRyYWlnLmouY29ubm9sbHlAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFsZWtz
YW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiA+IC0tLQ0K
PiANCj4gVGhhbmtzLCB3ZSBuZWVkIHRoaXMuIGljZSBoYXMgdGhlIHNhbWUgYWJpbGl0eS4NCj4g
SnVzdCBvbmUgcXVlc3Rpb24gYWJvdXQgdGhlIHBhdGNoOg0KPiANCj4gWy4uLl0NCj4gPiAgc3Rh
dGljIHZvaWQgaTQwZV9oYW5kbGVfbWRkX2V2ZW50KHN0cnVjdCBpNDBlX3BmICpwZikgIHsNCj4g
PiAgICAgICAgIHN0cnVjdCBpNDBlX2h3ICpodyA9ICZwZi0+aHc7DQo+ID4gICAgICAgICBib29s
IG1kZF9kZXRlY3RlZCA9IGZhbHNlOw0KPiA+ICAgICAgICAgc3RydWN0IGk0MGVfdmYgKnZmOw0K
PiA+ICAgICAgICAgdTMyIHJlZzsNCj4gPiAgICAgICAgIGludCBpOw0KPiA+DQo+ID4gLSAgICAg
ICBpZiAoIXRlc3RfYml0KF9fSTQwRV9NRERfRVZFTlRfUEVORElORywgcGYtPnN0YXRlKSkNCj4g
PiArICAgICAgIGlmICghdGVzdF9hbmRfY2xlYXJfYml0KF9fSTQwRV9NRERfRVZFTlRfUEVORElO
RywgcGYtDQo+ID5zdGF0ZSkpDQo+ID4gKyB7DQo+IA0KPiBPSywgdXNpbmcgdGVzdF9hbmRfY2xl
YXJfYml0IGlzIGdvb2QsIGJ1dCAuLi46DQo+IA0KPiBbLi4uXQ0KPiA+DQo+ID4gICAgICAgICAv
KiByZS1lbmFibGUgbWRkIGludGVycnVwdCBjYXVzZSAqLw0KPiA+ICAgICAgICAgY2xlYXJfYml0
KF9fSTQwRV9NRERfRVZFTlRfUEVORElORywgcGYtPnN0YXRlKTsNCj4gDQo+IEhlcmUgdGhlIGJp
dCBpcyBjbGVhcmVkIGFnYWluLiBXaHk/DQo+IA0KSGUgY29kZSB3aXRoIGNsZWFyX2JpdCgpIGlz
IGxlZ2FjeSBhbmQgPjd5IG9sZC4gU28gSSBjYW4gZ3Vlc3MgaXQncyB0byBhdm9pZCByYWNlIGNv
bmRpdGlvbi4NClRoaXMgcGF0Y2ggaW50cm9kdWNlZCBuZXcgZnVuY3Rpb25hbGl0eSB3aXRob3V0
IGNoYW5naW5nIGxlZ2FjeSBjb250cm9sIGZsb3csIGFuZCBoYXMgYmVlbiB0ZXN0ZWQgaW4gT09U
IGRyaXZlci4gDQpJZiB5b3UgaGF2ZSBzdWdnZXN0aW9ucyBpbiBjb250cm9sIGZsb3cgY2hhbmdl
IEknZCBzdWdnZXN0IHRvIG1lcmdlIHRoaXMgcGF0Y2ggZmlyc3QgYW5kIHRoZW4gdHJ5IHRvIHJl
ZmFjdG9yLg0KV2hhdCBkbyB5b3UgdGhpbms/DQoNCj4gPiAgICAgICAgIHJlZyA9IHJkMzIoaHcs
IEk0MEVfUEZJTlRfSUNSMF9FTkEpOw0KPiA+ICAgICAgICAgcmVnIHw9ICBJNDBFX1BGSU5UX0lD
UjBfRU5BX01BTF9ERVRFQ1RfTUFTSzsNCj4gPiAgICAgICAgIHdyMzIoaHcsIEk0MEVfUEZJTlRf
SUNSMF9FTkEsIHJlZyk7DQo+ID4gICAgICAgICBpNDBlX2ZsdXNoKGh3KTsNCj4gPiArDQo+ID4g
KyAgICAgICBpNDBlX3ByaW50X3Zmc19tZGRfZXZlbnRzKHBmKTsNCj4gPiAgfQ0KPiANCj4gTWlj
aGFsDQoNCg==
