Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9576BC480F7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 17:44:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1784F605B3;
	Mon, 10 Nov 2025 16:44:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UAvjOZzJ0fvP; Mon, 10 Nov 2025 16:43:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32D77605D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762793039;
	bh=EVj+oaywHQ3pUKtCBw3aMg6oRRUvwIiUg1XVrxE5tq0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qU96RgDSSV64n77qQzcX9MVL5nNOwUp1jEeX5LMZN8YqhE+hQ1zWX3t8E+/XlqOMl
	 kBRJ+YpHpKLi9rsmyLz2bialbTBWqamGLli0iaYFDPB5/Oy4XekB3BoeRWWW63DMal
	 XHc+1AiJGynk0ReHiX2aPeK9R5t5wSEa5zL5b2aSBeziclka4v1zyV7p7sQhHQLQwY
	 nH6kVhmJKrXG8zbYu4i0feGssppKpmOxBLewxTLCIB6BGpujMMGp7uwpVD4odWNbFT
	 XGfXZNuaRH9HUvRQdELJ9KUfJ5RSMHMi0HwOmCttk128iHdqe51HMvktxGEGRXxRql
	 FJKx+2YkNGUYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32D77605D4;
	Mon, 10 Nov 2025 16:43:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 045071CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 16:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9F664053D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 16:43:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YlSD8K_VgYxx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 16:43:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C583F4054C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C583F4054C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C583F4054C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 16:43:56 +0000 (UTC)
X-CSE-ConnectionGUID: 5B2IW2GKRz2aJ89FBM2clQ==
X-CSE-MsgGUID: NmQosi7ARsOvp2jSY8aLSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="52403873"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="52403873"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 08:43:56 -0800
X-CSE-ConnectionGUID: WqHQ0naqQpC9gjx6c5k5AQ==
X-CSE-MsgGUID: 2+CrLkgYTkO2nUwf7AtJKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="193725042"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 08:43:56 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 08:43:55 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 08:43:55 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.34) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 08:43:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VC7936nGsNu64ZTfNWBP5qVQUyY2t0RWfdFXEsE5BFdcic8Ht2NrwW76pN1nO/TF4h7qALH/tg1izRU/+61QgTtvt9sYKbj7BLs/srGweLloFY7n9bl/5Nr1CXue48IGu8fk1z3wiSae/PNRjrHaeB3ha7FF80y+LfGDpVT4I3bEaEaPdaA3dv2WAiEiYZzcNyyd2IhKMG0x6jQw4N6CeWxIMXTLmz2Z80/1skLvFp1VZ1gTwrp1NXUlAJ2jf5SfI+eEMFxj93Uv/coILpXg8+48CJjlR8mOXGCunnX+xXS1+EO1eFeZTJgzUkpCUizVjlMT1jpQ5aIcCmqUCLIGHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EVj+oaywHQ3pUKtCBw3aMg6oRRUvwIiUg1XVrxE5tq0=;
 b=b6Qv+acfsEbzo2hmw97tJQw2CDut6h5P7Sj3/OH6Rs/NmLbP/7iU8EeApvM5fyskiGCN3pFxhyCEI4rndj6VD6yTd2quS61teIErx1yHcCYQdsg7JwA1Xmp6kacV9nOwNNn5c7j7kcdh9Lab/m5RDQfIlwdkM/oP8Je8j1JRafVFthyRTbv6DtDkzwIGbulgXKZFRymAXIfIQb8C0WQvt72gXleM9y0XQ+6jrSLQkrQbbqsQn3vp03W9FD3C0TEcGoW36E7ryS0iv79qLupG2x54mkXVPRnJ2fdfToIK3P0hD8qqhvTP2lx8ymfA9EKP6Ywz8Kn80nEm0n4usQGApg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DS7PR11MB6152.namprd11.prod.outlook.com (2603:10b6:8:9b::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9298.16; Mon, 10 Nov 2025 16:43:52 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9298.015; Mon, 10 Nov 2025
 16:43:52 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "decot@google.com" <decot@google.com>, "willemb@google.com"
 <willemb@google.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>, "daniel@iogearbox.net"
 <daniel@iogearbox.net>, "ast@kernel.org" <ast@kernel.org>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] idpf: convert vport state to
 bitmap
