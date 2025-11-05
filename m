Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E226C3482F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 09:40:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7457561054;
	Wed,  5 Nov 2025 08:40:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KiaYsPRCWfnn; Wed,  5 Nov 2025 08:40:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7C4A6113D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762332018;
	bh=taLvN0B3T2sV7soQm9gGRduXAG7ofs50DQSAHNJZ20A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5ElL+CDAz2zPaBUve4uLH/mP7LnDv27EKqoLXqX0Hj2eEkLCgSW+j4y6Xe4rM+0eP
	 X3OxmJPlc90LUnJJwloaZ9BdoIiOKm9ijnv8f9vgH9XkgkyUky33qUo0MeWnvKinT+
	 BNbSn1daHVXezsLZwV/qGt0o6cCDe+Bhln+ZEgQgEEjEe3nTZnpUyKHJwyV1wDifP2
	 XOaTU5qPGa1VcqB1xm4imD4fqJXPIKkqhuoHZz4TeHNezvxnO9R2kDIV/jrTbylFna
	 Bsc0eBXHL0MWLse63zzLlLO+s2z+3iW37q1yTnzBbp+jE1r3uXgTJl/9aXfjztlzyO
	 UdLAj4e9+SWVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7C4A6113D;
	Wed,  5 Nov 2025 08:40:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AF1794C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 08:40:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94B92825FE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 08:40:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zYRZqiRVdyy7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 08:40:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6197182509
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6197182509
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6197182509
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 08:40:14 +0000 (UTC)
X-CSE-ConnectionGUID: nHiM5SfGQ66Gw1+o7JqtIA==
X-CSE-MsgGUID: XOjzonb6RH6wZoJTO6nutQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="75547789"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="75547789"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 00:40:15 -0800
X-CSE-ConnectionGUID: FWVd5brpTJeA8QFz2fCvOg==
X-CSE-MsgGUID: YQ3fnVTWQrmvZBKm2TqJgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="186684355"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 00:40:15 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 00:40:14 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 00:40:14 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.43) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 00:40:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WMxT0/JIbqaTwocvQhRGt5903XpXEhls5P0Yq28kyzuNWuZzU2bwFeHdsUhX8AaNZIgvlOGvR7Qzl7NoftzPce6SaISjJIoVxT/7vhzSXcJwRiVD6+kPxus9HW3BKCvnPSkT2emMFWG1QhYmXFz69loVBLsFY/hajVzOSfIlgWUAtdc02/jJqh4+VG8HYFsWjr+K8It3obydHYYGYi9qTKokxh+01fH8u3TDSMdw+B9lOoYxat/cn6GgwqXzP/4D9EPZLlovpFL2ue5zuDyPBYhyGCeBpDgSb7CrosWdgNfrYTMQqZfqZErTewRGXQB7ED2apnXNfBJ9pP1Kw7TfPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=taLvN0B3T2sV7soQm9gGRduXAG7ofs50DQSAHNJZ20A=;
 b=BBS92C2HTqGh8c6MSIua9yNgwA0TyEmWH9LOqLpOmy4IbB/SvjAc83yo8MOVt2G7SgPsbAFBlp6Smci8cnBeOQOAi9G3E1ZpV+E09MonSx6rttnIpeGEvJ/QUA/C8UU3GOrx5v4II6EdNTIncwtJ1qMSSLwNTRSZ4R5b9rdmzjZNZO86bECSrUv82Y5tnHqTRoEno/l0PAmc2iCHhIWuT1nmEUFTjlK8LVWemZoSVg+fToyTuRq6wph507elsv6Z15Al5Xjv0PaNQmqijHjY93oRmdv98yi4xulZfi4fkGsKp9bcoLVxPZsWYhm42znt2Mc1mXtOOHd85NAYWzw2zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB8116.namprd11.prod.outlook.com (2603:10b6:8:12b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.8; Wed, 5 Nov
 2025 08:40:12 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9298.006; Wed, 5 Nov 2025
 08:40:11 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: ALOK TIWARI <alok.a.tiwari@oracle.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "alok.a.tiwarilinux@gmail.com" <alok.a.tiwarilinux@gmail.com>
Thread-Topic: [External] : RE: [Intel-wired-lan] [PATCH net-next v2] iavf:
 clarify VLAN add/delete log messages and lower log level
Thread-Index: AQHcTZ0IkgEDbSYX0kmbwdo5tWm1RLTjsEmQgAAIgYCAAArhEA==
Date: Wed, 5 Nov 2025 08:40:11 +0000
Message-ID: <IA3PR11MB8986C6192990882A8B0C7C99E5C5A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251104150849.532195-1-alok.a.tiwari@oracle.com>
 <IA3PR11MB8986153AC57FBE801247FD50E5C5A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <9e736c4a-bafa-44e6-9152-3a9de078ee4c@oracle.com>
In-Reply-To: <9e736c4a-bafa-44e6-9152-3a9de078ee4c@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB8116:EE_
x-ms-office365-filtering-correlation-id: 921062f0-8734-4628-cda0-08de1c46ef07
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Mit3bWc0MS9tcXl4SG5aMEtSSDFtSllneTJMeTdZbFAzOWcxZ283WDFHd3lJ?=
 =?utf-8?B?aEJYODl2SlBqekRTVTRadXJVYWMwaXk0L2l3dFNYWDVGMDZLN1dhL0UyMzI0?=
 =?utf-8?B?VytwVUJxTHdlRFVnSnpzc2lyVTlrckJBMXluL1poS3FSY29VMWhZem5xYUt4?=
 =?utf-8?B?QW1hSExsWlh3Wjg5b2xTNEtsS2RLaUVQS2lyRlgyRUN4QjlWSGErYnkrZzBX?=
 =?utf-8?B?cDFRSXp2SnM2YTVsaUg5YVV4ZkgrT2N6TEtHY0UrK0syYWlrV1RWKy9NRVFT?=
 =?utf-8?B?S1p4UVJtaWgzSFVCSksycHlqMkRpTDNwQ2o2Y2FMS3crdkFqbkhGOERaWjZq?=
 =?utf-8?B?NXoxK2xXc0ZoUmhJcDkraGxkejZLN2xFTHl2Y1RsS3RjbzJoQ3A2YTYya0tO?=
 =?utf-8?B?QVl3VkxleXNNL2UvMzJ6Z1VqUGIrOEVNbzdGZ2RHd0IvTythZVlPakVFbldD?=
 =?utf-8?B?UzJVK1NhVWJjM1dFWFVRWTJNbmNUT0tOc205azlhTDhZQWw1WjlKL1pxa1pR?=
 =?utf-8?B?em96N2VzUHphZFBTbHRvaVJwakpza0JUWVdPa25kdk9zQXVBaFdQS3Z6OUNn?=
 =?utf-8?B?cXVzT2pjZ3VsMjdCVlE1ajltZzJyQTEyQ2M2OFgxTHFoRHlnVFExQVB5aitu?=
 =?utf-8?B?clRYT2lXUGNRK0dXdTZFQldFelpTZDdLQ2dCa3N1Q0RZcFBmSm5zanBBemtq?=
 =?utf-8?B?R09CL2o1dHpPN1Z6TkxzRFZmejd6T2hDQmc0SGhPRWFla0Z2aTVnOVlJeWhO?=
 =?utf-8?B?MXppbUM3U0wyTjZqQ3QyaVJlWDFreGd5aDVxckZ0WWVxV1dyRmZyUm1STzhV?=
 =?utf-8?B?R2w4cVV3bXBFZ0FDd0I0OU1WcHpzNUthMDBFejFVRWQ0bFFraTZiYkpLd1Bz?=
 =?utf-8?B?dTZCNUtvNk5vbUNodnNxS3JFbkdJQk5mRVlpR2oxL3lzc0lCcTdlNnQrdHh6?=
 =?utf-8?B?UnVSTGpGeTl1TElXUnpJUUhKUlFPY0lrQXhHbEJGejFVRUpES3dxdlFYdzcr?=
 =?utf-8?B?dVBUU1M2WmJmblI1VjlWUEFrZ3NuMndpQUp0cDNzN2dTd2J0dHl4NlJIOTZF?=
 =?utf-8?B?OG53NjlXbW1OUFZDT2k4UnUzU2dvZE1Tb1NTWDZyZDZkYXNmcnBQM3Q2am5J?=
 =?utf-8?B?ZXdFTlBXTHVVblNJVXRLUENvc3VBUlJmNTVsNFJadGlEeHlXNnJtVW9FbTBw?=
 =?utf-8?B?cm1oeU9Pd3M5bm0wQlZhM0xNQnJ6SnE2T1FDMHdxNUlpUlpQVm5PczZLTWx1?=
 =?utf-8?B?a3hUWE5KOUZmMFg4VGJsU3J0Umh1K0xoWHlQWEllRjBLdXpyRlNmbnBtNGFm?=
 =?utf-8?B?R1BHeG1jR1lyQmV3U3RTVWlBVDcyaWpUVFlya2NFVllueS9XYWFoVllRUGwx?=
 =?utf-8?B?TXdHUUY2Y0lSZHNwZFVYTmdmMjN5QjdVZ1JudFZUQzdmZlBTTWxXU2JZY1RN?=
 =?utf-8?B?alNTTzRqazVDVTJ5ajhaQXM2ekFDcFdJN05qR1RpUUxOQXk2SHJ3RnJnVHU4?=
 =?utf-8?B?NEJsaXVGYVdhNTZUbk8zQmN2dlZjRUlSWlNLYjlhZHBSNXVMUkNEREFNMXhV?=
 =?utf-8?B?c0NpZVpUQWppUzJXY01oOThsM3FMd2tkTXJORXZ2SjVUcFAvdmFKR3dkZGVI?=
 =?utf-8?B?UnJZWGl0MUxmSnN0QU1HOWd0clpnNkozQm5Yek1uSWlpbGpPclU5SjdtdzBN?=
 =?utf-8?B?a0NwOEFYTjFTa3NKbXdqUW1Faks3aWZoTGM1Z3VBVjZzSnVXdnBOclVsajBE?=
 =?utf-8?B?bGNlM0hHMzBLZWIrU2dDb2tJQUxzWG9CM1BpVWxyNXBmNXlqOFBuUDBXdzIw?=
 =?utf-8?B?bGFnS0JtSFVxQVJVMStZU2o0TFhGM3ZPejJSVWxBN2NrdEx6Z2Rmd1h3ZkJW?=
 =?utf-8?B?Mm5WNlg4a3B3WWtlY0ZXcDZoeUJGTUhGL0tTTHhZSndTR0pEazF0dTQ4Z2VF?=
 =?utf-8?B?bXRwNUU5Vi8zdDFkS1VGTHduZnlnSERVcnJyYnVYUDNLWmVOWGxJRkZidXdo?=
 =?utf-8?B?NXFRSkRxSHRETnVUSGNVY0x6MTVxcmJZRWNPVVpWdGhabnBiVEkxclIwSWRM?=
 =?utf-8?B?NjAyWUNhaU52QWVGNkdTc2VVeUpUVStSL0Rudz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eEdmYXF3ZU1JQlRaRHFKdjR0WDJFMnJXMXhwOTlQUTJMb3F2RDdhdDVjR0p1?=
 =?utf-8?B?TEU4aGU3bnF5TDI4SmFWa1V2OEJzdjJkb3hxeWFCUW5mUnFxeS8xa3lMNWcv?=
 =?utf-8?B?d2FXWWRxQUJQcWk0TUhLT2REN1Blam5pbFg0TVNTRU5DV25tSzJKNUtOT05P?=
 =?utf-8?B?REY5ellkc05FZm5JKzZBZ2poeTJYWmRLNVdicm5ITC82bU5ZS2FLclQyK1pQ?=
 =?utf-8?B?ekxBVUxQd3NDb1BEbllpcHFCNHp6RkZIRHVWakxqdGVHTVB4cmtGSDdjSTI5?=
 =?utf-8?B?SzU5VmN4cE0zd0ZkaENDV3A0bjkxTDRSM1N5YTZQbGVrUWpublFMZGxGZjZT?=
 =?utf-8?B?ZkZHeWY1aElDNmlQS0pubEM1RHlxNFZXWGJ1RGtJcG5kcmNqaTNhbkhrWVla?=
 =?utf-8?B?ODRXUEFYdWUweXdrTUN2Vks2OTNRdytQSDBaakxVUWJzN2l6TUFUWGF1MHZK?=
 =?utf-8?B?blpCWEtqUHNkL2t3di9HV1JhM2dLM0tIZHBTQTJFWnFrM0lWN3BSUlJwSUxY?=
 =?utf-8?B?SCtMZjFCdU00cEFORGhQZXVJS2dXa0V5Z3RoUkJMUjFKL09PU3M1MWNJV2cv?=
 =?utf-8?B?bXE3akplZTFNbFM2SUoxTEdVcGtRMmZkUHA4Wm5tcjZldXMzSmdpTWVpMk5p?=
 =?utf-8?B?ajA0ZzhjMzlOUGFCK3VCVUZvRkM2VnRHdWI0N01QUDZqM21kQUFOM05VaUtE?=
 =?utf-8?B?NnpUcnZXNHRHamFUazNzQnU5aEZQb0xXbjkwb24vQ0hCUitPQ0R2QnpqMVRM?=
 =?utf-8?B?NXFtbXkvdlVUQk83clhhUjN2eVRWVkhWZWxBZGRpQ1FpTmtPVW9HVytWNnZ3?=
 =?utf-8?B?dG5xZjVGQ1FmbTVXSkNBVmxtNmxqYlVGNzBLdUxRa2R2YUd5WEFpa3FCMita?=
 =?utf-8?B?NFNLdStyQ0ZmWE1DR09YZTY4WUV5dDR3MTV6c1QxOEg1WVYwNVdzNnZwNG1x?=
 =?utf-8?B?SkVNeCtNbXg5MTJaZFFMVVZEMU9OVUVBV1J1QW9MbytwSEMvTUExK3NjVU9k?=
 =?utf-8?B?T243dzF2aVJEeVlsc3A0c0dqMVN1RWt0RjRrd0k0YjJTTzBNRndWWmVrSEQz?=
 =?utf-8?B?aWpXQmQvdWtJMzFITUYxa2cxeG5uSlpKNXhTVjZNMzhpN3BlM2VXOU9EY2xk?=
 =?utf-8?B?WVBjRWVMSHovZkRTV1oydWYrYmxabS9WTXhic056YXpyZHVWRGpzTitjVFVQ?=
 =?utf-8?B?SHF4SmNvbHY2V3Azc09zZ0lPN1JLSlZMK1lkUWZxUDY3OXY4WEllelpYWUFU?=
 =?utf-8?B?eHcwSUxXcERFWERsamNPZVFWaE5mQnhWUEhTMVorbll5c0lZWTBPeGdQZ3Fz?=
 =?utf-8?B?T1hjTjRPdzhQdk5Ub3dkQ3FyWU11N0ZpQVlFS3c5L2JWRDV1dC9iallkNU51?=
 =?utf-8?B?eVVhUGpNZmdHTXZUcmx1STFnUFpvcHBnL3V2QUl1eTdTQzZQdFVyMHY0QzJn?=
 =?utf-8?B?dVkycWJYU3pNVnozVEd2L1dwZDBOT1hmdlF3SGlmTUh4REZ6d2w5amRSTU13?=
 =?utf-8?B?RkpJYy92Rnk4TFlrWnBzejhoMGhaZmxoR3VIN0JFeDJtbHpraURMUHY3cHJY?=
 =?utf-8?B?L0VSK01xZnR1VUtPWXZrVUgvaCs3eGNXbXRIa3B0VUxjSDIxS3FLWnBjQzZt?=
 =?utf-8?B?bjN4RHcvTXR3dnhacng1UkorRDdHYVhma1ZaWUdlT2Yvd3ExWCtmcHVDVDFY?=
 =?utf-8?B?L0dnKy90RmtsOXlpMGU3UGZwMGRrMUVrYWhyNzNTL1JUVGxSWENPUU5JOWZh?=
 =?utf-8?B?V0N4c3NtaUJWUkVPZFFPS0dvYkk2eGNkdjloTlMwTy9mQ25ZUHRjT2loakN0?=
 =?utf-8?B?c0wyTTJzWGRUVi9SRGJ2T2pkdDNJcUVxd1l1STVmbFFFVzdkSEN3WWdaYVB5?=
 =?utf-8?B?TTA4SG1nMzVPWnRqWmFEVGZHOUZwQ2JadVlnRDF0eE0xekJidkdpSWlvL1JN?=
 =?utf-8?B?cmVWK3VQdWhQb05aanlYRmMzeGhSdzJac2RkelYzRWNuSFZ2UDFtd2lsZVdE?=
 =?utf-8?B?VUY4bkNwMmhJOTNmMGppVnp1T0JLUFBoUXBrSy85TEV6OVBoMWJ2V2szbGNs?=
 =?utf-8?B?WVM5LzMxbmpuZ0Jwb3FweEY3QzVKRTdNZ0dQUG5kUkVYbWUxWnkzV1FyTWMr?=
 =?utf-8?B?Z3dvTUlNR2lWc01iQWRwRjJOeU9ya3ZBYVcxd1h1Z3NBRTcxeGNWTktaZ2JI?=
 =?utf-8?B?VUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 921062f0-8734-4628-cda0-08de1c46ef07
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2025 08:40:11.6343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wPg9eVoSpoWsXhpW5uYWDX3rqZyQmWN7soS/n7JGXPW/uCRC3h36QMMPsX2rNZ+SzyFHn5apJbghkY/SQr+MHRG00EKN3jDBiOvu68wByz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8116
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762332016; x=1793868016;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=taLvN0B3T2sV7soQm9gGRduXAG7ofs50DQSAHNJZ20A=;
 b=RVs+H73WKX0k70BAmHYXYJRSQebAy5awb7NMOiwgeKj43djKjisDx5CB
 AcEbuwLHI/OjeERR4Ox538Pw5A3Kuck8ANDkuZ8DOcY0OrMB8052s+ody
 slGsmh+NEloWzdn3lYV8VKEF2HQEIYLikOBWXkzl00Ysz1MmvwRZcHX/Y
 xCyoClXbYLhTWq6ZEwpQcmxs/VxBrfXX6jBclYsCUzamk+jTV7zEVCF+c
 2ZNtA1f0FQCbcidy8yuVG1BIFWLSLU5JElCS0g7lSsMsFZxvAqdlqgrYh
 BagWZeiH/fxa0iN20aCVzoMSvbBdbtHFzZ3+cCas8A8srifbq5n8d4YqA
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RVs+H73W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [External] : RE: [PATCH net-next v2] iavf:
 clarify VLAN add/delete log messages and lower log level
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQUxPSyBUSVdBUkkgPGFs
b2suYS50aXdhcmlAb3JhY2xlLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciA1LCAy
MDI1IDg6NTkgQU0NCj4gVG86IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlv
bm92QGludGVsLmNvbT47IEtpdHN6ZWwsDQo+IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3pl
bEBpbnRlbC5jb20+OyBMb2Jha2luLCBBbGVrc2FuZGVyDQo+IDxhbGVrc2FuZGVyLmxvYmFraW5A
aW50ZWwuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwu
Y29tPjsgYW5kcmV3K25ldGRldkBsdW5uLmNoOyBrdWJhQGtlcm5lbC5vcmc7DQo+IGRhdmVtQGRh
dmVtbG9mdC5uZXQ7IGVkdW1hemV0QGdvb2dsZS5jb207IHBhYmVuaUByZWRoYXQuY29tOw0KPiBo
b3Jtc0BrZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsNCj4gbmV0
ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBDYzogYWxvay5hLnRpd2FyaWxpbnV4QGdtYWlsLmNvbQ0K
PiBTdWJqZWN0OiBSZTogW0V4dGVybmFsXSA6IFJFOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0gg
bmV0LW5leHQgdjJdDQo+IGlhdmY6IGNsYXJpZnkgVkxBTiBhZGQvZGVsZXRlIGxvZyBtZXNzYWdl
cyBhbmQgbG93ZXIgbG9nIGxldmVsDQo+IA0KPiANCj4gDQo+IE9uIDExLzUvMjAyNSAxMjo1OSBQ
TSwgTG9rdGlvbm92LCBBbGVrc2FuZHIgd3JvdGU6DQo+ID4+IFRoZSBjdXJyZW50IGRldl93YXJu
IG1lc3NhZ2VzIGZvciB0b28gbWFueSBWTEFOIGNoYW5nZXMgYXJlDQo+IGNvbmZ1c2luZw0KPiA+
PiBhbmQgb25lIHBsYWNlIGluY29ycmVjdGx5IHJlZmVyZW5jZXMgImFkZCIgaW5zdGVhZCBvZiAi
ZGVsZXRlIg0KPiBWTEFOcw0KPiA+PiBkdWUgdG8gY29weS1wYXN0ZSBlcnJvcnMuDQo+ID4+DQo+
ID4+IC0gVXNlIGRldl9pbmZvIGluc3RlYWQgb2YgZGV2X3dhcm4gdG8gbG93ZXIgdGhlIGxvZyBs
ZXZlbC4NCj4gPj4gLSBSZXBocmFzZSB0aGUgbWVzc2FnZSB0bzogIlt2dmZsfHZ2ZmxfdjJdIFRv
byBtYW55IFZMQU4NCj4gW2FkZHxkZWxldGVdDQo+ID4+ICAgIHJlcXVlc3RzOyBzcGxpdHRpbmcg
aW50byBtdWx0aXBsZSBtZXNzYWdlcyB0byBQRiIuDQo+ID4+DQo+ID4+IFN1Z2dlc3RlZC1ieTog
UHJ6ZW1layBLaXRzemVsPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+ID4+IFNpZ25l
ZC1vZmYtYnk6IEFsb2sgVGl3YXJpPGFsb2suYS50aXdhcmlAb3JhY2xlLmNvbT4NCj4gPj4gUmV2
aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0K
PiA+PiAtLS0NCj4gPj4gdjEgLT4gdjINCj4gPj4gcmVtb3ZlICJcbiIgYi93IG1lc3NhZ2UNCj4g
Pj4gYWRkZWQgdnZmbCBhbmQgdnZmbF92MiBwcmVmaXgNCj4gPiBXaHkgdnZmbCBhbmQgdnZmbF92
MiBwcmVmaXg/IEZvciBtZSAndmlydGNobmw6JyAgJ3ZpcnRjaG5sIHYyOicNCj4gbG9va3MgbW9y
ZSBjbGVhci4NCj4gPiBDYW4geW91IGV4cGxhaW4/DQo+IA0KPiBJIGFtIHRyeWluZyB0byBmb2xs
b3cgdGhlIGNvZGUgcGF0aCwgYXMgdnZmbCByZWZlcnMgdG8gdGhlIHZpcnRjaG5sDQo+IFZMQU4g
ZmlsdGVyIGxpc3QuIEl04oCZcyBqdXN0IGEgd2F5IHRvIHNlZ3JlZ2F0ZSB0aGUgbG9naWMgYmV0
d2VlbiB0aGUNCj4gaWYvZWxzZSBjb25kaXRpb25zLg0KPiBFaXRoZXIgJ3ZpcnRjaG5sOicgb3Ig
J3ZpcnRjaG5sIHYyOicgYWxzbyBzb3VuZCBnb29kIHRvIG1lLg0KPiANCj4gSGFwcHkgdG8gZ28g
d2l0aCB3aGljaGV2ZXIgeW91IHByZWZlci4NCj4gDQpUaGVyZSBpcyBvbmx5IHNpbmdsZSBtZW50
aW9uIG9mIHZ2ZmwgcmVjZW50bHkgKGp1c3QgNHllYXJzKSBhbmQgb25seSBpbiBpYXZmIGRyaXZl
ci4NCnZpcnRjaG5sIGV4aXN0IGZvciBkZWNhZGUgb3Igc286DQoNCmxpbnV4L2RyaXZlcnMvbmV0
JCBncmVwIC1ybiB2dmZsIHwgd2MgLWwNCjQzDQpsaW51eC9kcml2ZXJzL25ldCQgZ3JlcCAtcm4g
dmlydGNobmwgfCB3YyAtbA0KMTI0MA0KDQpQbGVhc2UgdXNlIG1vcmUgY29tbW9uIGhpc3Rvcmlj
YWwgcHJlZml4Lg0KDQpUaGFuayB5b3UNCg0KPiA+DQo+ID4gVGhhbmsgeW91DQo+ID4NCj4gPiAu
Li4NCj4gDQo+IA0KPiBUaGFua3MsDQo+IEFsb2sNCg==
