Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YOVjKiKPQ2p/bwoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 11:40:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BFB6E251F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 11:40:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=BltQKiBx;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADEEC405B6;
	Tue, 30 Jun 2026 09:40:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dXs-gPkGVoAO; Tue, 30 Jun 2026 09:40:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C10940571
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782812445;
	bh=N6rlO9FMN2JN/cStjPgZdy4wKJAaC3LPIGHp7x0nets=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BltQKiBxFwjrkPu1KekFxW1/Fh4JfzNHLOsfDw8tfYC0K3hvF6mn+WBWH92ulg49m
	 /8zZHB7x/TdU9OvGH6GPgXpUguMroex2K8VJOH02pelevK9LfbZQlZle2hXn3V7iAA
	 89Xe/4lUCIzfL12xTMXtk58CNcE8CmiIQLi/S21eXXDg2/DfX8uBPAK7O5QVF7kDef
	 JtRRJU+axlOskW5Q+GSe+oPEjrJQdElIosFn7rWBlXROHv8swOYAuH1WsgF/I5IR5s
	 uMu4zmaIulBEvJZNF6Y6NPo45n2KW7fzoV/fyIZeffFxXOBCeqLHcIGI+CHDLD+cdN
	 NUrbHk80de5Ww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C10940571;
	Tue, 30 Jun 2026 09:40:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DB64F149
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 09:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CCA8540509
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 09:40:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XRZj7vEg6ZvW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2026 09:40:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0FF5C403EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FF5C403EA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0FF5C403EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 09:40:42 +0000 (UTC)
X-CSE-ConnectionGUID: S4Pl6LwGTAWvwcYH3VsH0A==
X-CSE-MsgGUID: IKvmA4IvSyi2PuyOFKs/Lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="83604693"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="83604693"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:40:42 -0700
X-CSE-ConnectionGUID: wLOCwxQvS3am2HnSOYJdMQ==
X-CSE-MsgGUID: eAxSOl1STBeYxBzwY75ReQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="252355218"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:40:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 02:40:41 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 30 Jun 2026 02:40:41 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.64) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 02:40:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mGUJ88bWrHU2nYv102tlmwoJaNcb4uLCAj313NUN0SeHPcJFu7SXWKLQ+z1O4wS1IVA48SAIy4ALTjOilI1bATszLVbFYdYiQAM6dMpRYN4wKSSHSP5KYyrYSyYUJRb0lcrLB8ylD+jxYzlVESKE1SgVh4MXK9QOIGRB05cZ94tkFkahkszhMA3ZSA6tqt116+NXTjcOTvMo11CIN7DpHra705iYtU/dq0cxSsdiPRyDQcehw2tybNvaYsu1Sf+/EFKD8L6sYLuCALx/VjHcMTk/rXZmpyatkHGhOt8NVJ1BlGSQgW/0/kQvMZvfI9ixFe4E3ZgwH3HWeXrxpjmSkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N6rlO9FMN2JN/cStjPgZdy4wKJAaC3LPIGHp7x0nets=;
 b=KCBQUqssYaK6AlsN2shrlj2O5cNSaYgVa+Mzbp2Lz+zo9GwgNolUB5V2TN1HJvUGTlDZyzfNAGlWHpyHAZHwiB/U4xKfah2rPTZmApPS7ifGCvUHRu54dhNbI6mhCQcT9bm780wMAfjOOf0GZfkmPUU8Bk2mz4dKjz3/inqwEscWmoiaOLHtL4qNtFFiH3lDW7uSdilmNRMvh63km9PBnNh7tj+eluD2xu4RH2cGx2Fb0ywAmoQYNp+h4nvSsm/OpKcFTlBGrGstdjUC4n0SbcnKgDjnB7Ar7HYdoWcrOoB3aGTnGKImoGhBM8jdwwdbA7NmFIF6mAsLJEZ87vc0mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CYYPR11MB8408.namprd11.prod.outlook.com (2603:10b6:930:b9::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 09:40:39 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 09:40:39 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Rongguang Wei <clementwei90@163.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, Rongguang Wei <weirongguang@kylinos.cn>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] ice: use dev_err_probe in
 all appropriate places in ice_probe()
