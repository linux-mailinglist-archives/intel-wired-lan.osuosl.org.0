Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6662795B5D7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 15:02:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A096760E4A;
	Thu, 22 Aug 2024 13:02:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 38JXCXGidzoj; Thu, 22 Aug 2024 13:02:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95CC960E31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724331765;
	bh=Rr3S32Tumvpey9KPONtKUjpj/YoyOTk9zJYYHqJ30dA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q702MLj6w0u9oTYx1sxkWuKHUrMh8ToL3BZYU1R3AFm35XgdoHMr/+Zo0Zz/p9lXC
	 mQeG9TTAi0JZmz7KhjHzApQmQ32etBKB8qhDNM4SiF8sWwzlFRzFt4VCeT1ref+n/X
	 w2qeEdlO8LzzfQ4eLv+CVLnVGHnPdMjtW48kFFmUwU+bnitUM2b9JO1TmOVSfHmqGj
	 DgmfoW/KYjaA9MQRkd77osU0Kpt/uBAAVke7QpHxlq93GUcyaWTFfGNzzDkPFr3Anh
	 JwYMxLLH7m2R6TkIzqWt1W9dFPotnnOYNC/FQM1TqXs1rd8VhmeUwYVrHD2HaJCajx
	 /oLnEe9KP3yLQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95CC960E31;
	Thu, 22 Aug 2024 13:02:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 60A6F1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 13:02:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4CD6C60D65
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 13:02:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cgtrj0daWsEC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 13:02:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BAD1460D72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAD1460D72
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAD1460D72
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 13:02:33 +0000 (UTC)
X-CSE-ConnectionGUID: DFYveSuAROOfoKOyr+/ONg==
X-CSE-MsgGUID: mekLDoLPRyW+MQ8AJEC69w==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="25638904"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="25638904"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 06:02:32 -0700
X-CSE-ConnectionGUID: 0Tdjh5kDRFquo9kedP+9RA==
X-CSE-MsgGUID: SfPBHTcISTGlncKYA5q3MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="92235988"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 06:02:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 06:02:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 06:02:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 06:02:30 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 06:02:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RSo1eX0yuAajWc00JK4b6Hqx//ldxVlP7+Y3tuva7H0IFz5GgF8+veh7uOjmrZQp+zr/tjptDN1SaQBqNdM7cKjHuXB8qvRop3flftGvOOQMrRaSRkx+U1fOAF98CQpVTPNHMo1MXSUgPiGBSA1hFI8xubaImfypgsrSWn5W9zvQYqFcHwWzCoFBMTWiLDRgmJekyXLHnEbc2ME80zQd8U4e9KhFvrOxrCvxyupYYtlKQa7OepdKfZP7Hk9dClmP0tdPxEumUMuJ+cKYFemLNE1eUaYLZSa5U+gH8xh5eUE2YslEc8S3cLaiW5QO/Rp65l2znVUVGKF+FaeZEanNPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rr3S32Tumvpey9KPONtKUjpj/YoyOTk9zJYYHqJ30dA=;
 b=ctm6j4RK5WOrHlK3EWX/ebvzJnINgNg5niJx0EzzE/Hcy/FvkBBDOyyNBzpjyu59yGirLHmICVT6gsLBbrtfSksQdrEJ4UdKo9I7B2d4EQQ/w4tu/UQwBplfHXPOcHXpxL+c93pNG1c/08mFn41x3QtKpVBMeFNRQKaPQEvQvegQuxbTaVU/+pL2UhMYh1rve2wS55xHEaSnauT+1SHJSJxOFgfSoQ3MiqGGTsJWmvpUq8HF/Uczj6YuTxDcK/u+FooGL3JN4efGs9++Nz3+411Gn/h5C8XivqxbDr9t64zJhMhW4haPMrtWMj/MK19BqmFle4tJhjCK7zGe/vXUXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH7PR11MB8502.namprd11.prod.outlook.com (2603:10b6:510:30c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.19; Thu, 22 Aug
 2024 13:02:27 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7897.014; Thu, 22 Aug 2024
 13:02:27 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] i40e: Add Energy Efficient
 Ethernet ability for X710 Base-T/KR/KX cards
