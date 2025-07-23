Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 628FFB0EF56
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 12:08:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77B6C80E60;
	Wed, 23 Jul 2025 10:08:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fYhbl2oZ3MF1; Wed, 23 Jul 2025 10:08:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C62C80EBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753265295;
	bh=fmqsRHTzoGx1nCJTq3LWij1f6Rw0abEiFDWSH3K60d0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8SdnAl2iMmLuQR3dbmzVvyAFIymjPCQ5tk8qR4cCeteo3P7nEVgvRaACbqXhuwarH
	 lPpWXgl+GZ1VblIkfMzpCrvrsBEBHjf48V8p3GpgDM6K2sSQvhGGFbfvMbKl+xu/wf
	 aoTlbmTFzCV57SqgA2ElHyW2nITUcpGN0xSwG7Q3Nee8rlKXEtyQZ/dmYBaXWDZIPI
	 m8W5pjfBHY3vjAE7LWWYfyJdx8A1Sk0hgV67du/CVnUobd0QZC20EQ6fyyjc2WY4Tv
	 YfLTdGvEJfaTG0VCUwG0BL13hJ7l+Ne+gBWKSRPxf21QWkO83mzAxdLDOt7nvAanQn
	 CwYHyxxRNXZFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C62C80EBE;
	Wed, 23 Jul 2025 10:08:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 29E5FCD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FDD560D94
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:08:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ej-xvushHQd9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 10:08:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3B8CF60DF7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B8CF60DF7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B8CF60DF7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:08:12 +0000 (UTC)
X-CSE-ConnectionGUID: Cz5LnrNbSf6LSOO63E11Ww==
X-CSE-MsgGUID: yUuIlaiyR9KzNsoi3xHydg==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="72998808"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="72998808"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:08:11 -0700
X-CSE-ConnectionGUID: +hdqDknvSZWwifyg3IgM9g==
X-CSE-MsgGUID: VFdRGOHeTQKQkI+jrp3yGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="164851287"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:08:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:08:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 03:08:10 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.76)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:08:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UxJwmqndXFrhe0XSCoFppSRYuSKsnp5yLRt2l7oqUf3UiOps5+g+/pOxVxda2uWLqVXd2OO2Yt8rNJ4xCycDnscCXCtVrmx27085B58phdxv/TnJHKeKwfplSCZ/xN7Abo2amDriIr9Wrl/NXViN6/vfo5iO3FpdMVvtACyAHjJotIaYfXpp+GQUCFZMbPUQF7Iw5d3c1ivuV3EyBLuaCOglwOjxdgd1X3qooIC3+Mm27zk2Ez34DXjVb7vCJQaUfkBSJtrqzf1xD3mnXTW0RJTkfa1hx7PGYCjBHbHPGHrS9vJLiZyXQLasLwS+eZ9QJb8oR8Wjl0VCoUfXN3ShrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fmqsRHTzoGx1nCJTq3LWij1f6Rw0abEiFDWSH3K60d0=;
 b=F1+DlAQaq+cozEu5aoUoCfWxMpWYWSGbBSK81IJ6b6kUhyrRBhiNECJ+qAhqMxc/ez9T0GrcFFuS638pTyPhJeJzUsAWrWxKQk517KA3I/ma8WzhAM4bakzRabGl38UTmEn63dT1rKZ0ikVyh8hVVBfMSfYbkaIMf+PYJ28Bzu0aB7rHooYgVtNwhtApJaRPIHrOfoMKW1HLghNfsHpAMAyN/seYQSqE/DkomN550pFuSP9MMUGArIUBSXYrpb5Id+H6KgwoelwryBcfKpl/oVH1BBCwOuWtjIGO22G4NeqS0+aEEvoscIk1u4Vs/eBnNKICE8Xa+Vs78js1V+1PAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA0PR11MB7910.namprd11.prod.outlook.com (2603:10b6:208:40d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Wed, 23 Jul
 2025 10:07:27 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Wed, 23 Jul 2025
 10:07:27 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jacek Kowalski <jacek@jacekk.info>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 2/5] e1000e: drop
 unnecessary constant casts to u16
