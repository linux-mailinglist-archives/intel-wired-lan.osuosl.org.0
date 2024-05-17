Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7858C818A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 09:38:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F601612B4;
	Fri, 17 May 2024 07:38:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AQYmHfWCO3Bo; Fri, 17 May 2024 07:38:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8025612A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715931503;
	bh=Y9EYjtuJ6yB02L3Jy43WhzeYxPQJ3U3Hbap6DZyjnog=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GBqarmUnM1j0skpbwxN2qIrDlvGIB672DcsdJ4PMWLP/vtSZHX/jfW9DdrNkhduiX
	 IBOV1NPgTMQzENXYylN3op0a8Bly8pcHAdE/n0WArpA4FZsUO/nTVzTFRblBe99Fif
	 pawXr2+aKj6OPxgfM5UVYBMBiwi4SAtGP+5UuSdBJnrA3Z1vRVCEqQlJxbufEsRqFA
	 hLQdYzNvXV4CWEmAn62Is2z37bhkHprFKoTUbj41zzv1JHTMByScFyUbDSaGnDWJFn
	 +2cg0M4MyKxpBk0PIVMcuE9jugyiOZOTiTyiHdtJbZmq2F4C/ZS4JCpQCnbvUyN/wj
	 dItv2TG60uxwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8025612A2;
	Fri, 17 May 2024 07:38:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D70EE1BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:38:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CFCE641ECB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:38:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y7c78nwTjFvb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 07:38:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B8BFE41EC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8BFE41EC4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B8BFE41EC4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:38:20 +0000 (UTC)
X-CSE-ConnectionGUID: bYoC/ffkR6Wd2zC0YsYNXQ==
X-CSE-MsgGUID: GF3g2lGXTiCI6A3HjWtBxw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11961425"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="11961425"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:38:20 -0700
X-CSE-ConnectionGUID: FrwTyF3VTZuBL7G2R4ymjg==
X-CSE-MsgGUID: noNSguOpSA6peoWdJMLD9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31847968"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 00:38:16 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:38:11 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:38:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 00:38:11 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 00:38:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cTb1VQz0NvfiDuP8kMlLWDdFP9Cf1ZUVfAAj8zKnPBglbIWkGVk5rKNQbZjV7UiFcNOyhd1T65fMQWJFXpwH9zCavC7YONi1jXCKJVAGFPXdxpeD38xcsJhGFYfe379mA0czto5f+DaLh6SMwZJCZoCyXRr5AjJMSWQLJ1hQw+frjeIp/1rFmT9lRR0a11yhN38WTacX42cF41Hw5tRnhiyChplFWTh36sQEo0YBTqwLpKGIL7Q7yNrVJlWQ6bep9opnpnLa5HCDem7NIxrP/7kwDuzmMS5WDNso/7KdsUKRAQkFrRr+GlzWP8YY10i6MNLkgvHugvLTXEVDXSLbWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y9EYjtuJ6yB02L3Jy43WhzeYxPQJ3U3Hbap6DZyjnog=;
 b=AL3kBt1zAQyk9GuTZs/BKra+jHTqC9WIgfJ09s07AHu8yGGxy2x4t4tF7ll/5tVClKkHdMuByMPZExvYqKXxzBiT4lvAuLXNCHZt9yDFBnBkdT3RbLlu4GhnJAgIhbNQWzNtdKG6O//EroJqoxHygVrchfAihlPAwGsq3z7E27UHyF1hb2oOKhHnaSNRsqTgldC3oPAQDIzBlVg8YfyQppgnbs3Oo4dEH7uiO1/51CmEcjGOwUOpzY6fmcxmibcqhARxim+9zqVQF815HgDu0Yuc9vymzfMyJ7bYnY3H9ngDB9TxeSgVIiw7FzEwv2yX31CBuHH1Do1EbnpxiBPVtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CY8PR11MB6939.namprd11.prod.outlook.com (2603:10b6:930:59::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Fri, 17 May
 2024 07:38:06 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7544.041; Fri, 17 May 2024
 07:38:06 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 07/12] ice: Introduce
 ETH56G PHY model for E825C products
