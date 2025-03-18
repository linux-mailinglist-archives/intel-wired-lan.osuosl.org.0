Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AB0A66866
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 05:34:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52AAC820B5;
	Tue, 18 Mar 2025 04:34:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pJWLxXH2NGg6; Tue, 18 Mar 2025 04:34:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CC1A80CD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742272454;
	bh=+1/XCy5ub7vYryjKY861gy5A2RXph3n6S9tGXslgS4A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bGiQOFg0H3j9pgCwILOs67mMQO/F38pAXMpx/sGeS9411TiG3nc7ZR9OjLuSq1wh3
	 5OFZ9LjdlP3vR5UvcSr0yqa927PZO6d26o9594pFWj6LrArZ83orCFfF7esxirdS7C
	 LrgEb8qQpC4ZWpwuCyBlE3TnIbZmgDYM2AAaiTG0IwsNKsC4RtB9I0QQRMnOzLZMrY
	 3u0KhRJGs+OvtQpJk4BRDsz3ygsicL+AUKdcc4fKaJOclTVg3keh9Xhobike3mWEYy
	 RP/0+taZBg0yVsaYGyPu3huJRnXue7BDjFckid2OYN1veSkT4vKdZGkeedxqoh3e4c
	 F6fJAdLA2DMUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CC1A80CD4;
	Tue, 18 Mar 2025 04:34:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C27C81A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 04:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B167560B06
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 04:34:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TwQJjMdmCggI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 04:34:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D14266077B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D14266077B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D14266077B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 04:34:11 +0000 (UTC)
X-CSE-ConnectionGUID: 2Rk3xv6XQQayOEfczv51pg==
X-CSE-MsgGUID: 23qtNSoIQviWi7MJIbl/ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="43495311"
X-IronPort-AV: E=Sophos;i="6.14,255,1736841600"; d="scan'208";a="43495311"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 21:34:11 -0700
X-CSE-ConnectionGUID: GD5UO1EpQRmN/ojux2aAdQ==
X-CSE-MsgGUID: NhNXEdysS4WOiwXH9BJL/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,255,1736841600"; d="scan'208";a="126988951"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 21:34:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 17 Mar 2025 21:34:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 17 Mar 2025 21:34:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 17 Mar 2025 21:34:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gH+yokyU/HAYgLi8vQQzQWQQr+nZRSC9dETPdtPk42aEiQihA0rCPN+PwlHb/vcSMyHHP6MpPNZe18enM/JUia6OBE3GIxOqp4xku/UmwJG3KK4ENJpmqyuuNMP9F2XU/yRq3LeUEN+aSvCRHd3D+I1WzWHkmBhpz4nUPruIsOLf1wRQxpOmE1SkBT7Pmta9j6HkdD+sG0dBHEvB+tatWNwblA1641PdHkbK+4kt/0fOqP8vHGoe9nlKtfHT54R2EB3ugsrqVU2YJetZSq2JRDKNKVYwkyCG2468HkWWPpF2x/rvbQefusYPY2mEttS+ZGVhTR8G9nKOdNhgzjfnPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+1/XCy5ub7vYryjKY861gy5A2RXph3n6S9tGXslgS4A=;
 b=xz1y/Mnv+0pankkjrRAjo5JCxRVwzH80JBzgTxW1eHlIBVZt2eEIOpt5j+pd8tqNPknaLGXVQlgMF3AS3KPvOFKaxr5d17lSBVYILN5TGMgAIKmNpRr3bxOJKfTUnXU8omfQ9Tn+qfogKcaZmq9wE1rih7emxrbxcr51q6gqVQIF9tIUaK10jZ5v9xrZjuL1amfAxQeukJVZrFpQHl8O1xD7QT10vr9ox+qVgeJ7QPtflAzcq9/xcafD6g7IAKe6AdYFKYGxtS8yfKIicjHtk1O/a3YzLkAxW+TiqJc3xwd+cH1dK5NEfbhWieRnrOt7JaE/+1wszDGt3gDL2wY27g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by SJ0PR11MB5102.namprd11.prod.outlook.com (2603:10b6:a03:2ac::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Tue, 18 Mar
 2025 04:34:01 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%7]) with mapi id 15.20.8534.031; Tue, 18 Mar 2025
 04:34:00 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "andrew@lunn.ch" <andrew@lunn.ch>, "Kwapulinski, 
 Piotr" <piotr.kwapulinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3] ixgbe: fix media type
 detection for E610 device
