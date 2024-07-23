Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C9A939FCA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 13:26:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F9D74040B;
	Tue, 23 Jul 2024 11:26:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RqQUf3J1i4D8; Tue, 23 Jul 2024 11:26:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67B0D40425
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721734015;
	bh=m0pP1o7MoyB7gj3roGy1P4gJBz4vwRenwe/Xns+fCr8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aah8gAfjHeF5Morh7pV7z7lcU8fd1ooRL3HQYISuSMSoM6ZRkgZ8cY47akF/nkghQ
	 3FMrwWcmuLZxDVjo58p9FcU2fi5gqY5JgxrSNjTiO/EjEuS4IwENF79VA1egsNFSLa
	 Y6g0pmdi3X4qUDdDX3hIkSyfaaPbAM6+fdc2FbXHCmtfXRV9KA3F6y5SGy5wS0c7pH
	 +htdvtkeAXxHFZ2dqOQ9DpuygX8EvYHpE6mw4Nsxk5hO3apKeLOQ7RCC1U3dLG0Z2k
	 WFtDtQJ1V36afzihWyvYArULhQDbG3sXHQmV0ErPJw75FjuSBxs6pGl0CuhLLqTPQg
	 VZ2tacv76yugQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67B0D40425;
	Tue, 23 Jul 2024 11:26:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB8221BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C5E27402A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:26:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y_KG3jS7phQO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 11:26:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AE9D14021B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE9D14021B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AE9D14021B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:26:51 +0000 (UTC)
X-CSE-ConnectionGUID: SLMnOx53QYmjLU3pNIEgsA==
X-CSE-MsgGUID: FPaW/duvTt+6xrk/DK1XcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="29941778"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="29941778"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:26:52 -0700
X-CSE-ConnectionGUID: 8Ls/ZmcZTlq3+9MxYrInJA==
X-CSE-MsgGUID: XUUNRZDFRCW0OUJ+L4usXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52219789"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 04:26:51 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:26:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:26:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 04:26:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 04:26:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ysiWWi9tjMjuAJLyEn723yo41H/MRCHKgzaVoCqjSqRYrxdN7pxUEOlAlxi+hIX5GMFfwBlCq1r97NuI7+zn0B4QxrDas7delkgfwphweGtkk6urU8/KfP9ZfyWTtCDMlyCA8f87i7J2ai41iyH8eqPHQd00qaGZNz+BFnhabdyIkMhbNGFopEEstD6yAgDeroD9HbRJaOqBJTPY+HB2XNMInxU1BjKKC2HGytK2sX9HnLWkqVHB1uHairwS25gJKEgyNhzZljF1TWMwy3ww1mu2jJ64rTVF9IjK2amA67x8BURntksNrA5Fb1Sqf+9hD5rCQtd+nZaBonfQN7MHGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m0pP1o7MoyB7gj3roGy1P4gJBz4vwRenwe/Xns+fCr8=;
 b=lkAt35tUXj3dLthKkEi+u5YsHbrxuzwvKZp2h5i6OXeu+yeSmujc4h0EeIn+FC+Yyz0xi7cXIW+tJta0SO3rfLDJpA2dEVpcRMJjryNbHWp+7HnmDrZDFjk2r46v9ov8WgPYy3ulD3MH/jZykXJ8t6bNGnt6yi9QBFKNmoc+tm3kU1X0uFyaE8XK4qXy61EqYXyLNZwQQi+vJHWPkhzvdTe+1v+0zUnofvBe5UOVxOZSA8cDYa/RdKLN7jm5xpCJd5WODtWd8r/V2FwEbmWUspulaV2b4bmi2cXrgHWsBfmJq8hJWMrfM1Yj5uQmLFxmjy0Eh1f194VAM+kUHcrx7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DS0PR11MB8052.namprd11.prod.outlook.com (2603:10b6:8:122::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.14; Tue, 23 Jul
 2024 11:26:21 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 11:26:21 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v5 15/15] ice: allow to activate and
 deactivate subfunction
