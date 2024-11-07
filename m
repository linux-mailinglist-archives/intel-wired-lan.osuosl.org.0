Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D79819C09DA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2024 16:16:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EB0D6112D;
	Thu,  7 Nov 2024 15:16:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Wt7dGSVIsuT; Thu,  7 Nov 2024 15:16:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 799A461126
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730992591;
	bh=AG2dibK6hMk66WBIb0lJ5ft2q/f0Vvhvl57YDBuLk68=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u3QO5a9Q4NlvSmtYv4LYSDW8Yv9QmLz2WUSiKnkDGOV0DE6Xavv4b2YjWaG9DLqtg
	 kykOD5z8b0wy43AlIYrkhJO2XpBysmn5YZokLCXyr6qZdFxpauD9GDAECe1dnyhLxu
	 COKgeS9HM3xB6NW96gNCP9q2xreBJABtAGjYx54PUbJbn2AdkzAa5j6N4KW749w/vY
	 AK/pHAmxT21rd4G7lGJAZp2daUgzcOX+67iVCLRRS76nHClJA6J9DgthZaXlFWB4Gn
	 0BLgoi10DylRZwf1tRyIUTjF9rkAjQiM313/NEvHfBhW32w1rKUdZ/g+Yzs/gWLB9i
	 BYFO4g+JAqZXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 799A461126;
	Thu,  7 Nov 2024 15:16:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CFFBB3B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 15:16:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD91F40182
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 15:16:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i-DdMLneLjUM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2024 15:16:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A3A4E4009F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3A4E4009F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A3A4E4009F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 15:16:28 +0000 (UTC)
X-CSE-ConnectionGUID: v1BrudaXTJ2QlEfhdHeGww==
X-CSE-MsgGUID: 0z3euFyYQcmqsSugeXhdrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="30724432"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="30724432"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 07:16:07 -0800
X-CSE-ConnectionGUID: iHwodbC8RSeSxxafnU8qzw==
X-CSE-MsgGUID: A455dnAPSn+yckUjrHsX6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="89962025"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 07:16:07 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 07:16:06 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 07:16:06 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 07:16:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RmpuQrW6vwt8/rTRaQb6Y5PzpkMli6uJzbbQ9xxlYEIfKnqwHhSN2eXI8fZDlF0m9LRgAUSIEdoTK8naT6ApVBxBv25+KkdNd56uFuhdNy9sfDu1UXTQNXLCTrxVUjUEoadOG9XZruOsTxstS1dGrJEymBtUnbcLSRRC4MTEPvYR25LSx5GhWStyfdqTJmRp6qHJm+sKzyYN8MGVjEgdkfpZ9x5WBldgpzkhyGZUG5H4rcWoV33/COYII8IATW6k2eho1F3KjraV0mBBFXdA/Agj4Q+9hBTyZ1IRF2hbzevK5lWxSOVI8hFcYmbtJPBVpVh6WqzP+HEM2JqF2PdJKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AG2dibK6hMk66WBIb0lJ5ft2q/f0Vvhvl57YDBuLk68=;
 b=hNg6ytL216k+5cxlUmuK/KGuRgPEIl3HCsWiSaModIf5VMOi0+IgsB0WSueTUzGPL88EkbIR6Wq9EnCXe/AwOX9e+MXx6DUeI8KM8mWxtXad/+1pIBe3NIOEdV/K7jAmzINwJ1hGxLm1429S3rcNCNUVe4piONzM8zZ191kPqwIN2E6sISeRMO8ARJ5RrxW9IyAUl60mY7KPqTkHqN4e0RG1ybrf2SWh+rOgB9iPa0v6rkd4DyPpwsxCyz6qn7Z1SavDHTjqVU260iqxxSAPB6vhtG5kie/2CHpgWnshMqdvWBB6/cfnjO8HtWYBgyfJEi/H/1bgdoQWAFe/F7DchQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.18; Thu, 7 Nov
 2024 15:16:03 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8114.028; Thu, 7 Nov 2024
 15:16:03 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "pegro@friiks.de" <pegro@friiks.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Paul Menzel <pmenzel@molgen.mpg.de>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Fix handling changed
 priv flags
