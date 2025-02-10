Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E58CA2EA91
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 12:06:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4966818D4;
	Mon, 10 Feb 2025 11:06:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7H04WZ4Cj-mB; Mon, 10 Feb 2025 11:06:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C6EF81916
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739185614;
	bh=JWCch3V6JSU0ck5Qu2dz/jQ3ewhPcX2Sp296z0c64n0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=weyyiSeXJIglxe/fA8M3b+UrOXZjgzR7Qu6fGqKr7OYfkJw3IOcIUQnQ7IyNsrwzS
	 sy6D5WFzwrulrTDLccoYGroi43YhBtn2h5Lb2U9cmV0Un0YMpE2BY+t3w7CGw6HHqq
	 9mNJVImFnLxxdgNu+FzMwrkdFq5EWOVARECSrOgsppNH07J2JyakoJAgr+Q1N1Ffvc
	 pSp3BgG5XArA50PfoVJ9AaVgy3yFnUw4Z+7T955Szkt6sFcfa8dnX67SIVh+cpN08x
	 eLoBkW7x3m37Eh7GBeAFOGEVdyOtK7QJJo2LJeVMmNEeWHmTJ2FWo6iIeLX020Z60b
	 7+EKJiLr6hc5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C6EF81916;
	Mon, 10 Feb 2025 11:06:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F0B45199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:06:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DDA7F408DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:06:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O1RRoC16w1UU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 11:06:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A4F8E40887
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4F8E40887
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4F8E40887
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 11:06:51 +0000 (UTC)
X-CSE-ConnectionGUID: T0USMw4uTs2r8f8I4mTQyQ==
X-CSE-MsgGUID: 2IZpuyDGQ0KwFuwkHvDOTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11340"; a="39625729"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="39625729"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 03:06:51 -0800
X-CSE-ConnectionGUID: 17VT+zINTRyJK5S+P4/28Q==
X-CSE-MsgGUID: Tx6W7qlIS/q5sIUXe4vYzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="112111898"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 03:06:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 03:06:49 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 03:06:49 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 03:06:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HszbuAZvuu2qzIqPm7mIekzK7IOT7AnndonY2fvPXoGlTudUWYGoxj78VqKBPQTonz6T/XqVRMgS4qDnj4E2vPr8wwJWkolQq4quWq75BVmXJRuoGIix43Oi2UYUjbv8eD/QpxlhWWUUfsfqU3Ns6wMrtuVaLl33JOzNO3ZtimVLSusdCg0NjWC2otGurA3vlQ65/6uzW74SA/+xdRypyVs2ceLejEUN1FRc0J4V5mlpLUzenzHEd0ZEPTep9fzjq+8Lf6YpcVDtbFshtE+xhwUyVCr5nud/DkePOZpxMur9LYBoKifv1lQECw7hzzGnOhXhyTWeh/StBr5HfreXqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JWCch3V6JSU0ck5Qu2dz/jQ3ewhPcX2Sp296z0c64n0=;
 b=Swe1y13GqOFBaSVTemasgfYjdjlcifjfmVErcBnrnqKcOORAZYoPAvZ5U8CmBDMy+uC652Z9qnjoQ4LD/aNcHSjub7hiSDHlFxqYTV38W1QAoaYPuOwfl4Y6zddr+lcDS+vFNTYJa5kdlI5/69f6dE6JQL97ZATSF8IS2sv1uOWoXudZheSMpKmqTdT6FU79YZ9e8ksWccDXudQvpsH8jjiJUCWQ6YVnBtYGGYwm/HJPYJgYAaPrrgOctEXykD90BxE/vr2niiPmlWLnprDEHO95ZdIi7SrKHkxT2LGZCwqSwnM0UmtB5bSLQ1rVIArsTL4VFANvuX1xFJzrzQIm6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 DM4PR11MB5246.namprd11.prod.outlook.com (2603:10b6:5:389::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8422.18; Mon, 10 Feb 2025 11:06:47 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%6]) with mapi id 15.20.8422.010; Mon, 10 Feb 2025
 11:06:47 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [PATCH iwl-next v1 02/13] ixgbe: add handler for devlink
 .info_get()
