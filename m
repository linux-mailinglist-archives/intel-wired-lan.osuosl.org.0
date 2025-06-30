Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 974ECAEE8B7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 22:59:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 013D86145B;
	Mon, 30 Jun 2025 20:59:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qF2CLyxf_k_z; Mon, 30 Jun 2025 20:59:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F27E60F26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751317143;
	bh=UZLs218Bhga3CN4iNyl0IbQUTt0opYMjSw8dl7gb9T0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VeGt+0h+qQwFb4r7Qv4HrVHtm0uM61J3Xp5WvHgceaq2u3F+SkTC0U21kHVYCRjPk
	 omNnUv/C7FiMFAPtbuC0jbQ8APtXEXxb41w4/P9wHuXJT8cR+v3qw84Tqfl4+LCaOX
	 76VBiICR5kR49A6UjG/52KcRpw+9Vy2fTzzJvM0bNRfBnkZDCE1ztrfq+G2gT/X76s
	 1UYwzOhCzyltRRbeSx9y8xIs37IUk3dF8vKr0iiJtYzZtes4JRT/EYOpvwiwVAFmyP
	 LhQwAxWRgOGHMEFNSPfm3rySCdn1Tp7K05nHJy9vkn8n1FK5cUUK/l5NnlNU8Oj4tS
	 5WTQ14dLikuPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F27E60F26;
	Mon, 30 Jun 2025 20:59:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B1D5D1C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 20:59:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2E1C61447
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 20:59:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ohh3tQIzF2dY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 20:59:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9A72360F26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A72360F26
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A72360F26
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 20:59:00 +0000 (UTC)
X-CSE-ConnectionGUID: 1aevmADuTyqqNAD+msEIjQ==
X-CSE-MsgGUID: f6gYkNQqS7m1U9UrzdfpVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="52785408"
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; d="scan'208";a="52785408"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 13:59:00 -0700
X-CSE-ConnectionGUID: 1qQXaneuRvqVSZhI8fxfXg==
X-CSE-MsgGUID: 3rJC1TzSRLuF7ff3H+Ls1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; d="scan'208";a="153188465"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 13:59:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 13:58:59 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 30 Jun 2025 13:58:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.53)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 13:58:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FReLFIjSMtP+gdY+aaYOU8Pt5sWhxbeUyIcQweFzI99lR5Q4AtzAYWFxqCwwQnbzowu+nEUT9DtGFjeRQkc4gYPP2Sj5Hk8YaCOOzopJibpZncXolSn3hofu9dKBh0b0ghOOFkF9M+PumaAfF80QLaDF12S3a1D5kNeDe6hBPKVu/QPoUWnnWAxSsisvfOYWwnC4bKe8yDY87U5tgfZTlQKmFrutQLiA1++hsjH/mU/kovKje78BBBiX1l3WZINV7TZ4xcbFaL34RB0d/+cMcH/hEq+j351zMy/IZOc2V+9XKw3SjkyfJOYJJcsDgagWbeLG76UuvQ3GlWq0JJKMJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UZLs218Bhga3CN4iNyl0IbQUTt0opYMjSw8dl7gb9T0=;
 b=UGHDNgELeU7xLa87mBtu3/NjjQC2QWFn4Mfexx5cKLLHV2VJXydWq8df6CbGekw18066l3nmMhRIevrhdQ2d2caUTv3eeHeGuD78BEi0i0GiGG0tX4nZn2891CrGH8U9kNQSC7ZPwJxSD7FVPg1iIPusLVzdWkWUqJPxvwYu8zSW4DaTC8+D4Lfw6PxtCcsV65+4GVG+dsqSm9QciRmctaik4ExdTDUQ/TBoVti6RUtlMLy3Xur/xfbHG+r6RIJmFfSgcNaFlhk6ta7iqgmLkSstZHBhG8K0D6BX2rak1PrWrsL5ZGbZo5k6UvZ4j3Z+vBnHdAP911Yi7efRqyOuYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA1PR11MB6396.namprd11.prod.outlook.com (2603:10b6:208:3ab::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.27; Mon, 30 Jun
 2025 20:58:57 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%4]) with mapi id 15.20.8857.026; Mon, 30 Jun 2025
 20:58:57 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Gomes, Vinicius" <vinicius.gomes@intel.com>, 
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Richard Cochran
 <richardcochran@gmail.com>
Thread-Topic: [PATCH iwl-next 4/5] ixgbe: convert to ndo_hwtstamp_get() and
 ndo_hwtstamp_set()
