Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEsMD3qJ+2mWcQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 20:33:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5554DF5D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 20:33:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D7C88291A;
	Wed,  6 May 2026 18:33:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IW087gVlujUx; Wed,  6 May 2026 18:33:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7E8782366
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778092404;
	bh=a/8EZuYfoR2y0Z7Nv9jbTlZdPOofN+OINDcNe+KXquo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zHsYfCNeqCD8gc8ooQB1Lqln5g+E09v8klYKGmKyrn0mKKdk4LDmG0aeQK/mHQodF
	 7+kxKqtZTpQ/yzkrJZrFwHwfBEjrfyWXiuQPpkTgXC+8CSwAACyj8V7LLQQe4BCdR8
	 4GlNqeIK/nRWktgCcobs7I5miXENIILrUmk+19SIqdz2L6tgqMJ1Mh0cPzrLvKH8Bd
	 THD5Tduno+yUwDvrP9iaUTfO2X9twJ0NQdEFSyAbSPFgzKnEQQ24WQbq+xu/iTUSDT
	 vz9i90RT8uQoC6eXhiGECJ/pENCRkbq+4O33yonoH0M0O6uU4S9ZR2q8xcQafr+WMt
	 tpbAfzXBshaKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7E8782366;
	Wed,  6 May 2026 18:33:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 16C86317
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:33:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F096C40659
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:33:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ti25KsuEBq5h for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 18:33:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1EC5F4028C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EC5F4028C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1EC5F4028C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:33:21 +0000 (UTC)
X-CSE-ConnectionGUID: UbqWeAgETNarNgWUW95rdA==
X-CSE-MsgGUID: drgKOOPRQSy6AG7rCHaHvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78060762"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78060762"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 11:33:20 -0700
X-CSE-ConnectionGUID: zK1/3c39Ssy2Jd/Si+B9Eg==
X-CSE-MsgGUID: M3Seane5ThqkC4+rfzQfew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="229831577"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 11:33:20 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 11:33:20 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 11:33:20 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.45) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 11:33:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nitf23dI1eHn6IMeRGa1vy3p76GDyi+vAyIdqgANSQ5s4cPvDU0W5davnXjXjVJ/szk7Rf6+XdqyGQRRzvPw7TdN5VHPMN0KR00DpPChBey9iVJPBBluyfQUEfdkSYRIxNgPjItmq85Oxl653obXr6DUMgGNfF4+iqOy00royTTY0ib1Id4J5KX0yIb7+Qfvi3MiN0nUnpnExBEM0UiiRKPqXaLZ/ITcEfz3H2XkZiuxHUuRRE78spzb9McluGx6Ij6Pb8/Fp0Pmft3e21ynkiqEabS0p77a7zSWQhMSH4MzaCq1oi1RVQPPRvEihdtnFfZVx4Y44XjuXjrgAkdYrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a/8EZuYfoR2y0Z7Nv9jbTlZdPOofN+OINDcNe+KXquo=;
 b=X1YKgD0DtuWU5AI/Eobno1Lx8+eriQmT5KagIXbz7kbs/NzGxUPXqWOSIiZ1z7HK5raekldPtVdcn2IixoLPvpxUBCwCBFbkI3PfSBC0E7u+zoKYNhbQvnJUXKa0T4C2cl1fMjaFJzvUXxhpAhgD4942ueSXGMmHmwqCw7Xy3YOcZDOPfGRvQ55l05IUaon1ZZ5/+8GhDZzy2Wn9uBrnq0bAwXSZDLmz8rfWYAHrHH/qYmrQR1y8BLmlqcUpLe+H0FRy0RcQQ2q8xigdOCavHfKSbammlR7LgxnIVcqJbAtM7lzif41lOiI78i2Jc9i9g9guGYhYNTzFEk4XGczrag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by SJ0PR11MB4991.namprd11.prod.outlook.com (2603:10b6:a03:2df::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.21; Wed, 6 May
 2026 18:33:15 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9870.023; Wed, 6 May 2026
 18:33:15 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Penigalapati, Sandeep"
 <sandeep.penigalapati@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 01/10] ice: rename shared
 Flow Director functions and structs