Thread-Index: AQHbdk67/5/SL/GiukWEQRnGO/K977M/MmAAgAE4HAA=
Date: Mon, 10 Feb 2025 11:06:47 +0000
Message-ID: <DS0PR11MB7785F42A55BDDBA791D14AE9F0F22@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20250203150328.4095-1-jedrzej.jagielski@intel.com>
 <20250203150328.4095-3-jedrzej.jagielski@intel.com>
 <20250209162722.GD554665@kernel.org>
In-Reply-To: <20250209162722.GD554665@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|DM4PR11MB5246:EE_
x-ms-office365-filtering-correlation-id: 10c551dc-3c12-4d8d-a22a-08dd49c3031b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?IeUFkOMeOBfQ8QEmD9jLg/C5/o7/QfFW5GjIW3DcKuxpGwjx+Vf+KuBgNkIm?=
 =?us-ascii?Q?TScjDxZC3jZTDDmuhWYC5W9/iDVnaFrKQnXuCwCHCn312QN4P3U3KLs6swJR?=
 =?us-ascii?Q?De+EFA0DJURWT5y6xlaXdke4tMCRET6uQGMbP3KP+IKXld4z/ilq5jgq/6CJ?=
 =?us-ascii?Q?k+PWbVVyY0VPX6T0dDQp4ZK/7O5Y7/OfbNjBx3JZXJzoIQu/OvJH681lgpH5?=
 =?us-ascii?Q?53KV7RFmE/8IB6qmO7AHDeuBBeQYIgJneRpEuQ/n0qRNeC5IiH6SeLR0AEb5?=
 =?us-ascii?Q?MoyI5vAxty/M5nTW1Ls0nGT8oda1Zs+vR1+Xba8AYOWIvPDFwbdUQFm934of?=
 =?us-ascii?Q?kGvyr+hI0oIpXogb4o9euRTh6InS+h+cvTvy0a/IK9FzhjbRyVV90KGZeJWF?=
 =?us-ascii?Q?FmH7yZ3CF5gSd9eP5FN86AU8KCOZvlkkZZVkmRwzcGETXGHSv2UTFQo9qbKT?=
 =?us-ascii?Q?/rTg0fnWcupcy7OJeaBlUZ4gLRJ4wavKt8TGwivlo5igWHRv2kuJo7oMG7rh?=
 =?us-ascii?Q?jncvDL6Ifq912vBtPWR6G/hYPkyRUeC1dIptp0GBf3GdGbdBTAFnua8fy3jk?=
 =?us-ascii?Q?+suh6svnYxy5yPCwlbLFPR0X+h3TDOeU1WTnweleWEiT52VOcf126/DwmvKH?=
 =?us-ascii?Q?O+m4kNxBYAGyC2zxB5mAaeHqGwPTuEmeAjgLDyGHcHBoZoZwimtkDqWkYxrI?=
 =?us-ascii?Q?gRG3FMKo+4gvy1nOjsJYR34JZJwWNyUTGJBMWloL0Hi1bY2MCjIpNGe07AoY?=
 =?us-ascii?Q?HUoJtvgc+MqD2aEXWxcsenAkQXjv5B5tj6MtqPN4WiimZmX0p+gPV+5nbMUl?=
 =?us-ascii?Q?ZunNy7a3cMd+7z/JeE2JTr6ZnoGlfxRYfegRqs3bJVeLZh2jrv61xS5OxOtX?=
 =?us-ascii?Q?Bt2dlXU0YHbSsUW3gxJqYFFWgAytkJ6oU2k0lZpWTjZHxJn3JMIADYdSbhVd?=
 =?us-ascii?Q?NBlsU5xmsoabV44ePaNMU28HpBJR6PMr87XcvQgwxvfLwWt3wCao6lP16LZV?=
 =?us-ascii?Q?YPSQbl2GcIdrnLhE10XLKwxYIzxiq9Ldvs7t/ncUvg3GXgygAYv1lVLrVbUo?=
 =?us-ascii?Q?xYo2epM0MPxmnkMOLMfhB433ckCrqQeGhncyR4FrPT3WAvE9CrYZpH9dJXfU?=
 =?us-ascii?Q?oi18XAQOnO4kmMb93oWtPQcUz/yeY67+zPEGW7FQ7pZiOGcP/bho1mE7LsR2?=
 =?us-ascii?Q?zgh2xpekgG8osOlbNflpQ/+IP4LBYRQ4hxzxL+OcUi0RoOYB+jNFOkcp0/GE?=
 =?us-ascii?Q?SmRxjk0kaGWBvGU9TOGwfoJEwQSqzzTq/ipwNfm3owkY9UVT/h8BPzWJFFvr?=
 =?us-ascii?Q?QoAUggr4pnWcVUL4+0T8mRZZG11IsNAhDbwybJAuViLYmlNuzIGn7E1l0K3W?=
 =?us-ascii?Q?hULRwO/yYNVyHhcs5NMuCjH6u9ZNM/RbnrbEfc2FeR1XwA93XGOKd0oAcPWJ?=
 =?us-ascii?Q?IlXlcb/4+/QEVVl1Z99um3zF+/FHeo7l?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R65l3gYu4e6gQYwd3MKo8VJ/weqCKYAnl6v0R1hhYBuFDeFM0l5PZ4trH+qf?=
 =?us-ascii?Q?5sVyLntXeVgYdOpdxpCjW3QcSOFQv2m/WWoRKhWxjTltGU9GPjxtYkVCoI9o?=
 =?us-ascii?Q?UJUCHnzvXwB6g9+LhHyGqiQhMQBNPlfRCre3lHU+T32eMVYTzwEo10gpBXc1?=
 =?us-ascii?Q?H/3vHxfT3sK3bYsHv4lyjxblc2II/B932XUfepeyxrzyGewfrvFjBY2N2I/G?=
 =?us-ascii?Q?m1KGKvvZgO7EW5fA4xm/5TD4lU6PPyPohmx9FKVbju0F8nRHXGi4FczJSt0X?=
 =?us-ascii?Q?XuZNPB+RkqhPJ5Q2r+YnXo/G/oLa3d45nFPHX9TuuiH/db6pq7C3nSnRsk8Z?=
 =?us-ascii?Q?h2gvdmsO2D/tvitvsrXtFzix6qtVb8/jwg1ObW0Odinos9pDpizpTYTrExe1?=
 =?us-ascii?Q?c2E9FK65EcdET6Czw4lsObgzLG7XqnbMiKC5G+ial9JHyITcKsMlJUkWX3Js?=
 =?us-ascii?Q?YPzrUvkXgd85Q+b+SOqU4isKoHjBqxbVoPKoWf5mcs0iU906bTbjR5evy8e/?=
 =?us-ascii?Q?1Yy8I5H8GGqNcqKS/9QoM/NVmmEqqWvk5T7L+OrLqvosO46oEjZJUGgnV3nL?=
 =?us-ascii?Q?a0ZqQiEWxHWGFkMFC/So8drs5yuoaRnQNXG07U05KFPGcWbD0wYQ9ifey3CB?=
 =?us-ascii?Q?JaeypPRnTzZriV4t0cC0UKQ5VkmdJxh8DsmZ8vxo39RXBuK5lka36K9a+RoN?=
 =?us-ascii?Q?4geNWusHENlkcaJ8LFpKgyjyN15C6v+py5lSHtOBB7xb8p4O4dHgH/1JOwBa?=
 =?us-ascii?Q?NwbPvGlElex3DdRTNkQJe1R6F4rRNLLTXHK1nodaNZ8HrtWIIZrbn5FdhZy3?=
 =?us-ascii?Q?zA3V+djGVa4kdOOOpGnod9253hbNcXuoBbSsKUjJWVOQVr/F96jhhhHECrq9?=
 =?us-ascii?Q?89TP1ZQaro6+ppIAeevXIpy69cE96RdEo0OHs6Tm1QTi3NV1VgiXS+HZZoqm?=
 =?us-ascii?Q?aNJWyIXoCfbjt2zUSmUDlI3WhZV/DbQVIt50SNyqBDwed4PwAfc+1DgLdcyZ?=
 =?us-ascii?Q?1qY9LI767XDBrhWIeIf9R68ecdnbEbvrAbio0spt1BZqV2HMFcnWkdfzR5ov?=
 =?us-ascii?Q?wfx1+nW8LqniuA0XkuLctrOMnvAiNXVsiFFKPp/nJ/+QC7Gzy9oiQ38cLlEH?=
 =?us-ascii?Q?5AW2C1JYF627eqvPXHoSdNLxvio1uKAfDaO5yalwHUy0Bx/XhkRBmtQoYIe8?=
 =?us-ascii?Q?47FG1Zj59CtIQuYDTheoc6tJFUoj8QRHfagpHfBvkhjnvONw5k2iq5tJsThx?=
 =?us-ascii?Q?ywz3uB2iIqlDeOK3Qnndv9ReOriQTg0+XPtlk+Tn0Hn+gMpjggNv/COqXscJ?=
 =?us-ascii?Q?7b/j5bRxJUkiEYhx0lYY8ZGl08qsNFxTUiIxja8LWs4YxK/BJATRqRTh6qS7?=
 =?us-ascii?Q?AA0+sUlEvSCSjQ1jOiWbJF8VFFhTSLokv3gEagDw6J/tkwlKBjcxRg14pnJl?=
 =?us-ascii?Q?75HujBoFv3DJE4GeXsRZB8gBgWx3rZam6/XqVC1AeLTYvUa8VaAn5MQZbaWC?=
 =?us-ascii?Q?Q3fVLyg6OoR4xARBDC2UyVAnY+LQQDkyy6aeK8DnRzpIyl2IYqqaS18JM1O1?=
 =?us-ascii?Q?wC/uH2U9p9lOKSJP/NvjlHFWxGvQpue5Y17bHYn3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10c551dc-3c12-4d8d-a22a-08dd49c3031b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2025 11:06:47.5776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7bDwdkM24NDoAobOVFgysBInZd//w50xttRZFjuXJuS6in+5gzt9uEHDpjbYXrLJs53LV7UUzQo0Z3PDDBEzDVZ+GWb5d8PWgKR4p+Suk54=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5246
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739185611; x=1770721611;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZaAsDsY12MdfL/ExrKLWtx9Ep66G66zhCY09WUfzKSg=;
 b=AE8xFDbpYHrqwarR14VCiN8Ba0gTNj821ks/gPHajUyrk3jMw35Nj58N
 OxF5QzBZN55Nawme0DW6/xnSdc3Ca+WD9Wkjz3LuLu+vxG8q+9DM4Mcmq
 p+d+JSkKO7+JRU24cAohUniWoVu1m0yXgNAAai4K4J8umoPgNvEeFZhkJ
 Ldqxqo5vLZSUAMjOkhHg4yf04jiv2LuRQMBU8bPdlCNtNq/Dcs1VZOWv5
 kHCiQyKHXY1lWfrN/TyjZv/qdlLVRZLqbQ5DNiR14nynUrEtEVreTY31A
 UIOA8Lovh9FRGkJ6SWjw08VrCgCkyAbh3hzStnwgWUALNvMSZFWOKus5P
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AE8xFDbp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 02/13] ixgbe: add handler
 for devlink .info_get()
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

