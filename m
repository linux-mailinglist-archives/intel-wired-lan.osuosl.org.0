Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65335C24051
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Oct 2025 10:08:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BACBF616EA;
	Fri, 31 Oct 2025 09:08:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jeq6wUDJJPQd; Fri, 31 Oct 2025 09:08:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0140A616E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761901697;
	bh=7toCTXC9iBlMpw2Uw7KiFZ/GMmk7E5chNMod8mi8T54=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M4JVg3UBFoif0E6IQlcm9qCj/WBdtWUXIFCKXRtNTZ2AdfS/PYXjREDzu35TmKMh8
	 PsvD29NXkVYyelv1COJBnKt9x1kmQE8WsyOCDpeaP8k2lrIBL3MSu8m0TPNXPLUc46
	 1qybiV8OyCzu/3WPvH8ie03KCTYyHgqICAZLRwLUR6piARE4oOFX1mbSlS0KYCEf6x
	 ugRI2Jw2KMduhM8K05+BBbODEOzxDd5c26KxXAKmmecuvW304a15Ee2yUZbOC0XW12
	 6t24UJr9zPtjliXduuSHBLdS6uCITJnopjEw+1WYng77K0/Z2hEA+lszUDi2vpGJRv
	 CvwYEIvAePAVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0140A616E8;
	Fri, 31 Oct 2025 09:08:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D8DC2160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 09:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF68E84640
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 09:08:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 45MpXlVWTnDi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Oct 2025 09:08:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C68838460F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C68838460F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C68838460F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 09:08:14 +0000 (UTC)
X-CSE-ConnectionGUID: BarHyVCVRjqpnFS4w2+K5w==
X-CSE-MsgGUID: Tn0HjfxcTVGqbxmAZAk43g==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="64090281"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="64090281"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 02:08:14 -0700
X-CSE-ConnectionGUID: kxCa+/fqTFuKoGISjsqnPw==
X-CSE-MsgGUID: il/Xc2+hSLCQRGmkKY9AcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="186930875"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 02:08:14 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 02:08:13 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 31 Oct 2025 02:08:13 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.23)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 02:08:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gIJrb+sfM2o9i0RjQF2//H/Lr+wbBsGspMWADZKge9+j986IKYvQY8w8+wPYlWZPXdLPITJaqHukasluuxnhgATuOKKFAmcExbsRjkWoaF3HX/xE+SCQNLIyDje+POan2BsAOWpcEzFftHJNECfeplJfGlemWN/eRcjJ/8Yzv5GWXJcQ9tD5B58dOOHNRmVh2xTO4wbiX7EiWMdg8aOpiqyMfT2Rrr3YvrfIT86YZoPJD0lSM0Q+Q/quXwTIBMom0cquvzEOI6B22OCegmL8hbbs+S/XFIYbSKhchAsKkEj1yVgoZnswwMDQzbf7Uig3spLOAfJo3ZK9cleYZbUklw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7toCTXC9iBlMpw2Uw7KiFZ/GMmk7E5chNMod8mi8T54=;
 b=ip5BZdD96QRQO0houBLKEpBSdXjU2mZ0iVSePQW7euuaTh05b0PTWTVkC281LtIJDWBIk5NU6Z2F6sTM4iCjGWf6Sip6HyO6wUIbTr/Wswu9d7Pl4+/gZGLga/ktIRvuxY+RftJccCXYQHp55VYL1zPXQR3Eq/gb5rM4jVOkztFFN57aZcAcDLq3inX1DWdORettT8cImU6WIY7A5Z2lsuU1GTj/xdaHYmd40WQkGJzoGPLxc44C0l5eKueYC88fnLamR6ec7g/yON1OyPuXkDoFu+ZZf0R0izRtskqbwgwuQZ5Irx5wqX5Yc95nV+MRqpHi3+OZbiIMrbOvA92+xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ0PR11MB5770.namprd11.prod.outlook.com (2603:10b6:a03:421::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.14; Fri, 31 Oct
 2025 09:08:11 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9275.011; Fri, 31 Oct 2025
 09:08:11 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Guenter Roeck <linux@roeck-us.net>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] libie: depend on DEBUG_FS
 when building LIBIE_FWLOG
