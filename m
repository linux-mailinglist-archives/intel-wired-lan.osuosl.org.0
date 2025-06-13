Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C225AD84D9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 09:50:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD224405FA;
	Fri, 13 Jun 2025 07:50:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9z_5cDlRFfhi; Fri, 13 Jun 2025 07:50:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 003CC40622
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749801019;
	bh=3CT8cu1fFcnxUjcHyaGmTWkQkgyeZMjv6AyB5VgJCsU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=51UnySZrTXPpLLE85JrwcMS9kHCcVZ4JjnvwAS2zcshhUY4dky+dCPQ8dEXuA1S8a
	 Zypj5O7KeqySpvWDyptmUMkR8CZFNJR1Dk1uUvPKbnn7kSMrcUMIn5BT4K7/m2xM4c
	 PNrMlxJLCNkMUMLUbt8fcVh3KiW/XQXoENbcQtWihVoGq21BISCe7BAfFvroKCeNIO
	 RZJpliBbZVqN0SCWHgPC44knXMTOicQqLE4t5b5P+rz18M5xdFAV6Eak5VbiuXubQW
	 CNx7kruQX+rnqF2mzulllLIj1jbRgMyZW7qVb3gArxehfTcOfJxVHfqMXJiFhGbEI3
	 epddkhcmocYZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 003CC40622;
	Fri, 13 Jun 2025 07:50:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B92CA1BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:50:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F57B60A77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:50:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NOeiuplv2Gqi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 07:50:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E2EA760A6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2EA760A6A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E2EA760A6A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:50:16 +0000 (UTC)
X-CSE-ConnectionGUID: 9PsgNtMQSrqOPMGOt4tcCw==
X-CSE-MsgGUID: nTDZR990RgKUGOSBvdhMUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51123106"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="51123106"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 00:50:16 -0700
X-CSE-ConnectionGUID: Sc6EeZQ2QLWQ7261ShQ1Wg==
X-CSE-MsgGUID: bYNXLYnXRNqtmmsXEB2aKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="148314741"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 00:50:15 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 00:50:15 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 13 Jun 2025 00:50:15 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.73) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 00:50:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hw/MzTzgT8HIhyAqpaezfGHB6dLIgIyt3YJ4HBKlK5DTFhKxRqAgXiXqHpvxoZKENCQ88bQTtrS2lqjFabFiJFqvKYnNLEeWRoljmo7ACu5cuWbZovq2qC6RVg0pBGtuolD1YqiveQKunWc9eU/Q/PGEwqf6I0U5eh8nm0NWd2QhLygiSiTeVwDT9TCT4WSjWETgybB1lsM2Qp4oHK62AM7xmXbrmaG2rFTPkLDjnGSvoGpMliNfXvVUfO8e6zKBTIZhbhF0843Vxqorxr5lgXzVbiow8IBdZC7sGX+VH/ilSC4AiGIxhFY1c3l4pX9ehMxdT3s2H3pkeBhIhOHSGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3CT8cu1fFcnxUjcHyaGmTWkQkgyeZMjv6AyB5VgJCsU=;
 b=sGaA9mmXYwB0C00wfujM0Sjq0hbp2SfY6Uc6389oIKFMkunc4+eVCA7NYkqxB4rb3Ab1L72JC82ov2BzI/f/JsrAmrQuwhyQjyHscmSi+pRaJ8nkHsbYNveIw0b4kWAxl4Z4jfpVlKgjHoHBtz+kG3ebAP6sTBOsr1lcSF/847ymzHvXdL2OLutGZd5v3fNPZnWXSx2kDh2ds0fug/wJuE0X+jedlzehYGuFk/6TtOog2cAZjzRDoQvO0jd3gkx/Enyrfuk/Ls2z0CImZkHVfTz1ELV8k/oxis45N446XlFj4TqxYeDBjvZaTEo3bPGbCBe8FNOWfn8PKjkrDnZegg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF691668CDD.namprd11.prod.outlook.com (2603:10b6:f:fc02::2a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Fri, 13 Jun
 2025 07:49:59 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%7]) with mapi id 15.20.8769.022; Fri, 13 Jun 2025
 07:49:59 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "horms@kernel.org"
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 7/7] eth: iavf: migrate to new
 RXFH callbacks
