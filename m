Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5064996B60E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 11:09:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06F388114C;
	Wed,  4 Sep 2024 09:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YZ6YE-MrZVIr; Wed,  4 Sep 2024 09:09:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E2DE81134
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725440967;
	bh=MYhq98hbz6etSwHQaLFE/SGQ5/G5DP83k0ovnnwMA+E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Sppa/UxIq9onS0FWTpxwglX5VstfOvaDOA4oL1yZOgNJ+0Zwj8P/3Xzru3alP9QSF
	 bmu+zZ5LZ4fDo16T/vwycwtkH6qtexqcFjxq36E9VNkl86ugDfePLqGAIWlj0+it1c
	 SbukXDYzh5duxTSSD94Ev7mSsPh/KODg2V/vKppTyNB+TjDyxV0PUJFLeRBxRResi7
	 9NtofJSOwxpoURw3zZmq/W1S0vwJb8H3UCHrnYH/8CzGrACh0ycpNfRpUxxzuEiu/Q
	 eI2ISh1AMp8srENHMDp6s0Ro06Ykju8vfju7lgrE9k9yNqokLBBLshmB4rdiKFUQH8
	 j2Z+om2McATzw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E2DE81134;
	Wed,  4 Sep 2024 09:09:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D7181BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A394402A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ge9RR7WjPlDM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 09:09:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4A77640298
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A77640298
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A77640298
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:23 +0000 (UTC)
X-CSE-ConnectionGUID: iG6HV7xLTrul43PJvSHR9A==
X-CSE-MsgGUID: nD8lcy9RRKy+NAYRDtA7KA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23965090"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="23965090"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:09:23 -0700
X-CSE-ConnectionGUID: 0RX6KyMzS1SvdkmM7/GYzg==
X-CSE-MsgGUID: 9V7AB6mqT5qxCXxM919hyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="88447871"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 02:09:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 02:09:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 02:09:22 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 02:09:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RF7sQcl4ElZRqoH7G62iab97TRkgNKlJHnog0DLNHqneSPIrj8nPFEKweSSECFjjejrH0KQ4l5zMfhx8j2yS+7lBLOPGpZE9w90eWD8vEWfMS9smeS5LiGAvlsvM0vjyL2IgmLIE+AM3HxrKxf6SrU7iClxmkPB3MOJGg8lY6tV3GPWv/23712XpEnDDT3d6+gwhAiPAwSNI/SG60EB5hJSIB049DOb57wFhOKo1Af3O6ych3HO29gfa643c6J89N29OF1Un6ZODkbRF8C8MARJCjoP7XDkOHAJgXmtQyIoR8Q48omV/Bkf1qQSHcGaVzs+EiAcZuykoRSVc+oz07g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MYhq98hbz6etSwHQaLFE/SGQ5/G5DP83k0ovnnwMA+E=;
 b=p9f7CfiVXrWLc9OSYzMnssSNtvoILYuAbVlVcBbYLZ1/Wk68sAFPMKkQXg7W+SQ/2eoiAro2/6bjw1hospAQJznHJo6TBI9/Jzbz8xbXO3AjAb3XAGNs2Bk8QtntdsndmRpqS0tiSynEIJvgvFeTLOghFu6DcVrjRjIDJjIn6AVfbbaREaWPqZO3oIRCsMEYhAQD0wBg6rdOOBeZ+ODIXm2wm2+pmrwoXczKVOF8My1MWj8p/sXDqNBDKNKNqAIGNuQUxLTNY9V9LM5AWHum1Q1RyXw+DrySqLaoKLOHZKgzErRafVuWp2d2OLTPYsAltPSEiFAeVKUaTY2zFP+kcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 09:09:20 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 09:09:20 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 iwl-next 2/7] ice: Add SDPs support
 for E825C
Thread-Index: AQHa+s1OvfaQLE4g1EGgIC9+2aLVTrJHOV9A
Date: Wed, 4 Sep 2024 09:09:20 +0000
Message-ID: <CYYPR11MB8429D54891CE31D312E2A722BD9C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240830111028.1112040-9-karol.kolacinski@intel.com>
 <20240830111028.1112040-11-karol.kolacinski@intel.com>
