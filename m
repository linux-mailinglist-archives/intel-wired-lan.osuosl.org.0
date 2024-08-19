Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5554E95620B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 05:58:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D43B440328;
	Mon, 19 Aug 2024 03:58:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a1oifI1iXuSq; Mon, 19 Aug 2024 03:58:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D012940332
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724039899;
	bh=t3fj8e4ar1toAxhyuy3xXvOGAIKQrIVa3J8+fhLDzNc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mp8FP4lkCVpTFqH1MtkVTHN3z9IKMP0YP8r8+beVal+f0Mh86pi1wNVlPdUyU4RSX
	 9w9U0NESxTWNE3qkkuKyJ0AxUo7ukLwEQOs7OFTAJeuh/UYRK+XZxzLgXKfNlhDFx2
	 D7OjV1QA6MB+3Bn/EGKBBWhCJVeHnyoXA9syO0jPBF/QrmjANmbdh7GMzPvb1y/gJg
	 sg8rL5d8TSuyS6fZQRiS5xjr6SIi8pmwgxO3KLLBJPeYE1It77oGapJrpE0ylKDAEd
	 Sblf5pFn6veeIrIZjYPB8MdsTc0QSao3q8UsKPuzI1Nz1VMmubuIBQ7/fEu8tDIpi0
	 jw2S1XlAO5r7g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D012940332;
	Mon, 19 Aug 2024 03:58:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0538F1BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 03:58:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2177402E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 03:58:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WOSgrCLSpcvI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 03:58:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7F90340158
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F90340158
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F90340158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 03:58:16 +0000 (UTC)
X-CSE-ConnectionGUID: fvNu7tlYRzKMyTwa95+Hag==
X-CSE-MsgGUID: DrxXO5+hSIWA25bOpr2TXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11168"; a="33413783"
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="33413783"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2024 20:58:16 -0700
X-CSE-ConnectionGUID: PvESohklS6CH+W9zpk7yzA==
X-CSE-MsgGUID: JF2wiNerRYayYhprxEdUgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="60523827"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Aug 2024 20:58:15 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 18 Aug 2024 20:58:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 18 Aug 2024 20:58:14 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 18 Aug 2024 20:58:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fHr8Bt/AwbRHNSFVx4KD3FHXbget1dUEuq5gPjObSR6rKhpYidiQc5twLLbkA073QZtOvXvV3V97dHvsd9KWMVA6KzMMN0BPKQhAZH354+h6103JAQYRQtDj2/Ce3NM2s8i3P+ja1SQlA4DC9f4WlG0kKDZzDowhHVPyTvq5zNEBbQwDNUAODMj/K/b0pEWYpgt4DPi6fsSM3pScKddOVMyIb3uFlBUPG7qTaExc4SSXw8oVn1XyNh3MdvBf7LcoDMwiphhRiUdI/ezt3robc+IBIgmTMm53Qp78hgrqNGeGxaWD7EebLv4NgYkqUtTudyURY1n2W29BXQG6OXeohw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t3fj8e4ar1toAxhyuy3xXvOGAIKQrIVa3J8+fhLDzNc=;
 b=pTgVwsgvEnrWQrGK7A8rDDTKlDxzILQvq6oIUhwcJjY6lj8wZ/F7QGEEz/udb954CTvQ6vyu3Ohra7k1Cp23Klaff3pr15Y1sOWLZDGNejGthghJTajhMB8/o7MpvuERmE6yV9rHvi6OEQd5heICj4yBr6ODyyIGEv/gF2SB83M2ICOzfdK1/zxD2C1a71jRyLjmd+TtraHZ/iihwwwI9oyhM3zJIhTTmpQW0JRD40L9vcbdPaNlTUpan9xop4fDVDX6rxhueXPV9SIfwGXwbssfM4rvrwtX3DFfZj7pp/OxyXrDLN3pnrohdrGmYMg1gsiYtLsaUTTWiz3pddQ12g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ0PR11MB6792.namprd11.prod.outlook.com (2603:10b6:a03:485::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.18; Mon, 19 Aug
 2024 03:58:11 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7875.019; Mon, 19 Aug 2024
 03:58:11 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-next 6/7] ice: Read SDP section
 from NVM for pin definitions
