Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3298939C34
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 10:04:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 962FF80F1F;
	Tue, 23 Jul 2024 08:04:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LRNdNxV-wEei; Tue, 23 Jul 2024 08:04:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B73D780F36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721721872;
	bh=PtnAWKh7bAwB7L6gE11Dg9fbMT0DVDv+n8V2vcIqJSU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ukYZpEYjw9x4IXK0RIT8+b2AXzP3FIoQk6zmGRNLNNSk2yFM95K/6ss32E5iK+Pvy
	 XiPPgeaYKWPrviyLmfeiQLyBrYRUGSpUCtsSoB59aie5cYjOrS9eYkzmp2kmplWdsc
	 m9OWpf9OZ8pnlJ7K9tYZ05D/i1hiJM3p+R+GDb7Na+jXQSKvUpvG/59V2b4XWFjYql
	 zkngA/isjT9Fnhk2B1DYrFeTTdP710CJaQ4azdk5A4wRbYk/ukAX3rcjOM4yANIEwF
	 DzJtbLGJFtYbli76cOQZYGWeV4OgqjgvdPnn9FSBTCj1448d/z6CK8gatztlYVXyJb
	 qBmekYaV791Dw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B73D780F36;
	Tue, 23 Jul 2024 08:04:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90FE41BF29D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:04:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D8396072E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:04:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WQU_SyNAKsVf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 08:04:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A671A6071D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A671A6071D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A671A6071D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:04:30 +0000 (UTC)
X-CSE-ConnectionGUID: dNBgqYPjSFuTe6n9pqPfWw==
X-CSE-MsgGUID: RlJMiqh6QASgHpLd1V8/xA==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="29920133"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="29920133"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 01:04:30 -0700
X-CSE-ConnectionGUID: VSSt8dTNRVO9L5JZkozaHQ==
X-CSE-MsgGUID: 3HCQ1xWdR9aU52haDLkm3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="51818195"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 01:04:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 01:04:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 01:04:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 01:04:28 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 01:04:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V2aRCYZiMiUc/5LWlh7Ves1BzfqLQzVcQqQBdj+AF0zewXrdQR7Ob+mA87ZW0bVc4SMYA3ixMuqPPw6RtxS+e0wmFapgyE0rDpj4rbDKdS2ClsXi+8d8KSz6Sb7LjsJZASDfrOd/rze5Aj7Rj/Z7/sUqqoGIjHp0lPT95Myyx5VTfMlnflXMhyLyMiVeRcAzzIzShx2PkZu9OXwu+E4H/72pDXTSJHrmcrXeCaVIrqJ3ZmNNcUiK+JcWGzTT46DeNETI5e5k6hQUw2/zh/tVm30x/zKqeJy2iMv+NbIXiNKUfwsx0Uy5X6lqtUdV+X1c2sI+W6c/D0dNwEL77f4uyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PtnAWKh7bAwB7L6gE11Dg9fbMT0DVDv+n8V2vcIqJSU=;
 b=RD/GkmyaXj/B8C0th95u4EFOxD4rmfopShqay5R/wYjbrTsHE3kcSTxa4EIvXoZFQGGZ24s1+wlqVFarMDvBFos1aRG289If/4qkmw8K73LsvvhS0hTG+MYUmvEBUtkqgdgwrmEUodbaKl5fgFuSRNDwxJJ9r0WjAc3Ox8xRDgxQMQVg8qW8F0trdg5d5aQsN7XVkMYzYhdyFgpc77N4zr3z/WuSbZuATQbiGX96QDmSgTMQMkTraft3KTtlMi/kB+6T9OKz4pkc5JDrfzTU1NjNNKqWsUG5N4GtxwxNnxg/lLYOgCLb/d4XrypNJulwEwLQmE0MuQz7PhEi0wq6vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DS0PR11MB6471.namprd11.prod.outlook.com (2603:10b6:8:c1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Tue, 23 Jul
 2024 08:04:25 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 08:04:25 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 10/13] ice: add method to
 disable FDIR SWAP option
