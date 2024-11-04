Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 743A69BB22F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 12:04:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24D49405D1;
	Mon,  4 Nov 2024 11:04:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K5zg7JphRMa3; Mon,  4 Nov 2024 11:04:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B048405A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730718252;
	bh=mfNt2ooNV9dbkyalqHpWNGV+1oumndUOnHe37PeIyOU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Gm6et6N68RwFcKBJgFPItVdu5atfnFFoUviH0lyo/DH3GKF8urK/zNEBp+bqO6uMq
	 4fXiaOoHJFSCyIo4xd2P7WKmS2HCtpZI2FiaVCapxwZbBeuS2heN94Z+kWnIuwAe8x
	 ILh0dUXD6cDVR71tPKJNGfpQmJxGNYhOutM/HEhFnn/nm8H0nmuvfR4ba8Gd5F0Ocj
	 /h4ZU/oXezfFt4s/ZhPobuRv0Sfy5eJBXKztwtmWsemhB/Cs0NuBY9MVAOiKpONrfA
	 d02GG1zEtdVMpw/TXkEKs8puhKsuPDAC0evlZWTGPsCtMP6K+vGEM+F5eoP4ndf6QP
	 EfmKn20anX2mQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B048405A0;
	Mon,  4 Nov 2024 11:04:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5347DB8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:04:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4035A81008
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:04:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WUmwyzdEpz1e for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 11:04:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 516F081007
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 516F081007
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 516F081007
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 11:04:09 +0000 (UTC)
X-CSE-ConnectionGUID: 4RhahAT4SYGfoVSzAXlnLw==
X-CSE-MsgGUID: G1756vx1RluDlwjdv9/c3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30586148"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30586148"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 03:04:02 -0800
X-CSE-ConnectionGUID: t4UgUWIMTJ+rVG/vY/9h4Q==
X-CSE-MsgGUID: F4lvZqPiR368nuQ9Ry/qrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="114407483"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 03:04:02 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 03:04:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 03:04:01 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 03:04:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lz1an7ZzVjXUcMSBGfY0yE+qlwHMRmk/J9ClDpPE9Sf+BoWT8W04FeZSmoyhItVUpDjjQKS2J8q2BxI27ZguP9ZSsK+bSFKAkHCDNXvmqvrvieELE2loYYdEgUJ0hRg7ifALSKHzkR+PEu+DcF6YkehjY0Sm660aWOfJrBP7deeNTZJAc8mAcfQ384vXc02AhVaJevA+3O0bzhbf9t/llA0x5EpjLm5hRwNChYdBotEy3tJmknagPYpgBq1aIvbJymE3eoAC99uRq3YqLfNDj5rYWeMTiQ6Nnx1jTSPtk3SM35/d4d+XHfsDdoC1DKYW8lOnxTixC19IvcPfJNpYtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mfNt2ooNV9dbkyalqHpWNGV+1oumndUOnHe37PeIyOU=;
 b=Cdm49m63e2eNZ3+KZFrJRwbI9vC+4N+RncXlZjabB5G/QjjFlNe8yxQEV845XTcPxTMiX7IX6bG6YsN0zpxB/TnnMN2LiQWK4ME2CBJ6+dCJa8yfQfy6smdo0zi40irhz5t6CpgqU9RegSIk85ShGaABsHqVD/u3xLw3BSgO1pY5au/oKXbZ2uF8GlWZj35FesIni38Jng95VmV6tn17/Q8NhGHe63fI3PZhfZoHmO6AT832gsCRwGez3r2dNGlOUEpwNpLpW5SmJX+5R40GaejnO78yrmEZZmBZk/C+lWey0E0lf2ExiNKf39LZnqDWj+Xvw4zhX5iS6w8mxrLybg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by CY8PR11MB7082.namprd11.prod.outlook.com (2603:10b6:930:52::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 11:03:57 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 11:03:56 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 10/14] iavf: define Rx
 descriptors as qwords
