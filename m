Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DB8B0F024
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 12:43:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 962AC80ED1;
	Wed, 23 Jul 2025 10:43:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4DIbvbtye2WL; Wed, 23 Jul 2025 10:43:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8968380ED2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753267381;
	bh=3EUqRN2vMAlUsF/PGGqv40I2edU0n7+NrUTepgTt018=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Sca/2efSRCi3GZT+rTkxoPn9iCLn3zmiv/GF9rswSm7ddPtlbvA8BG8ghLg5BxoK1
	 GSVUDtLHSfpcBh/HBYuK+3VhcFWnaSlfMYMOjY7MILxF5ApC9LVhB+x2JvFuZh+bm8
	 PCTUAfGN5MNjz8jgAmIkUfZaYAPWN18To2AVAlE7m/l5r60Rg92GY31b2oFhwfs7hn
	 Mraia0cOfXHJqhuPp4JkwXz6hh2NnnuGGB5+RB1viq0KSV4KMZMQOu5Khz/ljoGVKz
	 2mL9J0/VXLdNSwGpVW0ptrR7I6z9xOCvbqetKKzFuUMpv+Re7bRm22AR7ljJ9A5DUm
	 5UmvasiQFXMMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8968380ED2;
	Wed, 23 Jul 2025 10:43:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 08E8DDA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E391B400FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:42:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hP-Rw3YqyhYY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 10:42:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BCAB34006A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCAB34006A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BCAB34006A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:42:58 +0000 (UTC)
X-CSE-ConnectionGUID: AoDrmkqITha07343Rd4MOw==
X-CSE-MsgGUID: 5UPvecElQ9+yg9FitHccDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="43165465"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="43165465"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:42:58 -0700
X-CSE-ConnectionGUID: OLRdrQslSGG3IJtCaD9vFg==
X-CSE-MsgGUID: XjhyJbmbQwiFNxRGxtxbbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="158723539"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:42:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:42:57 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 03:42:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.48)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:42:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GY2anVgV2jJe37OT/rQh2MVF/vPkTOMoX59JobWVR5xgIbcxgPs7rWy3zaX7mpolFsNF/jFSOWuYnH1SLYQf5EotklbgvUsPZ2eZRWz/HaEFVTy7LaQoyHZOEHTCqi6dI3HNmE9EDmxptjBNfEk7sK1uaSuz6svqQkNOiWzsvqEAjpSiaUSls1bHJGV8F3HQjHaqiY+B1QTC7J5lHn0GljARPj6sIYUwMMQ1phok58K2GsYjUMLBmfrF4ICHU8EDBNa/3sC2viVkI2QKyPJBC1+4abtvW1f2fM4FSx/pH04rY4/KKeEoZNeUgvEorVbV/uMpGz4Bb78qRwDREl+Y5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3EUqRN2vMAlUsF/PGGqv40I2edU0n7+NrUTepgTt018=;
 b=YR0WPh8bvJrvvV5rLtZw1nUUKOPomDQe5/k/KeKLHPQo8xXARQgcQagjlNN4uXOk+nvN3VZXL5bnWjjpD5Vs9ljB8LWqoo6BXj3ajQ4+HRSQBpwpZ2D40IoCzp2sJLzDc2Y8lDkcjt51jnIb9KRtQJjtQ0tNJKzKr84jNGJYOgq/jpWnWON5/5wopwJNHJSVpdsx3G8VyQ6UZts8UYMZZhwvlnOjcWUf/E0PZe8MyeigiDSnySG9no0woBA5LKx37eeppGf1Ekye+LdmgfS7t0oikgTyvvcsWUb2r2jtGmOBVvYRgjNfJ9qgwPVirmb565pdnkT/HcuDk16wNUUEiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MN0PR11MB5986.namprd11.prod.outlook.com (2603:10b6:208:371::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Wed, 23 Jul
 2025 10:42:09 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Wed, 23 Jul 2025
 10:42:09 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 09/15] ice: drop driver
 specific structure from fwlog code
Thread-Index: AQHb+vjXNS8xt7Rt2EW0eSIyLNNz6rQ/hsNQ
Date: Wed, 23 Jul 2025 10:42:09 +0000
Message-ID: <IA3PR11MB8986271AB1F81ECC4941A003E55FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
 <20250722104600.10141-10-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250722104600.10141-10-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MN0PR11MB5986:EE_
