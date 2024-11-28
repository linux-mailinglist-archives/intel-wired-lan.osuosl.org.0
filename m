Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8769DB316
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Nov 2024 08:15:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8FE641A69;
	Thu, 28 Nov 2024 07:15:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rb08L66Q_t-X; Thu, 28 Nov 2024 07:15:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 106A941A68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732778132;
	bh=nKgbst3nr2TV3vx8avV2H7nkLzAiJVqdb8ZFN6snBog=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=33Wn1d9c+9N30VkOgGf35Nys9ofp5YH2nBW+mGsgp3Ok3+TOSzyvpYjzA/vRLsf8x
	 6Ih/1jOp+oDRz6aVP4/KnZ0LNN4D3ZlejrOVR2bGHarclWhWQ3jh/W1SiRDIyolItp
	 7CAbirWQx4HcUP+Mlzxo0IJnuh7tV5Lth3pSG+wt3Y1A6VsdMXIHlKpT15Q0KsLvmV
	 9ZgrOI8pyKbvbGCNfU4sWGWdleJJzR4rdOOFbXVv5xGSo0DrEPoj0R1LZF/LXnR+Ep
	 o+lprgmf9UpogrQYbFQA9cpZcgUyFYS7nQpVlBAG8W9P0mvmYi/yRQ8PJI5Na5uvS7
	 0wm/wEYSxEGWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 106A941A68;
	Thu, 28 Nov 2024 07:15:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8727E1167
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 07:15:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 645B941994
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 07:15:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lkKrE3tvAf48 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Nov 2024 07:15:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2BFD441995
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BFD441995
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BFD441995
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Nov 2024 07:15:27 +0000 (UTC)
X-CSE-ConnectionGUID: h5vU2mpaTsaGhlnOaccAEQ==
X-CSE-MsgGUID: cEfXydS4T/O5tx1fAoN7hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="32935142"
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="32935142"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 23:15:26 -0800
X-CSE-ConnectionGUID: RDeeuEn+QrWpxYQi5VSI5A==
X-CSE-MsgGUID: IO6RS/AGRl6iukwOCVIh4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="92482243"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 23:15:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 23:15:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 23:15:25 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 23:15:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F2VLG/zi+E72SwXsxolQaOBD9drLYIC9Ht22JBvvDPjwd/OWGzYx32b3Swzk4dKcdGqVry911DpkkD7S9+mjG6ZhxeMRD2iBds8msLOTXhRckmNjzPcd8y+NjyydKU81ZV/Ive3VOeqNy8tYrmo7vBmqp6X5Sb3UrLiCkXDGb1GtdzyMu+Gaskq4WrNh78ufDPy8k+G0+dGTeLoVTtY8od0I8NyRBzFZ4MNRuoU8lceiCSiLF70U8XdwV1TEl53blPtNAd69ZMc0pMY8OiVzSnTaG21/PM5NpqIHHNDmqqf1B6vj6Cg0qwzz8df/woYvh5nbUmpA98tc8ftsO+YMgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nKgbst3nr2TV3vx8avV2H7nkLzAiJVqdb8ZFN6snBog=;
 b=o4ocDXSrpixkx/9wQna7yu5p1bBuXCfqnh6aRm3tN4IFmULG+nOv0b0L6SgErlls8EyqP7DkkL6xdd53dEmB0Sa3g3vS3FV1lANihYHux5upRvO9Ck2CMPpa4k7jGTI/mTPLRq/aAgQv+a9zB5+WKK9k81vaVKSD2TcVxt+Cz7zQa0qxpR0CrbYbWUtRc1sS4U0lWZsLtwrbOvHAvyTNAH9DQnBu89dqtEsDtwu89Y08ZFFh4hP+diTZPkGXwLgWHKVdEkAC3185ADTyaOBmjaUnOdIGMSBlaKuJfsypbx7FDygYqvbVxb1+QL+zNnyKNt5FgUOCOhJCBiDbtsnwCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA2PR11MB5051.namprd11.prod.outlook.com (2603:10b6:806:11f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Thu, 28 Nov
 2024 07:15:18 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 07:15:18 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v4 iwl-net 3/4] ice: Fix ETH56G FC-FEC
 Rx offset value
