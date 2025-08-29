Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A44F0B3B31B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 08:14:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 521FF61491;
	Fri, 29 Aug 2025 06:14:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RtN6HCpeNVxr; Fri, 29 Aug 2025 06:14:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A91A661499
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756448093;
	bh=ab7o7uyBttyUsy58e3akUtxzRWCnwm09QLC3RrWW8Qs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tx4zC+vlmG+Rb7u8qc1c86c+MxGWIZCfHWD3Lp3Cmdte0eg69FwUgZfu5BFZvB90C
	 PjdyaTMy7Gnd2fCRLNFfV5QBF/IE9qwWFwiJG0jXSxotWUx2v0KFZ5DI0P3GhjOVRr
	 j8B1KvE9THIJ3jDnOjUEbfiz5iNjfv0A17b6riAqsnqkJspw5q/lh6Gj2IAC77RKrJ
	 Zy/TVYXvWZ/z6tuX4tjPa3aF4W7pN+oS8GYCwT8qmh8Sok4ujuOGCdZWONiWVUhsmT
	 nClyMKkjvyUDQn8VGje5A34W2K+euIjYpdm3x4XBoy66xPKDdixJqQEJjOzD6dlocX
	 LoUwlGH6cUUIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A91A661499;
	Fri, 29 Aug 2025 06:14:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A49ED2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 06:14:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50EFE41434
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 06:14:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 89U0Ur0bnjgO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 06:14:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 98E0041408
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98E0041408
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 98E0041408
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 06:14:51 +0000 (UTC)
X-CSE-ConnectionGUID: GtzkdfufT5KcTk3YIk/E9w==
X-CSE-MsgGUID: u6IOBbNEQAiYEqmQyl084A==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="69439810"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="69439810"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 23:14:46 -0700
X-CSE-ConnectionGUID: vtWEPhkKQ+KKTFNg13fLBg==
X-CSE-MsgGUID: TXs0UuX1SZWSLONGpGDa2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="193968168"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 23:14:46 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 23:14:45 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 23:14:45 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.58)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 23:14:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TRE1vbGC4Eb2942djdHkVwIvVJcAlVhqms/H/kZbWW/3rBAxLZJgM8iHOAGIfdzZaRAwtGvvCY+QWISIjhcjvEK4qsqCLkH8QhafwktgXs6BaYafY/7WZBn5MM4C7ehG88JaHhpxFe0EqVegTo8lvz/41eZmcdwe2NWQFCTZu838B/eGue24oNFymFuUHs34t27Q+xI9eAr8v5wPj15WhyHdtho2w53eBG+f3jEHqmLj7yhdc3WxYwiLRaru1QZ63OUoJZvCj1yoIWorFEzX0Fok5VBJp/PrU4dadVjajUVFkbOe0d2T5FbZf8U47pajXmEAYouEYQCZByGUxsoPcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ab7o7uyBttyUsy58e3akUtxzRWCnwm09QLC3RrWW8Qs=;
 b=O4HbMJon6Mlqx2ttO1jxJ7nVeRUnFDonKgKInzQmwA9THHRPy9dp2lKgzkuF4ESujP8dMdeblXPSxgHf/QzyxOdN4rEpwP6gPBUuONJMnzygyxadF8bFPUf5D98ba5/RFy6X0QFEGe1kmqoDD0pKZZkiA6KfvLuHE0b/7idGGWdRy2xEyqqMv9JwMGOPbsoXQ4p5XncHZOzWZrMkk5T/gZicWge8DuKUpi02SOCIu4dhWboB7GM2sjw9JzqN8crL8V7Sh7P6Y9Q3xGUhIOrqg8WJG/pRiaf8m9BzmQlUtlqBF8XNSxyRJAA9VOcwmsnntDBuqxck+h+pvM2ove3lcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CO1PR11MB4883.namprd11.prod.outlook.com (2603:10b6:303:9b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.15; Fri, 29 Aug
 2025 06:14:39 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9052.019; Fri, 29 Aug 2025
 06:14:39 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kubiak, Michal" <michal.kubiak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kubiak, Michal" <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: drop page
 splitting and recycling
Thread-Index: AQHcCH0xYXWqzzZeGkCA5pGLzSu3YbR5Ruwg
Date: Fri, 29 Aug 2025 06:14:39 +0000
Message-ID: <IA1PR11MB6241BDBF2A80464F9F5142528B3AA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250808155659.1053560-1-michal.kubiak@intel.com>
 <20250808155659.1053560-3-michal.kubiak@intel.com>
In-Reply-To: <20250808155659.1053560-3-michal.kubiak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CO1PR11MB4883:EE_
x-ms-office365-filtering-correlation-id: 86d09292-b275-4ff6-816c-08dde6c355ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?sZQg9jUSteRN0+HlZ2z00nCtwaj41wlpvgj7C0hwMLqiQYZXDazT0fRWruGB?=
 =?us-ascii?Q?a47IJ8H1tQ18C9trd9HWfaKBMHUQi0YZOFRJNPJt7AdRRp2RQ/KVcQbeVx+x?=
 =?us-ascii?Q?L54gK0i97fUM262N5IJ6ekW5D5MhNJwMlxntOZ9qzseEFrYci0L80iMtC971?=
 =?us-ascii?Q?p7EVhRe4EYhs+o3lOUm8zDfN/qOuld4EzNQDb61AiBgJWkplTTBtL5NC/7yp?=
 =?us-ascii?Q?/1KBoQ7NDx28RG7WiC0X2a8O4ul0tjWSsA/5Q72+hWeFM/ir6v+4V8vm1tB8?=
 =?us-ascii?Q?ENFs5tCen5L30nnYr6NjIvP6Ndf4Qtdf4r+g8Ed6wIInPfhJp1TjaFNMFsrl?=
 =?us-ascii?Q?/H9fgOVkjJiZCa5NZdbJIlTN9TuLEvEXvgmn4QJEpa5TxFB7Fyef2opw7iIX?=
 =?us-ascii?Q?R/3W5gu4RdfWGtJvzkbK6R0WbKIloYGvw+36XgujtyPSKdGeoaoDVRC03sQK?=
 =?us-ascii?Q?kCYD0wqrOb3mfcidiEvi7Md8NuN2tLbM/JaochWXbVXWA5x8nXyqtbavrdSD?=
 =?us-ascii?Q?ZVaNLuMtN2FgONJOqy2qQ9WIdDNYH/j/b9Y8I2SCsm7GSd5i8IxMbXsVv2AF?=
 =?us-ascii?Q?0nKh3SHH8+0hfjyqQqsmUgvFrsjUTSrSv6atRi5BqyhKzOweT4MHPHayFgRz?=
 =?us-ascii?Q?WP1MXLVPiBdOyIHoMOUeFlNG1nYFL/XoK8DDLJz762nT2kOJpa3uy/T0dHUZ?=
 =?us-ascii?Q?UkZfzzwGK/hwmTMH5gvuFxF1109nAMfkPiS1rxksM+oU2cOGiQt6twh9DdDt?=
 =?us-ascii?Q?uzgPlk4hvNEZ6a+efhm0wZfYfCCz/hUVQVguwWuvy4JNT6Rab2Losk6BpHQj?=
 =?us-ascii?Q?HNPqAtKV1A17VU5ZBz9ACETYAk/fE+QhF1LA58pgW7ZasHISOEi7WUOFSIQU?=
 =?us-ascii?Q?YQGguxr+2SwXhdC6n7f7i7a0qvX0RY3iIxcvn6yAusJqloUOn02uNs5KEp7n?=
 =?us-ascii?Q?AgEY2XC/ZQ+FS1ftWSTg/7XwtbxFWEYRsSKI+zUSUGq+w6hh2Ivei7Qr4Umj?=
 =?us-ascii?Q?jiqolC36M+q8G+uHVNvA7AHvN3VELSMNz7ZQjXrmnXcbBIpRsqxDCAQW85qI?=
 =?us-ascii?Q?2zZq9xyJKlfCGMfWIWyE7YvQLSaGHtYpIQmAz+vi/dz4sdE1nGrGa8Q9yhX+?=
 =?us-ascii?Q?nNf3iZ+0PsJnyd1RwsnTH1DsWeEdvgGE0h18FDJeoENFduwiOJ0lK2v81e0o?=
 =?us-ascii?Q?FOfjIwMbA/X5s5iyvBN1i31mCHGRrRb/Yzopp2nb4Dh1wbvk6GkcXBbI2e03?=
 =?us-ascii?Q?P1rN62gWb/GXINQ0tSoGgFUUCEtjC/9hES9rRLAH3BRHQP1Z1TVM+s1Gt+3/?=
 =?us-ascii?Q?TnCP8sh3y/WzSXbeYUI8tEC64OBk4dwibrcK5puWEG2o9E0vmbzksg6VP0bV?=
 =?us-ascii?Q?xSLtFQrcVZBiPA8eRBRTw7VzpJByKJzmYa86kpn1FDCFsHKI73NhEOikJfpj?=
 =?us-ascii?Q?goqLw05HlwNMnVJRoaDOitwKCCwAgLe+5QbrmTuUTXujAEnxSdstEKyfEzbb?=
 =?us-ascii?Q?vyYc6usWii+J5J8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Pfey3luxNpIScnThGfMIPlddpYecOeb+5aaviw3c727uqrGWnSN+nATfnj0f?=
 =?us-ascii?Q?3NlpOba4IpVH2BezQLr0jzA55WtHMAjz6KgbP8xnztkZ2Q6CYhgtVkyZiBUd?=
 =?us-ascii?Q?wLWIOWq9TWNMUWoGfQytSM7qAte7qBIc97L0Bxz6v6Av569Gs9kop4ySwaeM?=
 =?us-ascii?Q?VV5rsDVEudoFTTMjFJUx8WgZauEAARQwUt00hlW8XBPtbsMy8KEILtI6pFoM?=
 =?us-ascii?Q?lrgwrZFQOYndH0egK4tR7hfDzi7fG1uLck4RSOcwuKSx+5DTbhiyc3hUQ/Yb?=
 =?us-ascii?Q?++JNIqqCWBenZ8dIj56wFch7u9yXdwdAhMNAJnYjfQUSdRlJVVfysL673dDl?=
 =?us-ascii?Q?LVD6Z5EtviuliuKsVTVbNSCzLFxEPZh1eSw5OAPdH2NbZTDXU5IcWpgxgnfq?=
 =?us-ascii?Q?fumwZNGNdzLxKhEv+LP752gCx2M20wTMn3PPiWdK95kL6FIFyzkUK7J2t6um?=
 =?us-ascii?Q?GjyJH4CuGcu5bESk1lwY42mexBPq4X4tN4XV3ChjhxREIKegmxa7OZ+jJFO7?=
 =?us-ascii?Q?gOAJffERsCU7eX0U3olpJw/YAtdt6SvzyLtoYDypzwd98KkopxDMYUchsynF?=
 =?us-ascii?Q?crAqv8vy4GNapwM79fPlFetXjXsNsCMlD/jAlNJKVlUmKMKnrsqfHKFnh6Wq?=
 =?us-ascii?Q?Wa2Xvo1fbZF9ijnq+Wgumm4gRmav23+1FVh9tCN6erOfXjBHAT8Uxtjolg6Y?=
 =?us-ascii?Q?vY6CpQOXt+As5BOhmFTCV6c0+uFewKOukdhdNxJGwd8+1xyrSoXMs6BRBHkb?=
 =?us-ascii?Q?PLnuvO7aOm5kfnWtZ6odCIQY/Tm89JdmrBDNvMX5z1IUaLVKYnZdK98ZFx14?=
 =?us-ascii?Q?dTnKeYR8Yw1m68HyhmHWuYRo9E8+jYwJJyKhJZt5aoSL37qXIvekx83f4kfv?=
 =?us-ascii?Q?IitKyd16BCb2Of1Ap7ComyC7+Rqnbi++mWKnxO5lKO8LyIPtjxPtegnoz7sD?=
 =?us-ascii?Q?unT9u/83/ukWDnz41gS8MtlyaRFESMwKtkL7Wo2TEDBSO3wvpVlqlqVp10AE?=
 =?us-ascii?Q?2p03S+Db/y49tAgb04lsgWBoWs9gd2pD+KDpwx8toP3ajxS89DlJG3dXYlbz?=
 =?us-ascii?Q?vd9XLK+10pb2L6RbZ8hCLT7P2mJUVKx+6ugUG/jBE0TZEYykw2ZWXQwI+wkJ?=
 =?us-ascii?Q?2KIP2fKSUJ6ivn8Y3pLBhEkK/lihZ39oeF4f7PlpZSzw671a+kMYUSXN047P?=
 =?us-ascii?Q?OTi5TdVMM3BI1NVXL9/CdlJeCrZTebOmi/Lw8k5rllRhptUeVabTWQBksmrR?=
 =?us-ascii?Q?zQlG+aYYaj4G56EyK/KBfUANkQ3EWsrB5aqfDfllhpq20oskL/zPwJpD8PdD?=
 =?us-ascii?Q?MhALytz/SBfYSmJf/Q7lItoyxSBs5e5G1Xu4Mdv8D/WXZCKXXk0BqkMwJkRB?=
 =?us-ascii?Q?M+sBDyF/HrCLoE87+rF/h5VhopVPB3iNQktm8aeU1T/Qhx8VQPAeLxzUPFbn?=
 =?us-ascii?Q?GXhrERJ715OeNkXiO6w1RnEm5QJ+F4HUs+db+oh9eLLPASHLT5y640vlScL5?=
 =?us-ascii?Q?GNhlaKKPHJCFHfiBGlBJWBnd6PLTw1HWdsWvKCOfO+vBEU70NkaY4TMESFgy?=
 =?us-ascii?Q?VNRyQFVLW/th09eryjcuLSRzLjAox5dsASajmBRi?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86d09292-b275-4ff6-816c-08dde6c355ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2025 06:14:39.1870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PIzpL1qZJLs86r+djQY8QZxv94nvsysRkOW/FRoPBwBoQbcYdpX6Ot0ej9XPPApEnHhUNLd4JhRGNgBoueq5bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4883
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756448091; x=1787984091;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tXDyHA9KRpYMZqHWKBJc2eBLMEoB72ZuTVPUMvDXDYQ=;
 b=Wfpw0OcByaZELrFBUOUbuFIny+I4envw8sEDCYPqbQUgSVl6muXZEep6
 jiNV/fFgbNZxr5ck8KyWR3w9714GCFiE3G594T/k2bjhNvaehVpHBwaN1
 RRB8XXC4EJ0BBaA2MpQnpfXBUjHc3IN9iNIcZ3P+kL0zkTqv/KBxot1nE
 lc3LDLobTzDjOl4/dql0IQEG3TPWvf4zmhLfZoxFFxNSVM+MNP1+KbeW8
 IvzXkgnPvjcmEBUW1KZ2SCY68GlmKTh5FjUyGbVT6Ct/GyuNCc+XpsiKI
 cl04iqY7PNeUD8WtAvSDErhriOJqsM6OW7VAJeUKvFK3mMNPb3kiglMlD
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wfpw0OcB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: drop page
 splitting and recycling
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Kubiak
> Sent: 08 August 2025 21:27
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Lobakin, Aleksand=
er <aleksander.lobakin@intel.com>; Keller, Jacob E <jacob.e.keller@intel.co=
m>; Zaremba, Larysa <larysa.zaremba@intel.com>; netdev@vger.kernel.org; Kit=
szel, Przemyslaw <przemyslaw.kitszel@intel.com>; pmenzel@molgen.mpg.de; Ngu=
yen, Anthony L <anthony.l.nguyen@intel.com>; Kubiak, Michal <michal.kubiak@=
intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: drop page splitti=
ng and recycling
>
> As part of the transition toward Page Pool integration, remove the legacy=
 page splitting and recycling logic from the ice driver. This mirrors the a=
pproach taken in commit 920d86f3c552 ("iavf: drop page splitting and recycl=
ing").
>
> The previous model attempted to reuse partially consumed pages by splitti=
ng them and tracking their usage across descriptors. While this was once a =
memory optimization, it introduced significant complexity and overhead in t=
he Rx path, including:
> - Manual refcount management and page reuse heuristics;
> - Per-descriptor buffer shuffling, which could involve moving dozens
>   of `ice_rx_buf` structures per NAPI cycle;
> - Increased branching and cache pressure in the hotpath.
>
> This change simplifies the Rx logic by always allocating fresh pages and =
letting the networking stack handle their lifecycle. Although this may temp=
orarily reduce performance (up to ~98% in some XDP cases), it greatly impro=
ves maintainability and paves the way for Page Pool, which will restore and=
 exceed previous performance levels.
>
> The `ice_rx_buf` array is retained for now to minimize diffstat and ease =
future replacement with a shared buffer abstraction.
>
> Co-developed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice.h          |   2 +
> drivers/net/ethernet/intel/ice/ice_base.c     |  26 ++--
> drivers/net/ethernet/intel/ice/ice_txrx.c     | 136 ++----------------
> drivers/net/ethernet/intel/ice/ice_txrx.h     |   8 --
> drivers/net/ethernet/intel/ice/ice_virtchnl.c |   5 +-
> 5 files changed, 25 insertions(+), 152 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
