Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HZEE0JRnWkBOgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 08:20:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3057182EDD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 08:20:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A7558445B;
	Tue, 24 Feb 2026 07:20:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2U_8eBCw7Jq5; Tue, 24 Feb 2026 07:20:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE2C684452
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771917631;
	bh=V2CmehDXB23H/dZhcsSswM5mBVdbWvIbYII5UcQEQoY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=84EhGHfiSg1aVg+qva3eEYqEJKad7WPvkSbLJjFkhf2FGR7xHhufZanizGT1vOHte
	 GODVfRjBDPWg2tJ5YlyDejsrdzSdAG/JJi3bUxbq8LPIQ7yaRBnuh7RQ0om3hNayzg
	 lLdPuSaSVsiBlzcl7cfnAKKfjZ3J2hy14kT9gurGNOzBMkg6D6KAbUEnvdIZng/VJj
	 e6q/1QCrw0/shXevZCzI8jaVnj1xeHTRNnxRDdTAx9xLDtOfP9wZ1HZWzWM2p5TIZR
	 ONgfqD5s35nvutZS5GsLE6ccE3iRIQWQGCL1nG3mH8W5vHCHZ4okh2VB4gIbszgQK4
	 E8wm2j0mKImbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE2C684452;
	Tue, 24 Feb 2026 07:20:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C9AB249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 822DB41C76
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:20:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ftjcVUIst5Vr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 07:20:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 38FA141BE0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38FA141BE0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 38FA141BE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:20:25 +0000 (UTC)
X-CSE-ConnectionGUID: cAW7mEGKTQCBPwB2OG9TlQ==
X-CSE-MsgGUID: XVOmj3PMQJGjmWspb0UqSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="60502337"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="60502337"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:20:24 -0800
X-CSE-ConnectionGUID: oisUgcNGRmSauL2khhBvJQ==
X-CSE-MsgGUID: zY/yOUzFQ0K3n58SAH5Bgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="253543178"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:20:22 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:20:21 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 23:20:21 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.28) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:20:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MjVaOHvWQwpiUYfBSaoMwrV19/xbR2EevuwTFzdnHZK5TGshRGiWcTWYRDP6IpXMLq4bk7iSOBKZvi9mAEC+xGq8SMW08W4or9lxeZnx/3LxK/nmEFDTbQttYNNOBBj+lCKW/Na6U4yTF3cEVkezPyIuyAlJjIxy/Vf4AZlafbQNUosyA36BJUd9nTrthlBD9+8Zpj8C43x2iv8Ud7+4TqUQOSRqLrhH1EWGvTM2XSrWlPoTMqt9PFWvPqT5xW7JEmG17iFfKfbbtgsS600otDF57NgoyoqzM82v8v7mLP1x0wlNthHejQZfxsToKAMmcAnvwupTA82SLIkllmTR8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V2CmehDXB23H/dZhcsSswM5mBVdbWvIbYII5UcQEQoY=;
 b=p0NpmeAGbgjQ3AA4WobxMXQH/FrC4lPmVswL9oFtFPAhMf0ndfnDn+UMoyuOqUpQxaQ1VczUX9OYwqhoig9SoiNVZv+KANerk6TQour1oO+OsC4UqBSI/yneEwzMEOyvk8me+KV673cgE+MKtaNrFAzKcltbnciwXSp0wQObbcW6XVfhP0I8fF4ALBCQdwQ7byUmw/qwSt+AXGNXnr/7Je002PpkpqMvoAPYFDSJ5J0hFivCYZCN86HKnK13zadZu/FsnI4VLchqIhohGLKLpmLvprf3uXM3do98zz39+mYg2/a6o+dSuW6pXV91eQAoHLwQlCQfgwa+rRRKMcVbCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by PH7PR11MB6954.namprd11.prod.outlook.com (2603:10b6:510:205::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 07:20:19 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::b351:6cda:caf7:64a]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::b351:6cda:caf7:64a%4]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 07:20:19 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Burra, Phani
 R" <phani.r.burra@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 03/15] libie: add PCI
 device initialization helpers to libie
