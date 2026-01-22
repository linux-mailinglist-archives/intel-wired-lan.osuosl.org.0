Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICdJKY8NcmksawAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 12:44:15 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C05662D4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 12:44:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A398A6F831;
	Thu, 22 Jan 2026 11:44:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JB7nSYYgiqsh; Thu, 22 Jan 2026 11:44:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0BAD6F835
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769082252;
	bh=hZOC/i58UXE2cWnRhfhAYcvZib9liDfV8+isXfqiR9M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RKT0MVOO0IS/o8/AhovHEuGFP0XbInfWwO38eZ5lzWh9239pdluIAaYTvOJ8tmWGX
	 FCdUH5Rs0OlJYT2vbDUU54aca7WKcoAeGnb75Jy4L0MqaFUSHOGOyO9iXUxW5cjxDB
	 zaPtchocI9c2mjYaDrf/h/qs1jG0vjfM9Ucmgd9q58ONfSYwbLg5Pu2WKLaimCOVWG
	 9erPyKyDiaHa0hjhgp2pL21GhwgUBoiMTo2SHkeX7gznDitD6CTfUYK/i7mrqyhtco
	 stR2Bap+/ZZlJZtWUIEhwVX+Ic5QYvukAfMpDrKmiTqBo1D2Z3YRnfIajsk2XwkRWi
	 MLJI576J1gE0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E0BAD6F835;
	Thu, 22 Jan 2026 11:44:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 17460158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 11:44:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F122D6F831
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 11:44:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MgddqAoY2LV0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 11:44:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A826E6F830
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A826E6F830
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A826E6F830
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 11:44:09 +0000 (UTC)
X-CSE-ConnectionGUID: gBTxbtO4Qv+Lhh5loLH8ZQ==
X-CSE-MsgGUID: UW5gn61nTKekGz65ppqbEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="92985516"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="92985516"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:44:08 -0800
X-CSE-ConnectionGUID: 5TGgO/oPTOum8ebT2WlxBQ==
X-CSE-MsgGUID: Wa1o90ULTkamfIK7TgPPPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="206616455"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:44:08 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:44:08 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 03:44:08 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.9) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:44:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hxQAI4P7bE9JyDPOG5NoMu3VZ2RmXu5RG55CjoyFT+BmTvmgoxkOXGfPZjtT7HEI5BSFbOiBw7cc0XKtgDTXbZ/e8h3KI5gpuUndwwFAj5LvIiOJxYK+lWaFm6yFszYlKbg4VAfYc01mCJAeUItXVjYoLK2dtVU1ezgSZC31bOpJoO+YV9JIvcvI7RBITeKSjnvyabmJjvWcLFAKmGDzUbFUhsZtwLNSrgpngJRSW8jYIMsvgDNxSL/YdNBLDNR/utXUSuY5DBfQISJFf9YEM4++NDKrM2Ae1AMaZZMu9RqtHMB01KtRfUirdzcgeLlE495c6oYAcuiOOGFJVmmIDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hZOC/i58UXE2cWnRhfhAYcvZib9liDfV8+isXfqiR9M=;
 b=UQYS301oFKlQ1AnCkrCFgaubXURsFZP4Zgzzw377dfdkdSf/837sEPm2iUWsoS80kZeFGGKjhZAcT9NIFaZ0FKhIGQbCo4SEZU0BWL9+Jo21jM2YKCUd+IMgQHYl3LjLRaEy4VdjbGYKNWxoVynKxRRYvKJP3ffqNHP+YZZ5RAj63O1hMkUx4FsyCevq8aNJA+ABb+e8shDY7tAmjkqU65PhBHsj/fXZ2oKp2mN4oh2e2Kx6EmNWITr39EaI5TdziSkB3oEyOMSQqnF+fo1g2GM+lIYZiKp9BwXFHN00zdcjS+sx/eNsJivjOyNbKBprSUuEr4wsAHXVezsFLLq5jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by IA1PR11MB9471.namprd11.prod.outlook.com (2603:10b6:208:5b3::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Thu, 22 Jan
 2026 11:44:05 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305%5]) with mapi id 15.20.9542.010; Thu, 22 Jan 2026
 11:44:05 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH iwl-net] ice: PTP: fix missing timestamps on E825 hardware
