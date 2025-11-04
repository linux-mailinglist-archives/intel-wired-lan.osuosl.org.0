Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ADCC2F98C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 08:25:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE0BC810AD;
	Tue,  4 Nov 2025 07:25:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lYWDGYq5xRm1; Tue,  4 Nov 2025 07:25:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E50B810BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762241104;
	bh=7lYehfaXBQj+3R8GJNGvMTPe9mnb7PPaU+zCDrLGtbo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=voTTeuYFwwKSiie/3R+VvHf6iWR9sHdx7PotW+RFarxpQ5eOA3doSPbg1sA9QB42x
	 IS31ErnPqZLfIBQAYiJM7ygwd2Tu4S543ShEMLMCUWbbhF1QnkQj554jzkyi7RZ2t9
	 3lBOuQzFT4FTI8ZUegaRjGjdwdkBV8gsLfeo9S0xNlMdUF6HHFTs/NkclUvdXJqB0R
	 rUuwy+neSaEkRWoPphIzbEglBGLmkUKK9De1R+LP5PcbPK0ZVAplOiJGSPzGG7B6i0
	 c1meQnJSNWiLI0jPKo0TOBt8Y+/YY9cm+7HCGhv48d6Lr94MChSfLG8NuLEm3brMyO
	 9P5FxUm3zVsMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E50B810BE;
	Tue,  4 Nov 2025 07:25:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id F3592222
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4C7040C26
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:25:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TZzXSFKpmrAR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 07:25:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E0A7940C29
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0A7940C29
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E0A7940C29
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 07:25:01 +0000 (UTC)
X-CSE-ConnectionGUID: BWL03nxnTQSgbeXMXv5dKw==
X-CSE-MsgGUID: 5IfQo/2mRgy6/Cx7IPmSFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="51898826"
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="51898826"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:25:01 -0800
X-CSE-ConnectionGUID: Vg4KMmIqQRKA8+/4W4bMfw==
X-CSE-MsgGUID: x85ubKEDSuOwOoQJRU5fJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,278,1754982000"; d="scan'208";a="192174394"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 23:25:01 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:25:00 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 23:25:00 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.52) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 23:25:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E1PHp/8Uy0ggX8fsp2DLhOt2tVSq7CKixow86qOG0ZXx8gn+Me4AXan1GkMQNFgVk097Jb2K+DDjEEbfekXh1R2AbRFp3cA753w1dvvrt5AIZ1rkgn60jxOaJN6Y3yGwHl0nyHBkIA9lRL3yJJpMkFBtNudydsy+x0KV+uwtHRH5IeUGvEKOSx7Z02474ftuweQpUputS0+/iYVG/E8RwPkbGfvJq8Qcugp+7QCa+03RYwFkwqNPGDpJkxsbBpBr1Mrz/CpaYAuloOaMHZwtWyx1a7tidLeHA8p+oAAYnYUqnYVRhgeFb6tOzco2I+mOhaqjgIJlSjCDXSUlxgg3VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7lYehfaXBQj+3R8GJNGvMTPe9mnb7PPaU+zCDrLGtbo=;
 b=Avv4ZfE9pJh/P5JIGDZYYJ5DPIcOjwyCQ0/2SZ+4MJcOTxLdk9BWmYqE8IexIO2olBeIMgRhruHJgPoAEqisbpPIk0OsikFC6DarUGSAdHCOFxOkRC5VSX7sDl+Eh3F0GgoPQDW8jWRHP3iMJu0g54CJC5tE9Xdn83HRzoUKLqAl+G1pPw6nlMaAfi891P4zHKsSBZmsV6sguV/gEFKpFuETs7ZYlNXTcOlaA9s0igRQEv/GYqeLhYwAMTAeWnouj3yC+RnO2nkBHuPXIswqEYO6Fu7MdA7Jkqn3coQqHc9Gas5hfZYbJ856ytxL8zxa4AM45pcINeRD6zF6z5SkOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB5160.namprd11.prod.outlook.com (2603:10b6:510:3e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 07:24:59 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 07:24:59 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next 7/9] ice: use u64_stats API to access pkts/bytes
 in dim sample
Thread-Index: AQHcTSdn8ECnQS72Ck2Cu9PCa905xrTiHeHw
Date: Tue, 4 Nov 2025 07:24:58 +0000
Message-ID: <IA3PR11MB8986C6F888813112921CC2DBE5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
 <20251103-jk-refactor-queue-stats-v1-7-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-7-164d2ed859b6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB5160:EE_
