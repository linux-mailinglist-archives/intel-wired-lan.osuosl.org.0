Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 841D2972C22
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 10:29:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 007E3607FF;
	Tue, 10 Sep 2024 08:29:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I-MZzUBf2pwP; Tue, 10 Sep 2024 08:29:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26CA460811
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725956965;
	bh=i9LSNpIyNfMvjnje34eqFo3HKftE5/FaIqF5J+6hysk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z80uatqxSiWK28bwGhR5g0Hz/OqD+NDIftZhfNLMe9yZF6Nru88cW/4/le2cS6siH
	 o+N1HJzHQaaONGRpVW/zPNP+6mx6uloxOBopfRI0BbWPQPS0L2SwlQc94YstiAklCG
	 6/VoKQjpUHEaa8ETPwbQU2eOF0hN+fEp+0j5ko0ZVgLf1S7NkOanwXYOa/Hj9bFuug
	 uFAAtZMwM3BbAoTPcs+yfRujMX44/Mum1mSQBSyQaTy0GVcbT6dr/j2sw7hmpqBOqC
	 Q1i21wKoGBB9g5W2e5UbYZGythKmcZSifubSamQ00sljkA4/lht+p12M6xOpOLMDEy
	 8KvYVZkdxZb8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26CA460811;
	Tue, 10 Sep 2024 08:29:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4D9ED1BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 08:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 39CE480C11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 08:29:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a92gXD_N03OU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Sep 2024 08:29:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8D4FC80BF8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D4FC80BF8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D4FC80BF8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 08:29:21 +0000 (UTC)
X-CSE-ConnectionGUID: qlmbyVY+QJG1SmdHMTsirA==
X-CSE-MsgGUID: GTnGkftBTpKpePYpxHaX7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24630486"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="24630486"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 01:29:20 -0700
X-CSE-ConnectionGUID: bFaU3ZbSRzO9Yk4xY/4RtQ==
X-CSE-MsgGUID: ACUbAI3wSjO5nTe4ElavgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="97771399"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 01:29:20 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 01:29:19 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 01:29:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 01:29:19 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 01:29:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IeR0RUx1qcDbte9FckrfGk7w5tFC9xjW+LuDcVq0z/M2e/pG00/LN+K6cRDs0N5sfSPgFVumXPjioOpmXqsqRxu3vUDbVGadOi2xZ7rzgab76LxhXGHwIseErcQHFyASCei9LnLYVSBjD9fdE/3UF7yooMKepOepwXNnOrsJovVh+oiYOQ29Vl8BE/BGKO/8S2axrrKGHxQV1VpX/GsfnWxNmGG3qSH+5l2S7FauNkw3wZp48800w78t+Ozpdgdy9mA3rPckAVO3J6ACXqP0QInGtz6yF0Seitv3L/0bXgvOc9fVc05+UCz5OVr7tI6vVf4GdpSdNDp5jBAmzd9Abw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i9LSNpIyNfMvjnje34eqFo3HKftE5/FaIqF5J+6hysk=;
 b=InBTga7knM/a4dvUcXjnd7J/xoMKZrlH7c8eY5GJcvjyLpkb7Ry+I9PXMIqercV+D2x7A6WWk1K8Xou2+cBmwHf5p5zdA/EKkyd5YgRuU0qATQP36Kjbh2ragGxGIea22GB38HfHia80+Bluc1agOOROabqTihT/9lJS1P8f3TFHEFepGGMfgXhiZKughgvsxUoLw2XOgWnGDvYg8DsSmNHZVIeKCrlOSk2ytFHxwAPkhw4yDptwdgcc9mXI8kdfiGLFQsidL9va7MWIcr69+ucd1Jg//vk7l3m7T2iNoNSJRegOEEOFHlZ6HjccuPNCXARNQclgJZePEAeoB/ArwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by SJ0PR11MB6741.namprd11.prod.outlook.com (2603:10b6:a03:47a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.20; Tue, 10 Sep
 2024 08:29:16 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.7939.017; Tue, 10 Sep 2024
 08:29:16 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [PATCH iwl-next v3] i40e: add ability to reset vf for tx and rx
 mdd events
