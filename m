Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46681AEB33F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 11:47:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A6AA41A54;
	Fri, 27 Jun 2025 09:47:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tQn2PHVPEAXV; Fri, 27 Jun 2025 09:47:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2B1641A56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751017673;
	bh=xBPsm0SJgfLlOEbycjf5qBvjeILUmG2cry4TF342raQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1nG8XylikkUWWpJkrP6bNwcvBhPGAFKrZ+GGabm0vHZTtRsW148mgpKOHk37txXGU
	 6/DxdEiaSNS1JjYjkuxxIxl8EAayEjdehYbKL13Zq8zlC1A3k1D/sXkLqGbaH79uvK
	 xRDQdL/kdhPkXoUTdTcOrnqyk+DjOWaqnQj31TrYwKw1hbbp20lbvMeF8MhPJcEbb+
	 wCsJ1ri3QeDdMyrIdhCgBrE673MxCJdVNo8RCiK6Xl4dzRx1gYwCP466otcnczlDUt
	 6O0PxVstrrub5y0XJ7h//2UWuIGyG/RUBhMB6DaLnzTDH80Lqd+nalL1aeYRneTnsz
	 BwX6bMM78tnSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2B1641A56;
	Fri, 27 Jun 2025 09:47:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A5CEB11A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 09:47:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9790541A4D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 09:47:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WXce3R4E8NqZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 09:47:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B318C41A49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B318C41A49
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B318C41A49
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 09:47:49 +0000 (UTC)
X-CSE-ConnectionGUID: Rdd+PLilSwaEGnBYDDgd0Q==
X-CSE-MsgGUID: n6g+Rav4RS2FY1ehtOH3Jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="70759685"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="70759685"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 02:47:43 -0700
X-CSE-ConnectionGUID: GRuruCmOTFCcUex8PsaoXQ==
X-CSE-MsgGUID: n0/zkn0ES82f29miZBy5Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="153290409"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 02:47:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 02:47:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 27 Jun 2025 02:47:41 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.71)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 02:47:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fKwDGkmq0e/ptVJETiG4ESEXTtsX/HKTz71+OREVmcEjHKbGTdCrTP3DBtx+rSpE2M20xsMDC12Lw3l0qUCKhtEks9ru5vKFeDJmzLnfwXgY1/jvQLSUXi4Y6cy6ca4nF/Ux6Fcn8BTh6cQvirfBsEmCF03xwIRgVeStvl/0O/vb9+l5/3ORQBEcKmZ0n3eHLlmkG+7r+79sFcbd2MLEdZ7qo9DBeKn5bSi7TkceOoJoMY5p0tsiEYQ8rw+qtSFquu6O2itXeZPuTj9kANvXvu9RgVIaNApC79vQ85erw6Z9Bo/Kv83ZiA1z0KvQ2WpZX8ISi7J8vtm+Hhcvk+WQuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xBPsm0SJgfLlOEbycjf5qBvjeILUmG2cry4TF342raQ=;
 b=GxOXeGlOOWcOYeIf+XYBpuORLxFGsMyckBG4rhDHRGzBP0xDPyQeKf053Y69Yp4lpqarMllyQlNFqYFZMMzeds/GYpPPgGh+dDumqZ+vbPnhNwpNb+coHejXj1UCYYdA/JwsShCHlcRkhvHxvJobF5sNvk8JB4kcG3LkSA3VOCRRMtj1Zd4QGVEsgF5Zt8lWuSYloUzMm/a31EIlVan9GG/DcV9MyytN5xzxrKexmX7qDO4qIF0esHhdD10/hB9QsOHh4+PzbcBoPkGai4N/7imY9+NlabbGiRWUP8ocOzNLgFo6R46sGAEpiMRypBXpYTO/mvMr1GjaQ+MsME3rCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7A0031045.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::33) by PH7PR11MB8527.namprd11.prod.outlook.com
 (2603:10b6:510:2ff::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.16; Fri, 27 Jun
 2025 09:47:38 +0000
Received: from DS4PPF7A0031045.namprd11.prod.outlook.com
 ([fe80::def5:6c8a:d610:7ce6]) by DS4PPF7A0031045.namprd11.prod.outlook.com
 ([fe80::def5:6c8a:d610:7ce6%6]) with mapi id 15.20.8835.026; Fri, 27 Jun 2025
 09:47:38 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Osuchowski, Dawid"
 <dawid.osuchowski@intel.com>, "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [iwl-next v3 1/4] ixgbe: add MDD support
Thread-Index: AQHbgRtWhBeDYHua+EijgsIO0u1vGrNNdo2AgMoYL6A=
Date: Fri, 27 Jun 2025 09:47:38 +0000
Message-ID: <DS4PPF7A0031045CE4CC8177F3026D2884C8F45A@DS4PPF7A0031045.namprd11.prod.outlook.com>
References: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
 <20250217090636.25113-2-michal.swiatkowski@linux.intel.com>
 <20250218193619.GH1615191@kernel.org>
In-Reply-To: <20250218193619.GH1615191@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7A0031045:EE_|PH7PR11MB8527:EE_
x-ms-office365-filtering-correlation-id: a98534a7-9e80-4953-00f4-08ddb55fa702
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?qcl1JMdn9qKJtUEus56PqjMCgY1ytQPbnLeTryZ9VmVbkpnO7kmB4YF0e8wH?=
 =?us-ascii?Q?LvL94BB77uRBOaPLnv3mxMEgW0xDVvVsEeUvuJVeukb70DjG1SJpLGCUSixv?=
 =?us-ascii?Q?hUTIsJ31lC2YpjOr4NOM6ZmMTXBpiLYIZd9ertPtDupTLbS9CyxMZzKx5bqd?=
 =?us-ascii?Q?ckfY1nvSEH6RNn6aKKnqx77UMgEQD+mFb88vCI4ifkdvhJ7HCLtwixIgkTr1?=
 =?us-ascii?Q?cGoruzk8YyhQbRni6a0rxg6+Uk0sQJk0I5vXM+IytYgP85v41PxrnBQK5IMl?=
 =?us-ascii?Q?k7pAxGNrSmflta2vQrkbamF5wXW6MHvqxSAWGL2nwGlijbb2sGSrqxndmdIn?=
 =?us-ascii?Q?ZKVIF2FvBQsaJfQY0ByLvEYu1g7sdhQMm9ZkHVxfGIPtakZWVJtnBdYmrZR6?=
 =?us-ascii?Q?YihEDxnN5fErsKW2nw2TfvoGF42blFTPUJk4ME3+EBektSkLKV6mR71oDpGE?=
 =?us-ascii?Q?ah6FNXt6/u5oYrKySqtlvm8fQHNSL1RvI5Blas9HmiC8bplcAUGZjcD9OJJv?=
 =?us-ascii?Q?3DQi4Eg78y8OVeJmcKT5mH2mYbjq4H3GlgdbL6KF/DGixFxRwTttjCWT0eBT?=
 =?us-ascii?Q?M0PiPQeicBrw4L3QTrQuhMoS90Lg5gtpjZiYkmHXDTsBQrKrkjg5rtKP/Ccv?=
 =?us-ascii?Q?waGhshIMX1kGIRcWiSszxkIv4onXSModnnCfsPCybgd2+73FHc2Z5N+dqiOB?=
 =?us-ascii?Q?+jjx6QLh+lZLC9MnRNJ+oZeDEDQt6tM9X5KfpOEIIqEQuPOwGcrQRxtbxEIE?=
 =?us-ascii?Q?1lToNoGhosIS7BZrPn7OS8JUjV4NwGQv0HpIZDIK7t5IfYD4KZt5dXX2YY0a?=
 =?us-ascii?Q?iOx3t+PR+QA7iaWTCXLezxkfsYhx4dG1uYS4DEEuNXmGSGSsMPpJzVhkznRU?=
 =?us-ascii?Q?rzd2HFywmvEM3oZ4iXs2+DALXuH25ZUfRtwkV7iwLTfDfr1cA2wxfCCNOFlM?=
 =?us-ascii?Q?OcAc1JCKp6oLKMS/YezKZ5LWR5jd5Z3VbfW+JJfPych2xAvtne8u9NaL7f/4?=
 =?us-ascii?Q?zKpj4hEZAbPaHRSoJt9ev/VsIjV7H0kWJAQ6vjhiLmDq1JicXOkxkOkJXDgt?=
 =?us-ascii?Q?DSYnwvJ3mza2b7AbnYZtO8m9F8edvWN1Rhi+/vm63TxjkN2BGVN8VQoGtzqX?=
 =?us-ascii?Q?6iOPU5AvtrV5D6p4a/Ilr2WyJvlxcIgyJVCh1MnIDbwNiVySFSYk3VZQUbHL?=
 =?us-ascii?Q?ZTln7RwpwELkTQH8E2h0X/vO4/a+h7J8A7r91ICvkxdr6rfqsrGYrKnkEFDF?=
 =?us-ascii?Q?g3d8WCFcn0o2ubWQQlFDCnaKJj6XlzM64sk8qfmZTYppuIY1eNTn5r/r39Cx?=
 =?us-ascii?Q?MPhghyKoEGGZQ8mIuNYLzmD9hvGJCnFo86MjfhBUKC95JyJKEFKKJrv36xwa?=
 =?us-ascii?Q?r6WsSuPteWuC5lklPF4yDhKs44HOWzOIBM9uWnDeWw/wkf3i2GuckOtBD27t?=
 =?us-ascii?Q?IPJ+hgMdFVuRqjmCDU2gaHknnRRnW0r0nQICQ10yRWz2yLk3ROSi5g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7A0031045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7JTQ4A/xiiPcN7hvV8TH8sFzz825HuOqf57wayWzgbBliZBtneemSRUxOhqU?=
 =?us-ascii?Q?GM60ZbhGc+Xstjr/1dKJYa2Xz63KeeFgK9QWfQiMOv61SJ/uoLMkOonX/JPg?=
 =?us-ascii?Q?XMEl0EVXuDqwKcypeU/uR2+8xs1w7OhqaMhfpuCGQMwi3depOVMQjxBMvYIP?=
 =?us-ascii?Q?6a+Fq/pIlmy2qsmU9pf4K8rbQr/BU50S9COukUulElwwsf/VXVdHxTjkGcXN?=
 =?us-ascii?Q?ORNYSe7MEl5/Es6pf7ySwOyPccSwCWTT+8sKWZU273tb33dqCosh5nSUQy8X?=
 =?us-ascii?Q?Uy8ZA6Un3WlH4Xfu06xuLKw8TxkgZGZwAwc5OPurg4mGoXvw0BhbYohKdsb1?=
 =?us-ascii?Q?FWYWBTwylfZk4h/xkDNZcDNNPxrtfD4Q+VcszBTl6rQPvSC5LRksFC+3FYc6?=
 =?us-ascii?Q?OER+msYYko5qExDB0JmRCqr2yYHwsK3NwIC26WNBW2lG4BpAFN80Q5mqEHvf?=
 =?us-ascii?Q?SBQMlvHyh2uEaILromAJhLCezuJ+ZJfcvYqN5Evcu90Xn8FZUjaBnWZo0sOu?=
 =?us-ascii?Q?YEJ5mngZsyYIlXBfwIO10zI0WbuTKfnA0xZemusHN6OymXf1pxwsMGOrFcOk?=
 =?us-ascii?Q?vQ4/3vBgdnyUTRJVoDsQVgtmkOiPcg+TmFtCS8Oa+ISYEY5zKaC6fZu4FfoC?=
 =?us-ascii?Q?RIzhv56Rb+4ZgQvnOF2sfHk+ukLG61+aIyWwF/qTd2N4u7BC3jnq2Kq8z8T5?=
 =?us-ascii?Q?PCsPKmXyWT0sio3zyJ1bJQADX9xtpef+R0YgEZYmO3IPfps6DAoJ6+WezA0e?=
 =?us-ascii?Q?O+dNebOTv0ZG7i9yhx8vvyiGTB4s3iPqa0HpBxDokJPbeDvFJC6cz3JYHSQy?=
 =?us-ascii?Q?xqzJM3y2YpQCm0fbRFiS0ctjCFWpqKTnhXS9RxdOENJ3mqc3Sy7ucP4sE9J6?=
 =?us-ascii?Q?CPC404AEhDkIRoBIqeKFJVqzrx0D8ChdFg+c8PHpDvpWUAOQwqtuDkk3W7ap?=
 =?us-ascii?Q?TuVbDtzKMCv5G4J5/A0pEdRmeHDwMDMBkJCh58HgQxTcLl2aqrxDiENKeEKw?=
 =?us-ascii?Q?TNsZaYA6cRc1iMVEI2RfHDz5G6UUFDiIBn5x1f8HuxUbokgOSLzAtUlcjrss?=
 =?us-ascii?Q?dVTsXjUIUAtKuFGkI1wQtheA2hC7G5swUoupU1gVvvncCdDzJpqVxP2LnnG+?=
 =?us-ascii?Q?Aa3jsazkTeW/vLp8SrEBfBevlqn1g2VrTgdEs4SkNaPkYqiiXKL1+awtfJyo?=
 =?us-ascii?Q?41RHQVbqOlN9WGNbhSXEpQqdBnCQaV/V1mhvTbMV7EvoqFtMDMq9gBvIUUyp?=
 =?us-ascii?Q?gbIpMEbIT3IzvrYplFBAI1zvnF6F3dTGvjlGSHVfS51FQvVWD6qwoB9oKDSh?=
 =?us-ascii?Q?wnFFMzrEdq5fmFKJLzYXS1V3ZMAB39R92NO2wgfOjYx3wD2lxjmX3MOVfNNE?=
 =?us-ascii?Q?g97RCMWitKuVvM/L0IADrLFoMuHrBaqlJRtdirufFEyONTGni451+zuyBxwI?=
 =?us-ascii?Q?QL9stOb4R+iHemCMSvBzyISzwKSIyZyjli/B3xSr4cTcdLrbXPPqRTnG/DBg?=
 =?us-ascii?Q?D1zqTREDuxE6dGeBYno86MskwIOIdF/n408WeA9+E84o4QH47pWru24rxpPB?=
 =?us-ascii?Q?IqNo7TeYanQqjyAmZqgnaNqHghHpQ6tmhhGWyRG5CceZWHiXWhVn7r1NT3Xi?=
 =?us-ascii?Q?KA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7A0031045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a98534a7-9e80-4953-00f4-08ddb55fa702
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2025 09:47:38.4178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +PUAKjdetPe9x/7JnjSL1je1WgrGntDwvc/L2UKU5zo4XQGEc4i2YI96bcqKibNr2j4O0m+7FOg5DoTA4OIR5Pnrsun9fHSRk22PTbpzjPE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8527
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751017670; x=1782553670;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xBPsm0SJgfLlOEbycjf5qBvjeILUmG2cry4TF342raQ=;
 b=CaFCdwlmxagi7YVZp/TurgUR2Cgu8WW0FwquME2f8syDaGuKRsL6j0/I
 3TjoTrlGWgloSwVTuVqjoLUHT+uTz2qzO6w+VA0npfR+jMHfyooMUyxHI
 jlYzcWk2aaVg7fBOn4gf90437FpzweJLsWxBLLnSnxlFtvBXknXp/4waK
 rWU0rGVvjM5OY8dAl8OhTe05QSgsvyKwEG/ADCmOqMPLPfUpAUy42eRLZ
 y52xxVJ/3bIoX5wiUG2E6s4lqSpSmx7yLGAZy+hblmN3SdxLjZGWI5kHL
 AX1Uogmjsdknefg27VCeb3YVUytuQeRZTg/qTdfGOCfWhuYI0Z4ZZMyqx
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CaFCdwlm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 1/4] ixgbe: add MDD support
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Tuesday, February 18, 2025 8:36 PM
> To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> marcin.szycik@linux.intel.com; Jagielski, Jedrzej <jedrzej.jagielski@inte=
l.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Osuchowski, Dawid
> <dawid.osuchowski@intel.com>; pmenzel@molgen.mpg.de
> Subject: Re: [Intel-wired-lan] [iwl-next v3 1/4] ixgbe: add MDD support
>=20
> On Mon, Feb 17, 2025 at 10:06:33AM +0100, Michal Swiatkowski wrote:
> > From: Paul Greenwalt <paul.greenwalt@intel.com>
> >
> > Add malicious driver detection to ixgbe driver. The supported devices
> > are E610 and X550.
> >
> > Handling MDD events is enabled while VFs are created and turned off
> > when they are disabled. here is no runtime command to enable or
> > disable MDD independently.
> >
> > MDD event is logged when malicious VF driver is detected. For example
> > VF can try to send incorrect Tx descriptor (TSO on, but length field
> > not correct). It can be reproduced by manipulating the driver, or
> > using DPDK driver with incorrect descriptor values.
> >
> > Example log:
> > "Malicious event on VF 0 tx:128 rx:128"
> >
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> > Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


