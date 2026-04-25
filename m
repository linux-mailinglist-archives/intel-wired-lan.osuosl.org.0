Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MkKF34P7GktUAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Apr 2026 02:49:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD284644FE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Apr 2026 02:49:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB14D81567;
	Sat, 25 Apr 2026 00:48:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bLq7wDms6Nha; Sat, 25 Apr 2026 00:48:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4671E8156B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777078139;
	bh=ftC+9DMmjX6SsEZ6KqZpWA7vOh7zKX0li+uPPCaK4hM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3XSO1kg5Vqd+S/DPwDXGXMkM2NadyKPvC2/mFR6+Kz+bxCjoYO1bJHA0jTVqkZDkX
	 tBaJGOzXXwxXAkhWYHmKWRNB0ObRmSfxY/ix/foo2Gmxl7tSnDMoGQdWRAyBzW/0cC
	 fGw8r4DYy7T8OdT8C5bwp9qSzGqNE/RcEvo/vzIW9UPU6yLCbUL/x3viYGlL5CEVrR
	 yJP4r5PPtoNX0YvzhhEqaW26M7RC1O3JUei6oP/5RfkZRq+IKJxCDtx5LUfU3CDrBb
	 w6cwAMhLoSttRr8FjTHrOr1MOdMPHMAPZuFPk4G2q5GpRXYdHAqY/oCmugzekIAGwE
	 HCRUZDWQMwNdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4671E8156B;
	Sat, 25 Apr 2026 00:48:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DEA6D194
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 00:48:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CAB5581567
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 00:48:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L9hIP-9Zt0Vu for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Apr 2026 00:48:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2CB87804D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CB87804D3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2CB87804D3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 00:48:56 +0000 (UTC)
X-CSE-ConnectionGUID: lKplMAghRhOIb19kUhd20Q==
X-CSE-MsgGUID: 6b7q7nkYRku182er81T1DA==
X-IronPort-AV: E=McAfee;i="6800,10657,11766"; a="77225801"
X-IronPort-AV: E=Sophos;i="6.23,197,1770624000"; d="scan'208";a="77225801"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 17:48:56 -0700
X-CSE-ConnectionGUID: UbFyMf1uSjuJ+1AL/PFgLA==
X-CSE-MsgGUID: hZbqVD9pRZS+m3bzer1DUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,197,1770624000"; d="scan'208";a="237059751"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 17:48:57 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 17:48:55 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 24 Apr 2026 17:48:55 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.61) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 17:48:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dxpyAM4XxE3kdj3SXpgpQgEJCwHPRhpnESVWPF3rglwA163WZBdWt/4//ia33LpncXxsgnK2z6+OBDfX/69B+scdlvNsb5b0x5FHspIIPWYKN1awjkSfPDPtAsuLT5RpwTlLsdt/Jktquy96h0A8Kk5QRRSw813AZacagvp5DqWwBpD18uKDc37KYPbFCnhaiUE1KKxDtyQgjX0muXTNuV/K6xRcTF1Wy4F1IikDLCALAcl1W5s30tpT792RxpwThqQLPEq0DWYtJO71Yaaw123CLulMtd8qCq8n65oj0P06OGi2a/OtRcWLc56Io/Vf3yQPuVyD+cflC/lXd+9pew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ftC+9DMmjX6SsEZ6KqZpWA7vOh7zKX0li+uPPCaK4hM=;
 b=MQgDy7k3W790p07DFkWRQyGZGDSyKxPzaP+88OfZ1pIolsbfDdxpQT9FiBltWmawdz108B2+AQkXOQIaGS16djPEeOUMBTR0Rboek8Wgg6C1l0ZlMednG32qMv5KPlJcmV+0N0U0YKO8V6bDMG16zyWw11gZwtNZhCAxgQbVsqpQJKo+oFEht4s5kcsRtxNAb4ZVSp3HzEFtVvhpuosHYO4GUna2TKaWT07gKe+awzaFZQQle2HgnJsu6I5thiTNGk2OM+ojCdB7t8mxJl+qmKpaZ0o08f4msAA3A1OWFOsd6asRDVt5arKSPLpuxiXaCPhKAGf53FN9C80jSEzFmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by CH3PR11MB8415.namprd11.prod.outlook.com (2603:10b6:610:17b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.18; Sat, 25 Apr
 2026 00:48:45 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9846.011; Sat, 25 Apr 2026
 00:48:45 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, "Rinitha, SX" <sx.rinitha@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 Eric Dumazet <edumazet@google.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v7 1/3] dpll: export
 __dpll_pin_change_ntf() for use under dpll_lock