Thread-Index: AQHauAPb0ln+JBdKtEe/0nunq2QiHLIEdi4A
Date: Tue, 23 Jul 2024 11:26:21 +0000
Message-ID: <SJ0PR11MB586530B373CAB15ECF733B8D8FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-16-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240606112503.1939759-16-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DS0PR11MB8052:EE_
x-ms-office365-filtering-correlation-id: 79ba01d4-b203-48cf-4381-08dcab0a4778
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?bvRm58Gcf+sfQ9SdEiS8Lqp/d6SWPAV1JJrM1ERyRlN1Mmc2wes7bewK8fJx?=
 =?us-ascii?Q?Z66yBWW8VCY1H0cklGN1gg2HGkZ+m5Sc0SxomRtfYmZTczVJ73gxZ8HY8iBf?=
 =?us-ascii?Q?TWbFoVf9OkIqUSF15hzvVGWcKv+cabiQi5djSVfpPv1ZAPKd6eFsPym2jNzE?=
 =?us-ascii?Q?ts85SeHDH6Z+NWfc1wdD1qmMaxoORX4R6RDeqZVVqcusiQY7OSm/ddRlworF?=
 =?us-ascii?Q?sCroO9Sh3rr0ZZk/VsxkHMljYNFkku00IcHkhzrr/7JVhMZpO9thzD72I4Qv?=
 =?us-ascii?Q?syrZeTCSn/2CHsjYS/JCbjUJ9Ev7haAuW3iNaknJOmzxkDw2iMECDoTrGAL2?=
 =?us-ascii?Q?5HeiV2DeNtg9dHcgYNIO28EuEnooiEr6EMIN2LUyMNhRgteaZ/awPnaKux71?=
 =?us-ascii?Q?BSHxFdoUj6EIr05IMIZ1GgBGg8Nnh6rspje3Pbi4j64LpRsq9PCT56D3sV1i?=
 =?us-ascii?Q?W5bV/cOR6B73yOsUAT+ErR8VF7Wz1WgnQMsaz4nexWesqFFDmwdl4tm8YLwO?=
 =?us-ascii?Q?ZBD7S0phYeLRjTAaGh8bpJ9UIRvMKxTErRcEBDRIvMjjBK0fkLiWopMRuItr?=
 =?us-ascii?Q?JnTf2GeReFzYDpME0EV7Gcd1E6sPGlD1jqLADrQDatHP7GNS1Q8HEKZuJLIH?=
 =?us-ascii?Q?ikWoZE9pzjAHBUZvc62xZrorEsrft8NNSqHwu1T4iG4cIwSQD3x6YJ4uxppw?=
 =?us-ascii?Q?24vJcnNOIOqolrgeQiVNS4vQSkqVj1paspUxXSCo4tGXE2lN128D/eKL8NHv?=
 =?us-ascii?Q?lRFaflh38Lsgs2aOqPsYfnlPtJjXz8P9jU49me5ho9/pT5ITSF80FrUOSHeF?=
 =?us-ascii?Q?6d5r3aMfPmqEb/7EGXOndWxyx3gYUHf32e/8jw/QkVQjfU1jUwnJo6509HNU?=
 =?us-ascii?Q?vGpj5qWEuFP7wif4odo5Vy3sqf6s7pkHAWZnHy5xm4zpgiEErZD+8LgKghep?=
 =?us-ascii?Q?lOPAQRGHaPqlrpf10DV3Asta5AckbzVPt/Zf5/7+A9oZhbhYqqrhlY/AycAj?=
 =?us-ascii?Q?3uNQ1t2ReEaVKhQzyi/UmO8RJX7SjzCog/6SAXWKVVf6avAMgL8ae3L9aUxR?=
 =?us-ascii?Q?l9PPqsW7A/p61V7/ugslFtwSojnbnUygbQP9iYfsEdWaYjKgvgpNmUSuKB6f?=
 =?us-ascii?Q?c3rVhUe5ctf/nIi+vPBre6iFvKZgcn4zZ6PihLg6Di+8vQz49tD7Fm4lZvob?=
 =?us-ascii?Q?NOBn7yLbggSBaDzxUkJFvOZCYLL408NRIt3V2NIYoAVCWfYIODm/3LRWN0MC?=
 =?us-ascii?Q?F4COllQwsDFVuwROx5M3/uMI4v349Poc4s16YLPvubf3suAv2w/roy/DdHiP?=
 =?us-ascii?Q?zynAsTp22T6VTTQ7FUIOtXKVmwr7xjtFcoRdH99cuBYqklHotW9HRhOsKDnE?=
 =?us-ascii?Q?Qddrjq0D2rMgIXitQGbQrCs7RcXqzxWmFxUs3oaeCZV2XyQh8Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jGKstqAzrWuaxHA/v3rj42VYf5TJ1YX4//G329vWDMjKrlGe6TNIDgqrFt8o?=
 =?us-ascii?Q?ptdCfSc049GhgUnHzyO/akA//4vmTpC3kslPtWrZG74c3XUhE2ytg6XERO+z?=
 =?us-ascii?Q?30bEq5VQAboQfbkJgwrNpYdzdXM1XjqOgQDBRyvtmKBjk6x5vAyg/KTvfJ6I?=
 =?us-ascii?Q?UqMQLZDgcGgDnwHHaRtBV0WUI/aK2xPPwLMslvhGaD0wz1k+wrrKx2aDY4b0?=
 =?us-ascii?Q?P81+k9dzFJnYoweY2I0AOZ+eFVk8exUIfcvOvHfQB1ciqcVsEtABFMAnFCgl?=
 =?us-ascii?Q?yLwr21AUQDS/wEF6m5MtC2xYIWg/hcEQ9cKyz87ziVnXGk940JC21fAbNvpO?=
 =?us-ascii?Q?wg9dE+1Y143o5FTIIefuOk+NXl8bbK9P0k6dd9JhuqREEJ2gyCzi9zWXAUsG?=
 =?us-ascii?Q?RnSVcoRMAcDz1vhvaM+mdtauskHHrV2+lnUeAnr2R939qjcZYek/g88bQJaM?=
 =?us-ascii?Q?/lHCMS4m7fA/OTn8m/RxUPJkmKXcbdksxJdhur3E3hDVA5/sgf/+K+5Q46XC?=
 =?us-ascii?Q?6dCzUnF1jb6ni+p7w+NRVyzr9VvXLRUd85N/OVj/Ny09BP0h/iYfgrbIEYPe?=
 =?us-ascii?Q?xzbA7ARRRfydNLxolfkuoy8+6sIKgiyYhUlvmOGdLvLYR0WgIpBQN0gTGFST?=
 =?us-ascii?Q?db/+cTcqnRguMfq075PlXPGhgBsAwKWI3W0WtXbsyVZXS7uTWcLz3PQeVdK8?=
 =?us-ascii?Q?lB4RJsYvSXb9HuiBtxHQkH6Mhd528K+qWPynP7xfInbbsryKUOhgrw6bhBWj?=
 =?us-ascii?Q?+WN9fvBuQi28ncqeeGE03q2kjETuxegMcigzzzAEK1uTIwlSm7axvvfcbS9U?=
 =?us-ascii?Q?ZstmYymHOBn6wq6sBjkyqYYzQJ+mwHkyvFDmuX+LgDX5MyALRnteDUi2t7ZP?=
 =?us-ascii?Q?d1P50GA8+asFMxQad2fsJ3eCRI0pMmAfJn9TL1IoJX6Dlzmvnljfx55Sfz+8?=
 =?us-ascii?Q?VsK3ZTUyQeWYhd/YNMYOj73MU0Qv1o+8kEQhZXJpH/tu8ieN3EnszEA0/TC4?=
 =?us-ascii?Q?nNcleHj4VVjuaLpjsexwILeyn6gUEnCkNZUmAcG7woR71nbv/hCnTZsVq+de?=
 =?us-ascii?Q?Pks8ciT2jTvE0O5I8Sizj4FrC8/WKQB72Q4+Hee5Y6gZEfXYTZbhAvDhj/65?=
 =?us-ascii?Q?Vmlv1lVzbCl2gr9ds3x7vX6L2tS/7cus7tJoBRJKg42rKYjmRVND3KQZ5c45?=
 =?us-ascii?Q?LdFONic5ulkC8UlSA8Xa9pb0htcTILf8vVnY7VYYNQWAWNlJQXzMH4ssN6aH?=
 =?us-ascii?Q?ZXVx0kNVZeBC5enamN1xCbhwSb6QP1+CdDYH6gfjSEF4ScUQRG3U5hg56mLZ?=
 =?us-ascii?Q?QSgDtwk2OlAEan37VH+otYN/PBSC+uELg7F78I2KhZ0S/hjjEgfx5lXOX8i0?=
 =?us-ascii?Q?fJsCSfkC5Tjq5e+Lum6GaRtogSRa4Ax0WBYv650j6yZ9C9PHoigRZy0f+ekV?=
 =?us-ascii?Q?sxEcuax2JSHYZvTp2qWVWR56q85J9QHcCN5iHmTdEpXLLO8ppMTlf5smwtvI?=
 =?us-ascii?Q?AK+AdWC0x7/oRjDuMt0F+LjJxu6VLcp6YJOP6jz0D2ChjbL60MS68vFr8wHl?=
 =?us-ascii?Q?PCNgYxbF4ajIdfsX5LAud4UVxu5rNo5SLnW77xxdbjtZFhAe6bv/3hfvt2Tq?=
 =?us-ascii?Q?Lw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79ba01d4-b203-48cf-4381-08dcab0a4778
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 11:26:21.6405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wJ58W//snDWs/zI5R49g9/Ll6pQ+HuCAauWtKNZTn3qVFx9PN4SdSfJfYX+jL7pgIydXE5o+tSpyg4aanWMb4wvyfSvuF4TFEoeZT7LrpW4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8052
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721734012; x=1753270012;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s5/nNrttTSn52dOqs+y4HB5YlQ7abFjH5Giv9BSGCuY=;
 b=VsyK8jZyfRBGUv/heIGEXokqcwVcI+yizi3d6QCkxuTurPPc6glurExT
 /Nlyi/hw2ZstSbhZNNxamRIISge1WURZFuSbPCkJLWAcWdekfjl/+9lQR
 5v3zzAdqAK0GAlE89VsbF2Bf0hrawZ+ty1V1ZYtEi3wUE4PvEfL9kZilC
 YhQp2vs2oAlfP9QVXeqHNxMOQTvhoz0/82/9l2eFYbpfAJ6FjhEOJs6mt
 RG+hPflyDg9oBZnaVY7z0EBVRJfpMk30YzGJsRAvyWAfdTq57HNILaPLM
 f/ZgkQRVoVrs0tIAGdXFZKbae1R0BfRCtP2Xw7bvfDBcrMppPyxkKic+B
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VsyK8jZy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v5 15/15] ice: allow to activate
 and deactivate subfunction
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>,
 "kalesh-anakkur.purayil@broadcom.com" <kalesh-anakkur.purayil@broadcom.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "shayd@nvidia.com" <shayd@nvidia.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal
> Swiatkowski
> Sent: Thursday, June 6, 2024 1:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: shayd@nvidia.com; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> horms@kernel.org; Samudrala, Sridhar <sridhar.samudrala@intel.com>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@vger.kernel.or=
g;
> jiri@nvidia.com; kalesh-anakkur.purayil@broadcom.com; Kubiak, Michal
> <michal.kubiak@intel.com>; pio.raczynski@gmail.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com=
>;
> Drewek, Wojciech <wojciech.drewek@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v5 15/15] ice: allow to activate and
> deactivate subfunction
>=20
> From: Piotr Raczynski <piotr.raczynski@intel.com>
>=20
> Use previously implemented SF aux driver. It is probe during SF activatio=
n and
> remove after deactivation.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  .../ethernet/intel/ice/devlink/devlink_port.c | 173 ++++++++++++++++++
>  .../ethernet/intel/ice/devlink/devlink_port.h |   7 +
>  drivers/net/ethernet/intel/ice/ice_sf_eth.c   | 107 +++++++++++
>  drivers/net/ethernet/intel/ice/ice_sf_eth.h   |   3 +
>  4 files changed, 290 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> index 4cfd90581d92..4abdc40d345e 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> @@ -530,6 +530,42 @@ void ice_devlink_destroy_sf_dev_port(struct ice_sf_d=
ev


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