x-ms-office365-filtering-correlation-id: ce26d8f0-ee22-4d88-9635-08ddc9d59345
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?MkgljdN68g3eJAVD8OZuELUatZQItlbOpRTGlivGNduv6tkM1FGRCmoorGqn?=
 =?us-ascii?Q?+hixGsX2yNrS2wAYiMLqu06LZK7iVTvW+o8CUoI+XEeWMlp2Oluk3HYSpMeR?=
 =?us-ascii?Q?dk6bsT7e621f0DD1vZx6LawESqhnpj1aYgG4O36Sv8H4a7uYLV2wEE9r6HJo?=
 =?us-ascii?Q?bpAb7GBC5rht7DAVha3ckM+bxEBOOEavEUOIvcONiBeMTAbOmkHYsWzGY4Zw?=
 =?us-ascii?Q?D18K2pdRAgHlt4YlZnfwgjicQLgLoInKXLFwHNq9taSvFfux8r/U7f1F8kbL?=
 =?us-ascii?Q?neflQRUTgFKqRLaCVIU/D+1SDeqCyxQHWiLBSaAQBzQAA2Ysf9japsNxL3qK?=
 =?us-ascii?Q?pjmJRUxMKZKxXhT8Ol45hjSf1ixI9s5CFNq5rdfefznW45jQzV5QOCNxSuS4?=
 =?us-ascii?Q?XIbVXWL7LxCtPgQzFCDwYKlLZP3bDDHyTROVsEHRBk7eAsim654YMM/geWQ/?=
 =?us-ascii?Q?ifjsWdn2mCpwwmDiIYOGKXkWtUaja9vpxiCUpuUQ7GppbIzVqPMjqKjxodpE?=
 =?us-ascii?Q?ce2qeskz7rzbPlKbS0zfq4k8HbxOK9y92y2B8l87Qqwt8qgP+F03rBB7oRIm?=
 =?us-ascii?Q?4TosEnrhDTlpzYiUom7L24hsDgIWYEDTR22SUdpNevlrLGQAbIugJeQid9vA?=
 =?us-ascii?Q?mlQqDPG1wHuibhUX5nAM0Ovj3dclPODrOgBOzZp+kFSZd12jz9+VkjuPgFUk?=
 =?us-ascii?Q?M8RY/x1I5Dsc3PPM2FxCnMxQ/VAys50JTdpRzOqO3rGUPlyfspKoWBNlG76i?=
 =?us-ascii?Q?I6yX55jQfZYW6Q/+mkUQPQ1htLiZbgYGk96+/XbPADl3sLrsKwsg6HOyIYxU?=
 =?us-ascii?Q?gpEJfnIr4SxL23nCHdtvRtMM8Xyxe96maX2XfIw2N5SOv6yRBImZ8MzYtdfQ?=
 =?us-ascii?Q?+XnywXLFtmLWLU5GLfQWvc16L9BhplBIm35jtMpyNLJBgPfNHJso3SU7wDx3?=
 =?us-ascii?Q?p0pIhwpRaovj2BDMfBF3JHMHmzYamwl3ZfZcir1wCTbBDZa0D9i48Xwf00c+?=
 =?us-ascii?Q?rxsrbp3CgFwLI3nuKnsvDAzr5IkmDpvTGMvbXK6lgR7z4LFHTefK6Pvz395i?=
 =?us-ascii?Q?XiSWs53dMiYVLUXXl3pew90v4qlA/MDZ3KOvM59qQqPEAxtWmcfu+yr077K1?=
 =?us-ascii?Q?ffLWBEz/2gqfnrvwbMenIzouOPcEzbX1pp0QGg4u+G23eBQfIydSfvNfK6Sc?=
 =?us-ascii?Q?J0FBsIx8Ay7RxwGRUbW4Z1xpdnqcEHQJ7lEH4pFCYnlYBuHHtOcXflAZXPcW?=
 =?us-ascii?Q?RvluRL1Wu2SLE21AzD53k3LMO9gh8IqHv968qhuGJ2jvl+EiW99Rh8SdQSXg?=
 =?us-ascii?Q?/Nb6TYyHH6FAk86aC3wGhF2DBWnB2LuGhgPTMXqkNHtLOdqxhWPjqlaLDB6V?=
 =?us-ascii?Q?Yst2AXYAW0ZXpIQKDqRG7QXx/Ls4CjUdOE5o5QzQQnVA3ZR7F0HL21r6gAH8?=
 =?us-ascii?Q?r2PS8fSrPOxnMwRqzH+48PlGhYcTmctNYAH0PoGsHhBbzZ3N9uB0wkuD6RiC?=
 =?us-ascii?Q?83PAdYWy6IdIc7s=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1iWoc6/qirPY0p+jzb9TpvCf2bo+CMBXBbBnyNH9gsEC5S5FiXSuFKGp6qD7?=
 =?us-ascii?Q?+v30RHLBOLbJV2buj9FgaM16uAa3RqMzdhX+JtT/WQSEGOCxifV0x0GDr/jb?=
 =?us-ascii?Q?x+4VtLpLstOXqXHpCfySTsG99hyck8IO//pfrIqF0zhSAyOZ7fHqxHGOPjMf?=
 =?us-ascii?Q?wbYWidfBk/GWvxIQmcbXL4qKiGip6IFmR9zRLH3VJIQXTv4Yw0hviySi1yZr?=
 =?us-ascii?Q?43Nstv7v8JeQ6Bz4T3c9RGvjZufM5IGRnn051eQu8y0kIt7IL1R1XpLRkH9l?=
 =?us-ascii?Q?eLJ8SEcgPXOaJVFDkXMF9Tj1hUX7KH8GxsKwmnjWcTeOR+bYeX/xSn7IUg9y?=
 =?us-ascii?Q?VZvPOrjcdYvdP8j9ayjDO3HyLdZ7K7xJvlTKY8r8xWqLpO2PqXv2dDq3cfoH?=
 =?us-ascii?Q?IL38N5jY1stquuvwbHhTZPKY2ehJY4mz7vkiv6Kvf/yoXENwzI6dOEFY/ceg?=
 =?us-ascii?Q?tq/jxqKx3gsJmrAmOJNoCKV67T31JMCDqQVBWWuUK3wKoHXR2cmk5JT2vcEW?=
 =?us-ascii?Q?qn+TZI72qwUbkaRkiHLWTV/rF3uFjs3V6jKN0n0RBuAf7ntXZbMlPqn5R0Jh?=
 =?us-ascii?Q?aJ9XXjiH43hmENap4zPZlEYLbROfS1ks8EdX9VAgFb7MAwV2t4meKe9uwsSS?=
 =?us-ascii?Q?Tm2U6qZRA3jQl6r8kA+er7zxN398iIywZ2jdhts8QpoXRvIdL5q+68z3/Ain?=
 =?us-ascii?Q?ikj3TpWOfquh3fOPaRoClN8AytiihZDJRZLMAdNfGhO+OScwLtjH6HgjcSaT?=
 =?us-ascii?Q?Vl6CTZctGbKRZRwAsPZPwgPlm5n5M33hTsWA3I4W9oUFQME7fjCqbxCLhAal?=
 =?us-ascii?Q?NCoP/mxeK8x0GjqjoOTSfH0EX5xc+Evk9F6TbPbn1uMXHiEwCWMrJLbeaeLA?=
 =?us-ascii?Q?4FLHZ1p/O1HykBGbpXLFQZWxvezD5EY/54Yn0iaQ2NfyTZQcBkQ7dD0ZxXX+?=
 =?us-ascii?Q?E3yB+P6pjutahu0alnSdOTfwL70OLEuilhxOgMUfwp2HVUR91glwIt79H62u?=
 =?us-ascii?Q?0GQoyDbxi1C1yMv/JCFcro8TIVnsYxTJJMeis6RCFACzXOCeQWLmXQy5Qf4R?=
 =?us-ascii?Q?2TyDTLbSMTFHR3+3dyEX32xQ/TJqKP609tjqA8t5ze7J0iulPuhOi3GJ+xHD?=
 =?us-ascii?Q?IaQ6pDsgXLXB9zgmijbkmBFp/kMK17R3PFM9Gr1JkXAEu8FGWv8e3b03uoFD?=
 =?us-ascii?Q?uCAS4QFcTEEBmUAItCOzOkm5644mwvbra5/cf+m9c19NRCkW5nKXVM4wtT1d?=
 =?us-ascii?Q?pefQx59SF9zuRXCebPU1X6PM0+eems/b3vUimGuq7dFscKSwA9p0VCXB0PgF?=
 =?us-ascii?Q?Ir324sFPBrYqb08q2A3fzmueYLSmj1OVuBDYsGy61arNFZJjtkfhgwaKqawO?=
 =?us-ascii?Q?XGW9f6R95r6m8nazhN6eQbrI1b2T/ja5yL8zYJg/k0rYimqGfUcEnP0Ih/d6?=
 =?us-ascii?Q?MPooehpNBrncoqK2slyGS1cxCNDTEZOjRr39x1xo6xTNobmqIS4zcipE72qH?=
 =?us-ascii?Q?7YHSTqOFrIR1IVJI+g9c2/KCgB6fveZvEL3lKtwZ3H85YSqYhxhYCp0bRbMK?=
 =?us-ascii?Q?ZVEwNCks9JuGC3lWekupEEHgfIDSHsw8LzF89WZp4zuw+6UPter2UziAnJcv?=
 =?us-ascii?Q?qg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce26d8f0-ee22-4d88-9635-08ddc9d59345
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2025 10:42:09.2305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MfTwt1gh8LzrpjbGRSjGASrz8zL2SlkqWprdtXloT+LOZRpIeCTF16Y8jKb+Q19xSypxaUAWyssKTLeTKSrUunxMbfaxLyleZNhTaS/qiYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5986
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753267378; x=1784803378;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O/PdA3kFLyyElTbxT9miispz7TRgxtjGks+/HdkuS+E=;
 b=OVAZpasYOW/qYPaIEAM7n3VMtegfT289Fw/qpg4ZMa9KMKD6N+lfkYqE
 0rnDTXSphvpIIyEmvwNh9pXGDsQM0cVVDlHqVCwLDKYos2MIRcrv4Xfyp
 rS8ol8OVuZH/M6Ix2v/61b3uRX3X2ta6YNjqPbV1JdiVAz5cwVzkDQmdK
 TS9yvM473s8wgVXRENMOAEaOLvFw8zPn/iKOUB1MRpRyMqqcEEceMxwL9
 rvX+xMzeSL7Wf6liyLZ2bKaIVCJLiwhu+7NUyTgUTrz8LO1Om1Cp8QlYl
 jHq4OgebBTIonKKvsndq+GuaD1hUrBmarebyUBtf51trbOJS812oE/AK0
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OVAZpasY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 09/15] ice: drop driver
 specific structure from fwlog code
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Michal Swiatkowski
> Sent: Tuesday, July 22, 2025 12:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; dawid.osuchowski@linux.intel.com;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 09/15] ice: drop driver
> specific structure from fwlog code
>=20
> In debugfs pass ice_fwlog structure instead of ice_pf.
>=20
> The debgufs dirs specific for fwlog can be stored in fwlog structure.
>=20
> Add debugfs entry point to fwlog api.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |   5 +-
>  drivers/net/ethernet/intel/ice/ice_common.c  |   6 +-
>  drivers/net/ethernet/intel/ice/ice_debugfs.c | 128 +++++++++---------
> -
>  drivers/net/ethernet/intel/ice/ice_fwlog.c   |  14 +-
>  drivers/net/ethernet/intel/ice/ice_fwlog.h   |   9 +-
>  5 files changed, 74 insertions(+), 88 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index ee2ae0cbc25e..9ed4197ee7bc 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -568,9 +568,6 @@ struct ice_pf {
>  	struct ice_sw *first_sw;	/* first switch created by firmware
> */
>  	u16 eswitch_mode;		/* current mode of eswitch */
>  	struct dentry *ice_debugfs_pf;
> -	struct dentry *ice_debugfs_pf_fwlog;
> -	/* keep track of all the dentrys for FW log modules */
> -	struct dentry **ice_debugfs_pf_fwlog_modules;
>  	struct ice_vfs vfs;
>  	DECLARE_BITMAP(features, ICE_F_MAX);
>  	DECLARE_BITMAP(state, ICE_STATE_NBITS); @@ -908,7 +905,7 @@
> static inline bool ice_is_adq_active(struct ice_pf *pf)
>  	return false;
>  }
>=20
> -void ice_debugfs_fwlog_init(struct ice_pf *pf);
> +void ice_debugfs_fwlog_init(struct ice_fwlog *fwlog, struct dentry
> +*root);
>  int ice_debugfs_pf_init(struct ice_pf *pf);  void
> ice_debugfs_pf_deinit(struct ice_pf *pf);  void
> ice_debugfs_init(void); diff --git
> a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index 2666e59b0786..5a365f65c0e3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1010,7 +1010,9 @@ static int __fwlog_init(struct ice_hw *hw)
>  	if (err)
>  		return err;
>=20
> -	return ice_fwlog_init(hw, &hw->fwlog, &api);
> +	api.debugfs_root =3D pf->ice_debugfs_pf;
> +
> +	return ice_fwlog_init(&hw->fwlog, &api);
>  }
>=20
>  /**
> @@ -1195,7 +1197,7 @@ static void __fwlog_deinit(struct ice_hw *hw)
>  		return;
>=20
>  	ice_debugfs_pf_deinit(hw->back);
> -	ice_fwlog_deinit(hw, &hw->fwlog);
> +	ice_fwlog_deinit(&hw->fwlog);
>  }
>=20
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c
> b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> index e5b63b6bd44d..c0258302d5d5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
> +++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> @@ -74,14 +74,14 @@ static const char * const ice_fwlog_log_size[] =3D {
>=20
>  /**
>   * ice_fwlog_print_module_cfg - print current FW logging module
> configuration
> - * @hw: pointer to the HW structure
> + * @cfg: pointer to the fwlog cfg structure
>   * @module: module to print
>   * @s: the seq file to put data into
>   */
>  static void
> -ice_fwlog_print_module_cfg(struct ice_hw *hw, int module, struct
> seq_file *s)
> +ice_fwlog_print_module_cfg(struct ice_fwlog_cfg *cfg, int module,
> +			   struct seq_file *s)
>  {
> -	struct ice_fwlog_cfg *cfg =3D &hw->fwlog.cfg;
>  	struct ice_fwlog_module_entry *entry;
>=20
>  	if (module !=3D ICE_AQC_FW_LOG_ID_MAX) { @@ -103,14 +103,14 @@
> ice_fwlog_print_module_cfg(struct ice_hw *hw, int module, struct
> seq_file *s)
>  	}
>  }
>=20
> -static int ice_find_module_by_dentry(struct ice_pf *pf, struct dentry
> *d)
> +static int ice_find_module_by_dentry(struct dentry **modules, struct
> +dentry *d)
>  {
>  	int i, module;
>=20
>  	module =3D -1;
>  	/* find the module based on the dentry */
>  	for (i =3D 0; i < ICE_NR_FW_LOG_MODULES; i++) {
> -		if (d =3D=3D pf->ice_debugfs_pf_fwlog_modules[i]) {
> +		if (d =3D=3D modules[i]) {
>  			module =3D i;
>  			break;
>  		}
> @@ -126,21 +126,20 @@ static int ice_find_module_by_dentry(struct
> ice_pf *pf, struct dentry *d)
>   */
>  static int ice_debugfs_module_show(struct seq_file *s, void *v)  {
> +	struct ice_fwlog *fwlog =3D s->private;
>  	const struct file *filp =3D s->file;
>  	struct dentry *dentry;
> -	struct ice_pf *pf;
>  	int module;
>=20
>  	dentry =3D file_dentry(filp);
> -	pf =3D s->private;
>=20
> -	module =3D ice_find_module_by_dentry(pf, dentry);
> +	module =3D ice_find_module_by_dentry(fwlog->debugfs_modules,
> dentry);
>  	if (module < 0) {
> -		dev_info(ice_pf_to_dev(pf), "unknown module\n");
> +		dev_info(&fwlog->pdev->dev, "unknown module\n");
>  		return -EINVAL;
>  	}
>=20
> -	ice_fwlog_print_module_cfg(&pf->hw, module, s);
> +	ice_fwlog_print_module_cfg(&fwlog->cfg, module, s);
>=20
>  	return 0;
>  }
> @@ -161,10 +160,9 @@ static ssize_t
>  ice_debugfs_module_write(struct file *filp, const char __user *buf,
>  			 size_t count, loff_t *ppos)
>  {
> -	struct ice_pf *pf =3D file_inode(filp)->i_private;
> +	struct ice_fwlog *fwlog =3D file_inode(filp)->i_private;
>  	struct dentry *dentry =3D file_dentry(filp);
> -	struct device *dev =3D ice_pf_to_dev(pf);
> -	struct ice_hw *hw =3D &pf->hw;
> +	struct device *dev =3D &fwlog->pdev->dev;
>  	char user_val[16], *cmd_buf;
>  	int module, log_level, cnt;
>=20
> @@ -176,7 +174,7 @@ ice_debugfs_module_write(struct file *filp, const
> char __user *buf,
>  	if (IS_ERR(cmd_buf))
>  		return PTR_ERR(cmd_buf);
>=20
> -	module =3D ice_find_module_by_dentry(pf, dentry);
> +	module =3D ice_find_module_by_dentry(fwlog->debugfs_modules,
> dentry);
>  	if (module < 0) {
>  		dev_info(dev, "unknown module\n");
>  		return -EINVAL;
> @@ -193,7 +191,7 @@ ice_debugfs_module_write(struct file *filp, const
> char __user *buf,
>  	}
>=20
>  	if (module !=3D ICE_AQC_FW_LOG_ID_MAX) {
> -		hw->fwlog.cfg.module_entries[module].log_level =3D
> log_level;
> +		fwlog->cfg.module_entries[module].log_level =3D log_level;
>  	} else {
>  		/* the module 'all' is a shortcut so that we can set
>  		 * all of the modules to the same level quickly @@ -
> 201,7 +199,7 @@ ice_debugfs_module_write(struct file *filp, const char
> __user *buf,
>  		int i;
>=20
>  		for (i =3D 0; i < ICE_AQC_FW_LOG_ID_MAX; i++)
> -			hw->fwlog.cfg.module_entries[i].log_level =3D
> log_level;
> +			fwlog->cfg.module_entries[i].log_level =3D
> log_level;
>  	}
>=20
>  	return count;
> @@ -226,12 +224,11 @@ static ssize_t
> ice_debugfs_nr_messages_read(struct file *filp,
>  					    char __user *buffer, size_t
> count,
>  					    loff_t *ppos)
>  {
> -	struct ice_pf *pf =3D filp->private_data;
> -	struct ice_hw *hw =3D &pf->hw;
> +	struct ice_fwlog *fwlog =3D filp->private_data;
>  	char buff[32] =3D {};
>=20
>  	snprintf(buff, sizeof(buff), "%d\n",
> -		 hw->fwlog.cfg.log_resolution);
> +		 fwlog->cfg.log_resolution);
>=20
>  	return simple_read_from_buffer(buffer, count, ppos, buff,
> strlen(buff));  } @@ -247,9 +244,8 @@ static ssize_t
> ice_debugfs_nr_messages_write(struct file *filp, const char __user
> *buf,
>  			      size_t count, loff_t *ppos)
>  {
> -	struct ice_pf *pf =3D filp->private_data;
> -	struct device *dev =3D ice_pf_to_dev(pf);
> -	struct ice_hw *hw =3D &pf->hw;
> +	struct ice_fwlog *fwlog =3D filp->private_data;
> +	struct device *dev =3D &fwlog->pdev->dev;
>  	char user_val[8], *cmd_buf;
>  	s16 nr_messages;
>  	ssize_t ret;
> @@ -278,7 +274,7 @@ ice_debugfs_nr_messages_write(struct file *filp,
> const char __user *buf,
>  		return -EINVAL;
>  	}
>=20
> -	hw->fwlog.cfg.log_resolution =3D nr_messages;
> +	fwlog->cfg.log_resolution =3D nr_messages;
>=20
>  	return count;
>  }
> @@ -301,12 +297,11 @@ static ssize_t ice_debugfs_enable_read(struct
> file *filp,
>  				       char __user *buffer, size_t count,
>  				       loff_t *ppos)
>  {
> -	struct ice_pf *pf =3D filp->private_data;
> -	struct ice_hw *hw =3D &pf->hw;
> +	struct ice_fwlog *fwlog =3D filp->private_data;
>  	char buff[32] =3D {};
>=20
>  	snprintf(buff, sizeof(buff), "%u\n",
> -		 (u16)(hw->fwlog.cfg.options &
> +		 (u16)(fwlog->cfg.options &
>  		 ICE_FWLOG_OPTION_IS_REGISTERED) >> 3);
>=20
>  	return simple_read_from_buffer(buffer, count, ppos, buff,
> strlen(buff)); @@ -323,8 +318,7 @@ static ssize_t
> ice_debugfs_enable_write(struct file *filp, const char __user *buf,
>  			 size_t count, loff_t *ppos)
>  {
> -	struct ice_pf *pf =3D filp->private_data;
> -	struct ice_hw *hw =3D &pf->hw;
> +	struct ice_fwlog *fwlog =3D filp->private_data;
>  	char user_val[8], *cmd_buf;
>  	bool enable;
>  	ssize_t ret;
> @@ -346,18 +340,18 @@ ice_debugfs_enable_write(struct file *filp,
> const char __user *buf,
>  		goto enable_write_error;
>=20
>  	if (enable)
> -		hw->fwlog.cfg.options |=3D ICE_FWLOG_OPTION_ARQ_ENA;
> +		fwlog->cfg.options |=3D ICE_FWLOG_OPTION_ARQ_ENA;
>  	else
> -		hw->fwlog.cfg.options &=3D ~ICE_FWLOG_OPTION_ARQ_ENA;
> +		fwlog->cfg.options &=3D ~ICE_FWLOG_OPTION_ARQ_ENA;
>=20
> -	ret =3D ice_fwlog_set(&hw->fwlog, &hw->fwlog.cfg);
> +	ret =3D ice_fwlog_set(fwlog, &fwlog->cfg);
>  	if (ret)
>  		goto enable_write_error;
>=20
>  	if (enable)
> -		ret =3D ice_fwlog_register(&hw->fwlog);
> +		ret =3D ice_fwlog_register(fwlog);
>  	else
> -		ret =3D ice_fwlog_unregister(&hw->fwlog);
> +		ret =3D ice_fwlog_unregister(fwlog);
>=20
>  	if (ret)
>  		goto enable_write_error;
> @@ -396,12 +390,11 @@ static ssize_t ice_debugfs_log_size_read(struct
> file *filp,
>  					 char __user *buffer, size_t count,
>  					 loff_t *ppos)
>  {
> -	struct ice_pf *pf =3D filp->private_data;
> -	struct ice_hw *hw =3D &pf->hw;
> +	struct ice_fwlog *fwlog =3D filp->private_data;
>  	char buff[32] =3D {};
>  	int index;
>=20
> -	index =3D hw->fwlog.ring.index;
> +	index =3D fwlog->ring.index;
>  	snprintf(buff, sizeof(buff), "%s\n",
> ice_fwlog_log_size[index]);
>=20
>  	return simple_read_from_buffer(buffer, count, ppos, buff,
> strlen(buff)); @@ -418,9 +411,8 @@ static ssize_t
> ice_debugfs_log_size_write(struct file *filp, const char __user *buf,
>  			   size_t count, loff_t *ppos)
>  {
> -	struct ice_pf *pf =3D filp->private_data;
> -	struct device *dev =3D ice_pf_to_dev(pf);
> -	struct ice_hw *hw =3D &pf->hw;
> +	struct ice_fwlog *fwlog =3D filp->private_data;
> +	struct device *dev =3D &fwlog->pdev->dev;
>  	char user_val[8], *cmd_buf;
>  	ssize_t ret;
>  	int index;
> @@ -443,14 +435,14 @@ ice_debugfs_log_size_write(struct file *filp,
> const char __user *buf,
>  			 user_val);
>  		ret =3D -EINVAL;
>  		goto log_size_write_error;
> -	} else if (hw->fwlog.cfg.options &
> ICE_FWLOG_OPTION_IS_REGISTERED) {
> +	} else if (fwlog->cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED)
> {
>  		dev_info(dev, "FW logging is currently running. Please
> disable FW logging to change log_size\n");
>  		ret =3D -EINVAL;
>  		goto log_size_write_error;
>  	}
>=20
>  	/* free all the buffers and the tracking info and resize */
> -	ice_fwlog_realloc_rings(&hw->fwlog, index);
> +	ice_fwlog_realloc_rings(fwlog, index);
>=20
>  	/* if we get here, nothing went wrong; return count since we
> didn't
>  	 * really write anything
> @@ -485,19 +477,18 @@ static const struct file_operations
> ice_debugfs_log_size_fops =3D {  static ssize_t
> ice_debugfs_data_read(struct file *filp, char __user *buffer,
>  				     size_t count, loff_t *ppos)
>  {
> -	struct ice_pf *pf =3D filp->private_data;
> -	struct ice_hw *hw =3D &pf->hw;
> +	struct ice_fwlog *fwlog =3D filp->private_data;
>  	int data_copied =3D 0;
>  	bool done =3D false;
>=20
> -	if (ice_fwlog_ring_empty(&hw->fwlog.ring))
> +	if (ice_fwlog_ring_empty(&fwlog->ring))
>  		return 0;
>=20
> -	while (!ice_fwlog_ring_empty(&hw->fwlog.ring) && !done) {
> +	while (!ice_fwlog_ring_empty(&fwlog->ring) && !done) {
>  		struct ice_fwlog_data *log;
>  		u16 cur_buf_len;
>=20
> -		log =3D &hw->fwlog.ring.rings[hw->fwlog.ring.head];
> +		log =3D &fwlog->ring.rings[fwlog->ring.head];
>  		cur_buf_len =3D log->data_size;
>  		if (cur_buf_len >=3D count) {
>  			done =3D true;
> @@ -516,8 +507,7 @@ static ssize_t ice_debugfs_data_read(struct file
> *filp, char __user *buffer,
>  		buffer +=3D cur_buf_len;
>  		count -=3D cur_buf_len;
>  		*ppos +=3D cur_buf_len;
> -		ice_fwlog_ring_increment(&hw->fwlog.ring.head,
> -					 hw->fwlog.ring.size);
> +		ice_fwlog_ring_increment(&fwlog->ring.head, fwlog-
> >ring.size);
>  	}
>=20
>  	return data_copied;
> @@ -534,9 +524,8 @@ static ssize_t
>  ice_debugfs_data_write(struct file *filp, const char __user *buf,
> size_t count,
>  		       loff_t *ppos)
>  {
> -	struct ice_pf *pf =3D filp->private_data;
> -	struct device *dev =3D ice_pf_to_dev(pf);
> -	struct ice_hw *hw =3D &pf->hw;
> +	struct ice_fwlog *fwlog =3D filp->private_data;
> +	struct device *dev =3D &fwlog->pdev->dev;
>  	ssize_t ret;
>=20
>  	/* don't allow partial writes */
> @@ -546,9 +535,9 @@ ice_debugfs_data_write(struct file *filp, const
> char __user *buf, size_t count,
>  	/* any value is allowed to clear the buffer so no need to even
> look at
>  	 * what the value is
>  	 */
> -	if (!(hw->fwlog.cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED))
> {
> -		hw->fwlog.ring.head =3D 0;
> -		hw->fwlog.ring.tail =3D 0;
> +	if (!(fwlog->cfg.options & ICE_FWLOG_OPTION_IS_REGISTERED)) {
> +		fwlog->ring.head =3D 0;
> +		fwlog->ring.tail =3D 0;
>  	} else {
>  		dev_info(dev, "Can't clear FW log data while FW log
> running\n");
>  		ret =3D -EINVAL;
> @@ -580,9 +569,10 @@ static const struct file_operations
> ice_debugfs_data_fops =3D {
>=20
>  /**
>   * ice_debugfs_fwlog_init - setup the debugfs directory
> - * @pf: the ice that is starting up
> + * @fwlog: pointer to the fwlog structure
> + * @root: debugfs root entry on which fwlog director will be
> registered
>   */
> -void ice_debugfs_fwlog_init(struct ice_pf *pf)
> +void ice_debugfs_fwlog_init(struct ice_fwlog *fwlog, struct dentry
> +*root)
>  {
>  	struct dentry *fw_modules_dir;
>  	struct dentry **fw_modules;
> @@ -598,41 +588,39 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
>=20
>  	pf->ice_debugfs_pf_fwlog =3D debugfs_create_dir("fwlog",
>  						      pf->ice_debugfs_pf);
> -	if (IS_ERR(pf->ice_debugfs_pf_fwlog))
> +	if (IS_ERR(fwlog->debugfs))
>  		goto err_create_module_files;
>=20
> -	fw_modules_dir =3D debugfs_create_dir("modules",
> -					    pf->ice_debugfs_pf_fwlog);
> +	fw_modules_dir =3D debugfs_create_dir("modules", fwlog->debugfs);
>  	if (IS_ERR(fw_modules_dir))
>  		goto err_create_module_files;
>=20
>  	for (i =3D 0; i < ICE_NR_FW_LOG_MODULES; i++) {
>  		fw_modules[i] =3D
> debugfs_create_file(ice_fwlog_module_string[i],
> -						    0600, fw_modules_dir, pf,
> +						    0600, fw_modules_dir,
> fwlog,
>=20
> &ice_debugfs_module_fops);
>  		if (IS_ERR(fw_modules[i]))
>  			goto err_create_module_files;
>  	}
>=20
> -	debugfs_create_file("nr_messages", 0600,
> -			    pf->ice_debugfs_pf_fwlog, pf,
> +	debugfs_create_file("nr_messages", 0600, fwlog->debugfs, fwlog,
>  			    &ice_debugfs_nr_messages_fops);
>=20
> -	pf->ice_debugfs_pf_fwlog_modules =3D fw_modules;
> +	fwlog->debugfs_modules =3D fw_modules;
>=20
> -	debugfs_create_file("enable", 0600, pf->ice_debugfs_pf_fwlog,
> -			    pf, &ice_debugfs_enable_fops);
> +	debugfs_create_file("enable", 0600, fwlog->debugfs, fwlog,
> +			    &ice_debugfs_enable_fops);
>=20
> -	debugfs_create_file("log_size", 0600, pf->ice_debugfs_pf_fwlog,
> -			    pf, &ice_debugfs_log_size_fops);
> +	debugfs_create_file("log_size", 0600, fwlog->debugfs, fwlog,
> +			    &ice_debugfs_log_size_fops);
>=20
> -	debugfs_create_file("data", 0600, pf->ice_debugfs_pf_fwlog,
> -			    pf, &ice_debugfs_data_fops);
> +	debugfs_create_file("data", 0600, fwlog->debugfs, fwlog,
> +			    &ice_debugfs_data_fops);
>=20
>  	return;
>=20
>  err_create_module_files:
> -	debugfs_remove_recursive(pf->ice_debugfs_pf_fwlog);
> +	debugfs_remove_recursive(fwlog->debugfs);
>  	kfree(fw_modules);
>  }
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> index 634e3de3ae66..8a1fede98865 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -232,15 +232,13 @@ static void ice_fwlog_set_supported(struct
> ice_fwlog *fwlog)
>=20
>  /**
>   * ice_fwlog_init - Initialize FW logging configuration
> - * @hw: pointer to the HW structure
>   * @fwlog: pointer to the fwlog structure
>   * @api: api structure to init fwlog
>   *
>   * This function should be called on driver initialization during
>   * ice_init_hw().
>   */
> -int ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog,
> -		   struct ice_fwlog_api *api)
> +int ice_fwlog_init(struct ice_fwlog *fwlog, struct ice_fwlog_api
> *api)
>  {
>=20
>  	fwlog->api =3D *api;
> @@ -273,7 +271,7 @@ int ice_fwlog_init(struct ice_hw *hw, struct
> ice_fwlog *fwlog,
>  			return status;
>  		}
>=20
> -		ice_debugfs_fwlog_init(hw->back);
> +		ice_debugfs_fwlog_init(fwlog, api->debugfs_root);
>  	} else {
>  		dev_warn(&fwlog->pdev->dev, "FW logging is not supported
> in this NVM image. Please update the NVM to get FW log support\n");
>  	}
> @@ -283,14 +281,12 @@ int ice_fwlog_init(struct ice_hw *hw, struct
> ice_fwlog *fwlog,
>=20
>  /**
>   * ice_fwlog_deinit - unroll FW logging configuration
> - * @hw: pointer to the HW structure
>   * @fwlog: pointer to the fwlog structure
>   *
>   * This function should be called in ice_deinit_hw().
>   */
> -void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog)
> +void ice_fwlog_deinit(struct ice_fwlog *fwlog)
>  {
> -	struct ice_pf *pf =3D hw->back;
>  	int status;
>=20
>  	/* make sure FW logging is disabled to not put the FW in a
> weird state @@ -302,9 +298,9 @@ void ice_fwlog_deinit(struct ice_hw
> *hw, struct ice_fwlog *fwlog)
>  		dev_warn(&fwlog->pdev->dev, "Unable to turn off FW
> logging, status: %d\n",
>  			 status);
>=20
> -	kfree(pf->ice_debugfs_pf_fwlog_modules);
> +	kfree(fwlog->debugfs_modules);
>=20
> -	pf->ice_debugfs_pf_fwlog_modules =3D NULL;
> +	fwlog->debugfs_modules =3D NULL;
>=20
>  	status =3D ice_fwlog_unregister(fwlog);
>  	if (status)
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h
> b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> index fe4b2ce6813f..22585ea9ec93 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> @@ -68,18 +68,21 @@ struct ice_fwlog {
>  	struct ice_fwlog_cfg cfg;
>  	bool supported; /* does hardware support FW logging? */
>  	struct ice_fwlog_ring ring;
> +	struct dentry *debugfs;
> +	/* keep track of all the dentrys for FW log modules */
> +	struct dentry **debugfs_modules;
>  	struct_group_tagged(ice_fwlog_api, api,
>  		struct pci_dev *pdev;
>  		int (*send_cmd)(void *, struct libie_aq_desc *, void *,
> u16);
>  		void *priv;
> +		struct dentry *debugfs_root;
>  	);
>  };
>=20
>  bool ice_fwlog_ring_empty(struct ice_fwlog_ring *rings);  void
> ice_fwlog_ring_increment(u16 *item, u16 size); -int
> ice_fwlog_init(struct ice_hw *hw, struct ice_fwlog *fwlog,
> -		   struct ice_fwlog_api *api);
> -void ice_fwlog_deinit(struct ice_hw *hw, struct ice_fwlog *fwlog);
> +int ice_fwlog_init(struct ice_fwlog *fwlog, struct ice_fwlog_api
> *api);
> +void ice_fwlog_deinit(struct ice_fwlog *fwlog);
>  int ice_fwlog_set(struct ice_fwlog *fwlog, struct ice_fwlog_cfg
> *cfg);  int ice_fwlog_register(struct ice_fwlog *fwlog);  int
> ice_fwlog_unregister(struct ice_fwlog *fwlog);
> --
> 2.49.0