Thread-Index: AQHbKvBY9yodTnypWUG/DxxxPPeUy7Kr+Vow
Date: Thu, 7 Nov 2024 15:16:03 +0000
Message-ID: <CYYPR11MB8429A6C6306EB6B09F1169CCBD5C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <cf6dd743-759e-4db9-8811-fd1520262412@molgen.mpg.de>
 <20241030172224.30548-1-pegro@friiks.de>
In-Reply-To: <20241030172224.30548-1-pegro@friiks.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CY8PR11MB7898:EE_
x-ms-office365-filtering-correlation-id: b2138255-a076-44d3-0026-08dcff3f1870
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?V2tHUG9aRUFCSXhtblNMV2ZKNDhIdkhuVXc4eDgwaVBESndKaGZHeVpoRS9G?=
 =?utf-8?B?cGo0S24zcHZDa0JoWnBCU1JlZjFpRTZIK0xVWG5pcWZhY3kvRUkxN3V1TU5n?=
 =?utf-8?B?cmNjd0VCZnRabHpva1gyUE5MdnZxVjFQU1Zmamw5OStPeVVLdFIwS2RLTzF5?=
 =?utf-8?B?eWJQMmNzejZDRGpObjBLTmI1M3JBTXZYcVlSL1V1aG9US1k5bHBzREQxMnlO?=
 =?utf-8?B?S0RrbFNnMjl6M3VNK3pHelNoemYxdytxV3BrTmNsR3g3NkNsM1pUanFzamZY?=
 =?utf-8?B?N2I4VXhscm1FMWZXS2V2cGRraDZsS2FJV05sa0NCb0h0SWp6MTFaSUlrR09J?=
 =?utf-8?B?R2R6ZzBmRllNVC9Kd2luaEIzeDVaenN2ODdxMzR3cmY4Mld5WThUbVFLN2F6?=
 =?utf-8?B?dTBCaGQ2UDlyRVY4NkcvYnBlNDd3K1RLdko3Tk1jdjdpS2h2RVMzSjhLeGdM?=
 =?utf-8?B?WDJXNDJwT3BoVGI2WEFvMmZXNzVxbVNDZml0QVh5WklyZGNlekdyVzRaWjZo?=
 =?utf-8?B?U1JkZ3E2bnE1S1JmV25YaStrRGlqVC80cEI3UkpKbjlvM3RYOWFGVURNUWZj?=
 =?utf-8?B?ajF5ZDhTa2pRc3dZM3owWmpQYjRqMjlBYVJ4RHA2YXM0dnd2d2xCVkNudUFh?=
 =?utf-8?B?ZVlkb0R6MzdJd3NCUnNHbHAvVWdUMGN3RGdXaGVaMllzdUJBbmVwZmRhL09u?=
 =?utf-8?B?WWpwN1U4eVl1NE5NZVIwS011emxka05iTEs1VG9sZVNOa1hkNkZwU3RJQXU0?=
 =?utf-8?B?c2pIYmhodFdqWGpLMDZqRVAwWmpBSk9LZExOUmNNODlQYlArWFU2cTVJdDh4?=
 =?utf-8?B?azgrNzdlVSt2Um1KamhjZUxvL1NFOWdGZExzRzBzcEFBeWJNdm9STUFqS1RY?=
 =?utf-8?B?bTgwZ3V2eml0b2NpczV0NWdvTTRpSjJ1ZkI5RkNvc0YyRDN5bW9XREtoZHJh?=
 =?utf-8?B?MHJCK1VBQ2RIWThhaVU1MFpTNlc0dEw5MUFEb2N4ZVBTakV5R3FlZnVGcmNU?=
 =?utf-8?B?Q1RZRXRrODErSDUzVDJqNTlUTG5jRzc5L0lqcVh2K0liM1VvTis2SENXYlkv?=
 =?utf-8?B?U0MrR3BUUVhFY3RWdWtFZ2pKV0EvYmRsZUY5QWNNZHNRVDFMUndrcnYrL1hU?=
 =?utf-8?B?SGUvdk11WWdEYndidDZ1QUZSbnZoRUJ6QkFyOUw1Qko2UWdycFJEZ3VVOTJV?=
 =?utf-8?B?ak1ma085MjdabG5JUmt5V0FMdGJ1WkdlMDNBNDYxazdLZmhEbFlnaGlCclVV?=
 =?utf-8?B?YU1GcHRWRGhLcm1GWEhtenc4NEpXZU9nNXZnamNUb2p5REJnN2NEK1B5ejd1?=
 =?utf-8?B?amhLTlFJUzRuOFZNZ1ZRaW5DVnJpNEFNTnJHNWpHZnNzdDZtc21sRG4wdTNX?=
 =?utf-8?B?N29EYTd5eXVRdWxRd3hQUTRPTWhxUEhrZm1lWnlPb2lSdkhOUHFSc0tnTWh5?=
 =?utf-8?B?bzNjNVp4enlPdzhGb2pzbTUxN214RllKZG1iUEt1bG90SGhxdmZlNXpOelJ1?=
 =?utf-8?B?WUs2aFBJK3VnNnE3VXVwUVdTdDNWTXV3am8rUzBXTWdGeUVwcW5JWHc2eW13?=
 =?utf-8?B?TGZhNlBLRmJpY00zTUhmKzlDK0VhY0I0RVVGN1lSNUs4azJtQWpYdUxZS3cv?=
 =?utf-8?B?dnIvaDRvbkZ4alJjUWp5dkdWS1pMUkNWNWRtMWY2U1hWdGYrK0J4WlF3RlIw?=
 =?utf-8?B?bkd6OE5PbjdLNmczNzA5NklHWWVIMWdXZWNENEh2dnUvWE1RZWdCZ0wzVkhk?=
 =?utf-8?B?eDJSVUZ6cjhDdGNhVFF6MVFPcmliRWNWTzdZaUNlM2xEcHZxWDA5eVpzdUth?=
 =?utf-8?Q?WnkcTwKHpudvC7sqZq3GasJW2E9CkjAsye8W4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VzdUeDRzYVgwcnJ6Mm0xeGRJQm4zM1dSejhGL3Y4aTVrMmh3YXhoT09PUTRq?=
 =?utf-8?B?NjNnZE1hdUI2eVlKTW1mOUVSVUhGaVV1aUsxbVNZdjJ3SlNrYkVrMm1aUHlr?=
 =?utf-8?B?TWFneDRNSFh2RVhTYWpHVEM3RFo2Q2lTQTRwV0pjRE5uMnE4MVBKY2lwMVZk?=
 =?utf-8?B?Z1hJY3NkY1EzZnVtTis1OWJIdmVzb2FjeEhreURpaWVTd055OFNxRHRlSEZF?=
 =?utf-8?B?Mm1yNno2R0pwM3AvTHhrNlZHM3VrcjdLNUJhSlBQWFc5TjErQmVFOXptOGhl?=
 =?utf-8?B?UVYzVHFtT3lwVUJzbU9pZjVDM2gwQVdYaVVnWXF2anBKa1RyMDBYYUpTVzdk?=
 =?utf-8?B?V0F0NWl3b1cvWDdta0hUMGVxL2sydjZaZzBJRWNyaEd6d0I1UXhrb01XcVVU?=
 =?utf-8?B?UzArT1JyQ3RKMzI3bERnTnpNeW00RkVTMnVxeG9Bak5EUGpSRW1uREdNa0pj?=
 =?utf-8?B?Yk1BOE1wdGxQMzU0cTJnQkJQWmtRQWNiWGtBZW1nODBaMzRnUDB5aXVYZ29B?=
 =?utf-8?B?UVBYOVFnSDMzaTFSTlZWNFh1bHZGMnVqOUZtRUR6ajlpcGQrNlRYQThpNmJa?=
 =?utf-8?B?U240VmVpOE9VSjg5NFhjSkJoL3VrZGREVjZDK1dySDMxL2xPblo1K3BGb3d0?=
 =?utf-8?B?N3JCcXZxUHpxMytCRE1qd00vZGJGa3YwMjUrbkhvTWFrSnc0NzBCcVAvZ1hm?=
 =?utf-8?B?RnFNOFoxQWgvRTBWV3plRzN1NERiSDVXQVZqT05LUUsvb0ZmanBvR282eFY1?=
 =?utf-8?B?M2NJVkVDckRuVi93RUNMT00xWkVUSjNBODZkbTBZS0pML29oR0FyVmFPYjZU?=
 =?utf-8?B?c253MWtOUU9uTGwrdVZCam1LQldoSzBESTRJcTMwUk1QTUlRUDl6ZTVwbnV3?=
 =?utf-8?B?NU9Vdnp1ZGF4KytjVGtwT2w3Vkx0T3FoTEhtOGE0dnNGc3hWYUZqNlRweWh1?=
 =?utf-8?B?OGRyeFNSYm1hMzZtQTFIMzZCYnBwQWZEM2FZT1pwTWgzYjlVQ044VXBGVTNC?=
 =?utf-8?B?MjQ4Rm84OWdxVFBzRXg0emRDMjNlWUVPM21OcUlqOTduc3BQTnBpcE9TUFd6?=
 =?utf-8?B?cmYzeGJMbWxPNmVoTW9zZm5YbTVrN2UxR3RzRm9OVGJSckE5UmlKbXAvSzlp?=
 =?utf-8?B?MFJoai9nWHRIdlc2cHdKbGN6Nk9ld0dFL01tQ21OMXRpRmpGd05JbzFncU9m?=
 =?utf-8?B?bGJUNzliWi96dWY1c3BzMjkrU2s2M3lMa3JVQWpSRExxYm1KTlU1VGZPcUs2?=
 =?utf-8?B?OWx1VlFTY1NlZTVkRnZKOGdPc0lOUXNhbFV3WkQ2N2x1d1ZCOVZPTjJYbFBS?=
 =?utf-8?B?OVd6ZFhsaTIyK1ZJZ2FIS1dGUWV5N1lOdndQYzFiQXJmbjlnSENEVDZZU2w0?=
 =?utf-8?B?ZFRQTzJueEpZTklZaUJHTUk3UzFVOWh4L1dRQWxZRWRPZUdrQzRvUWZaL0xs?=
 =?utf-8?B?Q1ZjZDcvbkZGTWNYampodWpXMkhlb0UzQllzYjdPYUx1SkwvM1RwK0p3MUQ0?=
 =?utf-8?B?RHJjRG1GWDYxUitQL21iTGVicm1ldmVvNUlhQ2FaRXVvYXg0b0pqOVVOQUpw?=
 =?utf-8?B?Q0lnUFVwRTBpTk1laXRNcGJsc0lScUxqMThUd1NKNnJPeGF5UGM0S3FOa3Iz?=
 =?utf-8?B?MVlGeVNSd0dLRTBsMlAwd1hrWlpJZFBKakMzYnFWaEdvOWhPd2lhcm1ielBV?=
 =?utf-8?B?UUJNRE5JTTBaTGp5L1oxUEdOa1NZL254WXVCRjhwMHpPeTVnbjYzTmNZcllX?=
 =?utf-8?B?NnhJb2lTMTR0Zlhmek1pSlUyaWY1T2tqVHk0ekZzanNYOStRZ2JyLzNXckh1?=
 =?utf-8?B?RmhnNHdVdFZ3R0xGM290NjltQVI3aUROUkpsR2RIbjhMK29FNUdzbHJLSDVZ?=
 =?utf-8?B?VlE2M2x6TElQRWZMbVJtdC9NOW1ici9QY1lPN1dIdmI1WHduNGptanJ6bEx0?=
 =?utf-8?B?aHV5MGJjVXRWT3QwVk52UEpEaXN1Q2xBVlRuNW0yOUdPTVVxMWdSVDlaSjV5?=
 =?utf-8?B?ZWkzYzhJQmZkWW9DSER2TEJOSW1GWHZNcnB4UDdMZlV2OEd6aENxTEtuR0xX?=
 =?utf-8?B?T2o3S1RuRzBTTlRQRzNmenJmLytjdStwT2JyKzM1NVlFMmJZMnk5bVVaajF0?=
 =?utf-8?B?MGt1RU9jbTlxVHZTS0dLdzZnYnoyRXY1YkptZ3drWHJjeUdPTlJ0QUg2MDM0?=
 =?utf-8?B?VzdIRzRLcUdPeWFDTitYQTY1S25tdTR3c0xsQXRrc1dQWjhOYU94OUhTTDd5?=
 =?utf-8?B?MVVOeG5VRWNqSkhOZ0VrOFI5QXN3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2138255-a076-44d3-0026-08dcff3f1870
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2024 15:16:03.7153 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yCK55GtOY3gJu6Fb0jZG1CXOhTP+iKZ0IYRWXLzEmrZ0D/bxyDFkuXwcuNn6yUhz/QJJqmKxd34MXUl/c0hIB1g90RzlsdkQLBQvm+DqogMvKMGzG7ihWZuBNoGrF27X
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730992589; x=1762528589;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AG2dibK6hMk66WBIb0lJ5ft2q/f0Vvhvl57YDBuLk68=;
 b=ek/+KFGcanhn132a92GWZ1573U29YZJUWZPsqaMbpOPLXEjI9rRB/fyc
 EJAS/cVqOX/TfLtBXO55hocFOIo0S0Tbp0ke143Weio0nQdeECAo2Tphw
 tdxz4NZyeFMoY6y7ALWz3JaGDqrzD2RCJwMLv8Cr3Nnp7h9ORPwQMxJBy
 0hm13/KjNcoRKuhVdELzAFDypVn5ppveaIpNzov6hqxhwHnemqQGPJ1Gr
 B2sEarRKoDot6uH8awqKrEsKlejcqOatAfZFUo0u2wdXQ8bPfQFXC5Sb1
 MIExI4MqSvpbPdiKpPe7foF1ys4vOWa1HiAwnJtf+O//10m8TUTk9KOPJ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ek/+KFGc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Fix handling changed
 priv flags
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBwZWdyb0Bmcmlp
a3MuZGUNCj4gU2VudDogMzAgT2N0b2JlciAyMDI0IDIyOjUyDQo+IFRvOiBpbnRlbC13aXJlZC1s
YW5AbGlzdHMub3N1b3NsLm9yZzsgUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT47
IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWws
IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IENjOiBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBQZXRlciBHcm/Dn2UgPHBlZ3JvQGZyaWlrcy5kZT4NCj4gU3ViamVj
dDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXQgdjJdIGk0MGU6IEZpeCBoYW5kbGlu
ZyBjaGFuZ2VkIHByaXYgZmxhZ3MNCj4NCj4gRnJvbTogUGV0ZXIgR3Jvw59lIDxwZWdyb0Bmcmlp
a3MuZGU+DQo+DQo+IEFmdGVyIGFzc2VtYmxpbmcgdGhlIG5ldyBwcml2YXRlIGZsYWdzIG9uIGEg
UEYsIHRoZSBvcGVyYXRpb24gdG8gZGV0ZXJtaW5lIHRoZSBjaGFuZ2VkIGZsYWdzIHVzZXMgdGhl
IHdyb25nIGJpdG1hcHMuIEluc3RlYWQgb2YgeG9yLWluZyBvcmlnX2ZsYWdzIHdpdGggbmV3X2Zs
YWdzLCBpdCB1c2VzIHRoZSBzdGlsbCB1bmNoYW5nZWQgcGYtPmZsYWdzLCB0aHVzIGNoYW5nZWRf
ZmxhZ3MgaXMgYWx3YXlzIDAuDQo+DQo+IEZpeCBpdCBieSB1c2luZyB0aGUgY29ycmVjdCBiaXRt
YXBzLg0KPg0KPiBUaGUgaXNzdWUgd2FzIGRpc2NvdmVyZWQgd2hpbGUgZGVidWdnaW5nIHdoeSBk
aXNhYmxpbmcgc291cmNlIHBydW5pbmcgc3RvcHBlZCB3b3JraW5nIHdpdGggcmVsZWFzZSA2Ljcu
IEFsdGhvdWdoIHRoZSBuZXcgZmxhZ3Mgd2lsbCBiZSBjb3BpZWQgdG8NCj4gcGYtPmZsYWdzIGxh
dGVyIG9uIGluIHRoYXQgZnVuY3Rpb24sIGRpc2FibGluZyBzb3VyY2UgcHJ1bmluZyByZXF1aXJl
cw0KPiBhIHJlc2V0IG9mIHRoZSBQRiwgd2hpY2ggd2FzIHNraXBwZWQgZHVlIHRvIHRoaXMgYnVn
Lg0KPg0KPiBEaXNhYmxpbmcgc291cmNlIHBydW5pbmc6DQo+ICQgc3VkbyBldGh0b29sIC0tc2V0
LXByaXYtZmxhZ3MgZW5vMSBkaXNhYmxlLXNvdXJjZS1wcnVuaW5nIG9uICQgc3VkbyBldGh0b29s
IC0tc2hvdy1wcml2LWZsYWdzIGVubzEgUHJpdmF0ZSBmbGFncyBmb3IgZW5vMToNCj4gTUZQICAg
ICAgICAgICAgICAgICAgIDogb2ZmDQo+IHRvdGFsLXBvcnQtc2h1dGRvd24gICA6IG9mZg0KPiBM
aW5rUG9sbGluZyAgICAgICAgICAgOiBvZmYNCj4gZmxvdy1kaXJlY3Rvci1hdHIgICAgIDogb24N
Cj4gdmViLXN0YXRzICAgICAgICAgICAgIDogb2ZmDQo+IGh3LWF0ci1ldmljdGlvbiAgICAgICA6
IG9mZg0KPiBsaW5rLWRvd24tb24tY2xvc2UgICAgOiBvZmYNCj4gbGVnYWN5LXJ4ICAgICAgICAg
ICAgIDogb2ZmDQo+IGRpc2FibGUtc291cmNlLXBydW5pbmc6IG9uDQo+IGRpc2FibGUtZnctbGxk
cCAgICAgICA6IG9mZg0KPiBycy1mZWMgICAgICAgICAgICAgICAgOiBvZmYNCj4gYmFzZS1yLWZl
YyAgICAgICAgICAgIDogb2ZmDQo+IHZmLXZsYW4tcHJ1bmluZyAgICAgICA6IG9mZg0KPg0KPiBS
ZWdhcmRpbmcgcmVwcm9kdWNpbmc6DQo+DQo+IEkgb2JzZXJ2ZWQgdGhlIGlzc3VlIHdpdGggYSBy
YXRoZXIgY29tcGxpY2F0ZWQgbGFiIHNldHVwLCB3aGVyZQ0KPiAgKiB0d28gVkxBTiBpbnRlcmZh
Y2VzIGFyZSBjcmVhdGVkIG9uIGVubzENCj4gICogZWFjaCB3aXRoIGEgZGlmZmVyZW50IE1BQyBh
ZGRyZXNzIGFzc2lnbmVkDQo+ICAqIGVhY2ggbW92ZWQgaW50byBhIHNlcGFyYXRlIG5hbWVzcGFj
ZQ0KPiAgKiBib3RoIFZMQU5zIGFyZSBicmlkZ2VkIGV4dGVybmFsbHksIHNvIHRoZXkgZm9ybSBh
IHNpbmdsZSBsYXllciAyIG5ldHdvcmsNCj4NCj4gVGhlIGV4dGVybmFsIGJyaWRnZSBpcyBkb25l
IHZpYSBhIGNoYW5uZWwgZW11bGF0b3IgYWRkaW5nIHBhY2tldCBsb3NzIGFuZCBkZWxheSBhbmQg
dGhlIGFwcGxpY2F0aW9uIGluIHRoZSBuYW1lc3BhY2VzIHRyaWVzIHRvIHNlbmQvcmVjZWl2ZSB0
cmFmZmljIGFuZCBtZWFzdXJlIHRoZSBwZXJmb3JtYW5jZS4gU2VuZGVyIGFuZCByZWNlaXZlciBh
cmUgPiBzZXBhcmF0ZWQgYnkgbmFtZXNwYWNlcywgeWV0IHRoZSBuZXR3b3JrIGNhcmQgInNlZXMg
aXRzIG93biB0cmFmZmljIiBzZW5kIGJhY2sgdG8gaXQuDQo+IFRvIG1ha2UgdGhhdCB3b3JrLCBz
b3VyY2UgcHJ1bmluZyBoYXMgdG8gYmUgZGlzYWJsZWQuDQo+DQo+IEZpeGVzOiA3MDc1NmQwYTQ3
MjcgKCJpNDBlOiBVc2UgREVDTEFSRV9CSVRNQVAgZm9yIGZsYWdzIGFuZCBod19mZWF0dXJlcyBm
aWVsZHMgaW4gaTQwZV9wZiIpDQo+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEdyb8OfZSA8cGVncm9A
ZnJpaWtzLmRlPg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9ldGh0b29sLmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkNCj4NCg0KVGVzdGVkLWJ5OiBQdWNoYSBIaW1hc2VraGFyIFJlZGR5IDxoaW1h
c2VraGFyeC5yZWRkeS5wdWNoYUBpbnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IElu
dGVsKQ0KCQ0K
