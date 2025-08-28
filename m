Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46754B3999B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 12:23:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1A7B40DBB;
	Thu, 28 Aug 2025 10:23:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u4DwE8G9r_iy; Thu, 28 Aug 2025 10:23:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47D6540987
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756376626;
	bh=AtB3zAomrn9L6K9r5mMN5MrLRlH9hxLMvSzOmk/OG/Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zl9N4rs0bRRZxsV1GbYIAvnqJmYy2kRMbe7w2dNRSzCHD+1K6Iuh/MgQZpiUYiz6n
	 WPHcxsNAWCqXjKD9BxQ0FuhiEa2ny8FWMVXOU44O1eKjaK6b9A1Erh1XdBdYJmBOMn
	 giib+d7zvsig9jw35zTd0k0XslhphqBtxxvv5owWekSrofPzcIUJcfP45rRf9tZH0/
	 u/QRhS4mWHcXj4DiDJYpTrDXEVABgdpQF04JVH/TPmbVt5JiN1AcErLN36sWKnZJg5
	 eI0v9WyQm+jMqJJfDoQB6FAJw6MJkXeMFbt/xshCHeQiTNNgrjjqih0Dep7FUpKeEr
	 gg53eQwTGwKIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47D6540987;
	Thu, 28 Aug 2025 10:23:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 489D417D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:23:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 39D2840987
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:23:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qbQi6RWgeNKZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 10:23:43 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 28 Aug 2025 10:23:43 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5FF0140C39
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FF0140C39
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5FF0140C39
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 10:23:43 +0000 (UTC)
X-CSE-ConnectionGUID: arapc7PVSj2eyX4dIxISwA==
X-CSE-MsgGUID: 2kYnWgCzRnyBNktVxQDKvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58708601"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58708601"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 03:16:35 -0700
X-CSE-ConnectionGUID: yttd7WgAR2+LxSbPKowTEA==
X-CSE-MsgGUID: I69p+pTuQ/WPnMA9FjQq7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="170460268"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 03:16:35 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 03:16:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 03:16:34 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.66) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 03:16:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XMQqYMdZn6fOgya/4vhnljGTfO0DMUgIB7ha57Uba2RUXDsq3OMvd3cmbjj65Ms5UixYQFRD19z4xCMq6fsjPzvRxQQwk2IfQ2dI7LOAhmJt/AFgEC+Fz9ZcUyGsnipfa7Xqsi/r8LtT0PuBhSfdfFpBUj969Wrs8WKLVnbYsgTBrahxhXgl/TW3SyNTzLCUMGdNaLc7CXccdpwpfaL2sPuaIC1mvN1zQFqyOObYcAzWlZ/Cw0sf0WKjiq3P7REQlPhTFmlK8LUeysTdDpRtjnywlTWYIeWOk/HadLsV2gsyo9F88cPpeWnyj3mtxkEwsToHoSN33BJNOC+tEiGsvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AtB3zAomrn9L6K9r5mMN5MrLRlH9hxLMvSzOmk/OG/Y=;
 b=hd31wZX3ykZIrctzq/LQsb+N0I91hhkoEyHrcC94K0rcGfkIX9BI7BA60WLqDsfU66+ftrZYAJ5b3nkObyV7HXLPCm5w+SH+p7/XAkO3chItbL7yXoLQcqp98jnNG4YW7pPq2tQvanPjxIpmiuZx6FMzGpJC++lmdldWSV8pMkIL/ToHY8Tr1b/suebgrslUh7VBsmaew4JOQ3bSmQFIG/RKhvQenFXv956yAynmfsjHVm4cyug1NTJVT3A8B04eClFWrU+xX3/OShwSOp6J1DSar1tJWNhpHIxfVT5lgGt3Yk7GsNnaYvbcz75XcVJtmDryxvNZhnBHjrjcBAtxvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SJ2PR11MB8322.namprd11.prod.outlook.com (2603:10b6:a03:549::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.13; Thu, 28 Aug
 2025 10:16:26 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9073.010; Thu, 28 Aug 2025
 10:16:26 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Paul Menzel <pmenzel@molgen.mpg.de>
CC: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1 iwl-next 1/2] igbvf: add
 lbtx_packets and lbtx_bytes to ethtool statistics
