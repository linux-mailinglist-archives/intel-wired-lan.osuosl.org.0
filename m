Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB45D9DA86F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Nov 2024 14:25:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 809B94616A;
	Wed, 27 Nov 2024 13:25:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MQy6MmOTTmK7; Wed, 27 Nov 2024 13:25:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AFDB47036
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732713942;
	bh=gb3y4iJv/ZBV61Rd6hRUgcqeGSeEEU65BqEKuojrJZ8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1DrRRmrmA1XoGLOQRQlxyRc8UOLlCfMfNdGaTW2PDMvXkNvO73zPMkfSPv5pw0q7E
	 tkd9t7bvkdfuXHSCRi6CSqfvzkEAss0W/wMiSnES6F3fYoAy67zVcd3DJgOsk00A5n
	 pQTD6WMo3aFLDogn1GWK9RsPKY+zG4s73yWrILfB/MrW5v788UJu7Xs30tMjTgt/s5
	 qLi6ZjBNf7j7mtVeCE90UWaYayfcutqjPtjW9z54XABdmhKkNpOAvU5iHs3SAK1fWt
	 qiAdrGLvZd7ZpYQdOUMUK66muEmbEl5LiX3cGmNuSn5VFVKTlI2KEUy/VlS8spwil/
	 zfmkTio3NmZfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5AFDB47036;
	Wed, 27 Nov 2024 13:25:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1DF60712
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2024 13:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2FE484E67
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2024 13:25:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ij4amItt-2QT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Nov 2024 13:25:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 25D4D84676
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25D4D84676
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 25D4D84676
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2024 13:25:39 +0000 (UTC)
X-CSE-ConnectionGUID: mVHVLpsrR224UYE22ZMYIg==
X-CSE-MsgGUID: lwgu5BpgSMiPLo7NIP/TDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="55415284"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="55415284"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 05:25:40 -0800
X-CSE-ConnectionGUID: HIZcqpPNRmCGiVYyOWrvvw==
X-CSE-MsgGUID: uhlJKPoNQ3WT6WHWT8pPEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="91566417"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 05:25:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 05:25:37 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 05:25:37 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 05:25:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YEKPdp+E8isPW6UXQs2vFfdGh8wPqHj57sjiS7kmj3IPDqkNN1tpbem3CXyLJ2PkH0jca63Vhptr96d1qXT5Z3qHGbd40fD93vFPB8OmCQUDDSJscRM/cWNR8CP/GmvacQKlnEAJrF3xO5K/oE+4EX/YAqNXvhvbtZosT9B+3L4cB7Cg1IsUxsr4KRaQhtkUYN+qGHi3Jd+jJ8tb35VTJI7AnO0OJ6EWIa5eDyUGfoU8xAYUV2w9EXXrGAafkvRWmIy7grN7504Ar7ycT9oLQLaApXrfkD2A+51m32Iw+GBd1sT5CeJZeiLxgeO5c4X3I+w/otaeFZn36MPjZw1xhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gb3y4iJv/ZBV61Rd6hRUgcqeGSeEEU65BqEKuojrJZ8=;
 b=uxuGrxDHY0g0IAufSQhQH4vHCDhGTLfvjMRp0ZmkafmufGZx626XxF8js7CLZ/ZDQFCgk3SFDU10JeTbYTS88S8EiwbB1WFdYk/qcdJ3b5A+qrVrF6kdwKPcF2AORcKMBzY3Z2dnoZpsbPU3hb549IjgZENS+l1dQtYVLj8eXRWPC0Js1MBV6K4ii7EFVdNIww4F5lTNicL1PI/Z8pRLn00lKmhwOsFsxU5D5rTYZvapKfNiGywF7x2k3EKUP5f4XWbE5ou+2GML0p+UjjYsNhZ55wxTCobsvD/z07tpgJU31GoPAbb6WvgWLe7kPGcKd/cTuIZjm/0ifH4/+DwfnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by DM3PR11MB8714.namprd11.prod.outlook.com (2603:10b6:0:b::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8207.13; Wed, 27 Nov 2024 13:25:34 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::c7ea:ab4f:35f9:9b07]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::c7ea:ab4f:35f9:9b07%7]) with mapi id 15.20.8207.010; Wed, 27 Nov 2024
 13:25:34 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Olech, Milena"
 <milena.olech@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect PHY
 settings for 100 GB/s
