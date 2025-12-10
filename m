Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBB8CB2D67
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 12:36:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84B0140406;
	Wed, 10 Dec 2025 11:36:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BAlV5WA5KEVj; Wed, 10 Dec 2025 11:36:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F042C40391
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765366572;
	bh=VPx/zRR3xxKBNxPD4ZmRSskMU55y8eLekxSUFD45m8g=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tmz75O5oBB5wVLidQBZxnNIz8WOUZwYyfpJJAr17rw6/imBg4VrOuccF8fME9zlPA
	 p+Sxr/Xag9QFB0+KddHfdObllDTlspnPMuFi4GQF5WeUmpCL9y/2CHx/WXOG977/FS
	 JdXQEL374CYs8GOq4+Fedb9hg7KAgD5IZasFesMS4KL1025oBU3Lasy01/oHrRBOfe
	 hC1fE/GNIDr4HBZaiEMADhsPJiL/I5UMA91dHn9V0R26zdqUhsuqX0+s9Jj/gwDLJp
	 npe6A+MU4Bo0PVpZxAf/WxuIZ6unUmoJAOclw2d/0eO67HfwHPbqSf5+ODWmL5PM46
	 T92wb7lLOH/Ng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F042C40391;
	Wed, 10 Dec 2025 11:36:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6DF1B237
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 11:36:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53ED16151D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 11:36:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gg0Kdr4I7xu2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 11:36:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4D3CF6087A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D3CF6087A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D3CF6087A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 11:36:04 +0000 (UTC)
X-CSE-ConnectionGUID: 27s37FXyQ0iFpCGtehof8A==
X-CSE-MsgGUID: Nhgq7wuOTxinCkGIsqr4yA==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="70957959"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="70957959"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 03:36:04 -0800
X-CSE-ConnectionGUID: DG08wIinQP+p8gaDlaEyuw==
X-CSE-MsgGUID: GVqvzaCDQICXXO16TGOGEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="197283095"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 03:36:04 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 03:36:03 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 03:36:03 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 03:36:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xTrPY84e5cWYpHal94FAreOkE7YE//N5U1B4Lzrrzty9gCXWpF7bvMAE7DZbaBRLVlBiI9ykVKSa85Umdd25b5s2vFdvM/i6VC9IpSJBiziEy4sc9FIlOLLxCxY2PcaPdegw0p65fcqKw0Vcr0k3rxyebL9jKg3G/bgCXBXwtpSlT7h8pU/Bck7zK6r8OdZew85L2o38AKpWEd+t7YcgEzmqVAbn+zAU4UMtHvHIXmJYn6itbN16+GRhjr09X0DfhVmOE10PJNSIjm2ZiNMTs47BB/hvAY6GnxG+9cn4Ow2d6BZmsgqswubUqCPAD3D0913Q1m0dqpy5zKVmN4/YjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VPx/zRR3xxKBNxPD4ZmRSskMU55y8eLekxSUFD45m8g=;
 b=xrYRt6tOyk7sCwDdhQFqkRJPM7OYryzsER1ra11ig5B+MbfXX5SagtaYX7ZX82PK1K6NRwPmc6HB4MW+rMN4SqWadeXKPtZoSBOdzEsNzkzcX36mI8wG670O/qzZitegwDWelDI5SZHFcdz2G9AI9PvH9eKhWOCRYjnHYYVaNv1wSl39a9cEfmRkhqOOebj2VCQ2W3DC/ANKdB48fA4JX6XHtTvXdjVZHVv8y726rinUdwWuLC9VgD122ut7hwMgdNePvT2C9dlSkQhKulT4Sr3DmSHHs6w0biQnlOvAw4LYpIASSixz66WWq5a4uwjlVvekU0bPCPqPTvo37DnJ1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by SA3PR11MB9464.namprd11.prod.outlook.com (2603:10b6:806:464::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Wed, 10 Dec
 2025 11:36:01 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::4a8e:9ecf:87d:f4ca]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::4a8e:9ecf:87d:f4ca%4]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 11:36:01 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ixgbevf: fix link setup
 issue
