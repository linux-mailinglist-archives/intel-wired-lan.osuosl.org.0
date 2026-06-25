Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kPPHKKLUPGoItAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 09:11:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7588C6C3464
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 09:11:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="M/ZLugMc";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 570BE60FB2;
	Thu, 25 Jun 2026 07:11:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HwE9c2X00Dx8; Thu, 25 Jun 2026 07:11:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1615A60FB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782371486;
	bh=YX4IPsk9PeVuXQ7HTlhr0w2Jd/zoH3AxmWhb5hzLfqo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M/ZLugMcE+XbUd/pZdTIVdRnjYkKdEXrU9P5a0itPtZpRDoTMYti8QvOTUJjeu3Xc
	 YTR6PWyEuGiwGJ2iXMj/DV63jaGR/hjPm1aBGNoGCTS0bBNusW2h8Nl1p2nD8j/0nU
	 u/0vWqC7MzpIfThWIrcLKzw/m+lZqDNSlREft26Reg5BXBk7QU025Ka7g41Zkr/7IQ
	 kYL80f1vCkr3BZwNYDtVtb4MzrQPciAGcPagLdumgTNg+G3op1CubNHNxOUmGPuWoO
	 4WVuYn4FKMa2CvSS1O8yHw4f/6oUDjtNOPRX/zvLZn32w8CzbcO1ZaUgLMBZPYmJ4h
	 mFpruk0PGkn0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1615A60FB6;
	Thu, 25 Jun 2026 07:11:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 70BA6254
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 07:11:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5703660FAC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 07:11:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ffJUoOwpljG6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2026 07:11:23 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 68C8160F74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68C8160F74
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 68C8160F74
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 07:11:22 +0000 (UTC)
X-CSE-ConnectionGUID: bjXYAZFCRAuu9fz+xuX5CQ==
X-CSE-MsgGUID: jqB43w1XRo2mURddxsyOvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="86987355"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="86987355"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 00:11:22 -0700
X-CSE-ConnectionGUID: Ky/clQqXRnSQaVoou2WnkQ==
X-CSE-MsgGUID: xYoB4K28T/+oqdcURYsRrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="250787964"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 00:11:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 00:11:22 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 00:11:22 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 00:11:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qe/UtDEA5gLEVLUT4gv1PeojSxKcKq3HFHSA8pnOmtAYN5JuARHHbYitdkDcUJT6iBq7VYq543szqBORAMuw4g+qDTC89fTQcFzittSReBUTwDZgFGjPxA/SHufMZoufrev0dWxVrQlBJwiqnNU7PImgs8YwfOWl+LIfO9FRCA15JPcMJIYQ7fR6LErQGcHy1OMJZ3jMC+mKKZespmg3krAOhs7OT/1zpIIOBqC9D4vKgaXMneMNigWnq1AXtMKjJVPTHvre3CWjTPdhFNfAKvFmV3gWPowVSmq5/buUS7ybbuOoSp7jv8P2EwtlWBiNn0xXuIcfE5eTXgLvchA5yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YX4IPsk9PeVuXQ7HTlhr0w2Jd/zoH3AxmWhb5hzLfqo=;
 b=ryROec4oGRm9RQrntlYXy+AIE/gbVfFqCQAC7NdwXBNP9f1r4qFHrgQ65DjiHv9OHxPoqgR96vXFZCOkYoQYGRThOeyCsV7ClImYptCySBx0vVLb0BJeaKXG6mpO+AI/R+X0dSXfKyVDcTcskX2j3k+jRTwuKpci8g/SyW3wI9GCr6WnpwXNqDj6qTp2Ape9keLKp8dsexSq1zYVef4zUEUr1oggnY1UZ/dsnD7Zr4TNsZgi4EzoyjoWhcQVlYRWmMmEO/p14z7EqmfR3Np+MDEaOoC3NKeYZFfNVghfWAYWO6JjDp6oXM7sPlV9Y+7oU/iM85OxPzHWs0O1y40ddw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by IA4PR11MB9084.namprd11.prod.outlook.com
 (2603:10b6:208:562::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Thu, 25 Jun
 2026 07:11:20 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::62a:1a7c:6360:a580]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::62a:1a7c:6360:a580%8]) with mapi id 15.21.0159.015; Thu, 25 Jun 2026
 07:11:14 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "Pielech, Adrian"
 <adrian.pielech@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [TEST] Weird RSS state on ice
