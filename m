Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOufJ/BO1Wla4gcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 20:37:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E71503B2F8C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Apr 2026 20:37:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E44F40BB6;
	Tue,  7 Apr 2026 18:37:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hdKAOfrCIDZ4; Tue,  7 Apr 2026 18:37:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 934CE40C75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775587052;
	bh=N+pX0x1dYsNeCrtVL77VZIULHxTRgHVliKmrA8Y3crs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2Vt46118wDfJABFQ8r7ozenmpPKHvKl43Z9xj/OtGidJZ5O41slIkyJM8/kHvCTsb
	 3fQKCJr8TFyCkli3zVvJViKawxPrDFaiWT+H+rgjvR+5UQnC5OtczGDGvvZU1h2GN0
	 BO1U8/t6fbSjbVdK3WUFs9dnlASN/pU+X4qinhefGKG2iuljHWvUKofhNs7zpdcQdK
	 80akY/9ajNp0lhVsfafXSvAPrNLz1ZdWMEPOAT6b15Np9Be3ngKnov/mymY9j0CI+0
	 dMEao5KjT6tlIEt/u19MOTKjyPQaVMwAqc+rlMiQIUcBFOPFfvfWtLal2PaBR7diml
	 Mu3LU+9H5eA1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 934CE40C75;
	Tue,  7 Apr 2026 18:37:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 41953237
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 18:37:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 337FB81347
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 18:37:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qYM8pYe8qDQY for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2026 18:37:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 71D9F8133E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71D9F8133E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 71D9F8133E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2026 18:37:30 +0000 (UTC)
X-CSE-ConnectionGUID: BODelTGOQjCyt5OkeGwR4A==
X-CSE-MsgGUID: cWTBleB7SqudWcm9yclRKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76524448"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="76524448"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 11:37:29 -0700
X-CSE-ConnectionGUID: Cq9wZ6quTeS1EFw6+W/txA==
X-CSE-MsgGUID: NHYW12wBQ0ewsUDZqvBICw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="221688911"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 11:37:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 11:37:28 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 11:37:28 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.25) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 11:37:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O7Uyg4SdD/Y29qWVBeFWlE10civwb7pPYfadUZI42+BfE6r+2DrZ4zHA/Fc16nwmIMxKDQJQ5aeYrWD0NOXqyoHttGh6Y65uWUZjRjRnbhHvOz7e1Zxl6fQ3B5e7p/hV9m+M5k2ucYxasgwD5hEvuCvlg8f4trfg83xZ7bBv85jB7TKZhTJD+0vwvR9o/qDdo/Zo8l2Ba3DWBdzK0xStVShEUn2mGpsKtpc+psw5CrVGS7P0YC24uJwMifpcuHN+VOtvLlrIc7yeVXueKTZpQaZPx1GueLdjfvgwJJwf3Q7xCO9re35tzYNaII7z+eVxW4GAESji+O4SKQl3QAgT3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N+pX0x1dYsNeCrtVL77VZIULHxTRgHVliKmrA8Y3crs=;
 b=EUT6YRcw5rTrfTSpBemMoNjmoQlPfwpV9jWc1qDf6N02FHOx0DNM7rh+QlNdnFgZd+mtzUIn9oi4Bf1IzoSOCPJYW22PI7XqmVq9ordvbTA9w4kxNiwd78ZI0fjnEdfcSPszuY7psIcnDr9tRsHvZksgo0e+vJAHgOarWXM5awinq6t8P2/R76kga+nHuhN9Z1bDpP7Fp1lCXsW5dASXfJGv8Wb2532ABipIuUcsQIwJfVQu2bZw3hkSezB6TdyYFTpKXVgKRoUIjuVT9Z4vLMLamZRMRnX3j4x2e17ByUBZjAhWBakkXWpGDiLeB1jWv9eaJ82lvF9GT8JcG40o+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by BY1PR11MB8128.namprd11.prod.outlook.com (2603:10b6:a03:52c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Tue, 7 Apr
 2026 18:37:25 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3%6]) with mapi id 15.20.9769.015; Tue, 7 Apr 2026
 18:37:25 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Greenwalt, Paul" <paul.greenwalt@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY config on
 media change with link-down-on-close
