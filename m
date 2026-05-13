Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aG24MFw7BGoqFgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 10:50:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB63652FEE2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 May 2026 10:50:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA01583DD0;
	Wed, 13 May 2026 08:50:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y07CmWn2UM6L; Wed, 13 May 2026 08:50:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D96183DCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778662233;
	bh=G4SE1U+Hc76OwRgBvy1CQREx1TvaomynzcQLc3/jAfQ=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3cmUYpP4sn4iN57yGJ4iE0AaPplPCt7K+hf3MFIn24An3ivLeo5SqhFuEjE9S1tds
	 45vhrrKEdfrTd4sznmbL+/CQOMossaKNZTE7Q0hbxobWfw/i3IOz7E1yR4aN2bHTpK
	 XPzcXNIpb5oaAEL8xHgCgFAfgu+ZVHIR7Ibc9Ed56hqV6IlZCW8gagY8VtTXzSVRvJ
	 7BakPhUp3AaSh0U0l4b3oKTxVeVfSX/XN7rj4eoOK6hexapSdsoL1HsiFpUA7PUmL2
	 XNi+9W08lBv96szMPVqUpDwES5dO1y8me76A3J1lRWfn9c9bGitbqWB6Sgj+Bd/idR
	 G5aWPPUnhaosw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D96183DCF;
	Wed, 13 May 2026 08:50:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id ADD80223
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 08:50:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 936EB40928
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 08:50:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3cYLtnxbAKlY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 May 2026 08:50:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=moriyax.kadosh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B3D1740927
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3D1740927
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3D1740927
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 May 2026 08:50:30 +0000 (UTC)
X-CSE-ConnectionGUID: 5UYfPHxbRM2qUN4+BqJLVw==
X-CSE-MsgGUID: 4WQvwosqSmO0/5QOfQerfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="78727421"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208,217";a="78727421"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 01:50:29 -0700
X-CSE-ConnectionGUID: gH8t1UC0RDKoa6Q/L0qjTg==
X-CSE-MsgGUID: AEULm6JKRgKfYgkk9anVXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; 
 d="scan'208,217";a="237926532"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 01:50:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 01:50:28 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 01:50:28 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.10) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 01:50:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nNFEkzGm29Xiw8QzWHY2PMDtWp2gPmLCTZZFYqpK+crbE9vlBo5acqnniuXZxQE7nhUw1EvVmfMRAVHYosrtTwtRtKa2Fr1ylFcIs59y3OZh0IsGdMMy728aCgeD56iNb53EYpf5hGhXadn7Vv1HX9Ag+WBnH4L7nUj3Sqhxd3NPhwQaphDl9Jj6ZKOX62+UjgOygKjL4OHrzI9juqIN5BGo7TTDXrugY0jFF1ilQPhr/8sYiIOSTyFZRcGni/wiFT8Q+ltUy4XhsFntvIgaspyFTFh5TmP4VFqGKqDk481Qb83Y9Aent/lruaQ0Z32gDwXq7Kv3QhOXd14LeosqjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G4SE1U+Hc76OwRgBvy1CQREx1TvaomynzcQLc3/jAfQ=;
 b=LGHmlrInxsNJBrmkt0a7FbNQ3DIdjpwqVpXoDFXUmwWTq8ABomyCe9ijH+3UVnNZrDlo311hxhR8l39gVTIvg+MCErqyFvIX8ftn2CiDbWyv6bP4GbueEvJJ6MaBIO08rj6Y/AxVnAcrzA8ldSdCEpiY3rj4WFCjh+LWiVobIeyz7iy98AstJjPp5ghAH0p/7BRBj3Zjki/w3GodlTAyu32Hixd7vNiZ7S50NRiCQNYghesOZ9JE74piwY1o95GE4RwCprdyxcp6TekGoJ/UV6CuJTGihc2q7FMaXYZIW0U5Ux+VH9ewA1y7FaxtgJrL4N5BTGdBIKL3CBq7aZpnFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB8448.namprd11.prod.outlook.com (2603:10b6:806:3a3::17)
 by DM4PR11MB5993.namprd11.prod.outlook.com (2603:10b6:8:5c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Wed, 13 May
 2026 08:50:25 +0000
Received: from SA1PR11MB8448.namprd11.prod.outlook.com
 ([fe80::38f:6a4:ce6b:d5b8]) by SA1PR11MB8448.namprd11.prod.outlook.com
 ([fe80::38f:6a4:ce6b:d5b8%5]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 08:50:25 +0000
From: "Kadosh, MoriyaX" <moriyax.kadosh@intel.com>
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Daiki Harada <daiky0325@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Kohei Enju
 <kohei@enjuk.jp>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use
 napi_schedule_irqoff() instead of napi_schedule()
Thread-Index: AQHc4rVMQVIf7SZMfUa4Ho4c7wLBoA==
Date: Wed, 13 May 2026 08:50:25 +0000
Message-ID: <SA1PR11MB8448C0BFDC4B167A564CCDB882062@SA1PR11MB8448.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB8448:EE_|DM4PR11MB5993:EE_
x-ms-office365-filtering-correlation-id: dd3d0492-0fb4-4d13-db86-08deb0ccad01
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021|8096899003|18002099003|56012099003|11063799003;
x-microsoft-antispam-message-info: sq7m5S6pMj0isXCTVE3JCM30F+kTb+IIyKakc46Fmr9TAdhgwcDHevl7dQLJZkU3xMRtSipxK9JLH1i9wJzcV5Fuqh5B3WJrQcyf+XyPdUC63Ai1Ef7jkFo48o3y91L/0l+37OY6uJLIga75vCjFgaeIfy5NpMhIZCA4Yyq0/wybGwOU1fTO4kCwRqdoIgje9mPKlPQgOB/LkhLyOSimKpKkp0RPHmdCoJS3tL+M5WZXcxNhH6uuUTGwG5fAlMbpxub2SSlJv00xKdnOk9HmHk88xYPLnjXy0APtKE1XWKFE/XeA5GYdmnFOv58RNwnrhJ1KemlzuYFXAadoP6Mf/uBaOqzaQPZN2GjGOu2bnuhWlGHZfTlrC2ot/ys3av66eOhcv818ITbFtgRw6biQ5AiIF5E3Z+30C6G0t1QC0FTiASknHgkuZxt0hFocuVYQ+J8Hz3YUkpSuNBABhkQeH1t0ZwpZYzi2Bf9LpxjjZ4LCYrnUE2JtCiqPsga2UJlOb7hhPQoWx/9BuWqCUInClkh7pdC6Npg+CFPTNX54ToTnAzotYgmZNKBgMzS0yN2Dki5aCebrbYvv2rTguOpSuhILhJFZdGzJfhyePI/jVB/kXY7WVhnCz3eFEBVz9MkwMP2a6mAKxe2arvTsIfkT1GmZSvhMtOTvCnM9lHefjCYFXZHOATNlaJMYvxy+Vj4fXVuuhtHwpeLC3T7QJ4n1QGbppma6twvVPHgShyvsYPZ1nbE1MQeZOqRwAm3Vb8cS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8448.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(8096899003)(18002099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?+DCQbdrY39MMklzsfIleVMmnglUlNBxjvuBvzTZ7slH5yyG2Pag91id0Iu?=
 =?iso-8859-1?Q?Jkdy53erpxGH4EQ/Y+VRC0Jpzn+O6NGNvSFb7LZajxQ8zTMpZU8VJkQA1V?=
 =?iso-8859-1?Q?mbjTh5mAVoI3Dvzd0aBtH2Fq/zU4Ev3hhXFAmPyJN7s0Ifw78d31qL25L+?=
 =?iso-8859-1?Q?8ZcLwPaiJGr/3T8hkSWV5OxyDmCVGek5vcDUYuqfTVN7VmGAcTB0PeLfb9?=
 =?iso-8859-1?Q?LwQ5JMUZ9bBDZ//WfG9YNc1QPikQzc21TDovL9a1CYbrB3Wmb//rVoaU56?=
 =?iso-8859-1?Q?NCETlfkPq6QfG4hGPjGRhQ7IeHcMOyWTPdUTUVr/8tgTyLaiRPiShMfpuh?=
 =?iso-8859-1?Q?Pz79vE/99wDGT9NMJK/Vq1uC4KNVG6xoScyWmLqZ5EEOtIdSO8rBR0DDGa?=
 =?iso-8859-1?Q?QZxtTiRQ5wdA9rbac7TsHucNU4Qim2diBLfTDyuM9CT0XDqeC41helh2P9?=
 =?iso-8859-1?Q?XT7VWdJcAF8QLz4kFCDhbic4yxosJOvFXLRPJVeGhjDecxGnZnx9ID7yRc?=
 =?iso-8859-1?Q?v3fGnj3G1mu0FEoo6DAehV6avwqpBXo30c/N29rmC5f2TRizkUUBz/ovob?=
 =?iso-8859-1?Q?4aaomEY+SNkmCM5+fX/e8tB33jxt+p1zeJco7k0e8BFGUjP4fPSRKdDpGZ?=
 =?iso-8859-1?Q?0znKjNMyG/t3QLWE9Ioy8TB71h9e49X2RYSVPHYi5777tUxoP49agzyrcg?=
 =?iso-8859-1?Q?9VUmgcq928A209puw16bTSqtPpfGtbDjilmaXCcdrfdBU4RIZGxQfEDHDB?=
 =?iso-8859-1?Q?Et1bzK1rpqLSkOiqgnSaUqC6pcAf364u/FgIzXM5OS5mvw/ayXoUnGP4hC?=
 =?iso-8859-1?Q?hDUUAqKVhRGwwG3nv96PSJFX4HiLgdr5SchRD9oXkz1PTBciOx5cDEH4xi?=
 =?iso-8859-1?Q?jDPKXj8JMKPZA6dGijMdxkUNJL1Rfd5p2xwoO/yJXhLuC1DaJnHn8OwOxQ?=
 =?iso-8859-1?Q?cVjQbaAWXHbx76I90psjrlFmQi3Pa7OIFkJHkso2TL26i1U/r1+jwuJlB8?=
 =?iso-8859-1?Q?cq9+uZAu+MVIEqpYmNQAeb5MhTTPaWxcv2o5THyIFAVRrmqBnobpl1xS2K?=
 =?iso-8859-1?Q?ND5ao5pBQ4QQew8cXfDUMXa8wTX9kFYuw2jTnrqR6LKyLFSonCQpAe756s?=
 =?iso-8859-1?Q?K88PIlpLe6LU8/Xa0cD8I0adnDfwPAAxThnoOivARX4+QtDkcZl026J3Ec?=
 =?iso-8859-1?Q?HDk+Tw5qWqSLqZzw/QbYqi1rr7iPYecSNQ3F5z417tfPKWn01IHVaGgsQ3?=
 =?iso-8859-1?Q?LASrIKFhMrB+STG+QPlmS4PWTGY1LZ/KjiSjPgFzjpOu+bsKXi+xiHSv4p?=
 =?iso-8859-1?Q?mIkE1kkMTHh8OY+qSWppAz0aI04Jid1G+MVhNLb7jqfRKCubVsp1dT6czu?=
 =?iso-8859-1?Q?Gvuj/UWynPQPYg9Ng8XKeXRpXfuCOPJtWUXDklwykM94hWKZOKGJSYkaJm?=
 =?iso-8859-1?Q?ZUgHnFQRb0hrhbj5sX08bNGIwCcM4/OtZtEFEicVTHFpyqSQVcmvc7ZLgI?=
 =?iso-8859-1?Q?UWxUML76yMbkpbJZzPd0omjgOwjdcdXB27nWy8kwJUi+G2+NvmybMs39pB?=
 =?iso-8859-1?Q?o68F8j49EmNyr8gp7z9B+0Ox50HXRqyUuuFKaOqZq/09SScSR9Goe8rZ4y?=
 =?iso-8859-1?Q?ezAUozldG8TymTht8eYyjojQ4YvsvQVgRf0O/VOwS3FnzUlGqUP1dHCWD9?=
 =?iso-8859-1?Q?jOqZ196mPO06/apAzDY3ghlq/IUAxiq93VkJPjAZZGx5loluHGvB+5EsDN?=
 =?iso-8859-1?Q?cRXlNRFI5Xb+qYikXLUkgR95iLcE0Pp7TDR7XKMYfab1HtK+7m8USVYVzN?=
 =?iso-8859-1?Q?KIf6VRhb4g=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_SA1PR11MB8448C0BFDC4B167A564CCDB882062SA1PR11MB8448namp_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: aXIjR/yAkjWFomalwBZiDpkF678JWEG8peQkajvmvsXcUhf3xsgWIMI/loQaboYkKEeSmf9/e+4w64CjXYQMgQmI2hEArJkCsr9wt3qhzlw4ATkcvIyauautm664dd5KqllGE0/IwY/WyJWHSCVgouzxp+uxdxPmaIVo3F0onuTHmxW/ymljB9MhCZOoHZ73dNiWbT9kdmMve1NVnk30TgWrYhStzUFkWtSYKr3EsEZ1zyJ+kC3dtEJR4MAI11jcR43Gqzismvid7cNNU4neq/NKe2ja7U8JFaPJRhjKKvlvptY9bJC4TNIQEfw3LS7cqiXLxk5XDBm0BKr4+e4CQA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8448.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd3d0492-0fb4-4d13-db86-08deb0ccad01
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2026 08:50:25.5280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kfo/EXE7Wfhrp/2gTulqXWMAmyu/YFyVSGe8a430fiLZG+lici+Goq3OE/TvzvkqpW2UvqK9tjo3z2QV/x7jNfb/i96XTcJGnlEC7s81LLA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5993
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778662231; x=1810198231;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=Wl0SJ697USZY/8QkM08TNs5CP7OQtW02KXnWCi0xvM8=;
 b=f2OQWboxzx9lmVTLZfnMv7/5KHympCmYPx/nrT4ruUOQXOuzO2jWO8zF
 18+aSMpHIE+WzAvqpUUWsJcsNOlpHGjDQaRyl80vZmvKL0f1igzhVG33d
 8ewJr+OKGb0dy6kORjmS+m9PUafmlRsL5uurDbkyOr46KRT6SLiUNuXZh
 1Hzh8QMUev0waf9RAkVNVZJ+d9gJRHzwngBewefic0GhU6DwYkrvOpmdf
 MyJ8AxNSoNMxvJuTVaGGAehktT/Gq8oNXNZzYauZLNwmy1AKvo4MbKMQE
 r2ck/IE8fVliUs+TrSTreDt2J515suSeaF1IuV9Xm6x2T02Ad93vQ/Nh8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f2OQWbox
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use
 napi_schedule_irqoff() instead of napi_schedule()
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
X-Rspamd-Queue-Id: AB63652FEE2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	FAKE_REPLY(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:aleksandr.loktionov@intel.com,m:daiky0325@gmail.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei@enjuk.jp,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[intel.com,gmail.com,lists.osuosl.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[moriyax.kadosh@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[moriyax.kadosh@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action

--_000_SA1PR11MB8448C0BFDC4B167A564CCDB882062SA1PR11MB8448namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



________________________________
From: Ruinskiy, Dima
Sent: Wednesday, May 13, 2026 9:32 AM
To: Loktionov, Aleksandr; Daiki Harada; intel-wired-lan@lists.osuosl.org; n=
etdev@vger.kernel.org; linux-kernel@vger.kernel.org
Cc: Nguyen, Anthony L; Kitszel, Przemyslaw; Andrew Lunn; David S. Miller; E=
ric Dumazet; Jakub Kicinski; Paolo Abeni; Kohei Enju
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use napi_schedu=
le_irqoff() instead of napi_schedule()

On 01/04/2026 10:53, Loktionov, Aleksandr wrote:
>
>
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of Daiki Harada
>> Sent: Tuesday, March 31, 2026 12:39 PM
>> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
>> kernel@vger.kernel.org
>> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
>> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
>> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
>> Abeni <pabeni@redhat.com>; Daiki Harada <daiky0325@gmail.com>; Kohei
>> Enju <kohei@enjuk.jp>
>> Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use
>> napi_schedule_irqoff() instead of napi_schedule()
>>
>> Replace napi_schedule() with napi_schedule_irqoff() in the interrupt
>> handler path in igc driver Tested on Intel Corporation Ethernet
>> Controller I226-V.
>>
>> Suggested-by: Kohei Enju <kohei@enjuk.jp>
>> Signed-off-by: Daiki Harada <daiky0325@gmail.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_main.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 72bc5128d8b8..712605886104 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -5688,7 +5688,7 @@ static irqreturn_t igc_msix_ring(int irq, void
>> *data)
>>       /* Write the ITR value calculated from the previous interrupt.
>> */
>>       igc_write_itr(q_vector);
>>
>> -    napi_schedule(&q_vector->napi);
>> +    napi_schedule_irqoff(&q_vector->napi);
>>
>>       return IRQ_HANDLED;
>>   }
>> @@ -6059,7 +6059,7 @@ static irqreturn_t igc_intr_msi(int irq, void
>> *data)
>>       if (icr & IGC_ICR_TS)
>>               igc_tsync_interrupt(adapter);
>>
>> -    napi_schedule(&q_vector->napi);
>> +    napi_schedule_irqoff(&q_vector->napi);
>>
>>       return IRQ_HANDLED;
>>   }
>> @@ -6105,7 +6105,7 @@ static irqreturn_t igc_intr(int irq, void *data)
>>       if (icr & IGC_ICR_TS)
>>               igc_tsync_interrupt(adapter);
>>
>> -    napi_schedule(&q_vector->napi);
>> +    napi_schedule_irqoff(&q_vector->napi);
>>
>>       return IRQ_HANDLED;
>>   }
>> --
>> 2.53.0
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>
Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Tested-By: Moriya Kadosh <moriyax.kadosh@intel.com>


--_000_SA1PR11MB8448C0BFDC4B167A564CCDB882062SA1PR11MB8448namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof"><br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<b>From:</b>&nbsp;Ruinskiy, Dima<br>
<b>Sent:</b>&nbsp;Wednesday, May 13, 2026 9:32 AM<br>
<b>To:</b>&nbsp;Loktionov, Aleksandr; Daiki Harada; intel-wired-lan@lists.o=
suosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.org<br>
<b>Cc:</b>&nbsp;Nguyen, Anthony L; Kitszel, Przemyslaw; Andrew Lunn; David =
S. Miller; Eric Dumazet; Jakub Kicinski; Paolo Abeni; Kohei Enju<br>
<b>Subject:</b>&nbsp;Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use=
 napi_schedule_irqoff() instead of napi_schedule()
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;">On 01/04/2026 10:5=
3, Loktionov, Aleksandr wrote:<br>
&gt;<br>
&gt;<br>
&gt;&gt; -----Original Message-----<br>
&gt;&gt; From: Intel-wired-lan &lt;intel-wired-lan-bounces@osuosl.org&gt; O=
n Behalf<br>
&gt;&gt; Of Daiki Harada<br>
&gt;&gt; Sent: Tuesday, March 31, 2026 12:39 PM<br>
&gt;&gt; To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linu=
x-<br>
&gt;&gt; kernel@vger.kernel.org<br>
&gt;&gt; Cc: Nguyen, Anthony L &lt;anthony.l.nguyen@intel.com&gt;; Kitszel,=
<br>
&gt;&gt; Przemyslaw &lt;przemyslaw.kitszel@intel.com&gt;; Andrew Lunn<br>
&gt;&gt; &lt;andrew+netdev@lunn.ch&gt;; David S. Miller &lt;davem@davemloft=
.net&gt;; Eric<br>
&gt;&gt; Dumazet &lt;edumazet@google.com&gt;; Jakub Kicinski &lt;kuba@kerne=
l.org&gt;; Paolo<br>
&gt;&gt; Abeni &lt;pabeni@redhat.com&gt;; Daiki Harada &lt;daiky0325@gmail.=
com&gt;; Kohei<br>
&gt;&gt; Enju &lt;kohei@enjuk.jp&gt;<br>
&gt;&gt; Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] igc: use<br>
&gt;&gt; napi_schedule_irqoff() instead of napi_schedule()<br>
&gt;&gt;<br>
&gt;&gt; Replace napi_schedule() with napi_schedule_irqoff() in the interru=
pt<br>
&gt;&gt; handler path in igc driver Tested on Intel Corporation Ethernet<br=
>
&gt;&gt; Controller I226-V.<br>
&gt;&gt;<br>
&gt;&gt; Suggested-by: Kohei Enju &lt;kohei@enjuk.jp&gt;<br>
&gt;&gt; Signed-off-by: Daiki Harada &lt;daiky0325@gmail.com&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;&nbsp;&nbsp; drivers/net/ethernet/intel/igc/igc_main.c | 6 +++---<b=
r>
&gt;&gt;&nbsp;&nbsp; 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/drivers/net/ethernet/intel/igc/igc_main.c<br>
&gt;&gt; b/drivers/net/ethernet/intel/igc/igc_main.c<br>
&gt;&gt; index 72bc5128d8b8..712605886104 100644<br>
&gt;&gt; --- a/drivers/net/ethernet/intel/igc/igc_main.c<br>
&gt;&gt; +++ b/drivers/net/ethernet/intel/igc/igc_main.c<br>
&gt;&gt; @@ -5688,7 +5688,7 @@ static irqreturn_t igc_msix_ring(int irq, vo=
id<br>
&gt;&gt; *data)<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Write the ITR value calcula=
ted from the previous interrupt.<br>
&gt;&gt; */<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; igc_write_itr(q_vector);<br>
&gt;&gt;<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; napi_schedule(&amp;q_vector-&gt;napi);<br>
&gt;&gt; +&nbsp;&nbsp;&nbsp; napi_schedule_irqoff(&amp;q_vector-&gt;napi);<=
br>
&gt;&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return IRQ_HANDLED;<br>
&gt;&gt;&nbsp;&nbsp; }<br>
&gt;&gt; @@ -6059,7 +6059,7 @@ static irqreturn_t igc_intr_msi(int irq, voi=
d<br>
&gt;&gt; *data)<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (icr &amp; IGC_ICR_TS)<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; igc_tsync_interrupt(adapter);<br>
&gt;&gt;<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; napi_schedule(&amp;q_vector-&gt;napi);<br>
&gt;&gt; +&nbsp;&nbsp;&nbsp; napi_schedule_irqoff(&amp;q_vector-&gt;napi);<=
br>
&gt;&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return IRQ_HANDLED;<br>
&gt;&gt;&nbsp;&nbsp; }<br>
&gt;&gt; @@ -6105,7 +6105,7 @@ static irqreturn_t igc_intr(int irq, void *d=
ata)<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (icr &amp; IGC_ICR_TS)<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; igc_tsync_interrupt(adapter);<br>
&gt;&gt;<br>
&gt;&gt; -&nbsp;&nbsp;&nbsp; napi_schedule(&amp;q_vector-&gt;napi);<br>
&gt;&gt; +&nbsp;&nbsp;&nbsp; napi_schedule_irqoff(&amp;q_vector-&gt;napi);<=
br>
&gt;&gt;<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return IRQ_HANDLED;<br>
&gt;&gt;&nbsp;&nbsp; }<br>
&gt;&gt; --<br>
&gt;&gt; 2.53.0<br>
&gt;<br>
&gt; Reviewed-by: Aleksandr Loktionov &lt;aleksandr.loktionov@intel.com&gt;=
<br>
&gt;<br>
Reviewed-by: Dima Ruinskiy &lt;dima.ruinskiy@intel.com&gt;</div>
<div class=3D"elementToProof" style=3D"font-size: 11pt; color: rgb(0, 0, 0)=
;">Tested-By: Moriya Kadosh &lt;<span style=3D"font-family: Aptos, Aptos_Em=
beddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;">moriyax.k=
adosh@intel.com</span>&gt;</div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;"><br>
</div>
</body>
</html>

--_000_SA1PR11MB8448C0BFDC4B167A564CCDB882062SA1PR11MB8448namp_--
