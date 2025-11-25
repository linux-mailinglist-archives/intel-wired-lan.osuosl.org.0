Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E720DC838DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 07:50:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97F3060D9D;
	Tue, 25 Nov 2025 06:49:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NfIb3Y34bxCN; Tue, 25 Nov 2025 06:49:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04D3E60ABE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764053399;
	bh=vJUzI0KoU3UwvA7apPjWvuasSwUGyAibp+KmiVaTCT0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9n0p6KZqWgUCEZmjfSxHtbceJvYCRuPw1CdXHQgZu/sWG142gtpYzLHVUpYNtH/Wq
	 vtHYLVLe1uuNgdg4R6yiq587Vwms/0DaA/bnMMPLh0c3L/uBVqUg5VOZgbRl7owZKX
	 jyZU76nDWJRZPWiRyZezBkc7StzKspBt2inOllfgb/mFHGb2ronbKg5i8LM07j6b2m
	 x8iZUkGYBLhyjnjledEEmSxcwupWvHU2Z4WelKVu+sFS/VuVE3CWxEI7J4HRaEneCx
	 PsKqDI1k5zOlYzjwdBjL9IUY0JlUxkTF84iGJFcPnMhEAlBwkUToUr/y1Aoi7gL/41
	 7yPV54cXuFkSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04D3E60ABE;
	Tue, 25 Nov 2025 06:49:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 20782359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:49:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0630140462
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:49:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bFrNkNwSI0FH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 06:49:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 54F0F40439
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54F0F40439
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 54F0F40439
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 06:49:56 +0000 (UTC)
X-CSE-ConnectionGUID: I+5Wx5msR8W6zyP3lLqVig==
X-CSE-MsgGUID: Jofmvs/MQC6G5m61Z1heKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="65954403"
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="65954403"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:49:55 -0800
X-CSE-ConnectionGUID: +eqPe9k9QTSX11qPw6p/6g==
X-CSE-MsgGUID: V45qPxtKQZ+wtVshG1bS4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="196729069"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 22:49:55 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:49:54 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 22:49:54 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.32) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 22:49:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ImLot0jNW30wglUbSAuMOBvBfaUwpYdcCxDwuMd7aINS+bxyw4N7KPb38VfY1bbeIHWWnIb5lxcCQ43RlT+0nlWbqyCsEvDk70MztHwClcOy43yevaKRiqiH4Frjevoi7FMA/iolLOXC8lShptQzaA8uoUbHZ/avS30wxmkOzoDEzA1l4An1Fmuj4ZNNQ89GWadKcpZ4LqBstduU8iFn5oElsVjtYBU2HKNuSgknxQM3tahMoXaM1zOqXVHGHszvNPTWMvQhIH7L2OmwsvQRxQEijC6gFdA54mNMNB1HV0p3pB/VdMekWlEDPjUajTEv/1ocV30VjRmLcRmS84XHYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vJUzI0KoU3UwvA7apPjWvuasSwUGyAibp+KmiVaTCT0=;
 b=lST3UzpBAmv2yAdfSdwapeT1B6OcpbyLPQgZfuUuuC6fCJplUCjyMjQ+zOQBOyyOP16A5i7WcRIdsZ2E9Usbu2JP/XvxYb2P+sB1BUk0/aUBtmQKP7Pbk2LmYdiJp1wwkHGEW4YeOOcNzfqhYFBQFcOB3sEfbalCFns3XdOQq7rxeZMwnnpGqD5sqINd8uzfaOkyAC5z8ypIiC1v+ryHBquiSiFIS9zrMsXtpZJfa7M5r6Yor9IOkdI3wdNhFYNwpPP4ePlPcdYDhTrHWsRWdkD5uZjMCQayjy/90bE8JoaQ2PDc8V/O7sUzQVUm4/fTR816U8ccBHad2j6FpAIBIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA3PR11MB8073.namprd11.prod.outlook.com (2603:10b6:806:301::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 06:49:47 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 06:49:47 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Breno Leitao <leitao@debian.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, 
 "michal.kubiak@intel.com" <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel-team@meta.com" <kernel-team@meta.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 4/8] idpf: extract GRXRINGS
 from .get_rxnfc
Thread-Index: AQHcXW7r8i0bhk7e7EW4bivsDfGllLUC9HPQ
Date: Tue, 25 Nov 2025 06:49:47 +0000
Message-ID: <IA3PR11MB8986AB7EDF47479E4E773A8FE5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
 <20251124-gxring_intel-v1-4-89be18d2a744@debian.org>
In-Reply-To: <20251124-gxring_intel-v1-4-89be18d2a744@debian.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA3PR11MB8073:EE_
x-ms-office365-filtering-correlation-id: 46c4de8f-3345-4953-362d-08de2beed300
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?dm41a1ZSMjJJYi9UYjZ4N292eTB3YVFIWEM2RjFsTWlaRWFpbXJwekJvRDJp?=
 =?utf-8?B?QXg1bnU0SnhMc04vNm1KT2cycnF3cndMRUM5aXJTTzgwcDV1dlA4WGR3a3M0?=
 =?utf-8?B?T1lNZGNyOE1YMWhML1ZhNm53djl6SzlLbjBaNFZSOEhaMURsOHlXNFY1RFFN?=
 =?utf-8?B?N1krVkVaR3pQVEdoR3ZsVE1SY29EM0tNRVo3aHJHNlB0WUhpR2tZWWU4N0E2?=
 =?utf-8?B?NzVoM3pDMGZtRUEwQUVTVXlta2NpRXk5bE1jNFFBb2ZmcXRPamZML0RMUGQ5?=
 =?utf-8?B?WVlRM3VQRXRxdVVVb0syaHJEa0tveGNldFdobXp4bDRldnNPNmFNNVp5Skor?=
 =?utf-8?B?VUY0dGx0WEcrNkg5YXMxQ1RPbDhnYnEyTDlxZTZQNkFsWWZOaDZwVVRHSE9l?=
 =?utf-8?B?b3JHSTRlMjZraWc3U1JQME5ITTRPemtZY3dxL1owbGRoajlBRFpOZFp2Vk1q?=
 =?utf-8?B?R3NrSXNSK3FRRFdXb0NLVHd2elJrTVFUUXluRHFZb2lJWDgrTStXQjZvZzhz?=
 =?utf-8?B?TlBGZjVCbjJOTE44QUxudk9jTDY1aFZlU3E5OFRYclcrWmNQVGZYTWw4TVpM?=
 =?utf-8?B?Z1U1NW9aR1AwNW56RW5ibzk0TlhpcGhWbWphVjJzVjE1bjVtVW5nY1RISUJ2?=
 =?utf-8?B?azdUN2FMRDZBeXRQSXRScHFNZ25ZR3Jnb2lPU3B5R0pUTGRra2JEUTFPOUNQ?=
 =?utf-8?B?NERad0pVS0p4a1RoMndzVDVuZTA2Rnl2SGdhV2VmT0hEbVZzaFV2TUhJdjdP?=
 =?utf-8?B?MVc5ODFmTFQwRTJkMWI1cHU2TnV5WFJLMDdWQWQyWEZGTnF1L3B3M0Ywdjlt?=
 =?utf-8?B?OTY4Z2E5RmRRN1FjY3AwdS9XcEdrM1hSbnVmZHkvVi9NNEJ2TWZlMVdxNXdN?=
 =?utf-8?B?TUtMQnkxdmd1cE90TXh5WmRQS3lrb0hlRGhIK1VBSXdXR3VoUk5Sa3RQUmx3?=
 =?utf-8?B?d0UwM0l3YkdoKzVXR3pVUk4wM0JQcnBjY2wvdzhCTG9SK0Y2a252cTk0UXh2?=
 =?utf-8?B?U1pGZFY4eS9xL2tBQ2FvR01Uby9iQXRZSW9hN0RxeE1KeFoySG9SMGluRkJw?=
 =?utf-8?B?K0JSblZPOG9zbE5DZUU1T1J5OEtUcStXdSs5R2JHWVZPaG4wZ1NSYVhpbCtS?=
 =?utf-8?B?a0VMOHFxZ0MvV1VlMk1CemZoOW8xbXpaRDlIWU43V1l2aWlsVDd1ZGl5eTZj?=
 =?utf-8?B?QnpKVTFtTFJCZUp4Sk5DSXFCQ0lkL2pNUlBsN3RCWTNtNjlRK2F1SlJOU1hN?=
 =?utf-8?B?UTVjWkFhT1pIZDdQM25kQkVvNHU4NnZya2JOdVVHK1hJeWRqSmthbHNYWHk1?=
 =?utf-8?B?WGRFQVJNVzlZOGJwcVZEY21hWllMTlgxNFVGQW9sMFduVjRYZmQvdGZENFE0?=
 =?utf-8?B?RVVBMyszOURLcGVjRkkxMGtDQ1haTmgyOGh1N3B6QnB1MS9Gem56Ym9tU3dW?=
 =?utf-8?B?dWEzbXdpMU91dkVCNnQ3QXVOUldrenNuUHJ5eERKR2d2OHBLT0VRT2c3by9B?=
 =?utf-8?B?UStVd0prb3M0am16RlhDS3pSblNpclY5V2s4bU1vWHVwbll1bmRUUnZOblBY?=
 =?utf-8?B?RXliWU0vOFpYZEV0WS9WZEhoSzFNRWpaWlJKUmoxS2VpZi94M3BBSlNDZDNV?=
 =?utf-8?B?c0hMajBmRExDaTBTQjJvZnpOemRnbHM2UHhQa0YwMzZ6TGtZUHZFcVgyZS9N?=
 =?utf-8?B?K01sSmpud0pzU3I5MjVJbTVMYm5XQXFIcWx4M01NOW5hV2ZPTzk3VXcrU0xR?=
 =?utf-8?B?Yksrc2Y2bHJabEp3Rjl3RE8rcWoxZHVKdklWQUhkL3FjdTZaTmE1K0JjTDdI?=
 =?utf-8?B?K280bHBSQWNUY2JNanpzSGVDYyttZFpuQXcrNkJjakg2R2VSb3pLZDNVZTNT?=
 =?utf-8?B?NmhiVmhhVE5xa3YyNkUvc2hvMEgzeGhIcDhXSmRuWjl4akVZUko2YjBsNFdW?=
 =?utf-8?B?bWlzOHRrOGc3MnZOQXR2eFY4SnRuTHhCU3BlM3NpWmFPWDFLYjE5bWt3L3hQ?=
 =?utf-8?B?L3ZhMW10UDlNd3hWUEtZVDhBL2NDbVphSG1xTHZwU1czWlA2Ti9CWllPclJn?=
 =?utf-8?B?MEhLU0taV3EyMUhTeEV1Q2xyakszTlNJOGtKZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QjBNQzNsSHhqa1k3T2tKbkFqeDd2Q3AwdXdpL2ZLVDJEVmM5VUh6VlhKS1dT?=
 =?utf-8?B?amNOcUx2RmQzOFNTQjVuQTBLRUFvZjQxN1pMY1pGM09wZGQyU1BQVlBFcHd2?=
 =?utf-8?B?ZUhUT3BGT2E2ZUcvdkwyTVd1RS9iT0JRZ20vbTNFcjkxanFIWUxSTG1vUUNR?=
 =?utf-8?B?T0h0OGxUZjA0alNSRUMwMGZ2QUtjNk5CbjU3ZWJ0M0tqNjB3U0lKK1V0TEV0?=
 =?utf-8?B?WTFaUHowWVR6bTl2Ukc1VzBGaTQ5MlBwSE9QS3hNeXdYRm5lZ3pnK1hJcHho?=
 =?utf-8?B?TU5oemNVZUExMzFCSUVMYWdCQVBMazdWRE1QMWpZQm0xcnM2ajBnckFWOWtq?=
 =?utf-8?B?ZmNVQUpkekxWcFhXWFk1K2dSY2swbTQxTXBzZWJ4aTZNTmhOZ2svRS84TDlG?=
 =?utf-8?B?L0hCdksyTUorMHZpZURhdXhBVFZWWUdONnNQM1pzSDFHM0lNZVRIMEY2TjFk?=
 =?utf-8?B?T2ZZTE9GYTR6djN0d0NidXhJMi8rVTkxYmNoc3dDWlBxQTBweDRPOG9nTjNI?=
 =?utf-8?B?NGx4WTVLZ1NiN016R2Mzd3dGSVZOeEhLUU0xeXFZUjJZZ0p6Q250anVlWUZn?=
 =?utf-8?B?b2NXNWRTQURHOC9WV1d5VWVLRkpXWmRqaDRCeWdIbGd6RlZiYzZ5d0gvU1Rw?=
 =?utf-8?B?TGRTNWoyeHhjeEloR3owZWlXMjRVSmFHTHlLdDBtUXdMQWJ5SUNNcDRJOG1I?=
 =?utf-8?B?UVQxdm5zZVdhYjhSSVFBY3llZCtQOWN6WTdFUGUzeHBxTjZsQlJPeldRcnFD?=
 =?utf-8?B?aExsREpNRGdvOWZLOThZNzRPUGRJNTZXNXFKWjhqSlI3OERGWTVNREFhd0d6?=
 =?utf-8?B?WHZ1ZjZEcUwyaDF1TGNSRWl0NW5GQkFNOC9RMXNFSzFqdEQrdGl2aTZRVDRN?=
 =?utf-8?B?NVZKK09rU1RiYVl4ZVg5SWFtWXRpTDdWODhKc1NmZkVpY1AyUW1Yc25Rb3d1?=
 =?utf-8?B?Qm41clhWUW55dTRWdWZ6VWRTaHloUzJoZG4vYjUyWWMwd0w3WDVheXByWERt?=
 =?utf-8?B?SUFNWENLdTBueGJFWUZJUG1ERHZ5TUpIUTd3N0cvcU5tbGNBRDI4RU5HNkhl?=
 =?utf-8?B?Q3hSTDlXMmZxM0M4aDdHQmpTMnhjb2hxQzVTeVdRTkczM056VlhEUmNHSmR2?=
 =?utf-8?B?QzlhYzZnMGUrWXJsd0NtbVdWR2ZadUJnUHN2bFhqR00wRzAxT1YrN1BKVnpv?=
 =?utf-8?B?UTRxalV5Ykh4ZG9KVktLcC9sZXIxOFdZaU9hOTdBZjNDZ1FYMmFrUzBZc0FF?=
 =?utf-8?B?dlpYSVQvakQ5TXN2T2JvRmpwc2MvUXJCV0RhLzFwZFIrY2ZmdHRjalluVGVG?=
 =?utf-8?B?aThGdElUSVAvanIwWmR5NjRiamZQbDNPZlpOUGx6S2VsVkVrZlVxR3dMczFu?=
 =?utf-8?B?ZEQ4aUgxMTgwYWRiQWVkT3ZuWDRzakVpakVaZzRma3k4dWNKWStwQlBlQUlh?=
 =?utf-8?B?dnpWQzlXajNlUFcxUXRRYTlYYU1JalMxZkVQNlpFSmdJbngzK0RjWUNQUG9I?=
 =?utf-8?B?YjJYTjJCR3hpY3BqKzR3bjAzeWV4dHR0aEFXbllJd1h4eUpFYndmTFk0OWNS?=
 =?utf-8?B?V0hNWkV2RlFKZjFjUkhvLytscjhPYzNYKzViUWM5aTgvbUFwVW5adHR1SmVO?=
 =?utf-8?B?cVJHaW9wR0dhTEFuWjBNS2g0bWdQMGQ5L1RHMWJ3U3VXYWlCS1FhL1lQaDBL?=
 =?utf-8?B?YWppa2c2bTlQVWZsbEl0clhOYVFRd1ZVd3dCbXBvS29iT2U3V1hTbVJpU0Vq?=
 =?utf-8?B?ZGluWnJzdmw0ajlBei9lK3BhczBrRERiSmgrdWs4WW5USHRjdVNWQmhIMllm?=
 =?utf-8?B?L00ycVcwcVJzNWtMckR4anRTYzFFYlFjWTR4ZmZNeHdNSFZmYUpaYktYbjRX?=
 =?utf-8?B?L3Bhd1luN3R0eFRIQ2RRM3JQOE01aVUyNGpoaDk2aEsrWjc0NXhXUEdIdXYr?=
 =?utf-8?B?YzhLRmI0MWFraWJkWE9nZmRLWG01Qmk0allESlp0MGYwRGpGM3JKcDZNTzNG?=
 =?utf-8?B?bTFJOTVKOE44SzJib01hS0djbUNXTmNzbnZpdnJ2ZjZvVm15YXFmYzlqU0Uw?=
 =?utf-8?B?MThicUJ1VTlSdEhxVnZiSGU1d2c2azNXbU9Sc3ZlRnpxT0l2YXhZQXdHazdK?=
 =?utf-8?B?UTFxbVdKMnpIOU0vU2JrYmR1akdpWkdpSkh5eTJTRExTNmJCQkVBQXA1eUtY?=
 =?utf-8?B?Q2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46c4de8f-3345-4953-362d-08de2beed300
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2025 06:49:47.5172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bQIqzrSMjGMVzfG+sSRaZziA6wfL9XjzCbeyUGZQihRoE03VUrc3sQCVj2QxvCwllROsYFJUfL05tdhLEo4yItAbBr2ox3NChfWeWEpnxpM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8073
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764053396; x=1795589396;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vJUzI0KoU3UwvA7apPjWvuasSwUGyAibp+KmiVaTCT0=;
 b=P5SOOOxKmrPvDGPVsPVbLj+jYPu5EsI7nFO6NCgag59rqMKVUfTJgVHa
 FG0L3UZuCngNequgZWunIDxMYwjEjAlLOkaaBx91KTtqLltzDGu+YpysY
 ZLK/Jsg5zTxCUvAzBu4vBjuwYWi6in9N5czGh3iVGWBYQ3bjGBiAFZEuM
 uRmF3MIzomL8F6CotewyW/oxAETdeRjwyRYa6dc9wjjmzHZW4jOpQm8tC
 zJjNlDwtudmwu5tDWgpllifGxjUl5XSyqmLQy7Jk9Qa9lRjIfxW4fbVs/
 1Gc7+pzZV+x6KNFoXAkMRG3w9KTu0BtDDcObDh9k/1CG2hHJPq4UQnWY1
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P5SOOOxK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/8] idpf: extract GRXRINGS
 from .get_rxnfc
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQnJl
bm8gTGVpdGFvDQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjQsIDIwMjUgNzoxOSBQTQ0KPiBU
bzogTG9iYWtpbiwgQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT47IE5n
dXllbiwNCj4gQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWws
IFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBBbmRyZXcgTHVu
biA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsNCj4gRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZl
bWxvZnQubmV0PjsgRXJpYyBEdW1hemV0DQo+IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWIg
S2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pDQo+IDxwYWJlbmlAcmVkaGF0
LmNvbT4NCj4gQ2M6IG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb207IG1pY2hhbC5r
dWJpYWtAaW50ZWwuY29tOw0KPiBGaWphbGtvd3NraSwgTWFjaWVqIDxtYWNpZWouZmlqYWxrb3dz
a2lAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRk
ZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsga2Vy
bmVsLXRlYW1AbWV0YS5jb207IEJyZW5vIExlaXRhbw0KPiA8bGVpdGFvQGRlYmlhbi5vcmc+DQo+
IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXQtbmV4dCA0LzhdIGlkcGY6IGV4
dHJhY3QgR1JYUklOR1MNCj4gZnJvbSAuZ2V0X3J4bmZjDQo+IA0KPiBDb21taXQgODRlYWY0MzU5
YzM2ICgibmV0OiBldGh0b29sOiBhZGQgZ2V0X3J4X3JpbmdfY291bnQgY2FsbGJhY2sgdG8NCj4g
b3B0aW1pemUgUlggcmluZyBxdWVyaWVzIikgYWRkZWQgc3BlY2lmaWMgc3VwcG9ydCBmb3IgR1JY
UklOR1MNCj4gY2FsbGJhY2ssIHNpbXBsaWZ5aW5nIC5nZXRfcnhuZmMuDQo+IA0KPiBSZW1vdmUg
dGhlIGhhbmRsaW5nIG9mIEdSWFJJTkdTIGluIC5nZXRfcnhuZmMoKSBieSBtb3ZpbmcgaXQgdG8g
dGhlDQo+IG5ldyAuZ2V0X3J4X3JpbmdfY291bnQoKS4NCj4gDQo+IFRoaXMgc2ltcGxpZmllcyB0
aGUgUlggcmluZyBjb3VudCByZXRyaWV2YWwgYW5kIGFsaWducyBpZHBmIHdpdGggdGhlDQo+IG5l
dyBldGh0b29sIEFQSSBmb3IgcXVlcnlpbmcgUlggcmluZyBwYXJhbWV0ZXJzLg0KPiANCj4gSSB3
YXMgbm90IHRvdGF0bHkgY29udmluY2VkIEkgbmVlZGVkIHRvIGhhdmUgdGhlIGxvY2ssIGJ1dCwg
SSBkZWNpZGVkDQo+IHRvIGJlIG9uIHRoZSBzYWZlIHNpZGUgYW5kIGdldCB0aGUgZXhhY3Qgc2Ft
ZSBiZWhhdmlvdXIgaXQgd2FzIGJlZm9yZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEJyZW5vIExl
aXRhbyA8bGVpdGFvQGRlYmlhbi5vcmc+DQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWRwZi9pZHBmX2V0aHRvb2wuYyB8IDIzDQo+ICsrKysrKysrKysrKysrKysrKysrLS0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfZXRo
dG9vbC5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2V0aHRvb2wu
Yw0KPiBpbmRleCBhNWExZWVjOWFkZTguLjFiMjE3NDdiOGIxMyAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2V0aHRvb2wuYw0KPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfZXRodG9vbC5jDQo+IEBAIC01LDYgKzUs
MjUgQEANCj4gICNpbmNsdWRlICJpZHBmX3B0cC5oIg0KPiAgI2luY2x1ZGUgImlkcGZfdmlydGNo
bmwuaCINCj4gDQo+ICsvKioNCj4gKyAqIGlkcGZfZ2V0X3J4X3JpbmdfY291bnQgLSBnZXQgUlgg
cmluZyBjb3VudA0KPiArICogQG5ldGRldjogbmV0d29yayBpbnRlcmZhY2UgZGV2aWNlIHN0cnVj
dHVyZQ0KPiArICoNCj4gKyAqIFJldHVybnMgdGhlIG51bWJlciBvZiBSWCByaW5ncy4NCj4gKyAq
Lw0KPiArc3RhdGljIHUzMiBpZHBmX2dldF9yeF9yaW5nX2NvdW50KHN0cnVjdCBuZXRfZGV2aWNl
ICpuZXRkZXYpIHsNCj4gKwlzdHJ1Y3QgaWRwZl92cG9ydCAqdnBvcnQ7DQo+ICsJdTMyIG51bV9y
eHE7DQo+ICsNCj4gKwlpZHBmX3Zwb3J0X2N0cmxfbG9jayhuZXRkZXYpOw0KPiArCXZwb3J0ID0g
aWRwZl9uZXRkZXZfdG9fdnBvcnQobmV0ZGV2KTsNCj4gKwludW1fcnhxID0gdnBvcnQtPm51bV9y
eHE7DQo+ICsJaWRwZl92cG9ydF9jdHJsX3VubG9jayhuZXRkZXYpOw0KPiArDQo+ICsJcmV0dXJu
IG51bV9yeHE7DQo+ICt9DQo+ICsNCj4gIC8qKg0KPiAgICogaWRwZl9nZXRfcnhuZmMgLSBjb21t
YW5kIHRvIGdldCBSWCBmbG93IGNsYXNzaWZpY2F0aW9uIHJ1bGVzDQo+ICAgKiBAbmV0ZGV2OiBu
ZXR3b3JrIGludGVyZmFjZSBkZXZpY2Ugc3RydWN0dXJlIEBAIC0yOCw5ICs0Nyw2IEBADQo+IHN0
YXRpYyBpbnQgaWRwZl9nZXRfcnhuZmMoc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgc3RydWN0
DQo+IGV0aHRvb2xfcnhuZmMgKmNtZCwNCj4gIAl1c2VyX2NvbmZpZyA9ICZucC0+YWRhcHRlci0+
dnBvcnRfY29uZmlnW25wLT52cG9ydF9pZHhdLQ0KPiA+dXNlcl9jb25maWc7DQo+IA0KPiAgCXN3
aXRjaCAoY21kLT5jbWQpIHsNCj4gLQljYXNlIEVUSFRPT0xfR1JYUklOR1M6DQo+IC0JCWNtZC0+
ZGF0YSA9IHZwb3J0LT5udW1fcnhxOw0KPiAtCQlicmVhazsNCj4gIAljYXNlIEVUSFRPT0xfR1JY
Q0xTUkxDTlQ6DQo+ICAJCWNtZC0+cnVsZV9jbnQgPSB1c2VyX2NvbmZpZy0+bnVtX2ZzdGVlcl9m
bHRyczsNCj4gIAkJY21kLT5kYXRhID0gaWRwZl9mc3RlZXJfbWF4X3J1bGVzKHZwb3J0KTsgQEAg
LTE3NTcsNg0KPiArMTc3Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZXRodG9vbF9vcHMgaWRw
Zl9ldGh0b29sX29wcyA9IHsNCj4gIAkuZ2V0X2NoYW5uZWxzCQk9IGlkcGZfZ2V0X2NoYW5uZWxz
LA0KPiAgCS5nZXRfcnhuZmMJCT0gaWRwZl9nZXRfcnhuZmMsDQo+ICAJLnNldF9yeG5mYwkJPSBp
ZHBmX3NldF9yeG5mYywNCj4gKwkuZ2V0X3J4X3JpbmdfY291bnQJPSBpZHBmX2dldF9yeF9yaW5n
X2NvdW50LA0KPiAgCS5nZXRfcnhmaF9rZXlfc2l6ZQk9IGlkcGZfZ2V0X3J4Zmhfa2V5X3NpemUs
DQo+ICAJLmdldF9yeGZoX2luZGlyX3NpemUJPSBpZHBmX2dldF9yeGZoX2luZGlyX3NpemUsDQo+
ICAJLmdldF9yeGZoCQk9IGlkcGZfZ2V0X3J4ZmgsDQo+IA0KPiAtLQ0KPiAyLjQ3LjMNCg0KU2ln
bmVkLW9mZi1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRl
bC5jb20+DQo=
