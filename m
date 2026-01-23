Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEYWGMMIdGmE1gAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Jan 2026 00:48:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A96B7B8A3
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Jan 2026 00:48:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39F0460894;
	Fri, 23 Jan 2026 23:48:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jExZDNTKZLYA; Fri, 23 Jan 2026 23:48:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D4B060896
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769212095;
	bh=VCtxbhMsT5ekpOjYGUjKSK8ahiNQBD4sI+Ke8JHNCC8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BHBOyqENrKjk0vV4yuC9fvrbt59MKFPmtER9Tm1+4wbmBlW+iGdud/Oh6nwzF8qXv
	 BZdxjp6CDd2gbPzx6wMkhfFRLqZbm6xWIVlXY+dOxylqEPj2sxBowcMaxuvCRDtp/P
	 Ffkmo6eG7sszGLd75L59Q/dAYvee6scGDkF4jZ3JfA5galfeWPbGDmmuCN1f0uSwC8
	 Cc9GefF3N0bxdD0GpwIP6Q6k9Y3ZVHaM5XsOrL/OTNZswx4HxU4dyZrbSOMxi+nYbZ
	 LrmmZ8wnPYg1wUSkN20lTQcbehT6rVPi0oYhYY4LfsqSWXl+gnCz1AlZNjCZxZBylQ
	 f+1Ngpu53Qdug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D4B060896;
	Fri, 23 Jan 2026 23:48:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B44323F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 23:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5AC1D83D2C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 23:48:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Q8am-fHlBEC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jan 2026 23:48:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8EFC883806
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EFC883806
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8EFC883806
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 23:48:12 +0000 (UTC)
X-CSE-ConnectionGUID: TuFn6I3kS7m6nAENKrXPhg==
X-CSE-MsgGUID: 33FMzLSCRyqKsLXXAOHzFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="70529265"
X-IronPort-AV: E=Sophos;i="6.21,249,1763452800"; d="scan'208";a="70529265"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 15:48:12 -0800
X-CSE-ConnectionGUID: RbwMPYYCQd2bSoqLwvNlZw==
X-CSE-MsgGUID: 0us+E/+6SrWX15H2eNm5lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,249,1763452800"; d="scan'208";a="206953093"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 15:48:11 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 15:48:11 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 15:48:11 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.8) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 15:48:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lwnu7ws8ic/iSQEGR12ntKlMm8rHkUEeekqgDiAkzVr9ZtAQLfjW5x8Gy0gE9CGyIHGHOGbSVCr8/5kvjaDMyHLkxIAtF0h7Canl6zft1FAdYIpdwoX5cL3T/X0Hh5j3SWvQSCLwlijUW40geUOecxGs01oTD0voBPAjlMx9JFg019J3DBIzuuv5sZKlRGYS5NDC8Gm03ugvJ4bJkBsVTBzF5+2vo11eA5lrwyQgxtVd2n2r08TWk9pZepL3PsIdkm3MFMtg62QLqB4IyuawNQbd58SqQtC44C8YRzNvldWFvNugLLsYreZiE5uk4xuGAVZMg/kCE5zK385A89qbWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VCtxbhMsT5ekpOjYGUjKSK8ahiNQBD4sI+Ke8JHNCC8=;
 b=JmV1Yg5rzhpTPvUNnr99O9FxWpQPc8wnjyAKbntHc0eb5BPE33dOZZwXH2DVof/bbdDOlOLITP70tylRLzYY0qkL+CCG6OubeXg99elqnzI2VehkNUrGOxdwuPfQLPlAYTfA9Clzcqe+wzbb9LsRT8llwkCf5vfbZWiehxTRR8065qLAf/MLxbVr+c2J/HFBafYyESk9+PjaqhyDdf4G5pc/57UBAsiTPuB5OIs4L0tP7K3g6MSgnzGh2blpTB6HzmBgyvxEQcFQeVDiPK1alk337eHu/ayaXfqSr6wG8fwj0luLo6+p+AzveWUXN5HO8RNhm+qbmA5Zo3MWM0Nwcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB5993.namprd11.prod.outlook.com (2603:10b6:8:5c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 23:48:02 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 23:48:02 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "edumazet@google.com"
 <edumazet@google.com>, "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: Mina Almasry <almasrymina@google.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "lrizzo@google.com" <lrizzo@google.com>,
 "namangulati@google.com" <namangulati@google.com>, "willemb@google.com"
 <willemb@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Olech, Milena" <milena.olech@intel.com>, 
 Shachar Raindel <shacharr@google.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Salin, Samuel" <samuel.salin@intel.com>
Thread-Topic: [PATCH net 4/4] idpf: read lower clock bits inside the time
 sandwich
Thread-Index: AQHcil5kgfSGSp7Td0q921Ed4oowibVgcDJQ
Date: Fri, 23 Jan 2026 23:48:02 +0000
Message-ID: <CO1PR11MB50891BE5E377FFB7DB6D8314D694A@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20260120224430.410377-1-anthony.l.nguyen@intel.com>
 <20260120224430.410377-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20260120224430.410377-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|DM4PR11MB5993:EE_
x-ms-office365-filtering-correlation-id: aa76fa14-6312-4d36-0502-08de5ad9d8de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?GGMYxYV8pSAtFhTuV2tgOu2Mk7GnWUW05QboizIKX6RjE1lCXs3BmJ1UwlgW?=
 =?us-ascii?Q?tut52Me1Zd6mmBcb9SJ7pgg1gNfXYvY5i2CN9D8yVNn0GZ2ILa+HffTAYjQu?=
 =?us-ascii?Q?xo1jGZgrbVQXnVtEZb+IMLPOdMEHKoUCnDYbhP0fjUwOoLHfQpCL4km6IViJ?=
 =?us-ascii?Q?MVNDMmo5gmF+e4jgHupz1UZ+ataali1TxL4SYeuw6K+9A5q24s2biFIihQBF?=
 =?us-ascii?Q?9jHtQvMJAYpJ3cUUGs1Q0xY2/NTB9YeOkSqbTEsRorQcFTFKtcSzsQBcrzIZ?=
 =?us-ascii?Q?9FAhnATB7pqxDf43fdp8n+WIuI5S+3v5ZVNX8TustGhmuL0Md3rXQ06/lNQR?=
 =?us-ascii?Q?zb5jEiVzyqu+hg5F2IPCr0gusrMacIlQKBKXgnXDM40bHVPJrS0Wt/gqTe4a?=
 =?us-ascii?Q?4qUFuhEQqWbGIuevYJ08my07ojpwEOkYnegkW/hQyasoWVAd0VBD30UELlRG?=
 =?us-ascii?Q?/ANvfJz92yS1Au0y0U1Oadq/KsOB+dYpOQOOs9E0+4uTXZxDcRFttFeQ/XRF?=
 =?us-ascii?Q?9hjddA1Ug2fyWkXeG3hcR/ZCohJYo8Di4jUgODrXAfXGOybbXNYHX9Q2l2RK?=
 =?us-ascii?Q?n8xsGO3te/UoFBoweDaCG4ptUKd/fn5V/ec97ngyRLoc2npw1uIeHayOcqU7?=
 =?us-ascii?Q?djJVoEfaNynbMbB9bqQop2/LJfLcRqLr1wlWdw3nD1apVj8tOsQRpRMim60E?=
 =?us-ascii?Q?EhhSF+9S7Gm7a6h9ZPlFV0lbB/jTR7YLrG6pPc/clYQoowM9b+WBxm91s9H2?=
 =?us-ascii?Q?/omtyZ50u0+aKB0qpT4ETkfcXYhhN3Th9zwVD5rHCiNREgSfmPGEZlYMYGkG?=
 =?us-ascii?Q?e/HYlxz0U4PF//sh6vtibC6KjC0+wwIa1pHsuo2F+yvUWDl7RwrdSjFXdnlu?=
 =?us-ascii?Q?wyvt70yy++XuQ5iiUbYedvC3mhe0Hbx5eHaIiC/Y6a/cC8o9yegvCoDD3DXj?=
 =?us-ascii?Q?KsD0qHcbf9BsphwDk++eHk/s2UipRA/m3bjj3YHtQF4PQkrFtfnXLMj2u/Yz?=
 =?us-ascii?Q?dIaespIA87IJzYJiYowLBCt2Or77OtvFYYZx4VpP2Y/x2EkIonPp3isxquCL?=
 =?us-ascii?Q?A8kd1w5UtVCm/zJOggtcI2y1oEBVVuvJJC3IQ46ThC6UkkDAhz7RGzLFVc72?=
 =?us-ascii?Q?iJ6x+H1IihcB7PCmfYSbAm5sDpzPP1k0PEp1SJO0MoEpr3++qDW7ItUW6i7M?=
 =?us-ascii?Q?pHaVwAgQHgBQ1RIhstftIVl6ol5nCvdeDRsHAosfh2MpoLB/VmszUaK92+Mg?=
 =?us-ascii?Q?jLTTlc32ZLs4asY/0k3GI8biS3Pvbplhco3O22k8Xpi8ZJreqa81t17cFyiC?=
 =?us-ascii?Q?VyQD9ZXwivfeJ5DPvIZ6oXhLaWErXMceLnKaaMW8eEvqSOyZBTb7Wg4LaXF3?=
 =?us-ascii?Q?wHFW1jjMm8xObaJG46khYxlB0602gaLw5dCGN7rQYIzktMD2tJ46Cd+abR1/?=
 =?us-ascii?Q?X6JHzHNsWiRWkCbBKPwyl1XgIFuj16fJPheELgOVM623cl+IJGseqp3zfzrO?=
 =?us-ascii?Q?WIjbMpjlrvbUol19fQUbftZcWd8qdJZ1s+TevdQ2rs2cgjoTI3WTFyjVKSBl?=
 =?us-ascii?Q?z+2lCVtyiVQBIx0w2JKgEGw/Yp7Y6EDlCCTRKt5r+GPkZjrqFc1H05QDfXYr?=
 =?us-ascii?Q?Lma5lpCriLZCbRJV6MDF2nI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NMI55MEs4BqemmVNRO/b8GX+COaYRiDVAKYs8cqoKJPXUgJc9C9WCzo8rb6q?=
 =?us-ascii?Q?csifr1nI5baHVGWqQ5ieSwv5LSfOwEPO/z8SXQAGiNg2AsJT42irt2iA/tfc?=
 =?us-ascii?Q?KmeG81w2LfJNswEwMQ9OA+HOOEOWizlFXQpIsJav3fO+CF7pvxHB64GeXvEk?=
 =?us-ascii?Q?7ewsixmbKrq9+bJPOtB4n+i+0xvIv9BuzEk7xGpn848uMLR4xMJN4vTunGYJ?=
 =?us-ascii?Q?kfg/tSzuEG90xuVc+PTs4GaaJm+hGIxp4AmtNbtZUjgq0RKY2C0AwP6hanNN?=
 =?us-ascii?Q?1uDL9DwjZUJfXVz8Hbtaqolv2+lzUYJM/XXvYR7mOjGu0qlHiLjKAQjgdekN?=
 =?us-ascii?Q?o1LG3dqsNN/4iexvyE95eXIswdHATxL8CE94DNO2EAPkS1GjWJHIA7rA1PMI?=
 =?us-ascii?Q?ItVHvOS5Bq7VV6NmWfTDs1CSckyPZjjndsB9nVkxQvnrxGDyK2wy2nyLs75x?=
 =?us-ascii?Q?dgxiPdAnLPNslEd0KMg9ov/M/OS7tyt0k9YR9Sw2jSxNphHJQSMqkeR3+7Ck?=
 =?us-ascii?Q?4sApvKOjTHrXk7Poj0EX9sneyIZh6873eT7POOJUCE0YPnBtoQjWNnpSgBsP?=
 =?us-ascii?Q?iW7Y6vu05GfE0AhsAIVRTW9mWMCIfDlHofaD57BqI1OvfwHXVRhIwHmQE9uB?=
 =?us-ascii?Q?oYM7hWfKE7d2BC+Xr64k96gS4mRoPFzM7GQ5Eio92BUpWnZ9koPIDMEjxWd/?=
 =?us-ascii?Q?LL3b0pxS2K+CCXq+4H5A4JTUVZnlHOw6YLmzSaOthcu+hl0xeoZV56dnZ0Gk?=
 =?us-ascii?Q?2mIo17912nSMdLPXn0eTbvW5KugcWm8y6Tc52Tq2a0MVRYd3wfC3L8fqtHTd?=
 =?us-ascii?Q?HnjgEvmY00JoxkAQwXGhs/mp/S/BZLROoeZldLtxtT/KcmyRAZsj/s7VKYmM?=
 =?us-ascii?Q?BvFLYSBWZXpkEhS3n1xdynBKeWJTzVe8v4TV0PKR9txpyw9/5b4YeL6ye2+N?=
 =?us-ascii?Q?dOzsBvCXDfArcvq/S3NsFB72JQZQOYodSiG1Zx/WRFRoCF/+1ft6FdiMeyQ1?=
 =?us-ascii?Q?5rzYXbE3pBMmVqxC51usNH9zyYYjQgo96tLPr3/y/RpEhtRgabvnSBB8Zh/F?=
 =?us-ascii?Q?jgflm+O355daNj+H5NJdrDBs6PGkhGnuLhEgg6cnJ8ptgmifGujed2Ktjvl/?=
 =?us-ascii?Q?Vri5DHhWu4NHt8IrdMfXd/IOtNRJhUeE6MK9ZPkvUaK00yazv5AU/qdoZhlH?=
 =?us-ascii?Q?yaLdaP3USTC9NkQFOomftyO83Sm1wyI8kKVkn7nxAk8KLo8XFYSdRuppSOav?=
 =?us-ascii?Q?TLfkXZm8wsFVUZtoO7XbQi0AHanSDgXlR2/fyGBoySkr0nABcLFiZ+ZG+/jP?=
 =?us-ascii?Q?VedFePIlchtjhDjV4AnXl3BC8xnUYADgjtGAMwlgLTEKyQMwyZE2evZg2RG3?=
 =?us-ascii?Q?eBhZe/QRyrXBkBJ3iE8jSVeH2zdycWhuhd9BVEtE9g0DXLWs1N5fC4dTGdMB?=
 =?us-ascii?Q?0aYm3xYbzwWtNOgkkqW//K23HWL1P3LyVWoJkJBGvZEOmKnlaERVLG3xJpaB?=
 =?us-ascii?Q?4rEO2yR4S0sSep1itNUdggxm2iT4iuwjz2QcL4ZXjTaqRkvuLfwMwAQaLH4J?=
 =?us-ascii?Q?794hxH/8Nhp65rr/zQ28LjUTtcynsUCHY8fiMfpn0BHEK2mtNAd4heYgv85P?=
 =?us-ascii?Q?r8kFtrC2oWG4TF6l9P+NyPnGLxyMEwW/vAKSflsJpEkHeEe+lcMYlwSd85TI?=
 =?us-ascii?Q?xnGDALBASOBma/k0qsE5+Z3wLJU7IIlsKeozeqndQd0yd4DgeRE3ZGinUszF?=
 =?us-ascii?Q?DJI6mnGdQA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa76fa14-6312-4d36-0502-08de5ad9d8de
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 23:48:02.5593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ql5N0zFGloFg2FpZwWpSWfgToo2XOmBYdyo9c8zTPg1gDnaO0EUBnJfT1yJndYW/dqiwqtT+yvy188LsAj3j2Xtuqrzz0yGKOG/vKisxpQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5993
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769212093; x=1800748093;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RqlkJb2BPTvTGgvgRKfdliPDD9KW6+nXO6JfU870hlY=;
 b=OfLoqjpxbjBTqF37hbaz3r5IhIy6sSzi//WsKuYktIJXBf9BGQoOdH50
 nN/+1Dop5cLDhaz8k2vCSbRsZXx0xhVyhVJd9YMDjCfN65ZpJMrh9vtxl
 Cz82Nd/gL2N5Z5UychKKoV/A6OKDz6pFZci2uF+4i2ZN1C7RbAOexsLIJ
 Ekgryl/DDUN/V4mPbptmZcZg9awLFWq8T4vZGsTeR8sfqcAbSy88Z4mOQ
 M9GHVECNUpokLa7agaevJEWv1eku6gvBOfi68VclotRnUHh2Qm9TBhbX3
 oZ78I0t8GWqsUcmSRLKcMHCp9EoE4v8vLfRSJsa67cXlgJ1NYQBG1ocVI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OfLoqjpx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 4/4] idpf: read lower clock bits
 inside the time sandwich
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:almasrymina@google.com,m:richardcochran@gmail.com,m:lrizzo@google.com,m:namangulati@google.com,m:willemb@google.com,m:milena.olech@intel.com,m:shacharr@google.com,m:aleksandr.loktionov@intel.com,m:samuel.salin@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[google.com,gmail.com,lists.osuosl.org,intel.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,CO1PR11MB5089.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,davemloft.net:email]
X-Rspamd-Queue-Id: 4A96B7B8A3
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Tuesday, January 20, 2026 2:44 PM
> To: davem@davemloft.net; kuba@kernel.org; pabeni@redhat.com;
> edumazet@google.com; andrew+netdev@lunn.ch; netdev@vger.kernel.org
> Cc: Mina Almasry <almasrymina@google.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; richardcochran@gmail.com;
> lrizzo@google.com; namangulati@google.com; willemb@google.com; intel-
> wired-lan@lists.osuosl.org; Olech, Milena <milena.olech@intel.com>; Kelle=
r,
> Jacob E <jacob.e.keller@intel.com>; Shachar Raindel <shacharr@google.com>=
;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Salin, Samuel
> <samuel.salin@intel.com>
> Subject: [PATCH net 4/4] idpf: read lower clock bits inside the time sand=
wich
>=20
> From: Mina Almasry <almasrymina@google.com>
>=20
> PCIe reads need to be done inside the time sandwich because PCIe
> writes may get buffered in the PCIe fabric and posted to the device
> after the _postts completes. Doing the PCIe read inside the time
> sandwich guarantees that the write gets flushed before the _postts
> timestamp is taken.
>=20
> Cc: lrizzo@google.com
> Cc: namangulati@google.com
> Cc: willemb@google.com
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: milena.olech@intel.com
> Cc: jacob.e.keller@intel.com
>=20
> Fixes: 5cb8805d2366 ("idpf: negotiate PTP capabilities and get PTP clock"=
)
> Suggested-by: Shachar Raindel <shacharr@google.com>
> Signed-off-by: Mina Almasry <almasrymina@google.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_ptp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> index 3e1052d070cf..0a8b50350b86 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> @@ -108,11 +108,11 @@ static u64 idpf_ptp_read_src_clk_reg_direct(struct
> idpf_adapter *adapter,
>  	ptp_read_system_prets(sts);
>=20
>  	idpf_ptp_enable_shtime(adapter);

I thought idpf_ptp_enable_shtime did a snapshot of the system time, but per=
haps it didn't get flushed until after a read...

> +	lo =3D readl(ptp->dev_clk_regs.dev_clk_ns_l);
>=20

In that case, doing this read makes sense, as it would trigger a flush to e=
nsure that we have flushed the timestamp snapshot. There's no reason to use=
 something like idpf_flush() here because we're already going to do an impo=
rtant read anyways.

Acked-by: Jacob Keller <Jacob.e.keller@intel.com>

>  	/* Read the system timestamp post PHC read */
>  	ptp_read_system_postts(sts);
>=20
> -	lo =3D readl(ptp->dev_clk_regs.dev_clk_ns_l);
>  	hi =3D readl(ptp->dev_clk_regs.dev_clk_ns_h);
>=20
>  	spin_unlock(&ptp->read_dev_clk_lock);
> --
> 2.47.1