Thread-Index: AQHbhHg6OM3CzGQSSEKzeSKj39QzE7N4dMvg
Date: Tue, 18 Mar 2025 04:34:00 +0000
Message-ID: <PH8PR11MB7965E1CA038EEEBFBABF46BBF7DE2@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250221154917.3710-1-piotr.kwapulinski@intel.com>
In-Reply-To: <20250221154917.3710-1-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|SJ0PR11MB5102:EE_
x-ms-office365-filtering-correlation-id: 48432ab9-f48d-4b19-b258-08dd65d61b1f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?hkPoXOLClhf6m4lkM5Xgtt5pOvPSLLhD432jkR/t032dfaWyWkOZeGdX5Tp6?=
 =?us-ascii?Q?LODuuBetU1A0/fDynHRgP5Ne39cb0f1tgd1wVlvzr1C+GARAazMGReXhMw9+?=
 =?us-ascii?Q?AOFzpaKaBnd9jHxLxQnNDsAx6ctKikTbQjesXkBZ4t9jjZUlTpcUxgpBI/Pi?=
 =?us-ascii?Q?Xq59cxsWSvyAEdXgRoZHEPGoCpJPNewjAIUabE6g4vsge1IbzpViCy9M67cK?=
 =?us-ascii?Q?GvJoIMddFJCuv4b6zIaMFOnisC4nDNXamyrUzUECDPAwnRhYJbtfQqE3nyBP?=
 =?us-ascii?Q?gaRCqIaOH+RdhAMBrz6AM9/+dgXb7ay0/kk6e1jS2UrNBYi+C2M/0GKPjQ4A?=
 =?us-ascii?Q?cQ1UASm4HGbpM6pBa2zaFjnelpoXUH7D0KPc2kXeKIUMDSVU4kZcRI/y/St9?=
 =?us-ascii?Q?0xUtVDt6gP1U0wGH4ZOEgeMWaB5yaF0U9H6cbLNPQ7UgHsF2huwZMvBM7Ya4?=
 =?us-ascii?Q?LEYDcEwzdMWrw38FhaP3mF7fEbQ7Ys0WTM0NM2cqI1mjQoXQBUohaCu8qIgl?=
 =?us-ascii?Q?glD1j/YKZQ06oOZ4z4ZBZxCv/Y2l/I40cQHDRwr6WXDPEEYdvCxwkieN6szq?=
 =?us-ascii?Q?YpF0MgKb+euVXyRukZxZhuHkBmvjBuFXjP/SNl68O2l/YUSkzBKiWpw4NZEE?=
 =?us-ascii?Q?rgtR2etDIueExM+qVYiIpIgzwwB3bxftgY5ejLES1n5dxqILhWZjpY4pAaSs?=
 =?us-ascii?Q?84vqQSyu+d49lzNDIS72DeYgQWdnSkK/IhX2LTKdcJYD2LrlQ4wA1QmRiZiY?=
 =?us-ascii?Q?N1XqCtIuya0261VNEIvi+wxGAvQk2E6JNyAHnhkZATnRnuGd8yw/ABVFQSFE?=
 =?us-ascii?Q?0AevNnLSk7mMeQ7DfKaGS9h3O7VziO44HzREMoVIVth2gkmb7E/j8dcLWqMZ?=
 =?us-ascii?Q?xueBdD8CkKNXPQMM3RrJtwhOZbhQVtrmlvM8LaIH6OYijjRg0rbIQWyKYDAe?=
 =?us-ascii?Q?NXHcMsYYjyn5hniEl91ckPYHddEE7pSOutIpfDCqJ6WrLjFl+Ge2Nb59MRLK?=
 =?us-ascii?Q?ahMAyWWiVFvWix4IL/PhLQfg8kHgNuRyw5LtaRloO6OuQK0M4+oLwd9TmcCa?=
 =?us-ascii?Q?k1wg3Ir9BlSOwtd7E5jBsulgVc2FIoG+CXdLT8xa59b/lZV48/1SW2dWVM4m?=
 =?us-ascii?Q?kN4RkOPxRNHD2xohjiifZ5brmqW7EfI+3viQ/jgghaWB9PtMPkwVI+UV/YxH?=
 =?us-ascii?Q?yVxNzumB+XQJ3fK3qEz9CqXZCzLsLkKgklPX7NoExIRgGRPbyhwhl5W1uTUP?=
 =?us-ascii?Q?KzleD9kIkEkOYAEHkY1CVRfO9WJVD6VOdn++EKwlP3QHud87AP+SfNZcnoeJ?=
 =?us-ascii?Q?gsRKouiMype+0VPKupU32Jw092+tnxI5rHZGDPYeP2bopfqMSwuWJGblbI57?=
 =?us-ascii?Q?t82DKu5PD2h4yv0KH65DY55DtIb3bdKS17e2Hi965hDEzCURbJ6EflaQAy3t?=
 =?us-ascii?Q?82dEGKEubpExhNpfx2JQz5cWgJAgSrli?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h5xy3aoTfKGZkGAKMtvTw8o8jKNp8HrveRKp8atVIrlL9uTkhxcFtedg3UTV?=
 =?us-ascii?Q?UPdECN3DR9xDIXJEi/BLXppyUhCprxNnx7XPnOpZPDLAcGru8k2pP3GENRve?=
 =?us-ascii?Q?v8XakWSOhyKflEdKAvC8Vs7cac862tAODP4VI4bHVjclrdckJjjuSLhyW9hn?=
 =?us-ascii?Q?riphKQz7U5P3arKL5P/ZYJ0EkZw+9tt/tyujK++4+wEghIMJy4XRRxt+Vlgm?=
 =?us-ascii?Q?8PzloNmSqPClOkWd39A7yoIQuWx16jcFRf7LYsnIDNdrqkiY+WznpByevDdr?=
 =?us-ascii?Q?c6ZVsXrgQvZ5NHispzTwMgmr9o8YT4f6GMCn8yugoOyueqBQodvsAy2bCbHH?=
 =?us-ascii?Q?7NLpn7mmf0kMQxbN2W+tS//TwBrFn8GbY967WlkoU1Q0aBecX+mSEKNiP1Dh?=
 =?us-ascii?Q?ER6mcp5oTs4kXKrf6TeZ8aW67g8vN2MxNW4tXW4pQQBy0e4tj9WHGUvLUpJ1?=
 =?us-ascii?Q?ZPZ1RNudcUf9c1+DWLtxTntTGADDy6uTfpgekkd748xlrmnodefro2vV6Sv0?=
 =?us-ascii?Q?TuIgMCWRWXY7aZmqgiCxW1xKGU6gzWCT1m5oHy+wwViIRzyuCi1TyGbly4eh?=
 =?us-ascii?Q?5OPUJs0tlD/mdUuBTqQzUk2H8Ip4jCM1QJFHMbadW7Io+yvzEfzSbZwWBP1j?=
 =?us-ascii?Q?RV0yHavOxzFzwE/WSgX0p92bCf53vstyleSAj7QjAZ/nzArOplrVdmgEPJwC?=
 =?us-ascii?Q?n4/Klo6BN6ITXugigsquJyIkTCnvMipm7CRmv/jNqxqPg5KZMXc4mIk6oHWa?=
 =?us-ascii?Q?eGji/D1WmUZ/vmDE8G/0wxkmhsfhKub24wLgGTW917RJdpzGosf9YuuiUgCC?=
 =?us-ascii?Q?J2wQWQOQFNb9bPhBVumsMH+uprfNJLTSBMFfKInXdRbNuna/RGCAKdq8AyL0?=
 =?us-ascii?Q?NvNZkkjr1EhkAkiQufW9ODZZuZ3dlA888jB0oCFmYCfwUbePCyHw6Q5bbN3r?=
 =?us-ascii?Q?8MYMWEXY5bU3onga5m8FAoWcJ1mhXz+kuobUpsWAmxgvrdwx9+ODAxG6jLON?=
 =?us-ascii?Q?v6kEN5wemnryRIzrn2i4y0+7OTtn0FzjXrOFKkPaF8Smh1orXt1BfCIZPR91?=
 =?us-ascii?Q?6HnpIiGNQCTduNIEjzcoB/YQIT2jYPuQ1/Rpyixj/9cWSvjsOjX16h8A53TN?=
 =?us-ascii?Q?7EoBSllzWnNN24u3/YdsvGYuXovH/PVzcZWUGmPspMwJDi0G0vfvvndKs0RW?=
 =?us-ascii?Q?3gioAhpnWdo1V10J5Qe9ZQ6D+gUOsBRV7y6WKno2uuNPuZ4xgYUbQO/Z7ysQ?=
 =?us-ascii?Q?tfGOh+ncA9N6/yh0quQP7vutO6J0X3FFS3fEmQ8Ugdepf1Zp9RqvwH92kxYX?=
 =?us-ascii?Q?YL0BIeSoMBygewErvSRfq0aQ/s/OL2EMhV/cCq4YSNVeOcByGv3t7FabpdIe?=
 =?us-ascii?Q?cPo1VBjFMup4OdGzEc7cScKlq7FOj+JG03QEc4XnX2tzlH7rDqPBSOldNyib?=
 =?us-ascii?Q?vKwDS7pjgjOJaKEaB8Ck7riQiLBYYQqlGfm2yre32/+4vJGXiimp8U6G/znm?=
 =?us-ascii?Q?Ghf0Gc1ENcn5XtGn6ML64r83ge1OdJ2gEo82jAESLQX+0FdniuOb8H1AWlwy?=
 =?us-ascii?Q?2cto4XO04JItt/Bj41U=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48432ab9-f48d-4b19-b258-08dd65d61b1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2025 04:34:00.8820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K89CNcoHyXKIMBeZh8h0/QtTUPvsaG2XJh1D/AZc6yjM5nVJmTSfHFSi4V4M9uzTvpEVS7mBXOPPlPlhYAs/Tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5102
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742272452; x=1773808452;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B1cE17QcAwftYH4SVQbjtrMvlCI5XO4Rnv8aiTpSojY=;
 b=M0fLyjhgov4PVFHS6CjL3MLtL1Gb8wpg4G/aNyzPCg4xIa2FHqBUv9Nh
 T6y+WN1cJgxYxp2M6qD2ORDvCt8N4VX1S8KWW3Rz661JIl07C78wXEpXk
 4U9VR/+xVypbkFzc+SjpkY+u3sG/nAH6aej4lXOWEz4F9wMKedPKH6fVH
 Uqep7ygT7NXZ3VUkG33JmnjEmZyNfg/VZ8ZAsqriKgFwNivVGQ5Y320Kx
 zpUitz0AzZFrQlIig95RxAvBfws+npAZw/TFQRq/eJm3SFPtqmX+lw5q1
 KROFOkX1LiqsUsRt6qacgWno6vwR8jeCR39T3qPSnFQ4xDBbcdPA8vNY4
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M0fLyjhg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ixgbe: fix media type
 detection for E610 device
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Piotr Kwapulinski
> Sent: Friday, February 21, 2025 9:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; pmenzel@molgen.mpg.de; andrew@lunn.ch;
> Kwapulinski, Piotr <piotr.kwapulinski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3] ixgbe: fix media type detec=
tion
> for E610 device
>=20
> The commit 23c0e5a16bcc ("ixgbe: Add link management support for E610
> device") introduced incorrect media type detection for E610 device. It
> reproduces when advertised speed is modified after driver reload. Clear t=
he
> previous outdated PHY type high value.
>=20
> Reproduction steps:
> modprobe ixgbe
> ethtool -s eth0 advertise 0x1000000000000 modprobe -r ixgbe modprobe
> ixgbe ethtool -s eth0 advertise 0x1000000000000 Result before the fix:
> netlink error: link settings update failed netlink error: Invalid argumen=
t Result
> after the fix:
> No output error
>=20
> Fixes: 23c0e5a16bcc ("ixgbe: Add link management support for E610 device"=
)
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
> v1 -> v2
>   More commit message details and reproduction steps added
> v2 -> v3
>   More details in reproduction steps added
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
