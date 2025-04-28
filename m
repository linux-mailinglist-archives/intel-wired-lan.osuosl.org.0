Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB46CA9FA97
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 22:29:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98F7A81331;
	Mon, 28 Apr 2025 20:29:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tYKayPsJLS-s; Mon, 28 Apr 2025 20:29:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98A6981335
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745872176;
	bh=NNVZQ1ycae0I6+6/B0ult/D9FqFwlLKA0UudpZidcOY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kZIJZX1bfJgAGxkWtkLwUox2c8asVwdNmdb84LxRxol9U2I9StDXz+9hx9weUJriO
	 +x5VvflEIUEs+UN+VgdwqY+ojlT6bBQtMafdly0Gppm10lG4mrpA8UiuR1ptGN4Whq
	 mjEdfoq/LR5UpGN7x15OLBphPrwZstPbuXI0Tv/87d0I05U5kZTT/MvDeHS5v3tXoc
	 agwuv6hNjnfXrapG9nhJicrVkIiPPgDCxSyj5a2Ll1/KbRvYwPraNbyulckXnKTtP9
	 vhF/L6ZFMDCuQoyLvRiVwpuSPuYLrZGEysNF9OS2cBKNfQKFbBTa4kmkgx8GZd5uWt
	 Fha2IP/5GcJDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98A6981335;
	Mon, 28 Apr 2025 20:29:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D97B117
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 20:29:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 43A7C60610
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 20:29:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FOO0Yj7gf8kN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 20:29:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=tatyana.e.nikolova@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 712AF600D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 712AF600D1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 712AF600D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 20:29:33 +0000 (UTC)
X-CSE-ConnectionGUID: 5uS7v0RfTFiiReAxlu+Gsg==
X-CSE-MsgGUID: R6il7VizQ+2pg0gT8SiGpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="58128942"
X-IronPort-AV: E=Sophos;i="6.15,247,1739865600"; d="scan'208";a="58128942"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 13:29:32 -0700
X-CSE-ConnectionGUID: ZNIkZ232TMyNUZ/mQO16tQ==
X-CSE-MsgGUID: /DKAwDVkSN+pfYT7LqVIog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,247,1739865600"; d="scan'208";a="134603491"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 13:29:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 13:29:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 13:29:31 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 13:29:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NNnrejGXhLeQq7qdHNhJ/6xa6DOZ7RfREFzpx/w/7rGxFAeArpeViulfJi4XyJrhcu0h6H873NBx2YtX6FkbJ82MwzAFPYHZ48UicWUFRML+kJ5Xf6atg8F3JpClOVLQNnOvdSWC56p0389t18bdhmseqzFYHU+RxEC/Bi4/7vToeFL6As1vAcQLdksBeNI/FTA8T9eP8bH0Ot7yBLhAzTgYjHGWZtEe+u6Ky65erOqoTQSii11JaZQVB86rzYjAG9d2NyNFaIelxp+XplsBFlK/xKsO9c8XqVJk5i8QF82eDBiNVa1y1wDpt1idgNZx9vO31osYBg0ULn0dZtEA4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NNVZQ1ycae0I6+6/B0ult/D9FqFwlLKA0UudpZidcOY=;
 b=QbR5Q0k4fRn93f8L0LXS3bjSTPw3/bpJldK8LiT7Vks6k74nyn1+wZDG4sJe3B8GMNeWPHo+ccVe/JILAI8hWCa7I/z2/jkVJBUSgQZYgZ3XvpzN8sMUqGQSge9NyQdQ6eYpc5yl13yrTAjDMoGpd6otnln4MiMIfR0Pbt8EIz2VTb8pg4WKlxnHpypcL+4HUGRDgNJ2ksdKASuPg50nCck+75QCpjv+zN2t7MowehfEb1afP063tYuIJtERv2sxPAvXmAP7B381R5pIIgLKcKs5VgdaeQTsQ4XK3apa1UZ6yjEnqxTHe0rnZeS1TBWYnmHfTwS8WrDnk/fyar82Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB7727.namprd11.prod.outlook.com (2603:10b6:208:3f1::17)
 by SJ2PR11MB7618.namprd11.prod.outlook.com (2603:10b6:a03:4cc::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.31; Mon, 28 Apr
 2025 20:29:28 +0000
Received: from IA1PR11MB7727.namprd11.prod.outlook.com
 ([fe80::763d:a756:a0e4:2ff7]) by IA1PR11MB7727.namprd11.prod.outlook.com
 ([fe80::763d:a756:a0e4:2ff7%6]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 20:29:28 +0000
From: "Nikolova, Tatyana E" <tatyana.e.nikolova@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: "jgg@nvidia.com" <jgg@nvidia.com>, "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [iwl-next v5 0/5] Refactor to prepare for Intel IPU E2000 (GEN3)
Thread-Index: AQHbrnWQAkoDi3xS7UqJfkGEHBC617OzA3eAgABlrgCABjE84A==
Date: Mon, 28 Apr 2025 20:29:28 +0000
Message-ID: <IA1PR11MB772701B19BCD408AD4225E0CCB812@IA1PR11MB7727.namprd11.prod.outlook.com>
References: <20250416021549.606-1-tatyana.e.nikolova@intel.com>
 <IA1PR11MB7727AF19E37851E3A4964C77CB852@IA1PR11MB7727.namprd11.prod.outlook.com>
 <20250424145128.60467c51@kernel.org>
In-Reply-To: <20250424145128.60467c51@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB7727:EE_|SJ2PR11MB7618:EE_
x-ms-office365-filtering-correlation-id: 3b191129-ffa5-4a67-cefc-08dd86935feb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?APVnFk1SGfJfO913KrYUezu+DdqKnD0V9n3WMmg6DES4je14d2Nb7+wjTVm/?=
 =?us-ascii?Q?1ImQydFnqDSf5AshyZhp93hcZrB9UfD/cneD76+9Z9GKccI5DYrc3Jz2ucP+?=
 =?us-ascii?Q?YFGUf29FIbm525H0HT75TxGHKTb8MrWGJbqZ4j4acEb0UjplInl3iUwqdsoS?=
 =?us-ascii?Q?gwL3+fKwxrlaSaoogEZ4R/qhvhGP/l/urY+F6P9MWSTsAMHBS3d5wFe6HPSy?=
 =?us-ascii?Q?xAgphWobgLQ7HCKOpz0yJor/Dd3d7+xF9UPXs9P2PoUxTZSCahWAmbF7DiKm?=
 =?us-ascii?Q?qkoDIaFCMfgSR6jPvlZlTzzndvRrJfhPG51Ow8wPwEHOUL4+PGsJxKesASY5?=
 =?us-ascii?Q?mKrPR590TB5Xou1z71jYSqaK5G4vC0pJvo0ChGvfXkgwfQKWj3Nj9cD/P+b8?=
 =?us-ascii?Q?CTSferSSOvBTz0v0/nI5JzboRMSgzOQvexxwZxU3djRWNvSRtPC0mQDQ8dZc?=
 =?us-ascii?Q?czptULF+5PFICh5Uv2AcuWETZCOtBxfoqReZrkDq4LJIDNVjhcwawM8lvsSS?=
 =?us-ascii?Q?wjkPvv6JgoEiS8skRYhjfG2Fqvc1hxc3h9v+uNl03+4lS+wBq9RtPx8EpABj?=
 =?us-ascii?Q?ej/NxHh+1QQbjVhDX02U3XCq8Dy6XvDzpKfg0LTDeEDTdauPb8L/hHYjTj2j?=
 =?us-ascii?Q?BaeK6EjaLV7OS4zGzRfecHOZeLk34i3idhgQYGmNazf/0hhqg4XBJmidtrIe?=
 =?us-ascii?Q?bUv1T+4bHuNg6eyMX5SrhakTRgOCUGBgiA7NEzqkD3V7h6KA5AF1K9kBnsJR?=
 =?us-ascii?Q?fHZzBRnsPOtuMXrmtg7ISpn26SURBYjN4/U7wJhubg6g5+KRYma019On3hy5?=
 =?us-ascii?Q?IJ8fio26WuSD7SQm6aGi9qFPk+RW9Xfchc/Nt7kPQm+pTKlisnb4G8o9s4+I?=
 =?us-ascii?Q?pdRYQGCoaXYlqoRw0qGjCiTjSWI3M/sbgZbl+yYcB+icleZ8mFwC2e52rZhO?=
 =?us-ascii?Q?ovoq7MC9lYG9J/tuDjup7lejMlA/dwYBsPHx0UNW1rsCpKSg6padXyRLhqB+?=
 =?us-ascii?Q?58e6VSB47RrmIMCnVTUW3C8yoKrGePQROibETMA1pvN/Ii9OBwoRFNWuoNZL?=
 =?us-ascii?Q?XddCYMVPMrHguUZDQWoZW1DzdjMp9JuMrMl4Nuk+LP/Flm2/Q6aUkLNCPwfR?=
 =?us-ascii?Q?OaYybcwniArFPUh6VkVOdk4JoR0MC1ZNepWqPWiW06J6Qd8nyuZHW2Zhm9y3?=
 =?us-ascii?Q?7e9lvArV2mMyWz0OQi0XygQbMyx+Po+Db0SZskDHZAGab6ci4mvVFnwYhb/q?=
 =?us-ascii?Q?Vv6E3RqTnX1dvv3PFT+s/rwyc3AGVxHvdX+txyhusOc3O4TOxO786SLb2IC6?=
 =?us-ascii?Q?uJu9IwYvW1sBnKkM1zbCpw/+y6CohIXAUycQU8HEB2OhmtJt/ja1GJ8voCeh?=
 =?us-ascii?Q?VXvM+Qh0I8IywrbSHhWa9r5aFbUgx7Xx0/5ZMIcceulGpvc8OeBhJ/9tfOeO?=
 =?us-ascii?Q?oiOX1YP0PTDzswpB9ZvGdcAxiSZ8w7ZcX+m7N/xnoXQ8qnmjxjgs74CBXP8D?=
 =?us-ascii?Q?N8z01P9KUi41eoc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7727.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lQ6GLiuJ0hmp/DnfbvQ3uWPjajOXjJj9iWtIk/O58v38KozYuQ//zZlic5LB?=
 =?us-ascii?Q?odWXz50TA0amZ3b4L4wbsjvA+Rxn5+dCRDfZBKi+w3zn9X4jmNEHLshcKc1y?=
 =?us-ascii?Q?4a3zanSJ49dh7xqyqgRJr4SnXRo2obB67jSw4TJzxHknAlso1x/MWMnP6qyw?=
 =?us-ascii?Q?6Dwx9cvB+lUm65ed3u4tfkaUf4iTgaPL8TQOxHTu1FXJsHzbuFY0zO0hX9HH?=
 =?us-ascii?Q?HPIVvRd/ZtiX1eFcUNxWaNvo7Aj0uLNeLiGflq8PHatFPT9rJPPAz6uyLhtA?=
 =?us-ascii?Q?d4dYvZQzx6p138QAj470Yjxn4dmPkHFGiADa1iY1BdUr1ZLuf2bJtCB/jIoa?=
 =?us-ascii?Q?5o3QOPydBab2T/YLKJVyalJ9zF8HRUeCQSHgmLFuCpiA51DH86AlJjIWp9ee?=
 =?us-ascii?Q?NL3T+rws+hL6iVtTi7DxV6UftkTNR0a44hKncl5+7n6jCwnZR/C5jgWDc9S6?=
 =?us-ascii?Q?RWp/QMsvQ6B9MJRTlsbz69TfKtW8STvwLkqZF2z/7N8gF9RxiY0fwxe0xpIs?=
 =?us-ascii?Q?2WTzzhpTDYVf3yTY8lzz7SInMfngjlkAunjdr0JmxDUFeuWk0UN6sXlYG8Wl?=
 =?us-ascii?Q?YVg4F6ZiNvFq0LFmoykRhJnSgfKJhwh1UPCv9hAkauyH3OdrUY3gjdo7yUKc?=
 =?us-ascii?Q?yAZc9izyjfyetFSEncQEp3YaEd1BxP85+Q+YhJrkXqncFJkQwtyNtzfR4RiP?=
 =?us-ascii?Q?oTTvDlZm/5rOrHACcrxafN0SdDz41SfeTYcJtWa8Nf8Ha2NTXwNYhklb5Yo4?=
 =?us-ascii?Q?6fVfV5vI7KJYfcAyQtK1VrpQOb6db20JU+JUd4kO8JtmEQp85M9cJ/r+lhEu?=
 =?us-ascii?Q?gP0KOSc7ftF00B3OKplFj3wjcrJ5+ay0L2kWep3+krpKJMAboq2LK4tqZs96?=
 =?us-ascii?Q?wiVchmzfiPVMi8PDvUSlbrl9NAmWZOeRWmXt7Lazs3gkHSI0Z21TD4EoC1Hm?=
 =?us-ascii?Q?VO7OfOxk8/kdX1SrwwyO1YlQRAPg1CLgZTXP278V/0h/1ZAFVsFM+22aoCTD?=
 =?us-ascii?Q?Bq8WfhN1LAMa2YF6tG1a/pwcjjo2glZKIwxDi9FQNHKaMyHR0eBHHl5Iq7rt?=
 =?us-ascii?Q?OjqRTcnu8V9G29VqcrvG44m32Lj4oCd1JJQd8pkddkl/wiRPZjFOhGa1uxGY?=
 =?us-ascii?Q?64HgGiNkSg3ReJZue8MUxmxuqiunoyf1lsLr5KnWDX3NukxIGYruWolqaZH6?=
 =?us-ascii?Q?zQ+DGa9E8kuVXTPUAdXVT9Q9DkpBgV0QezZLxbrJpX7KexN1wx2rSk+rvKHd?=
 =?us-ascii?Q?/A9Hl8Cg5il1vG+oNnZZ0bc5Crel2Csnr+7/xWcXuDUv6g6uBi6dWPsl4DjD?=
 =?us-ascii?Q?cwGdr2t1gmPpVne9Kd855dF7kkh2axZ/b6Jq6OVJ/MCNQKLssLfVEykqHSrw?=
 =?us-ascii?Q?iquq8nJSnJe1hccnOHTwVq1ViLGsmOJ2PqSnouzSDxaay98+NcK9alh+WUlN?=
 =?us-ascii?Q?XmS9D0B4NieOfSJtAD+uyvG4RTXOB+PxPaW+zJpNjnUqJ2zwqQs9jptAM+iO?=
 =?us-ascii?Q?51Th7u38jnkGOYs/hLttrcTAvCsDbb2Jb8gPUZZOljNYd7TSHMqmXlL0rAwS?=
 =?us-ascii?Q?EKHYsByJZuSfLJ2LCBJ4F53gGDOPAX0qkrZc3JfO6YMnP/+tTpAvUEl0v5SF?=
 =?us-ascii?Q?fQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7727.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b191129-ffa5-4a67-cefc-08dd86935feb
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2025 20:29:28.3857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gNpgi3TBdtK5PUQVrQUlSOnNNY0H8yZnmrbAKAef78FKSqAZlF57DyIHWwZ4gzFjEFmoQXEy02kyhTKueTsxuDHnktmCDvj2uRoWGdeeuXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7618
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745872173; x=1777408173;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NNVZQ1ycae0I6+6/B0ult/D9FqFwlLKA0UudpZidcOY=;
 b=MN9G3yw3jDAWBue9Aqa7e9BlLJj83M/MndIpLSXMMUvG2dnogKbLRR46
 V5LQ0pRLmughfvvSDlqjIBspk4CKMZlvKMQR9V2CIAVOp8j+T8+qYZfI1
 ZxdpGv20/Zfa0fVNAEXgEquqCYlVTZ5Mh89ALihzoeJJv3oWUvNXmTVuf
 yjqb5J1WuDl7grSu3ioUTWcY9AHrmKfas4TWx6N0ZTzeO3l437cE3Pc1E
 1Fyf1w0kpmicx9/Bw6SBoG42LYV1720y6etSWQ1w2v7YLucZoDZzF0rwJ
 xopPc/UXLiZWUAtMN/zNbEMIHxaYh+j776UB8WOGjhOh/BqnXCmOixe33
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MN9G3yw3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v5 0/5] Refactor to prepare for
 Intel IPU E2000 (GEN3)
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
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Thursday, April 24, 2025 4:51 PM
> To: Nikolova, Tatyana E <tatyana.e.nikolova@intel.com>
> Cc: jgg@nvidia.com; leon@kernel.org; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Subject: Re: [iwl-next v5 0/5] Refactor to prepare for Intel IPU E2000 (G=
EN3)
>=20
> On Thu, 24 Apr 2025 15:58:56 +0000 Nikolova, Tatyana E wrote:
> > Would you be able to review this updated patch series?
> >
> > Netdev maintainers,
> >
> > Based on Leon's previous comment
> https://lore.kernel.org/all/20250216111800.GV17863@unreal/, he would like
> to get acks on the netdev portion before creating a shared branch. Would =
you
> be able to review the series?
>=20
> I think the usual process would be to submit a pull request to both trees=
.

Thank you for the feedback. We are going to wait a little longer if there a=
re any additional comments,
if not we are going to submit a shared pull request.

Thanks,
Tatyana