Thread-Index: AQHdA+55jK0wtvXicUe3gb30kirvm7ZO22bg
Date: Thu, 25 Jun 2026 07:11:14 +0000
Message-ID: <DS4PPF7551E65529A34C04A73F4287C2B4EE5EC2@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20260624083020.131a75fe@kernel.org>
In-Reply-To: <20260624083020.131a75fe@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|IA4PR11MB9084:EE_
x-ms-office365-filtering-correlation-id: 240d82af-c059-4db5-7475-08ded288f188
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|56012099006|11063799006|6133799003|38070700021|18002099003|22082099003;
x-microsoft-antispam-message-info: urxba96Ms5Dw3sz0gMKrhci2Stq7HnnPwyYEH/uOJeMLgjpblM+UFI1xRGCTu4brMoYfhmn52sEcu3rcGeMjXI8kvUjDVqn/pm8LtbU3Ep1F+ApdHjE/wM2KSo1hkuyiCWmiQ/vpCadlKl0aUGd8XUDMlJsFcXSm6Q68KXBu1+XykASiK9umK2pSzhxAD0bwoiX9wc/Z4ZnL+Z/u4NwCh/1V/IRABlthEBwdOaiGjM3Mm+1WQO36woprvR6LI2t3+QjqHRQKJs8Go+58oNRld3rA0wPUrknadspYA4xQ+D4GYMxVh4G7tYSMUlJGSQPZr6MdnXLmCimWR8ySmXXHMV6gXQqNFZGcVSTbHwunmNDxLJVYrNxqRvXqxh+cOGkNEI86aAsfiesExXnmYiznDiTUSa0Quy7ltTvTgXgsxNTDEXrsQsfgpzBXsSj3Oip0SL0RhKwJjFSIUfBHLLEFB+y3SJEitLnwKY7hzYmN4q5rHSnC4/x3mwBe5OhARRgQIaV38YVDgtgm3c3keA4hS35T5wu3WOUkIzJmSRE/sIOslrOyV3b+QHBZBpq6Ikt2CwHnLoq/yuuPN6SjXyK007JbmDrGbvg+8WhIEdZutkTmcnwgiVQT2rWfsSk6TqSJLnrcHxqlkMsHdOgsFY72MJQC3bCtE3wDcEvaEEt36yiDjGY5n0076L22EPUXN91DR4kY067QkFeCGroSruEuwbX/0VnMml3M2HzCl5GJoOg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(56012099006)(11063799006)(6133799003)(38070700021)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hWlKvw/JmM0tS1ynCEEXZZm7Ph+fXGLJbh06Y2ioh3SNEf+C0TDtlQoUQQL2?=
 =?us-ascii?Q?li5pr82EvqEHsy3KgeMMzVVm3GNyF3CVWnunvpk/YgIFDCLxLv360GI6DM0C?=
 =?us-ascii?Q?w62oACohXLtioa8orDJJC2G048Lv/+Kl/1ADPczbJxC8KdxvZMr7GPszyLYI?=
 =?us-ascii?Q?gFKO5pu9vUT1Bq0oW8E26kjHqlXwnw1A0IQdPdEC7P9flOh/OF7BrYfxza/z?=
 =?us-ascii?Q?9Zr8BJ8Dlb1ODGuTLzYFyjijXDkPyr83c4nDSdwCR39YnCMAbcfSeD0I8jZa?=
 =?us-ascii?Q?TtnoZf1jreyxJGEi/wZisMFrZEg7TV561MDBtD/o3cMBer8nClA+53ZBKmxs?=
 =?us-ascii?Q?oDD3sZv/QCRBE0tnOk1L5J1a4qFbIuVii3DCYUhnFl5M5Uq/VwxNZYNxnYb7?=
 =?us-ascii?Q?CErTFjXxaxgZdo9YAzp2YLbGh00yp6XtMqiHQUelqTSeXNO46vOFu/N4LPjK?=
 =?us-ascii?Q?CDPpMO9F6bseB3+nj4TKlHo2rEOW4CyBGsN7j3IXSCxkKE5tYmcolYT+R043?=
 =?us-ascii?Q?WuJXR8WmkocdjcipyQWdx6A3v9JXahWvjlYejHaq42aQHzG4sWTbcXqjvd1y?=
 =?us-ascii?Q?9t/4exXf1+2WObOV6hGrsnILsrU1weZjfr+nbKD/BhU/jFcgLnQJVD27W6kK?=
 =?us-ascii?Q?ORcbsse69wNs1p6yVhm20BSO1N8NxA4oDDGPtBSv4/8uRIRYRSc954/+z1/r?=
 =?us-ascii?Q?3C4ql/Y8ackrCD/MbpLVoGAFTXZAgieNcPJRuvCkOZ/lPPn0w2f/QQbw8gqo?=
 =?us-ascii?Q?rTiUFTHKdWDN6yk/MAMAh8zL2ZC0X4wTnNP65cUMp7ziY3KaQ6T0BdUX6Xf/?=
 =?us-ascii?Q?1lMV6FkgFqp+ri6eXAmOwC4EmQscch/p0O8eARQTajyUO1Y+JvrwijHUY4hp?=
 =?us-ascii?Q?5ykf/X1cMZCeIGUI70jK9OukFjbHJEmQRnEPHqyhG2UFzEs846Gg3t1UlRUr?=
 =?us-ascii?Q?QpBGzsuMv7N4P6/D/hy45T1Ru2nXnuYbHdH2HbShgUQ0we1cvTyUoyhOM840?=
 =?us-ascii?Q?C5ri99/KSHS5CABpMrmhgHsVliK11xDbLNeRI4/KN/LB22o3nFMr2Oj+pQMZ?=
 =?us-ascii?Q?QxjcJJ6MBU7IguBHvK5UWOtQi3pW1o4r8ME4fAEjN7hMggmCdzUVDI1IE9h2?=
 =?us-ascii?Q?SpmESpL8xh4YyKWQ52A1lUIdmBmLT+XtxIhD97mYK++paSMphdEcS3IbKuRk?=
 =?us-ascii?Q?xn2Qt8k8t7s9MHw3BRK2cAd4IpmqA7HbF2EufF0BW0/CJ2glhvzfDIV05FM2?=
 =?us-ascii?Q?CRo72pjbBfo8une+AWnOpup5lyp73+N3aGHxHOAdfUcFR2ytdJlf/ihPHZ9f?=
 =?us-ascii?Q?slNCVGX3dLDmw1517NoXvq1QkU+OdYQ+B49L/nL4Klj1QsI0AnIocIqNmd/T?=
 =?us-ascii?Q?l01jhU7CM1KWlylNWv6ZTDG1YtDfGfEiZX6CT60xjwUgUbbhUHkzQgJ7qVvS?=
 =?us-ascii?Q?gXc9Lfw/ehgvAw1M/y/7fae9dnDEUV3O02TxM+ies7++rayd02mkCfKHnMoX?=
 =?us-ascii?Q?ZI/s2tw2yBgTFfoTQVr0UZmwU304NHccwiJX0BFBK6tsClGXkxoOizZ/Emt5?=
 =?us-ascii?Q?oC5rNaKb784KQwPg7Ilc+ZPls2QEoSvYIJ8nYUT5G8V4cPzf9bCTB3kcCjqq?=
 =?us-ascii?Q?RE3GwKY8rwj3QXH8SO/fzPcpNccyAdGW2n6EqicrRMt3T30gvfp8TeWdOdvf?=
 =?us-ascii?Q?nMtFHMf+qoCrfNLI0S7wLBlcswY5a3a0eR0RWlFGtgGkSi98z8x/+IuBAXI+?=
 =?us-ascii?Q?rxuuJO7HzCJ/NjVEngZHmYaDgHWo8Zs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: INyB60mN/cjr8o8hcNBZibaT437uXan091juxA50c4G+gNjkPBN7CCbS14FAx7F5tHAbpBPllXJfRNxtRaX5JMKPQSSfJ77EqosgMevORk1bHLnYw6j04YLtjw/uZAkQyEuX4wOClAFwxp/R24wLvIaUyvh5XPd5SDu0jj6weZW8bAPlWBL+67l2e2TOTuOsTnAa/eIeBjjcoQ+XgcrbFOoeLIFx0w8a6ryVE4Vh/DIaqsR0x0nir8Y5TkfQgxllmr4eRsQJfJAfLv02blUiItnx8RIGyd3lKDdWSFsfBqWnEZRvPJuy6D0rZ+c9XtJ1XLGy1husw5HIiMrkJ9Tm9g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 240d82af-c059-4db5-7475-08ded288f188
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2026 07:11:14.2194 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R5Nyn2C5kaSy9AcUhFIHdbzMIrJbiPr9hKKwOVzP5angB//ChsG5+GsVXZzJkWbLh0IYUU3PS3sphw4xNdM43Xrt63TLOkf4dHQienLK9uc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9084
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782371483; x=1813907483;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YX4IPsk9PeVuXQ7HTlhr0w2Jd/zoH3AxmWhb5hzLfqo=;
 b=VeVOCeZd2ptLjURVBXWGo3BeT6t//PB57gIo4zkvDHwRHg7AVmiLKnUP
 lHWz2pR2wTEX6vLczT1nufjc9rIVp6199P4b/PLUVopZ3XyQT+V6aUXh/
 stRJ8SoS4j6c7XhaVOe7iCUP9e3u7NTwLl8a0UllgBIubiuhTHSRbbM0y
 8LqHd5GApetafPeld9io4D8psnuF0k+2djlUB0cEak4N9D8ixNrCD2EKy
 5J7Y4d+2BnPSagOi18DPr4TUeABOhBRXnOEevwAxmIY4u+heOt2DL+I8j
 WIX3WFKBJ14p0lvxu8osJkuGbjXa7BRhDRjd5+10KWcU5iomfSS4y7SaW
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VeVOCeZd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [TEST] Weird RSS state on ice
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:adrian.pielech@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7588C6C3464



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jakub Kicinski
> Sent: Wednesday, June 24, 2026 5:30 PM
> To: Pielech, Adrian <adrian.pielech@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [TEST] Weird RSS state on ice
>=20
> Hi!
>=20
> I noticed in the netdev CI that the ice runner fails to run the
> toeplitz tests because of the RSS config.
>=20
> https://netdev-ci-results.intel.com/ice-results/net-next-hw-2026-06-
> 23--00-00/ice-E810-CQ2/toeplitz.py/stdout
>=20
> I added some extra debug on the branch:
>=20
> net.lib.ynl.pyynl.lib.ynl.NlError: Netlink error: hash field config is
> not symmetric 16 304: Invalid argument {'bad-attr': '.input-xfrm'}
>=20
> 16, 304 means GTP flow, GTP_TEID field. So we are trying to disable
> symmetric RSS, but the field configuration contains TEID. The problem
> is this is an illegal configuration in the first place. We are
> _disabling_ symmetric RSS, but the kernel tries to make sure that both
> before and after states are correct (because the configuration
> involves multiple calls to the drivers and may fail half-way-thru). If
> the current config is illegal net/ethtool/ won't even let us restore
> it to sane state.
>=20
> So the question is how we got into this state. It does not happen on
> netdev machines. And on Intel machines it happens randomly around 30%
> of the time.
>=20
> I tried to look thru the driver code and I don't see how we could end
> up with such a config.
>=20
> Could y'all have a look and figure out / fix this? This has been
> happening for a while back but I was waiting until the merge window to
> poke at it first.

Good day, Jakub

The patchset didn't help?=20

[PATCH iwl-next v5 2/2] ice: implement symmetric RSS hash configuration

With the best regards
Alex
