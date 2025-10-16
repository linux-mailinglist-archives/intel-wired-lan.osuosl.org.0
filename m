Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 441A0BE1715
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Oct 2025 06:39:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18EA684115;
	Thu, 16 Oct 2025 04:39:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WlRE0322vBR1; Thu, 16 Oct 2025 04:39:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A0A083DDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760589593;
	bh=Q7TSEDGC4+NZ/babxZJRaZx6Dk7KsNqYdmCSsf7bMOA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L+clMTl7YA99HprpL6MWz0xC39f/J/Oa039Qa+Om0xh+U8dT5cLEXHF04HOvWuFQH
	 RsySDU5doMfSArowM9uttQalEcR8XKK82E/LtAHdb82ydG9Y8lTrUjJR5Fd0oy7UiY
	 DJERFNW1BgGJTrKMxjfjYzZEQ98MK5sS0ldWvUeZT4JZ3jKrGwNdR9xVikrpuOFxu1
	 vSiclxXl/YHzfZuJxcTD9zFm/bvxohrh7U+pw63R0hLO0ZEMvDK0pstUO5JwQGVO9o
	 hFjq0tGVQK0ugRVtRmbkK32oQ8R47d/VHyg+CNYNWYFLcWfTGGmFLCalNe/st1MNLx
	 PMkPVXi6rZY/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A0A083DDD;
	Thu, 16 Oct 2025 04:39:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 84ED2781
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 04:39:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 764B9410F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 04:39:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6yo6i0U4NGhp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Oct 2025 04:39:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9677A41098
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9677A41098
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9677A41098
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 04:39:50 +0000 (UTC)
X-CSE-ConnectionGUID: j/DRSd2ORz6yoX8vt/q6hw==
X-CSE-MsgGUID: Obn0sBtQSOmNVMhy7REgQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62922607"
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="62922607"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 21:39:50 -0700
X-CSE-ConnectionGUID: R22OdpJLSKywul8jAm+wiA==
X-CSE-MsgGUID: e/4bK+xDS6ujgqkC0iFkxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="182143127"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 21:39:49 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 21:39:49 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 21:39:49 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.26)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 21:39:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LcYA6Y/JsC0iXh6JX+HqoM3g47mhTS4UKax+kyQXVg3eTKgtX6R3WUIJgjEC5RQgNUc8x/w7B3ut4Xs5e7ccnyjAPvSKVLkHx+DlinDQ9y82CZWDoKGR1jeJQMkWR/6ixny29iRoxHnO/IiPGtlD3FO+OxEQg5fxIR5U6jJ6ZCzFqn+S4S150BiwOJDzHBXpd44Om9NyqufYAQGdZVAjvAIxaz/B90Zd6QneUXNTdVhklzGJ3th0h1rYi84S/OJ6R3VXEzIbiiH1jhYOIvisXbUND1pm9xrD6eBDLTp7YWNMkL07MLCLoGgI1VanL4V7ZMd/5bnXLsxmedBrPbAsXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q7TSEDGC4+NZ/babxZJRaZx6Dk7KsNqYdmCSsf7bMOA=;
 b=Oro++ufSRSlaooV2k9vzxyHSzJSmdBQUypxVdkWZvjGLKACsitjKu4tA41mpaERmI+Wa+rUdXq1e559Jp1494d5afteNAVVuIcPmHsAQXOt/Zr0jYqpRZZRRzF/iJxjtdviv0Sgod8nbDzhxlCQv+gHo89/MK2GeUae+9oo6oXtkWxhwXIJQr/7uIAcSTmkEhJO9+GeLLgs2U4f+efCHyiAn2Stzns8MIcaKZJRM8wFu7grdhLdFmrzmw1wlSV/rUgywVGUhhunP9SmcRl3r7ymoyW2hRyPJu5TnRjK3vX2RENpB2yEjHY74fu24Cc8DnwskNsyPHDWbsWrRPJSjhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SN7PR11MB6898.namprd11.prod.outlook.com (2603:10b6:806:2a6::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Thu, 16 Oct
 2025 04:39:47 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9228.012; Thu, 16 Oct 2025
 04:39:46 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v3 iwl-next] ice: add TS PLL control
 for E825 devices
