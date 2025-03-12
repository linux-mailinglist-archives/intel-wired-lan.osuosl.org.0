Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8863CA5D662
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 07:36:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 494CD60D4B;
	Wed, 12 Mar 2025 06:36:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iovuUH9fOhEX; Wed, 12 Mar 2025 06:36:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A6D560BCE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741761400;
	bh=Fe9jFkK2WtpNKjrFaP2WDJWiOc4P6vQdfQ0PM/m28To=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FpQV6W8u2MhRhS2tAO896uXQ7X4V8j0Pehd4uAntw+vZJofHz++zRmaGi/vd/H2Oz
	 8gva3EsneiXDt3my1oEJiZln/OMhvnliIIheDJTrD47LJW+dhIQRcxhbvwcAmWWTVT
	 h8zswzO0snt5Qi5busM9YuW5OWJMLGdiu8/BUAgklJeqo4TIKON3KvV5gHLvk2lVs8
	 IcILDI+RytKoBZu/y87ZrGVi4jtFqIQjahhaAiqcl5CTziKrKKNpEftTB6aemVvwos
	 AX/yoh+iG0GBbKceSumWGGGb+nZ4cZeSHnvK3hvbgYi/MRKgirbHgTBQT+tyKcJokb
	 Or4PUuYFrGOQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A6D560BCE;
	Wed, 12 Mar 2025 06:36:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 23F9A1DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:36:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 07C71813CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:36:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jZvfUR99gQqQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 06:36:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 15B52813CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15B52813CA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 15B52813CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:36:38 +0000 (UTC)
X-CSE-ConnectionGUID: nyMmiGxaRrSwHzgAM1aK6g==
X-CSE-MsgGUID: SiHC0GSkS8uCnb6MsOe4ew==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42739253"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="42739253"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 23:36:23 -0700
X-CSE-ConnectionGUID: 9YODJuGYR/aUCJb/UxvANg==
X-CSE-MsgGUID: CBgh/y7ETCmYlmbI/TupJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="125578950"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 23:36:24 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 11 Mar 2025 23:36:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Mar 2025 23:36:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 23:36:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iJJNMi4jFMITaBECeLKvefu5GmWuOIH6Iq3VtfwkswZzYMwD9fCm8+ZcdHRAyiGlrQevj8E0HV8dFgngpX9NuPLzB7Hyn2IeIsn2W4q19QbwHkRCIDx5/WmHGgA80ZqQF1ca9zBiqihz7qntSuU5vDzz5/nsklI8y7mFVNLehUBnOufEI1hwfxnl+nZKTyFB5eChTCdjAtvp5vhc3FKOl/0nkA8hYJMh0RJje28517mJTMk/LyNkounTIZ6nmZlVqXMeQDTKxZ4w/c001cBR2s/obja0AsMPCs3LoMG4QKhZ/QfO5sNNCPmR2kUPIqge4ZcFVRYWrINBq8WCMBlOEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fe9jFkK2WtpNKjrFaP2WDJWiOc4P6vQdfQ0PM/m28To=;
 b=dPxztWH0PwpJptzy3c9xq/fNk/hpQ4O/918+0VGxkJkYO0tT74NRyiAxHO6sRCdO86AIoU+rZ2u0PHIRrNEm6030twKM6aMrYT18janTWU9t4qPBVKck7ap0EMU39baeL/aTHUpkK5O2RIHvBcTotLVDp9U+AhtKKWf/TeB3GNJ71IF4GaoxFD3GOU8sRM3Dv78JPEYin143hk7OvxQvIX/qy+LzCiqct5jzHOHYllgVFhKqT9yvs+AzmqHGSyH5UqdbrX2Yt2/xXI80m9KDzTc01FPt57iJhaaNCGsWJLr1WEHoj3uhSuaU8l0fwcOHTJPC61pQQKiDQCOjuMKkAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by PH7PR11MB7026.namprd11.prod.outlook.com (2603:10b6:510:209::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 06:35:39 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 06:35:39 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Mrozowicz, SlawomirX"
 <slawomirx.mrozowicz@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 08/15] ixgbe: add .info_get
 extension specific for E610 devices