From: Simon Horman <horms@kernel.org>=20
Sent: Sunday, February 9, 2025 5:27 PM
>On Mon, Feb 03, 2025 at 04:03:17PM +0100, Jedrzej Jagielski wrote:
>> Provide devlink .info_get() callback implementation to allow the
>> driver to report detailed version information. The following info
>> is reported:
>>=20
>>  "serial_number" -> The PCI DSN of the adapter
>>  "fw.bundle_id" -> Unique identifier for the combined flash image
>>  "fw.undi" -> Version of the Option ROM containing the UEFI driver
>>  "board.id" -> The PBA ID string
>>=20
>> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>
>...
>
>> diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/driver=
s/net/ethernet/intel/ixgbe/devlink/devlink.c
>
>...
>
>> +static void ixgbe_info_nvm_ver(struct ixgbe_adapter *adapter,
>> +			       struct ixgbe_info_ctx *ctx)
>> +{
>> +	struct ixgbe_hw *hw =3D &adapter->hw;
>> +	struct ixgbe_nvm_version nvm_ver;
>> +
>> +	ixgbe_get_oem_prod_version(hw, &nvm_ver);
>> +	if (nvm_ver.oem_valid) {
>> +		snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x",
>> +			 nvm_ver.oem_major, nvm_ver.oem_minor,
>> +			 nvm_ver.oem_release);
>> +
>> +		return;
>> +	}
>> +
>> +	ixgbe_get_orom_version(hw, &nvm_ver);
>> +	if (nvm_ver.or_valid)
>> +		snprintf(ctx->buf, sizeof(ctx->buf), "%d.%d.%d",
>> +			 nvm_ver.or_major, nvm_ver.or_build, nvm_ver.or_patch);
>
>Hi Jedrzej,
>
>If neither of the conditions above are met then it seems that ctx->buf wil=
l
>contain whatever string was present when the function was called. Is
>something like the following needed here?
>
>	ctx->buf[0] =3D '\0';

