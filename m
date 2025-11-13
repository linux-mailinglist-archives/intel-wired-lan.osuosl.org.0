Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F1FC55FEF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 08:05:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F93D810B7;
	Thu, 13 Nov 2025 07:05:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L6HOLNITiuCd; Thu, 13 Nov 2025 07:05:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91E058112D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763017536;
	bh=tzpW7IdlkdCf3ueaayqtLuCgj/35bxZIyLyPKpNFyWk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=glgJnlVbW96Ftfod3bY7igvX2xRjEX2kiuihYiasJukqv+V+hps8NOXUA3ZuiMLnd
	 vqvdYMOzfQUS6uAdbiYddZaj39fKsGPbYcfIZh3LoogJRrDxr9GJl6DNgvYd7iGzPm
	 HSAIS7j6ZDavNLXiRrkIS2fCtKlxka8RX5UEWGfCsy63XGDJu6X4Ntn80h6xn7JlMd
	 p882wM9wSTkrTfoaVgNdBuE0aKnzG+JM9raHUWIyN7ZzF3Jzq1FkZHR5iN+S5kOARs
	 L2kqFOdS6CrSM5gHg06Wyr+Ka92dHpk3D4tzTeGPGkTC+cSnC6nakr7hLZDTMeqTnT
	 nF65bKE5WbqZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91E058112D;
	Thu, 13 Nov 2025 07:05:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D5D7C230
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 07:05:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C74AD40234
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 07:05:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BFIFq_NokItU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 07:05:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2163A40227
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2163A40227
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2163A40227
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 07:05:34 +0000 (UTC)
X-CSE-ConnectionGUID: pL6Rs2cYReiOahjq3qYSVg==
X-CSE-MsgGUID: YmmcZRd/SoK7S4Kgeaj36g==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="64797969"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="64797969"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 23:05:34 -0800
X-CSE-ConnectionGUID: hj5+CzdJTdyNc0e0T+HpEw==
X-CSE-MsgGUID: 944ALkarSSGoRJ7ygV4e9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="189219339"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 23:05:35 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 23:05:34 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 23:05:34 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.53) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 23:05:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MDNmhieC1p6SD5gnLXsIJOQ+gxoDRs4tJeQ+zaZcbZ2+06QVgRfgn+Q7mKPMmxfPsxvCqyjcom25o2kQsYh3mNYE5yQVoww5HDDiQXLsNR8jxL41uZGW0G3NTAKCOhReC2O1tWK6AFjUFsMizqu922KIPAtlGEehY9PPkjneUr3V+/vmQ50uX3HKLnw1ENcnam/aAtFfZmZ1SPzCn0Ic47zwikly0NBMtEMWfWNFL2a94jhbXiQ3x59TJ3qqVveuKiVL7IQ/Wv1OXv1me/NginNLX51aQFBzgSUYbSV4e1uxoLyhy2Bf9qPlOCmJfBuNwImYk/nKG2RwinB+dhWZkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tzpW7IdlkdCf3ueaayqtLuCgj/35bxZIyLyPKpNFyWk=;
 b=VGYQdq+VfyMfzpP21r0sVwgfTelDh10YlG4IcTiqBUjyyBwCtIz7mwNlWXkZwLCCkl2VsAjyaMamkahvlrK1BHPotoX3mwooaqWUP3+MEDHu4b01HpFOL72NrM1WruFmEBOA11A1pstck+5/4AkFSfmI5C9KfjseMWCQb00p1qtLvI9SGEVIues/RRgwFgkkCk9bamiODFnxzhiYVq+aiANrpniCOPDHl6TUk5v0l+SYyN1LOrLh2RouMjJPzgjrAqzr/Vk1aLPCtPZlYF7+zdpzJHATJQHMa583uWPY9PHJW8NsE5ZeJWjyiv0vwGw1l82KR2JR89PziYtzntFJNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB8363.namprd11.prod.outlook.com (2603:10b6:610:177::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Thu, 13 Nov
 2025 07:05:32 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 07:05:32 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v10 09/10] idpf: avoid calling
 get_rx_ptypes for each vport