Thread-Index: AQHcZQZyiXh3JU1vMki9xWMKXa6WpbURT4AAgAl4X2A=
Date: Wed, 10 Dec 2025 11:36:01 +0000
Message-ID: <PH0PR11MB5902547E1110D253DE9BAA08F0A0A@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20251204095323.149902-1-jedrzej.jagielski@intel.com>
 <3dda7b74-b90e-42b6-ace5-9b0f1d976353@molgen.mpg.de>
In-Reply-To: <3dda7b74-b90e-42b6-ace5-9b0f1d976353@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|SA3PR11MB9464:EE_
x-ms-office365-filtering-correlation-id: 68763f77-63b5-4e57-bcb2-08de37e04ba7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?d29vaitzVEtIcFdOUzdlR3pLeWJyd05pMVIxUFZ5L0pDNjZLdHQ3b21NeFU2?=
 =?utf-8?B?TE1iaXNPRWxoRUdITjhadnRTZkZ2cTNOa0llN1B6U3hFQlhGYmZ6RWg2emNV?=
 =?utf-8?B?cGpoY042Y2VLK1R6eG9DUElpd1hTdWp1cW5BUkpBQzJERGFjR1ovelJmOWV5?=
 =?utf-8?B?QWFCOGFLaWowell3OW5INGhuWEpPSkhFTXVXeXhTbnNoaDhwY0xiRlA2V1RR?=
 =?utf-8?B?eFdpb0YyQnN5NFdqMjh3Q1JEMG56aGxhN2s1SVR4cmVUVVdGdXBwa2pKamda?=
 =?utf-8?B?cTNwd2FnbkNwOW1UYnhnT0wxNVF2aXM1M2Nxa0RBVXdheVBsZEFRczdDWElp?=
 =?utf-8?B?dkdqLy8xQjBTc1JOUXJCSDAwUnNWUXdCbGI2bGprZU5USS90dmsxbTNxaW05?=
 =?utf-8?B?UmdrbVRzY25jYUt4WWZUNlF4TUpxYWNBem5jWVpyUzRIRGVDSmE3YnN0S2xt?=
 =?utf-8?B?ZWNPTEpuRDBGbE9pQ1JKaHJTaXBSSFB6eWlmbThCbzQyWHlvNFNIbFdQOXNm?=
 =?utf-8?B?SzRpQUZ1UHYxenJrQ3hOZGZJRFNXakNDMEw3UzM0L000MUM3Q290SFRUQi8y?=
 =?utf-8?B?V2pCam9wTGxzMnRXaGxMN1JMTkgwNVpXOC83OG0wQXl1KzI3Rld5UDl3NnFw?=
 =?utf-8?B?WGpNRnlJNDJzTlRTL1ZETktsN3JMcjBON09ncEpVVndwR3BwQktvbm5kVlZ5?=
 =?utf-8?B?elRteGlMMXNDWUtSZisvUklSRU5Fd3BLbzJDTkhNMW5WV0J5K2R2NGNDLzdl?=
 =?utf-8?B?ckZtZUNrMlV5dW1COU42V0o1VDR4UCtiMGxKRkdUNE5BUml0SEdSWjBZbTdZ?=
 =?utf-8?B?WEhCb0FqdVFsZ053bkwrZ1pkZTMrTkZEK1VTaTZUaHJ6MWJaUVMzdnNsRFk5?=
 =?utf-8?B?amErU29OUTJUam55UzlYWGVIditXWW1PWHozbFRJeUFqVWVrdmljS1ZBeGl1?=
 =?utf-8?B?NEJ0ZEtYZGVUcm94RzN1eUlIWnd1TzlNUlphWW1ETFlld1ZnUlA2ZWlJcGhH?=
 =?utf-8?B?bCtQUllQVEk1TVFLSXhLby91aFRJQ0FMSjc2NVN4cFRQWjdySkVxR2RkOWlw?=
 =?utf-8?B?TlFGYXVveFVkV2w2OVgvRUJCZGRjU1g3c2RCSjgzalUvY1RGb28rUkRlU1lO?=
 =?utf-8?B?WWVGcnpVM2NzSTRMcWNtRGhHemhPRlpXdWlhSkd5cGhIN2pvb2hTYnlsb29a?=
 =?utf-8?B?TGhjVlNaWjd0eEtRejFEaVdjQmlWWmxlTXJuRWxFZmRhN0QvcjY5QjJ0TXk2?=
 =?utf-8?B?WEcwZHgzdDYrdUdwMFRza04yYWljL1BrVWthUmxHWmVqZ3hWWXExSG1ma3pm?=
 =?utf-8?B?SE1NbGxDWjZ4WUlWK04vU2dRMUpsNDdrNjcxRkxMU0V3dkdsQUlpRkJub2VY?=
 =?utf-8?B?eHdoQTQwdGpqSEZXTWxQdHY5VzBmWklCQU9NaGhiWTE1QXNKaGVyODMyZHhv?=
 =?utf-8?B?MUt3c1gvekloNitXSCtVL05RRWxNeFp3L2xkOWpFeC9ERnBtU0VCdW5STk4x?=
 =?utf-8?B?L25HV3NxYlJBN25GazZxSjdVN0tSam9tNTlZSjBJYk5QVDk5Zkt1dmhZVGRK?=
 =?utf-8?B?cGxKNTY0eEJEMEo2bW10dlFsMGk1VnNXWWQwczdwbzJSWDU5WVFXdkh2TXdQ?=
 =?utf-8?B?bFo3bDZjNGJUb2MvWGc0TUFPd2FyQzFjbEZPK2doWnN3blg2L0V1TjBtTjQy?=
 =?utf-8?B?QnRjRkVaOENBSXhxeHh5LzVFTzhxbTgyNGJrMWtBL1pwMVUrQ3FDeUg1N1pp?=
 =?utf-8?B?K3dVZldHdUZvZXlNUXV0KzA5M3ZrUHhtWGMwQVl2WWQ5a3l4bSt1SFdsbUYx?=
 =?utf-8?B?REJ5SlR2WHd6dVNiL1Urc2pJMUl2blRZZExTUUJhWEN1K3ZiWEtGUjk5Z082?=
 =?utf-8?B?YUxpN1gvY2JDbkZHNmRDV2pORjM0N3dYU3J2UDlFcGtmTXlKYnNPbnNqM2k0?=
 =?utf-8?B?OHJmdUhUUzdrendpRjVTUDFoL05tRHdKQjNkNmdEZFZuMlJRVmNQRVMvV0hx?=
 =?utf-8?B?Q2J3QlBaeVNpMTV5eEVYYnpmR3I1K0ozd3YwUVE5NUlFb0tPQkQ1S1RSdk5s?=
 =?utf-8?Q?GCLopv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SURpdWVIS2dZZGRjbXdKaWJ3Wi9tOXZsenNNWVNFSk55a29pS0g1K1lMNVNr?=
 =?utf-8?B?Yk5lUzhHS1U0ck9kS0l0Vm5Xekpqa2owTmFZY2Nmd25OSElRVDdBOUNGTXZI?=
 =?utf-8?B?RW1YMmJsK3p1U2RSQWJkRGt0aUVkYVlubFhCWlpLZmM1M2ZyL3ZmS3Jzc1p0?=
 =?utf-8?B?TGtzTHN4cnZEVmcyUEF3eHpEYmVQbkV5WkJRdllOMDlnMlRTaGhWRVc2ODV3?=
 =?utf-8?B?d2U1bzNvaklNUzFHWlV3dVlBcVgvaUkyTU5FdG1KOUU5M1lDOXQ0U0dDSk80?=
 =?utf-8?B?aFk5UHNwa29hMXQ4TGtsTUdNWVpjTmFEenJ6OGUvYmZzbytqdnR0OENKeGk3?=
 =?utf-8?B?bEZHTkpQYVBIZndDK056VEg3bUdjbGs1ajM3V2Q1OEdEdXlsL3A1bTlhWDJt?=
 =?utf-8?B?cnRkVWd5WnJNdCtadmg1dmdnWm9ieTlkZU1Jck56VGJJYWVZd25qdEN1Qk9K?=
 =?utf-8?B?RTNkTGIzV3J5dXRUa05kL1YrNGplSitoZXNQbDZ3YytkSVFUZHE5aGJsNTBJ?=
 =?utf-8?B?NTVWZWp4MEJrUWhwdWtnVXM4NENIc1hxQ0xQVW01Q1pBNjMwOXdIeHZDMUJE?=
 =?utf-8?B?MUIrSkFHR1RaampyUDZoTkYwL2ZmYzRydVBMbFE2bVR1ZFNaSVBwalh1NVVs?=
 =?utf-8?B?Z0YxaVZXaktTcW93NFNRN294L1dUbTVLaExvQWh0WnFjQnBCL3dSMHk4K21U?=
 =?utf-8?B?ZWlQcmFNdUhBYTNBa1lIcjBocm1vOERqNjF2ejJXVmpYZDFwWGFJdDByeUhX?=
 =?utf-8?B?TlFwUkladnlYTGppeVkwc21lb2w3cW1xKzd1TTM1UzZLVUt4Tmg0dEYwb2Vl?=
 =?utf-8?B?bmpGeHZ0S0pPdHBKUWdoVFdJWVF1dzVMMTVua0xadTFLaUJHK1hzeGZsbHZm?=
 =?utf-8?B?TTFiRkVuR2VMQXFzaHlubno3VVpHNHNGT01VT3UwekJ3Q2c0RTUrTHp4TUM1?=
 =?utf-8?B?by8vVHhib3Bsd2QrRkhJNFFQWmZWbVAramFtZ0hOR0VJNUlMbHdaTDBWRkZR?=
 =?utf-8?B?QUJNTTM5TFJ3N0hzblpKZldKMzV3MldMYzd3a1I2NWJCMUlVSURnQmt3QTFu?=
 =?utf-8?B?ZlRvK0I2US9NbmVqN053KzA3eVRabTlsSUpsQVMwd3RmU1FoZEdUaS9Na2RK?=
 =?utf-8?B?Y3VjZHpIbjBCTkN3VlNqZmxWVU8yWFd5U1J2Q3ptT2NaczJFQWRTd3I0dUJO?=
 =?utf-8?B?bmhuaHpJS05LWkZGam9yM3RzN1B4ajl2bWZQRnd5T3E5eUg5b2FQSWN4K0R3?=
 =?utf-8?B?Q1dvUEZqdlptZzZEaWxwRzNleHhRZ3VOVlRyRkgydk1UTU9sZHpac0l5cEk2?=
 =?utf-8?B?UmNUWkU0bHFudERYTDJoWUZNbmNxRCtydnpyU0traWpkTWlPT1pndld4NXhB?=
 =?utf-8?B?VTcyRDZsVnNWZHRTYk9PRENVajhiZ1FwanpsdlN3SjU4Mk1IWWhBeEZTMFFp?=
 =?utf-8?B?US9iTTUxU01BZTFXZy9UOU13U1hKOTNlekRyKzJ2TGZLd0hmcm40TVBIS1FJ?=
 =?utf-8?B?eC91MFE4a2lEK3paYklDdWRPeklqVTRmWmJkOU5UTmJiZHZZODA3U0Znb2c5?=
 =?utf-8?B?MG05dDAwREY3MjlvREJhUmZZOHhocGgzTHp4dWlhVEtYUXdoNEZGMGs0WGkr?=
 =?utf-8?B?bVBHU0lhVVBTSSs2WitBd3RlVW9lRjBYVTNkbzBWQzlwWU9wY3JBb3pqQndw?=
 =?utf-8?B?aDZDVnFvTXVnZURkZEVjZ0lQSHhKS1NkRVZBeHM2THBydENOaDJCTFl4VnBB?=
 =?utf-8?B?YUlBK3pxWGFWRWZVMDZDZTlUb01uSHRkc0dVdTZJcDhoblBweHRFbkt4MlZB?=
 =?utf-8?B?amxJUWtPTFd0RVU5VXBOT2Y1bDNWQmI0QU1LQVVQVmsycnFXb1BjZmNpNEpp?=
 =?utf-8?B?cWo3OURuUGpkR1IzSDcyYUhBSS9zS1pNQzhuREo5aERZODlRRTM2MGRiakl1?=
 =?utf-8?B?d1lBQStITGhCdnA2UEU5QVNrbGZMZmoycVl3ZnlveHBDWHlZQy9JK2lGRHpM?=
 =?utf-8?B?OERFdlpZOVpHZlVQb0UrYnZDTVRsdlpJWm1oSysrTVJTY2J5V2FtZmdyRzdE?=
 =?utf-8?B?UjlVUnhFV0ZRemtWVVFJRnhib213UFF1WXYwY0xvOGk5Y0wrbWh4VTYzZ1dX?=
 =?utf-8?B?c3RSUUQ4TGZRUUpKNVZtU0xtbEtRUnZ5aTlLTktPMHBDLzZaRFlyZnpPb2RS?=
 =?utf-8?B?Qmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68763f77-63b5-4e57-bcb2-08de37e04ba7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 11:36:01.4480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nT53gpSdR2Fao07mFsTAWUaIg17Cm0krxAMVu7Y7Ux0XrVSi/iOrwfEpqttizLNF4O+rvtwbnO7mYPznPhSULgF/6t513KcLm4ftiemT7EE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB9464
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765366566; x=1796902566;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VPx/zRR3xxKBNxPD4ZmRSskMU55y8eLekxSUFD45m8g=;
 b=lQnBnoUuEVpV1G5ffcCYgFLZ5qz2s+i0zQwzRsfelolQ9kjY0gktN24O
 vTgNwemMDwnC9N4kKOC7qzYPF9dvQfmczpGJ7XOjsa2RgeXWLlTJzDKEM
 B2Eon+eC12ILUlHPTKaLWYJm8rOVpksKy5y3+aspzs3LqrD8VXk1yyrth
 sM952GuW0IwZCjiow5+yk7wASXolybVdkwMgN5g4twbkCHnx1V8U6IHus
 2WLsI6+wBR1slrXGPOHDJwJqoklhpaojgR44xWn0vhdE94BYkQTO1ibtG
 8IKyWao+KWc6b2j10IaG20ZX4gWLxewWMF0h/GExNo5a4uJ6bQMroMLec
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lQnBnoUu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbevf: fix link setup
 issue
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

RnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4gDQpTZW50OiBUaHVyc2Rh
eSwgRGVjZW1iZXIgNCwgMjAyNSAxMTo1NyBBTQ0KDQo+RGVhciBKZWRyemVqLA0KPg0KPg0KPlRo
YW5rIHlvdSBmb3IgeW91ciBwYXRjaC4NCj4NCj5BbSAwNC4xMi4yNSB1bSAxMDo1MyBzY2hyaWVi
IEplZHJ6ZWogSmFnaWVsc2tpOg0KPj4gSXQgbWF5IGhhcHBlbiB0aGF0IFZGIHNwYXduZWQgZm9y
IEU2MTAgYWRhcHRlciBoYXMgcHJvYmxlbSB3aXRoIHNldHRpbmcNCj4+IGxpbmsgdXAuIFRoaXMg
aGFwcGVucyB3aGVuIGl4Z2JldmYgc3VwcG9ydGluZyBtYWlsYm94IEFQSSAxLjYgY29vcGVhcmF0
ZXMNCj4NCj5jb29wZXJhdGVzDQo+DQo+PiB3aXRoIFBGIGRyaXZlciB3aGljaCBkb2Vzbid0IHN1
cHBvcnQgdGhpcyB2ZXJzaW9uIG9mIEFQSSwgYW5kIGhlbmNlDQo+PiBkb2Vzbid0IHN1cHBvcnQg
bmV3IGFwcHJvYWNoIGZvciBnZXR0aW5nIFBGIGxpbmsgZGF0YS4NCj4NCj5XaGljaCBjb21taXQg
aW50cm9kdWNlZCB0aGUgc3VwcG9ydCBmb3IgdGhpcyBBUEkgdmVyc2lvbj8NCg0KSGkgUGF1bCwg
dGhlIG9uZSBtZW50aW9uZWQgdW5kZXIgdGhlIGZpeGVzIHRhZy4NCg0KPg0KPj4gSW4gdGhhdCBj
YXNlIFZGIGFza3MgUEYgdG8gcHJvdmlkZSBsaW5rIGRhdGEgYnV0IGFzIFBGIGRvZXNuJ3Qgc3Vw
cG9ydA0KPj4gaXQsIHJldHVybnMgLUVPUE5PVFNVUFAgd2hhdCBsZWFkcyB0byBlYXJseSBiYWls
IGZyb20gbGluayBjb25maWd1cmF0aW9uDQo+PiBzZXF1ZW5jZS4NCj4+IA0KPj4gQXZvaWQgc3Vj
aCBzaXR1YXRpb24gYnkgdXNpbmcgbGVnYWN5IFZGTElOS1MgYXBwcm9hY2ggd2hlbmV2ZXIgbmVn
b3RpYXRlZA0KPj4gQVBJIHZlcnNpb24gaXMgbGVzcyB0aGFuIDEuNi4NCj4NCj5JdOKAmWQgYmUg
Z3JlYXQsIGlmIHlvdSBhZGRlZCBob3cgdG8gZXhhY3RseSByZXByb2R1Y2UgdGhlIGlzc3VlLg0K
Pg0KPj4gRml4ZXM6IDUzZjBlYjYyYjRkMiAoIml4Z2JldmY6IGZpeCBnZXR0aW5nIGxpbmsgc3Bl
ZWQgZGF0YSBmb3IgRTYxMCBkZXZpY2VzIikNCj4+IFJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9r
dGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4+IFJldmlld2VkLWJ5OiBQ
aW90ciBLd2FwdWxpbnNraSA8cGlvdHIua3dhcHVsaW5za2lAaW50ZWwuY29tPg0KPj4gQ2M6IHN0
YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4+IFNpZ25lZC1vZmYtYnk6IEplZHJ6ZWogSmFnaWVsc2tp
IDxqZWRyemVqLmphZ2llbHNraUBpbnRlbC5jb20+DQo+PiAtLS0NCj4+ICAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaXhnYmV2Zi92Zi5jIHwgMyArKy0NCj4+ICAgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPj4gDQo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmV2Zi92Zi5jIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaXhnYmV2Zi92Zi5jDQo+PiBpbmRleCAyOWM1Y2U5Njc5MzguLjhhZjg4ZjYxNTc3
NiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JldmYvdmYu
Yw0KPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmV2Zi92Zi5jDQo+PiBA
QCAtODQ2LDcgKzg0Niw4IEBAIHN0YXRpYyBzMzIgaXhnYmV2Zl9jaGVja19tYWNfbGlua192Zihz
dHJ1Y3QgaXhnYmVfaHcgKmh3LA0KPj4gICAJaWYgKCFtYWMtPmdldF9saW5rX3N0YXR1cykNCj4+
ICAgCQlnb3RvIG91dDsNCg==
