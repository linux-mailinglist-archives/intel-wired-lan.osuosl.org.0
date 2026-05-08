Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODqKIX4C/mkTlwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:34:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F7F4F8BF1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:34:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80B42843EF;
	Fri,  8 May 2026 15:34:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xcjiyaoXtEV9; Fri,  8 May 2026 15:34:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B4798440A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778254459;
	bh=eTimNudfgpfUZzUCPiGpwISX/amu4XgmpAiCXjgOf44=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Fo2fxSGqVDMm3ouCg7YBZnljWQU4AFJnZcJ6LiFNZ+UCj3Xwk0Lr1AY9HPFD3y3v3
	 BShZ8yBJZz/d0FbeSeg1nKiEr3h52kpiQrgNY6ggMcYP1OMIDxitwg0dBeq0iZF04z
	 ltygo5GXTU1poWTe03wN0rCeTEeRRsWs4pImn32qHvf3DTUiDvO9b9bsfErngUCLrG
	 XGERbXC5aiGPcbFCjzwUDkpSVKGHTT+o7kH28X0e0MBXnuw8ldtyryTytg+7Io6Cn3
	 y/kSvWuJARZ4rAJYHCijDsOseOR9lufAiaVeBwBGelHlLNu8Q1KeNum5FFtMp8wkw2
	 pjA5Cldl90eVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B4798440A;
	Fri,  8 May 2026 15:34:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C6100358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:34:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ABF304106E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:34:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FrxJxXynu7yw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 15:34:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 05A0841060
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05A0841060
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 05A0841060
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:34:16 +0000 (UTC)
X-CSE-ConnectionGUID: mX4EoBIVQyuYRsRO+y9Oqg==
X-CSE-MsgGUID: NNKXbB0sQKiFHHkcNXRgUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="81790975"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="81790975"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:34:16 -0700
X-CSE-ConnectionGUID: YY5MNjjkQRSViGiPAGdzTA==
X-CSE-MsgGUID: 3YRK9pJhSfCuQGSnmVVdJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="260527676"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:33:52 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:33:52 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 08:33:52 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.68) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:33:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H97Vo9Iy2ugb1p991YMmYr4N+sQDgKdYTswowitErNSEJ8tV7MfXir1+Adjlj4/ShVeGTMsEPfcGw7HxZwP/19D7k3xnqkTE3GNVdsLm1tDZToWh4gS9zNdEgMrhv2rvkLR48NilpjSZs8GutaR/FUaNrZihaNjyBEgiDZ6WjD5qfxJbKDxZSMjQ+6gn2Ho2bV86DuDdTRbMgPcQrSmg0q7akp0jtZUWiTmhtU5twkGCMjmXBMncSPI2VvDHgLyLpxlusNdoG/XUtIrX1gur7TNdQ7ZhQtC+TMlJaZABYkgFEihWOEMcVTnx5Riyss2kWwzNqavnOG/Ht+HNKmJ8jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eTimNudfgpfUZzUCPiGpwISX/amu4XgmpAiCXjgOf44=;
 b=Oo4c8cnGt7HrfhpWWVghAhqc1cj4TCfjzMC9ssaNDnXDDWZDRtWMzomSTh3QUWuf1arH6njjkmO3w36wvlQT87sGey2dK0CywzdZesNcMpB+mSo0rKfZ4vXvwUfyGhdw4nCRWElh54F1/PHO5v6tg+hwA3pQerLSTLgGOjwYIbbm2M4K3DwDtan0gTPYggSn1R0B0b0GAro4K8j6FzdI4Mxif15JKsqfrrovqj9YUJwiXkMTMHTuDMjGuzX89usKmTmDeZzB72kvd3u8JHxZCxUx9/MiMdxfGY8RpYjURzQMM/7p4acBF1LqT6K2uVDnV1Yen+nulaWfqdaPZRFfGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by SA1PR11MB6781.namprd11.prod.outlook.com (2603:10b6:806:25d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 15:33:39 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.20.9891.016; Fri, 8 May 2026
 15:33:39 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/10] ice: add PORT_AUI and
 PORT_NONE ethtool port type reporting