x-ms-office365-filtering-correlation-id: c637ad52-5516-4740-98a3-08de1b7342de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NkhjK1JXTFhnNkMzTTJOYlNwbmNleENiR2hIcEI3RktjazlHYWl1SUlQeDVT?=
 =?utf-8?B?VTFxNVR1SEhhajJia3RhellZV0o1dUI0KzcrMm1rWVNlTVkvUEVUTGZURUZ6?=
 =?utf-8?B?dWVGWnUrOFRlV0Fob0hYUDc2a1JQbjBiQlVUL1VlUEJFM2hjUWxCYS9KQWNL?=
 =?utf-8?B?RTljNnQ5cGR2WUJHWlFEU0V4UTl2NmdzZXhxSWs4Y2N4TDI3dW83RklEUU1X?=
 =?utf-8?B?OFpOMldmaFI3RktZMEQ3V0JIZWR3d0hRN0RKYlNpUHVOZ21qNDlmQ24vQmND?=
 =?utf-8?B?SUlQcHlPSlpyL1ZYaGhKekxYT0JWZFhhMFdiMHdGbU1wMnhxbmZsR28xUU11?=
 =?utf-8?B?T0t4K01aNmUyS0lWZHl6VVU1VUQ5QkFseXROVUVtZ2dIOUlaQzRndFJ5a291?=
 =?utf-8?B?RlpvSDFteFZLUTF2dEUzS1BxSWJhQURRVGtYK2FXTjlJZElKOFcvd1d4WjE0?=
 =?utf-8?B?Qnk0UnJDdUoxQmtlK2lucTZ3aTN5UUV5eEJNeWtEb2JDdGF3OThuODlsbWNi?=
 =?utf-8?B?UXNoSHZtMVJZTFphMjR0MlkwN2NZd2VKQTZQdjJ3UFErWG02MHAyRDFvUUc1?=
 =?utf-8?B?dWpKVWRNQlJJTklyd2dlUEFGSmZvSDJiSEsxSVpEYWJxUVN4U2p2bjh4d1hB?=
 =?utf-8?B?aWt0dU9ZQjd5SWRhTXNBNWVQK2NMOEZHVWJKUmZoaFhrWjVnWDZEVWpqY2Ex?=
 =?utf-8?B?SGwzcTFOOGUrRlQ1eFBnbk5NTTIvZU9aa0pQNWFUbEtZK1FlTHBkeW0vTkY5?=
 =?utf-8?B?dlQ4aDhKVHZxc1pJWVRjZWhicFRXREF0bEsvcU5KQ04ydUVCdEFYWGZKTzJy?=
 =?utf-8?B?c2JDOElaS3Jjb0lxL3BHdHp2K2wrLzA0aGoyWmpDcW5EU0x3RlhuT1h5MTdR?=
 =?utf-8?B?blFrTkFwQ1ZNWXVVSlkreHR6eXdpSnFCdFcxZ3M4ZmxKQVhnQVU1UDlacWhv?=
 =?utf-8?B?VFBmRzRjQTdDb2IvZ3ZsVGVzaWsrZnV1VmIrL29uMDlCWlY5Z2RYYStTV2gw?=
 =?utf-8?B?MVhHeHJZbytxNm5uTzNMS0VWNmRGMjVMS0pheFRGSGRPTzU3U0hsSlZyaG9G?=
 =?utf-8?B?STdvakZrS2MyMVIvWjYwODV4TnJYaUpNVTlUZ0Yxd25VSFZvWUlrVlNpck1Q?=
 =?utf-8?B?UEdKMVZCVno3dlVBcXRqV2pRSFdSbThoUXlQbkNZVVpZSlR6djVxRlhsY1Rm?=
 =?utf-8?B?NW5lM01PbHVaMTRKSzNJS21qc0ozN1BZNGJWcXd2WUlKb0YrdkdabjFJMXAw?=
 =?utf-8?B?QkszSDQ1U2FuS040bUoxNWdnU2lCdGtXUXk5TVI2czNLbDJsWWx5cUVsUzkr?=
 =?utf-8?B?NzJrRmtvaW9RSmhSd2JiYzc1MVlkekR5Sm9YRHRNa1NVb1VPUFRWejJVNUhj?=
 =?utf-8?B?YmVxN25aNVhlQjc1aXg4ZjQ0cmRrTW5ybXQxNmQrWWdLWURnbFNMZUdNTnA1?=
 =?utf-8?B?dDd0OUE2ZG1SejB4SFpCalpkM202Y1JnWm9TL1pwYjNKTWZpeGtpSFJneEs0?=
 =?utf-8?B?aEJrZHg1Zk5iUW9RL1BGc1FSeWdMOFhIakE5RWtrU1FvbzZuMVZsN3RKUG5N?=
 =?utf-8?B?anpSdzh3Y1dvK2lsbFFyYk1hUTQ4Mi9OV3dvbXF1K1l0WUJ0d1M4UXlpZks0?=
 =?utf-8?B?WXM5czhXOE9RWlZxdXovSGxwb1pVZzVmNHNlRjYwcHJxMWJoU1hqUDdBU2pr?=
 =?utf-8?B?ak1ySWtZNHhTL2FOa2dYdDk3OVh4THVPUWcvbDcxRGdNUmpGMG5aMWNJUkZm?=
 =?utf-8?B?Mmc3ZkRoQ2FtZ2lUQ1NwWnVtQUYrMEhXNVhoNUtyVCtPOGg3ODBYQU9NWTlY?=
 =?utf-8?B?aitrSldMczdRWlE5Nzd4YkFDZDNiWEFKWjVqcTdMMkF3RFBiN1ZlMU5xK0hy?=
 =?utf-8?B?bWFLSGZ1U0FLUW5vNTZrQlluZXRjNzFVOTVDRnNLSDhWejVRSlZjZ2Y2QTYr?=
 =?utf-8?B?U2JqdjQxQWJSeE5zZjFSSGRpOTdXaDN6MjJieW90UkFBdjNaWkYvOVBuU0tJ?=
 =?utf-8?B?dzdhSVFZVkJzY0VDZlhwd21DdVlIbXFaSnFyN3FVWVhJWkJ1Z1JEbUxTU1pH?=
 =?utf-8?Q?TiLQNK?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUxHdVhLR1hrL29LeHAwUWF4VG55b0xLSjB5NnVkMkg3RTJOVGRsYzNKek50?=
 =?utf-8?B?S2tweSsrdS9qRXg5VE9ua3h6bVB5QW5MazRVb0dBL2d2TUtBWGVqUVpJbmRn?=
 =?utf-8?B?SXhYN0c1UFhVTjU3dVBCaHBIMmxPSHd0ckMrUzlYZy9ibCtWcnpuVXdrcE1k?=
 =?utf-8?B?TTlrRXEzOGdOd1BPK3BYZjNYNEpyb3RRV0pvaCtwZUExVmxuQlRqN3lqVEs3?=
 =?utf-8?B?djNiUWI2bU5SemFKT0hyeFIzL0JQeWo0ZGcza1BlaUhBRm5SdWtZcHU3cnVu?=
 =?utf-8?B?R0NNSjlnbGVpWGg2VjQxdHgrRzF1S0l5OGI5Nm1selhOSEpCNWFXZGFRTmNp?=
 =?utf-8?B?ZVJ6M1F3U3c5QkxFWkJMbjBLd3VZdGI2UGxnVkt0MVNpaTNObVVNNHhETUo4?=
 =?utf-8?B?UzJ4N1F2ZlpSdmJRSGlKVllrUUdtejEwMTd2VlhnNGgwckhBSDhOblY0dVZS?=
 =?utf-8?B?Nm5wdFgxRk4zNCtyTXZCSElubkcwMlFDaGJQNTA3S2JER2xVa1g4NWVVQUpq?=
 =?utf-8?B?N0EwV0ZiVEtLRmFGV3dPMEFXRmdBSGVVbTd3RzEyakpPd0IxSWdNc0gzMzdD?=
 =?utf-8?B?aWZFQnhJWDRYWjNBKzNBK1d5OU85YW9kbXN4RCtOekxnRlgwZm5lcjd3Wlg4?=
 =?utf-8?B?d1pkM0FndDFDWXRyaVM3SGpqcFg2TURqczh2S0Q3T0dhSlNBOTl1d2M1d0NI?=
 =?utf-8?B?NFJJOVRmNXRhQkFwZzdRdjlwZ2x0bFE1QnNVajRNMEJ2eEo3UmljOUdyLzZ2?=
 =?utf-8?B?Ry9nVmpkS2g0NmVTYXh2b3F0WFlwZ0tCOGhuMGZhdVZPL3hZdm9JVTAyZ1pm?=
 =?utf-8?B?RWg0L0pHUUFoaHRVZ01OamFMSlRRS21LNXQ5TmJyaWd0QUpvNVZ2NG1NYVVs?=
 =?utf-8?B?L2dJc3VKMlJmUHBBRTNKN2tTVlpNb1FGN08xUHYwcEdnWm91UGJuQTN6eWdU?=
 =?utf-8?B?MTYxWGNWa1JmQm9ucCt5YnpwMTdEc0VWQ0NHTm1Bc1hYZHE2d3VwY21nWFM1?=
 =?utf-8?B?VktnYlUzYTBPRTJDcUF0MmlIRlNMVUhUR010RUMxVlNzZWwxWUhRdU1EOEds?=
 =?utf-8?B?b0hhNExTRzdEVkJFdDNPcE50MDg0dDBXeCtNVVE4YW5vdjFYR090QmdId0xo?=
 =?utf-8?B?anlaajEwY2pzb25kMmxocUV6TGVBam53cnBFbXhyN0ZkTnlNRzh2NzNJMnBG?=
 =?utf-8?B?UlRnamNxL2FBUjZaUmR2VFpZZWViT1BPYnBMTE1vbWNldHdTVzNZYzNFWlk4?=
 =?utf-8?B?eERtTVM5cjBidEhvb0J5N05relhwdy9JK01KUW4vdU5xYVd1UU84czYzK2hU?=
 =?utf-8?B?Q3d1ZmtKRlBtajJyVFlJaFB6Y1J2NzVUK25VZWhZVzh6QkNyYjFCblpIMU0w?=
 =?utf-8?B?Vm9MNGg0dkN5S2Jxby8zSWRUOG1xZTNaUUgyT2VPWFp5cmlLV0xuam1FUU4r?=
 =?utf-8?B?S1hvYUJEd1lPcmFJT3BDQWtnSWo4anZNeEdjTE9CQjRaQmczMmpyTHhnV3Y2?=
 =?utf-8?B?UTNJWlBGTTlnbG9qYjNrR3lVTlB1d05GMDcvZVU0M0ZhQ1gxdlo3cjhJdFVw?=
 =?utf-8?B?eUFDKzQvTnM5d3p3cVNDUzlvck1GQ1Z2NFZ1ZkU4bjY0d2N2UGhON2FEL0dk?=
 =?utf-8?B?Z3hBU3d1SGV5V1plN0FqMkRGeHFVSzJsdE9UaVVsdW5neWtRWXJjUTZQMUt4?=
 =?utf-8?B?SWJEbFcxVDNneEZBYXJxWmczckNYK3JxcVBzbHAzS215ZVNaN0pTanlVZk9v?=
 =?utf-8?B?M1J3RjJTSGFXUm9ib1A5WTUyWjBMNDBzQmtlMWlLSGZ1NmpCam5lUVpNbUNG?=
 =?utf-8?B?TzZhdkZHZS8wc29ReXVXK2djeTZ4djdtYi9uS2lRUEY1ME9Mcmk4K2tTVkNp?=
 =?utf-8?B?bnAwd09kcVVzNkdxNDlTTDlGbG03anAvcXVoZU5mem83V01wR3RJODJaSXZV?=
 =?utf-8?B?RG9obXNmY2N5N3BpZ2pHRkhBbXI1aTFHZHhoblZFL2FnTUlQdVBzeGpCTTNO?=
 =?utf-8?B?YjQrVk5hek95QWtpWEhjaTJLeDBmaWVESC9ZZ0t5MWJ1c0MyQWZxc0xrcTRz?=
 =?utf-8?B?RUNuVk1Ob1B5S0N4WEZ0UlF1bGNyNEFUbXdlZnRnL3FtUHZvd1hIUFNLQjVt?=
 =?utf-8?B?ajF0Z2NvSHdaaEhiT1pJZHlUZzVlU0ZlZzNOZFlWd0Nsb0thV3NVcE1VOFN5?=
 =?utf-8?B?SVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c637ad52-5516-4740-98a3-08de1b7342de
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2025 07:24:59.0163 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sY/lMFXvG38JmfhAcp1NThLWv0gz+RH6kKMdvj1V2mzmiAAC3BYsi/yyVZz/a3P5hshqGAT6i8UEx4ixUugLsVLvet2AbsXYTHqdO1L1bl4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5160
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762241102; x=1793777102;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7lYehfaXBQj+3R8GJNGvMTPe9mnb7PPaU+zCDrLGtbo=;
 b=L34XYD57g6mzwhhPjlqjS/U8XA0y6SSO8uc/vgifmfAYRDPVbKvD3F20
 aVLE+Za++WrP31mnUlTfWkO9vCk4KErsRDms+npWQrT8DuC8gkPPPFLbu
 knIQH1qENVG3MKsgbIHPNSqaO/3bsAQdnjHA5N0V7Fo90TBIQFDtGSOiX
 3+dZGE/HTz0evbnhITiyR19+xAnoVA52iufplHe814ed4igjiex5BTDlH
 q9SrgM1PK+0ABR+HnbUvTtbvjRwmRt1tH2ATGd97N/s8tA+WuOJ2HnNuh
 hl3QKkZnY/aQ4Mg4fOKdFF7agCl0kJG71Fw6K+jNbbGTXoGd7VooEdIv0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L34XYD57
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 7/9] ice: use u64_stats API
 to access pkts/bytes in dim sample
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2VsbGVyLCBKYWNvYiBF
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDQs
IDIwMjUgMjowNyBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwNCj4gQWxla3NhbmRlciA8YWxla3NhbmRlci5sb2Jh
a2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGlu
dGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRl
bC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZn
ZXIua2VybmVsLm9yZzsgS2VsbGVyLA0KPiBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+DQo+IFN1YmplY3Q6IFtQQVRDSCBpd2wtbmV4dCA3LzldIGljZTogdXNlIHU2NF9zdGF0cyBB
UEkgdG8gYWNjZXNzDQo+IHBrdHMvYnl0ZXMgaW4gZGltIHNhbXBsZQ0KPiANCj4gVGhlIF9faWNl
X3VwZGF0ZV9zYW1wbGUgYW5kIF9faWNlX2dldF9ldGh0b29sX3N0YXRzIGZ1bmN0aW9ucyBkaXJl
Y3RseQ0KPiBhY2Nlc3NlcyB0aGUgcGt0cyBhbmQgYnl0ZXMgY291bnRlcnMgZnJvbSB0aGUgcmlu
ZyBzdGF0cy4gQSBmb2xsb3dpbmcNCj4gY2hhbmdlIGlzIGdvaW5nIHRvIHVwZGF0ZSB0aGUgZmll
bGRzIHRvIGJlIHU2NF9zdGF0c190IHR5cGUsIGFuZCB3aWxsDQo+IG5lZWQgdG8gYmUgYWNjZXNz
ZWQgYXBwcm9wcmlhdGVseS4gVGhpcyB3aWxsIGVuc3VyZSB0aGF0IHRoZSBhY2Nlc3Nlcw0KPiBk
byBub3QgY2F1c2UgbG9hZC9zdG9yZSB0ZWFyaW5nLg0KPiANCj4gQWRkIGhlbHBlciBmdW5jdGlv
bnMgc2ltaWxhciB0byB0aGUgb25lcyB1c2VkIGZvciB1cGRhdGluZyB0aGUgc3RhdHMNCj4gdmFs
dWVzLCBhbmQgdXNlIHRoZW0uIFRoaXMgZW5zdXJlcyB1c2Ugb2YgdGhlIHN5bmNwIHBvaW50ZXIg
b24gMzItYml0DQo+IGFyY2hpdGVjdHVyZXMuIE9uY2UgdGhlIGZpZWxkcyBhcmUgdXBkYXRlZCB0
byB1NjRfc3RhdHNfdCwgaXQgd2lsbA0KPiB0aGVuIHByb3Blcmx5IGF2b2lkIHRlYXJzIG9uIGFs
bCBhcmNoaXRlY3R1cmVzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNv
Yi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9saWIuaCAgICAgfCAgNiArKysrKw0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9ldGh0b29sLmMgfCAyNiArKysrKysrKysrKysrLS0tLS0tDQo+IC0NCj4g
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMgICAgIHwgMzYNCj4gKysr
KysrKysrKysrKysrKysrKysrKysrKysrKw0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV90eHJ4LmMgICAgfCAyOSArKysrKysrKysrKy0tLS0tLS0tDQo+IC0tLQ0KPiAgNCBm
aWxlcyBjaGFuZ2VkLCA3NSBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2xpYi5oDQo+IGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuaA0KPiBpbmRleCAyY2IxZWI5
OGI5ZGEuLjQ5NDU0ZDk4ZGNmZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9saWIuaA0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2xpYi5oDQo+IEBAIC05Miw2ICs5MiwxMiBAQCB2b2lkIGljZV91cGRhdGVfdHhfcmlu
Z19zdGF0cyhzdHJ1Y3QgaWNlX3R4X3JpbmcNCj4gKnJpbmcsIHU2NCBwa3RzLCB1NjQgYnl0ZXMp
Ow0KPiANCj4gIHZvaWQgaWNlX3VwZGF0ZV9yeF9yaW5nX3N0YXRzKHN0cnVjdCBpY2Vfcnhfcmlu
ZyAqcmluZywgdTY0IHBrdHMsIHU2NA0KPiBieXRlcyk7DQo+IA0KPiArdm9pZCBpY2VfZmV0Y2hf
dHhfcmluZ19zdGF0cyhjb25zdCBzdHJ1Y3QgaWNlX3R4X3JpbmcgKnJpbmcsDQo+ICsJCQkgICAg
IHU2NCAqcGt0cywgdTY0ICpieXRlcyk7DQo+ICsNCj4gK3ZvaWQgaWNlX2ZldGNoX3J4X3Jpbmdf
c3RhdHMoY29uc3Qgc3RydWN0IGljZV9yeF9yaW5nICpyaW5nLA0KPiArCQkJICAgICB1NjQgKnBr
dHMsIHU2NCAqYnl0ZXMpOw0KPiArDQo+ICB2b2lkIGljZV93cml0ZV9pbnRybChzdHJ1Y3QgaWNl
X3FfdmVjdG9yICpxX3ZlY3RvciwgdTggaW50cmwpOyAgdm9pZA0KPiBpY2Vfd3JpdGVfaXRyKHN0
cnVjdCBpY2VfcmluZ19jb250YWluZXIgKnJjLCB1MTYgaXRyKTsgIHZvaWQNCj4gaWNlX3NldF9x
X3ZlY3Rvcl9pbnRybChzdHJ1Y3QgaWNlX3FfdmVjdG9yICpxX3ZlY3Rvcik7IGRpZmYgLS1naXQN
Cj4gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYw0KPiBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jDQo+IGluZGV4IDBiYzZm
MzFhMmIwNi4uNmM5M2UwZTkxZWY1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2V0aHRvb2wuYw0KPiBAQCAtMTk0MiwyNSArMTk0MiwzNSBAQCBfX2ljZV9n
ZXRfZXRodG9vbF9zdGF0cyhzdHJ1Y3QgbmV0X2RldmljZQ0KPiAqbmV0ZGV2LA0KPiAgCXJjdV9y
ZWFkX2xvY2soKTsNCj4gDQo+ICAJaWNlX2Zvcl9lYWNoX2FsbG9jX3R4cSh2c2ksIGopIHsNCj4g
KwkJdTY0IHBrdHMsIGJ5dGVzOw0KPiArDQo+ICAJCXR4X3JpbmcgPSBSRUFEX09OQ0UodnNpLT50
eF9yaW5nc1tqXSk7DQo+IC0JCWlmICh0eF9yaW5nICYmIHR4X3JpbmctPnJpbmdfc3RhdHMpIHsN
Cj4gLQkJCWRhdGFbaSsrXSA9IHR4X3JpbmctPnJpbmdfc3RhdHMtPnN0YXRzLnBrdHM7DQo+IC0J
CQlkYXRhW2krK10gPSB0eF9yaW5nLT5yaW5nX3N0YXRzLT5zdGF0cy5ieXRlczsNCj4gLQkJfSBl
bHNlIHsNCj4gKwkJaWYgKCF0eF9yaW5nIHx8ICF0eF9yaW5nLT5yaW5nX3N0YXRzKSB7DQo+ICAJ
CQlkYXRhW2krK10gPSAwOw0KPiAgCQkJZGF0YVtpKytdID0gMDsNCj4gKwkJCWNvbnRpbnVlOw0K
PiAgCQl9DQo+ICsNCj4gKwkJaWNlX2ZldGNoX3R4X3Jpbmdfc3RhdHModHhfcmluZywgJnBrdHMs
ICZieXRlcyk7DQo+ICsNCj4gKwkJZGF0YVtpKytdID0gcGt0czsNCj4gKwkJZGF0YVtpKytdID0g
Ynl0ZXM7DQo+ICAJfQ0KPiANCj4gIAlpY2VfZm9yX2VhY2hfYWxsb2NfcnhxKHZzaSwgaikgew0K
PiArCQl1NjQgcGt0cywgYnl0ZXM7DQo+ICsNCj4gIAkJcnhfcmluZyA9IFJFQURfT05DRSh2c2kt
PnJ4X3JpbmdzW2pdKTsNCj4gLQkJaWYgKHJ4X3JpbmcgJiYgcnhfcmluZy0+cmluZ19zdGF0cykg
ew0KPiAtCQkJZGF0YVtpKytdID0gcnhfcmluZy0+cmluZ19zdGF0cy0+c3RhdHMucGt0czsNCj4g
LQkJCWRhdGFbaSsrXSA9IHJ4X3JpbmctPnJpbmdfc3RhdHMtPnN0YXRzLmJ5dGVzOw0KPiAtCQl9
IGVsc2Ugew0KPiArCQlpZiAoIXJ4X3JpbmcgfHwgIXJ4X3JpbmctPnJpbmdfc3RhdHMpIHsNCj4g
IAkJCWRhdGFbaSsrXSA9IDA7DQo+ICAJCQlkYXRhW2krK10gPSAwOw0KPiArCQkJY29udGludWU7
DQo+ICAJCX0NCj4gKw0KPiArCQlpY2VfZmV0Y2hfcnhfcmluZ19zdGF0cyhyeF9yaW5nLCAmcGt0
cywgJmJ5dGVzKTsNCj4gKw0KPiArCQlkYXRhW2krK10gPSBwa3RzOw0KPiArCQlkYXRhW2krK10g
PSBieXRlczsNCj4gIAl9DQo+IA0KPiAgCXJjdV9yZWFkX3VubG9jaygpOw0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuYw0KPiBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGliLmMNCj4gaW5kZXggYzZkZDI5NzU4MmMxLi4x
YzhiNjEyOTgzNWQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfbGliLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9s
aWIuYw0KPiBAQCAtMzQ3MCw2ICszNDcwLDQyIEBAIHZvaWQgaWNlX3VwZGF0ZV9yeF9yaW5nX3N0
YXRzKHN0cnVjdA0KPiBpY2VfcnhfcmluZyAqcnhfcmluZywgdTY0IHBrdHMsIHU2NCBieXRlcykN
Cj4gIAl1NjRfc3RhdHNfdXBkYXRlX2VuZCgmcnhfcmluZy0+cmluZ19zdGF0cy0+c3luY3ApOw0K
PiAgfQ0KPiANCj4gKy8qKg0KPiArICogaWNlX2ZldGNoX3R4X3Jpbmdfc3RhdHMgLSBGZXRjaCBU
eCByaW5nIHBhY2tldCBhbmQgYnl0ZSBjb3VudGVycw0KPiArICogQHJpbmc6IHJpbmcgdG8gdXBk
YXRlDQo+ICsgKiBAcGt0czogbnVtYmVyIG9mIHByb2Nlc3NlZCBwYWNrZXRzDQo+ICsgKiBAYnl0
ZXM6IG51bWJlciBvZiBwcm9jZXNzZWQgYnl0ZXMNCj4gKyAqLw0KPiArdm9pZCBpY2VfZmV0Y2hf
dHhfcmluZ19zdGF0cyhjb25zdCBzdHJ1Y3QgaWNlX3R4X3JpbmcgKnJpbmcsDQo+ICsJCQkgICAg
IHU2NCAqcGt0cywgdTY0ICpieXRlcykNCj4gK3sNCj4gKwl1bnNpZ25lZCBpbnQgc3RhcnQ7DQo+
ICsNCj4gKwlkbyAgew0KPiArCQlzdGFydCA9IHU2NF9zdGF0c19mZXRjaF9iZWdpbigmcmluZy0+
cmluZ19zdGF0cy0+c3luY3ApOw0KPiArCQkqcGt0cyA9IHJpbmctPnJpbmdfc3RhdHMtPnBrdHM7
DQo+ICsJCSpieXRlcyA9IHJpbmctPnJpbmdfc3RhdHMtPmJ5dGVzOw0KPiArCX0gd2hpbGUgKHU2
NF9zdGF0c19mZXRjaF9yZXRyeSgmcmluZy0+cmluZ19zdGF0cy0+c3luY3AsDQo+IHN0YXJ0KSk7
IH0NCj4gKw0KPiArLyoqDQo+ICsgKiBpY2VfZmV0Y2hfcnhfcmluZ19zdGF0cyAtIEZldGNoIFJ4
IHJpbmcgcGFja2V0IGFuZCBieXRlIGNvdW50ZXJzDQo+ICsgKiBAcmluZzogcmluZyB0byByZWFk
DQo+ICsgKiBAcGt0czogbnVtYmVyIG9mIHByb2Nlc3NlZCBwYWNrZXRzDQo+ICsgKiBAYnl0ZXM6
IG51bWJlciBvZiBwcm9jZXNzZWQgYnl0ZXMNCj4gKyAqLw0KPiArdm9pZCBpY2VfZmV0Y2hfcnhf
cmluZ19zdGF0cyhjb25zdCBzdHJ1Y3QgaWNlX3J4X3JpbmcgKnJpbmcsDQo+ICsJCQkgICAgIHU2
NCAqcGt0cywgdTY0ICpieXRlcykNCj4gK3sNCj4gKwl1bnNpZ25lZCBpbnQgc3RhcnQ7DQo+ICsN
Cj4gKwlkbyAgew0KPiArCQlzdGFydCA9IHU2NF9zdGF0c19mZXRjaF9iZWdpbigmcmluZy0+cmlu
Z19zdGF0cy0+c3luY3ApOw0KPiArCQkqcGt0cyA9IHJpbmctPnJpbmdfc3RhdHMtPnBrdHM7DQo+
ICsJCSpieXRlcyA9IHJpbmctPnJpbmdfc3RhdHMtPmJ5dGVzOw0KPiArCX0gd2hpbGUgKHU2NF9z
dGF0c19mZXRjaF9yZXRyeSgmcmluZy0+cmluZ19zdGF0cy0+c3luY3AsDQo+IHN0YXJ0KSk7IH0N
Cj4gKw0KPiAgLyoqDQo+ICAgKiBpY2VfaXNfZGZsdF92c2lfaW5fdXNlIC0gY2hlY2sgaWYgdGhl
IGRlZmF1bHQgZm9yd2FyZGluZyBWU0kgaXMNCj4gYmVpbmcgdXNlZA0KPiAgICogQHBpOiBwb3J0
IGluZm8gb2YgdGhlIHN3aXRjaCB3aXRoIGRlZmF1bHQgVlNJIGRpZmYgLS1naXQNCj4gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYw0KPiBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jDQo+IGluZGV4IDMwMDczZWQ5Y2E5OS4uZjBmNTEz
M2MzODlmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X3R4cnguYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cngu
Yw0KPiBAQCAtMTA4NywzNSArMTA4NywzNiBAQCBzdGF0aWMgdm9pZCBfX2ljZV91cGRhdGVfc2Ft
cGxlKHN0cnVjdA0KPiBpY2VfcV92ZWN0b3IgKnFfdmVjdG9yLA0KPiAgCQkJCXN0cnVjdCBkaW1f
c2FtcGxlICpzYW1wbGUsDQo+ICAJCQkJYm9vbCBpc190eCkNCj4gIHsNCj4gLQl1NjQgcGFja2V0
cyA9IDAsIGJ5dGVzID0gMDsNCj4gKwl1NjQgdG90YWxfcGFja2V0cyA9IDAsIHRvdGFsX2J5dGVz
ID0gMCwgcGt0cywgYnl0ZXM7DQo+IA0KPiAgCWlmIChpc190eCkgew0KPiAgCQlzdHJ1Y3QgaWNl
X3R4X3JpbmcgKnR4X3Jpbmc7DQo+IA0KPiAgCQlpY2VfZm9yX2VhY2hfdHhfcmluZyh0eF9yaW5n
LCAqcmMpIHsNCj4gLQkJCXN0cnVjdCBpY2VfcmluZ19zdGF0cyAqcmluZ19zdGF0czsNCj4gLQ0K
PiAtCQkJcmluZ19zdGF0cyA9IHR4X3JpbmctPnJpbmdfc3RhdHM7DQo+IC0JCQlpZiAoIXJpbmdf
c3RhdHMpDQo+ICsJCQlpZiAoIXR4X3JpbmctPnJpbmdfc3RhdHMpDQo+ICAJCQkJY29udGludWU7
DQo+IC0JCQlwYWNrZXRzICs9IHJpbmdfc3RhdHMtPnN0YXRzLnBrdHM7DQo+IC0JCQlieXRlcyAr
PSByaW5nX3N0YXRzLT5zdGF0cy5ieXRlczsNCj4gKw0KPiArCQkJaWNlX2ZldGNoX3R4X3Jpbmdf
c3RhdHModHhfcmluZywgJnBrdHMsICZieXRlcyk7DQo+ICsNCj4gKwkJCXRvdGFsX3BhY2tldHMg
Kz0gcGt0czsNCj4gKwkJCXRvdGFsX2J5dGVzICs9IGJ5dGVzOw0KPiAgCQl9DQo+ICAJfSBlbHNl
IHsNCj4gIAkJc3RydWN0IGljZV9yeF9yaW5nICpyeF9yaW5nOw0KPiANCj4gIAkJaWNlX2Zvcl9l
YWNoX3J4X3JpbmcocnhfcmluZywgKnJjKSB7DQo+IC0JCQlzdHJ1Y3QgaWNlX3Jpbmdfc3RhdHMg
KnJpbmdfc3RhdHM7DQo+IC0NCj4gLQkJCXJpbmdfc3RhdHMgPSByeF9yaW5nLT5yaW5nX3N0YXRz
Ow0KPiAtCQkJaWYgKCFyaW5nX3N0YXRzKQ0KPiArCQkJaWYgKCFyeF9yaW5nLT5yaW5nX3N0YXRz
KQ0KPiAgCQkJCWNvbnRpbnVlOw0KPiAtCQkJcGFja2V0cyArPSByaW5nX3N0YXRzLT5zdGF0cy5w
a3RzOw0KPiAtCQkJYnl0ZXMgKz0gcmluZ19zdGF0cy0+c3RhdHMuYnl0ZXM7DQo+ICsNCj4gKwkJ
CWljZV9mZXRjaF9yeF9yaW5nX3N0YXRzKHJ4X3JpbmcsICZwa3RzLCAmYnl0ZXMpOw0KPiArDQo+
ICsJCQl0b3RhbF9wYWNrZXRzICs9IHBrdHM7DQo+ICsJCQl0b3RhbF9ieXRlcyArPSBieXRlczsN
Cj4gIAkJfQ0KPiAgCX0NCj4gDQo+IC0JZGltX3VwZGF0ZV9zYW1wbGUocV92ZWN0b3ItPnRvdGFs
X2V2ZW50cywgcGFja2V0cywgYnl0ZXMsDQo+IHNhbXBsZSk7DQo+ICsJZGltX3VwZGF0ZV9zYW1w
bGUocV92ZWN0b3ItPnRvdGFsX2V2ZW50cywNCj4gKwkJCSAgdG90YWxfcGFja2V0cywgdG90YWxf
Ynl0ZXMsIHNhbXBsZSk7DQo+ICAJc2FtcGxlLT5jb21wX2N0ciA9IDA7DQo+IA0KPiAgCS8qIGlm
IGRpbSBzZXR0aW5ncyBnZXQgc3RhbGUsIGxpa2Ugd2hlbiBub3QgdXBkYXRlZCBmb3IgMQ0KPiAN
Cj4gLS0NCj4gMi41MS4wLnJjMS4xOTcuZzZkOTc1ZTk1YzlkNw0KDQpSZXZpZXdlZC1ieTogQWxl
a3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