Thread-Index: AQHalky7VQAtMif2UEyp2x/JyKAY3LGbLQ+Q
Date: Fri, 17 May 2024 07:38:06 +0000
Message-ID: <CYYPR11MB8429776A2EACA1ED59C5F66DBDEE2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240424133542.113933-16-karol.kolacinski@intel.com>
 <20240424133542.113933-22-karol.kolacinski@intel.com>
In-Reply-To: <20240424133542.113933-22-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CY8PR11MB6939:EE_
x-ms-office365-filtering-correlation-id: 1a1b0595-2dc2-453b-c234-08dc76444af1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?KLT7oKCUWuv2ANbZpl/6XGBuamV5ELn6KUdezCgCH3IRPSSzVrEpZQlyxEX6?=
 =?us-ascii?Q?dKS1+BIZqcYbYolvNk1ODYTZdnTxFH4czWUYReJoPIwNkYpB3NnCtej/g9zo?=
 =?us-ascii?Q?hwUvOZUq0Y2wFfhUajeviRfBo3ZYj6wT0YuYCeKSDK3kdQcaZbzalVcvv2g5?=
 =?us-ascii?Q?F/0gZUvXTsPzFRvRwoa68npKHW3App5HwZLaZT3zpxcr4BMraQfuyscL2g7p?=
 =?us-ascii?Q?4kp0j0mmWCXYFesYy2aaRIyRB4tkrsGPE4xU2ZEdNtXWrTX3mdgQbxHB07pz?=
 =?us-ascii?Q?Mcvkwxx016xhh0Azq/6LVbkKNeWfnTIHympl2w8uA9AfDE4vjLwBP4ak+RQ1?=
 =?us-ascii?Q?nvZadQRWXrLYnSDcFlvDLsjvAPZzcXD24jdVTkT3RI0ZtH1UuqkInqPV2Qex?=
 =?us-ascii?Q?M7nKGZ2Ze99bJBmZAedUyxqhXCO8HJxlYwfYIb7I5W2RVCyRT9URFcW99e1P?=
 =?us-ascii?Q?fLxzEBupdTrTMaEcZit6sE/z3+OTVXmaDSXw3jgfJ9YCwP1iqzCXUuD4mojM?=
 =?us-ascii?Q?QILnb8oRnXVonoYS0q8qsdWaQGt+PfDw/msJqhdcaHl8XSa0hfMp4v2Iand3?=
 =?us-ascii?Q?KvIBxCQKFYvGrob4fwkXSpJEWK5h/LtyRNgUDSfIgJydvrJvu2cIxFwRqXJT?=
 =?us-ascii?Q?vB5/MoadQbwwhYamCBVathNLIPFFoSuBrsI30noVqgg+isCdR10kigrBuSqI?=
 =?us-ascii?Q?LmCwFsrtnn6DmKsUjjBspW8gzH5SGuSb1faxj/MQL3C5n/SVrNSwhirdSxq+?=
 =?us-ascii?Q?laFQNNv6PUAvgyFk+TI9E1lGQMDTUykKGyOmVRGg+ycr0Gy2JfAZng3zS02d?=
 =?us-ascii?Q?3IJ5na24ZH5B4e0/I1WV5nF7m/hmzL0n67V1Nrms+zMHtFmTImpbxo+5FVgT?=
 =?us-ascii?Q?KbY43ZHkKnidmJEWD8Lh79YSPfj6z5kFf8CiDyyE43DQJ+Wzx7XCGHVxM1Xq?=
 =?us-ascii?Q?v5MIWWPKJ3CnTGA6mh2E01USUHLg/aYJC11rEuTIWe29BcOtJAredNqPigRz?=
 =?us-ascii?Q?Pe5dHJSQPFHCnNKGw4CRmTAA1/FWtxz7Kno4CeXJmmu4ObKPnj9rNCTcAdcx?=
 =?us-ascii?Q?/ZgV1hm3T+wx4veeIDMPJdqIzmqxIv+0+nBUbOMDqw2OHNmnf+OcQTvMxOfo?=
 =?us-ascii?Q?dyzMr3TK/+vSMNr0FGfj6Pnuu30SEBSijNHY+UR60IvrOgjzcMrbqXuRt/QP?=
 =?us-ascii?Q?+xxTuyCtdxisJw5s7biGFOkmA3Drhjj7aP1uxo7Do9uv2SMyvloJvGFGz5WZ?=
 =?us-ascii?Q?r31h7DgGuOIAyIkeW1Tu0llownVZo1qAkAQwt6go1ZgYK2UOaVzYLr4TWRjT?=
 =?us-ascii?Q?gFUHIt+G1qo32ygh4ijUzRb2kYqMiLEEP1YVcc/ZMNA2iw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+E4k8D+2NQ/LK3HW+ddaV4BAfZJEKaCK5NVWmpHGDRrMP6iJiPisV9xCfARf?=
 =?us-ascii?Q?UjfQrAGpLgMX974FiR01qz28FCXXTI6nHOQGQerf4uN1/PUY1Xw6Sn/sfB7R?=
 =?us-ascii?Q?069Bfo7jeou2BjtR8yD9bMubYWYb0PIajcVaO2lZzSXr6RXOB09ytxKkXvSZ?=
 =?us-ascii?Q?KdoBHNW0aQXdr3RDAOdY4+UP3xjFqcqsxe86BgpZhn+cQVCPTU5MKWDClOxc?=
 =?us-ascii?Q?ogqwiu6Y3jeVwB9mBeDrGCtcTdEmN5IbRUPjoJI4Opn2Fv84MczjRj/4VBO9?=
 =?us-ascii?Q?jFHwaR/Jiv1+IwgBbydj65INXF9qynnw2WoiWTKGe/U6xbGeHRd9yHkgxiEw?=
 =?us-ascii?Q?WkgUvSugRUsI+RlaOz1wumeaC3cIocDtJCy+QCNTEdxkmzFvCEr49JDbFIlK?=
 =?us-ascii?Q?MPVBSSF6Z8+E6FBhga66JzLlZh2TG9wrkygBdjDNZtj9lGIXkomZ3ffosy//?=
 =?us-ascii?Q?BuN0I9xquZUK7yGorhMbgbVAriiNUsfMGR4fUpMg8Ekua7OJEnecC5CUVMkX?=
 =?us-ascii?Q?jg0pDyGRwc/72+afILTXQ3OMsXc3OUNQxYsVCXQNDzNpN/hcSxErkMS4TEuM?=
 =?us-ascii?Q?LHLnGRFAwqFz4UkTd1D2H+90VNNACuvws0JGZUlZFog9im9rPiUjRVvfgx8M?=
 =?us-ascii?Q?G/olT2LrGjuIRv19F+n8r6qGQyKneWY6hXTSErbO2xUVHCWbtIy8r0X88ztw?=
 =?us-ascii?Q?ZZxL3ckwibsEqSdSsZHk/BqM5f98CW+0o7rhnF2zVrJPHGC+MKTNCSeLyVJg?=
 =?us-ascii?Q?iliO3yhSTxOyvKhmwGf7f+oo1bN+k+oD04imonjAytQ8EiSFPvNgtx8nl4Xi?=
 =?us-ascii?Q?N+D/IMaSqQJnIPRXlZagrEZ07I0zkK3LTJv1NkKuVWnE/bvg2RMY3fi76xp4?=
 =?us-ascii?Q?dkQoijvkP1SgnZc73tqtdqkqrN0BxS1K4cBNje0/G8D766vuFI8ooZaJ+WfW?=
 =?us-ascii?Q?bVBuU6xmqPnZCYHmunga/WDnN5VcTZVCSdRIP9Gr9DDMsMOxnYHIG3hjl4Cm?=
 =?us-ascii?Q?Fk1zMlbeT4CrdZeiqUomNugIiJzdacBJZ0gOfctbxEPgJCLb1BbBVNshnkG+?=
 =?us-ascii?Q?gPiXlPGEiCFQ9SR7uLljdt9R1U7xbznNHwggjjQQFCMUc+c29uWjNTK1bYS0?=
 =?us-ascii?Q?Eka/JUGu3eumIAoennKqkeMSE7pvzXUC4Xp0ibIDBISJ2a4e/oi0w8VTKDLF?=
 =?us-ascii?Q?SFzBvTEYKgCAn6DSNfMcZIrIwhUTkN3Tci4AWfiC4PIRfNaIg+J7eRP/Vidb?=
 =?us-ascii?Q?sOqA6RKbfjBaonP/MqduqTCQzzxmr7jvJsbyCmxFA2FA81lzo9Uu8L17mGdH?=
 =?us-ascii?Q?WkCl0lWKpavJxHwJHPV8qzVBUn/xZ0rXcG2yrJ2Jc17IVj6R52CsUe88t6GE?=
 =?us-ascii?Q?+fcO+vRD1Epj64nXbIoYT+/rOgPcsO+wO/6Gd1+e5yn44zMqT4HIdGE5vvXa?=
 =?us-ascii?Q?jHSZ5m5ErBjeE0aJ6y9sYSwDwq17C9cqvD16gwnLhsKEGO187EzTpZK2nJc4?=
 =?us-ascii?Q?ObtSwyHczVSNwRdYnYqugJ8Hg9ZVyKV2jUcknr0yqDsVfpDlTzRiGJl8ZinA?=
 =?us-ascii?Q?a8X4QIXigMyPQGrfsEs/b3V4rp/IpN9w+Ao1SKJU2KyRT8wQHfC70Yl2NDZl?=
 =?us-ascii?Q?4Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a1b0595-2dc2-453b-c234-08dc76444af1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 07:38:06.6402 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pSDYZRqbr8AgDN4VOTxkSbGruv0crcnb1m/TvjKGSVY12PCkoGRg0HHglomVo16F8fW9JUVD0e66i8JwjsZadSYD2TOQJq4dFLSdi8txWnNolwLzufnNa0jI+mtgsPq+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6939
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715931501; x=1747467501;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6PBc25iwjOyvVaiJySQq/p2FGH/Ysk9y0QS11z8qaHQ=;
 b=ekg7FY/0/Z8Az2wFvEK5McvFpBTsI/ROSD4gH8WtmG7o9+Jm7nsEjL3b
 xOQwZlbhCYwVI6SNgLKZsVYG85ScLKemQCg7hx9ZsIiNt3gJBEGXywess
 VoUeEvlWjBFancNxpOniMjy1x6/XD7si2L/MntuESsEQO8k1FaF6Kw76x
 QO6u+KPlf/80SFM5A5tjfukC4hRc2apVxE0X89DWFSSS3iJur31+Nf10F
 J4WjuVKDlnNlM2jrKDEo2KT20ywpJE4oWA6V0k053chUW97n3dWfK82TZ
 EhzsiyPIVvWteOemDKoHnKFEP+tT3OWnv/pOCe26Fwv/rNx6W8Ty6/HKB
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ekg7FY/0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 07/12] ice: Introduce
 ETH56G PHY model for E825C products
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
Cc: Michal Michalik <michal.michalik@intel.com>, "Temerkhanov,
 Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Wednesday, April 24, 2024 7:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Michal Michalik <michal.michalik@intel.com>; Temerkhanov, Sergey <ser=