Thread-Index: AQHctxrCkeQ/bu8+tU+/dhMc1NW9zrXUCPTw
Date: Tue, 7 Apr 2026 18:37:25 +0000
Message-ID: <PH0PR11MB7522CD5423289122F22943D3A05AA@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20260318132351.428749-1-paul.greenwalt@intel.com>
In-Reply-To: <20260318132351.428749-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|BY1PR11MB8128:EE_
x-ms-office365-filtering-correlation-id: 9d98c537-27e7-4010-26c9-08de94d4b6f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: C3i5raV99GdzIdPl4YNd7Za9TZK7BGfe7iRCI3/rpdvK8vUXMfwx3COzJ0ZdLlLn5R1V8EiASteIkVPhiIH/BuI9qau+ttzwaC8nXybi032zWlzCsfBacEx4rTrEWcZ7D16KLLLoPq6qf1QkTWpCg88C9YiBDeYEjJ8YwAyuixJLwBFpE3ZkrulFzCQe7JK3oKC4YVuHO5npo5wrInTIxCbisWCJaKyepeB6KpzZJL6UHz6cytcKVWYTLdIAPrFX/efNGeqjAxFFhosDI5iFVB/yx3lc6xg1Wj/8TtrJN1nbEqIc6GfmNA3y6IT2TUJZyIP/sD7EoeSavjPKycIIv785kQAy8tHOathONJOo6cCTA4fZ2L78hjaM6wUKfO4bD3dk8/IybZHzu3KkRB0UjgI1lpmYdvMJjwJ0Hu9Xb6e+0whg2fNXdn1puFmA5FE8CPyx02Cbm4uvkf5zIYOy+tVBfpqsTGJINBhWpF9X5gaVxfUCXcwbSBxYWuK61LFcR+VdooekTMBMU3/tG3Al54ynEQNiiOUKJvjQrSQR9t2faPQh1MsJLtQt6fSPlLXh++EqH1y5Y4BrpBiPARp7uke4qlK3pAiut+++85nSvQRClDFcN84yYofbHJLgT2XXCzgC+Orjd7lCfnGnsvDp3sxocaWHpw9GNZLk4EX2W29hXwduMI5liRTV9KrRJ4Ar6wT545HAKYR9PBx3tNKyRaF1Bc6+1g9XCWWb/j1cPnzGDDgJv8K+rK7D993YjO6TbnQWlyKkf+0t23pvjwh3Hid8ch8wbknpcIBLClcWsNI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rpRFvEQXiZT3grgq9p1GMrTRsC4FQKwwWt14iFVDhApsjJJH4ciFsqZfzJCc?=
 =?us-ascii?Q?9T6t4Je1ahe94eokgtnYjPZofjUnL9lH4+E5IPh+Sv53q/gx8B3M5TfZ+sFa?=
 =?us-ascii?Q?5eZCW6sT93B9yv1T5DPXgYOom3gCVfE8Ekkzvnhx3OmoPbqUu3a8ouqKF+pn?=
 =?us-ascii?Q?UpCB6kx65j4jpJK4Otirb61Fk+qYPL60ueUeVoarauu9iELV0Ss0nCCv3/Xr?=
 =?us-ascii?Q?BdqSBnZ7x5Gh9DiIqT3hfJugYgfaJbw453izk1Pe320WawOJDrY3TVv6ZMwD?=
 =?us-ascii?Q?ZTCE9qKqLxkPGWTRmPN+kk/dBYuu0qQJdMdPZQXiYH/vvy3eKpQWDxA74PAh?=
 =?us-ascii?Q?k8AaVeH038xS27YKiq2wP7ulkTsrboy/xx30WJO3/ifMkA5FMVUYWO8NkLlb?=
 =?us-ascii?Q?ImNDYFs/oUoEFK6Q5xNUm/UrbsRIoxz8/fSnv06WtbuhixdceS+eYHnr0z9f?=
 =?us-ascii?Q?1Bu0qMUmWQKltSekzLvmlTjDYKmdv+6c7w7bSfs0BkagnkzrmpsjhHqKct/O?=
 =?us-ascii?Q?dIN+Ybvwp7aYPA+auFm5W1WXPnpMCANoVlzqRk9JGUMBAgWwikVXU4wfcNwl?=
 =?us-ascii?Q?Lq1Z3szyeCCaDJ/9Q4fePx37gJbN2pXs4mQ9KZYVl4kHQmMkbnjGnVFfb+n0?=
 =?us-ascii?Q?4E6epEoUcda5JUbYi5T+gQT2b9Z7GyOQNEjK5NvnFQKaLPh6vMr+XCTHryAf?=
 =?us-ascii?Q?ReTC+gY0XZaN51o9G8xZGzRs+VOY+jJNYtO5y9rR5cGRoBcMjXfXIg6pufRZ?=
 =?us-ascii?Q?uhHx7MHRfuoDpnhG24Ge+mkczO1S+DIQIcgM///gYbziKmAeLp1gygFrQKM2?=
 =?us-ascii?Q?k7V2/wKiUIMvfJXmYw0fScQoBgQ96CMsS/WzEUOggkCI1k64RiJ33pNGSLu+?=
 =?us-ascii?Q?pVWS0W+z0yzsBL7Fcc467iNQfg0fFASdOlj79O9VjhvusX93PLY2/rZTAnnY?=
 =?us-ascii?Q?9C07+O0HvfYRcXTj4zPsTpsev/Aq6I/chWH0FWj9oIJ/MyDMJKawEA8U4WQT?=
 =?us-ascii?Q?93NCv8g3l84K0NnnrV03dzUlUr8INlj02odp9efspfWrVVjh261G/SImYj3e?=
 =?us-ascii?Q?uK4rSsC0WekELmxJMU+/Faj6wexdfLxi9WQfL8XpUdEkuKaGhP1wY9yewtul?=
 =?us-ascii?Q?nW1S6egZtMVdUWpffSORArituXgbJDVlI58XwCbiZ0hDzKk/Ndo9SNQAIW8b?=
 =?us-ascii?Q?ZzLrfTuJktpG75QS0637BQu5TNyaUbUnIRx+Dflgsh7bGqZDnQlxs/v369PG?=
 =?us-ascii?Q?do1xeOMsGRbXBTrlTuaTabGluKTYRtb8mvcKn9QVWZG1cFXb3RlsxnxJG6lc?=
 =?us-ascii?Q?y8ba+E/WEBWpBW76NF9duHzYqqETaovmIGQEc1a48hkPAHmEFly5Of2fDg6a?=
 =?us-ascii?Q?SEv+t9mYeRdFC4+8QJLqkyQZf7gPXqq6ZBkYMBqLf0gY/+AvC0iy4RfJ89+5?=
 =?us-ascii?Q?g0pC5BCHa/QxthrZPLHSL5zN8KW9ABKWsCu/TWHDXX2gFLtJO5gwuZPZ9NOJ?=
 =?us-ascii?Q?Af+l6ZGWByW8S/2jn4hRpacYenBAsFyuNsQzxHAKiMmkFTl7Idn1grwRA2lU?=
 =?us-ascii?Q?lz1rySsi3YBEl9nfIbhkaKaUST+us6e5idmzpCpMHZIJVcLDfHa4HFz9Idv6?=
 =?us-ascii?Q?iuDv1ZVpJ+b2WmcnzlDjPV3GCYm6YEWsxPLaJrj/uANqi1WNfrTFDUyF5zTd?=
 =?us-ascii?Q?90cw6n0byh37e9yhSMe2IO2YA+djXJiuAO73h5n9XbuaEyIhRJljwvn+n/+W?=
 =?us-ascii?Q?b//xmsctZA65eqXcRdeQxupQwhSx6xE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UkUNO7jC6qiGNL+TU1t2MKArG7VIsZkYNWSRffW9LfRKgGLnPTjFO2+IpE4m2dJN9LwuR7vcko1CgFTrFKQQ3hpmKt6uYi0AB1nOKA/MGIbmiRWCgBr2Qvt9Y38i50yZIc+8vApQ9qk2VJg3as5BYW357nlpanCeo2wLh954tHKihMkHdOHTQf8bxeucm6+CAT3RepIxMiEuPzaab3izhjVx/eorzf7gzeHci7znMqzakeX1Fvrz2hOXq89i5YMfV2AAgPuEme27+I0i57I7T0edjrtXh7ih2kDWwE59ZhTjHHIcVE0uw2FcGT27fSVVs+GzxDWzwKIkdtxBx1jJfA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d98c537-27e7-4010-26c9-08de94d4b6f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2026 18:37:25.6338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hYl+X9t/QqceeOsBjprSX5Ub6hHo2jnsvjS+AB+bvYeGWIiqcpTk9F2am3p6DBgtNprLEFyf+yiUGvKWFR2prAu5mHLHHqs1opgBIC/+0Ew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8128
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775587050; x=1807123050;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Mb+HHWqcVRcUdeBrfnAO5uTUHq9AumtOGBylUkvUgLQ=;
 b=agqx4ElNshnsRdMjBLjx9vP321cZ7IqUstEDOpcxl44GiVLvrr6LrHGF
 cVEoT6kzFv4p1nxT3VHT8rzh2qUNAqMCMng4khI7a0UX8Ll/MUXuHIxNI
 WpV1JfNiEf7/NX7ceHVgKtUhq4U35RZ+vctXG8fUxGyPH3YUKeapsT+f0
 gzXiLmM/8cesPujRu2zS7W+sZ+ojWNs6A37wsTPLtWp+XRZvnmdkK8hAe
 fmGmsdLndvGWLfZ449Kp3BrZ8F+YUBJvoDVHxcy36pddlfKubPqzGuoU6
 E0XXrQ0/gq6bv1rAxo5vQMxHGy8Z2CiC3gJ5rtB108hUCiMGnHg2FuJ+4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=agqx4ElN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY config on
 media change with link-down-on-close
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:paul.greenwalt@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,PH0PR11MB7522.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: E71503B2F8C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: Wednesday, March 18, 2026 6:24 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Greenwalt, Paul <paul.greenwalt@intel.com>; Kitszel, Przemyslaw <prze=
myslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY config on medi=
a change with link-down-on-close
>
> Commit 1a3571b5938c ("ice: restore PHY settings on media insertion")
> introduced separate flows for setting PHY configuration on media
> present: ice_configure_phy() when link-down-on-close is disabled, and
> ice_force_phys_link_state() when enabled. The latter incorrectly uses
> the previous configuration even after module change, causing link
> issues such as wrong speed or no link.
>
> Unify PHY configuration into a single ice_phy_cfg() function with a
> link_en parameter, ensuring PHY capabilities are always fetched fresh
> from hardware.
>
> Fixes: 1a3571b5938c ("ice: restore PHY settings on media insertion")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 121 +++++-----------------
>  1 file changed, 27 insertions(+), 94 deletions(-)

Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worke=
r at Intel)