Thread-Index: AQHbJEUwoCjZT/7nAUe6+x9DbyDWh7KnCdnQ
Date: Mon, 4 Nov 2024 11:03:56 +0000
Message-ID: <SJ0PR11MB5865C399EC13E596DA501CC78F512@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
 <20241022114121.61284-11-mateusz.polchlopek@intel.com>
In-Reply-To: <20241022114121.61284-11-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|CY8PR11MB7082:EE_
x-ms-office365-filtering-correlation-id: aab93021-29ef-4f39-5668-08dcfcc060e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?tB6FE59lZwWMcljiwXNyuiHEFgywZ038OzzZgmPJPQhDMrMioaYbUu7U4mZU?=
 =?us-ascii?Q?ilJweeU8wy6+AnNAImm5i61IVT026UQmvjSwTI6aEPYhv5J4x7qhGPapI0p4?=
 =?us-ascii?Q?KQmPvC3/Bm3UXDBAwZPEFQ84kDddbtWMVPklKHYPvPAwasGMz1nw7cK89VW4?=
 =?us-ascii?Q?Y9emRsqwbaxplz3cwG+AgRRRqBghRb3WMXagDZnYKmq03OWZWgYJJQEW+bMS?=
 =?us-ascii?Q?y4AVDyqjc8QmAyUUmOcg5YDjBkwimmfC93pCslgk/uBSFtx2X2GOpROMvfK7?=
 =?us-ascii?Q?Bg1Ojbj3gtl1oEpLf9K46kkdXlOwd7qX7Cq6zvmpZEsagguoYZhs2IHRPdE/?=
 =?us-ascii?Q?pp8In2cQkeUxwykKf5cOnaV8dGq+s9D2BHcyoXqGFnWaO47pf2Z9wVs6Wtnz?=
 =?us-ascii?Q?GsvJII8NAVLps0/IsqofKCHaoEGHTlqdcRjZOCbA1e4a3jGXT6NsgihUU8tN?=
 =?us-ascii?Q?cFmtuIogpyu2E3WnfJ5arn4zisJH50vlHa+dJCpDNXxm4tb8eJf7hzZZC8rS?=
 =?us-ascii?Q?ZGXeiNj/WQUlxoozi7Yysr/qgr+Ie2a6a+Tir/HzCBMb1icUFtv3i4sfNTkj?=
 =?us-ascii?Q?D6qXEO2XmeMWhBaJ1q2WUiVZLHv8ZQ9AAAdm7pi8iwJS3Iuk4oRLyutA96t1?=
 =?us-ascii?Q?Ayox0Caal4ORbaB8WGdZqs3ncquDRGzRAQmdZDp/wiQhsXFerOf5WPfpNMil?=
 =?us-ascii?Q?Nyr7fx18nyC+C/HFI9iNQwlM5Bnb/eTZStuLz9tmNv/fmnFGB9yjLlvgldoZ?=
 =?us-ascii?Q?RNzNjTXeBEFSo0UevKW9bvIvzuqYwtaKP7wa2oqRnynAPRjULV0H+uZ6EBES?=
 =?us-ascii?Q?2NMgm42/TjDGnbtdxsQp/qsHKnNRytKR5eUQbCklmHaOjVJPiZGDIu8PxUyN?=
 =?us-ascii?Q?tpdfCM4Fm3OJnivppHYoLiufIyQm/9rlWZluCFCjGhHze57TB1r/Kb1kba5Z?=
 =?us-ascii?Q?EdUJpTBUHcli4eFuHUb2biw7pLyf2NwFuRhez5GSGJxb0c7VecoHpCzwC0Nb?=
 =?us-ascii?Q?JWDeUaXTPlmHW78N+zTDe9Mpd8+pT02fvP/yEhTL+hjFO+tjCd/Em2kB5nEK?=
 =?us-ascii?Q?l/LXaZxfzO53E8e1S8hV/PwBLRe8ksKatoAFZlRvq9No1boA+cCCv7Ar7h98?=
 =?us-ascii?Q?Hjpj5IdmNl94q5NyPqgdNed554ImMAq/fx6k/hj4SJfnr81Fr+gu5kgVd46m?=
 =?us-ascii?Q?9W44SgcdFwISFqq5UodERIUeIxUJndLIXncW27GsWypVUUuPue83kGnayS9Z?=
 =?us-ascii?Q?xGTGpIY9zJenrk74XzSGviONG1Hckgv67XS/y6FoN9xk6byCOwPYPq1a/79v?=
 =?us-ascii?Q?A/r1vp1wdCGhL6ENocA6SdPss39Wx6JFU+CQoiA7vtbGHOlz5iZuUYCp0bSw?=
 =?us-ascii?Q?bURE8/c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7QZ/JELlkM2La45Z++bjDcQHdYTkWub7bafyi8PUyF//OkBREJ5o4CQZJEBF?=
 =?us-ascii?Q?Tvoxzq7cT74LDDPxg0LqVb94/Nj9y1d2uEbVze3CYNZTBMPZs/soFq6Wl0+D?=
 =?us-ascii?Q?BwLfxNXysIskOEInjKQO+hLpa1yBWsCr0QGYoCZs06uGooW5o/15857ZrekH?=
 =?us-ascii?Q?RcewuI4TnIhIRR44zOOPC8B6OKBh9vb7Hx6fHqhFgQgQE1Y6yRWvT/xCO67F?=
 =?us-ascii?Q?9Hkk5e0mjK5NEz1kIXXpuMQKEsdm0fG6Fc65duJYPj5zGzVcl0VkvkzJlEfJ?=
 =?us-ascii?Q?oetbFz/qDUF5Lg5tpj7rhsrklWtptIZJhGIDwk8LcFia9ixlXGfUdyXCmn0b?=
 =?us-ascii?Q?PGLedQx4fXy5nq2GrIPMYDvwIwQ6o5oqSYSZQA2//X8VQexN2r2Dm0m0ANvR?=
 =?us-ascii?Q?aZWkSIKx8ZHpIIYxQWeY8jBfZ1n7JTanKcxA8jL8Cpr8iTPMS/lIb2ywqXR6?=
 =?us-ascii?Q?Gkr6b1eEa1sgZqbjqAGATxJkLe8u6qRmbBxZH6wWMPdC0jNLNqrFsvOthwxz?=
 =?us-ascii?Q?BsRgLIqUpIh2VfMoiIcFM8nJx1oiZ0q+k9i1+T9+3vNdn6VfNWngto7ZD5Nv?=
 =?us-ascii?Q?ItM7UjyvBRNu+yLeMxqXUGzpajxNSx2QSsvcgqdEEACieqYwYJTcZzIquEzr?=
 =?us-ascii?Q?jO59xJAsFt3TpW7HcAvt967ANZsKyk6eDIXXujD10jQodwHb267tSDxL3Mbw?=
 =?us-ascii?Q?KXYZAbHeZg/k0Z1qnhnxO/GVel7KZynY+TwRbj3N1Mxigp333i00RZrhcd1F?=
 =?us-ascii?Q?FGyhqxjndcrw5AUtxmSS7sElh+oqiELdD3rsIYi6B97nALJzh0OGioqKDFX1?=
 =?us-ascii?Q?6yX9eqh44BaxBmkp1OoCZGjy0DaEq1bkY8nL9VP0yBDBsi/1+m2havPbnk30?=
 =?us-ascii?Q?CHP/6uUItgWTxxclmhwSDunnFHJYoKU/GjWPvkAqT1eH5bWn/9jAxLAu58Ac?=
 =?us-ascii?Q?s0To0kq2KYQZJ5HTRkvUelvFRQI6IxlH+ctVgqPJdEkA792KNijYUeseaTWF?=
 =?us-ascii?Q?gAHAk0KVOKW7N2txgDS4G7x0rFAdfizGBOWZAuiXWeeFPNLVzE4JPkqe0T6O?=
 =?us-ascii?Q?7Lkcj/XfBkaJt2tqR234OD3nrVej4p0/dG8Ik/v6Yyb5AQz9H9NKVMqb/U60?=
 =?us-ascii?Q?gHZ7zn2/OTSkJL/l9sapl7BHDs45GGzkiHYuelQEdD+PTNxXdXAwyQYacjsZ?=
 =?us-ascii?Q?Keg1qgKvnwvDpdr47sgfJ8hweRxgVm5PKi0v7CddrjLQakw3yyAitjUIV9HR?=
 =?us-ascii?Q?8aiftz3WMIOzTj2AtSQitoD/oTAM1Y1jKVIDUdBjQ9wg3ZXSVW4WuP8G8r8b?=
 =?us-ascii?Q?zareDM6vTsoj9DeqTFQJ9NvwzqLsEexz/Hyab/ioQHbJdRv48sRIvC1sFtPX?=
 =?us-ascii?Q?cjL2pvZYD8Bxkg9YZKrZ47puc5H+J70rC8b2CY8iczbUtBDCg1T1doouUS5y?=
 =?us-ascii?Q?TMgYlWDRufXKJUpp43Z4dRKXtLlAkQShStajXp99M8JKrHrw7rxquunTMnCa?=
 =?us-ascii?Q?bTpvNcDIxOtHdsGuuziZQQwh6TvZON40VwO/hp7mW4wbf3F7VWxI8j6QNChb?=
 =?us-ascii?Q?4qLYtwOa0F4YnuJUYCk6v1A3UbZpoaRucx8eyCxau5n3gOAhAvNO6wB9ksuH?=
 =?us-ascii?Q?JQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aab93021-29ef-4f39-5668-08dcfcc060e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 11:03:56.9033 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gMBrIaVroprdZdxwB1RimV1vQysb/rgojQbk0+6lg/6VDamBgVhsT1os56ogg/yw2MR8oK3i6Jlu0Jb9YwAZNlYn5T5vKxCpOLPVMnfHoAw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7082
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730718250; x=1762254250;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d4u9cFfkDCxGCMMRrMxOBsbipKBP+TuHcBzx4E0fOak=;
 b=XELuS1dbSHaZucCekV+hCZMVvvmu+/+uDK1ON3B2CBezkKCErpmw2xK2
 J8O5wMDCbPpmeQmd1k2EkwMm+nKDZ6OxD9I5NY553UXt5ThtFj0UvJGk/
 qFk8kZnXM/9ZSTb8omTRjpMH5FII453pfdhhuLuZAcmlHF8YGmzXOLxjI
 VsAtvzz53V3p7OO6OhW5aFfxjEq/PZ0NqNpjSteRFZc1lyoCC24rjseHU
 +3pech7aG03l3/HdFgS8vYPykDca7uPab3p95NWD6mWyDu4/Wo85SBlvc
 Qf3nkp9Eo8OOVxEEDk+liStmsrvsTMAv2vrls2Mx+CkT49ZxqzGOIYHMg
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XELuS1db
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 10/14] iavf: define Rx
 descriptors as qwords
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
> Mateusz Polchlopek
> Sent: Tuesday, October 22, 2024 1:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 10/14] iavf: define Rx des=
criptors
> as qwords
>=20
> The union iavf_32byte_rx_desc consists of two unnamed structs defined ins=
ide.
> One of them represents legacy 32 byte descriptor and second the
> 16 byte descriptor (extended to 32 byte). Each of them consists of bunch =
of
> unions, structs and __le fields that represent specific fields in descrip=
tor.
>=20
> This commit changes the representation of iavf_32byte_rx_desc union to st=
ore
> four __le64 fields (qw0, qw1, qw2, qw3) that represent quad-words. Those =
quad-
> words will be then accessed by calling leXY_get_bits macros in upcoming
> commits.
>=20
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h       |   2 +-
>  drivers/net/ethernet/intel/iavf/iavf_trace.h |   6 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c  |  56 ++++-----
>  drivers/net/ethernet/intel/iavf/iavf_txrx.h  |   7 +-
>  drivers/net/ethernet/intel/iavf/iavf_type.h  | 117 +++++++------------
>  5 files changed, 77 insertions(+), 111 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index b6e52992e270..9de3e0ba3731 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -83,7 +83,7 @@ struct iavf_vsi {

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