Thread-Index: AQHcPnMkli/F7niyiUutCUv4yyL9WLTcDj6Q
Date: Fri, 31 Oct 2025 09:08:10 +0000
Message-ID: <IA1PR11MB6241E6F1E6CBB17B3B7958228BF8A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251016072940.1661485-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20251016072940.1661485-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ0PR11MB5770:EE_
x-ms-office365-filtering-correlation-id: de3d0e05-c208-41dd-3578-08de185d03f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?nqcdQmDJJZsf5n1Qc93MMqKoR9K/bUSJcmazMDvqoaSR/vx+7fHWaWyQ4bPD?=
 =?us-ascii?Q?By7+QBJz+hV7hX8MwggJQODV9Pych6A5yep9qCM2HhW3rAFxIh7MyKHqx52K?=
 =?us-ascii?Q?RxF/V1bsZwwOFO7OUNaBCI5d27jGR3Er0Ju38PdfXRyoE/jnzsFIdxD/F53D?=
 =?us-ascii?Q?QtjFaXsqfOpwq/Ci9FPZpG0Eiwxp1t0hsEJu5Bu+gP63LSaW9n42yqOOBmi3?=
 =?us-ascii?Q?+5ihVpTgAlmGp8DiCMTuJlb6L9HT2bKyKERYDHfPXMam0GM48/hAniDJ2igk?=
 =?us-ascii?Q?sVdhqDjqZUSlR39QsIHuCjkJO64VpD+hz+2vVYdYw1Zg45kViHHuZKFTdIqy?=
 =?us-ascii?Q?DjEqGkFTYfxsenpjNkbdaNOML188fy0fFWHnGphhTT+adCiVK7WykDxyDyR7?=
 =?us-ascii?Q?KV/mRqeNO6Dc0nJK5gv8ROlgQhX1N1bTH+PEYZRTOo4SwIPPgU8fvI2hkRP6?=
 =?us-ascii?Q?CDUSPaKCxDNrmzW7gOEyluRpE1RWMgyW7fm36FpPPKqOWszSiEhmWFKBpg3G?=
 =?us-ascii?Q?ekzsQJwoqCO83J0e0jD3++6mlWGvavgsXsVpSBn3lSrMNey/eQlbtQL2KArb?=
 =?us-ascii?Q?ZSzp72Ar+jQbOxyG6TaY+bAv9fuHUzcwtDqMAVnLnt8F2eiDsEWUmQYpTDD2?=
 =?us-ascii?Q?7ou+PY3R4iUVfOwSI4Rx65szQY/o+MOhFPg9R7qqeomNnI4EV/UxhYlhe9Dg?=
 =?us-ascii?Q?Ip3cS/O5qRSzskjAAS9fZ1XLZmqyRdCP6W0+bNyyLmpmcsBa20NTpQM9SlZU?=
 =?us-ascii?Q?a9JzsbzvZZONZYxotBpwEMJpHMYFQlGf6xIYBBB2e2S3J43f1vK1FCfKXt70?=
 =?us-ascii?Q?AT+Xonje2ihJgrVxiW4QnplKJKI9NO6WfETF0KFPU1unfc64faUp4E1gfcup?=
 =?us-ascii?Q?C+OFEEfVc4JiKiVitdxuhdYls2XIyIWeWe98+stLbGqS7Q/r6Lm8afr7daoD?=
 =?us-ascii?Q?+f+82sH3km8kb5Ie8q+kD/+ndV5KtxDE2kijgJ0jN2YiufMSPVb2sJl+ykN7?=
 =?us-ascii?Q?tmA/MLYHkmqQNJxubRiNXoFGJYHe6x9ogjQ/XDFuS4yMSH8tTGfHfhc5S+rK?=
 =?us-ascii?Q?pc1gcugisJygSz+4b0/XVA/YfjPql4HhEie7byQ0a9dGPWc3ztBF0bGQSifi?=
 =?us-ascii?Q?K5nHbI4ovcTOFQqUvhicJSAnkcle5pNIfjZlmS0dlw4sYwpCbJV+a0XlE516?=
 =?us-ascii?Q?xGJF+IVUST/HRoHJ5HaVHejYljqukO58wZ+LizugmwM04f2XO7Uh1MXRYCAj?=
 =?us-ascii?Q?2QkV1HNHe6x1n3MrqSq6jYQ7nUh5Jf6OQIcCy2AW5n3zdTQ1/qJvsLNCU1XO?=
 =?us-ascii?Q?tsRxAvYLo/P7FcDxnHmCX1aVylbAyOqtlKhoVBbj8GJuOzafCX15nnblpZyO?=
 =?us-ascii?Q?UilaoPporxE0Q1CYw/bak6trOxsM/VgoW5HZDnvpjM1kPWfcc1J9MglqRWZP?=
 =?us-ascii?Q?Hu8TuTITLPHwX82FC8WNOycWNhl0x2ehWSGN2Vptimud4J+h7jnpTece3Dod?=
 =?us-ascii?Q?vqLBD2ZXhEoNE6jDtSDQuC5v7eKoEhhyO9ScKqDenzjelxBV6pB4K70LYw?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o4wEEk97ohNUF3r7JyMdcq+1UAoxo4PSES94+4vdf6hrLgNR2XAOhVakCtZ2?=
 =?us-ascii?Q?UiwS9h0yZl4BddhOvifqw0OZQRbiqNquTI5MgL9gNp+JQj1MBnJ5pgkkWkRS?=
 =?us-ascii?Q?7wlpPUcsqs2HTP6PghjV6T9Fzwv/jrZwrBBTQ9zOkzyq0RcLgORrlD0DWTJB?=
 =?us-ascii?Q?IBhTRE61tPN9Qu9714TXpWRxR/R/So2IDFuZFmOrWUvo0YczNTkOq2Xw6kaL?=
 =?us-ascii?Q?YNGfkr72BkFTh2SxB7jPOr7wMNkke40hetuiWu2tZwSPffThjrm9X5p/J5Vt?=
 =?us-ascii?Q?4ogCHn3GN03iJsd5GPoKeLq3wo8r+0KLhTyxcxlHQcS98hZdkTkJZ22+ZTX/?=
 =?us-ascii?Q?rd2As3WtW1IHHkOkiR+9Jbb7vTWJZxH8MGOYbvQmhNHMiCFo5+YWMz2og+Q1?=
 =?us-ascii?Q?i2btOZpFbUI4MNdXE/BpFuuhsZNwkcIpJlriJyGCMABubnFSQ5DiWxG/W6yf?=
 =?us-ascii?Q?+V+4ks0RKHfUnoKtJLgvdWjwlcDKpCXhxy6EQKovNM3XvMJbP6bHjnn7CTXF?=
 =?us-ascii?Q?q3Qum1aO6ejkAlH9JEIsovcHTUj1gOhs6qIXo+yZ2atrKwTVLKFsEPwE/J8G?=
 =?us-ascii?Q?ms9uEse4jn468I8Z6E/PB2l2wja3nsvkyjpbLcNYyeZjhYY2r9xHE4dnqkNp?=
 =?us-ascii?Q?rnwZ3iNBKohUFWcC3gDRZxFoKXQwVmKwtZtll+mZBYbPkLt8CCiAv5Fn6WDE?=
 =?us-ascii?Q?H1x2LM42aTIlVf3ylBUCngC2QjBfvtrEOJnTkN13PA3obrvcLGraFiYVEGdD?=
 =?us-ascii?Q?NYkwTys8FhMhBenfeAqvI46sLi51ORqXPjg1yvX2R/gslyHNHl1dbAS3le/n?=
 =?us-ascii?Q?2KT5xNk+66ieM0hY21KsRlLQVep35vTFiORyF6i2z3U4l2QUaLws7VvsmsiF?=
 =?us-ascii?Q?5Qu3oSAR8IuW20Hm3wEsMxIhLRCbcDgzHb6prLVckrABejpG6Zv5f3v3d4yw?=
 =?us-ascii?Q?s1oEKwn3UK8uOVJ92yG4Tb7uur0xWqltg06yyd6yM5JnghGvcY5yYT+sGSf9?=
 =?us-ascii?Q?USjZ8Wq75xgqvUWnPjHu2WnaJNDBRKob3QgTLQwhIdv2o+kfKmKP1OQlxD01?=
 =?us-ascii?Q?TsM7Y00iYT4TT59gSV/av6Ymms51EVn92q9/YyKCeALZIosm8luWLo9WJqVx?=
 =?us-ascii?Q?paeszyzXhoB2UlpHFqMTmE4fpIJivuvQe/z/Jnnc3V9/2EVlCorZhzaVnmdu?=
 =?us-ascii?Q?fleZyHluomPB1FDkPBPRwNCGawiq/JVIERAG76kMEVBlEV1sUNlezl2JwvMd?=
 =?us-ascii?Q?1QimRV9WJ6a67uyWnKw54J9B2I5oyOt8Y0CIoBuhM70zvjg3k3I3s6vRIISD?=
 =?us-ascii?Q?aZp62Mg5Loo2b6HJs2zlp2gPhgnPzDp9wZ1z4FnPksxIOwa05qCCsBXb9wis?=
 =?us-ascii?Q?LkF8qHkj4R4WOb8zW5gGreRyDNygwrCwxS3s/LUj+/O2OkxHf/aRMph+Ys4l?=
 =?us-ascii?Q?kMjX3jevbBXKQ2VRNNqAgb3lJdjr7tXbJAcitC3/c1rC95ZaQ4deBp+cCEgx?=
 =?us-ascii?Q?MBltHw7Yn+1B7MDFis/FpNmYLoCWe5cU+yBc0lzK++I/JYdGKn2qyLoVQiHf?=
 =?us-ascii?Q?zKtpR5S+zVfaY0+9Ou/a8zKmIhtgintzeGi8bxP5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de3d0e05-c208-41dd-3578-08de185d03f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2025 09:08:11.0646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5b0TM+7/Veful3IrgcZeec9UYZrDrYoZqY4PQpgSn/lD9rVsg0ep+ljq3UA/OmL8YvV0i6FZ+NID8W0XpkZ1TA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5770
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761901694; x=1793437694;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HQbrLc02EDBOD2VC4EKuE8sH1xo/eTkXrax/KqCSeiQ=;
 b=HUz5Vu8EGrBBYwLeIi951OGrUFumDHp+glUPdVZ8Ra1Us1xbIuVCQXwM
 Cm8uCJPPWfYAVsFfCa99PunBTTbgkxipl7qH08IIxi98FP0VvRHG6Mo+u
 1A62wbSDWwh1fBO6bxR+grTWuoEtDrgnfjh4IK+KySML3JeC13NRBauhi
 Pio8/OOe2m4sXPoWu5W3gsOCJmxpYPgQTuO3qJU7OER8PrKK6NvesTtbl
 p74GqwLAJOqLcjQ5kGSaCZj8wbF3QDVIRI6vm4qTcjSuCLiw7uNOV4D+t
 sQ2bebLCWRk3QkYj1TaMCG8pjr30ZEqqKexL7eAkgA4Oo9/PsKkEVZXdb
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HUz5Vu8E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] libie: depend on DEBUG_FS
 when building LIBIE_FWLOG
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
ichal Swiatkowski
> Sent: 16 October 2025 13:00
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; M=
ichal Swiatkowski <michal.swiatkowski@linux.intel.com>; Guenter Roeck <linu=
x@roeck-us.net>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] libie: depend on DEBUG_FS w=
hen building LIBIE_FWLOG
>
> LIBIE_FWLOG is unusable without DEBUG_FS. Mark it in Kconfig.
>
> Fix build error on ixgbe when DEBUG_FS is not set. To not add another lay=
er of #if IS_ENABLED(LIBIE_FWLOG) in ixgbe fwlog code define debugfs dentry=
 even when DEBUG_FS isn't enabled. In this case the dummy functions of LIBI=
E_FWLOG will be used, so not initialized dentry isn't a problem.
>
> Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
> Reported-by: Guenter Roeck <linux@roeck-us.net>
> Closes: https://lore.kernel.org/lkml/f594c621-f9e1-49f2-af31-23fbcb176058=
@roeck-us.net/
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> v1 --> v2 [1]:
> * add DEBUG_FS dependency in LIBIE_FWLOG
>
> [1] https://lore.kernel.org/netdev/20251014141110.751104-1-michal.swiatko=
wski@linux.intel.com/
> ---
> drivers/net/ethernet/intel/Kconfig       |  4 ++--
> drivers/net/ethernet/intel/ixgbe/ixgbe.h |  2 --
> include/linux/net/intel/libie/fwlog.h    | 12 ++++++++++++
> 3 files changed, 14 insertions(+), 4 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
