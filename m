Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0AAC0C0EC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 08:16:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5AC741396;
	Mon, 27 Oct 2025 07:16:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yH8x5E63-oGJ; Mon, 27 Oct 2025 07:16:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08E404139B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761549384;
	bh=fz2xZe+X5Xag46WE1VTCgOomvNmCFOniZHHSxOyPcKs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=il7NGi00IXJZJDuGa7arCAtRajfa9WZ5j5Mq0vwthxM2fbIHHIbRf1PH5y12/MeCj
	 TOU+7gBUy0+wKDLeY5uMKna02DpfUIt9ifmZEf7WOOZl21DiS3qLdmvPUZ03J5kwNj
	 MO6bAbjClk3E4IHa4naMy3eR0nMH46V18Lzl6qtCJ6Qayp90Dby4/VAIwCCzL4fcXF
	 VAoZZe4mIYj0obSO4zOGIVEJLmPtQEivGO/RYlnYtMmo9IGnH3YnaWohRGVxrYOkPI
	 y8rkongbkoQqD//FRq3miD+lEJ2ulCySuhBXWGCWn/19bqzrxtnRIg9/KIoPq5700D
	 oRXdPDJD4DapQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08E404139B;
	Mon, 27 Oct 2025 07:16:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E2B4F15F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C96A0406BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:16:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tGPS7kQ6MgUF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 07:16:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 17D9940488
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17D9940488
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17D9940488
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:16:21 +0000 (UTC)
X-CSE-ConnectionGUID: bUYkZChZShejCwrfEZ9biw==
X-CSE-MsgGUID: ikrBOGUdTWC/kggRpK96fA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62653162"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="62653162"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 00:16:21 -0700
X-CSE-ConnectionGUID: Cp5DOWRRTtKlh8jZR2EKEg==
X-CSE-MsgGUID: ksnBhpwBQRyq0oXwJzT2zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="185056495"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 00:16:22 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 00:16:20 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 00:16:20 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 00:16:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y8bJTnwMLPy8V2SCQrphMXWkdpgAg3kFxrrrb/+L9ahoh69QqLoNBNxYDFaCwuNRfiJlZQYaurNA8lv68YPhDsRfjNw0iDh8eXpsRtJG16YPJz4+9N731PKvuqZxxkdyVna8ZFh+uejCkODsmNQTUoml5SZ4aHyHZacTdUa5PwCZNGvzoatN50TqMKGMXONVIl1IOg236TQPjnDSt+GUSgGKHpRUEkuhFwZ2RPRfrcN0A8yQNSeCVRl+iKdB03M+OVY00sfPK+pKARWGPNttdEXb5Gk94gAcZvoldWKfehi6299BZmr+Am/QPSU1Ps9MvNPZTme1gT47j+5ihMVnow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fz2xZe+X5Xag46WE1VTCgOomvNmCFOniZHHSxOyPcKs=;
 b=VHm+iQRyTIQ1Iw0yVr8Mm47VrITqvuRkoffiGj2BpeK3ebFwzcqjBORewkEsJRRaaeG4t55Wgdvm7nOFh4yd3WYmudiw4MANSFKJU5h+la6PRKyKMD2VkwonxDDBadfGtxDWAsDcZ53kzUmpUlDom+jyH6uakELcbukOGzd4CxBLOQBAL/M5PxXkJk4uPbkNLG9DKdbtaaB9Jd+d6YLx4UGd0DAGw7Ap8x6WntzVz8GNe+Wu4SyRw0+94++SXR6irR0LU5zHnDHyghZNqhsUBoaQjTzo4AOoaLHmCKNs5m1GrWFfLMBWAqipYC5gUc+rZ/UxsrcZdcmT2gQjBLd7OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY5PR11MB6533.namprd11.prod.outlook.com (2603:10b6:930:43::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 07:16:15 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 07:16:15 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/3] igc: expose RSS key
 via ethtool get_rxfh
Thread-Index: AQHcRcB3lDeVd1bNlEuKJApVGHOw6rTVl5xw
Date: Mon, 27 Oct 2025 07:16:15 +0000
Message-ID: <IA3PR11MB89866DFD14FFD9AB3550AE32E5FCA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251025150136.47618-1-enjuk@amazon.com>
 <20251025150136.47618-3-enjuk@amazon.com>