Thread-Index: AQHcV8kQlXynRrXR6kCyOaoCkwiF5LWSC/SQ
Date: Tue, 24 Feb 2026 07:20:18 +0000
Message-ID: <PH8PR11MB796566CC0EA1F0684330D234F774A@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-4-larysa.zaremba@intel.com>
In-Reply-To: <20251117134912.18566-4-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|PH7PR11MB6954:EE_
x-ms-office365-filtering-correlation-id: be6af487-81d4-484f-be5e-08de73752a41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zSgm/TXg+SeErhnYto1xKH/V8YLU+GoFTGRmi/h8q4LiYDn9UFbG8lKDWe9K?=
 =?us-ascii?Q?2vsQ1bSUU6UM2YQ4XbNpQP1Yi1Z/oOAjNdmnHNM4ioHFg35OB0TKq0wcURSa?=
 =?us-ascii?Q?cNlaoulz0UpXJH6v2AH0JyJLUgQHB9+7TSWFavJy/Rx2U7b/dbUbbFHv4BYd?=
 =?us-ascii?Q?j8rD2G9KiIj/Cqw3QthrCg2dqd3tvVsQlyKTEvr3fR0KlypDaz1vfnKItpN1?=
 =?us-ascii?Q?QnCo6x5grZQgt8Z/gvtoFv0241l+7yVOMtx9AjTs6lOaF1A2SXi/AcBWm03t?=
 =?us-ascii?Q?U4yim8d0ddbd32ozQnUr7TNNVbvzuFV+877Uag7HX5OMWa8EKFsgmBk60rrb?=
 =?us-ascii?Q?bTZFQ8KmJivrkIc6VMuuBhqNC7H2Epnt1YvzTyi2p9voiZD0ZSVj14NTEcIw?=
 =?us-ascii?Q?71lasH25U9f6jb27L/qfFwm04RRdxcvE+MG4agzozgX1PQOnHArd3ePM5X1h?=
 =?us-ascii?Q?1nvZkoLj9NEkSIf6zky0tmhCuwbb1HSPKYrHxAffAtE+xoNRagpGFxs+vyQG?=
 =?us-ascii?Q?icJOIzgn3YEBqaE+laoREsF1mbhpaZMMIndWGyzteUEtvK5MbQu/5mmTFrCd?=
 =?us-ascii?Q?pWQutsDWaHg4uSJReqcWi5UfMEM5X+q5nhI3ATXXWljH3dnmBvmUL1PwKjx8?=
 =?us-ascii?Q?1nbvdH2GlAWiq4HNc/fZo544d8Ihg/F6unJNm4uVWPmxYd5LunAiXwkpWwQI?=
 =?us-ascii?Q?3h3qA6Tv9laod0X9Fk0uHH5h4onFJ7uSrrZ/dV3Yb4GTbY1c9cJ4QB4TEBJx?=
 =?us-ascii?Q?JsP7qP7Oa6uVkVWbhLBKYM1/yJbN2A1fOhfkxXs6q/MwmFuYhCUQoPURiumd?=
 =?us-ascii?Q?HIq6h8Uom9X72jmmZCp/OdBafkx2m7KqfHJu5YSp17fJlKjIChpo1r4D8Nx/?=
 =?us-ascii?Q?0x8VUgngYJZT0QPbcox9EG52Yjo7ZEvP3DTy9s2NX0LLDNs5HAEy0yv42AJv?=
 =?us-ascii?Q?hDBygFuFliJ2sC+JRv983oTlxNepfZb3l7jiEdeE9ZHQlqh9rCu/UH8F3Ngh?=
 =?us-ascii?Q?8jUB5yl1ND+CWJOi85etA47lUzLvbHiDzalPXiuo+GryDef/CuHhxzsrVq46?=
 =?us-ascii?Q?WVvIHglySR0gbN+uw7O2rnG170gquvW93BUZzl7xYJo0ObUH0P4F81DCC2MY?=
 =?us-ascii?Q?nmKwZobJR/qdxnzI7Zrwz4WjAn3H1sashvMgIJsgjDBw0JpkBAK1RJ3a9TsA?=
 =?us-ascii?Q?mvixNbecHKZXmF5sxUXZCLzda8XMf+Mua3x/VU7OcE8swIuVbF3wxFteowGG?=
 =?us-ascii?Q?7fUdEPVtJMgeRWK/z+XgVROU/cvK5guizJGKvY9/rmJgjoIxdw3JRFRhlmoy?=
 =?us-ascii?Q?CZx/WVm3idf+G/GUs3Y1h3D4AcksjIvGqrJ6cP1K/6O+69e99qc9eL3RSvpo?=
 =?us-ascii?Q?Di1tTCZD9E+Yxz1sXgtrgbKHR03sqLvoB0jkCQ7d1n3Wvt24Nt58PHm1T1Lh?=
 =?us-ascii?Q?MvQBF1XBciYf1wDcwouuNBjYxEgLl9P90/2aMJDM559AJlWWK9NettJD2Fbq?=
 =?us-ascii?Q?Y5ubgw70LfX/gtCXzdNx/pBIepNAU2J9FqTLNwFnPIPbIrgq5gJLfIPKNmNo?=
 =?us-ascii?Q?6Ve/9AIDEF7PVRHQ0PRWh3VcBPq9k/1UrzhUUtJuyjC54bbAf0pcYoPebsoD?=
 =?us-ascii?Q?04+W7wowGIlmGZ8czvU2AHo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3hZ/228PuW0Q+88PdJ4xPoGBs9nLrZqSG569LhAFuHuuA1Yy+VG5GurUT0L4?=
 =?us-ascii?Q?RN3pirWLw2ceHGsyfaGlYNf9p2CpdoUmEb6booevt4Y+h7xmG7wre3j13F8d?=
 =?us-ascii?Q?MfTdJsv7BWIaBBYoXC3ACIJW3k2zXgKxvCgrPq1N4eb3WPJJ7o3l9OgdVW/+?=
 =?us-ascii?Q?XB9MtT9Ht045/QcvcxpldaCLxY78whMQtA6TgOhMYiFZCCK6cE0cBVErYgBL?=
 =?us-ascii?Q?0bObjjxAIVEbAVM2s/3rfcev2IJ9itDlGlSrsD11R7IH7maVcKlGAFF4Q7jt?=
 =?us-ascii?Q?R4zoa4NMiMsWwj+Mg23DxWawiZnYlMwvERjVVVK6HDmZ5C5DMkonrF6uaI1s?=
 =?us-ascii?Q?OviPZ7CoSVGuminKuT5dM+XeUFI92GgnraXraQaqQvD3JRTxAWjKbrf4ge7N?=
 =?us-ascii?Q?rtC8mxZ2Eaq4k4JBKwLEb44TI8nsu/Ce22+1imqR1mMHbiMBICf8Uam0/XYn?=
 =?us-ascii?Q?nXHAoFmhAIRIcXfGmgRE6X8CYmdWONGUReT1CNBz7ddNc+mLhYsek7u0kw6H?=
 =?us-ascii?Q?npFjHOruNA7rTzq6bG4Wq0UkfMEPSCZzRCHn2LkzcxF2XdA+4xAwo2XQi6xs?=
 =?us-ascii?Q?H1I/pP/8C8yBor5AhVCuX1P1MxQTkpw2Xc2wx+KOfW8vm3OpSDplagNAv5Ym?=
 =?us-ascii?Q?nASc5eAk1zUHZrA+EdQJIuzP2ZALK8BZ6DWWqR//n6JX2AiQ83cW4BKdS+yD?=
 =?us-ascii?Q?GdPu9b6BDVDfKH/6T8aLg4H4KTy5buJN5YRlFeoNDuTkMTSwCtWniM0UwNhj?=
 =?us-ascii?Q?WttfA3WhcgrWmoB3OfNhw1b0YxdAkJZK17+AE1UdOw3TyI7x0bTlmqcEyOKe?=
 =?us-ascii?Q?bFfVYAH5Y3iD6FLe3+BGZSbheiRSa5sfrLdh5k8ovw077L+3CeU+rl1tuwfz?=
 =?us-ascii?Q?VLa9HV/D+1FISR+jrQfTwT6X5XLQg0iQr2uzYsgmjfkqwKHnHGAep61USi+F?=
 =?us-ascii?Q?IsXksJs9eShl6W6OFFCH0BJEsZujlwGKX6y5KHte620WTWaPfxib/SZ2MUCx?=
 =?us-ascii?Q?h6XcA8kw7qNeiIOaM1cqWEBPEYHSLRWryhR2vNrr30cNiRXshOSU68+p45a5?=
 =?us-ascii?Q?C1Ej+FQPw9YDKqkLStT5GmZZFOOGT3OdMZ80XcdpI9iymddtRzXIbPvHiBFK?=
 =?us-ascii?Q?QDuUEp3QG+iuhiJV5OyjBMciqrt5zKaUfi3cDCcReofhlDB8xbdDsu3wfFfm?=
 =?us-ascii?Q?2TeJ2AhNFZdCwJ5B7VWdm0kdkSAGCzM+MbwxmiahQnog5/j+apxOR5qFHm6n?=
 =?us-ascii?Q?JxKZv3t750DpM8IN/tIjPYdLBtGDOeTywL/vxd84kmnTtieDTUy0jk/WOPS+?=
 =?us-ascii?Q?VfuEXM0LRh+5+75GLna7httNfIO2bOtk+WtP4M5XP1KsbvTMIvI5iIw3utiy?=
 =?us-ascii?Q?CODCR1xsBlwudE9LmnKhu/hCG3AnvQGhC1H8M1ccYC7vejzMB4uzK6f93WDl?=
 =?us-ascii?Q?ln8RQW57Da6j1m1upZUm0wFZkc4qBzkFagLMXUvYDhLub+NAZLGPEqL52uwd?=
 =?us-ascii?Q?xtVhdUBEMypSDkNaKImEnfz2tGbigK2tA7CDgiQtwuPG1B1XOuVi0XoWwwi2?=
 =?us-ascii?Q?ZG9KA2NA8QYg4dr2fbA/lgw1qZxygjGW2QcIrDmeU6twLxRuEyJOJQ72pr8d?=
 =?us-ascii?Q?rxIjuTVxt1HobQgtsc/gIwAVZ5CbzG8hUn5BPpDsxNzcVLOdUFj1C7WbtiQN?=
 =?us-ascii?Q?jUJRCdH5WYodaiuighLKyObSsGU8AFL5x0ePbQ194d4q6ZPX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be6af487-81d4-484f-be5e-08de73752a41
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 07:20:18.9886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0lv/TGzeYFQ7xds3MzVzGQyWwE8bIElppXN/beeV7bscN2oPXi4pSwY45oqbMJsXEenStuUVTBSrsa+Rd8U1Dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6954
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771917626; x=1803453626;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jrcxYW/Odg5C88AzFxl6T+rivIkFJosfTtsUMrvZglg=;
 b=iAcjjXwUbx4K2Cr60yajTPMY+s6J+3BcVwGJYPz+fU2F5suSdGDDbHGd
 vDEELwvpekWdIozZeP87NY/EjPHqWIluosZzrre0HN4OTNno0v7pxP6Y7
 2m5/9U+Q5feFW09vsR1omWxQhiPGpNXstewnjGCSK1e/lJYOl+uv5J/O2
 4M98kWYhrcJV4kJwOBAYyoF1zpFvr4wLik42bdswFcXZGp3qrLmQES3CB
 S7rG2N+5DOaG+NZfBNyfRDGBhJNp5vH/SRHQMkGlVT5jRzeBuccVyZWh8
 ZxIzB6VmVtdhwatzywBo5VpRn6IBdct2fM1wQ26gHUtxGawQWnrPK5flh
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iAcjjXwU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 03/15] libie: add PCI
 device initialization helpers to libie
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:natalia.wochtman@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phani.r.burra@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: D3057182EDD
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: 17 November 2025 19:19
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala, Sridha=
r
> <sridhar.samudrala@intel.com>; Singhai, Anjali <anjali.singhai@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.c=
om>;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Shanmugam, Jayaprakash <jayaprakash.shanmugam@intel.com>;
> Wochtman, Natalia <natalia.wochtman@intel.com>; Jiri Pirko
> <jiri@resnulli.us>; David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Burra, Phani R
> <phani.r.burra@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 03/15] libie: add PCI devic=
e
> initialization helpers to libie
>=20
> From: Phani R Burra <phani.r.burra@intel.com>
>=20
> Add memory related support functions for drivers to access MMIO space and
> allocate/free dma buffers.
>=20
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
> Co-developed-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/libie/Kconfig  |   6 +
>  drivers/net/ethernet/intel/libie/Makefile |   4 +
>  drivers/net/ethernet/intel/libie/pci.c    | 187 ++++++++++++++++++++++
>  include/linux/intel/libie/pci.h           |  56 +++++++
>  4 files changed, 253 insertions(+)
> =20

Tested-by: Bharath R <bharath.r@intel.com>