gey.temerkhanov@intel.com>; netdev@vger.kernel.org; Kubalewski, Arkadiusz <=
arkadiusz.kubalewski@intel.com>; Kolacinski, Karol <karol.kolacinski@intel.=
com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH v10 iwl-next 07/12] ice: Introduce ETH5=
6G PHY model for E825C products
>
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>
> E825C products feature a new PHY model - ETH56G.
>
> Introduces all necessary PHY definitions, functions etc. for ETH56G PHY,
> analogous to E82X and E810 ones with addition of a few HW-specific
> functionalities for ETH56G like one-step timestamping.
>
> It ensures correct PTP initialization and operation for E825C products.
>
> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Co-developed-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V7 -> V8: brought back P_REG_40B_HIGH_S due to 32 bit compatibility issue
> V4 -> V5: - removed inline in function types
>           - removed unnecessary ifdefs
>           - adjusted multiple returns of local vars at the end of functio=
n
> V1 -> V4: Adjusted bitslip calculations
>
>  drivers/net/ethernet/intel/ice/ice_common.c   |   10 +-
>  drivers/net/ethernet/intel/ice/ice_common.h   |    1 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |  101 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |    1 +
>  .../net/ethernet/intel/ice/ice_ptp_consts.h   |  315 +++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 2069 ++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  240 +-
>  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   10 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   20 +-
>  9 files changed, 2613 insertions(+), 154 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