Thread-Index: AQHcznrZhASsKQy1OkGW+EXD1dDNkrXu/RCg
Date: Sat, 25 Apr 2026 00:48:44 +0000
Message-ID: <LV1PR11MB87902BD780A0EC1A3BB75CAF90282@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260417145907.696307-1-poros@redhat.com>
 <20260417145907.696307-2-poros@redhat.com>
In-Reply-To: <20260417145907.696307-2-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|CH3PR11MB8415:EE_
x-ms-office365-filtering-correlation-id: ea69c48b-48ac-4170-33da-08dea2646787
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: LX0KvxwV8V2nyCX9tV5DK8CaPcl1CRTYC/pvM7GOfuiGv7zsnZZSAAUw3j6gMWgohWDsk9ULicKDzyU4m4W1Ni30MMu3OE/QpKyFPVj0t+bNAekXROu1AtpieG2JeCm8KqJL6s1sgAtSILEIS0EPBohLIqZbS75O1drCqpgqEhK3N8G3YyftdEXyk8FKJh458/m9xWnhaMNo3I1t4aH6R3+lfLVwmrsUihfO7CK4KY15YMpaqfldwJglpInJD1JH+4RLP9aUR4UrINn0RS212xfn6EsMLTdvGSFRkMmAYj/SnSDWXZka8x4oLVZmmGxTnZtKzbgOfEMfYwYVMNrSkMIu30ssqJbBQMwMFFuj+BcOOJNywD+w4wuVJUwASdZtAX2Q3dXfIOqT1qhCP6SlMA6Taygr8dm/QlFMvsF48Ki5rJNpGTjJFfmkRQjvQznWeUieZ3iVx7JOc2QUtIER0Q3CFpM8MzjwUXtXinRKvJ4QYbbTLghN/U8xY1nTAWRaMRpiEhBGWxWI/1sol9sPxVzo76WE583ubUH8T/mtk/hZxO2NjEbtEDOdKfsIvCHnNlbQBqKs+6s99yckYiIn4kqnTN6/mkkfvgJdHAjSJB5K9SbWdmK+pxu/laulA1TSRDiLI905kOqEV4kiY+kRXANmEG75RkGUr8pIXuBZ+swbPon/YOzYU4ji3gi3Dc/QLNus+Nh9o+4Kd76VdeFDQ6RuekbtqjVqVIxahyAPMi7YbZ9QZvgmm6fXLNtkNf/r87zQ4pLquyTfWyt/HeXJRuk0U5EuiR7ldvTXl0hA1Ho=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LtGAeZJfaN2fGF0qQ4hmop88cdAp9esKONaA1pXeOydodko4bh7IifhzueAL?=
 =?us-ascii?Q?dlgZRLDwLvVFOWcAh1UcQ8/1R6QQGYoFk9Vcy4mnag0C3kIiCHpZeQCVDQdv?=
 =?us-ascii?Q?Bo11OsUQlTCWTe8BwPhYrL2uv4d2iVgcWEtKxSAp5RlDhpAQEGikvq/wV9lM?=
 =?us-ascii?Q?HPchkDLvclLhzsoga5TyW7oUJdIWliodSKnG0NY+c/AHhl67ExZzGxSQgEbd?=
 =?us-ascii?Q?pI4C2LetLN5LZWCp9wiHH7w21IyZ3BAtrmAnQ+H3mqDzGh/DCyKSxUI/hd+8?=
 =?us-ascii?Q?2DzGbP8sKAcFWhqn1oyHScI6Iy9LI4vqB2TwI+izEDyj+hDx9Zu4xuKcBQZL?=
 =?us-ascii?Q?TU7C63kFMrMEtSbUpT5/+creWzbMZ/T0YjTlKPr75iyMubvn4HrF/jnDRjZG?=
 =?us-ascii?Q?oCiMUZB8oO97opTUUIa0mRGkeKRUwR4bBqgoFB3CTHR4ZyjGP/LCtvyaNP/A?=
 =?us-ascii?Q?I3Xt3JCHtKOXyAb+Db0Ewdjdminm6QzYkiNwFMaUxG/MfVNF9bqHdWZVRGqO?=
 =?us-ascii?Q?eWfdQyfJ54hDngWP/x7wMqDUANsSQIX/sMZ9wsTOzf/aoy5GkLvPHIYL479x?=
 =?us-ascii?Q?dC2hAu93x7KuuKKU3ZhWZOUMUtHN7rkNCo+Oe6zf8JJaAbKoHRErxhnZ8NXj?=
 =?us-ascii?Q?KWRobYJSM255gA2DnMN1pkndX+YqZdB15E73aET5BGomhy58PDSTnv9V3mQc?=
 =?us-ascii?Q?fyC/s1ZZcY0TRb8AUsOYWK0twCy7mhAlML6c6lt3W+mnLFRlvQzTT4+DMqA0?=
 =?us-ascii?Q?7zhKmYgJsFtZXiMreF9u4ix0X4fjuuKjvnLA7JagvePgLrymZ5Pd5tzXNwYD?=
 =?us-ascii?Q?QcZmfn4I/dk2VZYMLYSWX1ZLYpVHHR8+Lo52qMEdqZys7hwYAk2EXi2+D404?=
 =?us-ascii?Q?FwqnyR7edgIjAsdHKMkAEObw1dhnlTZYR7JLsdpdpx33HZDpZtWbNithMG7D?=
 =?us-ascii?Q?3y8CrAMjNwFZKac16COPCUj4mK/BiJyG+bRzxfjzYqUGphj9c+7hN/AxxuVb?=
 =?us-ascii?Q?v1jAntw1sc/0S1wLT6alnnxqwrBui7T43spY+7UQUyGNgKZsKlcrfTtp9l79?=
 =?us-ascii?Q?Y8BVyeP3FoM53w5YyE/X+biGClQ98Kh92trodvzwG3bq14VIzDqYXITW72b3?=
 =?us-ascii?Q?5jL5FNFemXjnlP2zlNIOqKtvbDUx2EQNh7qR7qZp9Ms9Zd7p03HQrUEk4pZV?=
 =?us-ascii?Q?v7Sgy0UUQqdeBUa6Ne+9PkIlzE6oLHpIAzwzYq9KMUIHyBifi7NxumhCBce9?=
 =?us-ascii?Q?f0JRYngSyRh43Fni2oasxBLuR2LmbZui+Y7Vs55zClXDVZMyUnVWAa2o9x0l?=
 =?us-ascii?Q?xjsleB4JTaVsw5Wbhn8LbS5PI/nffNIX99AYedH2v5nrZI/VtvsUJOWmWF5O?=
 =?us-ascii?Q?yIYw2kXCc9pBLRPgBqFucQuhwjdHX/2o3Q3lo44U7QEqL1vXW15nkyDElpO8?=
 =?us-ascii?Q?fIolp1F3nJs8Q5apeqkbcnW/STajGNqvpvv9Qt5r0dySWQcGVjHfkwwMqmiZ?=
 =?us-ascii?Q?Fg2QBls7mYoPWQ6Y3/Qo2haqwBvL8DZRx2lHgqKKQcWEi4OZZOjMBprQGdko?=
 =?us-ascii?Q?/M90JlsLV8Ig0JqXUVhDeLmniqnJgKo/bPLJI1jnoFNF99usT2osEzsDqglb?=
 =?us-ascii?Q?w1zrLewBqt+Rq43D4Qu0JXJvKL+lQlF3Oqafex1L7hAPBcIrEc4nQzYkoEt6?=
 =?us-ascii?Q?tBLOUtGvdy+MgUjMeFP55faq8d1SMQUxhNfZzekNzAP+zRNcN1vtf4sNHjPM?=
 =?us-ascii?Q?Zuk4mqBVrQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZLSgDnNIDQYJ5Tl8mgG1m3rBZfE3FuGjiBZoSD+Lu257x/GPPsG/eYR/mWvgOP/u0PSneMDNeLvqhtEVdjuMWBDTNeMTPHioCyDMiLTfnvlA/rLeVdMzasofK3TTi7KMJWjOMp2YIxmfremQfo1ANZ0JvRpqUj7VTw4CXGkX0BM2xFcLQeIiM/qG0SojFe9/SiPpn2U48nCqGXQ0/4xymwtpcYPyHwtNB6rxLq5tRlEzFTzI6WsU/YuSUAJJ3MqoL3a7LzmNbsB05kNb5NMeKtw9Scex/AWaLSbWGq8nhQKBjs3Gu6abyYV4TzXO7VauapnXrtINww/kH9c7t1IEfw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea69c48b-48ac-4170-33da-08dea2646787
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2026 00:48:44.8556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pXimMxBHlTVo6Yej8BqMBVHz/397/GGEMPuHau8PMF884OLB2p0CEj8pWpT3FGY4qJ7R6w7Nor3neJcpg1YDEmbb9XV4TiZi+jS6x2I2Gbo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8415
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777078137; x=1808614137;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7beSYkCMiCp77pxBxx1K7jv1tIEHRyVjMSpGjO6RvEM=;
 b=RY0uM7ExuHRyOb2FP3T9wpP9ZYk6IhQ53XQ6W43u5TQPurB2G0+SpxDu
 aSwFkzOvnVDtNtNF0dKNn9mQz/tQ796+iVjDUZBoufkh7PSFGfA1ThvR9
 33ZPMRCnj2+f3fENQ0kpEzItGphVYr9hpQjN89mLk/MxgIdqKX8+JoM7r
 szfn78eicWBxt/u8sAKhYowUfN/CrVcNHwaNFVscT8dqRkxfD5AHpK5bS
 oIN/bW4QaI3auxm1vEb2khx1UHoA0JCPGXUJghnTDoA50on2cslyPIbi3
 aneBqFkeJjU8BpL/9H49PyU6lnXj3eiYQhH7qn9Q+nTzCB11Ny07vXVSv
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RY0uM7Ex
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v7 1/3] dpll: export
 __dpll_pin_change_ntf() for use under dpll_lock
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
X-Rspamd-Queue-Id: 9AD284644FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:sx.rinitha@intel.com,m:przemyslaw.kitszel@intel.com,m:jiri@resnulli.us,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
etr Oros
> Sent: Friday, April 17, 2026 7:59 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; Vadim Fedorenko <vadim.fedorenko@l=
inux.dev>; Rinitha, SX <sx.rinitha@intel.com>; Kitszel, Przemyslaw <przemys=
law.kitszel@intel.com>; Jiri Pirko <jiri@resnulli.us>;=20
> Eric Dumazet <edumazet@google.com>; Kubalewski, Arkadiusz <arkadiusz.kuba=
lewski@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; An=
drew Lunn <andrew+netdev@lunn.ch>; Nguyen,=20
> Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; =
intel-wired-lan@lists.osuosl.org; Keller, Jacob E <jacob.e.keller@intel.com=
>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni=20
> <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; linux-kernel@=
vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v7 1/3] dpll: export __dpll_pin=
_change_ntf() for use under dpll_lock
>=20
> From: Ivan Vecera <ivecera@redhat.com>
>=20
> Export __dpll_pin_change_ntf() so that drivers can send pin change notifi=
cations from within pin callbacks, which are already called under dpll_lock=
. Using dpll_pin_change_ntf() in that context would deadlock.
>=20
> Add lockdep_assert_held() to catch misuse without the lock held.
>=20
> Acked-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/dpll/dpll_netlink.c | 10 ++++++++++  drivers/dpll/dpll_netlink.h=
 |  2 --
>  include/linux/dpll.h        |  1 +
>  3 files changed, 11 insertions(+), 2 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
