Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DC096ADA0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 03:09:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 436AC80ED0;
	Wed,  4 Sep 2024 01:09:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G8g0vfeQDsVc; Wed,  4 Sep 2024 01:09:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91C4780F3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725412168;
	bh=TaD7xLlRNNOidH5fQnKO6npPtAmIrhFJl/3GjL50mYw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ok9rTdfGjOgoRdyvWok1EPFCCi89wb+TVj0GUAKcHptSwzq7qu6GJtpOBLRY+VFa0
	 DUCNrunP0ClHjtx0IPavpjuRME0aq0uvjqkwdbN1Ityi+tGlttLmclsqJpyJW4Ro2U
	 ZuH0ktB6c5l/BtLR4jgRlUvkS5Kyub0vns+/kG6KkQeL8d/BA+NbMWk+zU4xGglFGG
	 bUquPP+oP6MJDWCxQfAnvGS/xlokrjp710rO66zwwCSrgg4wyDKXQsPtaVtFLUF0lZ
	 qsJlyPFmudNhC7NLCKiLM9z0gMJS/s6ZHuAujMFiq7nsnYGC1NhLolhdoDBGxsT2+h
	 L/L/eSubBIVqg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91C4780F3B;
	Wed,  4 Sep 2024 01:09:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 371651BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 01:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 21CB180F09
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 01:09:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 48qEqssQptz8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 01:09:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E81B580ED0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E81B580ED0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E81B580ED0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 01:09:25 +0000 (UTC)
X-CSE-ConnectionGUID: 6LKwqgTsTX6tMdjSh++zXg==
X-CSE-MsgGUID: 1oo9UuZ7TX6hQC33bmlREA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23921510"
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="23921510"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 18:09:25 -0700
X-CSE-ConnectionGUID: qbAHjBalS1u/03wlUXKCaA==
X-CSE-MsgGUID: +E0fzffdRpqu0cV32ncjlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="65450932"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 18:09:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 18:09:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 18:09:24 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 18:09:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n5DUShM5C/Cb8yzXtgd7WOXfyLM2pBN+EiDfMEuB/z62A7iEkyIFR4XCnj2mwLh5pbtpbqiLOTIWSwlc0yE2cC218ausiVdCOClY6mruTlu1hw+eFxJb/7o7ZHqJ9i7WBR2/Ygyvred8QK2aoJPijlx7wjZ79KF01pVGfH9ImwDTGsVOGfAiobSSpVrDzxj8kgQMdD49Q7FW9SaJ9RQee1wzNai8u2fzcw9h4TJrCfqpiB7i37WZh/XUIyb6fEr1mGKulNRWF9pBmiUrjAqV/hV5lYSPGwCcmhIC6pbpedlhcoeuHRUgCF9NGZvENPIMApPw+5gyGnfbUoFtK8om9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TaD7xLlRNNOidH5fQnKO6npPtAmIrhFJl/3GjL50mYw=;
 b=bEAyLq2qlWUOVVhKIQxXx0k693PFtNIFR7gtp4I3XNdkPAl+i4BzLXL+DUFXVEi+mXlpJ1E6lAZbzbTSI/CajahR1A1R8zZrMpVOP8iAApg6GwX7LkowRa1VnbId7balIcOKXaG9CYRXyeHsUzbqXdjth85O3ggmltp/CA7nc+ukdwoAu9bQNXdVdc/EGpvuWRqTg93LBvC0WpAw5J8sVkq6Eem2thU4gB0wmw5Dk+ZVh+lV7w1l2aAq0qPeTWK0fkp1CSdXC8CC16Grd1A7zy7d0Ok1MuX4sXvlowCnlY97qgp8DIH+I9hVJu7l+eFy/56fmjkydzKTqfFixCPndw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH8PR11MB7022.namprd11.prod.outlook.com (2603:10b6:510:222::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Wed, 4 Sep
 2024 01:09:21 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 01:09:21 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH iwl-net v2] ice: stop calling pci_disable_device() as we
 use pcim