Hi Simon,
thanks for suggestion, it's definitely worth do be incorporated in the next
revision.

Thanks!

>
>> +}
>> +
>> +static void ixgbe_info_eetrack(struct ixgbe_adapter *adapter,
>> +			       struct ixgbe_info_ctx *ctx)
>> +{
>> +	struct ixgbe_hw *hw =3D &adapter->hw;
>> +	struct ixgbe_nvm_version nvm_ver;
>> +
>> +	ixgbe_get_oem_prod_version(hw, &nvm_ver);
>> +	/* No ETRACK version for OEM */
>> +	if (nvm_ver.oem_valid)
>> +		return;
>
>Likewise, here.
>
>> +
>> +	ixgbe_get_etk_id(hw, &nvm_ver);
>> +	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", nvm_ver.etk_id);
>> +}
>> +
>> +static int ixgbe_devlink_info_get(struct devlink *devlink,
>> +				  struct devlink_info_req *req,
>> +				  struct netlink_ext_ack *extack)
>> +{
>> +	struct ixgbe_devlink_priv *devlink_private =3D devlink_priv(devlink);
>> +	struct ixgbe_adapter *adapter =3D devlink_private->adapter;
>> +	struct ixgbe_hw *hw =3D &adapter->hw;
>> +	struct ixgbe_info_ctx *ctx;
>> +	int err;
>> +
>> +	ctx =3D kmalloc(sizeof(*ctx), GFP_KERNEL);
>> +	if (!ctx)
>> +		return -ENOMEM;
>> +
>> +	ixgbe_info_get_dsn(adapter, ctx);
>> +	err =3D devlink_info_serial_number_put(req, ctx->buf);
>> +	if (err)
>> +		goto free_ctx;
>> +
>> +	ixgbe_info_nvm_ver(adapter, ctx);
>> +	err =3D ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_RUNNING,
>> +				     DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
>> +				     ctx->buf);
>> +	if (err)
>> +		goto free_ctx;
>> +
>> +	ixgbe_info_eetrack(adapter, ctx);
>> +	err =3D ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_RUNNING,
>> +				     DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID,
>> +				     ctx->buf);
>> +	if (err)
>> +		goto free_ctx;
>> +
>> +	err =3D ixgbe_read_pba_string_generic(hw, ctx->buf, sizeof(ctx->buf));
>> +	if (err)
>> +		goto free_ctx;
>> +
>> +	err =3D ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_FIXED,
>> +				     DEVLINK_INFO_VERSION_GENERIC_BOARD_ID,
>> +				     ctx->buf);
>> +free_ctx:
>> +	kfree(ctx);
>> +	return err;
>> +}
>
>...