Thread-Index: AQHcLsM7M2nTVH0OVUW555exfYMeY7TEQ+CA
Date: Thu, 16 Oct 2025 04:39:46 +0000
Message-ID: <IA1PR11MB6241F6AD266AB7063CAE0AA98BE9A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250926085215.2413595-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250926085215.2413595-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SN7PR11MB6898:EE_
x-ms-office365-filtering-correlation-id: 255eadff-3f2c-483e-9ffc-08de0c6e08ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?U4EIKVIi88hlq1u+EZK1+IYErIhSgLyhUui3NilpKvyjNrZTGUd36jmOpUKP?=
 =?us-ascii?Q?2z9GU6s7nTiIt0ts6hPKObfAV0CQXmY4keTcLS+CVol9hoHhiU40GvykMRSR?=
 =?us-ascii?Q?czul5wqXOO9xHZHVqk7ozsZ7a8myD2blzC+0e3sgjYo/pR3FDTIi3C3yXvsQ?=
 =?us-ascii?Q?ZSmlFkX3jRK5byHlKQ/UnAMZO+3NLZIXRHrQykfBPeciI/lCHcvoUAtCi8UO?=
 =?us-ascii?Q?q6Fj6R0FZjS2Yg4RN1JBd4Pvp753w2bBPgtAmQeaYqFzoQFfhWn73uVMMxcT?=
 =?us-ascii?Q?reidBl5p4ISSmkXWxDJPTELGCVmTQzxq1JgXUzc9KvhmZg5Y4n1hchhgMD5s?=
 =?us-ascii?Q?yzY3k6TAhhnG3LBQHWDK2m2iIVcdnxUnPJWUvG9pyvBwMu7LtG6CEE9ae4pZ?=
 =?us-ascii?Q?GFxtR3efTVD/g74mxXcUEbkFHIkKpBqZC9fYacc+Fihb5pkALalQx/dSdyLO?=
 =?us-ascii?Q?QWlcMNCHDmtsS9nToyZkVmZwchy0Qo7um9DA9E9Xi6bHO7xZ1aPMz7dkMEK0?=
 =?us-ascii?Q?tvhqrMb5AF7383V8cP7s4FbpdcWPcMVt5mDQ3A+c1HVX3WamIjPqceW3V9D1?=
 =?us-ascii?Q?EcuxOv33u4pnYYb8RxTGse2J6hu3VvFzgAk8CpprLW1jgjVRSjASEtkKFXZb?=
 =?us-ascii?Q?f2EbpsJ9QDktBksdn74dVUGCEePKzH1e8RVUYAvK0zj/SeZ8ihyPuotXERdP?=
 =?us-ascii?Q?+h5uvqvRAduWEVRwycJCP/NlJVrjmZzf29cngXrTGppUrWLP1FkoyfwpUFma?=
 =?us-ascii?Q?LqrLiR8hWWpsXpIW+ec9uFpPYRjZVhxon+WhvgPyz+dgJwLLicA20Pmsh6T9?=
 =?us-ascii?Q?aHc96Z47DhWouLxLHtqrb7t5s1kn6gmlf+WIUlfVDc5JSnDfDrq8p6VyEtz2?=
 =?us-ascii?Q?lHvjeQi9sLmDsxkVdCjDWjB/gLG7/56iqIMVl82husoDMQWiLeIyoDSsRJdL?=
 =?us-ascii?Q?IyjvnbFmUJ/mn+OUWFFYDJHhupDL9G7WarWQyO2RtwwXV7VqPhsdQREv79Ez?=
 =?us-ascii?Q?/i+9jywoqC2dfOX6V9VpYx40c7WlSyjRjZimo/OaXoTnG0iwkW3jXUmcO8vq?=
 =?us-ascii?Q?r8gYIo3730Q7oKhiyg9biksu1Vzymu9qZSgjlHvCx5k7zoBMQfJuScfgrZ3C?=
 =?us-ascii?Q?pPCq0s5WQNn6c7Vzx1Y9QgLZ9PMgFdVVc1p8HlPyd3Plb8CxHnH2G20YqlKx?=
 =?us-ascii?Q?TjvUXvA2zgQCWaqk5L27nQ3yBwCV/Jv0UfuLBnXltpDaa08hu/g++bNnNMxA?=
 =?us-ascii?Q?2UMWn36CBb4fL+Pkpcmv5F4g5Oll48O0tzSHddPKiGUSyIpFffGXj8EmPdic?=
 =?us-ascii?Q?KTBuQ0TNT/bW8lZC4sDb4W0Guy3HN41M6l+spxBexwLRihvSkR+S9EnuxSh7?=
 =?us-ascii?Q?0v2g6KnHD1I5KWW5iEw5YhmxMJ28g1Z2reiaityFF9brjih2y6lV/QbwGXTB?=
 =?us-ascii?Q?XhoZQX/2hCiPQbYZUemz8tSbGDSw78wSGt8nZHjpSKxii/dFdjw7G012Rf+C?=
 =?us-ascii?Q?sQQIQ2FB2qBst6yTugp3QFDHDTAwi4ajLSjW?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y6ZJDH3AFlorPgSRhXeLQ0m1rDNRI43w9rd/COt3aLQO2OE9SHrHJoKa/emL?=
 =?us-ascii?Q?eaVUgyvvs1hJZwUlUQEaIw5MPWmOMpknrGctZN8ItP+GFocunYmSL+MMHspK?=
 =?us-ascii?Q?bu+0g/1X416yOpRQB8D50qpOKa1we/mihoEEk14T8kDn8wzMr48QHkVAExVS?=
 =?us-ascii?Q?+qP3Oi1Jf2Zhjyy1ofkx81DWZ+xmq+Q1wn/fYt50hKwdXSBKt88eZh9Gj82W?=
 =?us-ascii?Q?aTmNKMu7CJNfenj4fWQYRsJj4EWAa+NXgvvR57LBO5+QdmbCpTqSvndoYlZN?=
 =?us-ascii?Q?dJL4gEVh1XAM1JuL3mM7e2xH2X/rwg1Hbfzf1RaAa9anp+ctiAYgqwKCaDaV?=
 =?us-ascii?Q?HIzi6MwmN4TH5JRuIyYnR/UfhthxvIl2cdza/T1N6LC3Pt7fL+XQHdicIADp?=
 =?us-ascii?Q?n5Qotbc6VHU7XZrx/TeJtGYSoJs1p/nYJUB5diLLsq/0/pdS+//0ZD9XC/T8?=
 =?us-ascii?Q?zlPy/qz12Pn2mvnDPjjfO0n/9Cz9NjRbDr81H2ZeYUPgaT+xFejyXOb+OBn5?=
 =?us-ascii?Q?N6CflG9hej4TeZPRy92Vw41TPwYHyc/1v8UVCPQYesdlxAwpkH5z44Sqby6T?=
 =?us-ascii?Q?a1yxuuNcrAmegxxaQvko8AO10KNT5aEaiXozf7T74e34p3UmJ4z7nIIFaTVG?=
 =?us-ascii?Q?P3rx2iTKxVVtfKtVqZv7LfXmy1Abd0XBHmrxv9gKujN5tGKTiXvRuztV509S?=
 =?us-ascii?Q?fFDPKY3AE3AlbVgJeF+g2uKftsTqKF3tWNeSAfprXBHGo+qI65PZPhiM1unz?=
 =?us-ascii?Q?nZyA6IZt9QH0mo+KFCMHXFZGe4H47IV/E6WEBqfr5RH2QJJlvuhoTvZbLQD8?=
 =?us-ascii?Q?gfGa32RV4X959pJEqJmNlzNsnYFMG95CIt+ZYGRIaOrm2EF8ppYYdA5b8p7Z?=
 =?us-ascii?Q?jt8i9UhpL+Ss7xKzaDgVymDdplj7jBRlF6OsNJyDCHHGRPchbAn5Sc3Xm03F?=
 =?us-ascii?Q?7086KR+jrbgCtZazAIUqq1/NSfQldW/ok7/qsqCle75S3x9Su8uFcVnCE1Qo?=
 =?us-ascii?Q?559YvVhDrfMjc0CnAWozkXzMDnUXiuHcrcwFmIjo3b8tOGfImz5tsip/AYwK?=
 =?us-ascii?Q?WXu0ImcU4CoUep+kkvmghU85aFn4KM5D48E+aDLW/AoXOlm0lz2QuVhGYwX6?=
 =?us-ascii?Q?bv6H9aSScWgPiiCy3YJhb6tmz+n65NqPLh8oW8sP8oT858/f3JRvJ5AT876o?=
 =?us-ascii?Q?aHWN14Wk7ExcAm1lvyM+HlsFOnQPqlOlWP+3wt/67YVtEbRfhs6GqjtNHgKu?=
 =?us-ascii?Q?CTiu+tY2ZkEAUXHzQjBSEnQYKuEXonlZK3JnhKhdanVml64C/uy320AFs8MU?=
 =?us-ascii?Q?giiqgHxcFdgSYLYpfuNE9J1sOkmmzACy+2Hs15Xi1A97A2cIHHHINKUNZAlv?=
 =?us-ascii?Q?yK0DHSHwNVaaRYZu183iRAwZ4rX/jsA5uwZDDFRVOmOuyaEbOgrPCKX3wmtV?=
 =?us-ascii?Q?FxoN01x0wxNVptogElFRQ+LwZcypH11t4YAO5S+TUSd+W6AlIgHzexZb00Tt?=
 =?us-ascii?Q?/ziPIelF3kfTputsYYPtXmsgq7/YjEfVdQyNktUjV/MpYFoZFxoPnjMZCjl3?=
 =?us-ascii?Q?5X8D5Qq9Q728KYP1RD8BXFwWLfJwrlzHvimS/ld1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 255eadff-3f2c-483e-9ffc-08de0c6e08ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 04:39:46.8146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y3PXYBoTEM/mn0ITTIChLkCBn98XDPln62eLmXNl0aDH8MJWflLgzZr/EODVWadE4n4sR3edKUPIQ72ueD4LdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6898
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760589591; x=1792125591;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G2HbhorJbMLVsMWgX+DyTeesG95SbjVgSb4JEXnUxhg=;
 b=Z8VX/eUTWOeBduT6YavI4qRl5FcaSEbpAXnlxkWvp4+8rTF7fTolHbfr
 hIu7vcoeT+TZo8prpwaQtwBrUSB64cSwQJBuXmstwoUUjzLJxvkYMiIfV
 zgAOGFyb9j+wqWFjROmrH68w8xf4fh4xnNqwQzyMZrigFcTMDWhd75vOs
 fn5czC9hTH6mD9YhbnxKcjf3NdVOJFyhTZxC4IG1H+2eqdNlcVg88Bmcx
 Wg3enLWd3X4PxZ6aW+xmjcSB/Hlce+RsKR6qDw7VizD3ORXH8ceaer1Up
 qqvD22pxTMhCLAM9a8YBk/syPFjHx/isk8PUD74MZdES1At498Qry1SEo
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z8VX/eUT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next] ice: add TS PLL control
 for E825 devices
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 26 September 2025 14:22
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; pmenzel@molgen.mpg.de
> Subject: [Intel-wired-lan] [PATCH v3 iwl-next] ice: add TS PLL control fo=
r E825 devices
>
> Add ability to control CGU (Clock Generation Unit) 1588 Clock Reference m=
ux selection for E825 devices. There are two clock sources available which =
might serve as input source to TSPLL block:
> - internal cristal oscillator (TXCO)
> - signal from external DPLL
>
> E825 does not provide control over platform level DPLL but it provides co=
ntrol over TIME_REF output from platform level DPLL.
> Introduce a software controlled layer of abstraction:
> - create a DPLL (referred as TSPLL DPLL) of PPS type for E825c,
> - define input pin for that DPLL to mock TIME_REF pin
> - define output pin for that DPLL to mock TIME_SYNC pin which supplies a
>  signal for master timer
>
> Note:
> - There is only one frequency supported (156.25 MHz) for TIME_REF
>  signal for E825 devices.
> - TIME_SYNC pin is always connected, as it supplies either internal TXCO
>  signal or a signal from external DPLL always
>
> Add kworker thread to track E825 TSPLL DPLL lock status. In case of lock =
status change, notify the user about the change, and try to lock it back (i=
f lost). Lock status is checked every 500ms by default. The timer is decrea=
sed to 10ms in case of errors while accessing CGU registers.
> If error counter exceeds the threshold (50), the kworker thread is stoppe=
d and appropriate error message is displayed in dmesg log.
> Refactor the code by adding 'periodic_work' callback within ice_dplls str=
ucture to make the solution more generic and allow different type of device=
s to register their own callback.
>
> Usage example (ynl is a part of kernel's tools located under tools/net/yn=
l path):
> - to get TSPLL DPLL info
> $ ynl --family dpll --dump device-get
> ...
> {'clock-id': 0,
>  'id': 9,
>  'lock-status': 'locked',
>  'mode': 'manual',
>  'mode-supported': ['manual'],
>  'module-name': 'ice',
>  'type': 'pps'}]
> ...
>
> - to get TIMER_REF and TIME_SYNC pin info $ ynl --family dpll --dump pin-=
get ...
> {'board-label': 'TIME_REF',
>  'capabilities': {'state-can-change'},
>  'clock-id': 0,
>  'frequency': 156250000,
>  'frequency-supported': [{'frequency-max': 156250000,
>                           'frequency-min': 156250000}],
>  'id': 38,
>  'module-name': 'ice',
>  'parent-device': [{'direction': 'input',
>                     'parent-id': 9,
>                     'state': 'connected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'ext'},
> {'board-label': 'TIME_SYNC',
>  'capabilities': set(),
>  'clock-id': 0,
>  'id': 39,
>  'module-name': 'ice',
>  'parent-device': [{'direction': 'output',
>                     'parent-id': 9,
>                     'state': 'connected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'int-oscillator'},
> ...
>
> - to enable TIME_REF output
> $ ynl --family dpll --do pin-set --json '{"id":38,"parent-device":\ {"par=
ent-id":9, "state":"connected"}}'
>
> - to disable TIME_REF output (TXCO is enabled) $ ynl --family dpll --do p=
in-set --json '{"id":38,"parent-device":\ {"parent-id":9, "state":"disconne=
cted"}}'
>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
> v2->v3:
> - replaced pf with hw struct as argument in ice_tspll_set_cfg
> - improved worker for TSPLL control (reworded dmesg log, use already
>  exist cgu state error counter to limit dmesg spamming, disable the
>  thread after error threshold is exceeded)
> - doc strings updateds (missing newly added pins description)
> - addresses comments from v2: use ternanry when applicable, commit
>  message typos
> - rebased
> v1->v2:
> - updated pin_type_name array with the names for newly added pin
>  types
> - added TS PLL lock status monitor
> ---
> drivers/net/ethernet/intel/ice/ice_dpll.c  | 384 +++++++++++++++++++--  d=
rivers/net/ethernet/intel/ice/ice_dpll.h  |  12 +-  drivers/net/ethernet/in=
tel/ice/ice_tspll.c | 122 +++++++
> drivers/net/ethernet/intel/ice/ice_tspll.h |   5 +
> 4 files changed, 499 insertions(+), 24 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