Thread-Index: AQHcDCdQwAo5KaJA30mqjSL6vTcderRgPWSAgBTs4oCAAsb6wA==
Date: Thu, 28 Aug 2025 10:16:25 +0000
Message-ID: <IA3PR11MB8985ED446466E28F6E3F5A308F3BA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250813075206.70114-1-enjuk@amazon.com>
 <20250813075206.70114-2-enjuk@amazon.com>
 <9b44df93-acec-4416-9f32-f97d0bfaaa7b@molgen.mpg.de>
 <20250826155131.GB5892@horms.kernel.org>
In-Reply-To: <20250826155131.GB5892@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SJ2PR11MB8322:EE_
x-ms-office365-filtering-correlation-id: 88bd9101-0007-468a-2bfe-08dde61bf276
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?8gEDo+YGB/Hr0LLQ2Wqk2efQedDW327ZGd0GOF0F1B76ojt7tL9OWL7+zjxR?=
 =?us-ascii?Q?T6YWiauFmxFUrLgdxEvz2IRriKwawsZIVIUimYL8b2Sc53e82BIdCTXW/s0y?=
 =?us-ascii?Q?4twCn1V3zwng5cNgC7VzbxncS3o+Bl1usm6t3jI5V61cMRO1ODupjxI8klvG?=
 =?us-ascii?Q?13JbeUE7hPjkql7Lyv6mnW/NQ2JlDRImx5hMDTd127a7KAL/FSHXDeA9R2Qt?=
 =?us-ascii?Q?rNwrM5qkiypmWUchP5h0zkd4A7M1eyaEle+rQIQ1sPTJNcbkQnYPsOFxTyHo?=
 =?us-ascii?Q?45Glfmzbtcvo03+9THxlyRGBPsEAxqmD2R4iQQMYddo4Wrql2sMBsEfQbRSm?=
 =?us-ascii?Q?k+b355n2quTHqjBza5zOHNBRgjOcjHXT1TYfJc8floI/EnQeT/2wHifbTlra?=
 =?us-ascii?Q?psroUPqyVAWy10ysKDE3HU9mDS/5O9pHowSt5L3RHTVED3D0g/LdC/VLokbi?=
 =?us-ascii?Q?EgfIe1kqxzrEwutvcB0ixvrMssgTYP+Hl67uMvX5/4iJDVhRICOV23KeU67a?=
 =?us-ascii?Q?ndK1uKyspA8rf93PD07AjoyvtcyN1d4ibwRPx7JLsM1nchcn2XvmVeazK4J1?=
 =?us-ascii?Q?cRoQJPCGTpkEyG0Fb4UAwkkkbc1y/2NMB49qjWQvfN/eb5d+SwrA9smwu1S6?=
 =?us-ascii?Q?S3IDrhrw+3bDvr4O7WDMADtiKUAX9H66WCASy3zvt+JhM5OH2CLZq9vxhMUP?=
 =?us-ascii?Q?P5rfF2GnkiZiYslLvIuCmlnq6fWj2JMKJNPaE40d5bemCb63CnKwKDKF/4EV?=
 =?us-ascii?Q?hs8tECWK/XSQzfX0KoQjQP6meboRxEeetfSpeR1CGi9YHPRI6X8ybWkgOwPI?=
 =?us-ascii?Q?KC91egKizLzzdGbrLiRkRySlWa5i6SqvKelRasN9KNNuNsUDvoFt/Xjl57LR?=
 =?us-ascii?Q?4xtkBzQtic/+87B4jQOymOUYchQRN7S3QP+RxAtdmbcvZT7Y7dFgwqJE+YSL?=
 =?us-ascii?Q?hMktjoYRcGTESu7e5zgDpH0T6BdLUhS2tjLLW25LoY2XODAYBdylU/USKVaj?=
 =?us-ascii?Q?+ydTF9j2DyA6DYeuCCbPWPO8E4200+An4VR+eRYP+2fzLc5myTtw7Ubb+Szl?=
 =?us-ascii?Q?u54tl8cauiQ1PAVzB1VnsxOgZES2Mz19dzkx3uU36Dz5CwT+6S8dl+SahxJ7?=
 =?us-ascii?Q?hhfWvMY7GqOfyE0Q4+L9QO2MaxE3EcImS4dAp8/l99BZnKL3nQ3mm7Q0Q37L?=
 =?us-ascii?Q?A2LAe9PggDozM5mmBfMBGjynQpb4gBHp1huEJ3I+0m3nqEk8qBBxJizlTmKS?=
 =?us-ascii?Q?4K1IxtKHznv0UNbNoJ0PygGmD2N21szOUZnARaF1HHCCGeLOWkd1UzGOfHkA?=
 =?us-ascii?Q?mx/6HEgoKHi5Rm000A3RUYYq7Ft058twtMSg21ewgLdY1gHy2tbqL6Cn2yBB?=
 =?us-ascii?Q?uKGO9tUDWmmFVtpmMXbha/lOgAi/Xfi0yVwu6M6pOO+rennltreun8AQHZGA?=
 =?us-ascii?Q?xg1HpaRjLRPw5xdN/QB413JuXDRVspSs+wIm4xQtX8Q3JWeFjRa6mQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LPE85XDymDvaKS6Fk/Wa04Rsg2bVa1gRehfBP5XNreBzA8E0jrYgCcRFwgS/?=
 =?us-ascii?Q?ffKZ/aL5GlgWjphm9Pjuhx1Z9f5jMDyLF7pKh5Jr3e7BUVtkrCANoaPrPpG+?=
 =?us-ascii?Q?1KTHhWB/kqzxeY7RguqR+URLiulkfUC0SKDQs1p+fXzVkH0x2zuuKsmXuE7q?=
 =?us-ascii?Q?Oh3y5GgDNvAEeMeWwi7VmOwXRV/jlWxY1E+8rs0WP/f0DKi0qK9u4U9QLSNm?=
 =?us-ascii?Q?Ozh+7FX1l/+xfK5vfnk/mP+IzBIj+iER4KGdd8gPpPtfWEMAEGSFJxFAR+UQ?=
 =?us-ascii?Q?Z2YIPl/HhSswA7dGYdOyVzQwZa++1Tr8urVgUmwIh/UUWdDD9jE0zMrWEHUG?=
 =?us-ascii?Q?ZFNBZ+J39zt/V1o9ydBhZeD2e+7+/0IaBzMC//6bIIZh+2CMEkedKAgzm7mF?=
 =?us-ascii?Q?+yfY0QQ958XJBXjqMtThfxAO3ANpLT6DEgEQqnUlckSZ0DG5PAq5X0tMlt8y?=
 =?us-ascii?Q?2xnffISKglKirhHZZFlnSktrAQRLI8HxcnyBsqAz1Ubsto6WeiNKlQOaMJ3J?=
 =?us-ascii?Q?fcmlq/WhcU4VtZqbw0JwFN+bsEK+LX20fDHopDZzUGKIdKjVgxX2OdrPQHlh?=
 =?us-ascii?Q?4p9FtwjyDlazt6P35u3G/Q+J1qbD/1t9PYMyB/2ZRRBFhMjgRmbAntogCfo9?=
 =?us-ascii?Q?X4ElDWZLGszdJNYPgQKfeXlnlebFJIElc0l63eW/8P2dRK/olkeZbPMFnK+r?=
 =?us-ascii?Q?pRsXssvkhmR5k6lv/g3wUjUFEVwZPIrU+a/QVEPkaNLyONHqv+ex7sRfGbg9?=
 =?us-ascii?Q?n8YCcPzjrwqyVTBkTXZn591lY0ySafo3ezeV+gzeUzl1hVIl/0tcVjhf8vGf?=
 =?us-ascii?Q?c3RJJ6qlmrMU0niSFqiU9vgM+KvAZK6iyG5wWPusUQCvqulXJnoVMF2KBeDb?=
 =?us-ascii?Q?n775XRy5pndfkHskYD0BypFSaqJ1VUnxuE+cvdViVujq5s8uW4bHOjPMR96i?=
 =?us-ascii?Q?LtLCwbqq7fzvplqLOybYkZKOxItd0/V/zwBtAsn+FaW9xRXzazKhfVNzHwOp?=
 =?us-ascii?Q?W4/g9qdjPwUyynzX5O9FEhsylIB41Rw1RJF53GyF469yA7pN2APHC1sStrkx?=
 =?us-ascii?Q?37zDDCslEnAD6eHosdH1aE7vvW3a559+wUaUGsCLZobRKlOHyLJ+o5p7OMoY?=
 =?us-ascii?Q?rC2M6jP9Hv8C4i4NlepePL2LAWCKUoc4fKZRoMEyqLul6GU3NftiyuppADe/?=
 =?us-ascii?Q?/OanMM1DM0wsPxKPz1FJyOeMOokgz06nML97iF5wPBrS5f2rjkDBRzpQxLtQ?=
 =?us-ascii?Q?Q8ngZ+TzuC5Rdw3nhaR/HYR+mMYcm5MmL1FM/7+Vc0OndLrvnOdmNFkkguwF?=
 =?us-ascii?Q?6FnQ0DJ23Mquh+rpAxIt6K3eeuT5aQ5o+YFF6QJZCVP1kx0UQxJWKenj40ur?=
 =?us-ascii?Q?MKYshrNGrdgRg3wa/jHGkwQI8ERORVND74PQWGt49yPbNhsVbihKr++MSrJJ?=
 =?us-ascii?Q?Hlcb70mrI3h8MTnBw7nHKgELt/xfBIx9AMVk0CAFnazoARCYaJTf9fjt9mii?=
 =?us-ascii?Q?ngVU/AA2fVhTiXpTKP4Uwr7bbGVyW488z6FRWqJ+w0KardkLVWtQqhPRAzQ9?=
 =?us-ascii?Q?yos38ZDvvzyqhN1HsfmEsmyCVvWyi3S5BlvbjyhoZudbgBhUTDjvNgatVrzr?=
 =?us-ascii?Q?qw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88bd9101-0007-468a-2bfe-08dde61bf276
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2025 10:16:26.2477 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WHRIcT3hnbo37VWkB3qKhlnxkGj5GI7T2ahJcWfk497SUvH9XM7LFjgUR49Ynsh2igcxL6ZxrbFO9lP7ebot9bzVO3PLfvLc1zI5AlRNgFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8322
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756376624; x=1787912624;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FglNi3EBCmsAEO2naCz8uvd2tRc+shfqLhcejqbgt38=;
 b=mc+OXKpRJY5O6tpEOh2TvmQPjMG2yJ7gh7om9eCsc92WHmeZv1wvx6MB
 9yX841W7FSi0UruGrZVMf2HamfUIDixMIjlHB/9s1Okh7ySNHlZG7lilg
 BCGaEBFHPFInEyoaVdhs+IMR7EvCO9b2sdc+4USYip69AVcViTOzMM5C3
 PYr/7sL8sSYNP2P9n//ARPCzR7Sp7voAYtLmZY7dlzCQ7WldafaNB3UuA
 ORPDvTi/wOMUatkKWmovJMpWtlAYenWwL//E4q2A2ed7+K6xP9cpo4t27
 rmdQb/oIE9NhzGD5LNozksb+z84vsACYkmNrKbFDcRgXe/uaefafHpkCp
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mc+OXKpR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next 1/2] igbvf: add
 lbtx_packets and lbtx_bytes to ethtool statistics
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Tuesday, August 26, 2025 5:52 PM
> To: Paul Menzel <pmenzel@molgen.mpg.de>
> Cc: Kohei Enju <enjuk@amazon.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; kohei.enju@gmail.com
> Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next 1/2] igbvf: add lbtx_pa=
ckets and
> lbtx_bytes to ethtool statistics
>=20
> On Wed, Aug 13, 2025 at 10:18:29AM +0200, Paul Menzel wrote:
> > Dear Kohei,
> >
> >
> > Thank you for your patch.
> >
> > Am 13.08.25 um 09:50 schrieb Kohei Enju:
> > > Currently ethtool shows lbrx_packets and lbrx_bytes (Good RX
> > > Packets/Octets loopback Count), but doesn't show the TX-side
> > > equivalents (lbtx_packets and lbtx_bytes). Add visibility of those
> > > missing statistics by adding them to ethtool statistics.
> > >
> > > In addition, the order of lbrx_bytes and lbrx_packets is not
> > > consistent with non-loopback statistics (rx_packets, rx_bytes).
> > > Therefore, align the order by swapping positions of lbrx_bytes and
> lbrx_packets.
> > >
> > > Tested on Intel Corporation I350 Gigabit Network Connection.
> > >
> > > Before:
> > >    # ethtool -S ens5 | grep -E "x_(bytes|packets)"
> > >         rx_packets: 135
> > >         tx_packets: 106
> > >         rx_bytes: 16010
> > >         tx_bytes: 12451
> > >         lbrx_bytes: 1148
> > >         lbrx_packets: 12
> > >
> > > After:
> > >    # ethtool -S ens5 | grep -E "x_(bytes|packets)"
> > >         rx_packets: 748
> > >         tx_packets: 304
> > >         rx_bytes: 81513
> > >         tx_bytes: 33698
> > >         lbrx_packets: 97
> > >         lbtx_packets: 109
> > >         lbrx_bytes: 12090
> > >         lbtx_bytes: 12401
> > >
> > > Tested-by: Kohei Enju <enjuk@amazon.com>
> >
> > No need to resend, but I believe, you only add a Tested-by: tag, if
> > the person differs from the author/Signed-off-by: tag.
>=20
> +1
>=20
> >
> > > Signed-off-by: Kohei Enju <enjuk@amazon.com>
> > > ---
> > >   drivers/net/ethernet/intel/igbvf/ethtool.c | 4 +++-
> > >   1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/igbvf/ethtool.c
> > > b/drivers/net/ethernet/intel/igbvf/ethtool.c
> > > index 773895c663fd..c6defc495f13 100644
> > > --- a/drivers/net/ethernet/intel/igbvf/ethtool.c
> > > +++ b/drivers/net/ethernet/intel/igbvf/ethtool.c
> > > @@ -30,8 +30,10 @@ static const struct igbvf_stats igbvf_gstrings_sta=
ts[] =3D {
> > >   	{ "rx_bytes", IGBVF_STAT(stats.gorc, stats.base_gorc) },
> > >   	{ "tx_bytes", IGBVF_STAT(stats.gotc, stats.base_gotc) },
> > >   	{ "multicast", IGBVF_STAT(stats.mprc, stats.base_mprc) },
> > > -	{ "lbrx_bytes", IGBVF_STAT(stats.gorlbc, stats.base_gorlbc) },
> > >   	{ "lbrx_packets", IGBVF_STAT(stats.gprlbc, stats.base_gprlbc) },
> > > +	{ "lbtx_packets", IGBVF_STAT(stats.gptlbc, stats.base_gptlbc) },
> > > +	{ "lbrx_bytes", IGBVF_STAT(stats.gorlbc, stats.base_gorlbc) },
> > > +	{ "lbtx_bytes", IGBVF_STAT(stats.gotlbc, stats.base_gotlbc) },
> > >   	{ "tx_restart_queue", IGBVF_STAT(restart_queue, zero_base) },
> > >   	{ "tx_timeout_count", IGBVF_STAT(tx_timeout_count, zero_base) },
> > >   	{ "rx_long_byte_count", IGBVF_STAT(stats.gorc, stats.base_gorc)
> > > },
> >
> > Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>=20
> Also +1
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