Thread-Index: AQHazIYt5hqHSRlDFkm0KaTLpPA6bbIuPopA
Date: Mon, 19 Aug 2024 03:58:11 +0000
Message-ID: <CYYPR11MB8429135A784FAA0B10594CEABD8C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240702134448.132374-9-karol.kolacinski@intel.com>
 <20240702134448.132374-15-karol.kolacinski@intel.com>
In-Reply-To: <20240702134448.132374-15-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ0PR11MB6792:EE_
x-ms-office365-filtering-correlation-id: 78388bfa-531e-44b1-e00d-08dcc00324f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?m8OUlivN7bM69fpOAOEZA3ZQlW+2yE6NdazlswRCMq0886Js3BRW3nAKgYh9?=
 =?us-ascii?Q?jseAY3q/XW5NqtOjE+1QNhmNJAc3zHcdi8i80vCwjMRyPUd8ZhWzn47FSB/Y?=
 =?us-ascii?Q?y1fRfhDVcA9pOlDyf5OcKDWcl6uP2fixZtTG3Dve48TqyHIPVGgUe6cRqrrK?=
 =?us-ascii?Q?r5VcuIjQ2mQ+COIstlBah7ySak0Wu9S6u13VRMEHl59X4oZryrMH9R78C2/W?=
 =?us-ascii?Q?bT1ScxopuCTugmzJwVQ/Z4ssQcdnw+jKJYfDAS+JQB2QfsDlI1lXasez8l5I?=
 =?us-ascii?Q?Gy4TZT+Isl+c+Rp3zc0dGenfcg6jwfbQ4tVSjQwwMIdFSp5tejQmWbqYMtPr?=
 =?us-ascii?Q?ZAXuteN3inMkpGEWHudN8/oaBOwMVpCCGOxZSwy/QRXHlJK25SFb4YdyWMWn?=
 =?us-ascii?Q?EJNLJyqPKYpYOKrbUpws34elVnlcTNpRgs7b8oKgpUPlQZvpKRI+3BgwNd+I?=
 =?us-ascii?Q?zWloJd6VvRsW3jIpxRS9w8RIB+GBS9S/Eem2fbLgx4RE/Laqqseg+x4DH3hb?=
 =?us-ascii?Q?ioN0K1ZD6WD4uhTdn9sUKnZKv5v/fJSqHHq9wWVuwMfHLq0Kw/Okl4JxL+pz?=
 =?us-ascii?Q?XhkGVY7wwfRHRpJ+FHptMaCpFgF5JKP23HqHCedi4T6ydaeI/TMk0AdS/dU6?=
 =?us-ascii?Q?WEKNZQUt6GXrJI2zsWLRiQKKjfVxPN3BUeLGvsMv5vh59npd8BmfQwqXxND+?=
 =?us-ascii?Q?s3QtP9q7wAdL9eYtEcKPj4ze3Q4L4rUr3P6gNGBvz0ALaLfxqLl+5IkmQ4By?=
 =?us-ascii?Q?JQxu92CsVgDup2gFB+/2AlbJSPx2w8iKRNQ6ZeASqN+O7tsqJcW9cNkXC+Ms?=
 =?us-ascii?Q?UOCf4jH7n+MQOrzW163XPdDuyR1mBX/k9npOLGgU/Mc7HoFvgVKv69Nzls3r?=
 =?us-ascii?Q?u0Z9QP9e3xl8fuazmFM9G1oEMPtkzN/TZjSwyG00onfNA+GT/e5Ct7lovzIj?=
 =?us-ascii?Q?9MSEMtb73Vf2yynjZP6l1em3v9aIzXjbEh26TNBL8p/lKcerzdQwOh9AYnIB?=
 =?us-ascii?Q?w9tJjdXwGuh+QHZkhp4wQW2KNmYi1HGAwwSoWNtx9xgUGauTkDPmk9xSCtvB?=
 =?us-ascii?Q?dn1pMSUUVqv/bzbI2/219dFY2sslswBpS+q9pSrysuvC8ASg6t6+ntCtRpql?=
 =?us-ascii?Q?MCPyNIrFo1u3XK65Yb5UWDOdjvNRy6JW0Y7Z7drWO2gw1gbwiVHIcYSOJouF?=
 =?us-ascii?Q?HsbAnU3k29KvdnD/PVhRO+VDSD3vAOHy+0YFKWl4IzRuBcn0ZPEhUBKbf7JD?=
 =?us-ascii?Q?SKYVl7nJ2RrKBjdJSvoWJUH10tCV58icYKtTvYMky5HYJhIMGqsJgMJULVS8?=
 =?us-ascii?Q?57fjmv7UsE65BR3vfDrNkv0/vpBpjIIDOyjZYohe8aNGLNoUwKkPRnJPNzDF?=
 =?us-ascii?Q?fEJfVm6Z+RhLbvYpnpdAWZVuFTitQ8KqAuHJ3QMAdrC6KGxH0g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IwumV23FoB+fSEQXBheG3RyXmBlNrlyaZ6O+sP5xR0LGVNyakCfhFu6w3ADN?=
 =?us-ascii?Q?NQe6qoP8g9zn1w9twb14zSRdKKaAc3hKvIZ5xz8T03P/G8XI+Y9lL86iLJvK?=
 =?us-ascii?Q?YfmwBK5civ8OuuEkKWxsPB3ZtGcm/qq5TH39Jf6KCHZSiwSJ/7SWdmVVeoe2?=
 =?us-ascii?Q?MP0uldhH1ga4yS3LZgdeFD/mz3dehVj+v79x0fqJ7Tc8ksnidEiWqiw0XzYT?=
 =?us-ascii?Q?z/hF70FK/5Da6eWgo9OL6rs4KPjDvwn03ZNFbs/UmhhtPx/8tpEXL1/oFRqX?=
 =?us-ascii?Q?+vM1gtQLKnARyLAwr/nCIPovfBHACOo02W+gA3iv8E4VnRPK7LgFrbN5GqIT?=
 =?us-ascii?Q?3CzvpssH5vsr5fOmO42V5vn2lm4ktQVRa/ETeiVmbFqkFsDitwhSf4T9W/z+?=
 =?us-ascii?Q?NifZHlRur6rJhwLD+y3ifRBD+fZ3mSAnhO/+i6gcho9O68pFzjiJDAGUSt/v?=
 =?us-ascii?Q?KKS85eO6sKU/Q5by0/KUwLEorWnrsL4iSoLyc/eWh8+XVdVX6tJ5hPQOtlJY?=
 =?us-ascii?Q?wU7qcHDM/gw/1msY3Pxeu4LTfJ5aqmavGhkAFoUjJlW1tN1KCD/f+vAuM6SD?=
 =?us-ascii?Q?PLaKrCkm8uY6Ruv1chuDmxBpK4dNlbJXzwFcdvzBMK6rj2Z8FFTCy7lyfVdy?=
 =?us-ascii?Q?/KfMbSDIMKsyp2s2ehqIZlL/pcxOxvdFA1pFS7d8HfSwzbTCDDyzzlffkCIx?=
 =?us-ascii?Q?WG/6h4U6cHhmJGpd/8GHdjqWCZuQd1fl+3vqcPpLCQAA6Wo3oLOAekWhsDgP?=
 =?us-ascii?Q?lC5AxVSaJNL/nzSsMpln2gp0c2xdYaTLZ+9nOYhn1i81FyLu6EdrNWPNZiA8?=
 =?us-ascii?Q?0Qxb03aax35kLYn+JrDLaKL4nNV9tZ8kISk8FGGxC2Hh4mA6NWhfroHbZIso?=
 =?us-ascii?Q?gyFb2xq7Aiq1uGU3jsFzdkF/2/Hjj9QamxNSEn+3bdDa8uN5Hxol2MhkM41h?=
 =?us-ascii?Q?cVTYDQchsLP04GnEdP3apOI/R672Lq39e/WUXjuP/2yCktw4gIiMLw0QApaf?=
 =?us-ascii?Q?y3u1PumKUfBnsnu2RHVXv9unblH0GzKJvUiPwTQ4YTfOUyNBwZMIl8UhTKpw?=
 =?us-ascii?Q?DKewym1hChhSiH0a6AiRPsNZxmZjYJcz6/K9f7vuvxHyDisalwruNJ2HIynv?=
 =?us-ascii?Q?d6EAMjPWLhloytvtTI60jIAOemY9VC/zFNJ+jaQiMnV/rHUUiyzwazxk5mMk?=
 =?us-ascii?Q?U5wFTB2mFFxYCkoE/sSDw1Ij9AfFUlvA5Sj17N1vhQ/FnjND74wtYvAVwoNn?=
 =?us-ascii?Q?pESsw0gEGkX7wqSNH6S2jCx81qxcOsV/u9u25ntGSuQknT9Og+c/skEo8X2y?=
 =?us-ascii?Q?AyG/nUCoiPINrp3BnjrR6McNfjF3rY/Wwpe2AnveH/P7wsvuvgu+VdkRJkPe?=
 =?us-ascii?Q?wYAKjuJnOeUZ2NwkoAy7pR2M8r32IKweqkTN5zAY2oskHwqLiYin2rlewb0J?=
 =?us-ascii?Q?Rxrs0ypLlEN8Icj633pGOt3ZTkjPrFolzKZzWK3D5TudNhXGb871OubuKTAY?=
 =?us-ascii?Q?XKkHVINJMmoHzCM3xxl29f+EdCaWDubblwrkuirXetTvRhF+z0fH7h/F6Cmm?=
 =?us-ascii?Q?Hvfk5aQiU8ebkg8ZClF578ZBLmdH4jhNjGCit25ycs9zSunhH1RZGxDJrDGw?=
 =?us-ascii?Q?ww=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78388bfa-531e-44b1-e00d-08dcc00324f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2024 03:58:11.7170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O9Zq4kDiGkoPjY9K7K5/BMlQKSkZBhhQHurZRo1iv+jGWyEcdP5JbK8ILFg+Lv1D1ybSNPBLyTyw38yNdNa4h5XzKlhWYRtbo6Sau3A78vGyyRWFyWICye6ExY4fZl3f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6792
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724039897; x=1755575897;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b8iB6xNkHFKsaKaxZJJg/ipxZOmiFLYjwfGLPdUptCg=;
 b=PMoVXURTBypjPG7OSRuiTWG1OQQtu0zYpzY/yHlj0MCEej9ApI4Z7Tdd
 rRM1LMjd8PAbJsRTMIKgA36YV+t2ndYPihhJN0opME3DQgmVv67E6zBhS
 G3A+iALXY2XnkbTMCesA/0/IV+y/IZ4HGBNe5HEowz5FTZ/U0ycIQB6+8
 wfCU2co8u0U/Al/DH9RiwEhMnfvXmwullMEWYpn88nRns7BzA+n4mtd03
 PKMwn2tUp89pNFLbZGoJB3gK4lF69xYVJBBGPEetNbU68x34ckOfgTt3S
 a3ElP9ltRjo66Ukj4S2F7q6yf+rstu1t6o7Wdew3VOJ80pOpBUDWD38fl
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PMoVXURT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 6/7] ice: Read SDP section
 from NVM for pin definitions
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Hagvi,
 Yochai" <yochai.hagvi@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Tuesday, July 2, 2024 7:12 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony =
L <anthony.l.nguyen@intel.com>; Hagvi, Yochai <yochai.hagvi@intel.com>; Kit=
szel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-next 6/7] ice: Read SDP section =
from NVM for pin definitions
>
> From: Yochai Hagvi <yochai.hagvi@intel.com>
>
> PTP pins assignment and their related SDPs (Software Definable Pins) are =
currently hardcoded.
> Fix that by reading NVM section instead on products supporting this, whic=
h are E810 products.
> If SDP section is not defined in NVM, the driver continues to use the har=
dcoded table.
>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 ++
>  drivers/net/ethernet/intel/ice/ice_ptp.c      | 138 ++++++++++++++----
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |   6 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  60 ++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   1 +
>  5 files changed, 186 insertions(+), 28 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