Thread-Index: AQHb2/7MIZeNVf0mdk2g0Snu6CN7e7QAt4Hg
Date: Fri, 13 Jun 2025 07:49:59 +0000
Message-ID: <IA3PR11MB8986AAF1ADDD1849D28B0A0BE577A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250613010111.3548291-1-kuba@kernel.org>
 <20250613010111.3548291-8-kuba@kernel.org>
In-Reply-To: <20250613010111.3548291-8-kuba@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF691668CDD:EE_
x-ms-office365-filtering-correlation-id: 628d1d1e-3f31-4a55-85e3-08ddaa4ee5ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?yb7KJg0J2rQ5y/gyrnBWMC92pQGK7WN1/uxQrd6VhtmYOZbd9LoSqN3FbuA1?=
 =?us-ascii?Q?XWGD/eb6hagLpc1qHn3CEjF8VJ7qHAYPtsYB8yhN/wbv+aTgi7utTxGsKlnw?=
 =?us-ascii?Q?rygZyjs4aGKs/IyqylKT7xQzdqTj5eenYGX8EvpyEq1NaZBuFXMP+wLNx5G9?=
 =?us-ascii?Q?XnOOCsFvJu5dS7O6XCUh/6o+mG64shIZnRLJQUyQNGO3ZAM44uKVJKXMY6iq?=
 =?us-ascii?Q?UbIf1c4koie0nRSK4gkbsc+538WS3QLdN815w/a4MnnElUasGM3r9SNr6HBU?=
 =?us-ascii?Q?pOhPdATBVD76PpyENXYAu/WT4GdvZARJBAyXu6maWZrFCDUdYAbJ7gzW0oFd?=
 =?us-ascii?Q?tQLT2tNqsDZlmcqeXCP7vK0FZWe/Ux9nendBixsk52Firo34rXoZXGsuRtnm?=
 =?us-ascii?Q?6LHeZqgjRTgQ8iU6c//mkECE92ISP5FC4fxFS1JtAbrrc3Mp7FF3RIzYnZqR?=
 =?us-ascii?Q?0vg/lRpQNPmQuCVGHiEDPOykmR5aZzlySfA5ly6eJEEw2to10PDBr8j43X1+?=
 =?us-ascii?Q?uoNKhZzDoLP3xPQMyU66gHgukuQV/fJcY4o5qcum8SLfk1vYZ8rJkT5Arnb+?=
 =?us-ascii?Q?A1IYoQr7sI0wV4tDwYS9F4xXTwXOUwRFHitV1xA1g7eNjuXo1GchjqnTKBbr?=
 =?us-ascii?Q?rYw+bptLKQch0X+ARC0nG835SSw/AQvtu6pH3axiV0MRCA2FSPGVNuPMru+W?=
 =?us-ascii?Q?6bc3lszKOuSaqO87A1FQepihiroORKBO5XIEnGKqZEc78HzeWBvDfUqQV7ks?=
 =?us-ascii?Q?yOZ/lLRNlW+AK4DemEK/i5MyodgDY2JDTWUnbFp18tuMM+o3nC1Uh+Nw60Bv?=
 =?us-ascii?Q?ohIzT+XqdzPyzxogMGYc4clsf0GN5EKnaqObxZ3iRImjR2BLFGL3jXjn+DNf?=
 =?us-ascii?Q?TmMeXWiemrdq4iiC/UqQxQ4Ic5YwtbKWSUGLgGglZb+tzrZtA+7oBu4rMcj4?=
 =?us-ascii?Q?ZaIgOeGlZMZgmHPbHlDaGNukth2vBc5P0tNyAjDEX9KeOMSlcAbRmj5pcl/g?=
 =?us-ascii?Q?1qV+dFMff8nz4b7x426tnCxzg4Hnzs8lrICDatFqXAOthtysn7aWQNCK5yvU?=
 =?us-ascii?Q?qUqEg8ZUl7RH26/Yea+JxQg/xoilnWfbF5FNpuv/ZTAdInHL9duehAqUmGMG?=
 =?us-ascii?Q?yitQQcD7VAKx1q8TW513l1U0tUSl1AZc22HC/jnL5oUZtZq/5TMKEA5dV/2/?=
 =?us-ascii?Q?UsqhrNDPTBQsTK6h1lkF3HxwckgTfEGo2EKc0LAzHGsfp8PsRpMvgZh6eEcv?=
 =?us-ascii?Q?L5gKlqOynD/HxRFvLoE0ABe8abmkzr94ZcNFHc0XuM4ZeJEqu1Ni2vTopP2K?=
 =?us-ascii?Q?UEc41Pk5mdN5QRmc0U0CeeaJzqH6FQgKbWP5PiJvf3N1Wloag91wXXCoNIBN?=
 =?us-ascii?Q?eO/ikxHy00aVqi+4Qc7oe7S395YrPsnRLbaN5z2JtaLVadZMaziPLWV1l/W1?=
 =?us-ascii?Q?B4dhpCSGWaIaBy1rb6Xc2MAGsj510gOaxF9ZF/yyFp7F/Gn2F64nwA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3ifRfK3Iu2WKgxIZho42bLHVGCVsJQhjHi+u9r+gFeE3A/yGxFVZ9NgY4iFT?=
 =?us-ascii?Q?kcFo8kuKVxrBRAYcbm7T7vEO1b0U4++cRdtXHdg5uXntnD2XS3Uov0tEdboG?=
 =?us-ascii?Q?WnRYaDWZmCsYrQ0cSzG7nWTxgm6zUsHMN9SwNN8xCK2bFfD194eZORIeuIzq?=
 =?us-ascii?Q?kOBgxoEOFi+Jg7jxFEfLjYXo0HYxhWh0mIrn9KZhcQpOr8jNvlOW86iLL6Sx?=
 =?us-ascii?Q?cV4PAjHx6xuD7D+SPTsFkK6f3SUVadujX4C54kIRwuRFQYKTFBK2OAkCP97V?=
 =?us-ascii?Q?dJtK4UzdsQFTcmb9DFq1x9sD6a7q5HUbtSNU18q6H5/gGcK1mKnE93OjP5Fg?=
 =?us-ascii?Q?oTVTRl8jJSDYx/N+0ys92GtGljVKPWMcYQcMvuRRp6OOaTRn/5CAn8OEMQyU?=
 =?us-ascii?Q?1QVO1OBmTDa1/icCNjTOzVk6ajeV94P0gzCfOzyamAnn5PUgnMkZPFq+bzWx?=
 =?us-ascii?Q?mxd7+GDletlb0lIRqA6VZdIGM4r/QPEtFT7qcTN0HIg+ag9LZ2NU5hQDjxat?=
 =?us-ascii?Q?4qofdsVASQDS6kxRnVUAAct1XRDQuBQtaO78Qk3a6Gl0q9rDAwlcmiuc/I9e?=
 =?us-ascii?Q?LLzGXDTabv1mXSrcrPQR6jU80OfcTFrdQ4L3YfJMU+n9XJZUFNgpm7ciBs1Q?=
 =?us-ascii?Q?3khUJG8+tLgwAwoT57TwHOkIzFfXz9fJ4uhJRlTlpUqHsUU2LWo8X0EfzeTk?=
 =?us-ascii?Q?ldvHnP7bsKLmxBtcrx5fxWurCeRRkQDo3HFPzj5z0gsWwYHT4/M8rEkRcj5k?=
 =?us-ascii?Q?2HGbQk/qm4zCtzp/65Nu669uxmPtBZRYWPNB+Kwhh1y+wgI4TVWy5MQ2zaR0?=
 =?us-ascii?Q?q4hUT+age64RnH3rk3syf5gWYotQHAivEKn76r3g5A/Om7v0HCkCpeonzcYc?=
 =?us-ascii?Q?HY6XRbg4FVw8/Q0G1p9VGQT41BYDJQqdkoGr84o67Z/nLEeijfUeixQySlOC?=
 =?us-ascii?Q?oLJAb+UPF2B0jMDrzI3YLmLf66iN25SaVoXR5JSq+AwnvocL5TKfeeOMSU+D?=
 =?us-ascii?Q?nz2GYoSNTqnDJQx69L2JaLmZBw3U438mqb4Tkg42qmFAZIoaKUSD+TdayFq1?=
 =?us-ascii?Q?HjywEJfsVLvAewA8Zoo3NTQPn/f4cgpHCxdTqD719mKF0jHQ9fvRlkFbAwmM?=
 =?us-ascii?Q?I/VIGt1krR+qlhBLAdurgUkW+AfIo00KKakmeH1FDxPKmMp+/+J9XD1XGROu?=
 =?us-ascii?Q?UcqnQCAxGZ3MpTN64ybOQLASFZIxXYlXVJQPhV0FYHh3cDA1EubzjoIQ+vJF?=
 =?us-ascii?Q?Wa+OsU5OJEfeSfHDlfcTZNKxQvSblezAMgOUoffA2CFmo76dyFAfmTvB2h9w?=
 =?us-ascii?Q?YkaDZ8Gs+KIlM67ikilUUmwqi+k3P+9RxhTe0kS7g0fS7xElpEB/N14l9BTL?=
 =?us-ascii?Q?DdoKGgyb3AvUsSJdOx8ykWz7YvvIdTRRWa6aPS38I5HIBATStvm3/6MSmzeT?=
 =?us-ascii?Q?rpsLShNAerxHc0Id6QhgCpyx97YwxiFuvZwBeOHI5gwuzuUnehjRk7bak74a?=
 =?us-ascii?Q?s/9WjRf7g4qdNSNQTJaFBS2KNBXEDpSr8POtqZxrlL7Ne05IkyDe/fahCinr?=
 =?us-ascii?Q?Cpy3ecBdXBMMJgo2bWx+gJ4Vu7UDqp/BXocJ33xSHdSuJA9MOCcnml1FrGdM?=
 =?us-ascii?Q?yA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 628d1d1e-3f31-4a55-85e3-08ddaa4ee5ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2025 07:49:59.7899 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dOWRLcx55udQEydEppkPg5FgfVt51aWxjyYyfGTk4Bplx+LmKRA95ySntkZXKd6o8YWVe+48LAjMMjeqCmxy2y8Pndj1IYZDkowYWzCXzzM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF691668CDD
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749801016; x=1781337016;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0Q2rH7ir5wwKdQWJMvz8I6E5OWwdN1NXy9rC7q49rA0=;
 b=TEOBlcnxfqFMv5XKRU9Q85R9bbqu+7/xkIp39WEXu5SqQshc+27bNHfX
 c6U6yDqyNjxp073phHczrqJQigIWcg5xiX5lQyc1QP/MEuV6/vaaALk0d
 Nb+OIODMLmsyFAOfYgWHgoolz0thCWqOp3Fh1xe7p92WqvfI66p/4EX8c
 y8E4A+/Hy0A5i1yMF2Lcv3OhTsr+gR6+kT6jSA6PdFhb4kDI1MrxGzDvS
 oqcMo+S6Opf7hRqLkLgtBBvCz+5m/yAz65kQm4Isbsb3GtSVwqcXv+5G4
 IOxC9hLUb/o9gD4i5F9SOMNbOiEzw5HBCCdpECCu8Eq3iLp20qdDF0fz/
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TEOBlcnx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 7/7] eth: iavf: migrate to
 new RXFH callbacks
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jakub Kicinski
> Sent: Friday, June 13, 2025 3:01 AM
> To: davem@davemloft.net
> Cc: netdev@vger.kernel.org; edumazet@google.com; pabeni@redhat.com;
> andrew+netdev@lunn.ch; horms@kernel.org; intel-wired-
> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; michal.swiatkowski@linux.intel.com; Jakub
> Kicinski <kuba@kernel.org>
> Subject: [Intel-wired-lan] [PATCH net-next 7/7] eth: iavf: migrate to
> new RXFH callbacks
>=20
> Migrate to new callbacks added by commit 9bb00786fc61 ("net: ethtool:
> add dedicated callbacks for getting and setting rxfh fields").
>=20
> I'm deleting all the boilerplate kdoc from the affected functions.
> It is somewhere between pointless and incorrect, just a burden for
> people refactoring the code.
>=20
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 52 ++++--------------
> -
>  1 file changed, 11 insertions(+), 41 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 2b2b315205b5..05d72be3fe80 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -1307,14 +1307,7 @@ static int iavf_del_fdir_ethtool(struct
> iavf_adapter *adapter, struct ethtool_rx
>  	return iavf_fdir_del_fltr(adapter, false, fsp->location);  }
>=20
> -/**
> - * iavf_adv_rss_parse_hdrs - parses headers from RSS hash input
> - * @cmd: ethtool rxnfc command
> - *
> - * This function parses the rxnfc command and returns intended
> - * header types for RSS configuration
> - */
> -static u32 iavf_adv_rss_parse_hdrs(struct ethtool_rxnfc *cmd)
> +static u32 iavf_adv_rss_parse_hdrs(const struct ethtool_rxfh_fields
> +*cmd)
>  {
>  	u32 hdrs =3D IAVF_ADV_RSS_FLOW_SEG_HDR_NONE;
>=20
> @@ -1350,15 +1343,8 @@ static u32 iavf_adv_rss_parse_hdrs(struct
> ethtool_rxnfc *cmd)
>  	return hdrs;
>  }
>=20
> -/**
> - * iavf_adv_rss_parse_hash_flds - parses hash fields from RSS hash
> input
> - * @cmd: ethtool rxnfc command
> - * @symm: true if Symmetric Topelitz is set
> - *
> - * This function parses the rxnfc command and returns intended hash
> fields for
> - * RSS configuration
> - */
> -static u64 iavf_adv_rss_parse_hash_flds(struct ethtool_rxnfc *cmd,
> bool symm)
> +static u64
> +iavf_adv_rss_parse_hash_flds(const struct ethtool_rxfh_fields *cmd,
> +bool symm)
>  {
>  	u64 hfld =3D IAVF_ADV_RSS_HASH_INVALID;
>=20
> @@ -1416,17 +1402,12 @@ static u64 iavf_adv_rss_parse_hash_flds(struct
> ethtool_rxnfc *cmd, bool symm)
>  	return hfld;
>  }
>=20
> -/**
> - * iavf_set_adv_rss_hash_opt - Enable/Disable flow types for RSS hash
> - * @adapter: pointer to the VF adapter structure
> - * @cmd: ethtool rxnfc command
> - *
> - * Returns Success if the flow input set is supported.
> - */
>  static int
> -iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
> -			  struct ethtool_rxnfc *cmd)
> +iavf_set_rxfh_fields(struct net_device *netdev,
> +		     const struct ethtool_rxfh_fields *cmd,
> +		     struct netlink_ext_ack *extack)
>  {
> +	struct iavf_adapter *adapter =3D netdev_priv(netdev);
>  	struct iavf_adv_rss *rss_old, *rss_new;
>  	bool rss_new_add =3D false;
>  	bool symm =3D false;
> @@ -1493,17 +1474,10 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter
> *adapter,
>  	return err;
>  }
>=20
> -/**
> - * iavf_get_adv_rss_hash_opt - Retrieve hash fields for a given flow-
> type
> - * @adapter: pointer to the VF adapter structure
> - * @cmd: ethtool rxnfc command
> - *
> - * Returns Success if the flow input set is supported.
> - */
>  static int
> -iavf_get_adv_rss_hash_opt(struct iavf_adapter *adapter,
> -			  struct ethtool_rxnfc *cmd)
> +iavf_get_rxfh_fields(struct net_device *netdev, struct
> +ethtool_rxfh_fields *cmd)
>  {
> +	struct iavf_adapter *adapter =3D netdev_priv(netdev);
>  	struct iavf_adv_rss *rss;
>  	u64 hash_flds;
>  	u32 hdrs;
> @@ -1568,9 +1542,6 @@ static int iavf_set_rxnfc(struct net_device
> *netdev, struct ethtool_rxnfc *cmd)
>  	case ETHTOOL_SRXCLSRLDEL:
>  		ret =3D iavf_del_fdir_ethtool(adapter, cmd);
>  		break;
> -	case ETHTOOL_SRXFH:
> -		ret =3D iavf_set_adv_rss_hash_opt(adapter, cmd);
> -		break;
>  	default:
>  		break;
>  	}
> @@ -1612,9 +1583,6 @@ static int iavf_get_rxnfc(struct net_device
> *netdev, struct ethtool_rxnfc *cmd,
>  	case ETHTOOL_GRXCLSRLALL:
>  		ret =3D iavf_get_fdir_fltr_ids(adapter, cmd, (u32
> *)rule_locs);
>  		break;
> -	case ETHTOOL_GRXFH:
> -		ret =3D iavf_get_adv_rss_hash_opt(adapter, cmd);
> -		break;
>  	default:
>  		break;
>  	}
> @@ -1812,6 +1780,8 @@ static const struct ethtool_ops iavf_ethtool_ops
> =3D {
>  	.get_rxfh_indir_size	=3D iavf_get_rxfh_indir_size,
>  	.get_rxfh		=3D iavf_get_rxfh,
>  	.set_rxfh		=3D iavf_set_rxfh,
> +	.get_rxfh_fields	=3D iavf_get_rxfh_fields,
> +	.set_rxfh_fields	=3D iavf_set_rxfh_fields,
>  	.get_channels		=3D iavf_get_channels,
>  	.set_channels		=3D iavf_set_channels,
>  	.get_rxfh_key_size	=3D iavf_get_rxfh_key_size,
> --
> 2.49.0