Thread-Index: AQHcRHjfMnrneoaONkODKwqgJFLArLTsOTUg
Date: Mon, 10 Nov 2025 16:43:52 +0000
Message-ID: <SJ1PR11MB6297A515B244AC349DA76A859BCEA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251023235049.2199-1-emil.s.tantilov@intel.com>
In-Reply-To: <20251023235049.2199-1-emil.s.tantilov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DS7PR11MB6152:EE_
x-ms-office365-filtering-correlation-id: 39b9e897-8286-4d8c-8ba6-08de207854a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?YYgDz9VDMToVlsqiexA4qmgUDJ+HknpudzdIBi/9HCjTI3Jkx3/kqJmjVtA3?=
 =?us-ascii?Q?oTiE14xpesorxeYTL1AzSqsgwOAQ3tX2V0DfbggX69xhXkQwFX9gg1PNWWYn?=
 =?us-ascii?Q?s4HjQDlrxvDcARyYq9OROJYFOOEsc2jl87WUzaFPkzWs/KkQNUYuaxi3mIo5?=
 =?us-ascii?Q?NpXzIfxJB6wS4Axnzm0UMzkpIMA9HfxY24li8XPLDUEAuy86lRZXOmyphDuS?=
 =?us-ascii?Q?YqPzVjFrjibQQSeTUYgkzI4mxfhfAXUYVka/l85NMKEir1I1XW15JtIScnBS?=
 =?us-ascii?Q?/7usru6a+sCdg27vMNWYlRbnY5nSumEqlqmT2+ygWzXZO2X1g0pSJNODwg2k?=
 =?us-ascii?Q?Bug/Zb3ofzE9yBSCw3WDFpjmC/M5dxFwo9UMUOkBvlnW70Ecn0acd2GG4vs+?=
 =?us-ascii?Q?ihqRJO5lrRLSufVxbmTIF8sb+k9TFzt4kf/QrzauD8/23TFhnj8eMZVZq2Un?=
 =?us-ascii?Q?c4uN+jlxATs9ockDRbYNd8DRl2pR0zmYb48bfv3VBKeA9yKztlhU1BrTMCL6?=
 =?us-ascii?Q?TBMK8G/5XxpCtt1Ec4i6YC0PJ07/kfjn8I6xsjzAcPueyGyc6neIyL0y8YtH?=
 =?us-ascii?Q?uFpSEwsTkSmZpYvMjmeANvhWbViBXu5HcTeakknSchz7sDk1b29jMpnA+hGa?=
 =?us-ascii?Q?3NaWnxkKQmlMP8qK6INre+mrn13ZKK11NeQgp8dYnMFewrRK+XRdHBToC8RA?=
 =?us-ascii?Q?wKcVCnJLHGRq0DNSXQbMwR9ffSvTcDOg8Rm5PE4p5e4F4WbsOd97JaY5l4Zf?=
 =?us-ascii?Q?EnUqe9OFDx2jUMy0qlgVznhx8aHna7RGyxiIa8qI3qUFcyjxGRC4DIVf/boX?=
 =?us-ascii?Q?s8xAglSl2dToiYqNos7v43SLNEN3yy0miDs+emucJ6zxYaf5FiBQQbROcoFL?=
 =?us-ascii?Q?l+UislxHQhd0Qcqg+7n22ZU9Y3ZJWdiMn+Xlkx7bZMOgjlF4f5S7yA56TRZE?=
 =?us-ascii?Q?dYIwAMhXbind3WXLdxD11/yD977Oakfbj8XrfWY98BKgkm6TsraKw7UkCocf?=
 =?us-ascii?Q?mx/ZP5ANYtXSiW7k4pvaVo2wnvXp9VqoHQYtJCBTvu5du6xPYOI2CpZYq0ZN?=
 =?us-ascii?Q?QdaR7AIaOmtsVq34TFSplbRHZQolH1XBZgELccutZUf84wbAVEFn8gg0bROF?=
 =?us-ascii?Q?s1IzTaAYtYd1e+Je/M7eRhXgsfRfIYoSahQ/JPEbPgBsoRqwP/QPn/ggB+GI?=
 =?us-ascii?Q?cqLgW+BQuyQuLuJPyS89iX2XfKx5tXUgzR3flUbbw+R0CZHBnHmRkpYoGpTW?=
 =?us-ascii?Q?NgrRotPayyX32az0AgMiWBVp5r4OkpltxJJ7weN71RuDbC7CW2Lh4Vwj7+Kc?=
 =?us-ascii?Q?Gt1bnav0R2b60x1xe0719XqV3fRzQoyv7fRvSiU2Ig5wQsmb2gMoptrzGIIm?=
 =?us-ascii?Q?UFA/bLUnLiVMzNDGj9SNGoV/S1X2GReEc/IPHMJoh77EEnNKj6iG37QhM1ug?=
 =?us-ascii?Q?ffhtzse+29Pt08+P1988PSBi5r5yz57bnTxTbiMUQURHRXt7oxhOwXxEbb7O?=
 =?us-ascii?Q?sgcvLQHXYA4PP6UsKwx7d9CHS3akUR2kYJlS5m4JK/8yDhCmJ3v3zFKA3Q?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qScoeGzeoAI3aSfM+97SAwV18qYIkZc1nDM+tvQFJTGpok/aLZtszV/cbDjM?=
 =?us-ascii?Q?rdHNr9LxRyzZ4I5Es7kRMKCE9KZf4Ap6HO7Vw0rA2Ck7lScnEmhxXY5VPw/E?=
 =?us-ascii?Q?ykgwcnxaXp9tm+tGRBAAJ88JwWRKwZFoVI+26UDT52TELr/TiRNx0KmUAKoH?=
 =?us-ascii?Q?u1aGoctUoqsqUVxwugbwQNQue4Vhw2nPNiNvhjAbm6ygIfuvy8S8UTtOp9HD?=
 =?us-ascii?Q?BcVaaNc6Eb3lS1uYYBA1Ep6rMM0NESW3iBlbCgN9W3wa93r+aPMyVretqS7q?=
 =?us-ascii?Q?esEEylSlFmo87F9kIZwi7kI5xAe9kxZu7zyHbgw6c/mwzJMjO8ERysyo6ULj?=
 =?us-ascii?Q?aw8wuwTl+Vxq5JFoK+EbvVKmZw72xbwlb+KAE0g6GLXbwnW7sNv1MW4XZCW0?=
 =?us-ascii?Q?lyRKscdeC9NuHhikXmXyoKxiyWkSn0KmTmYpdc1QSj54PNc0Zttwwj3zEhJd?=
 =?us-ascii?Q?vZYLMZ+cIoVnBrJ3uxi8S3ExFu3EHmMsILohcCVTAkM/rTZffpU3T4prfARz?=
 =?us-ascii?Q?ZItiCARVoYOpJRuktbH3/r4X5zimq5c+Imujg5T5nTji3sof06cGcH91aQaq?=
 =?us-ascii?Q?FhP8K4g7i7CdFLKBvhV2lo7dbZrUQ+QXEU4zLXycUgU3YK9hs9WjIViGhs6n?=
 =?us-ascii?Q?cxY9eqfwBc4kQbuvXrsL+ovkxlGW6v0nRYOA32cv+C2vbiHW8p5TOWxdCXJN?=
 =?us-ascii?Q?PlZoZbVQa1SHXxeenZD2SAjOLn6Erw6cZF0EQLO3f50CFOlmYpbxAoYK3WDB?=
 =?us-ascii?Q?OIe3Qhn2CHBHRGrxxno1Aacmt6DDj3Ml7jxgRYYHeAnTOJcxEiadc6jFuQtS?=
 =?us-ascii?Q?eC01SziFOVN9y+XSs9GnpfATYMG44OWk5t9sEGD7pfWlf+asxxBYcB6qB1Fu?=
 =?us-ascii?Q?508XqPrhaU+Ievl/OOPdKbGw7+mcvjN16iN89rruDOT/4/y1VH9q7WO4ey2s?=
 =?us-ascii?Q?tWgE7eu55Lbz2WJYsVcTYS5nYJhzejS59IZ5y8fLOCJ5N4nlxH1IoOe1CK2t?=
 =?us-ascii?Q?F9jvxdCtZbR350ELHp9OLydgrDxKIk8fXnJd74Ak8rt3RQYdKOSf3P7cL+Mw?=
 =?us-ascii?Q?zffjQn4fam2tBgFoLhyBjHj8a9f+cIn8c5sHv7sE8zkSCDUeNDNMYHiozXIL?=
 =?us-ascii?Q?nC0oqf2e4IdFjmajyLZPex6EfrP/pPswjYU4+i/FmckjfidKw15bMwYQB/s5?=
 =?us-ascii?Q?yjsdbaqeYssEvnyhyZKGzLCiLqJLcsLiSfd3zaHNy/uO2Jx/PQQL3ExqeKLk?=
 =?us-ascii?Q?CNvcL5/gbigIG3HaiTZJdiTfORTj+LTPHLghNb3+1q+tVjn8+zXMREwo65Cg?=
 =?us-ascii?Q?xUGuRiZclHgtjH2MmJhLPgf0XjJjinWTbm0gKlRQjrExDZk+t8DPxI3JaeJh?=
 =?us-ascii?Q?E0kg+uzt5SsVxwW4AHyK0tEMCL/U4RT0M1rx8s929W85HLZ92Y5pdAZTuveA?=
 =?us-ascii?Q?frr0lhS6IAuWBdoxqfuf14BVpsmeYoIWasTU79bZvFcSvU41oftzrhAtbt8d?=
 =?us-ascii?Q?0C8rDmG6Aj9mQfw4k4+4pbF9IOXKNyW2iYmvCHdJUCt33VfcuMHI1pgbFBPV?=
 =?us-ascii?Q?8ZiJ9ypzBbsds4yAEEN3/W7MBRcR1+gGCjIoWPoH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39b9e897-8286-4d8c-8ba6-08de207854a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2025 16:43:52.1324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JqOd9UOgQzbtu9eDbJuL7SZkmZbAy+rdbxU1VxOFKm4hzhUSu+TOiNr92w6t6ksJ3askXg2kCFzGjumYtgtY0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6152
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762793037; x=1794329037;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EVj+oaywHQ3pUKtCBw3aMg6oRRUvwIiUg1XVrxE5tq0=;
 b=AVqTnqW82oUXzjuIoqn5BZzA4oepElh6ZZ1mAu8z93Dg/MumTFzM0Y2q
 IWjuI0qG8vMhPOFF0/Qq3TYcpFsi2nEMbEe/THjJHuhcNllnScCwhHEse
 Wn8SR5sz3K+c/N8mfMlp16JHqeU2pJj8XHXhsCMxN3kjGdGvWtIa7Tni+
 7VM3p8Kl1/g572Hg+9iozjdFpHx13Bg/s7puY6k3Tuc/i7QjMFleYh9Jc
 MzkSSly7NS9Y1H2O5pITAnJ9gktFQdst6ifkWylv9FIDJoPJn1syC8Axs
 GZ6rhw0Qk380UhanoErxJksqi0Mu4hC3kfOdUdTYNHhL3zNiCEJc4c+jb
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AVqTnqW8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: convert vport state to
 bitmap
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Emil Tantilov
> Sent: Thursday, October 23, 2025 4:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; decot@google.com; willemb@google.com; Hay, Joshua
> A <joshua.a.hay@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> daniel@iogearbox.net; ast@kernel.org; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] idpf: convert vport state to =
bitmap
>=20
> Convert vport state to a bitmap and remove the DOWN state which is
> redundant in the existing logic. There are no functional changes aside fr=
om the
> use of bitwise operations when setting and checking the states.
> Removed the double underscore to be consistent with the naming of other
> bitmaps in the header and renamed current_state to vport_is_up to match t=
he
> meaning of the new variable.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Chittim Madhu <madhu.chittim@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
> This patch was previously submitted as part of series to -net:
> https://lore.kernel.org/netdev/20250822035248.22969-2-
> emil.s.tantilov@intel.com/
> Changed to -next, as the related follow-up patch was rejected:
> https://lore.kernel.org/netdev/20251001-jk-iwl-net-2025-10-01-v1-3-
> 49fa99e86600@intel.com/
> ---
> 2.37.3

Tested-by: Samuel Salin <Samuel.salin@intel.com>
