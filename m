Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4769DC82514
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 20:37:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D728981A8E;
	Mon, 24 Nov 2025 19:37:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hCH_wVFp6Dq1; Mon, 24 Nov 2025 19:37:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56BA181A95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764013038;
	bh=DLY7gczyC0aEpGKuRzVP/UJZLTAH929HrDA1cpxZAT4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YHJutlDO1jBV6Xv9k9WRwy+JUoD5/iWdGXxUvQztGPClvqpVBuNM6y3/USgMAdOjY
	 PWmrPDeaotLGNa4nj2su2HMzhEW34d+K4/zRHWS8gXJUAXfWxfEKnYeP4SiMOzKJf4
	 QZIxAeZYAkOaO2P9nl8uP20oiNhzc7ezZf9NA4wzfq57fgh9g7VA0xbiLVfFG+p8HB
	 vwzwCtLCvzr5+wZHnZ0Nun4mEiPuVtyIe4TdAw4qIru3jLh68sYdQnQFL3obvF1DCT
	 FSW7tCp1kCZCNoHe/LQg4AOujmbFc/Ni5C3PBFHj38jSj2gCayLW7a9fEd0Zk5Jdwy
	 d6l3oVHQyGIaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56BA181A95;
	Mon, 24 Nov 2025 19:37:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DB73B359
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 19:37:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BA0E140BCB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 19:37:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RGFEjyJJQhub for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 19:37:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1D67740BC8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D67740BC8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D67740BC8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 19:37:15 +0000 (UTC)
X-CSE-ConnectionGUID: bgSKPwYRTgSQGZsYcafYEg==
X-CSE-MsgGUID: 5NqMyCQgQgq/bMcitX6JRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="65206798"
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="65206798"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 11:37:15 -0800
X-CSE-ConnectionGUID: z9umTk9sTTeWoPx86U1LIQ==
X-CSE-MsgGUID: P5BrSByoSNyk14JuFp8bbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="192436990"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 11:37:14 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 11:37:14 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 11:37:14 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.28) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 24 Nov 2025 11:37:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wWcqD+44v+IjLl/EidwVAhz2DZ0qK99QhyZpVBYEnKCc6qbP/ccCRTsWpbjZcEm0kKEDtiw7pXohdoQghZP2R9hQ5au5j8mtZhdQIbjUrNaZuKF8XQFBK4T9/ZZqwSEniAZzIwaJJJoHCvAng59RSInU6rEtaN/pYxpE3LTJ3aWbnS9lNos++pV8YzpHT7u56vAuWPg1aiLqvLOmDQz6H/f5Yt8nT51rSrZSGwFMRS+gPtsxq+b2tZUJhdG2wohDymRuGv1tB8+3jT4FVo/kuCoReNXqL+5kLhEdZ8/wawyzclfP8gglG8vZt1/RrPcEbFsxfbURRMydcVEfzCJJtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DLY7gczyC0aEpGKuRzVP/UJZLTAH929HrDA1cpxZAT4=;
 b=AC75R/X0MpZVIHt3KoVzyLK0XDIUYF/D+y+QjwwTRPssslIVWSgZ/4e8rDKxn/JvO0cg5iT0ZXjGic7/eqZnduSkdV4cnJ4RYyaLd3eAuquuEIlTyaGaWTAb1rHP83RV/BQD2ZY7MehFNK5S2SKW3DIWrXD1L2TH5J3W7qFtiYwH1NRLB0XgE0LOyHO1SqLPOZZcwPudoOu8mMZRpSNxynVNPhezSZP4zM0TDYdaG7mFKQtjnRj9agD9nJw2josJBRiN5nXqs7x6cX+TQs9pKQSeGiQGJE+yhca7wCa8xg+rzu0KwRwAcSH68S4zA+klBrDnpMKI5TR+oTkZZKRtpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF0442004E1.namprd11.prod.outlook.com (2603:10b6:f:fc02::6)
 by PH0PR11MB5014.namprd11.prod.outlook.com (2603:10b6:510:31::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Mon, 24 Nov
 2025 19:37:07 +0000
Received: from DS4PPF0442004E1.namprd11.prod.outlook.com
 ([fe80::8591:6563:2984:832e]) by DS4PPF0442004E1.namprd11.prod.outlook.com
 ([fe80::8591:6563:2984:832e%4]) with mapi id 15.20.9343.016; Mon, 24 Nov 2025
 19:37:07 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Tantilov,
 Emil S" <emil.s.tantilov@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [PATCH iwl-net] idpf: fix LAN memory regions command on some NVMs
Thread-Index: AQHcN4AgumH2pkDDzEmd7AyQoiN3JLUCgEKw
Date: Mon, 24 Nov 2025 19:37:07 +0000
Message-ID: <DS4PPF0442004E18A32C1BB14B0E3D429CFBAD0A@DS4PPF0442004E1.namprd11.prod.outlook.com>
References: <20251007114624.9594-1-larysa.zaremba@intel.com>
In-Reply-To: <20251007114624.9594-1-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF0442004E1:EE_|PH0PR11MB5014:EE_
x-ms-office365-filtering-correlation-id: a5c60174-f20d-4c02-c887-08de2b90da66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?2CrT4xe8hUO+CP5VQDGjPsv8AMZVvJbRf+G+zsICf34KT2FzqdMqUILiYu7t?=
 =?us-ascii?Q?hac08xnF/3ItC4Tsahn7/FlxKXMghixrecSJog6LCgrTzp/Bk4pTCWHsIP/f?=
 =?us-ascii?Q?4HJBG3Ehk4xcUxcxUj6oYFZsgAhJAL8f7JLyfUwrS45O63owg8dejIu56LuA?=
 =?us-ascii?Q?e4XWWmsHK2Bv7W/Mxh3giLAcIEcGj2saA7TrluV7covnjjlG5KIuRcs4jV4q?=
 =?us-ascii?Q?kLtJbx8nEM1m0psK0gTw9bVQ7CS2+xRamdz06RctLd9H+j9PapELFCZccKmy?=
 =?us-ascii?Q?oBenIL5bJWcrOelj5iiyYOgdrHKW3zcfKM7UxB91tTmqfsJlF9n2dTivOvD+?=
 =?us-ascii?Q?GuhkILjO4lcewNehH1EdX4TICAlTS/WzH+Jod1uQlCOHv0h82yUPsPrmMTY5?=
 =?us-ascii?Q?6Wb1J6WVqaec7l8lx43sEDSVN1vLv4LVz3g89AJ+Jy0Qj3q0QPGm7NlUldEp?=
 =?us-ascii?Q?J8iERvVEBagwePhritaeDeKJp/7jMMgIfsVmDaKVaNykcqa4U2ZlbytJKF03?=
 =?us-ascii?Q?9pFRJWXr6cegwkBp0/a3IcTqjHDaRP4e/w8zCkN7nJMsypS43NzrTB4r0Zpe?=
 =?us-ascii?Q?ThOLp9ZAiqyNkwOY3GtjHuQ7NbtlpxWAQ8hYo1na24GmoSYtWkgQcbW+fzUx?=
 =?us-ascii?Q?Y1ibfLJksRHMsXwC3yeInhWHhwaaHEN4m9TIhc5SBcbiX8iB8DWQ30QnIEtm?=
 =?us-ascii?Q?y3ZXkkNg8hD+kyJBe1nbhlfANrrQfbUs7Flqi+TeoHjIPoPhH7uE0LNLZXYt?=
 =?us-ascii?Q?B5n24kaQAySJA5dm48A/dquULSkx1udICSwsLyuwsoKgbfEyUntKHR4ofHgr?=
 =?us-ascii?Q?IHp0PEDe/nCoa4J8MLF6icOoqNemASWCJARaGo67sG2K4NdFXbLtIa4EHMr4?=
 =?us-ascii?Q?/fmesYCgLLQ8Zpuf4hNURNlUIcVxiBYrZTlgaJpv8fuRvP5gDE5PVX6WaJ0w?=
 =?us-ascii?Q?jlHin8Q99qcHbULt8jk+r3NqAi1qZMz2TmVhYwsYdvsh7eTk08hPn7UHKoqW?=
 =?us-ascii?Q?AP0bo9o/ESUC89ICzX5OvI4aC4u02wMQPvhNzXimW/gpnFOzcldDUASWMZ/K?=
 =?us-ascii?Q?NBxclWO9of0vjRwS6eXWvTa8iyDUkOlBK1a+fTSaMw+rLDLJgMq4e183rP/g?=
 =?us-ascii?Q?A3Zupt28ZvxnhnfATTPeA60k9jKWjg17TM8vBWMDzw74rUYeuHbHk7NP5yLA?=
 =?us-ascii?Q?Ih42NYqcpLCxVBJdYZCxxo3BbjYcVQUWyxwK6w75eGcgP+t7oGyMkt8g/HUB?=
 =?us-ascii?Q?cjO7wFVeDGJK/T5ZYOGLmopJ34sqFCeJV8kCUshoOZbgHrBDR698LtCvIrwO?=
 =?us-ascii?Q?Iv47noh4UPPimPKdE0gVx1Srpu9h7ho/9oNYSBdzj5f/OA9pw0gnpQJtlOhY?=
 =?us-ascii?Q?Abtd27SZrGuOZEZuuV6rdlunnB6687YO+F9jn5JiIZt9Z36X5LYl7ICwZ1IM?=
 =?us-ascii?Q?fqC3dMMVlKkYYiRIgxE/6QoWIqqsmL5bHyroD7tHlzYyLGoktXk/j3tqxRDn?=
 =?us-ascii?Q?mvvRI5NhtHqe4CFCsnqFUlHX/tn2W+El+T+7?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF0442004E1.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZwdobBjx5IQJ2dYRUxhojvw2mudBa3oX1ovqSpv3r5oCoIvOQnGT0uZ+ciGr?=
 =?us-ascii?Q?/UwWWjIep6YYzY6s2z25HSwg9HT3jfdtB6YIRbQ44iTpF8ki/rcN2fHNwMHI?=
 =?us-ascii?Q?ypTkxdnfsGHR5dZI/LX6BVKTMwGDp11FTDH87iht5ZbPFkUrPsKbSTujppoh?=
 =?us-ascii?Q?IVqelRlYCiR0tS7MS2muUEMuZ/3tarrvktyIEToTQpE03cIo/rXz7ma0kjcT?=
 =?us-ascii?Q?Ww5bjTiD7d0oDRTMbAbW3mOrbirRjgf3VR90/GM8NArLL458B2s4WiJzyvZv?=
 =?us-ascii?Q?etp0TSS49RLeeps+92EU6LvV4SR7HmdgpCc+ZgjY1Tg2H64hRo1NDWA+dF19?=
 =?us-ascii?Q?1sEIi1UcHGBrHZdbeCX+l/fIeeYIkJCNpDQa2x5PeeSxYyFdSl5ZazFgTo7g?=
 =?us-ascii?Q?0jhgWEIZb3qQlqd2NXerrS1FvIv6WcqFdF05Es0g8/gf10eRBuov4LzMoshw?=
 =?us-ascii?Q?jmXSWAA8Meo8bytPqKki6tmzyUdpb0Cb+4ZoGESSusWVXdP3LQbZAj27Vyai?=
 =?us-ascii?Q?9izhfrc+QAXuvYMX/S8X+brPMG8NG+G1TGKF5J4vakGVD1KNqmYnjA2kzKIg?=
 =?us-ascii?Q?nICRL27DoPCeCNXcrl/f2f7XtY3tRzDuKb3rPiMrul/Xyomz8DBEIBmFG7A5?=
 =?us-ascii?Q?bokudoPJ3aeoWDYp+19USUi7flLYgC65RNhSX2VRHVC6IBlhzYQdZF4NR1+t?=
 =?us-ascii?Q?6N7I8dK5krFj5tCLMAwj9nNcj1Sh5lDjp9xdzZrkzqihBn/djljQV3Is3YWm?=
 =?us-ascii?Q?V0420xvweSuNO+zlXl5xj4c8ZwO/424Z1llC+OFyPeueh9+pomoQhtCwmbdM?=
 =?us-ascii?Q?CI6COJX9KbupMbxjBO9ndvU5S4nKs3YVpBNuwT5DQXlQVvqcrpAkHW0RIt/y?=
 =?us-ascii?Q?qQiR2kCPp5LomF4oFce6tJRVkRUmzwnP1sF5DLx7+0Nfb5AUBr/m7on3Gazd?=
 =?us-ascii?Q?lT+eG67tVy3JuoFFtS39EGw2BojTTj6cU1OZBQ5bQf5e+iirL6BFW12WzG6t?=
 =?us-ascii?Q?XpLRWog4WEtoaw5/v/l9mtwkI1w5uafUAO/ISCyRtEi2JmYUAVVCWfREjSAz?=
 =?us-ascii?Q?NAHVakOHc8XioFbzPUb/ZnnlwjYUrMzoBjnKj3Cq4R8jwKITcxYLECebOsI4?=
 =?us-ascii?Q?I3xswiSvkKSg9ZN133rSVT9ITKOCMWGS+mLz/aStNkguIwlZVSSdw0VDbnOC?=
 =?us-ascii?Q?qDAh3K+oGjn2vI3692k2j13G2vOs8GObqyC+Bas0yJjlER3oKxEWsFKnwdZH?=
 =?us-ascii?Q?S7ykpFEAJzGGSgJqcUKYyn2CJAd3p4Mj7wqMVXHnw7kjwjvqBdO5X6YU7Iu9?=
 =?us-ascii?Q?uEE5Nvcw+meOv5CuEchgNLjeggcJMUVGlcWtMed9Z5NlsGX0+QxIg4KbjND6?=
 =?us-ascii?Q?keadJI3yiB5FufMMxqsJDI7ImWsBfZ0qzQWmzZfm1unN5SvuhTac8L1vOdWg?=
 =?us-ascii?Q?d7sh5UNMBnqOC1e2HRS+XgV5aowlh+I9/IyRgCGXDJ2jFHxj+oTONXDYnJPK?=
 =?us-ascii?Q?hpnr7kFHisxlA+BlVebQ4azeDLsny8VuyNe1HgQVZNzfM1Ylw+VzJWtQNFTb?=
 =?us-ascii?Q?lvpZ/LNepqv2jeZ12wqoDPWqehVRXyAZNDbhIi0WgBCMSpxVVNoM8jbImMzH?=
 =?us-ascii?Q?9Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF0442004E1.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5c60174-f20d-4c02-c887-08de2b90da66
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2025 19:37:07.2036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LqcNHASdr1FGOeH74GlSwiY0b7t3CJD3sxm0prXe27xnFCKNZp3Lyc7dIxJrHDAoZvK3/P2klZoCK9kznRWsGm7F4ZeroF8mHKy83lmcV+M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5014
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764013036; x=1795549036;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2VSfbVXm35O07y8FeE0M6CyRkh/ynYcWBNK/2BnSCyc=;
 b=kafcjz4fXlA06PQMUQG3FJ1cWBJT2OCEdRrOHpe4MeHlpBInMpBd+QaE
 Jb2Gkf/DzsW9zQryHLd6D03K3rBi28OXcXV1I4BodhSz7Ui/uSFOPBYkO
 nk7/e+Cu/3FIqPUtzjFNfs44tUSe/aLmMFWuUhQhShKLs9tV9K702AUQC
 sHz61BivOtMYsGsXAJ8lM+IopAZfV/gDarxDUHjOZAIWx4B+xiZHkUc1r
 lKQPjIDmHonyPCUnxz0hIO+ytbR5BIJTfVoBKnTSHCmU/Qq1D92TvXL+i
 elqUBCwZDODSEv6NkIwwAqnvCJJP0K1HMGjgx6UjDfs0lqnQ0sYMlulY9
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kafcjz4f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix LAN memory regions
 command on some NVMs
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
> From: Larysa Zaremba <larysa.zaremba@intel.com>
> Sent: Tuesday, October 7, 2025 4:46 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Hay, Joshua A <joshua.a.hay@intel.com>; Chittim,
> Madhu <madhu.chittim@intel.com>; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Tantilov, Emil S <emil.s.tantilov@intel.com>; Mic=
hal
> Swiatkowski <michal.swiatkowski@linux.intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [PATCH iwl-net] idpf: fix LAN memory regions command on some
> NVMs
>=20
> IPU SDK versions 1.9 through 2.0.5 require send buffer to contain a singl=
e
> empty memory region. Set number of regions to 1 and use appropriate send
> buffer size to satisfy this requirement.
>=20
> Suggested-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index fa3ce1e4f6ac..af8b3ebee4d4 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -1016,6 +1016,9 @@ static int


Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>


