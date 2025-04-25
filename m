Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4C0A9C692
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Apr 2025 13:02:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1077A80D71;
	Fri, 25 Apr 2025 11:02:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yzn5fRtuHiaj; Fri, 25 Apr 2025 11:02:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99B2C80DCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745578949;
	bh=MA7adVP8GeOw02RZpf51dnrEUZxbcl0/mPtvI0a8b1k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C7HdiJ1Oufmo9xRVN4QwVsJ7XIy700V80++ZjJ+vlLHWXbeK+p57hf5JHpbF9oAcG
	 biP2SFBgcay18/xLvBRU+OY18GFqIdvfThc5Zx624qJXVWR0JmZuuXGiLJdrzKpJGA
	 pjfPQfbU7TlxOKj0y9144K7g6flGFV9IFj8I8TTD8zGXSQzAjzhHzwKwInC/pxVnLT
	 UgkcZgV7r5+6AMSi2atKLB7WwNtoXhZK6Dqk/1MDpZVTIuAlYH4eaabQfMxJXUtAd5
	 bjZsmDFJU6jPKaEBmQPBYK4Kj/9OZpwDocxBxWptVov81StK5Z7Wc9KOPhxiw9hi7h
	 vDjfurzONFGiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99B2C80DCD;
	Fri, 25 Apr 2025 11:02:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DA27C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 11:02:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A047403F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 11:02:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B0sf9xFHPBjc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Apr 2025 11:02:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A4C3E400D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4C3E400D1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4C3E400D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 11:02:25 +0000 (UTC)