Thread-Index: AQHbP+0+/jmF4KnFUU6JzgEAAJ1pD7LJYvcAgAG7NAA=
Date: Wed, 27 Nov 2024 13:25:33 +0000
Message-ID: <PH0PR11MB4904631B2F0A1589DC6C0A0094282@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20241126102311.344972-1-przemyslaw.korba@intel.com>
 <b1d2b8a5-1dae-4247-8fb7-1b73ee0a89ee@molgen.mpg.de>
In-Reply-To: <b1d2b8a5-1dae-4247-8fb7-1b73ee0a89ee@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|DM3PR11MB8714:EE_
x-ms-office365-filtering-correlation-id: fea1db7a-a4b1-4e9d-e5c8-08dd0ee6f912
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?eGlTRWFNM3BkekNOWG9qUmprQzhVb3M3SlhuSFRZc3o4czVaUzZZQkkvR2pQ?=
 =?utf-8?B?Y29RaDBlMUhvdElWZkhkMXFmbkYvazMwUjk5SEp2L2g2VHM2QkJ6V2QwSGdo?=
 =?utf-8?B?bXRqSDJXZlVaY2tIRTBXMmhoUzNHdFhyVmlmK0ptdEp2YldZSlRGVTZIRWha?=
 =?utf-8?B?RC9mekhUVG1iRXByeEZvR1FZZzBSbUtRVnZpbC9yTU5tdnVOemxDY3pPSmVz?=
 =?utf-8?B?dUwyNGViNVZQNjV5bHlBQ3dkZzBrT25pQWZuSk1EUzkwT3p1UVFMTHpIcWpJ?=
 =?utf-8?B?dkdaS3hnRFNKRzIvejRnL3VLSXhxamxaTVVnOGc3eGhxY1MyMjlyOVNXR2Mv?=
 =?utf-8?B?c0JzTms4U0RvYlFrWTNpUXpiN1BZZ3ZHL3VJc01FZG5RTUFlZjRwUHpxVmkx?=
 =?utf-8?B?UXo2MkZiV0VFRUxoL2tJUExrRFViU3NvVno5cmFUOTBqamIxSjNTaWtNWTFp?=
 =?utf-8?B?Y1RYSmxVWEdORmRCVERaRC9jbi9CR0VVSmQ2TzdNMll6Sy9JaXZ2bU50M2dB?=
 =?utf-8?B?VC96QXdYVGZBOXpaZkx1UVdvNDZhZUx0WVFUeWJPV292ZFdiUC82bzhmUisw?=
 =?utf-8?B?QWF1MkZvbDducytIL3BOamN2V1l0TjJrY2RwSlN1dDY5aitlYVJ0UFBPZlZS?=
 =?utf-8?B?QUszRjZkQ0pFZEN3T0RnRldJMFEraFRXemtWNjdHd1lhOWo2ZzJSa29JVjJ4?=
 =?utf-8?B?Sm55K1lFd1FTWmFTR2JlajJvdU8zbHdDbjF2b3RCQVgybEJxWUpaVHBCUEc4?=
 =?utf-8?B?VUhGcTBtSUJ6Rmlsb2U3c0NMbDNUM0FTNmYrVjh3c0RpdGpLdGJzL3lDQ3or?=
 =?utf-8?B?NktRSnNlSUtzOEV1eTF0enlzSDNKcFluL2U3Wmg0YWpRV1MzMXh4dHJSTElv?=
 =?utf-8?B?ZU9Jd2lNNFJxRHZscFNHdEpYak5jenZTV01yaTh3K1l2ZDZSa2tYUGtTN3pB?=
 =?utf-8?B?S3V4azcxZmQxYkMwQlJOQWFJOSs1cGhDZ3hhekFzTWNNQnNYT1k4Z015bHdu?=
 =?utf-8?B?UUlXcHh0RkFoUUdUN2VwSVE3L0YxY1hXS2c5eW41OGFHUytwWEI0REhYd3pv?=
 =?utf-8?B?M09XK3o5SjNnUHhXd1BWWm1OSWh5UkVueHB0S2pyWjUxODQxVW9DN05pU3JT?=
 =?utf-8?B?bmhJWU43Q1FPSXR0bmpoMmpueE9UUS9qM0E0L25mWTJoQmczeWVLdHV3emZu?=
 =?utf-8?B?OW12eUV1Z0dQM0tFeW05ZzZqSTYzZ1lJaktJYXRTMVVuRmgweGxpOHBEM3ls?=
 =?utf-8?B?bFQ0VjI3SGN6Zi9Wc1pDd2x1bEhFVmhKbHZDR0dhMUFoVXNkRFkvY1M5TUNl?=
 =?utf-8?B?L3dVbDVIWU02cWJTODNmOHMvMXk1VnlzeWg4b0JPZFVnZ1JEZkVubkJjVjFa?=
 =?utf-8?B?Q0VuQ1Z4Ylc3aXJTeW1rU1R2eVM0Tit2SmR6STlVMm1WOWlpS21YQ2tQN1Nk?=
 =?utf-8?B?dml2ZTB5MUZ6WCtVeEVNY0s1WWhsZ2NEV3oyUVJnRXFsc0xLWEszR1pEVHZu?=
 =?utf-8?B?a2NHMUgxaXVJY1hmb1pHSmordXpnYkViMEVuK3k0LzdJbk42S1Q1ZC82WXA5?=
 =?utf-8?B?S0p5S1FtZEw5OGFHV3FiNkQ4Ulc5VXZmT0Jodzhybko5RFFoUEp4ZW05SjNa?=
 =?utf-8?B?aDdGQmFIQzBZT2hFT3Q1Mlo2V2taNXErS3Ruc2p4WGtOejU3Smo4UmFjN3dG?=
 =?utf-8?B?UkNycVFlUjMzWVgyY0RZRWxEZUFQMkRaVEdCblh2eXllWnZsMHJnYTZ4TXg2?=
 =?utf-8?B?UG9SbXJvVCtaQm41dGFQUEZxbW9DYktnNlMralJDZyt1SjJvZWZIY1V2d2Nz?=
 =?utf-8?B?U1c4cDVGVFN0ai9RM003OW5WaFovTE1YZS9xMzg1QTBBbW5VeExhNkg4a0Y0?=
 =?utf-8?B?QVZndWRHUU9oMUNoaDcxblZMb3lYVjRKNnpJTG5MNXZJeUE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZlNWUWovTkNSR3ZyZURZRGlycHh6TGJYUDcrSEpWWnc0aW55SzFWdFpIUHB4?=
 =?utf-8?B?Rmo2ak9BU2dKSXlJVUViY0FwWXM0ci9HTHVNQWN5dzlMN3dMQkJOOXd4VHkx?=
 =?utf-8?B?ZlR6NG51SHNYTEI4WjVZU05Da3dNSEdadWdCMmxFZ1MyWW1kLytULzU4aHpj?=
 =?utf-8?B?ZHluQkVzdDkrcC8wVkV2VDlvTTdHTVFQRk1uRTFPajhKaGphR2tkekFpLzVi?=
 =?utf-8?B?M1gvQlVQdGQwYlVWMWRmUGJCOWlmbWFuRmt1UmlVWXRFWmUrL05oQXZDNGxT?=
 =?utf-8?B?U3U3Mk55Vlg2RDlKNU1IalNrdEt2bnoybTZTYlBXeXkwUEFtQmJIVmczaWsr?=
 =?utf-8?B?eExib05WMjFUVGJGbWJHamZ5U2hoSHZpcE5KSlozRDN1WjdNd1FOdjdTSTRR?=
 =?utf-8?B?UHNCVGZNZDVzZ3AzQ3BTamJtajdRL3hxbkkrUmM5Nzd4TTBKcWtNaE5pSDIr?=
 =?utf-8?B?TnhRVktSNFF1T2Z4dm94M0lNaTJodjBFKzJmRnZtZXhOcUM1bUVXaDRVYTZk?=
 =?utf-8?B?MjRxOFc3QzlENGo5cGlPY0dyWTRhZkxvaE0yWEVVbW5MenJxdHFEOFByeStj?=
 =?utf-8?B?emZkQ3pQWkhraU1OQ3BaeFhIMHNFTXQ0L3JBREtnMWh1VWpoanFqZDAwWjZS?=
 =?utf-8?B?YlVWUU1LY05tdE9WQXFPL3hWbW5ZZkhPdlpvQlV2MWtXUnFobHNxUU5nNm51?=
 =?utf-8?B?by80Y2tDVXpZYkJSSmJTNmlhTGd5N2hSSWRrUEtYSXRtVmRKU2lNYS92UFpC?=
 =?utf-8?B?UDJnYVNWeUZpUnlsajB2R2JOa1JrTWpoZk0yUlNqeDhhNERSQlUvOFJEektK?=
 =?utf-8?B?bXVvaHRsMmpialYvS0F5VmZ3N3kweTVLMVMwYjkzRnUvWmpVNGZOVlh6V0Uw?=
 =?utf-8?B?cDFpeXVUaXdzTURRTTRNa1JlbUZyN0xUS1NpRnRSSGNBeVRCUHVJeHE3YzdY?=
 =?utf-8?B?M3JhSXBFa25RTjZZZjVyaDBNZW5ydjdIMXd3NnJoZExtcGViQWE4SHFTM3Jq?=
 =?utf-8?B?ZmJTTEE5ZUhnYjErRmt5a3MxZzQ5czlHQ3FOVHp2SGtWdnNEK2JrMkhCZ09o?=
 =?utf-8?B?bHJSTlBxU0JrVnlTV0FMazJiYmJ3VEpHbjBmOUZSS3NIRkZTSTIxR3hTSnJ1?=
 =?utf-8?B?MnVSQnB5czQyQnF1RE4xNHo0bDB2N3FBUFJmVXpLczlFajl5U3ZpUU5HdE9S?=
 =?utf-8?B?NzdkUVlQR1ZtNW9IeElaRXVaaklkY3NVMlNOWnhxM09VVWRzdUdBcmdlcUFM?=
 =?utf-8?B?WjZUeUxLSVI4SGRTbFBEYWpPdE8zWTA4VGFTazZIUzlvZFk0N2gvVW9IakFW?=
 =?utf-8?B?aXU0NGlZZitIZlVsZW4xZFdndTU0dHd3RVNjSndlV3QzT3NuVThrNzd0ZVM0?=
 =?utf-8?B?Wm5vZktCbCtXTWMxa3NVYlAyczRTeTd5a3ZlQjRSUVlXUndROWNqZGpnWDFm?=
 =?utf-8?B?eVg0QmtLM1huc1FCQVFmbzIydGJmakc5dFFBMkpXRE9WVTFuMHZtcVhKSWVD?=
 =?utf-8?B?MUNaaGNocTNDZWlwUU5CeDgwb1dhdmVEbkk1SkxIQ0tXM2tNRkVPVzJMaWJo?=
 =?utf-8?B?cDAwcUNIdlpYTmljbjllcmhkNEtXbFRpQWl3TmxYNEZ3bSsybEZlcmN5b25j?=
 =?utf-8?B?eHNNcDFvYXF4UFN2SkZpN0RMVUtBRUl6Tmd6SjJabGgzUktQZkMyelZwVXBP?=
 =?utf-8?B?VDFtTFlVSWpacXZ2Uis0UndBZ2JPcjVna1o3VklkVWFFajN1UWZLdnR6aUF2?=
 =?utf-8?B?WUxYbWJtekdORi8xTmFNTk1HM1hzOXhWTythN25sWk5QWlNBN1RCL05rRU5L?=
 =?utf-8?B?UUNHZ2xuUlVzdFh0MEo0aEF3eE9RcmllK3BHbkZEOXhZTHVtUlVXNVVZdUdx?=
 =?utf-8?B?b0tpQTkxMWtKK09SWXBXSFhRNklrRWVrckN5YitKSFB1ZVo3UlFCK1E4bFV0?=
 =?utf-8?B?Q1hac1RjRmpMVWJsWHM2VDlycWpJN2VYZVNncXhGaFE0K0NkZ045bUR1T2p6?=
 =?utf-8?B?Q1ZZQ1FwbDdqZDhZbjBmODUzclN4NEhDdmNodGtIdWxMdktFRlowaWtWY3Bw?=
 =?utf-8?B?M08rcURLeGQ2U0EwMFZ2a2xFQmtvYkZMd1lCRm0weTJwTnVyaW5nTEtsbnBB?=
 =?utf-8?B?YXFNcVNITy9Ednc2bVRpK0tkYlZoQnUrYjlmeE5INjBkallkTEdjZmlTNHRl?=
 =?utf-8?B?dnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fea1db7a-a4b1-4e9d-e5c8-08dd0ee6f912
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2024 13:25:33.9922 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZVehGlSLFqDleeogMDJBBsgJuup+OBKNqIrXUPrAGAbK1cRlVYj6ESJKqBgzZAtPv3Sw9XZ6QDxo4a2vXF393u7baaIGobqpjwhBZlHWNAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8714
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732713941; x=1764249941;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gb3y4iJv/ZBV61Rd6hRUgcqeGSeEEU65BqEKuojrJZ8=;
 b=Xpal3GPn/2k/PbEn1PL80S44qyrWwDYIbKALYMJe93tsHxUlmq2bcT7A
 wIXi0ak68TZfEA3YBd7pSfVZq+NN7/DQxETFzVdPiu3E2sFBn1FCJGQjr
 ZWkHuddvM4ppDWrPds89E2m2wS6pTjBPUene6uYoubpOwZzExvb0spID6
 FQgXclULmIzuxtwWH0tc/ELe2v0eipJpJW8esNzXq2rChmJjq2rsKwPwo
 t8bWqUxu8GKLVYa8gWCf+X3Y6Fy+jHIVtMLmlNk+dXkibzpJ4hEQ3EX4M
 fpBxs4eilFue4FMcrRQcapG1rMZ+9otrW2EzH5d2Biou/PYmXPYIvbaRa
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xpal3GPn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect PHY
 settings for 100 GB/s
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