In-Reply-To: <20240830111028.1112040-11-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: 7cb9623f-52e7-4e0c-bbbe-08dcccc142de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?KTiJovAzNK/7IRVuhkPYD1eTIChPXgW+BaJF8PjP1KYzqCMmyAHhExtsRaxF?=
 =?us-ascii?Q?7ShNNqDyLkEdobEdUGZLGRQfn6h7x7hsdgEB7PlBWNzC5w3iClUVi6xx7q0m?=
 =?us-ascii?Q?tqIOlEY7m4sozijhZA9K1aabl6UBPZ6QyQj7uiVrkb3zvEY1yW+aloiwuI+7?=
 =?us-ascii?Q?JlCvk35unnrH8wpOxyh7+xlB81I0lNk5qKb5QsNfUXlt/0MtM4vWi0bp24Je?=
 =?us-ascii?Q?KgfCQVGuwmo0RcJ839WtXUkAbDdzFnKDVcKpi9TaCTAEdRfm/2xzfX2DyTfm?=
 =?us-ascii?Q?J5U6ymNSX68cXCmfCIVUrDnavFQ0+M00KFrk9Y7hjLdtwMyZdymRuioyTupT?=
 =?us-ascii?Q?9mrrGW87kJdJOtjCgPPzXXkgyndMM/jqDfRBG1b9D58RuSb9mnCuIbT5ZbAW?=
 =?us-ascii?Q?ZgjQ0o28ELJvXQa1DJsiKIFviopgks3SttM2F93NyC1nPKxyYbwSdlTO21Dw?=
 =?us-ascii?Q?UStjNR1GWOci+ymumCZFFcph+dTQQMdB7jxtx/evkCjMsoSEG+Ub9LQM5BIq?=
 =?us-ascii?Q?x6KtIcaHhlXecCLaQKIZ+zlFoa7jnrcxg96ZqhB9jDjUr+JZDrdRy3N+7Xfb?=
 =?us-ascii?Q?eUWhn2k7CuItTKw5KfcGQmRUuDtFsS9p7qTeQk/GI90N5bUrX4DMpv0X1or0?=
 =?us-ascii?Q?SQNy1N/KIuQO8mVUbDVM7zPbp6MLxoiKHXANFLLJ8emHY7hQmVmGgGNcUKeO?=
 =?us-ascii?Q?H9qYO7LZwgn59SoODZ5Hgz1Gb2tfYkpry6orpY/w3Kv7N2hXglA/g8o9ZOay?=
 =?us-ascii?Q?zkdPInlMLVT8O//+n99w64mujq/a9tP4Z6KZK3kd3zdZ9v49dCWN3OWMFNzV?=
 =?us-ascii?Q?nleA4OmvM3lhgrHpFzkuNLP/6qreId8EjPWXTKl63N5e+YLDP0HPrZR71h5h?=
 =?us-ascii?Q?dYHl03n5h1+hSZtHqY33OMWZNv+n1ooP6FOyWivq6Fc89YzkdAnwFQ9eJdyB?=
 =?us-ascii?Q?uoVnrNeGgxwoUjlZho04vzl1dMaf9lga50LuvjKkTUBdZvXgKPZmUAIaHrw6?=
 =?us-ascii?Q?tjUveEbHSlUmvP2WvskIMZw4XkIFlLiZdG9CJwF1cYSCHA2OrNBJLj1zoVV4?=
 =?us-ascii?Q?hjy2hBx2u66QxEMJL5APsiqKmYHmRRmiRGMP8TMo5izw4pZEW4p987kEnrck?=
 =?us-ascii?Q?YKm7nx8boqsceYR/wXXnTTMlsTGFBuce72Bs1isa0L6itdcelPMMgc9UVZYJ?=
 =?us-ascii?Q?4UP8N2bIcdIDMcrL7Mve5dhffhxyvSaRf0A8FfprO7HWhgXkuW1JP9r1pu5S?=
 =?us-ascii?Q?YHMdqzZSPfSvsSkyWJSdXPBzu7mB/qkifwp3dQmMwStOLwyf0jfNBUV4BS1D?=
 =?us-ascii?Q?8JeMYLfLEY6eiaKvc2X7Gkmm0Vi3M6+pOxoCPtsskXwFPLTu+i3NTjJ8aR2l?=
 =?us-ascii?Q?kzaabOoQmxlRfmYYOsBa6T+AnT3FMssVObKftqsFH43zxjl50Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/JqcqGHO7Kq6WJlaQOro0A6TYbuN58Px1erEnpppLIKVpv/koTtyBgyF80lD?=
 =?us-ascii?Q?wvq8e/Zzrvq+dLz10dxf8bIpx4DId1PiMjtw4RNyZ4YyyvMUKaOSj0TjaT8u?=
 =?us-ascii?Q?Xw902qNpP9/ReCRoV2cZUlkT+MqZDmq+ju97U8dY9dioZ+x2BHiyyXIov9pB?=
 =?us-ascii?Q?iqZyyWhxJXaU9GyHMZZhfgDbd/z87GvhKUR8IpIB0JjdXtKhFAD+PjB5jNbQ?=
 =?us-ascii?Q?csHeY4BxcrBZtJaH5al58TMYFyeW9w1f/yK4azkxZnzLTEFdROQg3O8B6U8v?=
 =?us-ascii?Q?mNXkkc3Tpizs4TyRBrF1rcKl80kCpgDlAeJZUELX8gd/gqYVvvTOlZvw7YRM?=
 =?us-ascii?Q?faJup1ynqjAjjfeU4HBFbuMKj7VjrvPa3aMbaDYHF1rYTnHXHtXD4coDbz4h?=
 =?us-ascii?Q?msHyflhg6ent5F5p5dcYdTMmB/X+lp1tVEJCa5Vc8XF4esk8/LMTCttvJ4TQ?=
 =?us-ascii?Q?rKWsrH4CU7Afa9rh7YZXaqvJMB0Rb7ow1M3EjCj8+qDGpdsWMFPQbvtjXj7z?=
 =?us-ascii?Q?oSC+1GvtbM4S/RhI/q2iLS3AhI0oEBsN10MBPRANQv0e2FwFb2Nm8gdtOJ4r?=
 =?us-ascii?Q?pnUMpSG2TfHVb1u2bZ0hI6yzs3RnkxTWZtzkycMWIQlFwrF6UIrukd+WYf0a?=
 =?us-ascii?Q?gpZlFxzYdUGwKPHL0EZpLitRRIGlYciQ0im6bpAe8VEfAem+cS6SX/TgnjL9?=
 =?us-ascii?Q?KKQPuOUYKIqmm/ARCYFl6vW36fwJEXSRPsH6hleZCIyaxKwFDXl9ByWiQVMZ?=
 =?us-ascii?Q?IXW2s5x9Mxp6De3saKNWNmyMNH5KVVHsfXSt7/9GcGAsFi20ccMfpYwy2eIx?=
 =?us-ascii?Q?hkKTtiD2Pghb993zHdcexDwvlB9t4Z/yVKfWZedHh4q0PqVvV+o2P9Pwf6N6?=
 =?us-ascii?Q?elhz+CgcMVohsGEFPADYqQf71s59tv9J8iWH9y4BkhudHW4Fq3ruPfkOn3+S?=
 =?us-ascii?Q?Zra3wJKnfeSS6ggJwwMW10FZMk+4nhM4MgJJ55RY3AqWr4Wjt6OdBMTJNH2h?=
 =?us-ascii?Q?c+gY138Ne4b7rtDASRKHte17Fp14FAmEkCgO08d9/TDIG4ku/nIqliQ/dD7s?=
 =?us-ascii?Q?9Z6UArLWgUQeuIQzqQjLgmmSEgzaYTBCWSwh82CTE87oO0D9Uv9UiGTlgZ0C?=
 =?us-ascii?Q?7EnwPYF6K3mlhIg19Ahc+Z7V1VAjXWe2hTHabKmAoEc3PMLX8HpOCOmFXWpb?=
 =?us-ascii?Q?KS9NaPoDp7/A7GN5RzNJgQrP/4PbHONszLi+nOLNetQ+HRqhMqISOgK/YBDG?=
 =?us-ascii?Q?mSTRpy4eGc05rw+litIx23SRw0iXi5ZCv6ZWU2Iyk33nPbw2H74CRsedoMQS?=
 =?us-ascii?Q?fLdx30sD165IMVpZjVrMgs+1Aj3HUCz9b51EAFrAaXwHN3r7GJkux1A2vKtZ?=
 =?us-ascii?Q?T2L5Oz5dEgnkKRryrT584P1xZaOc68kK9YIJGovkWcgaZM/D7/YLMk/xsMWq?=
 =?us-ascii?Q?QGBA2vQv6EPjs0xFNUfcKnp1uTpdyn3Ib5DM0Z2+ln2j4OcY0mkKCnDPyKCC?=
 =?us-ascii?Q?+Gn+TmRqu1INL5GMFkAxch9o9WF+eErC1mW+p89G8Vs34OHenSwfEW2/8efm?=
 =?us-ascii?Q?jnjPgK0SMVQ8q9AdAZaVFAO0bYOCaKDOHQExmUcBa3ZsTh9qaN32ScVlW6U+?=
 =?us-ascii?Q?Qw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cb9623f-52e7-4e0c-bbbe-08dcccc142de
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 09:09:20.1966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +qWkJmAN5uQkUKbYLaq2RNyZ5Xl8hhT4vYyo3BALzKBZ5TmSsovPOADBXq9S5Us4W+FflhGXd6GYplFEPFmkbRPrSxWGpJb9dnZF3RXgwqIWCy2NKQKZ2Lqj0ztJqLJv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725440963; x=1756976963;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Nzqe+uf9cRzINPs2eiZByfiEd+HbnpgTjG6kbxRjXtk=;
 b=gveAGmiS2k8KSeUOHGkJzUPxeWhYU75ZJdjEfROHFIly7nxLa0axkg+1
 ASCV67fTRbLhnlWXXz/vLxCj6f6RQk3PGhKzmtTkxzswF4QHROaf8E2vN
 II9lywUdGSnnGTU2Y85Vs75T4ob3B5w70GU48vOTuHhcVUjOpLxbu0Jvp
 cLj8HJi9FERVT87ZapLfJv4WJJAG4mQJ+aZTVQjMh2xTVLrk2UpEqyFrm
 Qz/7PxdSTlz+uRYvGh7EJ1FUST9RIhDqGTn/Pv7yVR3LFfnUHVOXigpkT
 K/50WAxJvumsemJw4WY46CWQQPaEYr2pCFGF5zSOUoWx6p628dPIdDaia
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gveAGmiS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 2/7] ice: Add SDPs support
 for E825C
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Friday, August 30, 2024 4:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony =
L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Kitszel, P=
rzemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v4 iwl-next 2/7] ice: Add SDPs support =
for E825C
>
> Add support of PTP SDPs (Software Definable Pins) for E825C products.
>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> V1 -> V2: Removed redundant n_pins assignment and enable and verify move
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