Thread-Index: AQHcVDTZ72H0rclYpkO1R+9EUNAbpbTwLz6A
Date: Thu, 13 Nov 2025 07:05:32 +0000
Message-ID: <IA3PR11MB898647860D2ABF168477FC02E5CDA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251113004143.2924761-1-joshua.a.hay@intel.com>
 <20251113004143.2924761-10-joshua.a.hay@intel.com>
In-Reply-To: <20251113004143.2924761-10-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB8363:EE_
x-ms-office365-filtering-correlation-id: ab11fd4c-0d4d-457e-028c-08de2283092a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0+n9nfe9acHYIuTQpofuOA7Sq1Hq2OoKCNQl/WwtaeXgCHvgG3oZzLom1Ltq?=
 =?us-ascii?Q?IoQvWw6Ubbx+OFLZtpE+dsNPrDsr5jkoGW4Radfuish+q3gvVBS3tWGih1sH?=
 =?us-ascii?Q?R6jCGa6gfgmDbnq6XGgLdW6G4mApCTzZ7a6l1Vfi+K7tjKjPR0E/e/k/ql/n?=
 =?us-ascii?Q?E7icxtsT5N2V7ErFA+23TcXBZFx5KaOfzBnBlrPnyZ1Xa5BOdsDazd+NwT8P?=
 =?us-ascii?Q?ndrSHABvTId6+MbAVi8N1gGnzpMTuV1AkgcYOuJxA5jxs90GHergmY0KrndR?=
 =?us-ascii?Q?+lq5/1/f5k2rXjdzDKbfKGGoz3Z3tl7wBJVRbfluEk3zbFfGsSB28s/11de9?=
 =?us-ascii?Q?zWgC7KU6DbpVbtrxlDPZY5b6etDdcS9TQAb+XBmcvcVh5JlTMWaJhDbG3RuH?=
 =?us-ascii?Q?PfsRu5stxxwc99OCK3eWpvzpQWuevpT8ea3l+l+IqS+2ot3MIxsnpX5H6uDs?=
 =?us-ascii?Q?AfGgwT24lwQsd5VyG51OZ6ZP/2XQGZd2DZrh0sEJDG3mXqvFfNGU5Q08Ad0v?=
 =?us-ascii?Q?xeV77NOXqIhXyj/aI4JTgJMZWNTEgRxmJipF4nbI78/PXaDxl8WY8VFMUlqw?=
 =?us-ascii?Q?lmdR5tFTIDbtdt6R2O2Rm22i6Oe5CbmPJvIKB6JLocCvjXF6fEkRfudqDfiC?=
 =?us-ascii?Q?DSrzclJsEQyGyq9u0MliWLzdssjDhWFbhgTAWQ+YBcz9dkCp3P2N9tYAVH41?=
 =?us-ascii?Q?FeblF7KRP4oo6RJTgGojZZvxxB5y8Akb26qn/Z9BBxJUW6m7kYrfpwsQLXfu?=
 =?us-ascii?Q?vllBtXcaUSSbQl93uEhjD6z4c4oixM9Nt3g/d7MeB69gx+IYvNo9myTtTyEX?=
 =?us-ascii?Q?1o2wEZJXUTE9P0KsfsCr7VrztIYK8pXVex82bag1ra9DzdYD0SuuALj6101x?=
 =?us-ascii?Q?qYx5P6NcknxMun+ydLF8QuptQeKLq833gg8F8H8Gr8c+VYryoSCtECGEk28t?=
 =?us-ascii?Q?1HNa6Tyz5+KbRa0ZHEli1+8jYUm6NUDYFZmMI3uste/Tg0Hmtfgq2/H22qk1?=
 =?us-ascii?Q?DjXlf/YFZxJ8pzXFh0DTI9Az8zqoMhfFbZNodDmpzLI2NvJKo9RGJvdUVJXR?=
 =?us-ascii?Q?9N+wNtUrzZN51MXJ+ayzd3c+qFnK74oTEyMKZO6UI0BVQoM9EopXUexcoQpj?=
 =?us-ascii?Q?vuuycwCou92MBCbMc2vapx7QogFVnqxF3sSp/w91oANXMxSXsf0J8cE5R5Yf?=
 =?us-ascii?Q?ET0C5MCulCMUoKyh00OpaVM6XWzx6xYd3cwXN/xxtYJs+LwzB1mYJwknhqEL?=
 =?us-ascii?Q?k8bk9cGSjD/9zqMDxwTKuoi27+msHjVTjjT3kfCTONpfPXQH3eRZNAcjyQtG?=
 =?us-ascii?Q?VuYwq9BCwEZmQ+X3YKyqI52ihqQ6MQk5BUdThahSLeDIVV4nwXQAkS6QLuBO?=
 =?us-ascii?Q?0ZepaypGfZcUsEcmNRxbGFxp1jSyEGzocKC/KDGmpWX1Yrp68USZL61df/QA?=
 =?us-ascii?Q?25ewYh14LbM0lfLYAuXcULZZ3n4xEIdkAt4w6THUnceXf886VXbgeUrkZnCu?=
 =?us-ascii?Q?jHiK9A+sTsJsMPAVK8x4wm8fH7XRNcJSZGkM?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LTTjJ7HskpF8nrvi84P1UUMlXOaRmidMOMtn3JpNkZIDrk5K8hyHp2v9rT/4?=
 =?us-ascii?Q?rfNqgUrMbO3BIi/0FDDTnmgAxXL4RU4wfWgGdCmASZMad+egfBFYvhNeqWFS?=
 =?us-ascii?Q?vxQiDIbHdI+YC2mn8VaIQQriUh7cVc2nxda+v5Fb+vGFNKBB6B1gRLyQ1J8Z?=
 =?us-ascii?Q?nKFh+BCAi0yrCLrhf7Uvy4If9QFYtMNfUeT5ZUhsNLUXuifZ7Nd2n9luzK57?=
 =?us-ascii?Q?Dp9eOLl5Yt28qihys6WtrXx41i/PKYtw8jZx5zZIotR1FWKJWdWjVWuZudJR?=
 =?us-ascii?Q?LX1T5P508dupX7WpMcnMEOFrAvfbS7UR8mqqAH/akOTuujKYVVf0Z74dteO3?=
 =?us-ascii?Q?REz41FE6nIj7AolK6jbQIMWb84xHgzriUqIo90yiYsZivyBhpclVauZPxb3g?=
 =?us-ascii?Q?shfbCIG7PGIhWPgnNNX+4K1MPQecelBTFpkE5UrTR85VL3e9X9k6bdO4Hnl3?=
 =?us-ascii?Q?7+bxUixIJjSYzqiG2O9TDgTBV/p8NKybAiQ5yOHapWNcthWQU0PP7UlevLjB?=
 =?us-ascii?Q?7hdi8ZI9l42oipFaoJycLr+3zehJbUBG2ziix45dVSvo/E0B//J2WYqs8bk5?=
 =?us-ascii?Q?6NV6ix+QloyRhublzZq3ZVb/htQNA+FhICH6sgFx0u4FBd5skfmJjcpTML+/?=
 =?us-ascii?Q?gCQoFjPs06dJbtcIVhVhabB6ZeG0iLaKYmIyExQFJp8rVfSwAjeSmk9h7eiu?=
 =?us-ascii?Q?Rc52cktpwUGGedkFxZGLU2H971jQAYdQu58mqditVfsPpGJiyuamIjoLaLs+?=
 =?us-ascii?Q?7rLZkgFYVd9j0O/hNNG+94sc48blOn+pxa9A+Sl0vkbptIvH4DpQAX7I0Cpe?=
 =?us-ascii?Q?rsLGin/CjidrUD1w9kAiPysOiqODfjYf6b0ioTAp9FMNYWUYw/Z+wXfYzBlC?=
 =?us-ascii?Q?ib5Hdk93AGzzHF5qmctU5+IK4fworstHkMW1BHXEUTGECn5NrYqxy0v1e2ji?=
 =?us-ascii?Q?XSYIiyu1HmS/5ldRbGC61iHaT9JxU5ADyNj8XTe8/9kNH02W5IF15jTXUcNn?=
 =?us-ascii?Q?evKco3E8prIypG53mpkSAt2FsI1zBPKXy5eMaxQwFjogRRT1Ov70x9cRT1Ir?=
 =?us-ascii?Q?2SogzweRwzBlumsLDlMEWgKjVFPiFiBF1AR/N63CpKdViCxl3562d0IA8yGG?=
 =?us-ascii?Q?kCjLUWYNsKl8ChsffK6E0ACVEo3/8ypsDOLJGR7SAvGaDKqLh+6M7RmD+I/m?=
 =?us-ascii?Q?yVwSCmVg++rw1x5qNW8efz7AqlUcNxRjdl3IyDIYguuR0Dv3a3oZxhP6LEfx?=
 =?us-ascii?Q?dBFU5z5kpWI57CCAAa7HgQH9OhS5qMrPaXltk4KvXBilDVw1q+hQvjO2EEAN?=
 =?us-ascii?Q?g2ROaxZpCVaml46cclz2B5BOw73uQY5ykkPHaC7acgt+rlFOp+123MPj9lVY?=
 =?us-ascii?Q?+xQEgl4AVZBBr8nxA8yRZA869paQ6j8mV0r0JxMx8Eu/2YYZJYa/OB3g+Q6i?=
 =?us-ascii?Q?oT5mpxx1MXGcL6QuBfmmxUx6//LQJx5MWYQiqPkBE9O2o7pay52WPnRk8JMl?=
 =?us-ascii?Q?UII0sPOpAtMcwrq6VOZNY8IH+KTtITM96SrZX/0YeQ4lNj6JeMd1naLnSKhe?=
 =?us-ascii?Q?Uesykxpg32oSWeTZJj3xUDpp7skhJNVm2zJI1n8jwO/8dTb1qT0NIrlgkubD?=
 =?us-ascii?Q?Sw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab11fd4c-0d4d-457e-028c-08de2283092a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2025 07:05:32.2608 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eX2RZ0Oqa3jmpEwtUYGTgJPM5exGyYelT7R8ejXXTqbdGh8HB14CQwrWCJUKKTYwz5zbErU+kX6rAGtPUoS70oCPokSlVf+Xaex0KN8Dwow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8363
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763017535; x=1794553535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tzpW7IdlkdCf3ueaayqtLuCgj/35bxZIyLyPKpNFyWk=;
 b=i26Q9EAuBr4fDLecqRau0gg6fx18jnKa5vtAZxkaEyOA/Luz4wOpJ9Qj
 +HdKlmbOlIGoJ2wTLJ3KKMQWr+LnylLV2foY2JMQ+elTnRFy+JM0tiMFW
 3CsPksA7KRtwEQa+FMEqBS5H0TWuWYSC70omZ4I3VGxjxEruWhRBPBcZG
 aIj5SSgXrBWD/yDuJweQ+QFnNgrSOLTecpFGuRo4+9Q9JlBruPP80I5qt
 YZTGGTfposOE6JTrzWS2LdobR8KZNwcrY9PIC6lSu+MouyOCiv2IQppRR
 twO9XVl+dQmgbLAHPBzs5nO6TtPml9fOVPBNhtlAWGDiBF5zKlp5gPHNP
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i26Q9EAu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 09/10] idpf: avoid
 calling get_rx_ptypes for each vport
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
> Of Joshua Hay
> Sent: Thursday, November 13, 2025 1:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v10 09/10] idpf: avoid
> calling get_rx_ptypes for each vport
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> RX ptypes received from device control plane doesn't depend on vport
> info, but might vary based on the queue model. When the driver
> requests for ptypes, control plane fills both ptype_id_10 (used for
> splitq) and
> ptype_id_8 (used for singleq) fields of the virtchnl2_ptype response
> structure. This allows to call get_rx_ptypes once at the adapter level
> instead of each vport.
>=20
> Parse and store the received ptypes of both splitq and singleq in a
> separate lookup table. Respective lookup table is used based on the
> queue model info. As part of the changes, pull the ptype protocol
> parsing code into a separate function.
>=20
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
> v8: rebase on AF_XDP series
> ---

...

> --
> 2.39.2

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
