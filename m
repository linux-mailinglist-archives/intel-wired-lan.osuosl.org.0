Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05774AFEF47
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jul 2025 18:58:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 417286075B;
	Wed,  9 Jul 2025 16:58:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zuuFu9XQHvnL; Wed,  9 Jul 2025 16:58:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B03A60816
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752080333;
	bh=nxuiYMBIjJsVVmtZN0MWdv8VY5MRt57YHotyhD2hQr4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YYPa1J0EaG5DusYNBhwnEvMLOGZdKexw1oEfk2v/5iNYmDnJM1JtO4FGdRjx8pThb
	 7mNilFIFg139vgVRZbVv5ysyVqZvZ5DJDpaOXg53d5MUkCUiBb+9le6yyRXjl5cPti
	 y+9iJJlrYPzfioluYzjnT7rGUJclDBZSEqEtXBurXGCavVbY/ob4agDAOaS+vQUImI
	 s+5hjg7V0GOgE1lFWLu/zVSQ0auOmj6uTbzhoiS28nRC3iKh+KfmUg5OYzpfRi7KdN
	 XqSPDwqBTN0xRn4cMyu3CslaiTZd1tJY+FzM5+KiPLCw5n0KIvxd+gxFp1/nswLYyg
	 hEvFPyLbxL2Dg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B03A60816;
	Wed,  9 Jul 2025 16:58:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2CBE815F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 16:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 134246073B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 16:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NEUneFD2N3fG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jul 2025 16:58:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6787E606C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6787E606C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6787E606C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jul 2025 16:58:51 +0000 (UTC)