Thread-Index: AQHbL37ykrZ5Hos8pUyLVmk+9W7Vb7LManlg
Date: Thu, 28 Nov 2024 07:15:18 +0000
Message-ID: <CYYPR11MB8429F445DA98954A5DF68F93BD292@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241105122916.1824568-1-grzegorz.nitka@intel.com>
 <20241105122916.1824568-4-grzegorz.nitka@intel.com>
In-Reply-To: <20241105122916.1824568-4-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA2PR11MB5051:EE_
x-ms-office365-filtering-correlation-id: c1a626ae-2a4b-436c-76e8-08dd0f7c69e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?rNk7GkuwiXsoGv96Cvj31NFxBXeoLiNfF5NW9Am+2CQhpIBYeqnaHalSSZK1?=
 =?us-ascii?Q?8iVNerffndfUHziAii1IL13uApKV8k3NdLLnz2C/1ez39CN8Bcva6vk5v4oj?=
 =?us-ascii?Q?qVYyu8Ck9boMXgh5Zb82/UN3T0A5LyHIr6e2zmo8lPEMpny9xls2GJhbgeMU?=
 =?us-ascii?Q?8Is38vyvZDOW1bGFCeyZPsJXyn3bR9MMXbuw+7n3qPaTKdt3YwyauQoYAXrp?=
 =?us-ascii?Q?wVlaRUnR2vGcZS05Qh1erRceI3+PsYNWOw6BwbSb4yXP1xpigEnzvx9kUlJy?=
 =?us-ascii?Q?MY81ErQBGP8Y5mBv9S8H/+OKPN82KrrOUCR4nq/kKJL2dSitYV1RWVibOU0A?=
 =?us-ascii?Q?/cX8H9/7y2+9h/EEySQawJgmmqpV8KHaSaEkt/cW3BYNfTKKBAFf3nexjF/M?=
 =?us-ascii?Q?N19rLZlsq94j1qKNoHEElR3OsLjthBFlhfjAxn6+R1ROfD5sTJYiA5T/s38v?=
 =?us-ascii?Q?fPfEAIwH/cMooIEQOVzvnXiqutnHihxC09Cfo2ez5rBHLecDcHHPjWKHmeB8?=
 =?us-ascii?Q?7dSYvKNFBHAiU4t0Z6hjRZLlQbg21nTSD27+UHkmxu62GhPlwghsvtyZfgsT?=
 =?us-ascii?Q?9hGyeiQ9ht4FAfeneGUoKAKarPegzpLluxtDiWcRAhHxbfSwrgv2NvEsP8E7?=
 =?us-ascii?Q?ocuxtIvk1UqsVtUPPcdQKBW5rYI+h/jGa6HJCucHCz/Rzjm2qrUZUt0LjDQT?=
 =?us-ascii?Q?qyTPIUz3nlAuCIFECrwBQ4GI+F6lyui/bsX04Zi24eS31uk894EA9xN2KFg6?=
 =?us-ascii?Q?WRr6DCj3sEl6fLbAyx+fJ2BDW1m5sqSEMFvhfpdzB7l2Jh62uxRniwLbDquT?=
 =?us-ascii?Q?WiuvJsQXjBCqnT3LKlqe/VFNFb+lZ9hO5NKFWPxL6yeWM7DvvY9UJ+KzqL8d?=
 =?us-ascii?Q?hwCu0YjuGY/ffQaCIr40om0fIk4frG1U0uEnuVfxk7FGkQwMD9eT6SyRcD2G?=
 =?us-ascii?Q?EcdIMyr+Q/tb9vORTHYUH12oLyxCfIiVFyJmFwzY8INzzWvLJBu8YytCtg6p?=
 =?us-ascii?Q?WaegI9jFwqyYvrGvBW5H0eNYpQPqVzYNvJbWkTNZOjUE6PYc+hAT0TbI83s5?=
 =?us-ascii?Q?s6e0DCvK01rb0+xkW3jvWfxBlLXP6zo2QdRmEcixVy0r4k3gUVfu3cRWaM2k?=
 =?us-ascii?Q?rQ+hKwAx9PF57zoLSXOhJvQyST91XvulD01nh89YaWCHYb3QHvflbT4bMFhB?=
 =?us-ascii?Q?m0piyH8P9NLozhlxGiwhgueuywKe62wNnLkVtY362G+4tbhFq3qgWNoZl9Lw?=
 =?us-ascii?Q?k0uT3M137anlJnEfP80NB51WjBU6K0Q7NOr0yVzGZVobrikeJVBQjMqCuNiN?=
 =?us-ascii?Q?Suym7DQoUHkMLAaHMakCLGI2YfbRkkHeSKSgYwBE1qZKx8yeGCMa02j8tjLZ?=
 =?us-ascii?Q?/JjWvdnvC8Qi0/WkRtMqC9wzag9HVyNmMghKbBT8mBil0ruYIA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bXWot7xPUjEEINEwZrT/+CpPn18IJBpbwTAonwFfcrJ8Jc5CY8APcBe0lRwq?=
 =?us-ascii?Q?RO4mBfgf38sPDpuVNoOElnQcFZ2lGpT9Ruf1xjCUKJ/FLqhJxAG9l5qoEwoF?=
 =?us-ascii?Q?KwfUdxv1z55insnpYwrkR+D2Ck7Oz9X2pXdiCCt/Me2Q9URoYqpV59KaZ6Fp?=
 =?us-ascii?Q?5Z3zPkNOGVonXVzN3DQeDoxW9E9tksRVmyZtCm4wmsbqlA4r0uNVSHveFp74?=
 =?us-ascii?Q?XpAynZ25AIEscq/fYDe+wcYtTAtxSlYYQDvGMklSvGFxZnld91hdD9XUZN1h?=
 =?us-ascii?Q?xeUPpH2DoIrdQzqLSE5PJaRSQrgB5etH+3Lr6+r2g2zGdzZj+qgT79wDHca4?=
 =?us-ascii?Q?TnjC6Sq6nMbav/UEvs/8z2dQCnJcSmfkS4UhrK3Z4umS4XX4oRWYRC98CzKP?=
 =?us-ascii?Q?d0uNU4ie5ubdcTSnZJG70VaGyPcBSC4eaQw5MpOyBpuvaqBoHSyRQzLgfbmp?=
 =?us-ascii?Q?AXKPi0ZSNLMGPqcHYL/c6eMQNchuClmyuSiiAd7EiVdivWct5TVrJknktIkQ?=
 =?us-ascii?Q?ZZ6FirSHS7DlkHahx+arO8HWqIgOiuAV2vfCfpA7+D/4zjMExOIw2Rc+ao8w?=
 =?us-ascii?Q?KUVsfky2onwNFknzPianvxEQqLs/MRHbtQP/2ue1IpnlnTFbEgGOXoICSIbK?=
 =?us-ascii?Q?iLJAXoO9EgsnPuKooVsHLwritdRRARueMXCmtsyi+ThvIdJkdCCJL0hBT1RI?=
 =?us-ascii?Q?sE2owtPDY41oSDsbpDNZjURlRBdQAli7lizHrWQG82w4GHzn8XDAjXlMRabk?=
 =?us-ascii?Q?xKgN1D4mmatUGY49DlJriliuaNQG1Ko65NAe5l45r1JEgsjtqWiXclzGoMoT?=
 =?us-ascii?Q?CcgvcfTzaW73NfSNQZk3Z3G74E8ktoFxlSKcOzljZh8OG8yj2Uz6L6o3n8gT?=
 =?us-ascii?Q?tvOZx9+61hpLgmxOBxcz7HqndTe4Rq3dFFOyvrjBPW4Gik3cnJF6WDCffOss?=
 =?us-ascii?Q?V+EOWW0asXIWJ73TPxKDVxZBdZZtDzQz1YghMiM3kk7+oWC3znHmslK6a66A?=
 =?us-ascii?Q?GzP/9YriPe7INy4jmmBT7t59EGsuQNbCaKelOwUJS1CZFSApwHVoHKCHuu4L?=
 =?us-ascii?Q?zbZkPjecc1HE+9onKfrgdcM9CvOQwOsXXxT2sOcUro4aNhyNprvyjsl4ySG6?=
 =?us-ascii?Q?CAAVzaV9sz5NuNEAD2boNiD+k2oRN3NOIs01K8rM+MQ7Ar8dDwV+v4zl0or8?=
 =?us-ascii?Q?RTvFXFSAko4cv3dJHQQFEsFFUMGl15S1k/XQg4e5QGUDelHZhW7+9aqfRvLA?=
 =?us-ascii?Q?VunqlKqZtzpc1jgPqq9cnUFvOPp5R6qURpLztIsMchJoBWYpno1Or7QS4wZ1?=
 =?us-ascii?Q?zRJl2q5E468zumkfTn2cad1Nd4MYpzq/7JzJJEtBfael1I3LQcJ8tG4w8uzg?=
 =?us-ascii?Q?ukj/978W3sheOOTKFpybXfgf5sB/aVA99jAqMJSf0iIXFOEGk1OzvG596d1Q?=
 =?us-ascii?Q?OFpMGjsPOt8NhdGvA+zTlEHmlvUM0XzjAElbjUPjW+YT7m53sMR0E293YxmT?=
 =?us-ascii?Q?2IzmdWBNs1P4ekQydBwu08jcNtUfExUUQCVQyZB4XlSoNlPvE44hC/foNtSM?=
 =?us-ascii?Q?kBBYUz/GWATyp0ye9RfbYueGKkT+DUGt2fCmTLV5bhUW4nGC98ntA6LzKmvK?=
 =?us-ascii?Q?1A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1a626ae-2a4b-436c-76e8-08dd0f7c69e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2024 07:15:18.3651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V8HldrobVgv2Kpwzx8A42tN2jcXP/PX0AbGnDaJVQYQqlwLF01AQEC65EcUTG2s/h7xBsMNeOywFJG1gEQRvZEndElKCS09TDG3ikXsjO++KSPxom4i5n358wgd0023S
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5051
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732778128; x=1764314128;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/0Q+bMmdZ1b8MPRdwRE18iSEiVzKaJKnQk7LQCmX+bc=;
 b=IpX7JJ91FSxK1YTvE9zn0dSrBAyWgTWpDX1ed0W3PIEty4ZqM5tNIgbP
 cFBJur014rWzuFpP5x72S3fUjLBo/Ee5kGA/Y8gCCCL/tK8Zh5eCmYKdD
 mDt8HENz1cGVAS2T4OZcBMNSC4ExnkSFYN6g57cCnUTapO2X+5f9zM/Oc
 c31Rc/ceEPgBjBeaefg2isd5+mZbDzEIAJEDRy6F6Sk3OubQSf6xMcAjp
 TfmtNxBPdsHOKOy0ZkdMh7spstcHjIXj7fZfQQ6VyS8gU1eALFj48paJk
 Rzlq/edDvR43fOK3odVEfFsn5BqICbdRuRb406nICQaGxMzekRUoFrfCo
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IpX7JJ91
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net 3/4] ice: Fix ETH56G FC-FEC
 Rx offset value
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
> Sent: 05 November 2024 17:59
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kolacinski, Karol <k=
arol.kolacinski@intel.com>; Kubalewski, Arkadiusz <arkadiusz.kubalewski@int=
el.com>
> Subject: [Intel-wired-lan] [PATCH v4 iwl-net 3/4] ice: Fix ETH56G FC-FEC =
Rx offset value
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> Fix ETH56G FC-FEC incorrect Rx offset value by changing it from -255.96 t=
o -469.26 ns.
>
> Those values are derived from HW spec and reflect internal delays.
> Hex value is a fixed point representation in Q23.9 format.
>
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products"=
)
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_consts.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