In-Reply-To: <20251025150136.47618-3-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY5PR11MB6533:EE_
x-ms-office365-filtering-correlation-id: 752dd10b-7b9e-4410-6f23-08de1528b789
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?D1GtbFUswsrHkfok+kc9mGpObxtTpJjLnnvS9d1JAF9QZNglPGzgwzvgqcsZ?=
 =?us-ascii?Q?pY9NJyzvjRwTWv8HNXXEoayRHS0OeVRx9q9fxjMLDP/DhcDtfff/VcHIWRcK?=
 =?us-ascii?Q?oigf+bSwJtGVJJhn7wUlSoHcL9Fce7cItEzSbGT0TnNg4PG9snWUYCfH+fpN?=
 =?us-ascii?Q?bpGuHWt9BRS/T5dTI9wxgaflRI8buZSecZlJUFnSDn0viAI98VEmVx1YXUk9?=
 =?us-ascii?Q?MKQ+l84IFAfqwjPX3jHlvW1+lZdhTYE37XXrUfruthXHA75TZwJEUI5oVvPo?=
 =?us-ascii?Q?ipb9ggHuYAFL8iJ5H4/dMeQkG0jwi8vuuewJop192M7xWrumlxOndiJ83Fr4?=
 =?us-ascii?Q?rfmEBT3LrpBXuEALumFvB08FPirWy0tNxWa+39KDq7m8ZDuluLa+PKjhIVi/?=
 =?us-ascii?Q?s4A54mMA1Iz2+ln+t7QvHiZFBx4ofOekdHjOrrwo6sgq22OQdrBkiwC8VS7c?=
 =?us-ascii?Q?qKIeDjH5W1zcK2bGhaZAB2+T10PZKvF8swNpgu4mMEz/Q3njcthnIZgkC6Ck?=
 =?us-ascii?Q?otf9xxPxFw0WOgBZGE+NJttiElMWTAnoA6CpqRKtpbqJt+KlYaWZb0Rz9ioQ?=
 =?us-ascii?Q?zlMJHPOvt1xVpqEl9ZRE9KmFdIX1vezvP2PPhNMtHlmBaOhMdw+aR5RcOgrQ?=
 =?us-ascii?Q?SBujZhQKFkgiIPtpW0YdSLreAd74PBbPJvy4tJcnoHtbvzZJsXJVb6HwRYrb?=
 =?us-ascii?Q?C/iB/p54I4YbSUSU6BvX4ijlQ5yyZPCUzbxn2Ae0kWQ5tjf4qNvd0U9rRQ18?=
 =?us-ascii?Q?GBDFGpvui43RCDgOl9GRHjAbph6B7I/yiNgkprn68DKP0sYAQv6Bx09doXt7?=
 =?us-ascii?Q?CXHmJfRjthW0stFlyEUpr38O4Ex+3Xvsp7wODfYgdI0k1cMm+BTSAoXpN3vt?=
 =?us-ascii?Q?aCwpfj0sW7ShirV2YsiSnYvP72mul9e3EJ3twPQPwCIfKoquPofyD+W7r+W7?=
 =?us-ascii?Q?FjUikyOoW3bCq0IQkjpkxSMPCJOWKJpaF08964qjSSZBWvyivXR0ILT8qEVm?=
 =?us-ascii?Q?F/6CPSdKgJYS71DcwsjCptucdgUYmJgFzTHCkjosNbOa+qzEXbnwaIdmPOk/?=
 =?us-ascii?Q?xmAkt/2upPpD8FnBXf4WtAqY6cO9bzuOoeWLQ7sbxWQn92cKNvHwdgLsnhF6?=
 =?us-ascii?Q?34Wf/+qa/FLCp6bm7c2cgZTwbJGZ++MXIAxQv2NPVbfnu5NkNs8HrqXkjQ5K?=
 =?us-ascii?Q?gSEw9OwEe4VXuudZPBLwp6TjmuM1EH1BW/PFxu00fQwK4Cfh0vnRId7JeIZb?=
 =?us-ascii?Q?rfLpR0NhRh5hWJumtdvmV2MFBMDgFc5dpBmpCUkBGcdDE00nJStOjzsq4wo0?=
 =?us-ascii?Q?py3dVXiPMFk87MYPvb5J7nm92phLzFjDpWcguXwqNRoeKNC0gf2NRXYiCNzZ?=
 =?us-ascii?Q?5h40zM79B0i3PROAWri2geBvsYS58b+pK4kVeNf+KJuKRwX55gif0UnEY8Gr?=
 =?us-ascii?Q?MaBrZN2dicyASXOrNA6IauS0pWjTBLCMNtn0KjQsOtMYbH3FC2cfb7ZftwR6?=
 =?us-ascii?Q?LxhLz3TZUtDhVNRx+zn+Xpy/l/mSz6CxzP++?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Kuu48dIy9c1m8/lu1t/t0dyRJ0QR1e/9uaNjfVcYp1Lnvux+2/zk3phG32Sd?=
 =?us-ascii?Q?n6JSUp0HCyuwlKTYDxzzOCpI0ihOvJtqwxxlnqoaXvabmAkes7PSTO/NgfIH?=
 =?us-ascii?Q?8AnQAm61bBkWX49ZVtYzHrIB5HD2MjXNGRTQi27T7QhbIeMCSSm966oop7Jm?=
 =?us-ascii?Q?VfoT7OkTNi3nntUAUETjovtvJRPern/CQ2GZUrjw1OguvWUX8a1mAQ+ERzzM?=
 =?us-ascii?Q?ZmjaMmyqBg3p6xgFzpVIS6Ay2JeBtLgkL8gNKR/oR2OT8etoc9XO7kgntl4e?=
 =?us-ascii?Q?dMbxWzyVnCxewlvTrmI0hQrQBu98m+D1sxxxbxZkhFfjKU6dCSRDd25KJRqt?=
 =?us-ascii?Q?7oTNy70AgS5Ha5eLaybXpxF0vaRR+//B2NrgRre7ZQNnkTc3uLgjG+v8bGmV?=
 =?us-ascii?Q?MpYRTT6ozOrw7tb+eyy54zmKuXF3GaKg43r/q18YFLtla9vrvTaDX/2X2Sbl?=
 =?us-ascii?Q?6dxNLsyyzt1JNP87WALeDIHWrP/xBDFMSQjd9D2OUGKI7x+Q58eEMCybRLB5?=
 =?us-ascii?Q?KSR31WwWqxAVDlnouhfILoa9eIBri8tenPTJFGqHoeJNiXfvLQQ/7b4HsU29?=
 =?us-ascii?Q?mEDVncKtLN2j/mk+26S1iw3H5uOSKxtV7c1IBAxnfM/PMgSzvQOEfD+AsKyI?=
 =?us-ascii?Q?1f1msfNuNnt0EtT/yGXp8xIGrQ9LPStJbgZ1AABi/xGI2JHp+fTnHcgCr8Rl?=
 =?us-ascii?Q?LkhnXl1XpDO/vBW8gayE2DudqrOqry1byhZ/SgmnvsT8yB9iUWVYAJdESC8L?=
 =?us-ascii?Q?ppltV37avkAWMl73hLtrYaOBdw0rlakjZueNuhpfMWOTuV0equN40oHlop07?=
 =?us-ascii?Q?mj46HyUT03G7ouiTLFi7JSgw6TIDPwduC07k0g+X1ws//hjSgQ9sxSHe5+YN?=
 =?us-ascii?Q?WVndupqFCnmQHT9zuZbevZLtDs5arGiA5A2k/glQXmKgBLfbvvnf77T2VCgk?=
 =?us-ascii?Q?0eo5wZxmqk7+jnMbOZX98EgM6DKQqQ5Wc2phDSPEUcGTQJvFYArmdE9rzfmA?=
 =?us-ascii?Q?0WNUEDkFDcwxztNlAz2aW4pWDNHxY3mbCR3eKt87h4D5666HXsOk1cH3nCxc?=
 =?us-ascii?Q?4raDmMjsEIwGjtx46prxSucm9DQbbOyUc140Xeyz4/8bv3HPtw1P+0e63Nx0?=
 =?us-ascii?Q?ZotArDLNEi4rKVO0VPXLX60yciYui4WSEOwWfjsVNkems+1Q/tGlooJgtMcy?=
 =?us-ascii?Q?4ArYEqLXEW/esPrXSBVthJUk4614dK3IGdwJfITezTOgaJITHHDnybCZdp0m?=
 =?us-ascii?Q?29CrkOasVy/yBbgBH3LxOdPCt71bYlyqzXP2EhvaVxfvYGQQbR2a7XAjJ/ju?=
 =?us-ascii?Q?iFPe5vkEzxUoDLVjqvU6lCWUJVfy9s/QT0L4Ch3+CJX1pQo+NcwPMNs+5hxK?=
 =?us-ascii?Q?1v0mGti7MysV/r1uLsr4Z2xRC/NwD0UWNPi+XduOIfwN0UdWldHG2AK8VcRP?=
 =?us-ascii?Q?J3uBxS90RPpz4N3yeH/ssQP0oBiaYwgkU84r82eTBJNgYm8auisNjzenJYA8?=
 =?us-ascii?Q?2ZdAIo7WL25n69+Fd0uBVum9PMAWFkrahdIeyQiPHDr0iTXlJUUCUvs6fFuh?=
 =?us-ascii?Q?Tr4IGJKdeA9wvlbN2JKSmEc2RABQRAWz7hS7muObvMjA+xKpFuUKZmNdxroU?=
 =?us-ascii?Q?6A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 752dd10b-7b9e-4410-6f23-08de1528b789
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2025 07:16:15.4943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VCv8Ez0IxCCFjzGZCUh0Iagu+gZYYTLn04MSRKPzjTQEOtAMvfS2COjYPQAxRn+dcDwobW8bGsCTAV7Nt8W2+vPnZmnkh6oEFBG0TKUnsPc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761549382; x=1793085382;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dxqxNu6ZPs9wfNemlsHSn5BaTW7JZa7J+mVFpGQY1a8=;
 b=KzhY7ayQT82HfEaBIwfCxR8LJADXJBTtu/DZ6iZ201m2tFoUuayFu3we
 nDzeq0j4aVH9cFM0dtCU3XP0kMTv1NeO7EhcPQI8JDGmqaAepB+vBLtu/
 tPkjwvv126figiRbR7mH9CQfFzoNTIv8J0pV2JAb5FtM+ZMMU0tyO6Q7S
 2q49u9yN59fIu7mFAV51Bk3D/D3v/wEwejsNJZjgwb6HUYcve5apTAUJ3
 5RRLOs+NEo4pJplE+tM9x8W7rNzcpDo7dqJhgtifLozjnj676r0rWmVLu
 6KuHDAptn0LHCtDb7N6o9MHHZucAGaSNCrQgiNyou4GJpllHFwsola9mh
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KzhY7ayQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/3] igc: expose RSS key
 via ethtool get_rxfh
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Saturday, October 25, 2025 5:02 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/3] igc: expose RSS key
> via ethtool get_rxfh
>=20
> Implement igc_ethtool_get_rxfh_key_size() and extend
> igc_ethtool_get_rxfh() to return the RSS key to userspace.
>=20
> This can be tested using `ethtool -x <dev>`.
>=20
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index f89c2cbaace0..0482e590bc5a 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1490,6 +1490,11 @@ void igc_write_rss_indir_tbl(struct igc_adapter
> *adapter)
>  	}
>  }
>=20
> +static u32 igc_ethtool_get_rxfh_key_size(struct net_device *netdev) {
> +	return IGC_RSS_KEY_SIZE;
> +}
> +
>  static u32 igc_ethtool_get_rxfh_indir_size(struct net_device *netdev)
> {
>  	return IGC_RETA_SIZE;
> @@ -1502,10 +1507,13 @@ static int igc_ethtool_get_rxfh(struct
> net_device *netdev,
>  	int i;
>=20
>  	rxfh->hfunc =3D ETH_RSS_HASH_TOP;
> -	if (!rxfh->indir)
> -		return 0;
> -	for (i =3D 0; i < IGC_RETA_SIZE; i++)
> -		rxfh->indir[i] =3D adapter->rss_indir_tbl[i];
> +
> +	if (rxfh->indir)
> +		for (i =3D 0; i < IGC_RETA_SIZE; i++)
> +			rxfh->indir[i] =3D adapter->rss_indir_tbl[i];
> +
> +	if (rxfh->key)
> +		memcpy(rxfh->key, adapter->rss_key, sizeof(adapter-
> >rss_key));
>=20
>  	return 0;
>  }
> @@ -2182,6 +2190,7 @@ static const struct ethtool_ops igc_ethtool_ops
> =3D {
>  	.set_coalesce		=3D igc_ethtool_set_coalesce,
>  	.get_rxnfc		=3D igc_ethtool_get_rxnfc,
>  	.set_rxnfc		=3D igc_ethtool_set_rxnfc,
> +	.get_rxfh_key_size	=3D igc_ethtool_get_rxfh_key_size,
>  	.get_rxfh_indir_size	=3D igc_ethtool_get_rxfh_indir_size,
>  	.get_rxfh		=3D igc_ethtool_get_rxfh,
>  	.set_rxfh		=3D igc_ethtool_set_rxfh,
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