Thread-Index: AQHcyL6jsWno3wyzSECIFrdvarOkXrYEbn5g
Date: Fri, 8 May 2026 15:33:39 +0000
Message-ID: <LV1PR11MB87900A75CD2B5ADFF2003C96903D2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-4-aleksandr.loktionov@intel.com>
In-Reply-To: <20260410074921.1254213-4-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|SA1PR11MB6781:EE_
x-ms-office365-filtering-correlation-id: 4a9d1ed7-fcc5-452b-796f-08dead172dd0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: zdQFKGx1917zDnLGBHpe6FffdL60c6Zt7ZKRXvtdWlu4DauY74vrh5ndis39/Xv89uNBwCysUKN/H0AMMdqXw/11VKc9YDwR0HK1lZZV6EkVB+JTtKy1nAYNdSmrlraOtedQ5JpJ0M9gAAvw8SHJbYUf6A7Di+uePehiT5lOBfSPDyvvZNZDNfTi48IOqQQbKSRPlZjpICiYOYRXs+cJTKlLkN33Zs8vVwuB3WTrmH5IalDe0d4uAwVunx7CuFYe6yvFZuocR5dX9SEQt/AtRQRJ64zaRWno9NXsrRWjruHXNUXmd0e34F4VbuEJeieU/nNnloJHi+tzDUrLF2q6YjPnmK1uK2kPWapYOX3zUJI4TIBge/Ro0zNR2Ahdr8rh1itulaO+Wf6UQ6LOFlcOlyKckLcpxIDx56MVtwAe1xwbysR65Z3FGSWJ5BiMBb56T+dUysrmFv2xUX4KoYsh14OL5lZRQYBnOeGDb1LA6yvIQRmLwp6zmYUC1YNb7oNNyxah1SQDCvhLqd28AAF/WjQZ5L1tH2vLNevLA1+FuhFfekziojEmvGUOpZ5xgoijMondQOzKvW+USyPaKCkQF2UWA0ojCRz2HkdtloAh3+0MgBBBcF6jygSoycZLgiG6uRAGDP77rDtoURYc1dNAiQ54dmgJyN+w4SP1exTTkBXhtQotmAdoSBAkyJzMDVPRsWs8M9KoYQDdYbrCSDYaZ6TLA56r3L2Xl9w1NeI8J7Hr2zACjf0y9SJoF+oI/E4D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xVwckEYxPhRhgtJ43WiMqUigWG2KVSV+WmowJEtXcHKJrDE1GZPC9aQ2bIYj?=
 =?us-ascii?Q?Q6upFMtmdOlHUeYx9kZKIQfa7cHSew2AuYqvltmaGLXaItIrTfXcsOV15v7t?=
 =?us-ascii?Q?GUotqb7fPSNaD8/hWA1y1eeqKymxsSAc7WrACUH1t8Bfp1IHv677sP6hD3av?=
 =?us-ascii?Q?24pzazr2xgzG36YPdRatre1EDNTqNCF7qfU1NXhNgRjnsw+HENLtjtLUrvW1?=
 =?us-ascii?Q?f8fH0u3yy4nOc5eluFFvt1/vGtYfBAk1QIVOJCm/eEy6U1HmVnHWkzomd3KV?=
 =?us-ascii?Q?eU75ETmPhUNFpDNYDFmKUus0meHwh2rku5+8XUG5kNFLUhFmtdh0+JHVXHXP?=
 =?us-ascii?Q?NEVqWxOFMw2jl5A9hTBTl19iyLEp/mlaby6jrrVPHog38XFC0068NfHk185H?=
 =?us-ascii?Q?83kmguoHfq8xMBJRo3Oe3JRCkhWNmm8i6Xo9Zx2EN9nqr9td/Mzcpcpqo1/i?=
 =?us-ascii?Q?trZkhrks23m0ovfJD1mgOMGYthTy3G2u83MuGYHNGTOCZTsBVT9bts3RSqaQ?=
 =?us-ascii?Q?B/0cwmnbjxyTNZv2L9v5Epy655o4ZdUGrGxAMzbi1NUSiQSQPUwAxniDB8lw?=
 =?us-ascii?Q?SsKe3fRFQWHSjDLG75E3GMzME+qE+k8qXXtJn0HS2OC8FSY0IafdbkT/179x?=
 =?us-ascii?Q?cY/gE8tIk1PIYmOM11H5QrlHrjB008ojMse5zqcWjVI9GWJjWv2hA5hFJMah?=
 =?us-ascii?Q?89DI1P/aN76AxjfS/bKmCOhD5JG55mLqUnj/uPw1QaLGV9nj8zoPu4wSOQKb?=
 =?us-ascii?Q?JEUBqPHvGE1fAzFRJfAjTrFlSSdKmAk5D/R9T5Qx/mQXbDiM2loDKMc2X+X5?=
 =?us-ascii?Q?SfLdEK/sMLC2+LrIbrBn43Jz9Mrhvnx//ppNRzqMMbqg1mS6RguiCezBrona?=
 =?us-ascii?Q?dR2cNFYOXlPM3qA9dyGEjZjiqQcUJZKNy+LPKPub1/fu5BHuRMusS3ufc+dY?=
 =?us-ascii?Q?2sfnAOEAyUMA3FWF/t0fQEDQsM6ApXK6g8Zlemc7S5e/3joeSz11kNog1E9F?=
 =?us-ascii?Q?Q3z45BytE8Jtydyw8OmshVzxBQ3+qgpW3+t/DNmFAEGYOfLcfKvL2OmoUrZH?=
 =?us-ascii?Q?jPalzHN+ZoUadnVGFRR4qEPK46YTAUPRZY/txRXQh2A+Y843PAiBlJKI6SuN?=
 =?us-ascii?Q?spImG5m+Ct74i8+KmbO3Em2Gv4wcZbmQ/TwuZgVi4ERLOVDUFgudWb/EJ46N?=
 =?us-ascii?Q?RjpTa6EJBdviX1VLVaNpFPBF9TrH1ki7iV2H8+quu9X7rHAZjF0/sxBVX73J?=
 =?us-ascii?Q?v+lEbB6y/+Sml8Qw6Y+Mo7IzRK2XWAZ1Js/IjpangE4CM6CyqOQWP4b5KeWK?=
 =?us-ascii?Q?f224jbKir+ad3NoTqBwvOhpmVSgpT97pV2nQXr7J5r/zgTmUtYy2gPGIcfyM?=
 =?us-ascii?Q?4RdRjoeR338EykRL0jmG/k3hiO9np9VQ6Gl12OO67c9K7UbTmK7J/JhDg/Qq?=
 =?us-ascii?Q?1mTg48dtqBJ6jfdZ+uiqUp+cUwgqJjJJCvCtIcBChQwqxn643ntog068b1xv?=
 =?us-ascii?Q?e76B1YP01eebwXfeuLNWsRWJUA2NJGbQncgFI4CLY4p3Pzd5RxQa9JSTuRUD?=
 =?us-ascii?Q?KqEpkcK7ALaVPgfqAzpPfNGLkOSoWrin4zXBp5SEkQ5cucZerLRkOwehZDeS?=
 =?us-ascii?Q?7ThBZ4Vs9y8vbTVvqLDoiylP7X9WFIvcAO4n/ax+mli8+H/R4FRr+KtHGRas?=
 =?us-ascii?Q?ZxlgcwmvPd/PjWkXxoKJAyPqS0T5O88x5Zuvsd4k6MSv/vzUkxGrZZSRRSF8?=
 =?us-ascii?Q?HSET4pcHWg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gd5fSXa0uJ7NBHld1tIgg38l6yPikKxH19Vs88v1UQkajMmUEd5Je4Vzragc7+yC+XAVkeTVdEC98ftuSvxgxV0kPQSwSYIMdEXKe8dBfTMjjiscZ1hfp2BBudd910gtPgsPrKSqv7v0/SenRA2S6q0wA/x43ZicAvIAKi7FJ/eL0xqc6OZa7rackLdxPHaxmQCpyfYkaSSyOKiTdy92sQxZGnZBmnMic0XAhhxPV6IaM1UyMunm0cKRCXiiCCllA5Dmq8xML2i3RKqGQ32EQmwQ9lwUDbaNB2EG4myjkOqHTbFmfHi4pl+/llwD7xofQnRcmm1bti83csmK096ZMg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a9d1ed7-fcc5-452b-796f-08dead172dd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 15:33:39.7298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NRnOdm9Gy3guGOaB9D0iPT/KdqRg5LRSvh/0n1DXUoZ5UF/NK40k550uETK19OcDe3vaLE+Vp4WBRYrRoTdLHgYHASRlup3lqQ/cT5vezGY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6781
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778254457; x=1809790457;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rBqvOEnGwrtyMmLlymNijWb4r92Blcq+Z1k5iv+Fbac=;
 b=IXqvVtvqWOJp78SJbbWblsw8nZaVTb/p7fcEjvFlW2Oy0wgCBydKQ9yF
 iV0mmdkQTI04MdCUO26mJ75jgmjabbB0RSX2aQWgPm5XPisXpT7Tz4/Dh
 jJCiHLvJDTCI1Ba6mmSiVzYT7LLy0ErtwJTEDpIxNoMeNAGs+OEuqIfct
 Z3IEW7PV9uBxck27Wwp7eo8sQazsXv2ztP5otFT4CBfdQqCBDOa+qlV0u
 c8flRR37KB0QPshHGLZCqJhhvrh+nt7Cnl+oLX07m4Q5oQ618eLAFWpMf
 ZDYw9UQn4AcTyt0FdnqwUQAMBArCxFoBBMW+Drey/LScVXPSnlP1Rk1HM
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IXqvVtvq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/10] ice: add PORT_AUI and
 PORT_NONE ethtool port type reporting
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
X-Rspamd-Queue-Id: D7F7F4F8BF1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
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
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,LV1PR11MB8790.namprd11.prod.outlook.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Friday, April 10, 2026 12:49 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Greenwalt, Paul <paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 3/10] ice: add PORT_AUI and PO=
RT_NONE ethtool port type reporting
>=20
> Now that ICE_MEDIA_AUI and ICE_MEDIA_NONE enum values exist,
> ice_get_link_ksettings() reports PORT_OTHER for both of them because the =
switch falls through to the former default handler.
>=20
> Replace the catch-all default with an explicit ICE_MEDIA_UNKNOWN case for=
 PORT_OTHER, and add proper ICE_MEDIA_AUI -> PORT_AUI and ICE_MEDIA_NONE ->=
 PORT_NONE mappings.  The switch now=20
> covers every enum ice_media_type value.
>=20
> Suggested-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 11 +++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