PiANCj4gRGVhciBQcnplbXlzbGF3LA0KPiANCj4gDQo+IA0KPiBUaGFuayB5b3UgZm9yIHlvdXIg
cGF0Y2guDQo+IA0KPiBBbSAyNi4xMS4yNCB1bSAxMToyMyBzY2hyaWViIFByemVteXNsYXcgS29y
YmE6DQo+ID4gcHRwNGwgYXBwbGljYXRpb24gcmVwb3J0cyB0b28gaGlnaCBvZmZzZXQgd2hlbiBy
YW4gb24gRTgyMyBkZXZpY2Ugd2l0aA0KPiA+IGEgMTAwR0IvcyBsaW5rLiBUaG9zZSB2YWx1ZXMg
Y2Fubm90IGdvIHVuZGVyIDEwMG5zLCBsaWtlIGluIGEgUFRQDQo+ID4gd29ya2luZyBjYXNlIHdo
ZW4gdXNpbmcgMTAwIEdCL3MgY2FibGUuDQo+ID4gVGhpcyBpcyBkdWUgdG8gaW5jb3JyZWN0IGZy
ZXF1ZW5jeSBzZXR0aW5ncyBvbiB0aGUgUEhZIGNsb2NrcyBmb3INCj4gPiAxMDAgR0IvcyBzcGVl
ZC4gQ2hhbmdlcyBhcmUgaW50cm9kdWNlZCB0byBhbGlnbiB3aXRoIHRoZSBpbnRlcm5hbA0KPiA+
IGhhcmR3YXJlIGRvY3VtZW50YXRpb24sIGFuZCBjb3JyZWN0bHkgaW5pdGlhbGl6ZSBmcmVxdWVu
Y3kgaW4gUEhZDQo+IA0KPiBJdOKAmWQgYmUgZ3JlYXQgaWYgeW91IGFkZGVkIHRoZSBkb2N1bWVu
dGF0aW9uIG5hbWUuDQoNCkkgZG9uJ3QgdGhpbmsgSSBjYW4sIHRoaXMgaXMgSW50ZWwncyByZXN0
cmljdGVkIHNlY3JldCBkb2N1bWVudA0KIA0KPiANCj4gPiBjbG9ja3Mgd2l0aCB0aGUgZnJlcXVl
bmN5IHZhbHVlcyB0aGF0IGFyZSBpbiBvdXIgSFcgc3BlYy4NCj4gPiBUbyByZXByb2R1Y2UgdGhl
IGlzc3VlIHJ1biBwdHA0bCBhcyBhIFRpbWUgUmVjZWl2ZXIgb24gRTgyMyBkZXZpY2UsDQo+ID4g
YW5kIG9ic2VydmUgdGhlIG9mZnNldCwgd2hpY2ggd2lsbCBuZXZlciBhcHByb2FjaCB2YWx1ZXMg
c2VlbiBpbiB0aGUNCj4gPiBQVFAgd29ya2luZyBjYXNlLg0KPiANCj4gKEnigJlkIGFkZCBhIGJs
YW5rIGxpbmUgYmV0d2VlbiBwYXJhZ3JhcGhzLikNCg0KR29vZCBwb2ludCwgd2lsbCBkby4NCg0K
PiANCj4gQWxzbywgSSBhbHdheXMgbGlrZSB0byBzZWUgcGFzdGVzIGZyb20gdGhlIGNvbW1hbmRz
IHlvdSByYW4gdG8gcmVwcm9kdWNlIHRoaXMuIEl04oCZcw0KPiBhbHdheXMgZ29vZCBmb3IgY29t
cGFyaXNvbi4NCg0KU3VyZSwgd2lsbCBhdHRhY2ggb25jZSB3aW5kb3cgaXMgb3BlbmVkLg0KDQo+
IA0KPiA+IEZpeGVzOiAzYTc0OTYyMzRkMTcgKCJpY2U6IGltcGxlbWVudCBiYXNpYyBFODIyIFBU
UCBzdXBwb3J0IikNCj4gDQo+IEFueSBpZGVhLCB3aGVyZSB0aGUgd3JvbmcgdmFsdWVzIGNhbWUg
ZnJvbT8gV2lsbCB5b3VyIHRlc3QgYmUgYWRkZWQgdG8gdGhlIHRlc3QNCj4gcHJvY2VkdXJlPw0K
DQpXcm9uZyB2YWx1ZXMgY29tZSBmcm9tIGluY29ycmVjdCB2ZXJuaWVyIGNhbGN1bGF0aW9ucy4g
SSB3aWxsIGF0dGFjaCB0aGUgcHRwNGwNCmxvZ3MgdG8gY29tbWl0IG1lc3NhZ2Ugb25jZSB3aW5k
b3cgaXMgb3BlbmVkLiBXZSBzaG91bGQgaGF2ZSBhZGRpdGlvbmFsIA0KdmFsaWRhdGlvbiBjYXNl
IGZvciBpdCBpbiB0aGUgbmVhciBmdXR1cmUuIFRoYW5rcyBmb3IgcmV2aWV3aW5nISA6ICkNCg0K
PiANCj4gPiBSZXZpZXdlZC1ieTogTWlsZW5hIE9sZWNoIDxtaWxlbmEub2xlY2hAaW50ZWwuY29t
Pg0KPiA+IFNpZ25lZC1vZmYtYnk6IFByemVteXNsYXcgS29yYmEgPHByemVteXNsYXcua29yYmFA
aW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9wdHBfY29uc3RzLmggfCA0ICsrLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfY29uc3RzLmgNCj4gPiBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2NvbnN0cy5oDQo+ID4gaW5kZXggNjYyMDY0MjA3
N2JiLi5iZGIxMDIwMTQ3ZDEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9wdHBfY29uc3RzLmgNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3B0cF9jb25zdHMuaA0KPiA+IEBAIC03NjEsOSArNzYxLDkgQEAgY29u
c3Qgc3RydWN0IGljZV92ZXJuaWVyX2luZm9fZTgyeA0KPiBlODIyX3Zlcm5pZXJbTlVNX0lDRV9Q
VFBfTE5LX1NQRF0gPSB7DQo+ID4gICAJCS8qIHJ4X2Rlc2tfcnNnYl9wYXIgKi8NCj4gPiAgIAkJ
NjQ0NTMxMjUwLCAvKiA2NDQuNTMxMjUgTUh6IFJlZWQgU29sb21vbiBnZWFyYm94ICovDQo+ID4g
ICAJCS8qIHR4X2Rlc2tfcnNnYl9wY3MgKi8NCj4gPiAtCQk2NDQ1MzEyNTAsIC8qIDY0NC41MzEy
NSBNSHogUmVlZCBTb2xvbW9uIGdlYXJib3ggKi8NCj4gPiArCQkzOTA2MjUwMDAsIC8qIDM5MC42
MjUgTUh6IFJlZWQgU29sb21vbiBnZWFyYm94ICovDQo+ID4gICAJCS8qIHJ4X2Rlc2tfcnNnYl9w
Y3MgKi8NCj4gPiAtCQk2NDQ1MzEyNTAsIC8qIDY0NC41MzEyNSBNSHogUmVlZCBTb2xvbW9uIGdl
YXJib3ggKi8NCj4gPiArCQkzOTA2MjUwMDAsIC8qIDM5MC42MjUgTUh6IFJlZWQgU29sb21vbiBn
ZWFyYm94ICovDQo+ID4gICAJCS8qIHR4X2ZpeGVkX2RlbGF5ICovDQo+ID4gICAJCTE2MjAsDQo+
ID4gICAJCS8qIHBtZF9hZGpfZGl2aXNvciAqLw0KPiANCj4gS2luZCByZWdhcmRzLA0KPiANCj4g
UGF1bA0K