Thread-Index: AQHa+xLFE+hHXP8jHEmej6nLA7aeI7JGgUAAgAo+iaA=
Date: Tue, 10 Sep 2024 08:29:16 +0000
Message-ID: <SJ0PR11MB586686ED6AFA882486F4EF05E59A2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240830192807.615867-1-aleksandr.loktionov@intel.com>
 <ZtdqfLfHYvEKPE+r@boxer>
In-Reply-To: <ZtdqfLfHYvEKPE+r@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|SJ0PR11MB6741:EE_
x-ms-office365-filtering-correlation-id: 2745d99e-f3c0-41c0-7652-08dcd172a8aa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?0eVWa85TGKGrXypPC5ap7u3fg1a2oXkSVniUKwvHuUP+3w/tvnflzFLuLSPm?=
 =?us-ascii?Q?5rgdzUuMmB/YIaM33W9wxHSqKYfGRmC2Ja8nxf7WQhY+UWTcGatIkyT8MCpV?=
 =?us-ascii?Q?v0Qd0+h+gLPdPFAo5JoObWYBncfOkc1o5x5BqGRNzhef5FljrRSWe5BSTV2M?=
 =?us-ascii?Q?e1SnK79CgVxRch+bKeV6hBnVlH2vzWGQTDJ3UNZuExlHBaFaEKcBOr/LaBA6?=
 =?us-ascii?Q?knwqrCkiiB+aiY1Vr7Z7VolZUaKqwTIY7rra2dfg1laJ1UkyOdba+CLfq3K5?=
 =?us-ascii?Q?iyVroXeADcZPLA8yutAfMMIW8UmvWpRgViEQnmhXgeHxi5EowhpDrXrOPw/E?=
 =?us-ascii?Q?vabTVAq1Y7idBMGUXoPW81Weo/ZQpDu6VO9h/QyroOJra8EtbBaRHJ1FCWV+?=
 =?us-ascii?Q?ZrHdQRH5D8S6vGgkU2U9HOZwC0LGTR/YCL+VxIxy9JgbOcsHsxeo661JdUuG?=
 =?us-ascii?Q?1sbkvB++QCizX2dv9DNpxbBjJWUcyhVYDbwgJWnTfwoZMgWXgUpoPzcRIyN4?=
 =?us-ascii?Q?fgpqbTbuvGmYvvcrxyNgyzAvoHzsJ75dx8cV9OkPvS93zIYs4BC3MQPpWrPT?=
 =?us-ascii?Q?VKT9R5ZnPBy4qFLBJZA+2keL+FtNFd9iGSS6iQo/KO9mkdskltG/gQy6dtAN?=
 =?us-ascii?Q?WsTvI18ocI1pb/ARD5QxCf3ex1zWQ+l33BLQOlO/w/ziODQzE6y0Iiae7rO4?=
 =?us-ascii?Q?LnSe35wMZCu2Hb0hVuhIQY2tv2cgAEj5cLAGlLNBk7zL9dtVUfVlN6brMC7G?=
 =?us-ascii?Q?lquJsOyez5/9pO3SJ9U/WBXDLHgByaBScvW08onRVES2uu6L5+OUP8mY46LK?=
 =?us-ascii?Q?+ut3FwYwMo3BwYNpRwuil9DU0u4D6dS5GLT4xGfF3h/CxpOa/dVDRMuGtkML?=
 =?us-ascii?Q?uvQ6JVuhdEBGDLHZSqj9fTBeb14DLH5ltpcrh71UFURCEF+28uLYp7kJEAiH?=
 =?us-ascii?Q?t7BjbhezK+D6wd8gs0wJ3m6f2R/nU21UGBBQmy215QHOkxLmrG8DeW+lfwL3?=
 =?us-ascii?Q?yp904PIXscno2ZvhhOIGFx4RsGcElTTNBkwGmGcWSrUmYDamX5Fy/hilXKdF?=
 =?us-ascii?Q?zYzFzDG+zL7s2xn5H47Bttpprw6QcRk97vfi0vAaNZmFfmE54lwbgG3YnWda?=
 =?us-ascii?Q?PqaGWLXzC0uPl7IYVXoJ2V7pIq37NiiwQXAfPF1IUM9Bp2vllvKnPDFfj4zp?=
 =?us-ascii?Q?F3O1Bev0yPsdJZAd1R5sTT7YeZwfNhdZD19bnMiafFR6+V8G0inrmapaCz71?=
 =?us-ascii?Q?/G1uUK6JIjTckpTGxl/Yd2gy13kVAPqdFMzCr/mUtVG7Myu0DRWoJlXPzKYk?=
 =?us-ascii?Q?TWSwSJQgicBQFxeLd4NM4ayjiZ7U0+wBg+eR6ZA8grnZ4V5TVZgcwDYcfwS0?=
 =?us-ascii?Q?hyZZXnAV8pOveMIDjGhx91c3siq8JD2JUdr5srj0i39FUKnZ6w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E8UqmCbqCtuVpKB1cgPYvVj+ePA8rg2nDziWsYSVGf5gqGmvhCDkroqMehJJ?=
 =?us-ascii?Q?pZRPVBflJwumfA89RzRBKu0bVTv5ka0GDYe+gXL3r3Jd7JE81mV5CIDEIShe?=
 =?us-ascii?Q?3JQkh5bDYsUxlxD4x6M1B3wsBoB8umNmRth9a53mUx1aRb1aXNVPwNijB4iO?=
 =?us-ascii?Q?K1Xug/urvZYwmnLdECfIe8IZy3h7RP4gGOA5CKB3tYD5ePt0T/ZR/VeZfUWE?=
 =?us-ascii?Q?Pi84KVWZOYr4O4AqH+Ugt+xfFu6KiXA+1NO/P7RDyIj7Kc2D3852IhX7RCXW?=
 =?us-ascii?Q?Mobnq22Jb+OB0DyoQGDAGQ1Kx9SFpYYgORFa4Je3kt4bz/O40kLaXQEg5/i7?=
 =?us-ascii?Q?AxU48Z5cC6MP68k0GxWh+RkBIY+5/7OJoR7g3A1st7T8qiKS9MBU7QMUfLTw?=
 =?us-ascii?Q?qEgXKlCUOSgQNgqScVhu5SnPChjBUiLPdHABgxGO0e2k16bgedozhRoo32Qw?=
 =?us-ascii?Q?Pgz7QE8Jc6NXLF/kGVqvqlGWd4Oz1yy2U+rsFhwaRxsrXCGwuPcO1n+d5osU?=
 =?us-ascii?Q?dFEuoXkM1hqeuHSCFRA9EO/d5D2RLc0XJgUZu33FGVZNvPLHi9+pxXSRySFW?=
 =?us-ascii?Q?KsC36y8VxoiqBGE16afEFKoC9UIsdSLXdT49cgyaHRhX4+wvjKfRAANkEFap?=
 =?us-ascii?Q?9gsTfXaEWDLNL5lWrhbS2Ind1miJE3JU84X0n/LpHYS380Okn3oj8q+MoxI9?=
 =?us-ascii?Q?RFT+tRpv+mtPLfIPH8KrI6jwscTNVuabnc1fSktjyp8V2iF1GvbAaE04dmyP?=
 =?us-ascii?Q?AGfHwdfzdILYcPQh6WrXdQ5SERkunI3eY+tT2ijz5hJRI47qQeZk3rwNRTE/?=
 =?us-ascii?Q?bJglDNwldrLc+iLtBzAlfVYjmbVI/AgxXPPZtkaJV3iycJ208XwE7ed1Wplg?=
 =?us-ascii?Q?4QzVs6SF9167My1MRQ0AsTTtZBqvDBOngvhmZ5U1yl9SrK5E0y5Ir+dlio4D?=
 =?us-ascii?Q?5m/0lDYlGF6Nf702GrMV7drLrarnsEifu/nlS5KnzGvcj1dNaNxdCgiDmlMj?=
 =?us-ascii?Q?fAmth86ajMlorfCPmzyOsHz7FWctB+MNzxWX05+djhAY13qtKsg+jE7sre4y?=
 =?us-ascii?Q?JgJto/EhmYpkhQTIEDjJzjYSosIYOuNDrbrYVKg0mK8dPpJyk5Ih1jA6fAiO?=
 =?us-ascii?Q?Cgs2rnT5EiTm6tyt6mNOWKjd+cGAG7+lhBFh4ISKtj/+lP+gsUsZqJWlBi8F?=
 =?us-ascii?Q?TjWF2ZwvGGhU/UscHq436EQ2nLsrS7S8nquQz9E9tisEG/b+rrq0K86PFTmN?=
 =?us-ascii?Q?BJIgLB7pMWfGgLldpMdqsugcEzTiklWaJlDiHdB9gAlQHGqCXgl9GaZyr+7M?=
 =?us-ascii?Q?IKeQpxnze6qtpbrin2ObJ4JcRCCrdXdzZ4GtKGXuv8hgqISjIk0yWKGuZEM5?=
 =?us-ascii?Q?o3wJfAqd566g7tbw5P9y/jhn9uxAjGO4vLcV0+Xu5O3qCW5EWm/nkEKL15og?=
 =?us-ascii?Q?ovtP0iYKhzGQcEAwzMFFCPG+ViGeQ6bqMLYmNgjhSWAuRlFAIs56XXpLJ41P?=
 =?us-ascii?Q?THdzg9ZKTBkIcig/Qg2rxhM5UObaLbDICO4NA93WTHY5kikOUOjFsLXQ4Ryy?=
 =?us-ascii?Q?trazUhb+2rJ0oPGj1H2imFetx5JK6RDXJzaa5g1ZnrylhKW5jFrmK09waVza?=
 =?us-ascii?Q?QQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2745d99e-f3c0-41c0-7652-08dcd172a8aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2024 08:29:16.5791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vsFzVluOOskZKvxIlqZjTXSxMT+GHfXATQjLdBg7FpAhTiNR50LiGVd/4g1tbD+xx7oRaQdH1sauFR2RF6ahHLaalYfhxsOA+IAfVwjG+LM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6741
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725956961; x=1757492961;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aAgAO2Fyin02J72ZJMWJBX3fHDHDlEeU387/mIjS0fw=;
 b=R6SqssOl7KwfKkwv1lMnxarG2F5aMFX6xudTPRzgGEyhEMc0xrQPXBC0
 hGtg3jErkx5Jk5ozC7nnt2NZn5kj4FsYnh1X2oYx5/n2E2EHRniYZJ2Qb
 S4XpDC1gcCcWtmtmdowMsJADgbXBDVVSqBht0r+KbsEutl4f3ejguy0Lm
 FQEh0y2KpKkgiUNI1BIAEsggoupY1uIvi+FhnXlLkmI3FHiqt/8nUrMrE
 +RCFspV4yHRAkLhJjq9vBMe0e5MbX/cIsU2bYOMQqqdl7y2RJK4fQYgGK
 IeMEeEKpAaVdKlb7zuxI41zGe8iRFrTByR9jko3Mc8qZ7BZ/h35njNMUQ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R6SqssOl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: add ability to
 reset vf for tx and rx mdd events
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Sokolowski,
 Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Connolly, Padraig J" <padraig.j.connolly@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Sent: Tuesday, September 3, 2024 9:59 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Sokolowski, Jan
