Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3552DC5F607
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Nov 2025 22:33:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51E5B8436B;
	Fri, 14 Nov 2025 21:33:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gXdZaBqWtghx; Fri, 14 Nov 2025 21:33:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B69C88436E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763156005;
	bh=k0kkF+dwD0PcvfEBNcMbZwApsHWmDRSe/QMfJWvYLCo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=78Yi7gKDGsagbwLkyzPaNSmnCFkGQdAVvUpbQP1x4tQV7Zf+CPpjfcgDtqvQquUUd
	 BExBBBixcId+eyJiX4LeawLUu5b2CPmlT6YtmXZJXQwUu7M9kKanNEEMIAD0Z+m2qJ
	 Ea4KsF2czDUL8NymqczxjJl+OpgNlBpk3DhOYDxp2zUmL0vOcGG6kpx1kgUAXBm7Ww
	 7YT4EPGQQZERVZn+qU/KpXrWaM7HZyplhQRytIRnpohKwgLdnKY+sjaJoKgTo0VQSc
	 tK22/8Vhx+G7oSv36hlSoGshD7gxfhiua44MsH9Z9S7rndqJgaeXu+yf0ytcj+QHei
	 zyr5lEern6+1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B69C88436E;
	Fri, 14 Nov 2025 21:33:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F482D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 21:33:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 171B884368
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 21:33:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KBemC8jPRqmE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Nov 2025 21:33:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3B02C84254
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B02C84254
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B02C84254
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 21:33:22 +0000 (UTC)
X-CSE-ConnectionGUID: Pn0l9A41QemRc8Vchiks4w==
X-CSE-MsgGUID: 6IA4wjKzS9yqmQRvykN0Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="64966123"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="64966123"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 13:33:22 -0800
X-CSE-ConnectionGUID: 4SuGvuE1SnmjYMM7W/Tw3w==
X-CSE-MsgGUID: S2wmvDB5QYCXu55bUjHB2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="189896982"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 13:33:21 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 13:33:21 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 14 Nov 2025 13:33:21 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.24) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 13:33:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jeMLNOMorSl+0nP7UVUoY/8GwQQMdEYIyAGSH/WdKJ0SQEphL8QlzcoKVO0V5iE9NDhzzJH+3c//4RjHcx9QXMBcyMqbMmA44wuHXW8dqYmD5ZDNKcS6Py2l975uvR/gxaKMObPNbndIjb4/LsvnqF6MVfrF7vsnNXrNhFGCQXR0TAvTuJJDPYubDUhoSvweqBhXIxCq59EpqvVwLN60DcGOGCpgqjfLABU1geDQQbLHPsVIERkNdce4CuYEl3nvr/ZnjeVwOZucKFD/pvQcFgqpGyl7zfOUqSAZx23RaZXsxIaPw2pDVdJaWzL/uvw4YcVn+7jHRnyWWq39OdDdPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k0kkF+dwD0PcvfEBNcMbZwApsHWmDRSe/QMfJWvYLCo=;
 b=q4kHth5v9D0HQodfw2OsmPa2pxXJOnhMMs82AGRGirP5xu2xC0iaTtj0+ZyFEMA/qyLjlOSqlm1PGM4ByQhtaR19uMtRLMgaaNv22n0EciH7239SMWXkn9FbgFdf9zvqrExsQWC8gISi7Qq5gPW658eOJ9ANVpfcu+CVUyy6fGdtNfBxhlMyf0LPn+2FVkd7p6gyZkilg7xNWbgxc5FF7q+g5Kd3JAFvXcyHNdb5LjdG71hAO1IOSCusnPSQqIhcQVY14Dglak3AKHdyP4wiO0IsLCoerVspoO7G3zMfjb5xa1lXo/OARcc/GQPNASNwb3KD7kVSHn0OVGzN5Pyrlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by LV8PR11MB8608.namprd11.prod.outlook.com (2603:10b6:408:1f0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.18; Fri, 14 Nov
 2025 21:33:19 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 21:33:19 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Simon Horman <horms@kernel.org>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "decot@google.com" <decot@google.com>, "willemb@google.com"
 <willemb@google.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: fix possible
 vport_config NULL pointer deref in remove
Thread-Index: AQHcPFU9cKlsCEv2SU29PB7v95U7NrTBYEuAgDGDXvA=
Date: Fri, 14 Nov 2025 21:33:18 +0000
Message-ID: <SJ1PR11MB6297A43E2537C00F48BD8DC99BCAA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251013150824.28705-1-emil.s.tantilov@intel.com>
 <aO4XCSu0jZ57k-1Z@horms.kernel.org>
In-Reply-To: <aO4XCSu0jZ57k-1Z@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|LV8PR11MB8608:EE_
x-ms-office365-filtering-correlation-id: 39b2979c-c261-4e3b-60e8-08de23c56dcc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zuQMCgQtlGgCJ9UaMCAKk9F4RdCHURbKtGL/4xBThir0HlLjb0wO00Ps5dbM?=
 =?us-ascii?Q?1zhrTfxyjfaY0mHidcMYgQ8cyQikp7auEjdHDuwtpU2OxITMoG7XyfshmSRU?=
 =?us-ascii?Q?mSAE10+A0h60lhTfzSPrLMjhB37IloYfpWHbfNX31k6yPL6f51SS4qr4ZXK1?=
 =?us-ascii?Q?FlEbc0yQv5FY4KADwuFStQcgLW1O/82MUJDyInASHxyxfo+8C+H2vTUKUUbK?=
 =?us-ascii?Q?7egmJdbRCMOXv8CBaGVxeEnQkSvhzfxH46KVeUNan6FWxr3fTw9MNKTU6ZL/?=
 =?us-ascii?Q?QJC47/I0LMDrnDgpTj5NtZyCwPB/W4x0JgWAW463nUkC2WBNOqGOoS7u0ieJ?=
 =?us-ascii?Q?4E38RcLveCavEBDKku7OCFDtpDfuhuJ6h4NjyKcamjrMeRH/qd73JeL9RD7c?=
 =?us-ascii?Q?O+GjosIW/77gmX5tgy4ojYIgKTiRQkajgZy1YyuCJ6yqjq1JzQf49cSC4KNM?=
 =?us-ascii?Q?AyQzhzFsmbwzIKyg7+R2+iID2o/l+oiAtsjhXhSXn2CNdiTrZ4GfuyqQLzYF?=
 =?us-ascii?Q?sIFpIc/rOaoPjxARsWJoI0i2/+mhYJmsVyl8yeW0vPJoXh+V3weos0bMgc6O?=
 =?us-ascii?Q?qPcw3ClXBtgKq+6nij/wzcj3eRBxAUZI7dHhCXr8san+aGlICmAw4n3s/mvm?=
 =?us-ascii?Q?rCdDNT/ASaDbkfs95ccjl7uBNUS6dTUvQwKg9JpeJVBIorCAH9iTUwlEkpaq?=
 =?us-ascii?Q?lmLObW7Ph7K8eG9nFd4AlgQ9ObtEZvjQaXyTu2LutxKwNIVaxH9K4Xo/pO4j?=
 =?us-ascii?Q?Lz1zH2eU9M+Ey2pEHvDlIX/ZEOTDE93BOJEV1aYTDDASN6GtvDPrIefC6Tcn?=
 =?us-ascii?Q?aZStFU5e4QnD70ebEWbr93eTmnefzrRTpT4BylMEF6chng+7s4aH4hzcxKRN?=
 =?us-ascii?Q?RbstGnPmz2zCnlwD2vlmlH/yr2demi+8FdqQikaynvu1mBL3etRPmJRwFQQ7?=
 =?us-ascii?Q?31ldpn/G5EUNq++NEzyB6gkwtnXKlBWD2A3zYcs0nnmKqpkHAtM9bjlgIbm9?=
 =?us-ascii?Q?jnURVL7wR2fjl08uSSk3inpTQpvbbTIs17a3FLMhUYwvdjYoFQFeRVKWxhpF?=
 =?us-ascii?Q?Y+1YdnMhVkLIgrb+mE4PPl4FxEbIdNHpjuDSpIav8SuOimLJLnGA9y6KWuEW?=
 =?us-ascii?Q?IggjnVhVM7SBY4AUBI2P4UfMSWpmLqzlu3DAZES+DvETOU4Jufl42QYdErRk?=
 =?us-ascii?Q?8P9qgVFWDDUippubJN5i0QaEV4hGA2JdLvrHd5R7EBasK95sBt54U4llwPkL?=
 =?us-ascii?Q?aPAbuIk7y4AFnHA94tmKWqkEMmhjY1x13whRjiH0/ZW2+NObuMDZxY26SIkb?=
 =?us-ascii?Q?m4RSa1yar/pQpycpQp88EDLxTWP/VM9uaJGdzXpkAqSph9zeN56xccsTOOZE?=
 =?us-ascii?Q?O+QseGLHjwhkkvfxi7zMur3nYY5IGKIdkAf5exDmLXvy59zoS/x8O7uho/xs?=
 =?us-ascii?Q?OcFrfL1FoXGtBnQvzB1zoGCBdNKio7yN32nBOOaX9lfrdUtZjX0tij3naZkM?=
 =?us-ascii?Q?IhQqJyCJV3vcOj1VfVYd2xUwuKcGmNMd324o?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?07AsDtTtbp0QH6g0Hw2ALcXGMAwhzIJg9xRPylsSHJSwdNnlugN/x0DinG/m?=
 =?us-ascii?Q?u9LNbKJwLL/UQzxFTGT8CucA/DZawe72nke2Um1dNe7T+r91dOYA6LeLJO8s?=
 =?us-ascii?Q?kAR5ZiX/NuSEIANl4TNH8l5CC0OxDQzcwfkxbhMmnZPhFyZEAMBdaHEpxS5B?=
 =?us-ascii?Q?NDDelB8VsVHarUjx5J/Qc0N6+NzAsbNNzn7LFBQgLkfRhALOqOKYjejsAxxL?=
 =?us-ascii?Q?Ocf4/+viXym02m/kxE2tnI0bGIPVt/wpGjP8oqirzV3BJuiARMkncMy8uvdQ?=
 =?us-ascii?Q?fPUk8Go6/wewwwymSGxn6FTgrNTQh5EyyXUnxKZyf2+b3Wkdw7umJkR4ZHDx?=
 =?us-ascii?Q?Ei8y9BTWpi/QqcKS3fk8GvyiReZaTecbea0RF59H4iM9rqMG2hw+UKVqqaei?=
 =?us-ascii?Q?eHNCbPE2IoOYE02st2K2hr9YMPypY7+BmZ6QVRYMMZlg0S51Sah+2aZioUgl?=
 =?us-ascii?Q?WIDoTcYKUE9X+pU6UyMee1BI93vYMR7XWdEkaKL5c642tquMbgbBmfnSXPQp?=
 =?us-ascii?Q?ZjRMzd+r5LZNOLk61xGu/Zby4nHm3i2MqOHV7Si60LdsRPusJIkkN1x87A17?=
 =?us-ascii?Q?8WziXVVQAFhTBv88hRsNLZCH/vjGtdQByL5vZ5yvI3Maog0vl27h8vsdmHWz?=
 =?us-ascii?Q?vHi66SwaIOpRBVT5ZqDL33M0zpd5T8FrNNR3xMREM/+UQ9YWNfcqg9npI9E6?=
 =?us-ascii?Q?yskj/dzRq8sV/Zv7IkZuQw93t/UvBuuBZYh0P4d0StJcRb2R8s5Mi+LrO79R?=
 =?us-ascii?Q?GuI8ETFqbvU2cJFlKAiCmJbwGvZrktsBpiurJo8IUsoU3JPCQJbo4GU5DFUg?=
 =?us-ascii?Q?cRp6CkoVpOYtF8U1uEp8wwVGPg4Cm5vZcJzKL8i/fDkV6ocVHA9Y+vyGKYjN?=
 =?us-ascii?Q?V7LvR4PU74FQQoXUUSpCd8cnhSyb0yeo8l0mdi0z5/Ql3vE3HAD+GBh/enJg?=
 =?us-ascii?Q?ypydo5APPXOZGNya0Zw56Z5cGijcrHLWzAdItg8lf5h82E0iqDRFvftqIbNc?=
 =?us-ascii?Q?AJBT2le7mEA3gOdLKwJuSsWgTXe1nZtsXx9P5p1RV+h+eb2DEkBmu+IM+glG?=
 =?us-ascii?Q?gK1S+koR3DV5+DAVh5Cd+RiHGEhPDw55NkrL21FmjhVKoCX37XDezIYyfQor?=
 =?us-ascii?Q?Z7ukDL3eFd1D+FUXlTQbjoWaYNQli86qMCc0fwB11OkU+MBZL87JpEzw4j3E?=
 =?us-ascii?Q?c3UXvsFyzGKu686S7fFDLthvCMePcfvWhQMxg1rC94UgJBJInoXLrlkrVowF?=
 =?us-ascii?Q?XdUuqORtfXANQ6M5DWhI9fWRYu8LiyFKDoZYoSZQ6zDCQh4+aXWChKNic+iN?=
 =?us-ascii?Q?4yde2tQJcYa2aqnJG1C1gp8lXY6l9TU8TqUBumJ/nOIpIPX9z/XhzHLXpXca?=
 =?us-ascii?Q?2qJERGjqcvbktjO+cMyOPeE7XCb/hIm5xZVw7Xxe7nS8Qzx54vLpz/AS86BK?=
 =?us-ascii?Q?XfekQQkvMK2ctxOzbJUZlONLADwva+Q3c4PyfPybh/wdz7pbKI4TboXndkbV?=
 =?us-ascii?Q?rPgMQwYAFCfeBjZbA/HDPQctKkGvLfCCVeLlBDWrhQ3YiZsgDnh9EgPPBK4Y?=
 =?us-ascii?Q?2gpWiP20vr1/KhlBLqs1rMVTNKddUg0JaCjv1/aX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39b2979c-c261-4e3b-60e8-08de23c56dcc
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2025 21:33:19.0348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S9ROg131+wQ6UGHvEkNzlJDFLXnYy2riN22T+EOmcjfsF4slEOnry6nG2Kv6nXqbRQpYxNPcv/3qejqKyJxPzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8608
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763156004; x=1794692004;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TToGND3A3EORyv3UqyEy0w8IpSzImkB7fAKMfibgeY8=;
 b=BxBZjU6/O5ZIS0/CGWA2gCSbSu9mlUoHM6CEq9ErnBPbtGkwjYLagpGu
 kAADkrgMF7YL7TjQIaVXRqmGfkA2/nBv2VtG/Mj2LDV+/LPOL+YImd9b+
 IA0Ja4XMkj9Cog7bbfBXvFwzesu0cKVWHaSxoC9ubrjcn077h9jzy6yNk
 Psln4osAZaEo9FjCGsxueNHe4Mu49rQ/H/1q1OFPZZgauNOU5OGkWF8v+
 K2pz50Ti+W0M5Zqi0/X67IY4LExTmYYHa5mtmS7IkEjUZAyPakUGAkmdR
 nWXKfBSALqdpAFqd6GoVRjemKmzVbaXFKhShmtf1Oe8Puw+rO3665CilD
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BxBZjU6/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix possible
 vport_config NULL pointer deref in remove
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
> Simon Horman
> Sent: Tuesday, October 14, 2025 2:25 AM
> To: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; decot@google.com; willemb@google.com; Hay, Joshua
> A <joshua.a.hay@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix possible vport_c=
onfig
> NULL pointer deref in remove
>=20
> On Mon, Oct 13, 2025 at 08:08:24AM -0700, Emil Tantilov wrote:
> > Attempting to remove the driver will cause a crash in cases where the
> > vport failed to initialize. Following trace is from an instance where
> > the driver failed during an attempt to create a VF:
> > [ 1661.543624] idpf 0000:84:00.7: Device HW Reset initiated [
> > 1722.923726] idpf 0000:84:00.7: Transaction timed-out (op:1
> > cookie:2900 vc_op:1 salt:29 timeout:60000ms) [ 1723.353263] BUG:
> > kernel NULL pointer dereference, address: 0000000000000028 ...
> > [ 1723.358472] RIP: 0010:idpf_remove+0x11c/0x200 [idpf] ...
> > [ 1723.364973] Call Trace:
> > [ 1723.365475]  <TASK>
> > [ 1723.365972]  pci_device_remove+0x42/0xb0 [ 1723.366481]
> > device_release_driver_internal+0x1a9/0x210
> > [ 1723.366987]  pci_stop_bus_device+0x6d/0x90 [ 1723.367488]
> > pci_stop_and_remove_bus_device+0x12/0x20
> > [ 1723.367971]  pci_iov_remove_virtfn+0xbd/0x120 [ 1723.368309]
> > sriov_disable+0x34/0xe0 [ 1723.368643]
> > idpf_sriov_configure+0x58/0x140 [idpf] [ 1723.368982]
> > sriov_numvfs_store+0xda/0x1c0
> >
> > Avoid the NULL pointer dereference by adding NULL pointer check for
> > vport_config[i], before freeing user_config.q_coalesce.
> >
> > Fixes: e1e3fec3e34b ("idpf: preserve coalescing settings across
> > resets")
> > Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> > Reviewed-by: Chittim Madhu <madhu.chittim@intel.com>
>=20
> Thanks,
>=20
> I agree that prior to the cited commit adapter->vport_config[i] being NUL=
L was
> harmless. But afterwards a NULL pointer dereference would occur.
>=20
> It also seems to me that the possibility of adapter->vport_config[i] bein=
g null,
> via an error in idpf_vport_alloc() has existed since vport configuration =
was
> added by commit 0fe45467a104 ("idpf: add create vport and netdev
> configuration"). (Which predates the cited commit.)
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Samuel Salin <Samuel.salin@intel.com>