Thread-Index: AQHbw++AVYyDs0qTtk6/w90XlfVhLrQcWZIAgAAe14CAAAKqgIAAADmQ
Date: Mon, 30 Jun 2025 20:58:57 +0000
Message-ID: <BL3PR11MB643584D780C953B0060E29E6C646A@BL3PR11MB6435.namprd11.prod.outlook.com>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
 <20250513101132.328235-5-vladimir.oltean@nxp.com>
 <7d330d84-42ab-43aa-94f1-5240b67c49dc@intel.com>
 <a9d50186-bffa-4b3c-9d97-831269a84fbe@intel.com>
 <20250630205639.ayydzdmh6et2zlyb@skbuf>
In-Reply-To: <20250630205639.ayydzdmh6et2zlyb@skbuf>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR11MB6435:EE_|IA1PR11MB6396:EE_
x-ms-office365-filtering-correlation-id: 32a23f05-9465-4dfd-4216-08ddb818ee2c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?qvjoFaAX0rkOeFI8gacyuD4XWdwQSuAcDwA+5K2RaGnlxd9h+XsUlKE7d96Q?=
 =?us-ascii?Q?6M3Yxp8G30vfbk4uVbqRFSXuE0UQqx5genRi7XkYJTfGcLldfQKcKAUpUCpc?=
 =?us-ascii?Q?5r3Y6vaPx83fGmg6htMSp1zMsWCvbFxm6wJtPkiZyRdFVAfI6pkfq1nnMrVb?=
 =?us-ascii?Q?H+rjaSYdTnmJwSf6RLZolchcy+9Sr+hSlMlU5rJpBr+2RpMGZ1lRqjMFKkiM?=
 =?us-ascii?Q?6Ecar3izdVOaalnzrEtQiUYHuRrYvApjgSA4aNRSs9E7KGCkDdQGBD21l8zL?=
 =?us-ascii?Q?oRyD7QG3SCf5MX0IVWhsCBuT/vbr/ANyJJLH/8kR6vzowhtph19/OK5Zcaxd?=
 =?us-ascii?Q?pHdZNNL42sgH+H5boU2ZBcMVknBLOhyRqBdM+eSz2zKCbudFx+aDcAZVuVSj?=
 =?us-ascii?Q?vOA0Ah8t0qeZbc28rBILyyM8iuSUXNyRbZl87DSmpuiOeYp5Uv/GmmRntlMV?=
 =?us-ascii?Q?qlP7zse85RmKXuekq5HweEmglJ3l8oVqP/hd7bKUq67ufmPaH835/JTp51r3?=
 =?us-ascii?Q?PA7wsVIsXL7g4wmxxa5AhMDxliP0xFdXRXLddPSdXxOMy+Mt4nwEhEf42iUa?=
 =?us-ascii?Q?gsy+WXq61qX+odAO4MsX9HiNO+TbgWSOdihrd4ihD58ksnwF1ezri5VQLiTz?=
 =?us-ascii?Q?XlOTfPFeTN5IKUmclU2KTcjgk/LK6PYhiCYDpwGivRPQMWzAo1eSzf3na+no?=
 =?us-ascii?Q?PIBqqaZRIewkqi8QmAQdcIUMNxfQikKNfNfRLPqSO+bnb6Rel4RQAjcKyYWC?=
 =?us-ascii?Q?Fj4R/EmkGpqBsPD7YDLnlpt9biVwoSCU1V87n91Bxls/dSmnt5yc8+OW24Aj?=
 =?us-ascii?Q?mCJbERL2QL7eE7JhCYhctehmht6EnyFWwHJ9yM0MWOyhylKI5PCV4vVHI7VH?=
 =?us-ascii?Q?mT2780HZsn2ZK39+Y4oqfy5jQn/lgeM4a6eGHP2qRNYoTA5ww2DxXXhsH+/B?=
 =?us-ascii?Q?mj1UBQuT2J15ynXv3ava6FmEYzjDBicwFOcGkff9E4h/+OdMCLPCaN1WJ2BW?=
 =?us-ascii?Q?k2HUJZrQnzvqwhCF4r/TVpc55HWrdeDXK0iNyYvb6TWPJGY1AXXvrLFF7k6T?=
 =?us-ascii?Q?2a/EQ/jF43Kgn0eCYbFwoMKELU11F1OrYuCUIqpcQEVW6P1bHuQTGRWnRExN?=
 =?us-ascii?Q?qojzuZf5wUt/ZXtMhvbGAox8sxYUWHbouyzJ3EEc7XcalBms/C7RzFtsbBMa?=
 =?us-ascii?Q?6PY7CN61L7bXO/DzyIRczL0MvV8cphyyPHYVGTTiw82Pxzw08f8FtwO3zUJs?=
 =?us-ascii?Q?JzfQULvZdw7ephW+WbSQqz9OI4k6wSPjE9BINrmwgn0Soj4aVJHIZuGA4C4Y?=
 =?us-ascii?Q?tpF9DG4TSDxSjBQpCez6hDyuSRPkkufy22nPqe/3qwjgyE0EFpi0Q575X1Bq?=
 =?us-ascii?Q?R2zdrouqcF2S/6ufph3riGPsw6tDdJ9Q/1aDDt9NFsmdvGh7l6qZ0Ce5W6YN?=
 =?us-ascii?Q?95Ch0rZ8A3CZ1pfdM1hUrXXvsHecFRGssAJ4iPdOgdWJJpoxLcoL9+T8uWCZ?=
 =?us-ascii?Q?INbBQm3z4TfaRBY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5WVsVK/rR+IbrqBreB/KhoHyCs1Uws7ORliktK2tDPlzcuI+FI+JE1gqVA1G?=
 =?us-ascii?Q?YgaHUcC57IxMk/NiXeau8YLcgzveClTkEmsy0m2ue+pQ4znKZ2nQM6EfbSHG?=
 =?us-ascii?Q?ZM5fHzuWw4ekPuauzlsP0ZRNsqmPuoxQoyhOzWVpuo/je1Phej5kxBSs6S1T?=
 =?us-ascii?Q?wjses5lLuDj53juiWni1qr1AueGm/FqP3/GADoKn/TxoldxbFNqNJJowHStN?=
 =?us-ascii?Q?8cSTvaZVh87L5sdjiOGYZ+ov88sPWVfxlc3jfNlgE0U5eSn+O9wi5V7QqzFe?=
 =?us-ascii?Q?ChsDeetVFdnD3w0nIj3sujSNPwPmN/cHx8wEK+6E2OKQiq85I0GyPNJ0V8I5?=
 =?us-ascii?Q?aAolZ5A1bhfXak4dFF6TlhNOAFsqKjiaZJ/makttOTZG3S2fCGDA+85R9IzK?=
 =?us-ascii?Q?JOjqtdzSrqtOsYOIhOwvNPd9q7UHzOzuwkznVV5xwnKBV5r5/tAHRwx6kRVj?=
 =?us-ascii?Q?2V9yZGuhv31H7zOPvcAJk6cbEMV9/KXAHjESIP6BXktds3Q9sG5tAfG2qr8f?=
 =?us-ascii?Q?vL/GdTo/xQ8x1vTZ/CTYlvVrZVmUwoHbUnENppDQIU4XgtdpOcu9hPLwa0Kv?=
 =?us-ascii?Q?Xc7jKy+R/75Uh0V/F/UHF8SKBmrt7po4tS6M9he0GWUBCwXJc8j6TwuTHjw3?=
 =?us-ascii?Q?E/LdVFQ0gAnznbKlaTtxgBTRbpywHeoOB0YkldfqGdmGz3A1pRq45nG9n4H3?=
 =?us-ascii?Q?ZX/nYcB4ZzXhWVSy5anPUU4wyiSYyr3Nl+ZRtZwtIW803ng34zXwUUGDpYb7?=
 =?us-ascii?Q?GgG9Ce3DZkY+I8p9bkN6dMRG8v+tUjWKOngdOuQ3m8/riJpRh3tO83l8UyhA?=
 =?us-ascii?Q?HNtb1Oi8diqZFm4bObwKzNSG7CSL4bB3PU5pMXYQhxVJYx3uH9Cb6zC01F+c?=
 =?us-ascii?Q?RPDYFR1UVdXnO9kdiIenZlQ6R0akYyXUl8x5d26i3vaAA2YkvxHxcwoOTOyz?=
 =?us-ascii?Q?uHcjh0Ui0cbZ/5r2OieZfYxoLEl+QXURvH1TQwmzt4mmq5jTi+9BpDBVcnBZ?=
 =?us-ascii?Q?ViYfa4u3GS/2kNLdBnmNrNvRhxiBSvRiOP0yl+VI2ISBdHOJj2V/LXPD8X2w?=
 =?us-ascii?Q?3arzn+Pn4uCv7UOvJfWxL11X0knMdmWER4fCQueOUr0s5PFzYNzThvCC8kTw?=
 =?us-ascii?Q?lHuM/2GKOT80DTwE5a1XXoCWVn0sC7roKBkyT8um0nH0Vp44Ap9t5/p20P9x?=
 =?us-ascii?Q?4Jd1dSNLBYZ4o3MP5pqx/RwHd0ZU1g1qBXU6RsaCiglXmsKLtojrdEomhrs/?=
 =?us-ascii?Q?CX1yx0/ykTmpInU96bf+769C3G9TlEzTVUJj4SV1E12MF+mXZSnmdO+YVXml?=
 =?us-ascii?Q?kKjKv6a1oYJuANKMY3WXiLkmvR+k/FN2a/1VVyolHooW9VKvWWlsGUGpSQe5?=
 =?us-ascii?Q?jAqJAxxIPd/mTMxZLj5Ps3s2JUcvl4M+WGmoAr4rsSUaG0jESXGnc8k99aFZ?=
 =?us-ascii?Q?AHu/kCQtBluK9y5mMWiwCW7SUDT1RM19iJUXjv1ttSFd/VL273lWVSRv/+SB?=
 =?us-ascii?Q?4LEgpQ2/vuziS+j75Lut4b0Rjt/VCuk6m5zMK5NcelzNOPl7IfRhnraUJUZD?=
 =?us-ascii?Q?EdViTcgJvOLoT1GG0WJ6iQueXaBnSvaaMaXHiRkr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32a23f05-9465-4dfd-4216-08ddb818ee2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2025 20:58:57.0855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o/Ki/qWWRZzJixbGOHvwBiE7T9nDYFUeDbmzFANZlGD2tJ36vb05xoRCSIFK9mwSplY7R2aY6txmuX8xuuseVKVr0I9o2D1jQJ0LxZQyMyc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6396
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751317140; x=1782853140;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0EzAU4PgLDApHMNLSdwA5qyFSfvIPCY62JITaXMwRqw=;
 b=VGvQTsAdmPFuS5Z2icRrXoJnU0ABBWuhUfSwe23de8xIL1P2FgsR3NQN
 XCNZKvdeViD4IbFLz9iTkeSxfXi/cfAviNsJJdwq04VJNbQlsSKymrNyQ
 9HLTG20oFeb4PT+b/byNPyvHtpQYxDkA9Z+t1HqcRbspyxEnTmI6DSuRg
 h0QeUF8iJ896FiFxCGnWOOVhE5DgXOobvRgekujOde9Cyjo0hX/wQhZ2T
 T+Fd7HTNHXjr7SY/sD+ufbhAd0sj7EcPJ9ps8yGPy6jdPhZO6PVptzlX+
 jPG3tFRHbfM6MNIRTuPaiVZWV4hTrOePEWQB5wCYfnP+TA4qIyEUItRQ8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VGvQTsAd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/5] ixgbe: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> Sent: Monday, June 30, 2025 1:57 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Gomes, Vinicius