> <jan.sokolowski@intel.com>; Connolly, Padraig J
> <padraig.j.connolly@intel.com>
> Subject: Re: [PATCH iwl-next v3] i40e: add ability to reset vf for tx
> and rx mdd events
>=20
> On Fri, Aug 30, 2024 at 09:28:07PM +0200, Aleksandr Loktionov wrote:
> > In cases when vf sends malformed packets that are classified as
> > malicious, sometimes it causes tx queue to freeze. This frozen queue
> > can be stuck for several minutes being unusable. When mdd event
> > occurs, there is a posibility to perform a graceful vf reset to
> > quickly bring vf back to operational state.
> >
> > Currently vf iqueues are being disabled if mdd event occurs.
> > Add the ability to reset vf if tx or rx mdd occurs.
> > Add mdd events logging throttling /* avoid dmesg polution */.
> > Unify tx rx mdd messages formats.
> >
> > Co-developed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> > Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> > Co-developed-by: Padraig J Connolly <padraig.j.connolly@intel.com>
> > Signed-off-by:  Padraig J Connolly <padraig.j.connolly@intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > ---
> > v2->v3 fix compilation issue
> > v1->v2 fix compilation issue
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e.h        |   4 +-
> >  .../net/ethernet/intel/i40e/i40e_debugfs.c    |   2 +-
> >  .../net/ethernet/intel/i40e/i40e_ethtool.c    |   2 +
> >  drivers/net/ethernet/intel/i40e/i40e_main.c   | 116
> ++++++++++++++++--
> >  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |   2 +-
> >  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  11 +-
> >  6 files changed, 122 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> > b/drivers/net/ethernet/intel/i40e/i40e.h
> > index d546567..6d6683c 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> > @@ -87,6 +87,7 @@ enum i40e_state {
> >  	__I40E_SERVICE_SCHED,
> >  	__I40E_ADMINQ_EVENT_PENDING,
> >  	__I40E_MDD_EVENT_PENDING,
> > +	__I40E_MDD_VF_PRINT_PENDING,
> >  	__I40E_VFLR_EVENT_PENDING,
> >  	__I40E_RESET_RECOVERY_PENDING,
> >  	__I40E_TIMEOUT_RECOVERY_PENDING,
> > @@ -190,6 +191,7 @@ enum i40e_pf_flags {
> >  	 */
> >  	I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENA,
> >  	I40E_FLAG_VF_VLAN_PRUNING_ENA,
> > +	I40E_FLAG_MDD_AUTO_RESET_VF,
> >  	I40E_PF_FLAGS_NBITS,		/* must be last */
> >  };
> >
> > @@ -571,7 +573,7 @@ struct i40e_pf {
> >  	int num_alloc_vfs;	/* actual number of VFs allocated */
> >  	u32 vf_aq_requests;
> >  	u32 arq_overflows;	/* Not fatal, possibly indicative of problems
> */
> > -
> > +	unsigned long last_printed_mdd_jiffies; /* MDD message rate
> limit */
> >  	/* DCBx/DCBNL capability for PF that indicates
> >  	 * whether DCBx is managed by firmware or host
> >  	 * based agent (LLDPAD). Also, indicates what diff --git
> > a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> > b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> > index abf624d..6a697bf 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> > @@ -721,7 +721,7 @@ static void i40e_dbg_dump_vf(struct i40e_pf *pf,
> int vf_id)
> >  		dev_info(&pf->pdev->dev, "vf %2d: VSI id=3D%d, seid=3D%d,
> qps=3D%d\n",
> >  			 vf_id, vf->lan_vsi_id, vsi->seid, vf-
> >num_queue_pairs);
> >  		dev_info(&pf->pdev->dev, "       num MDD=3D%lld\n",
> > -			 vf->num_mdd_events);
> > +			 vf->mdd_tx_events.count + vf-
> >mdd_rx_events.count);
> >  	} else {
> >  		dev_info(&pf->pdev->dev, "invalid VF id %d\n", vf_id);
> >  	}
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > index 1d0d2e5..d146575 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > @@ -459,6 +459,8 @@ static const struct i40e_priv_flags
> i40e_gstrings_priv_flags[] =3D {
> >  	I40E_PRIV_FLAG("base-r-fec", I40E_FLAG_BASE_R_FEC, 0),
> >  	I40E_PRIV_FLAG("vf-vlan-pruning",
> >  		       I40E_FLAG_VF_VLAN_PRUNING_ENA, 0),
> > +	I40E_PRIV_FLAG("mdd-auto-reset-vf",
> > +		       I40E_FLAG_MDD_AUTO_RESET_VF, 0),
>=20
> you don't tell us that this is implemented via priv-flag in the commit
> message, would be good to include info about it.
This flag is implemented for other network adapters like ice, we thought it=
's kind of standard.
Can you suggest what exact part to change? Please be concrete.
Thank you

> >  };
> >
> >  #define I40E_PRIV_FLAGS_STR_LEN
> ARRAY_SIZE(i40e_gstrings_priv_flags)
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index cbcfada..28df3d5 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -11189,22 +11189,102 @@ static void
> i40e_handle_reset_warning(struct i40e_pf *pf, bool lock_acquired)
> >  	i40e_reset_and_rebuild(pf, false, lock_acquired);  }
> >
> > +/**
> > + * i40e_print_vf_rx_mdd_event - print VF Rx malicious driver detect
> > +event
> > + * @pf: board private structure
> > + * @vf: pointer to the VF structure
> > + */
> > +static void i40e_print_vf_rx_mdd_event(struct i40e_pf *pf, struct
> > +i40e_vf *vf) {
> > +	dev_err(&pf->pdev->dev, "%lld Rx Malicious Driver Detection
> events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=3D%s\n",
> > +		vf->mdd_rx_events.count,
> > +		pf->hw.pf_id,
> > +		vf->vf_id,
> > +		vf->default_lan_addr.addr,
> > +		test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags) ? "on" :
> "off"); }
> > +
> > +/**
> > + * i40e_print_vf_tx_mdd_event - print VF Tx malicious driver detect
> > +event
> > + * @pf: board private structure
> > + * @vf: pointer to the VF structure
> > + */
> > +static void i40e_print_vf_tx_mdd_event(struct i40e_pf *pf, struct
> > +i40e_vf *vf) {
> > +	dev_err(&pf->pdev->dev, "%lld Tx Malicious Driver Detection
> events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=3D%s\n",
> > +		vf->mdd_tx_events.count,
> > +		pf->hw.pf_id,
> > +		vf->vf_id,
> > +		vf->default_lan_addr.addr,
> > +		test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags) ? "on" :
> "off"); }
>=20
> Unnecesary code duplication, two functions with printing the very same
> statement with a single different letter.
But it's easy to grep and find as required by linux coding standards.