Thread-Index: AQHb+692u5RBw+kR2UC/c2datk7b+rQ/e7Hg
Date: Wed, 23 Jul 2025 10:07:27 +0000
Message-ID: <IA3PR11MB89864243FDDB9445CF7A58D6E55FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
 <6d05300d-e5d7-409e-8b78-a7c3da21ed32@jacekk.info>
In-Reply-To: <6d05300d-e5d7-409e-8b78-a7c3da21ed32@jacekk.info>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA0PR11MB7910:EE_
x-ms-office365-filtering-correlation-id: d8244cb1-da23-4d98-33a7-08ddc9d0baa8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?aGxSRWJHcFFtQlBCNmpRZ0dYdmxMTlExVkRHL2FNZ2ExU3BkV3djaDU3SHAv?=
 =?utf-8?B?TGFxQ3J6RnNFSklGUHpxcW5NREU5dmlSRE5JaUtCOFpKRHl0d1BxbGo0WFRa?=
 =?utf-8?B?eEFOY0JOVjhBc0dabkRuU05aOEVueUR1b2psR0xYM2orNU01NXRBdzVTdWdo?=
 =?utf-8?B?TndzcngrVWQ0K05ENTR6U0QzT2NNbXo1L2o3QjF1M0Vjanp1MCtjOFNSdy9D?=
 =?utf-8?B?UWhOQzZLczA1eEdXMkFlQkJEeWd2R0FJanRZLzVkUEliMWxpUW5hTHpyTVgr?=
 =?utf-8?B?Z2VGa092NmszVEJjOHhSaVQwcVk4UWhVK1JTcmRjQUQxZHNPNmliemN0RHVr?=
 =?utf-8?B?K0h2M21WZjIrbFZzbEQzWnpQVFg2QithQ0FLZHh5Uml6Z2tWMVJvZzk3VGF1?=
 =?utf-8?B?NGh2UUNBbzExUWh5NjU5cGNRUjRrdEd6VXZpb1dGVVFqWVJvMXlzN0EvMUQ4?=
 =?utf-8?B?bks1OVJFcFBCUVNzUU8rRmcyZXZyNHU3R0owRnFpclYrd09lOWQwRGduSGlQ?=
 =?utf-8?B?ajJKN1ROaXRnWlRwbnNpTnpoNWdTVzZ2Ylo4Tng2NXRFRDFYSXhTbDNyQ2d1?=
 =?utf-8?B?VWNpRVN4aHE4SFRoRUhoM2hQaGZiRlhsaUtFdzBuZDJoRHlwNytIUU5Fd3U5?=
 =?utf-8?B?WDBEN3FCaVIxMnQ4T2puSEJmWENqQ2hxMVcrMmFYSUs5cXN0S2JSQ0dzVnd6?=
 =?utf-8?B?UExYdnhDUnMxOVlTRW5tNCs5WnZYMU82MHc1aWJMYlUxNVNvZ25JVWFXSGRL?=
 =?utf-8?B?Z3R2NVJIRkVkU1BpSjJwNXhOZkdodXVPMDFyRmJYYWFlVUJ1dVVKRy9TS2Fo?=
 =?utf-8?B?VXlzYTVWZDZKSklETkJVOXhvR2JSbGNCZW1mejg0VlRNN3FJRDB0Vzc3WmE3?=
 =?utf-8?B?a2kzZWhPcmtMbDU5d1VCRUdHMjBQRDZIU3grd3dzdkJYUnVna04rNENHbVkw?=
 =?utf-8?B?QUswcUZkMHM4TFBPZS9DREJOZlZxUUQ4Vzg0QUllU1NFcHJBNXBId2RWTFRs?=
 =?utf-8?B?TjBWdnlMaVVQT0s2cThKc01obEhQc0Vka1g2YmlvMEV6eFhrN2FSbS9EUVhn?=
 =?utf-8?B?SUxJWVhWQ2Y5Zmk0ZzJoakRkeVlQREl0d3lwMEt4empmMkM0OXN6endLU2g1?=
 =?utf-8?B?SHlUOFhxMTRsb2ErcUtaRlJ3RVRWbGFPQkJNKytRejZsRUJxQXFxTzkzWkJi?=
 =?utf-8?B?dHJVS09NQzJTc1JYbEtSTXNMS1ZUUWxCMDZJMnNSZlpGWDVkTzhveWFwOHNK?=
 =?utf-8?B?ekNkUnNTenNmZXk2S0Q3V1dKcWswdUZjWnUra1RJbWQwNzdTNzBpZ1lHSHov?=
 =?utf-8?B?aUpDSXFVRC8vLy8rZmpWZFRtOXpCNVVsV2ZRM0ZIV0V4TmQ4MmxzcWo4eld5?=
 =?utf-8?B?dlQ2R200aEVyZ0ZOSFlBR1dnOGh2M2drc0xRdTltampVK0UwMzZrQUlTQ0dL?=
 =?utf-8?B?Qlo4MmpLZUw0NEljVDlRazd0dHpkaWV5MDVGaXhTYWZ1djY1ekFzWk8rVWpy?=
 =?utf-8?B?V1RUbCt0MmNoY3hJQ2JXQ2xTeEVQMy9BTlFJWHUrRW15blJ5VHpEbENON1h1?=
 =?utf-8?B?SVlkdG94cmo5ME50Q2tXTTJvd3pFNURsZ0haYkkzanpXR1NRRkpvZDRXRnZR?=
 =?utf-8?B?YzVIbHVodm5iOHZxM2VBSnhpb2ovMjI5SXdWSVo5THdYR2M3RzJKaGVOY1hN?=
 =?utf-8?B?RGFBNjBlNGFWcmtJVS9VYk8xVmcxWUtNMXEzWmpRbnZXbHJHZENqSDl3ajFH?=
 =?utf-8?B?eSt4MTNFYnBXejBGWWdiMHVyR3pCamNrejVIcXJWbWtqNk9WRUZkVW0wT3NU?=
 =?utf-8?B?Z3NLM3Nsdi9ldTB4djF2bmp6bzNaaW9YbUE1dEFDTG0yTFNzRWNMUUlLRHlJ?=
 =?utf-8?B?SWFnZnc1Wlo4RWNxSGpjb0UvZjJiSjRqeVBFME5uOEZ0OThBVDEzV2dyOGpr?=
 =?utf-8?B?Ni9Za2FiczBjN0N3YlRmdi8wMkg0akRoYjYzOWcwdmNtRnVQSTJkbEJNRmVh?=
 =?utf-8?Q?PLX4ImuHvawOD08wxFF1W4zQEsrGrw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TTZha0Z4MEtHVG53aXNSOEdJV0thNElacGh5TmtmRGJxNnE2YUJkbWdsZlNH?=
 =?utf-8?B?RU0wMVM0azJhRUJWV0V4MC81RmJJSHJ4eFNaN2lvNnRlV1lVdnd5VlRoZllJ?=
 =?utf-8?B?dHpBZUU4MVFTRmpKS0tjb3BLeUl0c2V3N29IU3lqNzhVU3NGS1dYVk9ZWnlR?=
 =?utf-8?B?QnNiU1pPZThhd1EvVHBWeDJKMzBGQ3M5YTQzUHQxMStCekIyajdtL3BNMWl6?=
 =?utf-8?B?YlQ5SWplVTVUYXpUVk9sYm1YYmNzSjlMcXA5NFdUQ05aQXF0TG03aXN4S2xQ?=
 =?utf-8?B?MHpJeFhrdDVhcGlNNmI1b1VTcDhEYlFsb1V5UHdsOFZGV1IxWEJxZWxMTENs?=
 =?utf-8?B?Zjdza2VsdTA5SlJUb3hudGErNVlOOWhPV2JDZ2dDYmNOOCsrMUlxUnFROUhP?=
 =?utf-8?B?ZEtqUUIxbTQ2WWxGSnFHeGJpdUNKaEFHU3RFYVNrYXhuOTBmNW5DQjRGVlVE?=
 =?utf-8?B?cWJZc0VjUFBxNS9tMkRtOE1rVlVpa0ZrcUtkRDUvd1J2MURHVVUrZTBHbHVZ?=
 =?utf-8?B?emtQR0t0NVpqdmdzRW15TUZDMTJ5c1B6bVNLejAxSVduRzNESEZQa2lKVHNs?=
 =?utf-8?B?UTU5eDNIcGtpZEhOKzRsSWhxNmx6UDJuZktlNTlvazVPS1Y2QnNST1E1YXRu?=
 =?utf-8?B?Tnhxa1RoaFlteEZvdW5QcGdhSG5TY3hOQ1h6dkxDdjZENTVDbXdMcTROVlpO?=
 =?utf-8?B?bFpPMXNTbE1na29BemJ2RFlFajIrUzlFNWJEcWNOU3VRYlR0RUxtL3ZKQ2ht?=
 =?utf-8?B?TGtnRVdSQ1JGV3hhUGxoWjVnNjMvaU52OUJCbmlsL3JCZDNDbWhQZHZmUkVF?=
 =?utf-8?B?UC9oZUFES1lOdnRsbWxMUGIvQ1dGZUZJeHJrODY1YXRFM0FjcW1xd0RUSmxo?=
 =?utf-8?B?a0wyR3NyM1ZNMGhjTlJwMHRFM0JFUS9wUExkMFBhSEUzRWl0WVlqYTZOUUNp?=
 =?utf-8?B?c2FMN0ltS1VSSDdrZjkwNXlFRzNiRlVrTkttTnJlZS9UeG16a0EyRE5xVDZZ?=
 =?utf-8?B?eWlUS0dUSFh0TGRpVlZxYzh3WmFpU293OSs1TWRHSDVWSXFVQUNjdTFWOFNs?=
 =?utf-8?B?K1JvZjV0U3BSank1c29OUm8yMGh3UWlKd0ljUXpmRHdiQ2FvS01rV2t2WUtl?=
 =?utf-8?B?dGxuR2lzMEpEa3ZYTzVWWWpRZ1BucjlZVFVOcGJ2UlBHWThjNnVyN3dvZ01O?=
 =?utf-8?B?VDlNajd5SXFreUVLQk9wS3kvWC94bFl5ME1BOHk3QXB6K0VmZTduZ1hXalRv?=
 =?utf-8?B?VmRINndHSkQyMFhpMkwvLzduOGh5U2JhSk84dXhlTHRUUU1kc2MvaWhPODJl?=
 =?utf-8?B?T2pFbk5NZnNkS3FVbjkwS3F5bEhFYlFXS2c3QjMrUGxjREF2dkdlaGIrYTFx?=
 =?utf-8?B?WTN1MW5tcGY5S3o1ZWxZaVNUMjFmQTlLNENENFE2Z2h6Vmo5YXpiMXNOY3Fy?=
 =?utf-8?B?bjJiL0ZQdFQ3TXo1am9IeXdsajk5V3lyMFo2NVhEaDJ1VlNSam5rc09hNE9y?=
 =?utf-8?B?MlFtWFBQQUpxTENMczhNSWFleCtYWXBhUGdxVWorUGthWGtiMnQxMktzU0Z3?=
 =?utf-8?B?Z3c3VWZqakpNcXd0WUFiMkt3dmRlYStEb0ZTaFlNR1ZRMkR4bThtdlJVWndj?=
 =?utf-8?B?NHNQTjBpRGJYcDZpVFBNSkZtNmZUcW9DS1hxOVFSaURNV0RRNXorNXJoeDEr?=
 =?utf-8?B?QzdhdU9sUWN4MGx5WUJkcmxsdW1oZENpSXlIdWxpUC9XckhVQ0xHZ2xHdGlT?=
 =?utf-8?B?RFpnR2M4dkViTGZKdkY4M1ZiTHZRK21haEtWNUFaOS9NT3dzMFNrVUpwYUNr?=
 =?utf-8?B?TXhxMWFIYit5cEJ6RE9qYUhZT2RhK2ZOZ1pwdU1KN2J1VUEzQ2ZKR3ZjOXVa?=
 =?utf-8?B?dWFWNUdOZEJ0T2FEemo4QnI4cFZDTTgyTVNLOEtVTFRwNGxCa3l1eGtpUzRp?=
 =?utf-8?B?YmFLQ1FBeHM0WUw2U3M5NFVFVzlQQ3ltVFRYVXJBUW1sd1JJQTBCMHdabEVq?=
 =?utf-8?B?RzdiTUg5aFRSY1o3UHl5T1J3RWVDN0hFY0VRVDJ1Nm9NUlB3cDdacVNNOThp?=
 =?utf-8?B?dStFNVVNeHVKWUVQUkRVU2hCL09KSlk0eXJDTE1kTFUwTzNySGh0ckQyQXU4?=
 =?utf-8?B?SGU5Q2JVcFkrQnNWT0FVdC8zaVpFSjlWRkRZaVQxYmwrbStYZklsbXRSdEM5?=
 =?utf-8?B?NlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8244cb1-da23-4d98-33a7-08ddc9d0baa8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2025 10:07:27.8410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uWJsHHkZRuK0JMnAJ6Z56JfYFdr/k/Is+PIY8VGqwvDeuTqQfC0SmaG3dnBspLsKQnmnWpa9PJ1tPiLxPotaR2ZG0n5vd1UA/FJDwSUwLlY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7910
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753265292; x=1784801292;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fmqsRHTzoGx1nCJTq3LWij1f6Rw0abEiFDWSH3K60d0=;
 b=g/vIHfvdu9UXukpXfy7EDToK53iok5INfxQ7gJ/p0svKGvoNW7CeY9oT
 Db+w+tYWKNx1t2RIw0rNpsrGs3hfpgh4FhrwPaR6M/th+o64ShumjXzbT
 3QBudZaqRYnHIDPuRlfzMl93cQWKsiNk3BV/WqAB89ChxsDNpvUD8+EL/
 YmCxFweuwLnVPiZHqe4Wl5r/9a8L+bTuE/vcCoVd9jcuMv+gNElGVqDwT
 1SSO0lq8v3xTG372wgTXFo0TqVdSrZ98Pu4qmpFn2c9/CJiJWHt1OSacv
 nDkg/SVuqC/4YnSHsUk4sbzXIeKLMwtu+RtfIyKj7nObjGskmGjgyEjTD
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g/vIHfvd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/5] e1000e: drop
 unnecessary constant casts to u16
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgSmFj
ZWsgS293YWxza2kNCj4gU2VudDogV2VkbmVzZGF5LCBKdWx5IDIzLCAyMDI1IDEwOjU1IEFNDQo+
IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRz
emVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgQW5kcmV3
IEx1bm4NCj4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1A
ZGF2ZW1sb2Z0Lm5ldD47IEVyaWMNCj4gRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEph
a3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbw0KPiBBYmVuaSA8cGFiZW5pQHJl
ZGhhdC5jb20+OyBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQo+IENjOiBpbnRlbC13
aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBTdWJq
ZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHQgdjMgMi81XSBlMTAwMGU6IGRy
b3ANCj4gdW5uZWNlc3NhcnkgY29uc3RhbnQgY2FzdHMgdG8gdTE2DQo+IA0KPiBSZW1vdmUgdW5u
ZWNlc3NhcnkgY2FzdHMgb2YgY29uc3RhbnQgdmFsdWVzIHRvIHUxNi4NCj4gQydzIGludGVnZXIg
cHJvbW90aW9uIHJ1bGVzIG1ha2UgdGhlbSBpbnRzIG5vIG1hdHRlciB3aGF0Lg0KPiANCj4gQWRk
aXRpb25hbGx5IHJlcGxhY2UgRTEwMDBfTU5HX1ZMQU5fTk9ORSB3aXRoIHJlc3VsdGluZyB2YWx1
ZSByYXRoZXINCj4gdGhhbiBjYXN0aW5nIC0xIHRvIHUxNi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEphY2VrIEtvd2Fsc2tpIDxqYWNla0BqYWNla2suaW5mbz4NCj4gU3VnZ2VzdGVkLWJ5OiBTaW1v
biBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rp
b25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2UxMDAwLmggICB8IDIgKy0NCj4gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ldGh0b29sLmMgfCAyICstDQo+IGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYyAgfCA0ICsrLS0NCj4gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2UxMDAwZS9udm0uYyAgICAgfCA0ICsrLS0NCj4gIDQgZmlsZXMgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9lMTAwMC5oDQo+IGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2UxMDAwLmgNCj4gaW5kZXggOTUyODk4MTUxNTY1Li4wMThl
NjFhZWE3ODcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAw
ZS9lMTAwMC5oDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9lMTAw
MC5oDQo+IEBAIC02NCw3ICs2NCw3IEBAIHN0cnVjdCBlMTAwMF9pbmZvOw0KPiAgI2RlZmluZSBB
VVRPX0FMTF9NT0RFUwkJCTANCj4gICNkZWZpbmUgRTEwMDBfRUVQUk9NX0FQTUUJCTB4MDQwMA0K
PiANCj4gLSNkZWZpbmUgRTEwMDBfTU5HX1ZMQU5fTk9ORQkJKC0xKQ0KPiArI2RlZmluZSBFMTAw
MF9NTkdfVkxBTl9OT05FCQkweEZGRkYNCj4gDQo+ICAjZGVmaW5lIERFRkFVTFRfSlVNQk8JCQk5
MjM0DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBl
L2V0aHRvb2wuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ldGh0b29s
LmMNCj4gaW5kZXggYzBiYmIxMmVlZDJlLi4wNjQ4MmFkNTA1MDggMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9ldGh0b29sLmMNCj4gKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2V0aHRvb2wuYw0KPiBAQCAtOTU5LDcgKzk1OSw3
IEBAIHN0YXRpYyBpbnQgZTEwMDBfZWVwcm9tX3Rlc3Qoc3RydWN0IGUxMDAwX2FkYXB0ZXINCj4g
KmFkYXB0ZXIsIHU2NCAqZGF0YSkNCj4gIAl9DQo+IA0KPiAgCS8qIElmIENoZWNrc3VtIGlzIG5v
dCBDb3JyZWN0IHJldHVybiBlcnJvciBlbHNlIHRlc3QgcGFzc2VkICovDQo+IC0JaWYgKChjaGVj
a3N1bSAhPSAodTE2KU5WTV9TVU0pICYmICEoKmRhdGEpKQ0KPiArCWlmIChjaGVja3N1bSAhPSBO
Vk1fU1VNICYmICEoKmRhdGEpKQ0KPiAgCQkqZGF0YSA9IDI7DQo+IA0KPiAgCXJldHVybiAqZGF0
YTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRk
ZXYuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYw0KPiBp
bmRleCA3NzE5ZTE1ODEzZWUuLjU4Y2ZjNjNlOTVhYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYw0KPiBAQCAtMjc2MSw3ICsyNzYxLDcgQEAgc3Rh
dGljIHZvaWQgZTEwMDBlX3ZsYW5fZmlsdGVyX2Rpc2FibGUoc3RydWN0DQo+IGUxMDAwX2FkYXB0
ZXIgKmFkYXB0ZXIpDQo+ICAJCXJjdGwgJj0gfihFMTAwMF9SQ1RMX1ZGRSB8IEUxMDAwX1JDVExf
Q0ZJRU4pOw0KPiAgCQlldzMyKFJDVEwsIHJjdGwpOw0KPiANCj4gLQkJaWYgKGFkYXB0ZXItPm1u
Z192bGFuX2lkICE9ICh1MTYpRTEwMDBfTU5HX1ZMQU5fTk9ORSkgew0KPiArCQlpZiAoYWRhcHRl
ci0+bW5nX3ZsYW5faWQgIT0gRTEwMDBfTU5HX1ZMQU5fTk9ORSkgew0KPiAgCQkJZTEwMDBfdmxh
bl9yeF9raWxsX3ZpZChuZXRkZXYsDQo+IGh0b25zKEVUSF9QXzgwMjFRKSwNCj4gIAkJCQkJICAg
ICAgIGFkYXB0ZXItPm1uZ192bGFuX2lkKTsNCj4gIAkJCWFkYXB0ZXItPm1uZ192bGFuX2lkID0g
RTEwMDBfTU5HX1ZMQU5fTk9ORTsgQEAgLQ0KPiAyODI4LDcgKzI4MjgsNyBAQCBzdGF0aWMgdm9p
ZCBlMTAwMF91cGRhdGVfbW5nX3ZsYW4oc3RydWN0DQo+IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIp
DQo+ICAJCWFkYXB0ZXItPm1uZ192bGFuX2lkID0gdmlkOw0KPiAgCX0NCj4gDQo+IC0JaWYgKChv
bGRfdmlkICE9ICh1MTYpRTEwMDBfTU5HX1ZMQU5fTk9ORSkgJiYgKHZpZCAhPSBvbGRfdmlkKSkN
Cj4gKwlpZiAob2xkX3ZpZCAhPSBFMTAwMF9NTkdfVkxBTl9OT05FICYmIHZpZCAhPSBvbGRfdmlk
KQ0KPiAgCQllMTAwMF92bGFuX3J4X2tpbGxfdmlkKG5ldGRldiwgaHRvbnMoRVRIX1BfODAyMVEp
LA0KPiBvbGRfdmlkKTsgIH0NCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9lMTAwMGUvbnZtLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAw
MGUvbnZtLmMNCj4gaW5kZXggMTYzNjllNmQyNDVhLi40YmRlMWM5ZGUxYjkgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9udm0uYw0KPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbnZtLmMNCj4gQEAgLTU2NCw3ICs1NjQsNyBA
QCBzMzIgZTEwMDBlX3ZhbGlkYXRlX252bV9jaGVja3N1bV9nZW5lcmljKHN0cnVjdA0KPiBlMTAw
MF9odyAqaHcpDQo+ICAJCXJldHVybiAwOw0KPiAgCX0NCj4gDQo+IC0JaWYgKGNoZWNrc3VtICE9
ICh1MTYpTlZNX1NVTSkgew0KPiArCWlmIChjaGVja3N1bSAhPSBOVk1fU1VNKSB7DQo+ICAJCWVf
ZGJnKCJOVk0gQ2hlY2tzdW0gSW52YWxpZFxuIik7DQo+ICAJCXJldHVybiAtRTEwMDBfRVJSX05W
TTsNCj4gIAl9DQo+IEBAIC01OTQsNyArNTk0LDcgQEAgczMyIGUxMDAwZV91cGRhdGVfbnZtX2No
ZWNrc3VtX2dlbmVyaWMoc3RydWN0DQo+IGUxMDAwX2h3ICpodykNCj4gIAkJfQ0KPiAgCQljaGVj
a3N1bSArPSBudm1fZGF0YTsNCj4gIAl9DQo+IC0JY2hlY2tzdW0gPSAodTE2KU5WTV9TVU0gLSBj
aGVja3N1bTsNCj4gKwljaGVja3N1bSA9IE5WTV9TVU0gLSBjaGVja3N1bTsNCj4gIAlyZXRfdmFs
ID0gZTEwMDBfd3JpdGVfbnZtKGh3LCBOVk1fQ0hFQ0tTVU1fUkVHLCAxLCAmY2hlY2tzdW0pOw0K
PiAgCWlmIChyZXRfdmFsKQ0KPiAgCQllX2RiZygiTlZNIFdyaXRlIEVycm9yIHdoaWxlIHVwZGF0
aW5nIGNoZWNrc3VtLlxuIik7DQo+IC0tDQo+IDIuNDcuMg0KDQo=