Thread-Index: AQHa8hogG4MIbmbHak+ipDhIJP5BarIzQiiw
Date: Thu, 22 Aug 2024 13:02:27 +0000
Message-ID: <CYYPR11MB8429C31FC975FADA9B8C1440BD8F2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240819092756.1113554-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20240819092756.1113554-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH7PR11MB8502:EE_
x-ms-office365-filtering-correlation-id: 4ce59b2a-79b6-4cdf-82e9-08dcc2aaac74
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?H3OecSKRseKFUxifyUMrGA2wZ2sMssHTejI6HH3u5SFPxAfk1zHmlEn3t0yP?=
 =?us-ascii?Q?uHw9PYlrjUyFcZ93FK2cIQRTSuXPRTSidANXNe9WgPG8VXLd3iGjlrbpwAo4?=
 =?us-ascii?Q?w+vv5duW9i1n3CKxbQG6ImY15FzpEMk6Mk+JVgsqPH3InKWYUBghi0O9AuKi?=
 =?us-ascii?Q?nuJw3cpY1XVU6AY2bwF4GCduYRGeMLIzHTk2NoT9CFWL4Xbx9952ROX1E6jv?=
 =?us-ascii?Q?WbnhrYTzpPBW5wr+dwyTTPWUPRRjWaV2yr0r6ORZU15IgrXG3jCpojuCfCD6?=
 =?us-ascii?Q?zutQLyKH6xqkldJucstjlNmDAF7kZ/+dB/OExA81VvFB8TGmpWQlvVS4TiJt?=
 =?us-ascii?Q?V4RTozUBrNIcvpGXFM6XD8TYCMr+HJxNQO9jp5TPOS90axI6CAW21GT4ueRv?=
 =?us-ascii?Q?660dKXRVfTDmSE8gjIB2Fc3H93xsC045XM6Mibeon4oE9wBp7en39xMCJoew?=
 =?us-ascii?Q?kstHIte5nWzKf2MwNFIfPdBBLHw7Pb/Dzhs4nEA+LrdzAFVhaMazFMSvDj39?=
 =?us-ascii?Q?pYS5F/oetsjuNMkehEAn8IzAAzupBcWdbbUeb4tKCV1+xRFRgUAEdsvJCBXg?=
 =?us-ascii?Q?Kb0o/8UNdgZ1Zsk4kiLq9CN0Lev9q1bZM+Y0Hk9by1YXOk99Qvd06or44bO4?=
 =?us-ascii?Q?LN4r14knxpqKhEpXMuFpRAlk2YugProPQIshjwl12bQvHlbN0pCs/15aN78i?=
 =?us-ascii?Q?YjBYeRyI6ZAVULXfcnzylnVpdc7TDQ2ZaoCuYOg6M5djPtk+TYk2eIRvqAA5?=
 =?us-ascii?Q?yEnKmeIjdUbNzTY7eBOvCnXmVGAe7NxfWUSAZ5RNB4raE7HwIbTOpUnxV9Vp?=
 =?us-ascii?Q?RVk4cXSIGJDlwxR+qRkzaGRRioyiFrd60ifAHUTgzblwm3IV7LRFHy9c9iuV?=
 =?us-ascii?Q?6vFx4ZYn8/9EHYTQZdIm70cJYHoNaWQW0fc3Jnzg7GQDtSnIgnrD9JZypSaS?=
 =?us-ascii?Q?v9z4g+4CxAy406JKECTxAWy+tKOO88mreFiebXQsvjrfLpyrFpO06cUX9nMZ?=
 =?us-ascii?Q?9eY2H7c7NNTyk+ymAUXwylMtXXI5jzZ0A4fBjf0Hj9gN1WqxRwSvArAM+Eyt?=
 =?us-ascii?Q?V7+sEWmea2UBz2jjCD/FMK5hNbNtNp5np+hkeS/X+srSnFy06je8fLxzKcGa?=
 =?us-ascii?Q?fPyfID/h/gtL3CncFMEGVz0K2GnCLceJ9ZaCEOZq5mQqZHMfHQj7IVYjek6z?=
 =?us-ascii?Q?UnAX7zMflTT3lsAFydp0iPeZGmqyTVDEOZtwNUnw2cTKlOvFt4a9TnLYqeQ1?=
 =?us-ascii?Q?SRUx4D2H48dkVdtQ8EvlqLymErFJ3Qdg80Tz6TDKWe+m4rWKPxobm7+fnmcV?=
 =?us-ascii?Q?xlfm/P/3o7mgMToXfhQZUmeavgRYtdCYalXe0sl15QPv3eMUPHtG3gsigi3s?=
 =?us-ascii?Q?H3+8z7glk/0tfR6s/eC5jS0jmcGL8m8VgfFGZxUItCBMy6cGLA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WUM6Zy2asxIzsMbangYsF1fSTKL0rXj6cMEKjeJPGvMspHHVmzR9Sn1QYLah?=
 =?us-ascii?Q?0EvbSt1eYJG3Xs8X0PggjaoYMcXh3XVjQBh6Z24SNU2hosARvg4NADDx3tFF?=
 =?us-ascii?Q?CcrjrJqCGMpmaNx7gKQVa8hP9T3pe3xCc/gAhWjC9i9O80MdA4r0lhPRzlak?=
 =?us-ascii?Q?ht77rbPf6gX4S/OxavcvPaMLIeibmaQmOHWrLXWiLX8+zxpwBoPXWphTjQ9+?=
 =?us-ascii?Q?rvfqJkE55vvif6V4HB9q3/q+jhfSgABaz/Ttqm7Xw7TYXF3z8LG2r2WaGCIl?=
 =?us-ascii?Q?bhZNqFQSyr/x/FYzMEADLQeL8ragj3SLNyccJPrjQQX4rcXMxOMLIWThcr5S?=
 =?us-ascii?Q?IN8cD+Zgw3I8cfC1wCy+hu2wvRLlBoLADSrEQznyBAUZUCupu4qJpG8FgcLx?=
 =?us-ascii?Q?cTbAdMLqsoDd3Vn6M/w54VPaf7mrIfj9UXoMuWNlLdqVfOPxc6SsSDj0RkS5?=
 =?us-ascii?Q?RW9Qf+CbYdwhNEe7cPd7loqbAkayF3nk6cmysdkgEFckYQIL4dOtQ0oMtnyq?=
 =?us-ascii?Q?ih+Ol0QDATyRwNEjw5PaBJcb1JBd3r3rxoaT1AD/EFkYnBSvw4deIrhkJnJE?=
 =?us-ascii?Q?JTZ+p8MXrS1fm2DEESicmK9PP/QmiBe/WIDkihj9F2Z6MCnsVgQXv/vx2Crh?=
 =?us-ascii?Q?GQHQjslszdzB/PZbP7w2evljHx5f85h3tYq557Z1mOuzWE27TwBXyWx2DyYn?=
 =?us-ascii?Q?s0Er1wfPUr1VPCQflcCRdK/RdU+z548KVdcyBUTgaeUbffB7xFi37b78hqvg?=
 =?us-ascii?Q?zHgM924IuWZCM0fGuJqGSpBqqLFuFHpVS1bF+wKPzOap6/rpIsu2VhEVRMUd?=
 =?us-ascii?Q?RAZBQa0WQmUKYy7So4kM5lxtNObixC7LTUdSgXPCxrMlv9VT9wO20gfvqltk?=
 =?us-ascii?Q?YTquYLnpfZEEO8onxpWuVVoVNsmCJccgkei+hnU2MhmC3d5TzDonIBUnoHr6?=
 =?us-ascii?Q?nH5APFIGPQOzdORwxLOipjCU2vdJzzlPyoNglQ3rH16ko6mHE55TenflBVzd?=
 =?us-ascii?Q?R7qDF3SGjuZNmKi05Jhc65SCZQ9gg9eegdIiFG0oPD/xKoWKU/hwIUmbBsoN?=
 =?us-ascii?Q?WCZGIj/ngCn/TkAo3IfnwhNSEmMuCgZy0JKK84lJ1vdruKTi2FsXH+L68dEZ?=
 =?us-ascii?Q?KIrZVnziNwfoLFrvyA08d7rhrOLiKY2SECa8BBg0xtWtOJ4IVqgJOv1BDqOz?=
 =?us-ascii?Q?8vQK90fNEqttPHnf3dM5jpSe95LT9qVC2GKOEA0iVzhbmPf+3lX1xi5mBWjG?=
 =?us-ascii?Q?a2t6MRFGeEwEOa14Zmt38R2D/43XKvxbu25gfXpvIB2SLrhy66A/QZ7FhjEn?=
 =?us-ascii?Q?9Z+ApoGNq3oir5f0O2K5+tK08uiZyiDShhGonbCNim0M8ENQ77/5/+SY44Pf?=
 =?us-ascii?Q?twCQl/QeuRRpRjA8XaiKeHAR7o6TqfPlSYCTCndTz9oGHDzWMbxmeZkcGCTa?=
 =?us-ascii?Q?OPGiAGKBDKjv9ckTfr1sm2ajR8wM0AnEO5hoDbBxgh4w4NRI6Rpk2whK9UrQ?=
 =?us-ascii?Q?4Rt5Al9CuckYTQKzfrHl/W96jSMFrGJwVqYeZdBURXuC7SCYcIIVEq5kS8am?=
 =?us-ascii?Q?YeNM2bPWHHHgn2V0/FbFLkx5Bp05In3zgQ1gbzONyCQxzyPODmONCLTKNFfs?=
 =?us-ascii?Q?0A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ce59b2a-79b6-4cdf-82e9-08dcc2aaac74
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2024 13:02:27.3172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pYT4bP4cfYYi9jjq7HAenxVxJmALrG5VVwNg3HPqUdvtwWTn5FGXYgA7VKL3+ne1P5ucB47tUbTyg3SEgMFh7WzFQ3O60hze6bXwUTXlHkI00PGnKN6A+OYI0xjoHScF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8502
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724331753; x=1755867753;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=al5IWE/EaCIe09p6oHPNUrBv4VgYWAPiT1BEYd2sJFU=;
 b=n9UcZoA6eV1FFnUZW9GlGXxlFUPafvZBm878KvWqezZNfiU7d5LUdt9j
 dPzja7UTgr+A2wsqezO8MNNUoQD2XTrtOFKVLBocNqwDI+19owLfW83s8
 UnqKolW+mULNJaliYw+PjMFeBnBXBlIIPUN9r9vy7K3bsavoq8e/rEEl/
 KtOo5N7iPW/+uWhalYH4YZuUi7GrNpJA3VoiG/8wQCErrhBCgIxhEohdr
 B0go6Hao6TMgN6Hu8fxRkhYriYHh86VxEH9rUd8E3jAdbZ0j7csWqItYw
 sGbQapuLGRhTNjr+1eBRX0SxtOS6a122PxNAXZqb9VHIaK+Ja6ICK9oyo
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n9UcZoA6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: Add Energy
 Efficient Ethernet ability for X710 Base-T/KR/KX cards
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Monday, August 19, 2024 2:58 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3] i40e: Add Energy Efficient=
 Ethernet ability for X710 Base-T/KR/KX cards