> <vinicius.gomes@intel.com>; Vadim Fedorenko
> <vadim.fedorenko@linux.dev>; Richard Cochran <richardcochran@gmail.com>
> Subject: Re: [PATCH iwl-next 4/5] ixgbe: convert to ndo_hwtstamp_get() an=
d
> ndo_hwtstamp_set()
>=20
> On Mon, Jun 30, 2025 at 01:47:07PM -0700, Jacob Keller wrote:
> > On 6/30/2025 11:56 AM, Jacob Keller wrote:
> > > On 5/13/2025 3:11 AM, Vladimir Oltean wrote:
> > >> New timestamping API was introduced in commit 66f7223039c0 ("net:
> > >> add NDOs for configuring hardware timestamping") from kernel v6.6.
> > >>
> > >> It is time to convert the Intel ixgbe driver to the new API, so
> > >> that timestamping configuration can be removed from the
> > >> ndo_eth_ioctl() path completely.
> > >>
> > >> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> > >> ---
> > >
> > > Ugh. Apologies for the late reply here, but this took for ever to
> > > track down what was wrong in our testing.
> > >
> > > The ixgbe patch has a somewhat subtle bug which lead to failed
> > > timestamp configuration and likely other forms of memory corruption.
> > >
> > >>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  9 ++--
> > >>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  6 +--
> > >> drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c  | 42
> > >> +++++++++----------
> > >>  3 files changed, 29 insertions(+), 28 deletions(-)
> > >>
> > >
> > >>
> > >>  /**
> > >> - * ixgbe_ptp_get_ts_config - get current hardware timestamping
> > >> configuration
> > >> - * @adapter: pointer to adapter structure
> > >> - * @ifr: ioctl data
> > >> + * ixgbe_ptp_hwtstamp_get - get current hardware timestamping
> > >> + configuration
> > >> + * @netdev: pointer to net device structure
> > >> + * @config: timestamping configuration structure
> > >>   *
> > >>   * This function returns the current timestamping settings. Rather =
than
> > >>   * attempt to deconstruct registers to fill in the values, simply k=
eep a copy
> > >>   * of the old settings around, and return a copy when requested.
> > >>   */
> > >> -int ixgbe_ptp_get_ts_config(struct ixgbe_adapter *adapter, struct
> > >> ifreq *ifr)
> > >> +int ixgbe_ptp_hwtstamp_get(struct net_device *netdev,
> > >> +			   struct kernel_hwtstamp_config *config)
> > >>  {
> > >> -	struct hwtstamp_config *config =3D &adapter->tstamp_config;
> > >> +	struct ixgbe_adapter *adapter =3D netdev_priv(netdev);
> > >>
> > >
> > > ixgbe doesn't directly assign the adapter to netdev_priv and this
> > > needs to be ixgbe_from_netdev, since there is a wrapper
> > > ixgbe_netdev_priv structure. I didn't dig into why, but both get and
> > > set are wrong here, and are misinterpreting the ixgbe_netdev_priv
> > > structure as ixgbe_adapter, which is obviously wrong.
> > >
> > > See its definition quoted here:
> > >> static inline struct ixgbe_adapter *ixgbe_from_netdev(struct
> > >> net_device *netdev) {
> > >>         struct ixgbe_netdevice_priv *priv =3D netdev_priv(netdev);
> > >>
> > >>         return priv->adapter;
> > >> }
> > >>
> > >
> > > Whats odd is that the netdev priv structure is just a wrapper around
> > > a pointer to the adapter:
> > >
> > >> struct ixgbe_netdevice_priv {
> > >>         struct ixgbe_adapter *adapter; };
> > >
> > >
> > >> -	return copy_to_user(ifr->ifr_data, config,
> > >> -			    sizeof(*config)) ? -EFAULT : 0;
> > >> +	*config =3D adapter->tstamp_config;
> > >> +
> > >> +	return 0;
> > >>  }
> > >
> > > Because we're completely pointing to the wrong memory, this overwrite=
s
> > > who knows what since the ixgbe_netdev_priv is just the pointer addres=
s.
> > >
> > This is an artifact of the work to refactor ixgbe to support devlink:
> >
> > Both netdev and devlink want a private structure allocated as a flexibl=
e
> > array member of their parent structure. They cannot both directly be
> > ice_adapter, so we chose to have devlink be ice_adapter, and netdev get=
s
> > the wrapper structure. I suspect the patches you wrote were based on a
> > tree before this refactor, and/or you just did not spot the refactor
> > happened.
> >
> > a0285236ab93 ("ixgbe: add initial devlink support") is where the change
> > took place, which merged relatively recently.
> >
> > @Tony, I think this is a pretty trivial fixup on your tree if you want
> > to handle it instead of forcing Vladimir to make a v2?
> >
> > its really just switching netdev_priv to ixgbe_from_netdev in these two
> > functions.
>=20
> Ugh :-/ sorry for the trouble, and thanks for doing the hard work of
> characterizing this.
>=20
> Indeed, my first conversion of ixgbe was in August 2023, as this commit
> can attest:
> https://github.com/vladimiroltean/linux/commit/0351ebf1eee3381ccfba9d3
> 1a924d1dd887a316f
>=20
> At that time, Przemyslaw's commit fd5ef5203ce6 ("ixgbe: wrap
> netdev_priv() usage") didn't exist, and "struct ixgbe_adapter *adapter =
=3D
> netdev_priv(netdev);" was the de facto idiom in the driver, which I then
> replicated two more times, in the new ixgbe_ptp_hwtstamp_set() and
> ixgbe_ptp_hwtstamp_get() functions. Not only did I not notice that this
> change took place, but it also compiled just fine, making me completely
> unsuspecting...
>=20
> Tony, let me know how you would like to proceed.

I think it's easiest for me to make the change.

Thanks,
Tony