Thread-Index: AQHdCEA93eAcDoz6q06sJ88TbdEQeLZW17ig
Date: Tue, 30 Jun 2026 09:40:38 +0000
Message-ID: <IA3PR11MB8986EA15383743B16BB7B130E5F72@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260630032537.42605-1-clementwei90@163.com>
In-Reply-To: <20260630032537.42605-1-clementwei90@163.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CYYPR11MB8408:EE_
x-ms-office365-filtering-correlation-id: ef369afe-1a26-428c-beb6-08ded68ba507
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|38070700021|6133799003|56012099006|11063799006|22082099003|18002099003;
x-microsoft-antispam-message-info: NOC6NvOnkeQM8WGMCDFmT8DSAmLkjSIxL/Eefn5cHaz6vL361p+zNgMBwzgmfXSNC/Rz4DE9+rGi52S45CN5ZfFy4J0yYBet56IQVEipxmZtcKs4H3LZ0PUnkqYxbAATrK1FcevpMMoGldpCn6F46ws8ZWenLqyDMcuuP27Wqn5+KNGCzHhNQv+kocCdJ5uuwo58xyFmLxe55kcP3bb6oA06KIPUpFZ/UhOxWEkQ8QB+u/n9aVcigPfAKCATD3u/1XXfeEPif5xbc5Ft6tUwVRTFORCpvf0UoUP2tqW64FGgEPV7WZMABN8dLMCZKFoKIMRQ2VHW8GngOVtyAUziByR7NCwomG7Tqg2rw2JLmyQKkaQebW22mv0+KKxBzy8WC46KN8u/km5lMNH/hQZmebQsfV7u0EMZjELV184FE2PrCNxdOsuCB2Ug4W5o/C52FqBlsXOK1nicUGoraKc/JBsBE2mlRWvQLLGtmZhrdYdODFbwOcMrRi2udhPOTNUtCn482xevLfIh8gx/P2qSFZ869orzg3kB619m6cLo0gDieNDFFNxNA+qNMTM6LM/f/dqDkb6IWz/WSfwfuCF5Xs+j8L8XU9a7rJkEj0e1koUlqiENo2A+BkpMdizssSlbfqKn8gzZ0V1eFh+vcfwA8UymoLs8fOGuYyv3r406RjJQWzjClvapyxZy0mUe1It9sKNhzuigPbgH6gOCHIWQXeRuCnMyGDhhV2LQq38ZPIA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(38070700021)(6133799003)(56012099006)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/eygtU2ohS4yb5Olau17OO/d6ItQBlbE+nbCcGAx/ph2IOCRZTel3eBDggv9?=
 =?us-ascii?Q?BJzG428eRSruI2b5Vw+WyUS4n6T0UQqilW3bZpxzS6kafsjWeM2X+rEGb3Hn?=
 =?us-ascii?Q?+ZIoVJbQZUIjAEOVboG+wp1PzjZ0JgtDBEuEaqCPwFxmzSpq+YIqOavHzCJ1?=
 =?us-ascii?Q?jMkKWvTMY1KBLMBot+LcS7F5gF++ysJqTbY/Fwlxpr+dxbrCu06EHRkf6MyO?=
 =?us-ascii?Q?l9QYXy9GTp2zTYK1KhFS7iUDXzvx21ez6UyeviAdUyhZ6g9jxerwCHimEwUg?=
 =?us-ascii?Q?0ZYcjGnaCCTEXw80CdUkzIDWZmw5vxyGGbzWc4yz5dDOqgDxkbtBdUSRTOF7?=
 =?us-ascii?Q?SabY2Q5lJVy9vVYsfAqCpD5Ew3cbXYeIKOxdkqx3H0IcX742N0+o8R5sY9vi?=
 =?us-ascii?Q?D2u69lnLprzxTNbZRM5ktfbWaNWmXZ/sYFtYTJ3YXnG+xOxi3J5ADHvplQ7u?=
 =?us-ascii?Q?npVOq/+o3Vks1vZ44gxpC9BdtO2tplXYgqt2JNkhQFfZeyeGJxzbGAD1g8Vw?=
 =?us-ascii?Q?g4uqZ6Ye+uVHUpMy+5UeOiDRtBJU04CQWvTivjj9Q4/xBGdO8KSBmTEwQOks?=
 =?us-ascii?Q?DcYPxiiVhImwXBCAqr5Kezl7Zz8naxJZKCQLiPC7z/VwoS/lUrAN4tfnukwi?=
 =?us-ascii?Q?NzQXlaW+68FimWmTIIxxvHER7mXFiRoHRKhSKc4LGysPjCIVSzrPbjwHkf7V?=
 =?us-ascii?Q?WlCdNsD+HfvNTorH8L3zmG/LqbvDEwq5L3C7lNz6zrlBcllwhyH6HbSHe2rm?=
 =?us-ascii?Q?fKUSg8zbbgIPfoE6zWnXIIeFp7UHcNNQ6iSsP4Zdz3I4PAAzkdXtnACAvqHC?=
 =?us-ascii?Q?H1MXOGwNdxU84LK9ioD/n3Zo9e9LBApbuu/LKu0HDobRWS8DSrG+Ij6x0kUl?=
 =?us-ascii?Q?Ex53+stipYUzWCHeH1JmTmjNMtdpy4c43soRE2sLZ8lPETf8silvsxK3NY/O?=
 =?us-ascii?Q?ZUZTySngXjaSb9DHzGwN/cJsW0nFkdZUDDp6ZVezbAG2aG1s/1TuQi0U2t8m?=
 =?us-ascii?Q?CruENyOPSbSnBu5g8jdlLXoe/Jj0FnJV/6fdlBUXaQb9KnCZcpKhMptxyLVP?=
 =?us-ascii?Q?fqtvPebQPd8jIGvJQVdb9n0TGH0QJh6tRTi5b135KykfnIjH+UICx5h7jswO?=
 =?us-ascii?Q?JFp7hdOSz4uYOX7LYFmrW3SITSPuSjHhfWlTi1kHVgcnoQtZ4Db6upr9dfbo?=
 =?us-ascii?Q?YXFU0mK1ymRSgoDTy5+C4WcTeMloNZibcInVuVhFc6d61lqFrdxGOppdMjFn?=
 =?us-ascii?Q?7UepveiYby4N6PpT58dra3pt0Yrfl4fwAh/JFtAelHSCkMhefE+TCG7iRCuP?=
 =?us-ascii?Q?Qlpo24gpU9iJ73M2qGsjwfvrxuVpCUlwzASbunLMu2sHE/WqfE6asirzXcnj?=
 =?us-ascii?Q?54HoXgAol3j6zQpyvBblUVDXI1G/mtpbPUhKWKg6WUqk0ufkKAQgFZQCeKwI?=
 =?us-ascii?Q?J2YaJnC1FtIz32AMILD0F4dlqPrDTWBqexL1VEZcKoH/u0yxFgQHTKwlF+sq?=
 =?us-ascii?Q?Je2QghlAd5imFFQOk/RoQB2WPGCW3SLlqcSHtoMiqZ9W5ziTZ6eReSm/eQKC?=
 =?us-ascii?Q?x0fCthWxw7+UlgjUp8yu6vdFV097KUPk5urfCG10IWXG2UojFhIwhxUwzB0h?=
 =?us-ascii?Q?WRaUfyHBVEqZHjKPPB8/8KCylDiwxVVGlTYFQm7lg0mfhUk2nEF3lxJbGGPN?=
 =?us-ascii?Q?5maywzrW/7+QRIUhrEwcQZ8B/ZsN9audczPnDMlLZWIlfIaIUaZOsZfeVGZB?=
 =?us-ascii?Q?bNGnQIZMPyidIAAdPXMe7+FlHqjnRJU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: h0TxBopxzXd9pPzBTmyUNmX/zTnEtbTzcNNPvUch3l/3hKPvkbQH14xWeNG6bX60vGibwp/5DgmHTIgxS/iB9FlAFbwABrF/OdcEIku0QuQvUyHFCFhz2o7gmVjqr6+wyeEQUy78eQvkWb9u0tTK6HyIAZnaYTEkyy2+AVd/wGxbi7PguI3KtgkNsbalnSlFYU9+pUM/hv0e8j6t5zFyZfe/16WjWn5PFeIEYoN0XDMpFqXXFQhEiygCkPH6RWef2u8L8v9Y10alaklBGVyijz0iFeSeJrxwiHQQLbpOCMDCsIR+8T1MsqqPGsB/E/MQV1qfH7VNGztx644vwO3rJA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef369afe-1a26-428c-beb6-08ded68ba507
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2026 09:40:39.0104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ADI63tXyBL/dGjFmip8Ag+UMuDzIeWHzLLxtgG3kQXqCRkspCwy0zIqkkMR+671nC4tZ/zwdZ0R9G7PqZMMQGWg0XS2lJNUN07kYJzsu8Ag=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8408
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782812443; x=1814348443;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M+xYt1k+37DJm+5NITo90J3cW8FsPcLzGnQhUiGDhHo=;
 b=b9eIZwzDaJrrA3ioUwCdZ448f18CH0gtt9hpxkdKmVYPhetgpUNzCWDh
 RnysD2Z0sJe6fbEXoBOHiEpHApXqKp3tCFLoe2GgZCOUAnYPRwB3RyHWF
 sZXwoCy70YsfrrrL2tEiDzna3iNwzsTbcfLVQpMKA2UvUUxynMyqj8UeX
 9a2QYz9LEcxA9fUPpSSPPTvk5nTO0BJKlmqSfqAs2CzcfoMmaP375MMJm
 wMMW7qThA4GClio7D7HAkfDZSSfan37RkgrochV3A6lkzeMcmimZH07q7
 IYwOgvjFDn9xB2itHd6Srx7NWTGot+bQ331vWypFz5ZMCaiREFMDwGeYf
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b9eIZwzD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: use dev_err_probe in
 all appropriate places in ice_probe()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:clementwei90@163.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:weirongguang@kylinos.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[163.com,vger.kernel.org,lists.osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 87BFB6E251F



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Rongguang Wei
> Sent: Tuesday, June 30, 2026 5:26 AM
> To: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> Rongguang Wei <weirongguang@kylinos.cn>
> Subject: [Intel-wired-lan] [PATCH net-next v1] ice: use dev_err_probe
> in all appropriate places in ice_probe()
>=20
> From: Rongguang Wei <weirongguang@kylinos.cn>
>=20
> Use dev_err_probe() can conveniently combines printing an error
> message with returning the errno and also simplify the code.
>=20
I'd recommend to fix the commit message, like:=20

ice: use dev_err_probe() in ice_probe()

dev_err_probe() logs the error and returns the supplied error code, which
allows probe error paths to be written more compactly.

Use dev_err_probe() in ice_probe() for error paths that currently print an
error message and immediately return the same error code. This keeps the
existing error handling semantics while reducing open-coded logging and
return sequences.


With the best regards
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> Signed-off-by: Rongguang Wei <weirongguang@kylinos.cn>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 24 ++++++++--------------
> -
>  1 file changed, 8 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index e2fbe111f849..81959eaec708 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5167,10 +5167,8 @@ ice_probe(struct pci_dev *pdev, const struct
> pci_device_id __always_unused *ent)
>  	struct ice_hw *hw;
>  	int err;
>=20
> -	if (pdev->is_virtfn) {
> -		dev_err(dev, "can't probe a virtual function\n");
> -		return -EINVAL;
> -	}
> +	if (pdev->is_virtfn)
> +		return dev_err_probe(dev, -EINVAL, "can't probe a
> virtual
> +function\n");
>=20
>  	/* when under a kdump kernel initiate a reset before enabling
> the
>  	 * device in order to clear out any pending DMA transactions.
> These @@ -5194,10 +5192,8 @@ ice_probe(struct pci_dev *pdev, const
> struct pci_device_id __always_unused *ent)
>  		return err;
>=20
>  	err =3D pcim_iomap_regions(pdev, BIT(ICE_BAR0),
> dev_driver_string(dev));
> -	if (err) {
> -		dev_err(dev, "BAR0 I/O map error %d\n", err);
> -		return err;
> -	}
> +	if (err)
> +		return dev_err_probe(dev, err, "BAR0 I/O map error
> %d\n", err);
>=20
>  	pf =3D ice_allocate_pf(dev);
>  	if (!pf)
> @@ -5208,10 +5204,8 @@ ice_probe(struct pci_dev *pdev, const struct
> pci_device_id __always_unused *ent)
>=20
>  	/* set up for high or low DMA */
>  	err =3D dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
> -	if (err) {
> -		dev_err(dev, "DMA configuration failed: 0x%x\n", err);
> -		return err;
> -	}
> +	if (err)
> +		return dev_err_probe(dev, err, "DMA configuration
> failed: 0x%x\n",
> +err);
>=20
>  	pci_set_master(pdev);
>  	pf->pdev =3D pdev;
> @@ -5246,10 +5240,8 @@ ice_probe(struct pci_dev *pdev, const struct
> pci_device_id __always_unused *ent)
>  		return ice_probe_recovery_mode(pf);
>=20
>  	err =3D ice_init_hw(hw);
> -	if (err) {
> -		dev_err(dev, "ice_init_hw failed: %d\n", err);
> -		return err;
> -	}
> +	if (err)
> +		return dev_err_probe(dev, err, "ice_init_hw failed:
> %d\n", err);
>=20
>  	ice_init_dev_hw(pf);
>=20
> --
> 2.25.1