>
> Add "EEE: Enabled/Disabled" to dmesg for supported X710 Base-T/KR/KX card=
s.
> According to the IEEE standard report the EEE ability and and the EEE Lin=
k Partner ability. Use the kernel's 'ethtool_keee' structure and report EEE=
 link modes.
>
> Example:
> dmesg | grep 'NIC Link is'
> ethtool --show-eee <device>
>
> Before:
>	NIC Link is Up, 10 Gbps Full Duplex, Flow Control: None
>
>        Supported EEE link modes:  Not reported
>        Advertised EEE link modes:  Not reported
>        Link partner advertised EEE link modes:  Not reported
>
> After:
> 	NIC Link is Up, 10 Gbps Full Duplex, Flow Control: None, EEE: Enabled
>
>        Supported EEE link modes:  100baseT/Full
>                                   1000baseT/Full
>                                   10000baseT/Full
>         Advertised EEE link modes:  100baseT/Full
>                                    1000baseT/Full
>                                    10000baseT/Full
>        Link partner advertised EEE link modes:  100baseT/Full
>                                                 1000baseT/Full
>                                                 10000baseT/Full
>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2->v3 removed double space from code
> v1->v2 removed some not mandatory changes, some style improvements
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 36 ++++++++++++++++---
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 23 ++++++++++--
>  3 files changed, 53 insertions(+), 7 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