Thread-Index: AQHcyCDo+LXlGUzqc0eQIRDf0tqFrbYBfMKw
Date: Wed, 6 May 2026 18:33:15 +0000
Message-ID: <LV1PR11MB879020169BC67D3CD1487F4B903F2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
 <20260409120003.2719-2-marcin.szycik@linux.intel.com>
In-Reply-To: <20260409120003.2719-2-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|SJ0PR11MB4991:EE_
x-ms-office365-filtering-correlation-id: ac940fcf-bd2e-427a-1498-08deab9defd7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|18002099003|38070700021|22082099003;
x-microsoft-antispam-message-info: gIcMn9gFWtF2dJznHaviMTdR1GY0WLACD6TICOmkfIJUXKkq8LCmzlz87muFZIaI8PUzhcihs6tciHnFwfMeptTXaKxMls3HaIhhl6C6OqNeaD/s/ZBrmHOzRcpIhx2XP/BhjRrFldWOssuhLZCWi2kRVfqiW6UEJZXH6ORWHy/qdXLlW+hx6QWF7ypPqXIGxGsdjNnsP/jbA52aI3JEMx5DR7tqO59Hmo5XykXF2ciu5p1sg/wV0gEWksKADMNk+YbA4cvXAusJCQwxwR+pomVjEEaf41DHqJV323HM0OUPNiuwK1peRK5+r2zgbQgTj3Wtr6Eeen4ll1LNXkt2xePKzxaIHdYHoHlBDiCR6O/UQgRCyFy/GSy0pkOulVzhas9ZSi6wGzlm+prCvfYlNjZQ7miZGz2dPAE9v3OxHtDCMBKRNE0uH9PmG17AKbPMG894B5ZOLszrlEr5DTRUrBiiwq9mEN0qZXzLdlXKet5IUBrcNk5kwJQlW/rSIdMlJdtMKSVQNGAeUvvgzqGacavepRWhEDRJr4SxmG8RTuc0dgw27z9qqLu3qREDEEe/Nduciaj8U6rGdnncJntkPft+zTDaDIxTer4lSymmFL15CAhxPvX76jW6mJKuvWvmAw4yooB66ycxHuKeIdgoCVu3U7qYXQ5FNVQjkK1/IaJ/d0w0a5g5Td05cddteS57iqUg+3Zck/eAMmbUgTQC58ZAWYhTsPMLW4yc8Ws5MqLwRwQFFKby6nNRZWpZQnjm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(38070700021)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q7CF6LLpXin/tSmJQskSq+YeE+42sJ2ENhc+jWS2OmR+C6yCl6TRMwABTAmD?=
 =?us-ascii?Q?QV18JepMoO2QXAtFImjqZCFh/hoZocSFGoIsky1r2AQO9HxPuxYKplomPAwW?=
 =?us-ascii?Q?RuXsXcckCZZT5ZjyY1LPOd/ykN992gdig7lUH86iyccp4tLQbeVN8ZHcBvGG?=
 =?us-ascii?Q?YW0IE8yp/4fvhgZ+DnkYIlx2LXKFuzG+KwG8KL3zT51mco6srcFu7t6mOEVR?=
 =?us-ascii?Q?npP5LHNthe3Xnmco/c4nL83hkS6WThT94TW1ZwvtAOJ8U1q1bKE/UKxDeYpx?=
 =?us-ascii?Q?qcI+NbTVZVM5HKoJEi6FD0YtyA6lbqArRoi5mhvgbP1JZLkROdFsjRjUf42C?=
 =?us-ascii?Q?CqrHkOdA6dCeheuHcTSsgefEUutTEuM7T3r8dZoPHI2gZS9z4m2VT7KChltW?=
 =?us-ascii?Q?umnDKvIysptbNm3JpIqQEaxGLodluFPtjBR+RhDSGt2XR5c77VkN6KF2reeb?=
 =?us-ascii?Q?WpbZPcJUHlvhfsxs8/JZS/ul75Xh7zwW0AkPhbStW0wAX9EmkfYA3gO4erzd?=
 =?us-ascii?Q?yhLtVtcFjZMhJ/rpX6niOvN2dtFaak3VWlzJlje7Oq8ZPrB6xAeOPPMC0XTk?=
 =?us-ascii?Q?/r0FRqTLH/g7xOVHK/veDzxjPocG2o7C8SXkYTl7B4XpuOIVb5yMZgrHZ/UY?=
 =?us-ascii?Q?5euuGtH9tqUUkktGoio1DUVn4faBWFEBlDH5j76OXe0ZlPGKSOKdPqv8XItm?=
 =?us-ascii?Q?2/VGyO4ebmbnVqmcKCoCAmDH22TMTcAGY/113G4WHeym5vYOEKccF5wz8SKz?=
 =?us-ascii?Q?TWB+i+laHH+zzWlrldi20VmQBJDoLUKiD31MwbLRJpV2B8eeFRagEN9qqPwV?=
 =?us-ascii?Q?qXmn3bVu42QScpzHWq4trL64l+8CZbwE9jDj553UuKbjY/aeBvTBbaBL5Uk2?=
 =?us-ascii?Q?rLOf3K5h7iGcYKLdeNq0T19AxPM3PjmcHGG2WsGIM0NHJrJC2ZI3wTgZyFTD?=
 =?us-ascii?Q?fNrhxBps44kgdErfgo9TjgM3eQsgCG7kq19FM7Zv/WYvrryIaTuCm02o2YIs?=
 =?us-ascii?Q?3i8gyZQfJyOLnmWfDl5opVUL5wDSVrd29rAxY7fs9V1Xh9ShM28/CcO2bo36?=
 =?us-ascii?Q?y25+WmS0X/kurwqvy+KRlYPwrrlFhOuxhuKEqyolzasbZJgrMU1Xs373dt7R?=
 =?us-ascii?Q?5lPQfqzXinW2skRSSPZ0ku1KMVpB3NgcxzaP5hUdP9jsh3JUQl2vKE3JkxRJ?=
 =?us-ascii?Q?mjm5QZY1quloOBdUoLIbZiGihBoOxnXk2UIzT0tlIV8a7dohCgQYvJqyFezR?=
 =?us-ascii?Q?X8mO+s2BPZPbnFJaoH9OPmg8VX49Imoni4cDMr9J+eZpx3uSRlRrWcCs6gcV?=
 =?us-ascii?Q?NB4kR8aIY79iWUgQsQtddwHO0GcVdd4kiCDlqG7mLHHawW2S/fhCYKjbWrUO?=
 =?us-ascii?Q?gGAnzeRsjXBYm2eVGfZdRg0dhrZd7Z5534FJ9lPOQ4lz79qOXOwg675HvFrS?=
 =?us-ascii?Q?MbiIg+7c1rKm0VvGHa3lDCtSndz4LnRJczNTzwpIXdM+LZX+DdxqEjxQQ4ZX?=
 =?us-ascii?Q?W1RZX8iI9x894gDdVuCEwBvWupZe9TxsYxohsGji4R0P77X+9ebTWYdSc6CI?=
 =?us-ascii?Q?MRsqpMeCyO6pPwAcuf8VHXVKFhhscGUJDx5C40Eg3B4FhlKSETjrJh+99coX?=
 =?us-ascii?Q?G3NmkhpqJhPGWyfRnpbleTiDh+O18QykYjm5AB9CyhbcKEBZ9/lFAems5bES?=
 =?us-ascii?Q?F86i3EEAuxTIJVlD3tPkfsh/gmvjucBFuqkPvFAvSTs4BTIvqgMcP1FVNI5B?=
 =?us-ascii?Q?UQQhgCUYuA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: iwH1nmAEyQbCDlKHu72ltZBHLyBEg8NRUKVfXpRHZ2fxbxTUfG2Kdx6c6fTaivpQ7nQmYKdGfDb4qy65KlYumDo/vGT2o8Vd9b3c1bCu/LSRrgJo2fbFZKkHzcXNh23A34CfeSsHH/VM4tL6WTebMiQlOQ2yGuLreVDBetkh4ikyvKkuQffb9MdvX7HaqP5hCha5mhaT/e9Yq8j1U5t3uQKCBXkoG7w96Yx+CUfsscF8YB56/vNYJQ2gNtcALxdyK2uHh65QCX+gkALdhSAu/i2b2fKp9Ladu8wD8kiJ5EjcYNzlCTOLs4X6Xb38vA0rHfDZGCwHrc2rHpQoZySw5g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac940fcf-bd2e-427a-1498-08deab9defd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2026 18:33:15.4789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T/Ydf+dCfHXzbNx1W993rXiw9psXNUj0SiFrn5gdwYxw3Bz0PnqvJ/U3g8oZItzoZxC55igy1NRq4X+P8ja2jWlIqUJelvhsLr9ddF7oNKU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4991
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778092402; x=1809628402;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=meQikuvodiOAUtFl7eWrIoYJ2eNpxOVXe4muEu8Co4Y=;
 b=Hth1am3J4nIspFOQn5uaSfdmKzuCybjE7V0ykJB67daBWEoMAbHSWhdV
 Cxfyr8FxTiaaR85ZNtRx23r2ZcqoRJD6vmYwmry3C3Ur4zFMh0TeNMjji
 HsiPNw/WJzwd4W8Z2NdRnHHffRKv0rCNwQvkrbjZbDCMBH/9X0837QY4b
 Q76n0kYd9bzu5j8bRe8aMV4G7zmn4a6FyWDJmQ5UKbUW2FYReZMxBQsJe
 O6k0jA5wXvTaCiTZaQJzZykY9zetWUD48UfrUJYRm9dBZXQ+n+p2JM3p6
 HLRRWG3QsdR5xYbLjLQSz9qMTqvr81WXI8QRdLxubHbN5MiZryM0/9YlS
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Hth1am3J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 01/10] ice: rename shared
 Flow Director functions and structs
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
X-Rspamd-Queue-Id: 0B5554DF5D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: Thursday, April 9, 2026 5:00 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Penigalapati, Sandeep <sandeep.penigalapati@i=
ntel.com>; S, Ananth <ananth.s@intel.com>; alexander.duyck@gmail.com; Marci=
n Szycik <marcin.szycik@linux.intel.com>; Nguyen, Anthony L <anthony.l.nguy=
en@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 01/10] ice: rename shared F=
low Director functions and structs
>=20
> From: Tony Nguyen <anthony.l.nguyen@intel.com>
>=20
> Rename shared Flow Director functions and structs. These entities are cur=
rently used to add Flow Director filters, however, they will be expanded to=
 also add ACL filters. Rename the functions and struct, replacing 'fdir' to=
 'ntuple', to reflect that they are being used for ntuple filters and are n=
ot solely used for Flow Director.

> Rename the file to also reflect this change.

> Co-developed-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Co-developed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v2:
> * Also rename struct ice_fdir_fltr and file
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |  2 +-
>  drivers/net/ethernet/intel/ice/ice.h          |  6 +-
>  drivers/net/ethernet/intel/ice/ice_arfs.h     |  2 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.h     | 12 ++--
>  drivers/net/ethernet/intel/ice/ice_arfs.c     |  8 +--
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  4 +-  ...ce_ethtool_fdi=
r.c =3D> ice_ethtool_ntuple.c} | 58 ++++++++++---------
>  drivers/net/ethernet/intel/ice/ice_fdir.c     | 18 +++---
>  drivers/net/ethernet/intel/ice/virt/fdir.c    | 28 ++++-----
>  9 files changed, 70 insertions(+), 68 deletions(-)  rename drivers/net/e=
thernet/intel/ice/{ice_ethtool_fdir.c =3D> ice_ethtool_ntuple.c} (97%)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