>=20
> static void i40e_print_vf_mdd_event(struct i40e_pf *pf, struct i40e_vf
> *vf, const char *rxtx) {
> 	dev_err(&pf->pdev->dev, "%lld %s Malicious Driver Detection
> events detected on PF %d VF %d MAC %pm. mdd-auto-reset-vfs=3D%s\n",
> 		vf->mdd_tx_events.count,
> 		rxtx,
> 		pf->hw.pf_id,
> 		vf->vf_id,
> 		vf->default_lan_addr.addr,
> 		test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags) ? "on" :
> "off"); }
>=20
> 	i40e_print_vf_mdd_event(pf, vf, "Rx");
> 	i40e_print_vf_mdd_event(pf, vf, "Tx");
>=20
> > +
> > +/**
> > + * i40e_print_vfs_mdd_events - print VFs malicious driver detect
> > +event
> > + * @pf: pointer to the PF structure
> > + *
> > + * Called from i40e_handle_mdd_event to rate limit and print VFs
> MDD events.
> > + */
> > +static void i40e_print_vfs_mdd_events(struct i40e_pf *pf) {
> > +	unsigned int i;
> > +
> > +	/* check that there are pending MDD events to print */
> > +	if (!test_and_clear_bit(__I40E_MDD_VF_PRINT_PENDING, pf->state))
> > +		return;
> > +
> > +	/* VF MDD event logs are rate limited to one second intervals */
> > +	if (time_is_after_jiffies(pf->last_printed_mdd_jiffies + HZ *
> 1))
> > +		return;
> > +
> > +	pf->last_printed_mdd_jiffies =3D jiffies;
>=20
> why homegrown rate limiting?
Because it works! And other ideas probably didn't.
What is your suggestion exactly? Please be concrete.

>=20
> > +
> > +	for (i =3D 0; i < pf->num_alloc_vfs; i++) {
> > +		struct i40e_vf *vf =3D &pf->vf[i];
> > +		bool is_printed =3D false;
> > +
> > +		/* only print Rx MDD event message if there are new events
> */
> > +		if (vf->mdd_rx_events.count !=3D vf-
> >mdd_rx_events.last_printed) {
> > +			vf->mdd_rx_events.last_printed =3D vf-
> >mdd_rx_events.count;
> > +			i40e_print_vf_rx_mdd_event(pf, vf);
> > +			is_printed =3D true;
> > +		}
> > +
> > +		/* only print Tx MDD event message if there are new events
> */
> > +		if (vf->mdd_tx_events.count !=3D vf-
> >mdd_tx_events.last_printed) {
> > +			vf->mdd_tx_events.last_printed =3D vf-
> >mdd_tx_events.count;
> > +			i40e_print_vf_tx_mdd_event(pf, vf);
> > +			is_printed =3D true;
> > +		}
> > +
> > +		if (is_printed && !test_bit(I40E_FLAG_MDD_AUTO_RESET_VF,
> pf->flags))
> > +			dev_info(&pf->pdev->dev,
> > +				 "Use PF Control I/F to re-enable the VF
> #%d\n",
> > +				 i);
> > +	}
> > +}
> > +
> >  /**
> >   * i40e_handle_mdd_event
> >   * @pf: pointer to the PF structure
> >   *
> >   * Called from the MDD irq handler to identify possibly malicious
> vfs
> >   **/
> >  static void i40e_handle_mdd_event(struct i40e_pf *pf)  {
> >  	struct i40e_hw *hw =3D &pf->hw;
> >  	bool mdd_detected =3D false;
> >  	struct i40e_vf *vf;
> >  	u32 reg;
> >  	int i;
> >
> > -	if (!test_bit(__I40E_MDD_EVENT_PENDING, pf->state))
> > +	if (!test_and_clear_bit(__I40E_MDD_EVENT_PENDING, pf->state)) {
> > +		/* Since the VF MDD event logging is rate limited, check
> if
> > +		 * there are pending MDD events.
> > +		 */
> > +		i40e_print_vfs_mdd_events(pf);
> >  		return;
> > +	}
> >
> >  	/* find what triggered the MDD event */
> >  	reg =3D rd32(hw, I40E_GL_MDET_TX);
> > @@ -11248,36 +11328,50 @@ static void i40e_handle_mdd_event(struct
> > i40e_pf *pf)
> >
> >  	/* see if one of the VFs needs its hand slapped */
> >  	for (i =3D 0; i < pf->num_alloc_vfs && mdd_detected; i++) {
> > +		bool is_mdd_on_tx =3D false;
> > +		bool is_mdd_on_rx =3D false;
> > +
> >  		vf =3D &(pf->vf[i]);
> >  		reg =3D rd32(hw, I40E_VP_MDET_TX(i));
> >  		if (reg & I40E_VP_MDET_TX_VALID_MASK) {
> > +			set_bit(__I40E_MDD_VF_PRINT_PENDING, pf->state);
> >  			wr32(hw, I40E_VP_MDET_TX(i), 0xFFFF);
> > -			vf->num_mdd_events++;
> > -			dev_info(&pf->pdev->dev, "TX driver issue detected
> on VF %d\n",
> > -				 i);
> > -			dev_info(&pf->pdev->dev,
> > -				 "Use PF Control I/F to re-enable the VF\n");
> > +			vf->mdd_tx_events.count++;
> >  			set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
> > +			is_mdd_on_tx =3D true;
> >  		}
> >
> >  		reg =3D rd32(hw, I40E_VP_MDET_RX(i));
> >  		if (reg & I40E_VP_MDET_RX_VALID_MASK) {
> > +			set_bit(__I40E_MDD_VF_PRINT_PENDING, pf->state);
> >  			wr32(hw, I40E_VP_MDET_RX(i), 0xFFFF);
> > -			vf->num_mdd_events++;
> > -			dev_info(&pf->pdev->dev, "RX driver issue detected
> on VF %d\n",
> > -				 i);
> > -			dev_info(&pf->pdev->dev,
> > -				 "Use PF Control I/F to re-enable the VF\n");
> > +			vf->mdd_rx_events.count++;
> >  			set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
> > +			is_mdd_on_rx =3D true;
> > +		}
> > +
> > +		if ((is_mdd_on_tx || is_mdd_on_rx) &&
> > +		    test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags)) {
> > +			/* VF MDD event counters will be cleared by
> > +			 * reset, so print the event prior to reset.
> > +			 */
> > +			if (is_mdd_on_rx)
> > +				i40e_print_vf_rx_mdd_event(pf, vf);
> > +			if (is_mdd_on_tx)
> > +				i40e_print_vf_tx_mdd_event(pf, vf);
> > +
> > +			i40e_vc_reset_vf(vf, true);
> >  		}
> >  	}
> >
> >  	/* re-enable mdd interrupt cause */
> >  	clear_bit(__I40E_MDD_EVENT_PENDING, pf->state);
> >  	reg =3D rd32(hw, I40E_PFINT_ICR0_ENA);
> >  	reg |=3D  I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
> >  	wr32(hw, I40E_PFINT_ICR0_ENA, reg);
> >  	i40e_flush(hw);
> > +
> > +	i40e_print_vfs_mdd_events(pf);
> >  }
> >
> >  /**
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > index 662622f..5b4618e 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > @@ -216,7 +216,7 @@ void i40e_vc_notify_vf_reset(struct i40e_vf *vf)
> >   * @notify_vf: notify vf about reset or not
> >   * Reset VF handler.
> >   **/
> > -static void i40e_vc_reset_vf(struct i40e_vf *vf, bool notify_vf)
> > +void i40e_vc_reset_vf(struct i40e_vf *vf, bool notify_vf)
> >  {
> >  	struct i40e_pf *pf =3D vf->pf;
> >  	int i;
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> > b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> > index 66f95e2..5cf74f1 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> > @@ -64,6 +64,12 @@ struct i40evf_channel {
> >  	u64 max_tx_rate; /* bandwidth rate allocation for VSIs */  };
> >
> > +struct i40e_mdd_vf_events {
> > +	u64 count;      /* total count of Rx|Tx events */
> > +	/* count number of the last printed event */
> > +	u64 last_printed;
> > +};
> > +
> >  /* VF information structure */
> >  struct i40e_vf {
> >  	struct i40e_pf *pf;
> > @@ -92,7 +98,9 @@ struct i40e_vf {
> >
> >  	u8 num_queue_pairs;	/* num of qps assigned to VF vsis */
> >  	u8 num_req_queues;	/* num of requested qps */
> > -	u64 num_mdd_events;	/* num of mdd events detected */
> > +	/* num of mdd tx and rx events detected */
> > +	struct i40e_mdd_vf_events mdd_rx_events;
> > +	struct i40e_mdd_vf_events mdd_tx_events;
> >
> >  	unsigned long vf_caps;	/* vf's adv. capabilities */
> >  	unsigned long vf_states;	/* vf's runtime states */
> > @@ -120,6 +128,7 @@ int i40e_alloc_vfs(struct i40e_pf *pf, u16
> > num_alloc_vfs);  int i40e_vc_process_vf_msg(struct i40e_pf *pf, s16
> vf_id, u32 v_opcode,
> >  			   u32 v_retval, u8 *msg, u16 msglen);  int
> > i40e_vc_process_vflr_event(struct i40e_pf *pf);
> > +void i40e_vc_reset_vf(struct i40e_vf *vf, bool notify_vf);
> >  bool i40e_reset_vf(struct i40e_vf *vf, bool flr);  bool
> > i40e_reset_all_vfs(struct i40e_pf *pf, bool flr);  void
> > i40e_vc_notify_vf_reset(struct i40e_vf *vf);
> > --
> > 2.25.1
> >
> >