Thread-Index: AQHasGgUjPaBsmEi20ikWudr544AHbIETOTw
Date: Tue, 23 Jul 2024 08:04:24 +0000
Message-ID: <SJ0PR11MB58657E6AD1880696AF9686B38FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-11-ahmed.zaki@intel.com>
In-Reply-To: <20240527185810.3077299-11-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DS0PR11MB6471:EE_
x-ms-office365-filtering-correlation-id: 83545426-6f1c-445c-1017-08dcaaee1159
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?KyjKlXzhwOl1VFJr0QjtL3Vi2FgJVC7b2gY1v1DQp59Q8pzUM6tQ02jqxu1q?=
 =?us-ascii?Q?tteboLN12YNZq6ybAIw84x9B1tuVq+5goWJN7Yr+loVcIpoTzsY/lto4x+tg?=
 =?us-ascii?Q?PJwzmzOH1P9Da5B1USS+OiYZ5NUc9bctOObXOWzLXLfkYZAFKw+FCAM5N8r1?=
 =?us-ascii?Q?KTXpykuX0hQBpJZJm1bPKv5yhzU79ePyihe4xSq6i0BpPPEDZwyB6hVYK3hf?=
 =?us-ascii?Q?8t3PFafG0gSVDAgv9JeE8w0qjvtZSI5SnqCaykVmlZYBJWOA4IbjEjBWpY1c?=
 =?us-ascii?Q?2oMbwUZ+EKnAJZ25junIF4FBYwRRKH88U+6i/t1n/R8hnPqqpF0DwuABAkGP?=
 =?us-ascii?Q?3/J+gmnvMVJsVDXXVUvkCueGsIbKFXWMkQuQIi4DLx6+LBP81dUvLBzal33O?=
 =?us-ascii?Q?AqXAR1e4kegVgu33ZhPdvWX+mCXSufakEQe/8RL7NCvF0ASVDY6aJe8wAIqG?=
 =?us-ascii?Q?KlOtThUf84L7qLEuwaSc96OlYiTlTsOW8/H5o+lKyXsWlDzzirXPyykXwvkm?=
 =?us-ascii?Q?azUyxk+kRy5EE/F4BE4nsgetTzzEUF0lgfwTn1SBTt7VEzSkeKOTy1N9frDz?=
 =?us-ascii?Q?AqlRZtVFxQZrFcPWAWBDcFcDLOtYEmzuQ/QWBE3T9JMR1WMVgK8LwKrEC6BP?=
 =?us-ascii?Q?0ci8AYuuuSpVaaZ6o1i7SVNBpXsaZ5yPFPuFmxRYtkS6he2LHeuiGXFoiUeQ?=
 =?us-ascii?Q?3bCXEs7LBbvLlqjId33UIbMYfaPYkvWn0Xi8vuDE6gSxOeWISk3ozR6ADqPx?=
 =?us-ascii?Q?POUNbLDxd6+pm7E10+Wb0KpDvpqjT4bNpNAk4xWYngPcX2pF5u1Feh/uRg09?=
 =?us-ascii?Q?nwmcq+tZFXQj812U6VLgn4NbryL4USAR1385oSSl2ER15xNRyxJyU8YsBf/z?=
 =?us-ascii?Q?o8NdpZtYa3RvQDc/9iP+FhyQROssNhjlNVEXy88GrUmg1wojKRottzNt9WME?=
 =?us-ascii?Q?teRSZY5yJrgdiWagR7wdgbRak51p0lEQbVhW4CWXEjdhoKy+cNnIn9Xifsow?=
 =?us-ascii?Q?O0x75cXoOZ1UjcAnPg+p2JKU9ozlXcv0LLFnL4/BjYGk7trHnPOImQTVsi3T?=
 =?us-ascii?Q?BhPPFUyHmG/Fg+ko/1nWAg02kayIsFNHfz+VCebdMdukA1DmbsbqYw12ST0a?=
 =?us-ascii?Q?JsAs+2XO2s3cNteen+Xq3+XuEflUI1FFit5JgCZwifSZ8yITRyv5hjtDKGEn?=
 =?us-ascii?Q?rxzi/oHLjKoX/d6G0w9EpjO7FEMyqI8UhPbJgDM8DJ1J7x/SUJxs/pGxAzYH?=
 =?us-ascii?Q?CNyoiDe5XuhMG+FfvoUqYl1pt3Sx9/2/L40BgzYg4raPz7IQJPjNl+bP8ker?=
 =?us-ascii?Q?gq/F8+eUiS3UbDttGYM7gINhlhfLkXdsnU5ZAwVKADosWZ3LpQDW+1HpRTOM?=
 =?us-ascii?Q?3BKzrBWijyVHS1MfReRdGHF7S6Mp8Ws7jl7Mz9v1rTJoHtbNuA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dw31bkYEi3PXf4sJaa13/rF3MP9r0fE9r9h7r2N/JuvxR3YZsq9DnHS4+99Z?=
 =?us-ascii?Q?7YPrZ4a34TL5GWRixBrZlNcRIbWrcQndwKtaKStvc1iW3ESKJsPhgWamjXk6?=
 =?us-ascii?Q?BVzPgzy8y++DhqW+Dg0Z8C+/1UU4ITLRcxIfRuyhMUBI/flIf90FAujjoiDj?=
 =?us-ascii?Q?N9VqMesBJk9J5124xZt8TRoRUdRRF00rl5MrOH5vd2ve+YipKx7iagj5nWtD?=
 =?us-ascii?Q?c1vQs7r21WJnsu6qIRbuNYkXkPcCqxiVvEu9vQRHdhMMs83bSSXLQWNp8vJI?=
 =?us-ascii?Q?8AKgJjlxhKJNrpZGNAkmqPZlgEg9F/Xhhh3NGz+bqhOhX7x854sw8tgkKEjj?=
 =?us-ascii?Q?d+m6dk+e6fBJirKu6vH6hjyQy8HhzNaH5v3YthRCT0JObSaPO0fNEg6v9MDQ?=
 =?us-ascii?Q?L4mT/ldJOi/MUUtUNl4eAIsA/Hz1v3W+fOY3k7/NWIth+6OqF67LUKC5fquM?=
 =?us-ascii?Q?w19kfaRTxZ/oN0chSAvYPq2dbZpeZpirssm/x/Bh22hNMmQeWxa1RuCcZt7T?=
 =?us-ascii?Q?m+LAFJvgNJvPC6LPIv5QLSr2wD87bdAUbE6fBeDKF6GQ5/Tsz28BetyXjUYT?=
 =?us-ascii?Q?08m2tf+mbfnqeyXPrFpJ5/3klJ1ctO63/bAJs5WAbT933NYFaFfWGAVt84Ev?=
 =?us-ascii?Q?s5QfR2Bynae5CAYxlB55i1Jgs7jAQp51PVkxUGlaLoDPxK2wT6FLrFEg4YaY?=
 =?us-ascii?Q?Kv3JAH9lbpCW4gjzmqQ3k+tgMb/Gljxht6lleSp6R/oJKZf6eLQiNfvgPa23?=
 =?us-ascii?Q?VfqbIvjzQcoXcN2UFKwxSZZgESaBbU6+fzbPvQqC+Sar44HRK/XW/c9IjyTv?=
 =?us-ascii?Q?8t7malWOopsCURTQtq4/DFlNzWvWUlQ73576XTTRgaqdCKiKPuYhS5Yk11Ok?=
 =?us-ascii?Q?PQm5+KeYBMQ/d9ovblHFJduLW7nVD/N5XqvDfzpVkv32TqxBrN2uo428OYiz?=
 =?us-ascii?Q?Zbo3jlg3zQu1nrQm9UYLaMUj/G8CXGVuuVSdl5lpT+9KDgmiX+VMplY4gqAq?=
 =?us-ascii?Q?cBIcAVCv7/5Gs/89C/sVITrKLsHdu57ppPhcxyO8EZqD4o9O9NQOy9e4UKgR?=
 =?us-ascii?Q?slbwdgVJ7sYMTrT8VXShFhZkjLCJwN9zB+XB71olV/WQqnySiEYiBvf8K+ia?=
 =?us-ascii?Q?CRxjvYvCRgTNp3jo7c7uHlitOK1vpTmOBGf5u9zb8ak3UfyC1xggruL/N3y5?=
 =?us-ascii?Q?9r7Z3XnFIAr1N6YeTd1y24+tKYQLQoxL4Qry93LKTRsnL5k6lnSkKROYy4eb?=
 =?us-ascii?Q?s7KBf1ML31pRYjnFgNQ39UpuFKBHpeJK5NQEGFKioi+PeYANwORngeInFds/?=
 =?us-ascii?Q?3Rh0GsNKg9Ejkz/F3FNB3ChY9PMGzZJjAqUDsIZg5bIpwmIJxyCVbvFLXKsr?=
 =?us-ascii?Q?Wt7PDqOqY0fL6e8Sg61/0KKibQXqIGwEnPAKdKhZBtqkIPERPaUeo/EA62rF?=
 =?us-ascii?Q?RLr1XM0i4Hl8KizFD+GX3ITvDwLpgZanL8IQu+2tL10fRKI7asbhCoAW+QJj?=
 =?us-ascii?Q?9fEQPGmj8PyGpJ+SYM5lASn+YeQkdaOvMIw3qiRvOdOXcs16tilWnDO3vwPP?=
 =?us-ascii?Q?IsNTtKUG+oQc7YREq18JumjFmskQ/Xeg154aPUQP/FPJnrlbmMhNFqRwot/I?=
 =?us-ascii?Q?Mw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83545426-6f1c-445c-1017-08dcaaee1159
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 08:04:24.9426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IaGuWLOoYsPeoZyO2PRoLlGeUuOqAAQfqJo1zhaParmuFKpMwEuWj90zh8my9rgo5Fb2kydXrsHaXGN60+V+uuetLsdfV6i6dWZ2y44RGIY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721721871; x=1753257871;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mtN0JrOuPNCkiWwIoAzB5LcYdevs89CqoiuSHh0O0nQ=;
 b=NGLR3ZLA4TyuFKFvy/m4EtPLXcw3zM/JkOjedmXyH/pLn35Wl+oKyjug
 MIoFqpp1xE1SoQj75BxWJLCYuupuyzl7/v1BhS73vvuFwVktYX/YEHob1
 nBwHz5taomie0kySCUSZWX9LTbWaoHvm8YwhSgo9QNleR/t+/5jZOdvyy
 cAsL9kghXSf1mAGn/3qnIO0XdlUV4GArEV8V742SIThrk1/oTJ3VfOfb5
 ooOs2rU03A1kmAaeUwyxHCEq84bgoeuP2jSWekT3jNKbbySBdtDK9aknP
 4OgC0ajbqJQtg28d8zLxJmpfFfuWvBp87jSZkgF4JY8DS3JhYm/Un6xvK
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NGLR3ZLA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 10/13] ice: add method to
 disable FDIR SWAP option
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Marcin Szycik <marcin.szycik@linux.intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Guo, Junfeng" <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: Monday, May 27, 2024 8:58 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Zaki, Ahmed <ahmed.zaki@intel.com>; Marcin
> Szycik <marcin.szycik@linux.intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;=
 Guo,
> Junfeng <junfeng.guo@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 10/13] ice: add method to d=
isable
> FDIR SWAP option
>=20
> From: Junfeng Guo <junfeng.guo@intel.com>
>=20
> The SWAP Flag in the FDIR Programming Descriptor doesn't work properly, i=
t is
> always set and cannot be unset (hardware bug). Thus, add a method to effe=
ctively
> disable the FDIR SWAP option by setting the FDSWAP instead of FDINSET
> registers.
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 50 ++++++++++++++++++-
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |  4 +-
>  drivers/net/ethernet/intel/ice/ice_flow.c     |  2 +-
>  3 files changed, 52 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> index 20d5db88c99f..99f420663e38 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> @@ -2981,6 +2981,49 @@ ice_add_prof_attrib(struct ice_prof_map *prof, u8
> ptg, u16 ptype,  }


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