Thread-Index: AQHbj264jaWGK/VQSkqty08bfkz2A7NvEuog
Date: Wed, 12 Mar 2025 06:35:39 +0000
Message-ID: <PH8PR11MB7965724871DCC80D6E06B8B9F7D02@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250307142419.314402-1-jedrzej.jagielski@intel.com>
 <20250307142419.314402-9-jedrzej.jagielski@intel.com>
In-Reply-To: <20250307142419.314402-9-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|PH7PR11MB7026:EE_
x-ms-office365-filtering-correlation-id: 3027c205-61c4-4684-d3bc-08dd61301ad5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1AuSlzneLiSnXET58MF9cHyp/yMZoneMFgIR/kbfv8mJ94Wo5/EVaRlh4rQ0?=
 =?us-ascii?Q?V3UV/3zGfyS0SyIE4loknT8T/ZteECuLvdaPeszTNiBrX4CZsvyyeC5hXx7M?=
 =?us-ascii?Q?Bd20T4cjqlv4SYORoMpOlGtuaikAawlCfcj04gJ+agJsg3hcIDFx5z8VIrZt?=
 =?us-ascii?Q?GQoDDnApWbzchDMwdEDojC622lgiUn6A044xznlBfdDTU7uXD9nRPlefTz11?=
 =?us-ascii?Q?BWwnnz7RU1UX5HgxtU/YlmEXTp67C34VVNt+RsnQ3d4UC2AoFnb0ZBhgtd7E?=
 =?us-ascii?Q?F1BIFaI7N0Ida0aKR46BmUR8Ac0hbDn6OOX/IuRR+54LUo3aVZLkWu0spV/V?=
 =?us-ascii?Q?jYO8NDgt4w9GVKZDV62J13XvNlxl6AK2zHN9wAbFYsckcSxHjP0bM9cLiJaL?=
 =?us-ascii?Q?ArXzXSNw8RETWkk07AmNdfnh60lJjk0pUFpEM9BDOjt3quA8JbJfPitLtM9D?=
 =?us-ascii?Q?EfiR0Q93JpaqKHUwhFgtceTESRw53Kk+Vu5ItbQLcPaqDp+VTNa4fWWRHyUJ?=
 =?us-ascii?Q?HP0k+DnHiTvFlJ+qx4nWAb9H2yj6+llEiXTUQCLCfncVw2pPAB8QmVV5y6BN?=
 =?us-ascii?Q?TNPlmqTy5dqej/SAeB4Pml51GWl96BwDl79H8pR3flL80PjE24AKsQWdichl?=
 =?us-ascii?Q?ayN0hzI9YF0tDPrR7yYqgKe4hvfHXh5+n+4H2JpdfTYP34IRyliejwn6ifN9?=
 =?us-ascii?Q?CGcvz6GUwEiuSaV3eGpR+219O5qlxx8ZxI+1DduF5cHpYWBhvhv2domAHoRZ?=
 =?us-ascii?Q?X1chFpiFFlChVoU8hljK1jUf7m6ddRrxr1wfJfQPQNlqU4oK1lkxZTgNljGQ?=
 =?us-ascii?Q?rMs5RtI0IZs2l7Rkm99QvAEWcqKfbeVUn0XAM6EXhNhf9olxZFzFzlLb/hqs?=
 =?us-ascii?Q?6WXmZx2TssGbSUI4C9IogTOldDOqcwQJXMP8rMK5DC7ApZGwtAcwbs4Dow9I?=
 =?us-ascii?Q?sglZiPAzB5s1L/ACHeeGSAtTIPHzELezzrOYB5M61aid5mUNsh0ZeW9IvyyX?=
 =?us-ascii?Q?p8sIYXKuevd6riE1bFI7DeZnHyw0tPg3bOknIfxqe3sD9JrXLrCfJ5nlBx+8?=
 =?us-ascii?Q?SZ25Bq817Up/P7IyogkSRMQtGRX5S9XnRkHmn/rFdw4Qc+91CYF0TS1F7ERR?=
 =?us-ascii?Q?1sa3TeuuufwiElOSpsc8y1DEEsr2w7+IEQmgsZGM8c4nA8j1JnK1Cd+HZ6iU?=
 =?us-ascii?Q?mKhTjnrqyXwCHMWdWhLDqQUlwsiadGur6zMiXbp7PPUlffHuCIHzFFsZ4tKJ?=
 =?us-ascii?Q?i4bQw8cmJlnJk492HrKvb0pxBSh1o0576wnfKjQDSYSXO4JVGwoU5OuSC1N0?=
 =?us-ascii?Q?HEr38E8ciAS7hDZY5PpB44ViqZ/GNvUJeXJx8NkTyAZRQBqYjx2SiREi95Ay?=
 =?us-ascii?Q?Bs8ZxEkzflt282+9k4Bdg1W43FUIz7QIvwfYYqYXBUhfoeY9G5k1ms62cJ/m?=
 =?us-ascii?Q?4sPM0Tp7FVOQfoPol5EEWZ2GRUjDKAWu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cD0V3BpVoQq7akCwOalhvTEdh1BqI7dMxy0H1qrpCH1Rw12JL7aLYiPbRrAn?=
 =?us-ascii?Q?InxqeOeRK7gG+CNEjM1BqO/btuVQCXReGe4N57A1FncgvxL2ip8Ap2vCfMSb?=
 =?us-ascii?Q?HQicKn9ye6BMV5nxnUbJp++pyxQio1LmZtoDPFpvuXUiVQysLbh1ZYKaDTpv?=
 =?us-ascii?Q?OZGeyMsbPnCCRRCL6NiRMtwcFasGLWch8G2yAfJSViqRPghHXPSdMbf/V6ZS?=
 =?us-ascii?Q?a/SzkUvuGgq/5/fI2Q2o66Vg3hx9HO/4m18TZdLT8HPjM8RGAnwKXojzUB+i?=
 =?us-ascii?Q?VVFVhSe5nPRs5ik9kOkS5wW2IBTmSDpz5GQ5liK0lfQ8zB8aIQtbHtE+lJvQ?=
 =?us-ascii?Q?7ngH/yVOrVan+32PmoApsOx9ktCSatMkOfJigTCiuoWQ6L6iDXmpmOP1bMcy?=
 =?us-ascii?Q?7dVZ/HLOz9I9WvzE/q4XIq3k9vjSXwtIsUCCH6gn4AIonrXjRe687Qbn5aFA?=
 =?us-ascii?Q?5VQoIm3i4C8q6/24dYvDMXeNzpmgqrKsbGDsMpeX4xkknv5QqkNw924+FEk2?=
 =?us-ascii?Q?65r3LdGo1vjVYP41j6aHPkuraf96WQ4oqjjWAgf4jn9K/1GJImoTCYjYt1Th?=
 =?us-ascii?Q?gsGoX1pZxQvTpdPStE/KTrdgM9mues2hGKZ3xEpLH803a6mZCun9fwer8LUw?=
 =?us-ascii?Q?Ep3vi9Qp0ymGBvVIpOqBRXsNrx3yh3O9jd62BNjRPs9BQt94nhyn0wN9jad4?=
 =?us-ascii?Q?dZVYSMFZlXUpRVMj9hgsiA6CwtxQ2B7LcLzXrJ+R8fn7vGJ0vJXEi0Sj2ima?=
 =?us-ascii?Q?bwcADQ0jEE3Hofo6KC5zQL8cebulv/I7/hj8Pf2URMyE1SMCJ7R3uS8895y6?=
 =?us-ascii?Q?KGMCGetu9ZkJIU3yQ1FOA7vphQv6LBvdidXSczV2d6khcgFSrYH4nL0QlaWU?=
 =?us-ascii?Q?+va1OISXx26a1QcrlU4dloDLG725W9wkHNNOKWGUjPrO7ITXPHaHWFKrU+QM?=
 =?us-ascii?Q?ZXqH+3QE+C9RY1bonnajh9eikLRGu9TK5HB3Pd7s0o1LSmPY+NeeLxFdnsfn?=
 =?us-ascii?Q?/D+iB2Bbs1hxsK6p+THaDwhaR/yGvx+6bdWCj5zUFqYjH8bwCdRBpKEQijgi?=
 =?us-ascii?Q?Sf67BcBEqDKjfJsz81VFXnBpfFi+ipTDbh1OUOX9Y7vP7yAp5j60JUAPPHOt?=
 =?us-ascii?Q?FqNPC53+w1GieL9AiChZTRF/fZ+V3Nnyy6dBCsi96BfgQltiL6j5QkCirtn2?=
 =?us-ascii?Q?TayCjYGV1JF8EBiBoj3zsG6qyKd+018gu4Qzrzef2MD12cq/yQYglOwGKNl1?=
 =?us-ascii?Q?pB9oJc6G+KaqzX6MWkOfLirRYZj1dxdT8WdS4nW1sr7/eAkWNIQV63POntJJ?=
 =?us-ascii?Q?C/2C0vpjv4ghBbTkRW2aEXAUKHSd4zhuSQanGpR8DtbNwzA+pgP7l7vRWAkA?=
 =?us-ascii?Q?KI0tBdTI3uCBD3449WKLq/7TFCA/wbjQAdOzzYUxN7zye0zatGfhg9RFinGb?=
 =?us-ascii?Q?t6gXRc+DOWqA/rM5cxY/ran5jA/DVRbCRCYB2n3GitAesCgDhuPUyI47iblR?=
 =?us-ascii?Q?33b03eCjytpaDW6IdPI5W8omAW3h00NuzvI5THgsyUQ1UQAODjw6SATPBnhR?=
 =?us-ascii?Q?+OUVG+LcgpYxtuWm3RjKtdqyPRrXzJ0ihGT4B6k6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3027c205-61c4-4684-d3bc-08dd61301ad5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 06:35:39.2641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gdmASqLtflcXGOWo0Mhn0nARHDHMWCZz6Uc1dPGWkyJadh1aTLvamoAm1L9e/L0yGsqOYvJE9CraZsfS3jZd0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7026
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741761398; x=1773297398;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=amykVsjkgb9cMDN1oenN8uA7lF9F/oyc5SJgodOpzuU=;
 b=Q8guwhw3hTyJk3hRRZiF053ksIw2W8aQsWKHBZDgSjxA3/Jaa4g9Bv1q
 uO1NckNMEBEJHzKviCxjOY8NxL8Ai1wwmRQL72ESugYdFPinRc8dn3GZa
 tyzgNnuLslILRpTPBWReC5cJnUxeo6K0IdUycEXYPlfRqumKHT7VUXA+T
 1RXiLPyucTocTQar4UNaxtXP3JOqPKvg8RO3pB/c7z3PX4wF3Dc8kXumE
 YBECEtoZbNEe85ZeLInVf7haVMlLeCfEntjdXkgDutQhnRawz73lCPFXd
 TxGk/0KCvS91oFhE5Cvx2Yl9FHknj8kSL5KvtwEScO9Khblz1cSxHbBYL
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q8guwhw3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 08/15] ixgbe: add
 .info_get extension specific for E610 devices
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
> Jedrzej Jagielski
> Sent: Friday, March 7, 2025 7:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; horms@kernel.org; jiri@nvidia.com; Jagielski, Jed=
rzej
> <jedrzej.jagielski@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; Mrozowicz, SlawomirX
> <slawomirx.mrozowicz@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 08/15] ixgbe: add .info_get
> extension specific for E610 devices
>=20
> E610 devices give possibility to show more detailed info than the previou=
s
> boards.
> Extend reporting NVM info with following pieces:
>  fw.mgmt.api -> version number of the API  fw.mgmt.build -> identifier of=
 the
> source for the FW  fw.psid.api -> version defining the format of the flas=
h
> contents  fw.netlist -> version of the netlist module  fw.netlist.build -=
> first 4
> bytes of the netlist hash
>=20
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Co-developed-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  Documentation/networking/devlink/ixgbe.rst    |  26 ++++
>  .../ethernet/intel/ixgbe/devlink/devlink.c    | 132 +++++++++++++++++-
>  2 files changed, 153 insertions(+), 5 deletions(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
