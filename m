Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6F68FDDC7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 06:34:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E3B4423A5;
	Thu,  6 Jun 2024 04:34:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oNGhS9fcUxSf; Thu,  6 Jun 2024 04:34:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE93C42406
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717648494;
	bh=8fOrcoyE2ODKEsRdHEj5r2MOfEtPHpmm/Bgd1VYctHE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t8t/HTvcJLLlizMrEmvLSfHT5MEt3orDsO6A86JFIm7hPvNjlUgbzagwlsp78/+B+
	 IjNW/iwv8XAkvqQStonM5A4liNCmTGVFbXWp9fYIW4FcCEmOwSSCqiXCpGj7nt8nVy
	 Yj0zVi/5G/kLhPgQ7nCq7TQ0sromCoSs+N45mLFnps3Oegw7ZmcwBxNh1QesE9Qbgu
	 wfSWMibpC5MKRhjyxVhkR6iK1peGohAXEBqHVEeyTOHxHz3E6Hpir6phq3cKtbbeMn
	 /buDKsu7KL7s1JmGvgaBNGEkgYwe+htoik4yt8UuHeEFrreki7asGfMqcardUlwylu
	 3xP3zI9Z/7QIw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE93C42406;
	Thu,  6 Jun 2024 04:34:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D0CC01BF255
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 04:34:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCDC7610E0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 04:34:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p0VjE96hP2_w for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 04:34:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BCA3F6088C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCA3F6088C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BCA3F6088C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 04:34:50 +0000 (UTC)
X-CSE-ConnectionGUID: 7nNR3UeeRo2fvil8S/mI1Q==
X-CSE-MsgGUID: lIYEc7dARjq3SQFIJIoucw==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="25692905"
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="25692905"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 21:34:50 -0700
X-CSE-ConnectionGUID: SViuOzJhQvWtvFWPj2SmZA==
X-CSE-MsgGUID: 02lIv9aNSSqdo5hsRa786A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="68982309"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jun 2024 21:34:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 5 Jun 2024 21:34:49 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 5 Jun 2024 21:34:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 5 Jun 2024 21:34:49 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 5 Jun 2024 21:34:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ms1elCBdWVlHZhzcwAvTNK+cP0XZFqh5Hv/zzoC0vf+/NY3sfjdXmixUTQVIYw8lo3SavRqVoGSjyf8aQ/6P0AkwIvclaRAgH0AIUYQ4SJeGuRBWY3AtsvcD1UpIJfiBdaRSEK+j6zxNvUyc0bJ9QqxLxon4FlfnNhEHvQBDbCj2fy+EqjKLDphpeOpdiry1ZpjyEb0yd5WxPcrRK2V4Y9eIOuD6x3p9Llt7uZdKsn8dS6KArCCZ3l+GP2psybq+93qQT9S/PPtlIieb0h3HEcibmvsW4bXz1tMwS/qNZPrKW1Y3k98PqI829lujl0kE9BbQQAZp5d3ReL1Dxgo+/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8fOrcoyE2ODKEsRdHEj5r2MOfEtPHpmm/Bgd1VYctHE=;
 b=fsHl9qjibWN0pti+O5yQJbWfy+54+cdnhS75axh2s5XwqFYetWhkUunKQ2M89mlJnHjg3mITNTvclW5ItRnnO/9WrPZNofa+vQPn6MzHzlu1o4N+B9IeoNs1YXa1DMQFoaOABPm23orQqjHMdHguPM/CYuZ8Qj/05OoBLyDPgwV62TiGAxx2PYOesuqsPcdCAquBsUlGoCPM8Ds5ZnI7NS6SMPvObcgRq7EmM5MCmGbRnZpolxySTXLDWIA/zPozh9EivJuVcmahkFzvddoUGFoCEwPZQqEknNkAM7bSG+MLXRepHM/8Rh4DFckIByr3f4vaK3Wqyp54IxUn770cEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA3PR11MB7463.namprd11.prod.outlook.com (2603:10b6:806:304::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Thu, 6 Jun
 2024 04:34:42 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 04:34:42 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix 200G link speed
 message log
Thread-Index: AQHasrVE12UmSmiHL0KK414CYQVfaLG6L9BQ
Date: Thu, 6 Jun 2024 04:34:42 +0000
Message-ID: <CYYPR11MB842964926E33C0A3A239C331BDFA2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240530170617.837659-1-paul.greenwalt@intel.com>
In-Reply-To: <20240530170617.837659-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA3PR11MB7463:EE_
x-ms-office365-filtering-correlation-id: 72a7d7d4-6560-4572-0d54-08dc85e1fc04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?hpz75B3zSCKP5cuDOCSWuflmGvTwygH9IEuTlTjai06bSQH2Mtouctn16RTH?=
 =?us-ascii?Q?jHiA2GPjeLNmEZvlMU6Y4OeYSQhhR2AOCArGkAJPWj8pyOT7lsAC7KeMECig?=
 =?us-ascii?Q?uHx2O7e816INiL/RgEWzygJ6I9yXE45FDmvP7vKocrz4qCdhdbLWfIEVN5U9?=
 =?us-ascii?Q?mGYLcfrGjXqWwc6PgTWaLrun2m+6rIXBP0U1GsmMt9LLtHjA4f2N/BY1ItS8?=
 =?us-ascii?Q?JweXafZBzs0o6vtN0YoCTo/T9VMUEAVGW4Vu7YEtvlasF73ZoPeh+cYYh2uq?=
 =?us-ascii?Q?WNgj4CrWM9XGP7Y4+fyS0no3c2LG3nC63684SsP6Rqzfz69HdiVAO5yidjaF?=
 =?us-ascii?Q?pLjnxEdhsi7TNSV72S41GntKrPS/pYP7Bkr9T0bP7U3jjUXOeRQuXBMTKEud?=
 =?us-ascii?Q?N5MPUoCWLvxRljxb1R+ek4OU+uXjTKK/xD9vvxsiyvl9uuYjEu+AKzCGz9Zi?=
 =?us-ascii?Q?fP37GH6QQbF13ejefAiQwcfYAaR3U9xiZm9CMQzj1km+LB0ejmLb3TaFOk99?=
 =?us-ascii?Q?ZiIcDn3NjFP3i+cTH0/AWMEtThlwfUfDqwZ/7BpvrgdeF5TwoSurO86UOOKh?=
 =?us-ascii?Q?ePEv94rRzYfLRsETdpLVzycTDwa84GNLviorTo8u/9y5Th5IoXaoiGQUMX4K?=
 =?us-ascii?Q?ZFevkis8qNSz8xpcZmJ1SZwMyy1yb40QRHIjostRIOU1R03WCcs4c13IX+xg?=
 =?us-ascii?Q?sW6HT9Myp4w88QW/Zzx7ndCE+eYTaI2OboXaFtWg3IolUbxQ64tqtsJp6i2F?=
 =?us-ascii?Q?joFLglPfA33ShouNP5LTC0WALp3RVW0CjFSZTPs2SStp+OxdDzG2171C8dQ9?=
 =?us-ascii?Q?hZAcCRl7Bo4Y2GAO63bC24NnrY1oDCRje6Lp5kgzlDhg5sJ/S/I/lhTeuC6B?=
 =?us-ascii?Q?MMIWmOd9zVOFjUPG9j7/gjFpTjExfnXpnHUfl4QwyXKxSO7Hn8WoOxy3i35O?=
 =?us-ascii?Q?MaOVcRtgTtiZLB0oMuXYWTnJYpjXj36PSJhRCpINmHXx7GxMe8NUa1UXYc1q?=
 =?us-ascii?Q?BZgXwgVcG55H7SNsSMyhFYWBn5yQ3aG7jXV3b+FRrXeCWs3gPLQ0UUayNmB5?=
 =?us-ascii?Q?41WNP2NH1RdiNQLewrQn36D7Mmye1PROy4f1Q2frUSCgN9IheeVJPycA48VA?=
 =?us-ascii?Q?apeXyL29J3cCZ2om3LYPgcXsrmZ8c5s9kBecAYWk39Cl/M/l1dHq7J3cCSFe?=
 =?us-ascii?Q?xubh3v5bO9mwYQLPjfEn2ck/3Qxxa+GbnaB/JdFBeXdc+lVIINdf7AddXFln?=
 =?us-ascii?Q?2vaK4X12ykJp3KdN1X8tDdjhgKt8jM6iKr5pTfIg7DeuLOsyb6AXqnDvvv02?=
 =?us-ascii?Q?//md1Ic3KUGSPNaX06UwZcrOQ63cwOkZDU0wB4NVs+tuYqnPZ08tWkIS9lh3?=
 =?us-ascii?Q?xN2+kQU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sqlI2f+x581g0WrocvrR3FI5sGbmm/lz4ZkRAORkwr0uVJYBkhxyD7fMXhIb?=
 =?us-ascii?Q?AsjIm90DswrBE0U7L5ctl60nwUJ7TGzEB1Yh1BIYxhRdUyFX206lhaQxhWNo?=
 =?us-ascii?Q?lRHc0MCB1riLuugWC/XAnHFGsvFAks0ndDG5fXgPCQThJjmEt0paQKxkzGeO?=
 =?us-ascii?Q?ZhZb4Zl0BBAj2txeZ39ppUJliJdZBHcuQnsd/Wst4AKa6UeeiVFuPtGfXjW9?=
 =?us-ascii?Q?SW7PQ9ozQaV5lDFGYFSFa4mZ7IeacxZZGVe9GHtmnDhCBgo6VMVHaXJ7AA50?=
 =?us-ascii?Q?WQDPRarrtiwPcsX0UvTxdLjNoxzMTIw42Gk6h8k8E1ndsQwee4hDN0HQDETA?=
 =?us-ascii?Q?6jC66lkAhbASXX6Im13HANzcC9IvPStvxos3qlTYcF9fZHNdt3kezZyGLHYl?=
 =?us-ascii?Q?QUryZxzhvT8Rkyy9nk0BAoMw2oZ0yrwf5Z4fxOzy0RpM4QpZoIhDhgoqrktp?=
 =?us-ascii?Q?ZMCj/u5vjkYGivHsdnkQkS9oHbmv5Eru+N+w4J67j7mbyT0jiZhy2kl6bOU1?=
 =?us-ascii?Q?RyebynRxP/2w9L+7rOUgMvvRQ/xURbWbZdVI7MnBt7WZMFnhvtI2n9VBODGL?=
 =?us-ascii?Q?rNBpUkmveDS1p9F5kwyc0LXIjt8/zFTI3QHd5ySmPTTyzzvxQHgUJeYb1uLD?=
 =?us-ascii?Q?pptVu124vSW8QHzh4PM8dKbTbC2Ky/9Vkn3fC1Z4BcFI6yEhE151tZ22E5uY?=
 =?us-ascii?Q?qTEneirKyeNQr5bGni/Tq2ZQ140omEqBoedvm0l11P0rgACPM4jXPUR0+4jI?=
 =?us-ascii?Q?sgsPv5WYZUQk5eaOikG8RVS2dutZs+DVvAIhI42OSJLHz4QvlpCTLUIZIfrU?=
 =?us-ascii?Q?O7oYjTvhC+ZXOaVT1WQtHH3ERsYRGuc4Obe6O9G9457onqjuSbNHiGLBdNyH?=
 =?us-ascii?Q?KBMSbDAkQtcbMTiy3yDSds+AM2DoQR47AxBn8vQ9/jdKJh8tFk6p5NkSGuIb?=
 =?us-ascii?Q?+0pVTqr+mLLaKOyfLpkN/CdNuOFRz6mVNn+zZ0Om0hoBEu1MWZ+5Ckd2SKja?=
 =?us-ascii?Q?dUcPlhCleR5/RrA2LXqGL+xtmLPQMuscw4oSFabmHH0+lwa+eRtuFAUNkuol?=
 =?us-ascii?Q?Xvxw3z0WzGs4XKrhuh/3MJMFon/rrND8QlrbCO9DrrYpEmGKLNfLtDkoN/yN?=
 =?us-ascii?Q?W7Q9V5tiDwP+gxguxQmwHkVF8CC/UALqm7B0Ww9GO3oI5eNVZyT8yvQw9WDc?=
 =?us-ascii?Q?ph37YyWLb+spZPs02/vYO74eWYZK13F6qrQ8W6FQSjNynQukbrU1Y8acHzlG?=
 =?us-ascii?Q?ZRIUCtdQ3tpkUTNBP6cr3aPsHFiLhDrkR5S0HNVMWZhT27xEu4IO0zJ+5cNK?=
 =?us-ascii?Q?0dh6f9MUiG9yMPgUxFtynUwayB8Sw/CDO1DsHdMhV65QK3xgsqnmsSr1miRN?=
 =?us-ascii?Q?8EQ2gbM0e0OwuoK92gA8KAk87NXkQR+Py6m3hv9uojjJOMyu3y9lQ/2/nyOn?=
 =?us-ascii?Q?6/bXHbeAqO5F5tqXQDKyKKtBrCDByQ9YQPOnu/Fwfaa4lgovpWPp6jXt0Xct?=
 =?us-ascii?Q?Zka1WurKzZQCFYfuEOgfo36o16x2BI6J5lmY8ViMcrHGEUd3s3yoMOhTLTJ5?=
 =?us-ascii?Q?5BpboI5mOGqD3/yo1ASsyFiHJDzrcRfpjKYRpGMxvqLpfSlFMsu3eVhvkoLI?=
 =?us-ascii?Q?Bw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72a7d7d4-6560-4572-0d54-08dc85e1fc04
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 04:34:42.1761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V6rwItTLAj/LbE/08ynvsd3EENF1Yyw4QzNkK6kB9FVQa/JPRqPmowz/MDBQ2alB93kFu2sXQPxSyMVF2IibdSF342BgQfIMOxmI578K4X5wl1yrsA//e1aS+PGRT5Ma
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7463
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717648491; x=1749184491;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9HuR1RLod+hJYP0Ww/Q6j+u4myUPZIypH/rYFdNgtVg=;
 b=CoIxShUxq/C4ifmE2ZENV9D+H7/K0i7n6wKlvtWbYLciRHLCwjZJLaZw
 SAbp928H3o8Rqx0zULtr2vu6PkxFJ3hpOaIvggs6dh0EdqxP4Hl09S661
 bSVUAgELx++u6VXuCwN5vPUE3BQlv/Ens+f3XDdiWuofsQM5LSe4CzeFM
 4o9V17VnsEjS8k05tn7EwemIwpLKX2HdJDazsbdzl89u+wthS5/iP4BC9
 zlPz6VwxsVKvdQBmK0cSift0NtlAKJILn7Gx/ySARCjjPEPTfaDN2UfFd
 P7qqn1R0p51xWSs5rDiViY3NLH/qO0wcTo1tejY2g7L0c5JZnq8tCJcoy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CoIxShUx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix 200G link speed
 message log
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Greenwalt,
 Paul" <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: Thursday, May 30, 2024 10:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Greenwalt, P=
aul <paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix 200G link speed me=
ssage log
>
> Commit 24407a01e57c ("ice: Add 200G speed/phy type use") added support fo=
r 200G PHY speeds, but did not include 200G link speed message support. As =
a result the driver incorrectly reports Unknown for 200G link speed.
>
> Fix this by adding 200G support to ice_print_link_msg().
>
> Fixes: 24407a01e57c ("ice: Add 200G speed/phy type use")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>  1 file changed, 3 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