Thread-Index: AQHciwYYanzOn1O0kE2RiFcBmb0glrVeEfeQ
Date: Thu, 22 Jan 2026 11:44:05 +0000
Message-ID: <PH0PR11MB4904E69D5795697EEEA32D249497A@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20260121-jk-e825c-fix-missing-timetamps-v1-1-f090eabfc823@intel.com>
In-Reply-To: <20260121-jk-e825c-fix-missing-timetamps-v1-1-f090eabfc823@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|IA1PR11MB9471:EE_
x-ms-office365-filtering-correlation-id: 586cfad1-3947-4fc7-2107-08de59ab8bf8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?OFp4aTlJNlZnSmZLSU9lWllVcXRyUXE0eUwwOU82ME0yTlJyV09VMzlER3Vy?=
 =?utf-8?B?Q3FOWHNERU1DdG8xVnR2VU9sc2IvanYxQ3hSd1JZZm81ZVlCek9GcWxtSnZE?=
 =?utf-8?B?NTRJL3hVbzFDY3hUVjhweVd0NEJwWHhsR29HTUllWWdBR1lpY00zdVFoejE1?=
 =?utf-8?B?c1lMVmhsMDdzZXl6UzhPdWI2ZE9OakVVTjZjTWFTY29UMVlhbkVoMGRmTUs5?=
 =?utf-8?B?UHpmQUU4S0hhNWtMNE5FNllYcHRTZzRyK2k4ZDRCR1M1cENZc214R3BOS1V1?=
 =?utf-8?B?RzRMV1ExWU1JM1g5NHdDMFlUUkUrOHdwTDEvSm4vS0JJeUxOekJTY3hkTWlo?=
 =?utf-8?B?VStaV0t4U005dXlQOFpVYm5HUVN3Zkh2b2ZlTkFwQjNlc2tTRHdFZHR3ZEVq?=
 =?utf-8?B?YWdoSk5RV3d2dnk3dkdYb1JmVTBGZzlIeGRSdGdZNUVDNTRqYlB5UndkZnFy?=
 =?utf-8?B?WUdHeWh2ZG1SNnV0bjc1ditqdHpEbVFhaysxMUpyaExVODViYVBuN21hNkRK?=
 =?utf-8?B?dkNSNVFiZlFMY2VFYS9NWFZnMWdab1E1NndqbXJLNFEyMjZSKzBEb01xWVBZ?=
 =?utf-8?B?TmlUS05yam1McTMvY3lpUkF1T0wwaFlDRkU1SzIwUGt6Ri9sblkzY1E0Szds?=
 =?utf-8?B?VVBmWVhxOTJyRnIyZmlkODFlL0JmUUlBTjBuTFF2YVJqTjQvRjZpQUpaNE5v?=
 =?utf-8?B?R0pZNTdtQXQ4NTZNVy9iOUw3UmJjUEhOd09SOGtXYkZadFFNUk55bEJIajYy?=
 =?utf-8?B?bUF1dSszQWlUZ1FhTkRJZTVwS0wwUWloZzZEUGZscGt3QmJianJldjJZcnFw?=
 =?utf-8?B?ZkZtc2NoQTUzSDVad3FOUE5QdURPV2Q4dUJIRnJoYm9TM3BMWnRKMkNiL1V1?=
 =?utf-8?B?VjNUbnl3VUdqUGRvMXMxR21CNWR6Mklxa0xuWWRoWVZUK3JyVWtiV3Q0VmhC?=
 =?utf-8?B?WUt5b3AvV1lRcnY4ZFZzTG8xWjJYTS9kYnFzRXZlTGdmSHBCaHRhbWdIN3NJ?=
 =?utf-8?B?bHludEM5clFkNkh4S1p5YUJnT1poeHpDZEdlWUFWUUNUNnBlTzJHWlNpYVFT?=
 =?utf-8?B?SXpVb1J2ay8wTDNkeDFuZjVXUzhpNHpFdFZxQnFkOWhPRk1BUVNuRFhrb3Jx?=
 =?utf-8?B?R0E1ZWZkY3VEZVdmc2MzbDJPd2VsUHVVVkE4bU5KV3NKc1QvbnJrQ3N0b09M?=
 =?utf-8?B?NExKK2Yrb2NMV3ZES0NrUEZJRHBYU3l1QkZjZFBVZ1JqT1cvR0RFMGZsNWx1?=
 =?utf-8?B?a2J1b0wyMmFYMFJzaUtqbzg3ZkNJZUJ4NWlzdk4rRmdRK0hkeHRNODBNZ1NY?=
 =?utf-8?B?dlA5TGtPQ2VyTWtRT3k1cVNoU0JCSThzRmFHd1grSlR0bVNZQmtEWW5JWU5Z?=
 =?utf-8?B?TFN1TVQ4cEs1bG1Dc0ZMalpQN1VVd2t1K2ZUa0VobEt1Q0VFbFNqZ1F4THJa?=
 =?utf-8?B?SG1NUDRDbDBOajEvZHp6RkhXK2J2L0Rsak56bnJucCtzalM3WEJrSmk3SFM3?=
 =?utf-8?B?aXlmWHZzYzA1WWNPRkhrc1NDRXhEU1diV1RSYzltb2E3NUJ0ZVhsZW5GSHJB?=
 =?utf-8?B?Y000czF2U3ZBbEFiS3RielFKMFQ4U3BzaERzUlZuM3pwQ2h5aGpXRXRSK0RR?=
 =?utf-8?B?LzBTUnB1Mml3M2p2VHRaTjIrZ0FkeWdJWkZFbHhCOWxGZHVtVmJ4Q25KSk0y?=
 =?utf-8?B?SVRwNVdrNzUvQlVSNFJXbXExbnA0QTBUSzcxaEtJTlN3MFVZRG00a0FnQ0Uv?=
 =?utf-8?B?U09qb0xBWjhQNUlwdkVIb3NRT0ZBNm91YjZtM0VGVVdaS0VYUklCVjkzbjlP?=
 =?utf-8?B?NWt5b0lEZW5aUmVOZmdKclBGaExTNndDUm0xeXJaWGxvY3h5NnhBSnJpd21u?=
 =?utf-8?B?anhxMEIxVnBZZHR3MkFOQnU1NU5IVGJka0FrNmxnaTNhL1JYQThWVVRSaEho?=
 =?utf-8?B?K3dkUHljekhLeFM4WGhSczNzOVpwNnY3RUFFd0lydVc5amVOZnZmU0VHZzJn?=
 =?utf-8?B?dDlkbldFTThVdm43T3lGS0FDY0F1c3RMSEFrTVYwTUp5RlBXTmFqZStESVVW?=
 =?utf-8?B?MUJkWWdFSVJ6ZEpmalNLVnRnS1FaMVhoUGRSN3V4WnpGd2xXWGEyWXFaVlFj?=
 =?utf-8?B?SmdIM2NqaitqMVZJZGRWc3gvS0RKVDIyQzdFbHMrc3lIMS9tMmJsSVEzUTVl?=
 =?utf-8?Q?L7lOOzEq3Jr5CTOi7XNdDWg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NTBKWm5UeW9GV0NmaFNzNG16YnJHSlhTZ2hRVDJIWm1YNWZDZ01NOUNMV3Jw?=
 =?utf-8?B?bGNlNGkrUkhhVmp2VXJWb0Rha3pMTXovVldMUGpLS3ArQWtETk93SEtrWGQ2?=
 =?utf-8?B?N0loVnc0cDNNcGxqVDVjUXhxWVFuWkFqbGlHL2NJbUIvRUlpVENDb3pDblFh?=
 =?utf-8?B?T3hjK0RWRkFQTjUweFBxbDNZbC9ZSzd0MjRzOFA5RGFtcElJOVloNHZ2ZXE1?=
 =?utf-8?B?NFkvTmtlV1hKa1ZJbXExVmRWYTYrQ3drekdPSzNjM3RDUHEzaVNwTjZ2OFlZ?=
 =?utf-8?B?RW1TT1hwYlMyR2JOSEpkaU1tK3ZTM3R4b1AvY3NRYS9QdzdGUzk1bXNDb1l3?=
 =?utf-8?B?MmZyNjFOVWJUM0puWXFKK29SdFpaM2hheTlmNDR1Uk5LcmFEK1l4NHJKZVFP?=
 =?utf-8?B?QlpVV3Vlalh0aGZ1YXFRcHdyWWRYVm0rOGdreVZGTFk5VUQ0THg1Q1FVZzFn?=
 =?utf-8?B?TTZIYWE2bnhGZVE1V2V1S0E2bUFsUXFwMHVZRjJXdy8wVk1LUzAyOVhxL2hE?=
 =?utf-8?B?UkQ3bndmR3IzK012VHV1K3lhbXFGeHlPc010VDA0MXN4aUpZZENPY3I5eWRP?=
 =?utf-8?B?SFZDWjFxczB5T0oxanRVaTFzYy9nRjZhVFZqTVozdGk2clpzL0FldXZuUktv?=
 =?utf-8?B?aWRpd2dvNTMyUkJOZXJ5L0ZWaVhsanNCN2VRaHNXMUJuZFVVR1Brc01MVXRE?=
 =?utf-8?B?YXJpd2YvVkZyRjRHMVNwUDdXb21uYVRzb0VhMVlWbys3RDlMZm5zdjdhZ1E5?=
 =?utf-8?B?TjBpUUY2VWRidnhtT25scWlyamd6UUd6S0ZtNlVlYXFoMVc5eXBYN25XZWNz?=
 =?utf-8?B?QmN5K21ZejZ5ZEorak1OQkdveDRib1VqTXd5eXEwVlFuWjBvR1BCUVlJeEl2?=
 =?utf-8?B?NCtSeWxLdHhwb1ZBL1lzT2xJWGl6ZGpRcmJ5SUc2T0pmb3dsVGcxZElmNnhR?=
 =?utf-8?B?TUV4UmtzcXdjVDlUQ3pYQ2h6ejA3OGsrekhRdCt2R0pGSXJqWEhUemtQZjlK?=
 =?utf-8?B?WGpabkphS0k0eWZTR0s4ZGdBNThUS3hWT01KUmh4MUV2SjBtRlFsZ2o4SGlh?=
 =?utf-8?B?b0sxVW9mQWNEc0gxR1BPKzd1NzBGaE9wdEl4eHc5cDVPS2VaTy9scFRIMnlT?=
 =?utf-8?B?bW1keHpBSStwcnNXVHhXa3NkKzExUGk5WmNkbkZnZEJnR3NNYTFqb1VGQWhM?=
 =?utf-8?B?L3hKMzJNb3RVaHpxRzdtbVd0MVhNMk4rNDJZVWV1eTA1bEJaNW9PTHRtYVI4?=
 =?utf-8?B?OXJLWkhoSE1KRXJOTjdNd09SOEdyL3NlU2UzVzNWK1V5ZEd5WTF6VHBFbWJ6?=
 =?utf-8?B?ZEt5UUlYd3pzcUJjcVhyQWQySUxTVFVqcE1kT0NCVUhHc3FxTm9mYzRoWmxL?=
 =?utf-8?B?bnNNMUdYM2tITTVwUXNnb0RzSDZJOGx2c0tQY05Yejdhc3I4a2lwNHA0VVhQ?=
 =?utf-8?B?eUM1bWZzY3oyamtobDRxOU5pOEFwVDVVQkM2UHAydjl3SHBwakg2RXNRZmUw?=
 =?utf-8?B?cDFzTHRMSlVMYjJ4eXRkTkZzVGNxOGEwektEUUhjRWxjb1JWWko2YTNSa0I4?=
 =?utf-8?B?RVgyWVdpQUMvYlFHelhQdmh4ZVZjV2xVVTVSbWpPbDRRSTRIZEtDakwvMnhp?=
 =?utf-8?B?MlFYa2RiVUtYM0RYbzdiU3dZTTM2VnpsWjdRNXlGMkptdDhxMy9zaVNUdjdR?=
 =?utf-8?B?amZpWDRpVVBWSzVqNzFaRGlxSUZRSmZOL0Q4cFJ3dVpqZTdiU2lRbzRaWGx3?=
 =?utf-8?B?a1VzVk5ReGNlQmJNRkt1cGl4RVk4NURwZDJmbitVc3NnaXVkb1d5ckRMZkxv?=
 =?utf-8?B?K1p6Z2g3NFpyaHkxbVpaZHZoazkySCs5aGJ5NWhMbE02VndsUjJiL2FNT1NH?=
 =?utf-8?B?Wkdxb2RyQzVtSHhQYVpIellYNGV5YnpIM1RlMS9lU2hKb0IwRzFOcHRsbHQ3?=
 =?utf-8?B?aWZDeU5HVmx0clJzNUFjWFlXaVl4YTJGSHFsanlmWUdFL2VPNUlNWkxkclNq?=
 =?utf-8?B?U2l2cFlwL012TlVPMW1SQjloVFhNYTQ1RXNjM3p5TVNZQ1FEODY4M1kwWDVL?=
 =?utf-8?B?eXdpYWU2dDcyeXdVYitBeEpTbEVKenJGcHRjMmpoaDVZWVRUcklQTGF1NEMv?=
 =?utf-8?B?SmFWOWxUTkRvTFQvb1pLTk8xV1Y1ZUZNNGZrc2tkTWhsNllrcFc4ODIvWGFH?=
 =?utf-8?B?aTV0SjZOdHpIT3Yrd09CeEZmWHhKNHg4YUszbVlobERqZlFNNXlJYjkrcXZj?=
 =?utf-8?B?cnZ3a3pvbUxnTlAxblNHTGZ1YUxQVXRJMndhcmErTzJTTnFNOWpkYTh2Ri82?=
 =?utf-8?B?Ym1nQWFjaEhjSkVPUXhXN1JhQ2IraFp0Mlc2VWM1RlJRK3RUWHRwdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 586cfad1-3947-4fc7-2107-08de59ab8bf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2026 11:44:05.5250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cgw26bzMzI7ugngm1DihXYX6ZwJGAcLWAbUWnVcFbCaTPaHUQ1I6TvCFns9v7KzA5K/PsaAOOky3JfccM6/A8QW16ZyO7oCFmm+1Ve9qfAE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB9471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769082249; x=1800618249;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hZOC/i58UXE2cWnRhfhAYcvZib9liDfV8+isXfqiR9M=;
 b=OAvFZ4ltSRauYIGinTcJZcRoAp6zllVDNFHhZiMWhjCv2T0JztSsjkgk
 /8OvpysGtd9dqdUFa6LPZHAi9BNcKXbhXRtK+ZWFoBfdxpOlNdNfa1gqI
 gWWHW6sE1ooQJwaIkwA1M3cMYzNxw1miTfqqvmNj41m5+4POKJWfk1fk0
 S+H/r+0CKVTmnHQhslVlnmIhAyBDcNNKUJiKYAzIb6JcznuH3NFA/k34m
 UezJEgW/BINP4co3AiGkzYNrWKZiFHmgCxejRLpTEBEs/lGWcGpAtaMj2
 2FBKuBpSzLbAqoHyl23SenAhGW8cvz4f19F5YxScph8ho8aKWnjbvXXJc
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OAvFZ4lt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: PTP: fix missing
 timestamps on E825 hardware
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 03C05662D4
X-Rspamd-Action: no action

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEtlbGxlciwgSmFjb2IgRSA8
amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIEphbnVhcnkgMjEs
IDIwMjYgNzo0NCBQTQ0KPiBUbzogSW50ZWwgV2lyZWQgTEFOIDxpbnRlbC13aXJlZC1sYW5AbGlz
dHMub3N1b3NsLm9yZz47IEtvcmJhLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtvcmJhQGludGVs
LmNvbT47IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7DQo+IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255
Lmwubmd1eWVuQGludGVsLmNvbT4NCj4gQ2M6IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxs
ZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggaXdsLW5ldF0gaWNlOiBQVFA6IGZpeCBt
aXNzaW5nIHRpbWVzdGFtcHMgb24gRTgyNSBoYXJkd2FyZQ0KPiANCj4gVGhlIEU4MjUgaGFyZHdh
cmUgY3VycmVudGx5IGhhcyBlYWNoIFBGIGhhbmRsZSB0aGUgUEZJTlRfVFNZTl9UWCBjYXVzZSBv
Zg0KPiB0aGUgbWlzY2VsbGFuZW91cyBPSUNSIGludGVycnVwdCB2ZWN0b3IuIFRoZSBhY3R1YWwg
aW50ZXJydXB0IGNhdXNlDQo+IHVuZGVybHlpbmcgdGhpcyBpcyBzaGFyZWQgYnkgYWxsIHBvcnRz
IG9uIHRoZSBzYW1lIHF1YWQ6DQo+IA0KPiAgIOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUkA0KPiAgIOKUgiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIOKUgg0KPiAgIOKUgiAgIOKUjOKUgOKUgOKUgOKUgOKUkCDilIzilIDilIDilIDilIDilJAg
4pSM4pSA4pSA4pSA4pSA4pSQIOKUjOKUgOKUgOKUgOKUgOKUkCAgIOKUgg0KPiAgIOKUgiAgIOKU
glBGIDDilIIg4pSCUEYgMeKUgiDilIJQRiAy4pSCIOKUglBGIDPilIIgICDilIINCj4gICDilIIg
ICDilJTilIDilIDilIDilIDilJgg4pSU4pSA4pSA4pSA4pSA4pSYIOKUlOKUgOKUgOKUgOKUgOKU
mCDilJTilIDilIDilIDilIDilJggICDilIINCj4gICDilIIgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICDilIINCj4gICDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilrLilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilJgNCj4gICAgICAgICAgICAgICAgICAgIOKUgg0KPiAgICAgICAgICAgICAgICAg
ICAg4pSCDQo+ICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pS84pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSQDQo+ICAg4pSCICAgICAgICAgICAgIFBIWSBRVUFEICAgICAgICAgICAg4pSCDQo+ICAg4pSU
4pSA4pSA4pSA4pay4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pay4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pay4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pay4pSA4pSA4pSYDQo+ICAgICAgIOKU
giAgICAgICAg4pSCICAgICAgICDilIIgICAgICAgIOKUgg0KPiAgIOKUjOKUgOKUgOKUgOKUvOKU
gOKUgOKUkCDilIzilIDilIDilIDilLTilIDilIDilJAg4pSM4pSA4pSA4pSA4pS84pSA4pSA4pSQ
IOKUjOKUgOKUgOKUgOKUvOKUgOKUgOKUkA0KPiAgIOKUglBvcnQgMOKUgiDilIJQb3J0IDHilIIg
4pSCUG9ydCAy4pSCIOKUglBvcnQgM+KUgg0KPiAgIOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKUmCDi
lJTilIDilIDilIDilIDilIDilIDilJgg4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSYIOKUlOKUgOKU
gOKUgOKUgOKUgOKUgOKUmA0KPiANCj4gSWYgbXVsdGlwbGUgUEZzIGlzc3VlIFR4IHRpbWVzdGFt
cCByZXF1ZXN0cyBuZWFyIHNpbXVsdGFuZW91c2x5LCBpdCBpcw0KPiBwb3NzaWJsZSB0aGF0IHRo
ZSBjb3JyZWN0IFBGIHdpbGwgbm90IGJlIGludGVycnVwdGVkIGFuZCB3aWxsIG1pc3MgaXRzDQo+
IHRpbWVzdGFtcC4gVW5kZXJzdGFuZGluZyB3aHkgaXMgc29tZXdoYXQgY29tcGxleC4NCj4gDQo+
IENvbnNpZGVyIHRoZSBmb2xsb3dpbmcgc2VxdWVuY2Ugb2YgZXZlbnRzOg0KPiANCj4gICBDUFUg
MDoNCj4gICBTZW5kIFR4IHBhY2tldCBvbiBQRiAwDQo+ICAgLi4uDQo+ICAgUEYgMCBlbnF1ZXVl
cyBwYWNrZXQgd2l0aCBUeCByZXF1ZXN0ICAgICAgICAgIENQVSAxLCBQRjE6DQo+ICAgLi4uICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNlbmQgVHggcGFja2V0IG9u
IFBGMQ0KPiAgIC4uLiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQ
RiAxIGVucXVldWVzIHBhY2tldCB3aXRoIFR4IHJlcXVlc3QNCj4gDQo+ICAgSFc6DQo+ICAgUEhZ
IFBvcnQgMCBzZW5kcyBwYWNrZXQNCj4gICBQSFkgcmFpc2VzIFR4IHRpbWVzdGFtcCBldmVudCBp
bnRlcnJ1cHQNCj4gICBNQUMgcmFpc2VzIGVhY2ggUEYgaW50ZXJydXB0DQo+IA0KPiAgIENQVSAw
LCBQRjA6ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBDUFUgMSwgUEYxOg0KPiAg
IGljZV9taXNjX2ludHIoKSBjaGVja3MgZm9yIFR4IHRpbWVzdGFtcHMgICAgICBpY2VfbWlzY19p
bnRyKCkgY2hlY2tzIGZvciBUeCB0aW1lc3RhbXANCj4gICBTZWVzIHBhY2tldCByZWFkeSBiaXQg
c2V0ICAgICAgICAgICAgICAgICAgICAgU2VlcyBub3RoaW5nIGF2YWlsYWJsZQ0KPiAgIC4uLiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBFeGl0cw0KPiAgIC4uLg0K
PiAgIC4uLg0KPiAgIEhXOg0KPiAgIFBIWSBwb3J0IDEgc2VuZHMgcGFja2V0DQo+ICAgUEhZIGlu
dGVycnVwdCBpZ25vcmVkIGJlY2F1c2Ugbm90IGFsbCBwYWNrZXQgdGltZXN0YW1wcyByZWFkIHll
dC4NCj4gICAuLi4NCj4gICBSZWFkIHRpbWVzdGFtcCwgcmVwb3J0IHRvIHN0YWNrDQo+IA0KPiBC
ZWNhdXNlIHRoZSBpbnRlcnJ1cHQgZXZlbnQgaXMgc2hhcmVkIGZvciBhbGwgcG9ydHMgb24gdGhl
IHNhbWUgcXVhZCwgdGhlDQo+IFBIWSB3aWxsIG5vdCByYWlzZSBhIG5ldyBpbnRlcnJ1cHQgZm9y
IGFueSBQRiB1bnRpbCBhbGwgdGltZXN0YW1wcyBhcmUNCj4gcmVhZC4NCj4gDQo+IEluIHRoZSBl
eGFtcGxlIGFib3ZlLCB0aGUgc2Vjb25kIHRpbWVzdGFtcCBjb21lcyBpbiBmb3IgcG9ydCAxIGJl
Zm9yZSB0aGUNCj4gdGltZXN0YW1wIGZyb20gcG9ydCAwIGlzIHJlYWQuIEF0IHRoaXMgcG9pbnQs
IHRoZXJlIGlzIG5vIGxvbmdlciBhbg0KPiBpbnRlcnJ1cHQgdGhyZWFkIHJ1bm5pbmcgdGhhdCB3
aWxsIHJlYWQgdGhlIHRpbWVzdGFtcHMsIGJlY2F1c2UgZWFjaCBQRiBoYXMNCj4gY2hlY2tlZCBh
bmQgZm91bmQgdGhhdCB0aGVyZSB3YXMgbm8gd29yayB0byBkby4gQXBwbGljYXRpb25zIHN1Y2gg
YXMgcHRwNGwNCj4gd2lsbCB0aW1lb3V0IGFmdGVyIHdhaXRpbmcgYSBmZXcgbWlsbGlzZWNvbmRz
LiBFdmVudHVhbGx5LCB0aGUgd2F0Y2hkb2cNCj4gc2VydmljZSB0YXNrIHdpbGwgcmUtY2hlY2sg
Zm9yIGFsbCBxdWFkcyBhbmQgbm90aWNlIHRoYXQgdGhlcmUgYXJlDQo+IG91dHN0YW5kaW5nIHRp
bWVzdGFtcHMsIGFuZCBpc3N1ZSBhIHNvZnR3YXJlIGludGVycnVwdCB0byByZWNvdmVyLiBIb3dl
dmVyLA0KPiBieSB0aGlzIHBvaW50IGl0IGlzIGZhciB0b28gbGF0ZSwgYW5kIGFwcGxpY2F0aW9u
cyBoYXZlIGFscmVhZHkgZmFpbGVkLg0KPiANCj4gQWxsIG9mIHRoaXMgb2NjdXJzIGJlY2F1c2Ug
b2YgdGhlIHVuZGVybHlpbmcgaGFyZHdhcmUgYmVoYXZpb3IuIFRoZSBQSFkNCj4gY2Fubm90IHJh
aXNlIGEgbmV3IGludGVycnVwdCBzaWduYWwgdW50aWwgYWxsIG91dHN0YW5kaW5nIHRpbWVzdGFt
cHMgaGF2ZQ0KPiBiZWVuIHJlYWQuDQo+IA0KPiBBcyBhIGZpcnN0IHN0ZXAgdG8gZml4IHRoaXMs
IHN3aXRjaCB0aGUgRTgyNUMgaGFyZHdhcmUgdG8gdGhlDQo+IElDRV9QVFBfVFhfSU5URVJSVVBU
X0FMTCBtb2RlLiBJbiB0aGlzIG1vZGUsIG9ubHkgdGhlIGNsb2NrIG93bmVyIFBGIHdpbGwNCj4g
cmVzcG9uZCB0byB0aGUgUEZJTlRfVFNZTl9UWCBjYXVzZS4gT3RoZXIgUEZzIGRpc2FibGUgdGhp
cyBjYXVzZSBhbmQgd2lsbA0KPiBub3Qgd2FrZS4gSW4gdGhpcyBtb2RlLCB0aGUgY2xvY2sgb3du
ZXIgd2lsbCBpdGVyYXRlIG92ZXIgYWxsIHBvcnRzIGFuZA0KPiBoYW5kbGUgdGltZXN0YW1wcyBm
b3IgZWFjaCBjb25uZWN0ZWQgcG9ydC4NCj4gDQo+IFRoaXMgbWF0Y2hlcyB0aGUgRTgyMiBiZWhh
dmlvciwgYW5kIGlzIGEgbmVjZXNzYXJ5IGJ1dCBpbnN1ZmZpY2llbnQgc3RlcCB0bw0KPiByZXNv
bHZlIHRoZSBtaXNzaW5nIHRpbWVzdGFtcHMuDQo+IA0KPiBFdmVuIHdpdGggdXNlIG9mIHRoZSBJ
Q0VfUFRQX1RYX0lOVEVSUlVQVF9BTEwgbW9kZSwgd2Ugc3RpbGwgc29tZXRpbWVzIG1pc3MNCj4g
YSB0aW1lc3RhbXAgZXZlbnQuIFRoZSBpY2VfcHRwX3R4X3RzdGFtcF9vd25lcigpIGRvZXMgcmUt
Y2hlY2sgdGhlIHJlYWR5DQo+IGJpdG1hcCwgYnV0IGRvZXMgc28gYmVmb3JlIHJlLWVuYWJsaW5n
IHRoZSBPSUNSIGludGVycnVwdCB2ZWN0b3IuIEl0IGFsc28NCj4gb25seSBjaGVja3MgdGhlIHJl
YWR5IGJpdG1hcCwgYnV0IG5vdCB0aGUgc29mdHdhcmUgVHggdGltZXN0YW1wIHRyYWNrZXIuDQo+
IA0KPiBUbyBhdm9pZCByaXNrIG9mIGxvc2luZyBhIHRpbWVzdGFtcCwgcmVmYWN0b3IgdGhlIGxv
Z2ljIHRvIGNoZWNrIGJvdGggdGhlDQo+IHNvZnR3YXJlIFR4IHRpbWVzdGFtcCB0cmFja2VyIGJp
dG1hcCAqYW5kKiB0aGUgaGFyZHdhcmUgcmVhZHkgYml0bWFwLg0KPiBBZGRpdGlvbmFsbHksIGRv
IHRoaXMgb3V0c2lkZSBvZiBpY2VfcHRwX3Byb2Nlc3NfdHMoKSBhZnRlciB3ZSBoYXZlIGFscmVh
ZHkNCj4gcmUtZW5hYmxlZCB0aGUgT0lDUiBpbnRlcnJ1cHQuDQo+IA0KPiBSZW1vdmUgdGhlIGNo
ZWNrcyBmcm9tIHRoZSBpY2VfcHRwX3R4X3RzdGFtcCgpLCBpY2VfcHRwX3R4X3RzdGFtcF9vd25l
cigpLA0KPiBhbmQgdGhlIGljZV9wdHBfcHJvY2Vzc190cygpIGZ1bmN0aW9ucy4gVGhpcyByZXN1
bHRzIGluIGljZV9wdHBfdHhfdHN0YW1wKCkNCj4gYmVpbmcgbm90aGluZyBtb3JlIHRoYW4gYSB3
cmFwcGVyIGFyb3VuZCBpY2VfcHRwX3Byb2Nlc3NfdHhfdHN0YW1wKCkgc28gd2UNCj4gY2FuIHJl
bW92ZSBpdC4NCj4gDQo+IEFkZCB0aGUgaWNlX3B0cF90eF90c3RhbXBzX3BlbmRpbmcoKSBmdW5j
dGlvbiB3aGljaCByZXR1cm5zIGEgYm9vbGVhbg0KPiBpbmRpY2F0aW5nIGlmIHRoZXJlIGFyZSBh
bnkgcGVuZGluZyBUeCB0aW1lc3RhbXBzLiBGaXJzdCwgY2hlY2sgdGhlDQo+IHNvZnR3YXJlIHRp
bWVzdGFtcCB0cmFja2VyIGJpdG1hcC4gSW4gSUNFX1BUUF9UWF9JTlRFUlJVUFRfQUxMIG1vZGUs
IGNoZWNrDQo+ICphbGwqIHBvcnRzIHNvZnR3YXJlIHRyYWNrZXJzLiBJZiBhIHRyYWNrZXIgaGFz
IG91dHN0YW5kaW5nIHRpbWVzdGFtcA0KPiByZXF1ZXN0cywgcmV0dXJuIHRydWUuIEFkZGl0aW9u
YWxseSwgY2hlY2sgdGhlIFBIWSByZWFkeSBiaXRtYXAgdG8gY29uZmlybQ0KPiBpZiB0aGUgUEhZ
IGluZGljYXRlcyBhbnkgb3V0c3RhbmRpbmcgdGltZXN0YW1wcy4NCj4gDQo+IEluIHRoZSBpY2Vf
bWlzY190aHJlYWRfZm4oKSwgY2FsbCBpY2VfcHRwX3R4X3RzdGFtcHNfcGVuZGluZygpIGp1c3Qg
YmVmb3JlDQo+IHJldHVybmluZyBmcm9tIHRoZSBJUlEgdGhyZWFkIGhhbmRsZXIuIElmIGl0IHJl
dHVybnMgdHJ1ZSwgd3JpdGUgdG8NCj4gUEZJTlRfT0lDUiB0byB0cmlnZ2VyIGEgUEZJTlRfT0lD
Ul9UU1lOX1RYX00gc29mdHdhcmUgaW50ZXJydXB0LiBUaGlzIHdpbGwNCj4gZm9yY2UgdGhlIGhh
bmRsZXIgdG8gaW50ZXJydXB0IGFnYWluIGFuZCBjb21wbGV0ZSB0aGUgd29yayBldmVuIGlmIHRo
ZSBQSFkNCj4gaGFyZHdhcmUgZGlkIG5vdCBpbnRlcnJ1cHQgZm9yIGFueSByZWFzb24uDQo+IA0K
PiBUaGlzIHJlc3VsdHMgaW4gdGhlIGZvbGxvd2luZyBuZXcgZmxvdyBmb3IgaGFuZGxpbmcgVHgg
dGltZXN0YW1wczoNCj4gDQo+IDEpIHNlbmQgVHggcGFja2V0DQo+IDIpIFBIWSBjYXB0dXJlcyB0
aW1lc3RhbXANCj4gMykgUEhZIHRyaWdnZXJzIE1BQyBpbnRlcnJ1cHQNCj4gNCkgY2xvY2sgb3du
ZXIgZXhlY3V0ZXMgaWNlX21pc2NfaW50cigpIHdpdGggUEZJTlRfT0lDUl9UU1lOX1RYIGZsYWcg
c2V0DQo+IDUpIGljZV9wdHBfdHNfaXJxKCkgcmV0dXJucyBJUlFfV0FLRV9USFJFQUQNCj4gNykg
VGhlIGludGVycnVwdCB0aHJlYWQgd2FrZXMgdXAgYW5kIGtlcm5lbCBjYWxscyBpY2VfbWlzY19p
bnRyX3RocmVhZF9mbigpDQo+IDgpIGljZV9wdHBfcHJvY2Vzc190cygpIGlzIGNhbGxlZCB0byBo
YW5kbGUgYW55IG91dHN0YW5kaW5nIHRpbWVzdGFtcHMNCj4gOSkgaWNlX2lycV9keW5hbWljX2Vu
YSgpIGlzIGNhbGxlZCB0byByZS1lbmFibGUgdGhlIE9JQ1IgaGFyZHdhcmUgaW50ZXJydXB0DQo+
ICAgIGNhdXNlDQo+IDEwKSBpY2VfcHRwX3R4X3RzdGFtcHNfcGVuZGluZygpIGlzIGNhbGxlZCB0
byBjaGVjayBpZiB3ZSBtaXNzZWQgYW55IG1vcmUNCj4gICAgIG91dHN0YW5kaW5nIHRpbWVzdGFt
cHMsIGNoZWNraW5nIGJvdGggc29mdHdhcmUgYW5kIGhhcmR3YXJlIGluZGljYXRvcnMuDQo+IA0K
PiBXaXRoIHRoaXMgY2hhbmdlLCBpdCBzaG91bGQgbm8gbG9uZ2VyIGJlIHBvc3NpYmxlIGZvciBu
ZXcgdGltZXN0YW1wcyB0bw0KPiBjb21lIGluIHN1Y2ggYSB3YXkgdGhhdCB3ZSBsb3NlIGFuIGlu
dGVycnVwdC4gSWYgYSB0aW1lc3RhbXAgY29tZXMgaW4NCj4gYmVmb3JlIHRoZSBpY2VfcHRwX3R4
X3RzdGFtcHNfcGVuZGluZygpIGNhbGwsIGl0IHdpbGwgYmUgbm90aWNlZCBieSBhdA0KPiBsZWFz
dCBvbmUgb2YgdGhlIHNvZnR3YXJlIGJpdG1hcCBjaGVjayBvciB0aGUgaGFyZHdhcmUgYml0bWFw
IGNoZWNrLiBJZiB0aGUNCj4gdGltZXN0YW1wIGNvbWVzIGluICphZnRlciogdGhpcyBjaGVjaywg
aXQgc2hvdWxkIGNhdXNlIGEgdGltZXN0YW1wDQo+IGludGVycnVwdCBhcyB3ZSBoYXZlIGFscmVh
ZHkgcmVhZCBhbGwgdGltZXN0YW1wcyBmcm9tIHRoZSBQSFkgYW5kIHRoZSBPSUNSDQo+IHZlY3Rv
ciBoYXMgYmVlbiByZS1lbmFibGVkLg0KPiANCj4gRml4ZXM6IDdjYWI0NGYxYzM1ZiAoImljZTog
SW50cm9kdWNlIEVUSDU2RyBQSFkgbW9kZWwgZm9yIEU4MjVDIHByb2R1Y3RzIikNCj4gU2lnbmVk
LW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuaCAgfCAgMTMgKystDQo+
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyB8ICAyMCArKy0tDQo+
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jICB8IDE0OCArKysrKysr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTAzIGluc2VydGlv
bnMoKyksIDc4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3B0cC5oDQo+IGluZGV4IDI3MDE2YWFjNGYxZS4uODQ4OWJkODQyNzEwIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5oDQo+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmgNCj4gQEAgLTMwNCw4ICsz
MDQsOSBAQCB2b2lkIGljZV9wdHBfZXh0dHNfZXZlbnQoc3RydWN0IGljZV9wZiAqcGYpOw0KPiAg
czggaWNlX3B0cF9yZXF1ZXN0X3RzKHN0cnVjdCBpY2VfcHRwX3R4ICp0eCwgc3RydWN0IHNrX2J1
ZmYgKnNrYik7DQo+ICB2b2lkIGljZV9wdHBfcmVxX3R4X3NpbmdsZV90c3RhbXAoc3RydWN0IGlj
ZV9wdHBfdHggKnR4LCB1OCBpZHgpOw0KPiAgdm9pZCBpY2VfcHRwX2NvbXBsZXRlX3R4X3Npbmds
ZV90c3RhbXAoc3RydWN0IGljZV9wdHBfdHggKnR4KTsNCj4gLWVudW0gaWNlX3R4X3RzdGFtcF93
b3JrIGljZV9wdHBfcHJvY2Vzc190cyhzdHJ1Y3QgaWNlX3BmICpwZik7DQo+ICt2b2lkIGljZV9w
dHBfcHJvY2Vzc190cyhzdHJ1Y3QgaWNlX3BmICpwZik7DQo+ICBpcnFyZXR1cm5fdCBpY2VfcHRw
X3RzX2lycShzdHJ1Y3QgaWNlX3BmICpwZik7DQo+ICtib29sIGljZV9wdHBfdHhfdHN0YW1wc19w
ZW5kaW5nKHN0cnVjdCBpY2VfcGYgKnBmKTsNCj4gIHU2NCBpY2VfcHRwX3JlYWRfc3JjX2Nsa19y
ZWcoc3RydWN0IGljZV9wZiAqcGYsDQo+IC0tLQ0KDQouLi4NCg0KPiBiYXNlLWNvbW1pdDogZDQx
ZjhhY2Y3YTg2ZGU2OGQ4ZTFkMGQ1YWIyODhjYTVhMDAzYWUyOQ0KPiBjaGFuZ2UtaWQ6IDIwMjYw
MTE2LWprLWU4MjVjLWZpeC1taXNzaW5nLXRpbWV0YW1wcy1kZGFhOWYwODgzM2UNCj4gDQo+IEJl
c3QgcmVnYXJkcywNCj4gLS0NCj4gSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5j
b20+DQoNClJldmlld2VkLWJ5OiBQcnplbXlzbGF3IEtvcmJhIDxwcnplbXlzbGF3LmtvcmJhQGlu
dGVsLmNvbT4NCg==