X-CSE-ConnectionGUID: M8NntUZVSvaIehzS3EbRpg==
X-CSE-MsgGUID: 1uhPMS6ORly/VWkuMF8zGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="57884191"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="57884191"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 04:02:25 -0700
X-CSE-ConnectionGUID: oh9S1i9MSOuget0lF6DqkQ==
X-CSE-MsgGUID: uCiOqdCkS6KuoVa76ne63g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="133405180"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 04:02:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 25 Apr 2025 04:02:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 25 Apr 2025 04:02:24 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 25 Apr 2025 04:02:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jvr3wwstlgu4tJXuY2p+sgeX6pvMtIeVlUdAVmDaJDMRAR8ZnDmQHGrq34akX2jfrasFIWGxErAG8Mabq1tT8GI3iQFoPm+mmweI6Uzp6KkkkCqOzlWZDZaXQooZf3sCU448fJXaJlyc7uPxQ7FuG9o7po3If80TqM2iIR73ntHzT4Un0Txq5pDSKWuIFB4amlG8xBVvBzBEq3X/g3Cw109EBVr6AWnl7AJoQsqH+Pf3WenUvq5mQ0qBWCF6eb72C2aFGIfxLpjoqFJrR6A9k9MJHof/Ha0LPcBAIKxcCo0cJhj4TbVagfUcVQve0731gX0WV+Oo3Bny4sonMZI+EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MA7adVP8GeOw02RZpf51dnrEUZxbcl0/mPtvI0a8b1k=;
 b=V8CtPGRrbnCX0ji5s+koZOQUAjDbwOOPKp/qJjohnP1P3S5ayxcyE7l/ZVaDwPCAMTcRDxly7VIIv0lXMEfQ/gjBlq5NlVj98C0WGdALj03YSiQ0LaZhFtNb1hVywqclMsev3wwVFv+FO97nLKAfzBViToFZvwYZIVoPV9wmlVdtGum1eN5lC50Gc9KkohWnprduft8f+ie0ZFPgplFIg+h5iKIRXKBiHReCEDyS0uGmTGRqagjZH/J9y18SUxl701XlHRIw6xLmJsmLW+KdU1Af8qiIvrnvCHDVYQE5bLgcmEtWl5pVAw+OEIGX3tY5UUA3htWst5JqzZZB7w8KsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by MN2PR11MB4694.namprd11.prod.outlook.com (2603:10b6:208:266::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.28; Fri, 25 Apr
 2025 11:02:05 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 11:02:05 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [iwl-next v3 6/8] ice: use libie_aq_str
Thread-Index: AQHbtah9SQiJBToFR0qsd23PvS2jNrO0N4mA
Date: Fri, 25 Apr 2025 11:02:05 +0000
Message-ID: <SJ0PR11MB58660755F9012E7FD0881367E5842@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250425060809.3966772-1-michal.swiatkowski@linux.intel.com>
 <20250425060809.3966772-7-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250425060809.3966772-7-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|MN2PR11MB4694:EE_
x-ms-office365-filtering-correlation-id: 8cff35ea-0b14-430c-60ac-08dd83e89d84
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?YmnqJBTTSDJbPrVPHpJoG3q9VgmO6yFtbI9GS3Iz/vXD+XNx3xdd8D1g+odb?=
 =?us-ascii?Q?v1CYILXphmqpO2OMhjQ+XXs2qXjk5SyGQlYlkZuyH8D7pPjnGRkitpR+XBRv?=
 =?us-ascii?Q?GqJijdPm6wBbLcMSEAmIhip6pEdhZhEal0/V/t/cYbdlN8f5Qf6EnfIldTus?=
 =?us-ascii?Q?gE/LSASjPiJcpGwCz0zmZvtNFV1wEOZyT/yYzU5bLt0v2f2R+oguf72tSLU+?=
 =?us-ascii?Q?eEHGDBfvVmmaP897hMRID0xknd4m+nZ5DB++CRas78h2kqdj/MgAyTP17C/f?=
 =?us-ascii?Q?aVxz4nNzVzuXDv5X0e7TcF+YzCwj2dHgkXPtjbzW79K7+VwjmGOtFHm+hWtO?=
 =?us-ascii?Q?QAZP3DRtvwlWL3/CZzxq8kOxVhCjLWJarR9AO0Ucpak7Zw0abnmss6jlHfUt?=
 =?us-ascii?Q?5MkuhAvglLcQcnSoladatn4llqWd/fZeRfizSnLYsYn3a/KS4J03+/FumwAD?=
 =?us-ascii?Q?fhhMBXg1z/p/bczAv+KFBVTHs37EXcp30IwhRgbq3eEqS0CKjT1EBc2WmOS1?=
 =?us-ascii?Q?oyrmCFzCqgkgVgkggEhm0Huit8pqk4oQyGJQGE+a30qYS/Si37ToNkD+27Af?=
 =?us-ascii?Q?r055Rwm+FWeduR5ajmDrUFhzshAD0wZDOkZgnbC/n4/ZNsQPdWzet3EurqxQ?=
 =?us-ascii?Q?3vhotok5E6Ab1dWeJ01+0X1GYEK6IRcG/fxwsUD4DOzkjrASZQw9KCFRg2ih?=
 =?us-ascii?Q?QbAbrMR4P/zHaraSdgrVpF3QEB+4CmrVF9Eao5YEMoNGWTa3F78iF11YE4dC?=
 =?us-ascii?Q?+hBWuDMf15yD8I65Ix9Yfg4ikIN7r+J+bEgadXg6fLp4r4v+SEDkaFFOqM9O?=
 =?us-ascii?Q?CWeCY7EfaRKKuRlL57R5l3s25qcMrsUH9jDGyP6ngdfUKDfm9lT2Zvs3OvTh?=
 =?us-ascii?Q?deHkIjlVlkQLGL3OSfRlCHacrIuqLvv3eLgn/6npDHktcRFN0OoLgWOKCaLD?=
 =?us-ascii?Q?0YXD7gJIW4h9C3/wxCCrfzznjTheEVgjeKXQe/LPU58KBy7BV9Uu/Sw6Gw/Y?=
 =?us-ascii?Q?3ZARF8b3CEU4HOC/33bGlW1T+KS/KMQyvbcxDYXdDkYyRCTmuqVRKgVT24XZ?=
 =?us-ascii?Q?FEaVb9jzi49YnX1N5WErYIKMvwaiR906L775ap06KEdGdoflaJ1rQIJKsB8I?=
 =?us-ascii?Q?a+VwVz+I1yIaHbEvX+ZjLGuvAws284dmSUdwkDa0mJvqpPqwR7f3MeIIZEb4?=
 =?us-ascii?Q?NLRljpNt0v0KtjpQkVa44o7t0H6ZIYoxAbIFvJe6/Ijy8cA3wCtEM7i2jgs+?=
 =?us-ascii?Q?V9fr7Pivl1OiSHEff46Qb1XbmlR4AWDr6uUj/GQsUDz6A6OT/DdIzQGmf8ru?=
 =?us-ascii?Q?yqzSsoKKvAVzz7GYpmL5IuU+k4J74ZQcAH8+OfHF2l/RSYPzTFi9wCpOk+pw?=
 =?us-ascii?Q?dJcJ5EVopb6ZQn5ZIZquN1t3Z2O2ABqtk5y0p6yzMhiiiMKSCk23DXQlAKjp?=
 =?us-ascii?Q?cPVlr+ZT9VqWLghGH8YUQGgq7x96K6SAZcmKzE0F15a6Kz/06Ms7DA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TNOprZqnbPlDExtYC01DMMVWzf2NcQ6P6ZUbEqIEDRZl8ZD92gwdgLgvEP3/?=
 =?us-ascii?Q?tlThXTdeVRmdyfG8PsnkP9/0kaB2XTOabzDBxvggzk2m4hxhZQq+mLJI44sn?=
 =?us-ascii?Q?GRQLo0slXARX60pFP+mzu4dRUl55TU0vwBYVVFYz4UIaa6cPvkR8btKknWCg?=
 =?us-ascii?Q?sK06ig7dcPJqGV79QNFyQtUWKTefcdpvpducEnitMy3GBzF2eNAkln0WxOw4?=
 =?us-ascii?Q?MX1ljIerNzbwgLCd64gEGOKCGkcvzRrxLGOZHZnnODCk7N02hdKgmJibzlAv?=
 =?us-ascii?Q?9sPk9ixw7orye2+sndx3JIv+dKbSJNaryWu0NWVsnhqL0l4SQqpH1DlRvUYx?=
 =?us-ascii?Q?Nc+tldZwIDhpQ9jJAnw/gt5LHPdgoK0oaKmjrcQM02xnQvyP1R6Jc4MELYlg?=
 =?us-ascii?Q?HBwUqaPub2Mv7Ef1CjrvzO8Eau4QIPmDXl+XE7XPOKTUBb1dERe1kqM/tuQL?=
 =?us-ascii?Q?ky3KtAYrjqxfA7nHAyZeTochBckfYrDvwX+TASWnh5+XoX3iAYpEYgTQGmDm?=
 =?us-ascii?Q?BdAf1dgLn6H6eECSWCghu9oafFGoUgid7PLWH/URIkO15hQ5ks/pC4QI2yEV?=
 =?us-ascii?Q?Ry+bIfSxUSSqCZX0BijdPZzjnzL4KhSE1AyFwqOZQAMPAoX41A3F/+z2JaC+?=
 =?us-ascii?Q?HydzA2XkPazz6FjoybwZ68hkz7CS3at6+3VP4r4V6btP271/zvUXwJHAjNV/?=
 =?us-ascii?Q?ULHVTXjORetJeE6C/4YIJMJAGvJcyNDNsSZ7Y1tnZRMs9dikv7v0AmtY4F1x?=
 =?us-ascii?Q?AVAJ89MbQ+/QEpgYHu60CSuk1ota+bzknvEiERVe08wfBpZgrCsHp9rXDpIU?=
 =?us-ascii?Q?h3sJ/c7NIxZZXl1fz10l6bJ5UGBcmH5eIAe42YbWTuZujFnr/vomMHeLErsw?=
 =?us-ascii?Q?hWAU6XXbUwV2fqk824pgu+uF67LwfZyU2n4WvFGjPpjOSdZ/eBmh5+HbHlck?=
 =?us-ascii?Q?C2WtnzRNRfBnZNnVAmsK9+WP8OFZjw1JLCiPPZpVK+yUb3zwO0loCPFMapeP?=
 =?us-ascii?Q?KmCTtfrsdpvJ1SCyU+EkRDXdfe7iSPi0i2TgO5+SIbcjCZhf75aSX9TpeN8O?=
 =?us-ascii?Q?GSUaCO8AzsAInLRT1s/xQOVJK3OOw1MjZaDxP0RPxvNDQWmDQPi4BWqu7mK0?=
 =?us-ascii?Q?i2sgnNLSSPZ7HLaFxKu0TnYo/CRmMJB8un98lwiKsuHyMqe2doLxF30Iizbg?=
 =?us-ascii?Q?ekNz0/TA1WgH/3CtH1xOZeQmZ+a86ujIaPJ9KDqd9biEsKaVklt42fpxQavT?=
 =?us-ascii?Q?U6GtxKgCAEY7i8V7I6cIG/GBG2Woyl5qnM+r9lNE2WIP+NnM2qPT0Cm+DUWo?=
 =?us-ascii?Q?Cd/i+Z7tqy3IGHbeuAz/4OtHMaBZRHIyHHW3vLySm13/+Y6ojlrdYJSKtIBL?=
 =?us-ascii?Q?TQmFZk+uuAOUBY0cxY8NdCyWsFqzcCS+b6teqLWAvahXxEYNyjZdrQNrJCXc?=
 =?us-ascii?Q?xDYMgN0uIPJI5Hg2ldN1V/vpXTDMNVh3SPuREEn4LTqCE5iSEylKeUJDOP8b?=
 =?us-ascii?Q?y5Py7GiY68EzvQ18UxQnabGyh9ZHPrQvIk7ZpBgfabe200OU04GEhbcO/b61?=
 =?us-ascii?Q?kYeup+K2dBYEteJw4+k+uoDkQKniYJW/MnteAcqwKXxCGyCwsJH4G/zKqf58?=
 =?us-ascii?Q?2Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cff35ea-0b14-430c-60ac-08dd83e89d84
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2025 11:02:05.4620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g6Hwu4Pt4aSDyPoTjzCsreU8XDLVNc694vChbN42l25GV1PobCH2FL9rHJap/JGKa3slHtuztPT5kxqb+tI5zFbGRl7KXwmf7WS2ST7EnoU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4694
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745578947; x=1777114947;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jmv+kHaX5ezppt5iNWxaFB3BQa9A9/C3AQxpzRYwOuE=;
 b=M5nI8ntWfdDjYqqOMxn9eBwAV8GleAgKHRDsE2R6Vl72Q0/di5TUQIVF
 Hl+KD94S2xtohRYEfgSqybHzZpSdWQEo896eKYcXppQuwroE/IiHDUop8
 x/DVmB7tVKV5Z05KF3ouPmK71m4CXul+ixuPg+p1q7XwNHmVOVtog63P4
 CcQcWtIuGZaNVkxfLAbogE/zGL/hT42V+osZ8ZGgo663TPDHoHw1OKv0/
 sFx6/ZwjfgwEFId8VMKoF6iYgwSgnVCJB7AACllqYwC2JvhHC4VX/Hun+
 9uO0yGssnTGyIlMukFURd1BnBRNxgcgHi6DvlJQkWDieW+JFR8zBXKOro
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M5nI8ntW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 6/8] ice: use libie_aq_str
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
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Sent: Friday, April 25, 2025 8:08 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; Zaremba, Larysa <larysa.zaremba@intel.com>=
;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [iwl-next v3 6/8] ice: use libie_aq_str
>=20
> Simple:
> s/ice_aq_str/libie_aq_str
>=20
> Add libie_aminq module in ice Kconfig.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/Kconfig            |  1 +
>  drivers/net/ethernet/intel/ice/ice.h          |  1 -
>  .../net/ethernet/intel/ice/devlink/devlink.c  | 10 +--
>  .../net/ethernet/intel/ice/devlink/health.c   |  2 +-
>  drivers/net/ethernet/intel/ice/ice_dpll.c     | 20 +++---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 12 ++--
>  .../net/ethernet/intel/ice/ice_fw_update.c    | 20 +++---
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  4 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     | 69 +++----------------
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |  4 +-
> .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 24 +++----
>  11 files changed, 59 insertions(+), 108 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/Kconfig
> b/drivers/net/ethernet/intel/Kconfig
> index 5a331c1c76cb..d5de9bc8b1b6 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -294,6 +294,7 @@ config ICE
>  	select AUXILIARY_BUS
>  	select DIMLIB
>  	select LIBIE
> +	select LIBIE_ADMINQ
>  	select NET_DEVLINK
>  	select PACKING
>  	select PLDMFW
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index a1d9cc8ddad5..0693707ceabf 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -971,7 +971,6 @@ int ice_plug_aux_dev(struct ice_pf *pf);  void
> ice_unplug_aux_dev(struct ice_pf *pf);  int ice_init_rdma(struct ice_pf *=
pf);
> void ice_deinit_rdma(struct ice_pf *pf); -const char *ice_aq_str(enum
> libie_aq_err aq_err);  bool ice_is_wol_supported(struct ice_hw *hw);  voi=
d
> ice_fdir_del_all_fltrs(struct ice_vsi *vsi);  int diff --git
> a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> index fcb199efbea5..ca24714c8131 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -293,7 +293,7 @@ static int ice_devlink_info_get(struct devlink *devli=
nk,
>  	err =3D ice_discover_dev_caps(hw, &ctx->dev_caps);
>  	if (err) {
>  		dev_dbg(dev, "Failed to discover device capabilities, status %d
> aq_err %s\n",
> -			err, ice_aq_str(hw->adminq.sq_last_status));
> +			err, libie_aq_str(hw->adminq.sq_last_status));
>  		NL_SET_ERR_MSG_MOD(extack, "Unable to discover device
> capabilities");
>  		goto out_free_ctx;
>  	}
> @@ -302,7 +302,7 @@ static int ice_devlink_info_get(struct devlink *devli=
nk,
>  		err =3D ice_get_inactive_orom_ver(hw, &ctx->pending_orom);
>  		if (err) {
>  			dev_dbg(dev, "Unable to read inactive Option ROM
> version data, status %d aq_err %s\n",
> -				err, ice_aq_str(hw->adminq.sq_last_status));
> +				err, libie_aq_str(hw->adminq.sq_last_status));
>=20
>  			/* disable display of pending Option ROM */
>  			ctx-
> >dev_caps.common_cap.nvm_update_pending_orom =3D false; @@ -313,7
> +313,7 @@ static int ice_devlink_info_get(struct devlink *devlink,
>  		err =3D ice_get_inactive_nvm_ver(hw, &ctx->pending_nvm);
>  		if (err) {
>  			dev_dbg(dev, "Unable to read inactive NVM version
> data, status %d aq_err %s\n",
> -				err, ice_aq_str(hw->adminq.sq_last_status));
> +				err, libie_aq_str(hw->adminq.sq_last_status));
>=20
>  			/* disable display of pending Option ROM */
>  			ctx-
> >dev_caps.common_cap.nvm_update_pending_nvm =3D false; @@ -324,7
> +324,7 @@ static int ice_devlink_info_get(struct devlink *devlink,
>  		err =3D ice_get_inactive_netlist_ver(hw, &ctx->pending_netlist);
>  		if (err) {
>  			dev_dbg(dev, "Unable to read inactive Netlist version
> data, status %d aq_err %s\n",
> -				err, ice_aq_str(hw->adminq.sq_last_status));
> +				err, libie_aq_str(hw->adminq.sq_last_status));
>=20
>  			/* disable display of pending Option ROM */
>  			ctx-
> >dev_caps.common_cap.nvm_update_pending_netlist =3D false; @@ -440,7
> +440,7 @@ ice_devlink_reload_empr_start(struct ice_pf *pf,
>  	err =3D ice_aq_nvm_update_empr(hw);
>  	if (err) {
>  		dev_err(dev, "Failed to trigger EMP device reset to reload
> firmware, err %d aq_err %s\n",
> -			err, ice_aq_str(hw->adminq.sq_last_status));
> +			err, libie_aq_str(hw->adminq.sq_last_status));
>  		NL_SET_ERR_MSG_MOD(extack, "Failed to trigger EMP device
> reset to reload firmware");
>  		return err;
>  	}
> diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c
> b/drivers/net/ethernet/intel/ice/devlink/health.c
> index b149b8185449..ab519c0f28bf 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/health.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/health.c
> @@ -204,7 +204,7 @@ static void ice_config_health_events(struct ice_pf *p=
f,
> bool enable)
>  	if (ret)
>  		dev_err(ice_pf_to_dev(pf), "Failed to %s firmware health
> events, err %d aq_err %s\n",
>  			str_enable_disable(enable), ret,
> -			ice_aq_str(pf->hw.adminq.sq_last_status));
> +			libie_aq_str(pf->hw.adminq.sq_last_status));
>  }
>=20
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 9fc50bb3f35a..2683ccb0230f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -155,7 +155,7 @@ ice_dpll_pin_freq_set(struct ice_pf *pf, struct
> ice_dpll_pin *pin,
>  		NL_SET_ERR_MSG_FMT(extack,
>  				   "err:%d %s failed to set pin freq:%u on
> pin:%u",
>  				   ret,
> -				   ice_aq_str(pf->hw.adminq.sq_last_status),
> +				   libie_aq_str(pf->hw.adminq.sq_last_status),
>  				   freq, pin->idx);
>  		return ret;
>  	}
> @@ -462,7 +462,7 @@ ice_dpll_pin_enable(struct ice_hw *hw, struct
> ice_dpll_pin *pin,
>  	if (ret)
>  		NL_SET_ERR_MSG_FMT(extack,
>  				   "err:%d %s failed to enable %s pin:%u",
> -				   ret, ice_aq_str(hw->adminq.sq_last_status),
> +				   ret, libie_aq_str(hw-
> >adminq.sq_last_status),
>  				   pin_type_name[pin_type], pin->idx);
>=20
>  	return ret;
> @@ -507,7 +507,7 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct
> ice_dpll_pin *pin,
>  	if (ret)
>  		NL_SET_ERR_MSG_FMT(extack,
>  				   "err:%d %s failed to disable %s pin:%u",
> -				   ret, ice_aq_str(hw->adminq.sq_last_status),
> +				   ret, libie_aq_str(hw-
> >adminq.sq_last_status),
>  				   pin_type_name[pin_type], pin->idx);
>=20
>  	return ret;
> @@ -686,13 +686,13 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct
> ice_dpll_pin *pin,
>  		NL_SET_ERR_MSG_FMT(extack,
>  				   "err:%d %s failed to update %s pin:%u",
>  				   ret,
> -				   ice_aq_str(pf->hw.adminq.sq_last_status),
> +				   libie_aq_str(pf->hw.adminq.sq_last_status),
>  				   pin_type_name[pin_type], pin->idx);
>  	else
>  		dev_err_ratelimited(ice_pf_to_dev(pf),
>  				    "err:%d %s failed to update %s pin:%u\n",
>  				    ret,
> -				    ice_aq_str(pf->hw.adminq.sq_last_status),
> +				    libie_aq_str(pf->hw.adminq.sq_last_status),
>  				    pin_type_name[pin_type], pin->idx);
>  	return ret;
>  }
> @@ -725,7 +725,7 @@ ice_dpll_hw_input_prio_set(struct ice_pf *pf, struct
> ice_dpll *dpll,
>  		NL_SET_ERR_MSG_FMT(extack,
>  				   "err:%d %s failed to set pin prio:%u on
> pin:%u",
>  				   ret,
> -				   ice_aq_str(pf->hw.adminq.sq_last_status),
> +				   libie_aq_str(pf->hw.adminq.sq_last_status),
>  				   prio, pin->idx);
>  	else
>  		dpll->input_prio[pin->idx] =3D prio;
> @@ -1586,7 +1586,7 @@ ice_dpll_pin_phase_adjust_set(const struct
> dpll_pin *pin, void *pin_priv,
>  		NL_SET_ERR_MSG_FMT(extack,
>  				   "err:%d %s failed to set pin phase_adjust:%d
> for pin:%u on dpll:%u",
>  				   ret,
> -				   ice_aq_str(pf->hw.adminq.sq_last_status),
> +				   libie_aq_str(pf->hw.adminq.sq_last_status),
>  				   phase_adjust, p->idx, d->dpll_idx);
>=20
>  	return ret;
> @@ -2092,7 +2092,7 @@ ice_dpll_rclk_state_on_pin_set(const struct
> dpll_pin *pin, void *pin_priv,
>  		NL_SET_ERR_MSG_FMT(extack,
>  				   "err:%d %s failed to set pin state:%u for
> pin:%u on parent:%u",
>  				   ret,
> -				   ice_aq_str(pf->hw.adminq.sq_last_status),
> +				   libie_aq_str(pf->hw.adminq.sq_last_status),
>  				   state, p->idx, parent->idx);
>  unlock:
>  	mutex_unlock(&pf->dplls.lock);
> @@ -2291,7 +2291,7 @@ ice_dpll_update_state(struct ice_pf *pf, struct
> ice_dpll *d, bool init)
>  		dev_err(ice_pf_to_dev(pf),
>  			"update dpll=3D%d state failed, ret=3D%d %s\n",
>  			d->dpll_idx, ret,
> -			ice_aq_str(pf->hw.adminq.sq_last_status));
> +			libie_aq_str(pf->hw.adminq.sq_last_status));
>  		return ret;
>  	}
>  	if (init) {
> @@ -3205,7 +3205,7 @@ static int ice_dpll_init_info(struct ice_pf *pf, bo=
ol
> cgu)
>  	if (ret) {
>  		dev_err(ice_pf_to_dev(pf),
>  			"err:%d %s failed to read cgu abilities\n",
> -			ret, ice_aq_str(hw->adminq.sq_last_status));
> +			ret, libie_aq_str(hw->adminq.sq_last_status));
>  		return ret;
>  	}
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 38f66439ea6e..c1e83aa83336 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -878,7 +878,7 @@ ice_get_eeprom(struct net_device *netdev, struct
> ethtool_eeprom *eeprom,
>  	ret =3D ice_acquire_nvm(hw, ICE_RES_READ);
>  	if (ret) {
>  		dev_err(dev, "ice_acquire_nvm failed, err %d aq_err %s\n",
> -			ret, ice_aq_str(hw->adminq.sq_last_status));
> +			ret, libie_aq_str(hw->adminq.sq_last_status));
>  		goto out;
>  	}
>=20
> @@ -886,7 +886,7 @@ ice_get_eeprom(struct net_device *netdev, struct
> ethtool_eeprom *eeprom,
>  				false);
>  	if (ret) {
>  		dev_err(dev, "ice_read_flat_nvm failed, err %d aq_err %s\n",
> -			ret, ice_aq_str(hw->adminq.sq_last_status));
> +			ret, libie_aq_str(hw->adminq.sq_last_status));
>  		goto release;
>  	}
>=20
> @@ -3613,15 +3613,15 @@ ice_set_pauseparam(struct net_device *netdev,
> struct ethtool_pauseparam *pause)
>=20
>  	if (aq_failures & ICE_SET_FC_AQ_FAIL_GET) {
>  		netdev_info(netdev, "Set fc failed on the get_phy_capabilities
> call with err %d aq_err %s\n",
> -			    err, ice_aq_str(hw->adminq.sq_last_status));
> +			    err, libie_aq_str(hw->adminq.sq_last_status));
>  		err =3D -EAGAIN;
>  	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_SET) {
>  		netdev_info(netdev, "Set fc failed on the set_phy_config call
> with err %d aq_err %s\n",
> -			    err, ice_aq_str(hw->adminq.sq_last_status));
> +			    err, libie_aq_str(hw->adminq.sq_last_status));
>  		err =3D -EAGAIN;
>  	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_UPDATE) {
>  		netdev_info(netdev, "Set fc failed on the get_link_info call with
> err %d aq_err %s\n",
> -			    err, ice_aq_str(hw->adminq.sq_last_status));
> +			    err, libie_aq_str(hw->adminq.sq_last_status));
>  		err =3D -EAGAIN;
>  	}
>=20
> @@ -3952,7 +3952,7 @@ static int ice_vsi_set_dflt_rss_lut(struct ice_vsi =
*vsi,
> int req_rss_size)
>  	err =3D ice_set_rss_lut(vsi, lut, vsi->rss_table_size);
>  	if (err)
>  		dev_err(dev, "Cannot set RSS lut, err %d aq_err %s\n", err,
> -			ice_aq_str(hw->adminq.sq_last_status));
> +			libie_aq_str(hw->adminq.sq_last_status));
>=20
>  	kfree(lut);
>  	return err;
> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c
> b/drivers/net/ethernet/intel/ice/ice_fw_update.c
> index 4d9ad92a44fe..d86db081579f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
> @@ -68,7 +68,7 @@ ice_send_package_data(struct pldmfw *context, const
> u8 *data, u16 length)
>=20
>  	if (status) {
>  		dev_err(dev, "Failed to send record package data to firmware,
> err %d aq_err %s\n",
> -			status, ice_aq_str(hw->adminq.sq_last_status));
> +			status, libie_aq_str(hw->adminq.sq_last_status));
>  		NL_SET_ERR_MSG_MOD(extack, "Failed to record package
> data to firmware");
>  		return -EIO;
>  	}
> @@ -257,7 +257,7 @@ ice_send_component_table(struct pldmfw *context,
> struct pldmfw_component *compon
>=20
>  	if (status) {
>  		dev_err(dev, "Failed to transfer component table to firmware,
> err %d aq_err %s\n",
> -			status, ice_aq_str(hw->adminq.sq_last_status));
> +			status, libie_aq_str(hw->adminq.sq_last_status));
>  		NL_SET_ERR_MSG_MOD(extack, "Failed to transfer
> component table to firmware");
>  		return -EIO;
>  	}
> @@ -314,7 +314,7 @@ int ice_write_one_nvm_block(struct ice_pf *pf, u16
> module, u32 offset,
>  	if (err) {
>  		dev_err(dev, "Failed to flash module 0x%02x with block of size
> %u at offset %u, err %d aq_err %s\n",
>  			module, block_size, offset, err,
> -			ice_aq_str(hw->adminq.sq_last_status));
> +			libie_aq_str(hw->adminq.sq_last_status));
>  		NL_SET_ERR_MSG_MOD(extack, "Failed to program flash
> module");
>  		return -EIO;
>  	}
> @@ -358,7 +358,7 @@ int ice_write_one_nvm_block(struct ice_pf *pf, u16
> module, u32 offset,
>  	if (completion_retval) {
>  		dev_err(dev, "Firmware failed to flash module 0x%02x with
> block of size %u at offset %u, err %s\n",
>  			module, block_size, offset,
> -			ice_aq_str((enum libie_aq_err)completion_retval));
> +			libie_aq_str((enum libie_aq_err)completion_retval));
>  		NL_SET_ERR_MSG_MOD(extack, "Firmware failed to program
> flash module");
>  		return -EIO;
>  	}
> @@ -506,7 +506,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16
> module, const char *component,
>  	if (err) {
>  		dev_err(dev, "Failed to erase %s (module 0x%02x), err %d
> aq_err %s\n",
>  			component, module, err,
> -			ice_aq_str(hw->adminq.sq_last_status));
> +			libie_aq_str(hw->adminq.sq_last_status));
>  		NL_SET_ERR_MSG_MOD(extack, "Failed to erase flash
> module");
>  		err =3D -EIO;
>  		goto out_notify_devlink;
> @@ -536,7 +536,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16
> module, const char *component,
>  	if (completion_retval) {
>  		dev_err(dev, "Firmware failed to erase %s (module 0x02%x),
> aq_err %s\n",
>  			component, module,
> -			ice_aq_str((enum libie_aq_err)completion_retval));
> +			libie_aq_str((enum libie_aq_err)completion_retval));
>  		NL_SET_ERR_MSG_MOD(extack, "Firmware failed to erase
> flash");
>  		err =3D -EIO;
>  		goto out_notify_devlink;
> @@ -583,7 +583,7 @@ ice_switch_flash_banks(struct ice_pf *pf, u8
> activate_flags,
>  	err =3D ice_nvm_write_activate(hw, activate_flags, &response_flags);
>  	if (err) {
>  		dev_err(dev, "Failed to switch active flash banks, err %d aq_err
> %s\n",
> -			err, ice_aq_str(hw->adminq.sq_last_status));
> +			err, libie_aq_str(hw->adminq.sq_last_status));
>  		NL_SET_ERR_MSG_MOD(extack, "Failed to switch active flash
> banks");
>  		return -EIO;
>  	}
> @@ -615,7 +615,7 @@ ice_switch_flash_banks(struct ice_pf *pf, u8
> activate_flags,
>  	completion_retval =3D le16_to_cpu(task.event.desc.retval);
>  	if (completion_retval) {
>  		dev_err(dev, "Firmware failed to switch active flash banks
> aq_err %s\n",
> -			ice_aq_str((enum libie_aq_err)completion_retval));
> +			libie_aq_str((enum libie_aq_err)completion_retval));
>  		NL_SET_ERR_MSG_MOD(extack, "Firmware failed to switch
> active flash banks");
>  		return -EIO;
>  	}
> @@ -953,7 +953,7 @@ ice_cancel_pending_update(struct ice_pf *pf, const
> char *component,
>  	err =3D ice_acquire_nvm(hw, ICE_RES_WRITE);
>  	if (err) {
>  		dev_err(dev, "Failed to acquire device flash lock, err %d aq_err
> %s\n",
> -			err, ice_aq_str(hw->adminq.sq_last_status));
> +			err, libie_aq_str(hw->adminq.sq_last_status));
>  		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire device
> flash lock");
>  		return err;
>  	}
> @@ -1046,7 +1046,7 @@ int ice_devlink_flash_update(struct devlink
> *devlink,
>  	err =3D ice_acquire_nvm(hw, ICE_RES_WRITE);
>  	if (err) {
>  		dev_err(dev, "Failed to acquire device flash lock, err %d aq_err
> %s\n",
> -			err, ice_aq_str(hw->adminq.sq_last_status));
> +			err, libie_aq_str(hw->adminq.sq_last_status));
>  		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire device
> flash lock");
>  		return err;
>  	}
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 78be8e9d4151..961c2b7106c8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3787,11 +3787,11 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
>  		if (hw->adminq.sq_last_status =3D=3D LIBIE_AQ_RC_EMODE)
>  			dev_dbg(dev, "can't set link to %s, err %d aq_err %s.
> not fatal, continuing\n",
>  				(ena ? "ON" : "OFF"), status,
> -				ice_aq_str(hw->adminq.sq_last_status));
> +				libie_aq_str(hw->adminq.sq_last_status));
>  	} else if (status) {
>  		dev_err(dev, "can't set link to %s, err %d aq_err %s\n",
>  			(ena ? "ON" : "OFF"), status,
> -			ice_aq_str(hw->adminq.sq_last_status));
> +			libie_aq_str(hw->adminq.sq_last_status));
>  		return status;
>  	}
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 7f30a923ed9e..c4264984cfcb 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -38,6 +38,7 @@ static const char ice_copyright[] =3D "Copyright (c) 20=
18,
> Intel Corporation.";
>=20
>  MODULE_DESCRIPTION(DRV_SUMMARY);
>  MODULE_IMPORT_NS("LIBIE");
> +MODULE_IMPORT_NS("LIBIE_ADMINQ");
>  MODULE_LICENSE("GPL v2");
>  MODULE_FIRMWARE(ICE_DDP_PKG_FILE);
>=20
> @@ -1119,7 +1120,7 @@ ice_link_event(struct ice_pf *pf, struct
> ice_port_info *pi, bool link_up,
>  	if (status)
>  		dev_dbg(dev, "Failed to update link status on port %d, err %d
> aq_err %s\n",
>  			pi->lport, status,
> -			ice_aq_str(pi->hw->adminq.sq_last_status));
> +			libie_aq_str(pi->hw->adminq.sq_last_status));
>=20
>  	ice_check_link_cfg_err(pf, pi->phy.link_info.link_cfg_err);
>=20
> @@ -4224,7 +4225,7 @@ static void ice_set_safe_mode_vlan_cfg(struct
> ice_pf *pf)
>  	status =3D ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  	if (status) {
>  		dev_err(ice_pf_to_dev(vsi->back), "Failed to update VSI for
> safe mode VLANs, err %d aq_err %s\n",
> -			status, ice_aq_str(hw->adminq.sq_last_status));
> +			status, libie_aq_str(hw->adminq.sq_last_status));
>  	} else {
>  		vsi->info.sec_flags =3D ctxt->info.sec_flags;
>  		vsi->info.sw_flags2 =3D ctxt->info.sw_flags2; @@ -5439,7
> +5440,7 @@ static void ice_setup_mc_magic_wake(struct ice_pf *pf)
>  	status =3D ice_aq_manage_mac_write(hw, mac_addr, flags, NULL);
>  	if (status)
>  		dev_err(dev, "Failed to enable Multicast Magic Packet wake,
> err %d aq_err %s\n",
> -			status, ice_aq_str(hw->adminq.sq_last_status));
> +			status, libie_aq_str(hw->adminq.sq_last_status));
>  }
>=20
>  /**
> @@ -7953,56 +7954,6 @@ static int ice_eth_ioctl(struct net_device *netdev=
,
> struct ifreq *ifr, int cmd)
>  	}
>  }
>=20
> -/**
> - * ice_aq_str - convert AQ err code to a string
> - * @aq_err: the AQ error code to convert
> - */
> -const char *ice_aq_str(enum libie_aq_err aq_err) -{
> -	switch (aq_err) {
> -	case LIBIE_AQ_RC_OK:
> -		return "OK";
> -	case LIBIE_AQ_RC_EPERM:
> -		return "ICE_AQ_RC_EPERM";
> -	case LIBIE_AQ_RC_ENOENT:
> -		return "ICE_AQ_RC_ENOENT";
> -	case LIBIE_AQ_RC_ENOMEM:
> -		return "ICE_AQ_RC_ENOMEM";
> -	case LIBIE_AQ_RC_EBUSY:
> -		return "ICE_AQ_RC_EBUSY";
> -	case LIBIE_AQ_RC_EEXIST:
> -		return "ICE_AQ_RC_EEXIST";
> -	case LIBIE_AQ_RC_EINVAL:
> -		return "ICE_AQ_RC_EINVAL";
> -	case LIBIE_AQ_RC_ENOSPC:
> -		return "ICE_AQ_RC_ENOSPC";
> -	case LIBIE_AQ_RC_ENOSYS:
> -		return "ICE_AQ_RC_ENOSYS";
> -	case LIBIE_AQ_RC_EMODE:
> -		return "ICE_AQ_RC_EMODE";
> -	case LIBIE_AQ_RC_ENOSEC:
> -		return "ICE_AQ_RC_ENOSEC";
> -	case LIBIE_AQ_RC_EBADSIG:
> -		return "ICE_AQ_RC_EBADSIG";
> -	case LIBIE_AQ_RC_ESVN:
> -		return "ICE_AQ_RC_ESVN";
> -	case LIBIE_AQ_RC_EBADMAN:
> -		return "ICE_AQ_RC_EBADMAN";
> -	case LIBIE_AQ_RC_EBADBUF:
> -		return "ICE_AQ_RC_EBADBUF";
> -	case LIBIE_AQ_RC_ESRCH:
> -		return "ICE_AQ_RC_ESRCH";
> -	case LIBIE_AQ_RC_EIO:
> -		return "ICE_AQ_RC_EIO";
> -	case LIBIE_AQ_RC_EAGAIN:
> -		return "ICE_AQ_RC_EAGAIN";
> -	case LIBIE_AQ_RC_EACCES:
> -		return "ICE_AQ_RC_EACCES";
> -	}
> -
> -	return "ICE_AQ_RC_UNKNOWN";
> -}
> -
>  /**
>   * ice_set_rss_lut - Set RSS LUT
>   * @vsi: Pointer to VSI structure
> @@ -8028,7 +7979,7 @@ int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u=
16
> lut_size)
>  	status =3D ice_aq_set_rss_lut(hw, &params);
>  	if (status)
>  		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS lut, err %d
> aq_err %s\n",
> -			status, ice_aq_str(hw->adminq.sq_last_status));
> +			status, libie_aq_str(hw->adminq.sq_last_status));
>=20
>  	return status;
>  }
> @@ -8051,7 +8002,7 @@ int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed)
>  	status =3D ice_aq_set_rss_key(hw, vsi->idx, (struct
> ice_aqc_get_set_rss_keys *)seed);
>  	if (status)
>  		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS key, err %d
> aq_err %s\n",
> -			status, ice_aq_str(hw->adminq.sq_last_status));
> +			status, libie_aq_str(hw->adminq.sq_last_status));
>=20
>  	return status;
>  }
> @@ -8081,7 +8032,7 @@ int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u=
16
> lut_size)
>  	status =3D ice_aq_get_rss_lut(hw, &params);
>  	if (status)
>  		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS lut, err %d
> aq_err %s\n",
> -			status, ice_aq_str(hw->adminq.sq_last_status));
> +			status, libie_aq_str(hw->adminq.sq_last_status));
>=20
>  	return status;
>  }
> @@ -8104,7 +8055,7 @@ int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed)
>  	status =3D ice_aq_get_rss_key(hw, vsi->idx, (struct
> ice_aqc_get_set_rss_keys *)seed);
>  	if (status)
>  		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS key, err %d
> aq_err %s\n",
> -			status, ice_aq_str(hw->adminq.sq_last_status));
> +			status, libie_aq_str(hw->adminq.sq_last_status));
>=20
>  	return status;
>  }
> @@ -8221,7 +8172,7 @@ static int ice_vsi_update_bridge_mode(struct
> ice_vsi *vsi, u16 bmode)
>  	ret =3D ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  	if (ret) {
>  		dev_err(ice_pf_to_dev(vsi->back), "update VSI for bridge
> mode failed, bmode =3D %d err %d aq_err %s\n",
> -			bmode, ret, ice_aq_str(hw->adminq.sq_last_status));
> +			bmode, ret, libie_aq_str(hw-
> >adminq.sq_last_status));
>  		goto out;
>  	}
>  	/* Update sw flags for book keeping */ @@ -8289,7 +8240,7 @@
> ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
>  		if (err) {
>  			netdev_err(dev, "switch rule update failed, mode =3D %d
> err %d aq_err %s\n",
>  				   mode, err,
> -				   ice_aq_str(hw->adminq.sq_last_status));
> +				   libie_aq_str(hw->adminq.sq_last_status));
>  			/* revert hw->evb_veb */
>  			hw->evb_veb =3D (pf_sw->bridge_mode =3D=3D
> BRIDGE_MODE_VEB);
>  			return err;
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index fb7ef8fcf3d2..ac3016b5f955 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -307,7 +307,7 @@ ice_vc_send_msg_to_vf(struct ice_vf *vf, u32
> v_opcode,
>  	if (aq_ret && pf->hw.mailboxq.sq_last_status !=3D
> LIBIE_AQ_RC_ENOSYS) {
>  		dev_info(dev, "Unable to send the message to VF %d ret %d
> aq_err %s\n",
>  			 vf->vf_id, aq_ret,
> -			 ice_aq_str(pf->hw.mailboxq.sq_last_status));
> +			 libie_aq_str(pf->hw.mailboxq.sq_last_status));
>  		return -EIO;
>  	}
>=20
> @@ -852,7 +852,7 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u=
8
> *msg, bool add)
>  		status =3D ice_update_vsi(hw, vsi->idx, ctx, NULL);
>  		if (status) {
>  			dev_err(dev, "update VSI for RSS failed, err %d aq_err
> %s\n",
> -				status, ice_aq_str(hw-
> >adminq.sq_last_status));
> +				status, libie_aq_str(hw-
> >adminq.sq_last_status));
>  			v_ret =3D VIRTCHNL_STATUS_ERR_PARAM;
>  		} else {
>  			vsi->info.q_opt_rss =3D ctx->info.q_opt_rss; diff --git
> a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
> index 5291f2888ef8..ada78f83b3ac 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
> @@ -113,7 +113,7 @@ static int ice_vsi_manage_vlan_insertion(struct ice_v=
si
> *vsi)
>  	err =3D ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  	if (err) {
>  		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN insert
> failed, err %d aq_err %s\n",
> -			err, ice_aq_str(hw->adminq.sq_last_status));
> +			err, libie_aq_str(hw->adminq.sq_last_status));
>  		goto out;
>  	}
>=20
> @@ -169,7 +169,7 @@ static int ice_vsi_manage_vlan_stripping(struct ice_v=
si
> *vsi, bool ena)
>  	err =3D ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  	if (err) {
>  		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN strip
> failed, ena =3D %d err %d aq_err %s\n",
> -			ena, err, ice_aq_str(hw->adminq.sq_last_status));
> +			ena, err, libie_aq_str(hw->adminq.sq_last_status));
>  		goto out;
>  	}
>=20
> @@ -258,7 +258,7 @@ static int __ice_vsi_set_inner_port_vlan(struct ice_v=
si
> *vsi, u16 pvid_info)
>  	ret =3D ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  	if (ret) {
>  		dev_info(ice_hw_to_dev(hw), "update VSI for port VLAN
> failed, err %d aq_err %s\n",
> -			 ret, ice_aq_str(hw->adminq.sq_last_status));
> +			 ret, libie_aq_str(hw->adminq.sq_last_status));
>  		goto out;
>  	}
>=20
> @@ -306,7 +306,7 @@ int ice_vsi_clear_inner_port_vlan(struct ice_vsi *vsi=
)
>  	ret =3D ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  	if (ret)
>  		dev_err(ice_hw_to_dev(hw), "update VSI for port VLAN failed,
> err %d aq_err %s\n",
> -			ret, ice_aq_str(hw->adminq.sq_last_status));
> +			ret, libie_aq_str(hw->adminq.sq_last_status));
>=20
>  	kfree(ctxt);
>  	return ret;
> @@ -353,7 +353,7 @@ static int ice_cfg_vlan_pruning(struct ice_vsi *vsi, =
bool
> ena)
>  	if (status) {
>  		netdev_err(vsi->netdev, "%sabling VLAN pruning on VSI
> handle: %d, VSI HW ID: %d failed, err =3D %d, aq_err =3D %s\n",
>  			   ena ? "En" : "Dis", vsi->idx, vsi->vsi_num, status,
> -			   ice_aq_str(pf->hw.adminq.sq_last_status));
> +			   libie_aq_str(pf->hw.adminq.sq_last_status));
>  		goto err_out;
>  	}
>=20
> @@ -497,7 +497,7 @@ int ice_vsi_ena_outer_stripping(struct ice_vsi *vsi,
> u16 tpid)
>  	err =3D ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  	if (err)
>  		dev_err(ice_pf_to_dev(vsi->back), "update VSI for enabling
> outer VLAN stripping failed, err %d aq_err %s\n",
> -			err, ice_aq_str(hw->adminq.sq_last_status));
> +			err, libie_aq_str(hw->adminq.sq_last_status));
>  	else
>  		vsi->info.outer_vlan_flags =3D ctxt->info.outer_vlan_flags;
>=20
> @@ -544,7 +544,7 @@ int ice_vsi_dis_outer_stripping(struct ice_vsi *vsi)
>  	err =3D ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  	if (err)
>  		dev_err(ice_pf_to_dev(vsi->back), "update VSI for disabling
> outer VLAN stripping failed, err %d aq_err %s\n",
> -			err, ice_aq_str(hw->adminq.sq_last_status));
> +			err, libie_aq_str(hw->adminq.sq_last_status));
>  	else
>  		vsi->info.outer_vlan_flags =3D ctxt->info.outer_vlan_flags;
>=20
> @@ -604,7 +604,7 @@ int ice_vsi_ena_outer_insertion(struct ice_vsi *vsi,
> u16 tpid)
>  	err =3D ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  	if (err)
>  		dev_err(ice_pf_to_dev(vsi->back), "update VSI for enabling
> outer VLAN insertion failed, err %d aq_err %s\n",
> -			err, ice_aq_str(hw->adminq.sq_last_status));
> +			err, libie_aq_str(hw->adminq.sq_last_status));
>  	else
>  		vsi->info.outer_vlan_flags =3D ctxt->info.outer_vlan_flags;
>=20
> @@ -654,7 +654,7 @@ int ice_vsi_dis_outer_insertion(struct ice_vsi *vsi)
>  	err =3D ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  	if (err)
>  		dev_err(ice_pf_to_dev(vsi->back), "update VSI for disabling
> outer VLAN insertion failed, err %d aq_err %s\n",
> -			err, ice_aq_str(hw->adminq.sq_last_status));
> +			err, libie_aq_str(hw->adminq.sq_last_status));
>  	else
>  		vsi->info.outer_vlan_flags =3D ctxt->info.outer_vlan_flags;
>=20
> @@ -720,7 +720,7 @@ __ice_vsi_set_outer_port_vlan(struct ice_vsi *vsi, u1=
6
> vlan_info, u16 tpid)
>  	err =3D ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  	if (err) {
>  		dev_err(ice_pf_to_dev(vsi->back), "update VSI for setting
> outer port based VLAN failed, err %d aq_err %s\n",
> -			err, ice_aq_str(hw->adminq.sq_last_status));
> +			err, libie_aq_str(hw->adminq.sq_last_status));
>  	} else {
>  		vsi->info.port_based_outer_vlan =3D ctxt-
> >info.port_based_outer_vlan;
>  		vsi->info.outer_vlan_flags =3D ctxt->info.outer_vlan_flags; @@ -
> 782,7 +782,7 @@ int ice_vsi_clear_outer_port_vlan(struct ice_vsi *vsi)
>  	err =3D ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  	if (err)
>  		dev_err(ice_pf_to_dev(vsi->back), "update VSI for clearing
> outer port based VLAN failed, err %d aq_err %s\n",
> -			err, ice_aq_str(hw->adminq.sq_last_status));
> +			err, libie_aq_str(hw->adminq.sq_last_status));
>=20
>  	kfree(ctxt);
>  	return err;
> @@ -830,7 +830,7 @@ int ice_vsi_clear_port_vlan(struct ice_vsi *vsi)
>  	err =3D ice_update_vsi(hw, vsi->idx, ctxt, NULL);
>  	if (err) {
>  		dev_err(ice_pf_to_dev(vsi->back), "update VSI for clearing
> port based VLAN failed, err %d aq_err %s\n",
> -			err, ice_aq_str(hw->adminq.sq_last_status));
> +			err, libie_aq_str(hw->adminq.sq_last_status));
>  	} else {
>  		vsi->info.port_based_outer_vlan =3D
>  			ctxt->info.port_based_outer_vlan;
> --
> 2.42.0