X-CSE-ConnectionGUID: YpHEFLzPTP61QemEyln4tg==
X-CSE-MsgGUID: vhveKKNrR0KjaFMsXMn/zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="71795158"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="71795158"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 09:58:50 -0700
X-CSE-ConnectionGUID: Z/031s2jTxaUqWJH1uJ2aA==
X-CSE-MsgGUID: RxER6RXnSNae0eUeJP6VmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="155239041"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 09:58:49 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 09:58:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 9 Jul 2025 09:58:48 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.71) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 09:58:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g6HKzh56fTnGJIOeZVKcXTKi+ZIizKoA3/Ae1GKViFqZasJ7Z/V8Bg4mjHHQrPTE+ZDQcCzxRcLE9iDB2iEGTH7Zd88ImTckVgyaleRkNkRIXUN3lykCG5tWDMMGVCoHt/MuU6eN2xBUur1byM/qzW4HKokNpcvQX7Rc3Elt48Bx03wJCbJ5XAXfP/FYGRTGB+Rq2AhYTkhGd/KeveEjYwg0A+uJWPdKhmvJHWMUi6+OABdbRq+zGhXEagV2yWJ9p4evF5dAyoOalxWDm+SHHEaL2P6c1SHJ48xaypSspT1RkDVx1b9Llu1bltrkPquD81N3oC2e0qfxtijKw+ALxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nxuiYMBIjJsVVmtZN0MWdv8VY5MRt57YHotyhD2hQr4=;
 b=K54e4Fnjq1iXusiq72bJHJj5rkdlErdKLlKUtvflM9MFepVbwNkINuQGn17t37I75IjEgtwjDChyUP95K3VNnuIM0kbagHy6YAsEACm5VLiYt6+aE3ZZVB2Ejt+3d1K5Fg0kL5y6a+GHzrWZNV6m6LPth6uXLrp0tP8WZs0PZ1uAxT9gDnWbbW/ZOAawNcrXgUSVg2PLwB5dLxtK/tgzjNRgmn/facLGdORg/7Wbn0hSf4Rh8Y9RBs9pZMctjgUPUCTIAm60LxEfby9f2/GTT5YQU62hT7OXYeHI9FQ9zPshM8c3r4D8p/Ztu73z/17ac9jBVgTWccrqVNC9hx6DPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by IA4PR11MB9298.namprd11.prod.outlook.com (2603:10b6:208:564::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.25; Wed, 9 Jul
 2025 16:58:44 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.8901.021; Wed, 9 Jul 2025
 16:58:44 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Olech, Milena" <milena.olech@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Kolacinski, Karol" <karol.kolacinski@intel.com>, Willem de Bruijn
 <willemb@google.com>
Thread-Topic: [Intel-wired-lan] [PATCH v3 iwl-next] idpf: add cross
 timestamping
Thread-Index: AQHb4F+MjqNzxHImYUqDsU/skzxLa7QqJCEg
Date: Wed, 9 Jul 2025 16:58:43 +0000
Message-ID: <SJ1PR11MB6297A8F1A2516878B2213C049B49A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250618144308.81960-3-milena.olech@intel.com>
In-Reply-To: <20250618144308.81960-3-milena.olech@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|IA4PR11MB9298:EE_
x-ms-office365-filtering-correlation-id: 42cf786a-8ae3-4e66-bcfa-08ddbf09dcfb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?wIhHDW9P/B/2HJOrZfEBBLCioK+wgTGTbmiWwYqL0A8LVq7odP4Y1i9uiTlo?=
 =?us-ascii?Q?PAKOMxREkReYj/3twbQV961N0B2m2BSk1jetAoKyDGLhCLLEoT4cFGDGfuIb?=
 =?us-ascii?Q?P6/+EUbN3xmqWXbn7WNA1xhLCpa8Vu64rfl5JloQKaZNphvmSBqiYibrGhN6?=
 =?us-ascii?Q?W2UXXaq+WyRvtT8xGtwQ2cjxShKgvdNtjOu3VBQfN0GFaFaEzTzIuOgZOfcD?=
 =?us-ascii?Q?f/EbkX3BuVcq/rZDPjLL/14YvLnTUCaQ2nM7DHepJ1DznHQ9rgfSCLVWo4uo?=
 =?us-ascii?Q?80cb8jpq8VDUqw72F9pa9MdUGW//wPUy3IVxdTRxrxFXQ2QQPXVyJm6KhyZc?=
 =?us-ascii?Q?Z9Qlh5xvIV8chApxY2Vh9mE7+J2bdUPnn0ts2+ztPFwDSuZFG8nJZgFbAR3L?=
 =?us-ascii?Q?3A3/1KFTfETyMya0ahv0BcM0vnKCrm7NPBDytDyQdmIxIxLOLx8JewHqkP1v?=
 =?us-ascii?Q?wzKlfwxsaKkx4PGAhG0XRiwm4oCN0d9wUvpu5KbeHLJJC7sp1BLaUf6Q9iea?=
 =?us-ascii?Q?OUUyZPR+Lw6WYk4CifdmGNxPqWnkUPhLGh63LyX9I7t6UZgwQeG3I18xUqlW?=
 =?us-ascii?Q?NsJ3xTxJmCreLx7z25cUxRA/wwnYBrLuz7xDgioxB0K2bu6Gfki0NyXkA6ru?=
 =?us-ascii?Q?ithn/HLnZihMRx8u3tR2o0vR41L9SQYjRdy8eJrOIZIkYqFsjA8VKhcA7H1E?=
 =?us-ascii?Q?uE7+F/tcnX0jdAHMzWs1b5oVw14cYB5JVtVC+g+XDVTT8iEBZBdJE0djUL7N?=
 =?us-ascii?Q?5j4HEt/zA9/P94nP83iM7rKuxyXyDLsBz9FTBsY+B5zn5l1890Tew0jN0/EK?=
 =?us-ascii?Q?oNhfZf/50Zg66Ys8SpVPG80x00ERuDQCkReMv1sC2lzYNRxaGuIi7hoP82d8?=
 =?us-ascii?Q?GgxOL6ZRJwlB/H8GGcJpT3zngA7OojK1kqx0deQylpCUWCxvKCgxssRdCXg7?=
 =?us-ascii?Q?iKKqWwYaHpTMBUy9Y9QjYzE5SisZwzLasSqADeqUUCUKpA5t7b5QPSqfiFVK?=
 =?us-ascii?Q?Pbfenh//f1yxf/93NaU66y8dBi0HxRodi1liRUM8lOfgbZfeePmHDvieyE7P?=
 =?us-ascii?Q?wt1Hbb3w3lmDl/dJVP6XO52tmgSoyouPq7Z+B/BYhEfENzPv5rvoFXVXW+1h?=
 =?us-ascii?Q?D5Pimv2+pJ/nWgA8uHNW3eZZUphH0uzyC4L16dSc1I1ouDH7Lx42XhWwqSdd?=
 =?us-ascii?Q?q1xgIu/wqBgPUQM1qJzkD3gi2ab3vKb1PbBPvHAaqWMOq9R5xa86qwsRT3fS?=
 =?us-ascii?Q?7xCkWrUAlk8BoYVYgcm4CLUlPcux0zk8MfBiViIxZZQSCoOFjDuu1cQIHhNo?=
 =?us-ascii?Q?1+PkPlacYqY/Y5lhYbkZNSMXtMwI+/yEdKW01n0/SqEwqT8DvYTLEyjlBdzY?=
 =?us-ascii?Q?a8nnQqYn+7BQqOWgcBQUu/tQlHBF+fpSSFb6dfvp9EEl/s0yb+t/C8ZkMhE2?=
 =?us-ascii?Q?F/uuxq9clLdNNa4mKF6gfHChubnKabkwnC0BUoKOckGoNP5RJVkLhA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qEYlptveSS6bKmnYMjBhHAMnvPBbbFs8/Kf4bR8Ipnr0+/v8rX4Q02cjmTqF?=
 =?us-ascii?Q?Awi1vgpAjaFc8lKLB64I/BaaLtQ4AC7Y8YMJYY59rC07SAMuP+FP+SVDOUCl?=
 =?us-ascii?Q?lSYEOBcZTfTs++R+dxY6CWOfbAh571UwNTAKqkusaGj7hFWKDf5AQ5BfhLys?=
 =?us-ascii?Q?EctxQ0PSNlR0/nh0EPkVs3MzopkamZNVruf5VFq4RmThFh7eJn3R5KVmVHrA?=
 =?us-ascii?Q?UagVwwj4BcPAIo8HMNqNAGVPV1wJLQGE08swx3dfPRT8mqQ+m53/pGfDwsSg?=
 =?us-ascii?Q?EXIesIkyd3UXdfyDPXLVB4ie5lD608da3q1yDmJ8uWIhlu8fFEWz3sbjWJSr?=
 =?us-ascii?Q?daWNl4Dw3VqvbZVa4HhJCnY7cSoxfAREgILp9Ew6CDnn1sbFmzhecEek9TPU?=
 =?us-ascii?Q?62EnWjJ20KnJrSBLHlqxt0Qh0NBJUQsF+517Y7CoVs1E4VWhZDi+BvIkCvkJ?=
 =?us-ascii?Q?Mh9rPoFIJ8Z2h/E0jfVAv4am0jknPG7b0gvN4s4zXM9YqTzCEPYAUL1BskKH?=
 =?us-ascii?Q?/hmwrYBHYVxFrSW1Sjlyt9obLg5NHt34JWRaE8QlOBI1aI3IoR44myAOzUuI?=
 =?us-ascii?Q?ovA39BZb6WH1ayPC7csESEoB5+lhWIZN49F49iW1waSt2q9meSe9hDtOJxvh?=
 =?us-ascii?Q?8IMKQEZjlSBIYtckHPVbCygltBMESEgkIJf0dzAOxya9ICPTVpJqyvY/oJqE?=
 =?us-ascii?Q?nr03OTqQw9ZO3s7qN/V66CmM+b7D/diZ2F9hayW5xZOc2FWG4J2QBHGmAmin?=
 =?us-ascii?Q?FV2jzNLtvxxMpLDjYjA5EiDnP+BMZLoeGbbaTm8ya9i0okZUfKZde6BtYelM?=
 =?us-ascii?Q?gZOEtA1pTcublevyCwy9WcOa/cmH5Wu/ZITZ9Og9Xcp6YomYWDxMVBUOsQgW?=
 =?us-ascii?Q?w0JmTuglN17pc9rAawe1ETry3K/Sj6Onisu2nl8lpuLSK1Z1JSZjoYzGEnGG?=
 =?us-ascii?Q?gd/X4yXrRyWZl1SMIwx3lh3g1GkCku0VHBdPq9Mi2dofX75KzQb6BNsEfwMg?=
 =?us-ascii?Q?9yUkaKax7O4Pg+0M7uCCmGr8C7YV5MSLF3KNAvgwgrGEDjZ2e3A+oZKo3hdN?=
 =?us-ascii?Q?gJqjFgPPgAhMfYqry82mTGipCAyKqzEyic1q2Jx9wC6K3E+Y5JJVWsedInsL?=
 =?us-ascii?Q?/M9JCXlUQTx6MWWv01ezcJX1M5GqN/BYoYLUF/02l70dc1yorm8LfDEtJmdX?=
 =?us-ascii?Q?rW0SRKlhRNKQ7/yXvDU0xH0Jj32frWVXACtwqX9sfMNRVAK5h6dOjlViPk8J?=
 =?us-ascii?Q?ecag5lsERtHgob8CVhofq9zMiaMr0wSMUu+QgjR+FCQcrD5B33FF6CdxVugS?=
 =?us-ascii?Q?S3EI3KpJ4sgrJUw2Hqpmiyvgil4P0WZrDo/vY0/8ZA/pjhSW6NabYlzDRYno?=
 =?us-ascii?Q?/g5EcnReu6PLQVjbcO0hptRIe46994VuXPPJy9rE/v7m9AIpZRX5CF+hJkNZ?=
 =?us-ascii?Q?r1+4Oi15xMKhXl5MW2PhU3ywLZhvmmWnvqOufPZSq9zrSoUYDdZEx3s3kfyS?=
 =?us-ascii?Q?xXuw2K2JsNyOrnFrBkTCzG9hbT9V6NO89GqTX2WZFlgX9b11yesDI1xeV/rH?=
 =?us-ascii?Q?up8179bIvMx06uOt5oq3OyZr3N5DR4cWTLTv9SzC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42cf786a-8ae3-4e66-bcfa-08ddbf09dcfb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2025 16:58:43.9209 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wxQ9Mj0mjBr0bJpRIcKMuIF8ymyyYdM9r/8T4O1ABTixEIKXpj1WOZaUAiK/6/G5eSvv58RgNy1WtXZQhFqr6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9298
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752080332; x=1783616332;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nxuiYMBIjJsVVmtZN0MWdv8VY5MRt57YHotyhD2hQr4=;
 b=HobCl1OnBwUrSXqGWwPNcPMlQDRLwio0Bw7UNsSUcNTOxNmEeqZFpw5L
 2lm4hvU84j4z7f9SEePPJHRNYWRcpUWPGyhweeBQxRbBh1cZY0esyr1Kb
 jobLT0ota9nkxj7Qzm2wvQxoG6kv2aiIZDBTg+yW8Se2Hxii1Dpac3aaW
 cczjDjDmZTh7edRQPaXLfwsmCd5QPPNWll03NOTAWJ4ZYTdimhIF8gU6m
 FTotRx5iZGcHEOJ7aG37dnHn7E0fNoIn5/3K6j0uZNox4oCRlPTdDlUFo
 ozarG5dVTBlsAsCnTh50wKuFbtCs5H2YGUHWyetxNqvyKwv/HF8qgGI3h
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HobCl1On
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next] idpf: add cross
 timestamping
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
> Milena Olech
> Sent: Wednesday, June 18, 2025 7:43 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Kolacinski, Karol <karol.kolacinski@intel.com>; Willem de Bruijn
> <willemb@google.com>
> Subject: [Intel-wired-lan] [PATCH v3 iwl-next] idpf: add cross timestampi=
ng
>=20
> Add cross timestamp support through virtchnl mailbox messages and directl=
y,
> through PCIe BAR registers. Cross timestamping assumes that both system
> time and device clock time values are cached simultaneously, what is trig=
gered
> by HW. Feature is enabled for both ARM and x86 archs.
>=20
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Reviewed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> ---
> 2.43.5

Tested-by: Samuel Salin <Samuel.salin@intel.com>