Thread-Index: AQHa+uLM0Hddp8/0o0imCgWSFd7nGrJG1/Nw
Date: Wed, 4 Sep 2024 01:09:21 +0000
Message-ID: <CYYPR11MB84293842410B1FCE0BA5CAD9BD9C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240830134416.26522-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20240830134416.26522-2-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH8PR11MB7022:EE_
x-ms-office365-filtering-correlation-id: d2bc988a-3a10-4625-b5ab-08dccc7e3595
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?NdZ54j/nyfvBEU0QVZEiKg6m05S0wlpwBcQ+hnkSKLXXP9JJl6TDkRPfMLZe?=
 =?us-ascii?Q?fCq8HpUv1g9YecLXGik8n/nwLosMCJGebEMagKvdMcc2Nx84j+iVcy3mMacQ?=
 =?us-ascii?Q?FOLqffUxG56CbMMmY3NzDnOHDO7NCHQF5fofZxajIBGYFZ6+bgkK89qCrMVN?=
 =?us-ascii?Q?Jb9kkc1zs1P8QaSLEs8/1X9H6LqxpFLuppWEFjDN8rv/72qwOyQDvjgxV21r?=
 =?us-ascii?Q?D7mne6+6PmPg1vN8+jGSoPIw+merrRzRB4GhOaNvuiFTUqUoz/KZZx+4eFu6?=
 =?us-ascii?Q?HtR0SANGAp1ckU6eMUwk69NwMlikG+057q+h3IoQtPgWSCE+ztqW4IrAOlsx?=
 =?us-ascii?Q?t0pgJrnRSz5x+0hKbezloI1vhIBAaQUEFFZtyKRYcxax9urSxXPjF4tVCO8c?=
 =?us-ascii?Q?ajtPSPoSMwQaF8E4g0NsXBoG2hRNmNPWajEgBWfntjGmFAZjF0CEeA5AwWbN?=
 =?us-ascii?Q?i/gH56H7CHqWGnMfI8+NknKChk00f7cAqTRbxKweqSoMH9w4IbiQh3OgjWLB?=
 =?us-ascii?Q?Zu2iDdROVKSQSXf/2EPmtfOyQGMYtgGz349RLRx5VnaqMzuGYUV4TqK6tdvn?=
 =?us-ascii?Q?2qYECLHeQIsdidRGiGx1fMmZccWa3G6CHYWgX1b/x67Q5Bgavrb26jrbecnd?=
 =?us-ascii?Q?hXVgpV7nRPxbPB3cgSilpgR0AeUTPOUUj8esdx4RUEEYcx2G/B7wfBZlhzBP?=
 =?us-ascii?Q?AKObEsUNBV+nubvUz6l7G9Rr1Gn06D6YuiQF38/0NLG8IxnZlfXytwBaHcpE?=
 =?us-ascii?Q?n7+VBjvjsa2zAc4J3Y6pjvUoyPDgtwd0m2i0BfM5qtoPlQ62E9fGaL2SRX41?=
 =?us-ascii?Q?6DsKkfFXiYIRBRnAaQH8FzYSnV5TtZDzMnRPzgRsgdNKFEuJeHKJKx/aqm/V?=
 =?us-ascii?Q?PHmCoEJzUgd6R03G8brYDYSK1ep8pICt16fORbb1NicePDJRmQnWnGF0Pima?=
 =?us-ascii?Q?vEfqWv6LneZ/INk6Nxl0EmBZPszhAz2H4lu7q7szL3Ch3r45tH0ytXf5nT/p?=
 =?us-ascii?Q?lQ9Zoa1dAcn4+QWx4RkGXXPBpwkkSs/nIKmxQCTome/EV+SKHRTPZE7bkC8M?=
 =?us-ascii?Q?ePW5y0frl5JaCe1+EtbqEibfaCqIECE9MAkXh0VdnLkzP801ZK5CT91Z1ML+?=
 =?us-ascii?Q?Mpcd0n0QwJti3evlDHskQMxIi4KYwfpeg1jV1u2CG3FLtJlVIZrvgQzEgBRk?=
 =?us-ascii?Q?Mm4y4zyUvNuYZcpXNF/1dJ2r20s8eSgtGW72qzFLPUPzxG8zhIMTAZ4QA4LQ?=
 =?us-ascii?Q?6vTz+Lak+zSR8PhciTYj/7xs2XZGp+IZNPbBISiuxsNu4LnuCeKQNk8211XW?=
 =?us-ascii?Q?EMJJYkerAhOMf5mGfHPjPnsZ6rYrwqwUJaVBoM16bN8SC665YN52SS6tEgjz?=
 =?us-ascii?Q?5BWYnm55xBAkaYLo6xYlNrVCBmUH5mD6+v8fiqqHkGZVShYQKQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vUD/0wPT6cedupJOi+Go4dFRoaZYf3IxntlJczQtEkmUcPHET5JUDSkPuoVr?=
 =?us-ascii?Q?FR+KFQgB32Z/nzTNhcO2qX/XRlGkoJWmmPQAZcAURFwU3R6CS83M7oF9J0ur?=
 =?us-ascii?Q?aymrLiRlaG/rHsREDrE0ho8cQc+xRq1WUQqZr+LxGrpmzUpk8kBdUxf3PU/1?=
 =?us-ascii?Q?mgncs5igJ/gSTV0C2zlXxEQvsF+jvO6dP6s9qvdGL8gsoA+6AIAJUR+MW/4s?=
 =?us-ascii?Q?hwdBsJYB9FE8ZtzR/wplEKmWdJzlsBjIc5qEUdPIAK/8yN3bmklEa5ZUfHbg?=
 =?us-ascii?Q?2/D7UkWI0n6njL1cCbYYdqIr2xKfLleye2PaMWMKO/nPayyZoHxgRgi8aFUC?=
 =?us-ascii?Q?fOM/Rg7Bd5ZVhV2o4rBoZ6szpK/bVzKyFJ+i19X12QfXFirAKWryTs3nFTbG?=
 =?us-ascii?Q?m2+OPSeHQXf4Nzs65CWH6CsuWRyGLGbNXErKly1fGoje2OwvlNHvnQNu87tV?=
 =?us-ascii?Q?DaXo8S4jx2pdfrBeeWCDdAabKRG2oRGYGlbFnfa67mnmuH23pgHW7hKHVyVC?=
 =?us-ascii?Q?HH4arSHymVltPN5qA9MLQVNhd7zvH1DSBlmnzd09xfeRUtGcDfihiF/scBG/?=
 =?us-ascii?Q?/oOHPHxnaNWte/WXKRAUteShil953e876kswyPxJZYVg4w59/ltmWdl+XTUU?=
 =?us-ascii?Q?SyNzqiEOobiZf+gk/eDlpG7ssKsqfJSH3OjJQlOIcKyD9CuGZS8B1E19otU1?=
 =?us-ascii?Q?xcbhqytGLLAMxqMdLCzKf5YipKyB+x2QqGu215Cum16JeHmX0UNyI5YvRsAS?=
 =?us-ascii?Q?5AIiR8CcC6YLjVh6cpv8UkYnhZGdQ6UWyAtOR8Ua3A1JZvybzret6vbhPep6?=
 =?us-ascii?Q?2K/WLwCXIFn0g8IQs/WtyWSvYz1IpQm5vxEbt2vqRUI0jSWzsNeNHPszhG7I?=
 =?us-ascii?Q?oPN2PkMXrvBdUTjJqkmLQUlvyMuthu4H7fsu5ZsfH3MTNSWAF8sKzMS+ierL?=
 =?us-ascii?Q?tINOxKTUTPDzLSstI40AMQbj5SLtwjHhQAH5Q2uRpbDP5IHS2PVtRDNKIXhe?=
 =?us-ascii?Q?AvGEd8t/ELijfztDIpMslOGa5EUdylNyUB1/BRpld4J37rCHjAkKaRSo3f3u?=
 =?us-ascii?Q?f1MARfTdYzolPeb9o/KsalvdZNbD/Gxnm/BA7Ik/e/ARIgdU/q6sE3YXqT/U?=
 =?us-ascii?Q?UTB0slEyKRHPe94Xqp+HEhc7O+riaQby5br0bewRZQ8x4od1gV9kZxKPZze+?=
 =?us-ascii?Q?SzPElYxrw+vqDSWZTpuweVWoDuarqhp2hEFs/EEahLKEUDju+pAB6VZhTyOj?=
 =?us-ascii?Q?UXfeOtIlNhYclnFtEp7CnNVDcicLtQec7OPlJI9MjxBT9xd5chC2Ju2jzSgh?=
 =?us-ascii?Q?NaCoioAZzlRJMwRAEGLvDKH8g6kIqABBhL7EmW7t56tRNDITT6fJqCcPqEpQ?=
 =?us-ascii?Q?0F4MUQELKOnulBXOJ1fNg3bLR40++MllTS42Ms4thwwYr+FsIzQ6vXQoilqO?=
 =?us-ascii?Q?meNTBHpfPbMMWwwg+raZ8hi1TRJD0ZSFYXqyOkpR67j4vMGciTuOXE72tgJ+?=
 =?us-ascii?Q?A/uxpLOjQPDlYBWEHqepI5Zs54xtk8eKPY+dXDwB8P1FkFodNioEZ5XU2TjF?=
 =?us-ascii?Q?aKKmwc0HbeKNPeVYyceExrqdYdlfIskyiJxCJGurIMxsdiXYx9qMXOBEBFgT?=
 =?us-ascii?Q?lA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2bc988a-3a10-4625-b5ab-08dccc7e3595
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 01:09:21.6625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S1T1tkF4XaAXdYAG58gmOvefD5ZwpzDoqKHyEkqqZ5HsXHPn1KB6COFx0BN4xUte2/VBKW+EpGyiSuRUOelwNVyDfqrxBD4pY3fmeosjP03l1J7svWy+rLPtsMWINH/R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7022
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725412166; x=1756948166;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lMILIMN+rOOFqfVBDPNtKZYhiTBJ6usKXblNgE0dIWs=;
 b=NEMyEDwWAYKwjlqA75IvFl8poKg8u7k8lLsTwpR9w8JNrUjCeFtVYuMG
 08BjoU7nIVQEczKCrExrBHDBhBEgC9AwK1HUYjOesdK75/OdO1mpVh2Aw
 +8S2glRDVgJhrGYO6OPHAZbM69msF4CnK1wFZfpZINYOml0mXzbRx0tq9
 auiO8f66dmvl+CEts0FXjE11UZ/gWUvS1HF5Id9OkbobV9NHx6OyE4CXc
 3WF2vPWh3sizcgNzLf/jvUcljVKEn43PgeKdhR+qntymTr60fpkz51IV7
 xPWTDMf+NftO1yiGjOOqtN3lFwDoStazLpgqtwuVg3B3mkdDcee+x7qJp
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NEMyEDwW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: stop calling
 pci_disable_device() as we use pcim
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
Cc: Philipp Stanner <pstanner@redhat.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>=20
> Sent: Friday, August 30, 2024 7:14 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: Pucha, HimasekharX Reddy <himasekharx.reddy.pucha@intel.com>; Kitszel=
, Przemyslaw <przemyslaw.kitszel@intel.com>; Zaremba, Larysa <larysa.zaremb=
a@intel.com>; Philipp Stanner <pstanner@redhat.com>
> Subject: [PATCH iwl-net v2] ice: stop calling pci_disable_device() as we =
use pcim
>
> Our driver uses devres to manage resources, in particular we call pcim_en=
able_device(), what also means we express the intent to get automatic pci_d=
isable_device() call at driver removal. Manual calls to
> pci_disable_device() misuse the API.
>
> Recent commit (see "Fixes" tag) has changed the removal action from condi=
tional (silent ignore of double call to pci_disable_device()) to unconditio=
nal, but able to catch unwanted redundant calls; see cited "Fixes" commit f=
or details.
>
> Since that, unloading the driver yields following warn+splat:
>
> [70633.628490] ice 0000:af:00.7: disabling already-disabled device [70633=
.628512] WARNING: CPU: 52 PID: 33890 at drivers/pci/pci.c:2250 pci_disable_=
device+0xf4/0x100 ...
> [70633.628744]  ? pci_disable_device+0xf4/0x100 [70633.628752]  release_n=
odes+0x4a/0x70 [70633.628759]  devres_release_all+0x8b/0xc0 [70633.628768] =
 device_unbind_cleanup+0xe/0x70 [70633.628774]  device_release_driver_inter=
nal+0x208/0x250
> [70633.628781]  driver_detach+0x47/0x90
> [70633.628786]  bus_remove_driver+0x80/0x100 [70633.628791]  pci_unregist=
er_driver+0x2a/0xb0 [70633.628799]  ice_module_exit+0x11/0x3a [ice]
>
> Note that this is the only Intel ethernet driver that needs such fix.
>
> Fixes: f748a07a0b64 ("PCI: Remove legacy pcim_release()")
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Reviewed-by: Philipp Stanner <pstanner@redhat.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v2: Reworded commit message to make it clear that removal action
>     was there since long ago, Fixes commit just made it (properly)
>    unconditional (Philipp Stanner).
>
> v1:
> https://lore.kernel.org/intel-wired-lan/20240828130403.14145-2-przemyslaw=
.kitszel@intel.com
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 --
>  1 file changed, 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


