Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iL3jDcxgBWrsVgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 07:42:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF9753E0D8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 07:42:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34C3860D71;
	Thu, 14 May 2026 05:42:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dUEohlO-41kh; Thu, 14 May 2026 05:42:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5B1660D74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778737352;
	bh=PTrMh8qePkBPXF0sYw8FLRFeJ2RSEXe4/jquAf6T3HM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XP2WTV3ClUVVULa12DgWuoCp/COOUMiErRuRiWvW1TfUaW1YqOMr7TPF14vEunfq7
	 94dsJMpq630zMGls6IEJW8qOu1+ebZ1n/Cr+LP3NKx9KEpyjeE/LB99iHlPMZyBR9j
	 FX5hOYM0XmZAYVgngrCou+9r2x7qtboJaShw7bpfbxUcVUje9Fw1MZtiYiP4Q83rlC
	 apOLEwgzmIxIP6tPPlujXJCIBWcrigIaztXjgYg8dNbDSieschKnerWiyQDnJTUezm
	 z3HhePXoUTbUfWCGYc1vfxry8s9ot+FYvHgYsI6azI+mKYuNKh7aqkH5VZyFrZSuoQ
	 SbFUiSyjvBdYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5B1660D74;
	Thu, 14 May 2026 05:42:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1271B37D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 05:42:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC321405E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 05:42:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EzFHPtjmtH_p for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 05:42:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 079BE40214
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 079BE40214
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 079BE40214
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 05:42:29 +0000 (UTC)
X-CSE-ConnectionGUID: IC5K1WE4Tlqf23/w9EVNDg==
X-CSE-MsgGUID: mOxNu/QVQGOcmjqUdzSw/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="83544641"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="83544641"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 22:42:29 -0700
X-CSE-ConnectionGUID: SrajgG9NTxyFU1NDuzhHwA==
X-CSE-MsgGUID: eHRTqtc6TQiGj/K1eBiAZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="237308391"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 22:42:29 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 22:42:28 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 22:42:28 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.44) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 22:42:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g4QFU6z8tGpVUWUPXXYl94U8ODG724sjNRQkt2c1n2V8rp6jkI18YZmJoP1fnnQCYyTQ0ooiczou6GMq4XS89kikk25W4+hW5zb+EIJ5R8z59hAKLXhrm96Xx0PwwTebe7ymuPzYd4T8r3p9HHIgndbbaj5Se+jzbVwgWSKMNi0mYqDDu5pWjiX0+BcCHApZnlRtv6NFq0xA9vs/ZIOJV/DKXzd90/pD/yDtZZ8/fDR4VQUIwoO+efBUzatZoDE4pvRzQOEWPA/2bBG9Op7eI9tgs+Nz+xw+1dUNMQxRbu+bf0FLzDNQERyWy2cjwFTWDgp4C65cIh8oCgf7lKPUZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PTrMh8qePkBPXF0sYw8FLRFeJ2RSEXe4/jquAf6T3HM=;
 b=gzquTyyDo0GXi0CGeqiOWDMrj8OhSUCUW+7NuAgmDMKwl7Fq/AOkx30tDOYJIIRA09emR58QEELVaKH4OESrag/g+GBYCjdvLEAk9wVh7PCgFxgzZ4KRoWZiI5e1WFedeynanwYKfrj/afl3TaOazKuhnQuoQEYKU+/tNgZigKmGca3o6eu2/hyWJ6WKtbjwkrAISfM8xfVATm46h0aUH9lmEYuQDJKCO89VL4y8s1Q5zzClKe00Tc0DtrhUtwLKiCgOH4E41iSWTPzlDMKOqB/a3gJ8bWI00nyKasHfDVCpg3DD1sfQZNe3WR8es2r22r1ElGtWaMIS6r55KirFFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by LV3PR11MB8457.namprd11.prod.outlook.com (2603:10b6:408:1b7::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Thu, 14 May
 2026 05:42:24 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.20.9913.009; Thu, 14 May 2026
 05:42:23 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Temerkhanov, Sergey"
 <sergey.temerkhanov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: use READ_ONCE() to access
 cached PHC time
Thread-Index: AQHcvbq6uRqaPaO+pECYF9wHXGBlvLYNTPBg
Date: Thu, 14 May 2026 05:42:23 +0000
Message-ID: <IA1PR11MB6241F71A16782BFEEDEBD5368B072@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
 <20260327072332.130320-9-aleksandr.loktionov@intel.com>
In-Reply-To: <20260327072332.130320-9-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|LV3PR11MB8457:EE_
x-ms-office365-filtering-correlation-id: b9aca38f-988b-46c6-600d-08deb17b92ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|4143699003|38070700021|18002099003|22082099003|11063799003|56012099003;
x-microsoft-antispam-message-info: SEEcKy+R+rm2Sz48akkf4+4IiKrVPJvrwA1SxrnIGputMTkhyvRVn3qbwgBFX858MeiujV/xFUaco+qNGrH3flwA1lKskBF+0yXXjNAt8PfJC2KZpSP3kCsKb4hgU6JTsHDGOOpY4QFy1jwxopBzr06fVtPXJ43HUydoHtxIU5CF46yhV+INudCut6AyF6af4YgPw/lvMkRKY+rrxIL6TDa5L2NbPQ5+drx5Yzkc6trNND/JyzBxLzCXOLVljBLfTbsQfwRA+QgCtuC5R8DwVbxBBzxai8MA6beh8f4kcolnjqVQbkKFgXRH6cDxXI2dyhI20je/v+uKeGYfaY6E7ZlSEXYkoHpwWqaJIl303afN+7hodgfO0n1pZ97eLzC5N8dZ1pyvJhwklkj8/BMuUjcoBms7vUtzRjifObbqcP98CMTAQykoSZc6WBoyPInIbq3YspmnWJWXjxTeebeOmC1vKALerav4f82QzY4Mg0xwmdQgmlQxoaJkliNSX3mEI0Sk8rhsFnGfIyqdSy7pmApxqxTpLCzJHo/t8ncQxLoghUEESLEfwftqXViR/6g2yp7wc+VqXu8nIa42AwQp5ZKFlLqbznQmgWmNeGtOg+1G4cXYsSwRzTQ53ALr5YKdNLZqF8X4HmHamYzvBTaOBJD4CyS1fYfMImltbq1XeHmNDdgb8FtEfiB+D9FAFy7aF6zTcfOetLFu2QVgv+QKV0rTEjCe2Bi3I5GviEcfld8MQFDszGiDhvpVg8YrHnLZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(4143699003)(38070700021)(18002099003)(22082099003)(11063799003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JfQTEyI4wPRv4w5+Y4EgogrnqsJgg3Cve9brBZ/VwFuTg4ljc7ZR/BwrCswv?=
 =?us-ascii?Q?6yjeahNuhFYdZSpBMLFuSF9ddCPGg03cxkiniRvNgC5DSGQVy+kLjcq3rH2a?=
 =?us-ascii?Q?wE1eF+foiJiBLh2z0zZiO9puY1pSo1zu/yaU8hZNqNkcNuSr82oG5D0MHgaU?=
 =?us-ascii?Q?PTEm1u47HlkCG/b9c1cVgThUXnFYcmRUWtyi6zUKbR/cTcS2ZMBEtruRSpcN?=
 =?us-ascii?Q?NGHCPUHkD91y8pf31uVFI+71f4lf+HBhhA4XBrf8fleeFOJ0v8uGiFBuPZyE?=
 =?us-ascii?Q?7B0N99BzZBOx/7SvZ+Z/+QQBJfoUXcetsq/SgkE4WL1Vo+/xTsbmXmzY7sYp?=
 =?us-ascii?Q?5UPjySoRdszSC7U1g0fqEII1ifP8T/gXPy+8H9afgF1zjVXmRWfzmbAnkQmm?=
 =?us-ascii?Q?Hh5xbJBdQN3Bnhe/0fpmd7lw3VdL+8tzT1HqfDHNe6gFtS1VFOk2YnaSC0zj?=
 =?us-ascii?Q?qU3JGn3dY+zOs5C3fx+rg2/W2XVevEXFCTzvOpbXMLhXEZ3TnjbRnGcUgGld?=
 =?us-ascii?Q?h016VJDcJEg/dfae08Aa4LH3MpB5MoXrJkfi7El+KWo9N7YnnvqXQGRy+sbd?=
 =?us-ascii?Q?SDQ5PBr8W0OxrD5tqAcnjAFE4C+HN9EAc5y6mC7/WlaTnLb2aL7gbdbisc7B?=
 =?us-ascii?Q?PlIccXHMb/bLvAU36ZN4/vod/yIbqDHTRMWPQkMl7dUiu8Tv69no91Lpu3V/?=
 =?us-ascii?Q?3EcswHIkU9hdRPGqJtCKN0Nje/FIDUKTskovPXPJkY8is5BEjVdWoSOrI4qb?=
 =?us-ascii?Q?2Fbo1hzz5UEA5S0GJVyNUDM0GSfkFULa1Ao5FofkHywWcQEG9kCh6ASyOVEE?=
 =?us-ascii?Q?RrzN8QwIBt5jKkr5v+N6UEX0zcJ1B1qeXP+99VNFlUwSrQYN3sspYsJnRmRe?=
 =?us-ascii?Q?Imz7ZI/o64z3/nTuoqlUEPvwrGPY5Rv9YzA6fTT1jOHQls/WlyufExAv78yl?=
 =?us-ascii?Q?kyqlt+k8Ik7VE8Evr9Zb9x0U6XapuwMyNcnwlq+3oyI03bF2ztEb1B9nxXXm?=
 =?us-ascii?Q?fyCvr8S9eDwPcUGmNj/iJNT0LZ1XjpnoUeh//gMoZJjkUKoH+YrpF+B/sGvT?=
 =?us-ascii?Q?/Gdvo6VurAzqZ3MrLAO93BmSGUAktqRMKaZuvrXLLcRjQHb0ai3f5doeXTcD?=
 =?us-ascii?Q?HahSkCGVJ314Pf4uH7ymTMpesozv2kUHM3G54Ci6xAbhbcCwulQNYlORXK9z?=
 =?us-ascii?Q?t+A208ulzWVJdbyTTwyveftE+hKVvVg2E+yOZocz51K91Vi1heDkf0KCJX2I?=
 =?us-ascii?Q?aFYlzmdKWDit/p2W+9DwE1kUCSwBmV4xYSwGk/DbLyN8u4eM9c3liof9a5WT?=
 =?us-ascii?Q?mCNbLu3PShYUYDJ9kcmAf8NOa6YyxD2vhuBX/p//3h9yIPJaPUs5XtzvpF0b?=
 =?us-ascii?Q?3vkzOPpkmkF8XFBgKUExrOmfxcb+NPhWpDOQf2AW8E8ZgfTwCvEMMqk0ZY0p?=
 =?us-ascii?Q?tcoa+ly7wv0DPKcX2N1W8tSxEojMTNtXxV+KNqOnO4CD+lCnvqArbajkEC/q?=
 =?us-ascii?Q?5UQSoUvLyVJQY7mb5OAdIBLOgAdxvRIHsok9im73DxKzy1xbxERuCFujWzfj?=
 =?us-ascii?Q?ViH6hPU6NPIMxzeuxLRvRDnsMT6UfU9tI7+G9xgUPdnc8ppiU4/64Cwlt6RG?=
 =?us-ascii?Q?nRe07fz6oORPEeEm9AZcUwc616XVeEvMO+SRsbKXtiY0mjcjrSZkQUGR/Gj+?=
 =?us-ascii?Q?Ra5jDYLfrVP8tPEGRAM/nBUDQOfZtWqVOnwd1911WdDt7b7e?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: V6Q+3YXEWg6S6uT1JWVJOAPfNaCGJgNIMP1Y3M98jNCBtMftFb5gk9hhP9Eaw7gJBn7i8UgaxcTYnBuhgkuS+p4JruoOv+zcbMP2L41N5hrs3c6ljL9qm2WU1dtK8Nt6EGZvxXIwqITXSJ/HX7uVqvOie0iSp5gsgjBV4XOQhmOguIc4KI7pR9MnoxgMARNklY7mkLUYOsZUOBh3USu/Bb+1+ynNsJUCTsPxqmspGVh/4d6elNACCb8ERCrbzDTHXeBjQ4I36dQCDxmWFpVJJszAjgkxySIMoQumGRki6ggSk0Gnm2oswe3JfJaV+t6WLo/shBBTJ1v5CZ0H3zUSLg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9aca38f-988b-46c6-600d-08deb17b92ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2026 05:42:23.8008 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VtlviTdn7r19wdBWPjIa9eybfDwTKwKqsv1lychSDH8ZI9GMJFZCzM7YgFzcn+fFLLZyZ+fUUgEO0LeYvXHVLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8457
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778737350; x=1810273350;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mE+P8/JxaBHlwWcJ/T+oO+fEa1dvl6PAK4PrdtgYAYE=;
 b=EUXRndkGvC6Sc8E+uNdyFB+8HKNPALQgS0OdHMgN6AmMRp8WqMd+HFfH
 9jZa5WciwJL1TP9/LWGHxO9MvAdnRA+RzZJE7pHoviiB7+CtEp/9OE8E/
 iPrTY+ZAnsESkQNAYgsEkAx/EFNj+i2w9NrVzeSU6gIALoMIcwkhQTLfI
 /gqIgXecJgYUGIthkX8a1gB0h5DeZQTdTg9s8hiTFXGR1XvYsg+8sgWTL
 WCrfqpkYHDioy3MF3EglRSw3U80ByrTEcPDnxkJUgX3ulB6dli5NT4zTh
 EiimZ2j9cPWg2jV8F1xDJXn2p2a8x0hCDR/G9ThvGJf8FpXfKeV/Zr7YW
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EUXRndkG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: use READ_ONCE() to access
 cached PHC time
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
X-Rspamd-Queue-Id: EEF9753E0D8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:sergey.temerkhanov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6241.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 27 March 2026 12:54
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Temerkhanov, Sergey <sergey.temerkhanov@intel=
.com>
> Subject: [Intel-wired-lan] [PATCH net] ice: use READ_ONCE() to access cac=
hed PHC time
>
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>
> ptp.cached_phc_time is a 64-bit value updated by a periodic work item on =
one CPU and read locklessly on another.  On 32-bit or non-atomic architectu=
res this can result in a torn read.  Use READ_ONCE() to enforce a single at=
omic load.
>
> Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
> Cc: stable@vger.kernel.org
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>
> drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
