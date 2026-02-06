Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DD+FA8Yhmk1JgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 17:34:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4B310055C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 17:34:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BDA160E26;
	Fri,  6 Feb 2026 16:34:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jkpNjeowWphg; Fri,  6 Feb 2026 16:34:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A69A660FA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770395660;
	bh=d+Fky5JeAgnzE3wHY73LZyuXE/Bogv+Y0oxcTYqgKQo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yeWhoPZf8BFEiMYta3hTh0pYEUHvTsX9wkxHStJPgIqnOuf36EYT4eip7KlD9gPkd
	 sJ76HVYnkxCYz0iSd7fZ/v0a/alcsc2LMGWELIU/6SPO+NKYVlQRo+MYntTFu9fAd+
	 grL+x6cUKCIfgrYtLqwn8PkjwnN88sAH2IBdjN58UcbWjOm97v24sRKFxx2i48ELfF
	 7ZLSFNFOChqBCvXXZbqtikI88H/iKtdSV799tD0yFvvgoBoypMb4cH1CxwdXfo56rE
	 zx+sMB5YnYYXsglNlF+x0HpK16JI5g4WkKuA8FWnHaBEIaDDBdRtKlYBxz6/y/0OF2
	 wtbPNnHTwMpuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A69A660FA3;
	Fri,  6 Feb 2026 16:34:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DECA173
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:34:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C07A841F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:34:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sgB-eayoDiQN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Feb 2026 16:34:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A16B18403E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A16B18403E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A16B18403E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 16:34:18 +0000 (UTC)
X-CSE-ConnectionGUID: b9+QakWRRbybA3aM4+w0aw==
X-CSE-MsgGUID: 40MM+WaaRTG9HomhQFROvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="75226624"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="75226624"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 08:34:18 -0800
X-CSE-ConnectionGUID: Qf5LmbbkSeKgHfqXwLMsZg==
X-CSE-MsgGUID: 9PhHzdvmSkym6K4uHwobqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="209999633"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 08:34:18 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 08:34:17 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 08:34:17 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.51) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 08:34:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JdKee9qR5PMnkgs5TrJ/RQwIcLE7JtCGMRVBosBV0os5Hq2yUuUlMoZy8s1AdGca5tUdt43TsXtjPk4q1yMfgmLrGFbMDymlQoHd/9jm/Jilp7+p4QuPqTvStQGgKlPvLCrg6CXkEMZaj4egF5beV1F4L6VOw6Ve89HFFodztTFhjoIC1yj1cGcQQ+B6yrlj2kROuVdN42Gj21RQMAnQhc3VmsiEeC3z/jMz6hqKsCu+TazBCavU97Wrgu9GsLUtaunfQJmwAmGiqOYPru4SQE6ZMkOQ7Mkqb5/Alu+mn+OlSU0sD1LDw8qbjXNmxjNyFwXfDXQJGGaVgVly5DUHkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d+Fky5JeAgnzE3wHY73LZyuXE/Bogv+Y0oxcTYqgKQo=;
 b=eOevsG7756tdZrd74mA2+AxHa/FOTLB3KButPLaz/CROSFtI0I1AyXRQtlo5C0bP1KyKwKS9XX6zm76LyacEK+PhtajiVj142oSbabjig9lAe9HSJ/zcpiYjbeFWc1HeituZi7PpcRBwhfwqfizVPC8Hu+UNJgCXwDNVtVXvZ8RzV5vjYDX8UsEduxEAzhmFEXozpDSC5C/HFxEdDqtMAO5IkvGyvGyygQA7kkPW3ii+BLbN/XgFc59rdg5PXI/KGfjJLZV3SgRWp48hwjYnJeABpVYOqhZ7UxTCrG4Th4zzQlBNoarf7ZUuxv9DFgSnHiBGrHGsSfoQsv+roo0lVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Fri, 6 Feb
 2026 16:34:13 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 16:34:13 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>, "Loktionov, 
 Aleksandr" <aleksandr.loktionov@intel.com>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/5] libeth: pass Rx queue
 index to PP when creating a fill queue
Thread-Index: AQHcZTX0SEMd24M3Kk26QrWd3wj0wLV2QkEA
Date: Fri, 6 Feb 2026 16:34:13 +0000
Message-ID: <LV1PR11MB8790C75AB895620BC6192B619066A@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
 <20251204155133.2437621-2-aleksander.lobakin@intel.com>
In-Reply-To: <20251204155133.2437621-2-aleksander.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|CH3PR11MB8441:EE_
x-ms-office365-filtering-correlation-id: 0502c7d9-c299-423d-1164-08de659d901a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1PIBOqjMXDarDkE1dbzNAzBrll0wTxCRLnX4Dkext5wjFgSUG876cm//3yZX?=
 =?us-ascii?Q?AL0hdWATnhSzNM64CtYbHrUDuwJr+A7ZfTW35MWKLoFgsKhtlY6G6mX1ue0s?=
 =?us-ascii?Q?wetOc64xJ6OJnuQwIlTxW1aw7sX2AF4w5PdMc4VJFrnuNLAdUyd06AmvyYUS?=
 =?us-ascii?Q?yj0fwt31jSITNkWVg7C0oL3sf1KTxdOD3/7x1oPhUuVviyDUYyYlPrFmgdsK?=
 =?us-ascii?Q?gE8YedogfPPjTZujpRYunzkFlWuWjRfsLZDtBZXhxIU3dKca0xxt8nuyHvxn?=
 =?us-ascii?Q?mOqIDnAvDej0c7CjFRuWhqBE5vl4xHKU22Vju5+WEE20bKkTegPcRFmePctV?=
 =?us-ascii?Q?ayEDTUSkM/3Z9NlZ6csnWjx8YlFjuhyYxawqLzs1RJTYk7yR61ztTXzt5Wf9?=
 =?us-ascii?Q?iOmCevqCzvHiRonBN12+5NSWS2+5Hadk+aMAiXs2aSAq9P6/+Fe9sEEu97lR?=
 =?us-ascii?Q?7J6VkBQZKReYRdfVcIPAWrjVruBSMyIeuk6v6tqaHgi6aKQIKfTq59UGTyXQ?=
 =?us-ascii?Q?wbAWISW7b0Zj8D9rtOhkV9MkaEqhIJ+UitiTr3meHrw2a8HSYrvxZJ+lERHV?=
 =?us-ascii?Q?F0Jc28ndLD0AMsxQ0eaZmWDnoHuh3URLWRIQ6gc5A+Ye0o2wKT1DuWwiNA3+?=
 =?us-ascii?Q?YW489P0zYXn/xRfSanVaXr7diGqat/q1MTrfXAm0uQk5h0vT8NQOfEDsVRXG?=
 =?us-ascii?Q?3Cfvk6BL8yhaYuYhRsP75ceQJ93/57vq9iewpvIp0LUprrePj1mfchpyJJLX?=
 =?us-ascii?Q?7zfRvxs2CT8Vm4zbROdKb3rHzCcy+29C2njVf1s8vX9ZHpRkLCzdT5+7C3Af?=
 =?us-ascii?Q?Qxo85Ac8/t1cd8RFyIW4Snk905Adv0CWYxYRvMTqsce1GVXOxGFWly38r+n6?=
 =?us-ascii?Q?ork7LQbsTtyUKoxvr5ztjH8o0lLBAJxLP7eXY3SmbkKWcGXe/QDQ8P0yD5oW?=
 =?us-ascii?Q?UgxY5DIPH2qpOlO3gZkFj+PVhxC3g04w+waOG7Usvh99bNB4IYsKV8Ua6mu+?=
 =?us-ascii?Q?CXhaDeObhx81PeTTdrySWLE22UcCtFMZSwPsfMgdtsytz+Lg7Fc5VYaKFuSL?=
 =?us-ascii?Q?HbeClDGRxs9Txb+Y8tGHuXqLiLDo803ZPfM2N2rLcmUbYQcVDWpe3zpU/7DG?=
 =?us-ascii?Q?DcZrUdVwQCUzahcMsUP4ZiTF55rjJrDSV1AVvTlhkRyVb3NV5P+7azGrD3dq?=
 =?us-ascii?Q?UhvUDTpQTDmYR/hofFwKeq+3Biku+Omq0N1zN8mjr2ddPOYBXmIjYaFS772H?=
 =?us-ascii?Q?Aen+cTRT0CeYyO4MjJoapoILPIHBo99a0lAiUuEhcicbnNeGmfMg+HsI2sdQ?=
 =?us-ascii?Q?s+86HN8ExoO3VYb4r6c+IZtThFXepx55GzcRwsUW8hRCu5VO3eyCZshx6tj3?=
 =?us-ascii?Q?rfR/MYQcrBVOGu7AHMOIGC3MUqyWAR3r9zKz/W6Ou0RSkXLLIVqzUiTJ5eL4?=
 =?us-ascii?Q?uhnSnzTvGlkgnBhYkRziPWby7xTA+gCeOllPekZQC4GVUtypqsQzuqF6CBrq?=
 =?us-ascii?Q?VKvDE1E20CbDJLN0yXFnQ5ks2G/NKpwONTaZALlg0ndCLjECr9UMydtrzsUP?=
 =?us-ascii?Q?qwZOwx7VB/U/IFl26ekeiBWNxXzqP86mOhc9g2iQbAkME+m/NsOzctVlAFFX?=
 =?us-ascii?Q?BEnsDSNHyorafONi79ld/ls=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dGYjy809quEo2/tgpXTuSqjfh8Ec9j19KemPO28/INL4IjtArM1VNKD5Mhk1?=
 =?us-ascii?Q?JdE9RpXQNy1lHt6E7q4D9TvECqDEoEwKB6iukBjkHFrJdPsnaFjBxl/F3osv?=
 =?us-ascii?Q?3g/PzPvYQpyq4wMe4xmZikCAh5vj8QCUKuWhW0jscqAnUVHjD8R+7wV7TkvJ?=
 =?us-ascii?Q?amh1O/mJ2NIwIFePuZ7QLeLVHB7RNL66I7kRCI6Ofr03+FJ5Wv+CJNwmbOxI?=
 =?us-ascii?Q?BCbMZlWQFY/rbkGqg9EqR8trPups1Gyaxu8XoPQuywDkpZfssXTTy8jY+la2?=
 =?us-ascii?Q?e/yE7eBBQ6+Famw2EnOHzKLmVK5PF8bVX4UF3QAikt8JIpAeX7SuMDzjqCBJ?=
 =?us-ascii?Q?SAjF+qzd/sSp+Nv7TVQ1OMcGn7shmUTGIqwoZGyKOq5s8zKj4GwZIqTCG23q?=
 =?us-ascii?Q?IhJftJUCactPaMrpexpidrmPkXl1pmnsEWdhddmc3hbUOP0q5zQ8i/TEfFHp?=
 =?us-ascii?Q?zjzaznwU0pp8DZcJyTaH3cNOkd2KgrNTSQ6iJTVxcElNbFE5eqAqvESbdQnY?=
 =?us-ascii?Q?eogGgUlr/tG6NfiII5UscLK/MWpqJvK6UuhnusGEYrEHSqWdx48UCkS7Bv8d?=
 =?us-ascii?Q?gyTdCOT/z2fcmtfMRGi83SwsXeu8Mop7+feteCtrNVsk3m661pW6IbYM50Q/?=
 =?us-ascii?Q?kjJ1xqyvMz6B8u6rKw20VHLHTlIQm28Il0AtJBF1hXINxV9aOvf3CmW+MFYb?=
 =?us-ascii?Q?ebsgI/FD+poa4vgTB18ffNhlhZXfu11zcXRox5o3zVh0lUY9+XpvhdY++1du?=
 =?us-ascii?Q?DXa5RI/QKQBYI9ewW5w+vATkwKgmqmLjlFu3kOoThQlxKh5qMqq6766ex4ja?=
 =?us-ascii?Q?d8Vx1fgLJPDcrpsx4fXbrvky1V4dFllptJi16nJdOubdlaf0foxHGltbLAsn?=
 =?us-ascii?Q?BPumD+3V9pLEwFg9drw3nYfFomslWICPKvfFJgxROBmDXJ8QYTd4zMndxxvX?=
 =?us-ascii?Q?BDdzuQOsiNPiDzNOP9RTneMo9w/bsytrOeC02SJLqvzIe7LLus1RJdR76qBX?=
 =?us-ascii?Q?KJkbyfdYvsVhXvwTEdk0fYrADL1YQkBAozfJpkj6sgwtwERLVh28URsdGIiy?=
 =?us-ascii?Q?ouNuKKbcxnjEfFcgGWCCjB7pqEaHNU1+halv2NOHox+8plwEjtXcqkCL6puP?=
 =?us-ascii?Q?aLRU9purJNU64f3dSFYoNRfj1thFVnRxfSsQqwhMNVl3miQu//o++hQSpMuE?=
 =?us-ascii?Q?ohgoV0QWb11Vt+5m1G8uMC0kL3TwDwzuIuGOLhgQFD3Id5GkFJTL5Dsu/aA4?=
 =?us-ascii?Q?wzZJi3tcHIBp9xxZqp9VBWmHBBxxRd8Cq6id40HSrYbZQpzC3mBeheo7YWeu?=
 =?us-ascii?Q?cOQNPtJ0gHz3n0RWKm6JVEDiH5rQX/1atgTKwtXdHpk9P7bkubmP00yCZISF?=
 =?us-ascii?Q?xqp1YYo3TgqbYTSGP1Xaprzy5UDQyGIDiBuiK2lWhHvzh5cBLJ2igjXRx3r6?=
 =?us-ascii?Q?eOOiiKG95PfEzzpHF6hDMgTNCku5sp0eYxSIjSZZRT+QLx+m5r9qRdduGwE5?=
 =?us-ascii?Q?lM5lWzn9VlvQRcKFnHdrXuZ+AOdlDpu13YFDLXvwF2vUEiUu6ceNvGYgEwCY?=
 =?us-ascii?Q?FXbaGOl6G1iZ2Q564IFpXztqJfhR2ZiVdrsGTK/S1SPof+66ADmQN2nILepi?=
 =?us-ascii?Q?UjWPH8lPepYBpqVKd++enmmZa6wyMvBmgGh72ip7v7Xb86sewMai4LjBUF9D?=
 =?us-ascii?Q?LjGhL7ofhTp5yio32p/Deu3AGFF0N+3dJpXvoYu4Hp4E/pJxEUs0dWodjW4J?=
 =?us-ascii?Q?kKd3O5/6+A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0502c7d9-c299-423d-1164-08de659d901a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 16:34:13.4853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KjjZJTGKJl+r0sW7xljSwB9A7LHWzwKcM/HfLBGETac3WLqePUzqpeep0AXxAJRgOY8P5ZUHzsN1pBXoKiEL4fiMS7R3weFjLNyNiyjlhnY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8441
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770395659; x=1801931659;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7Hezb4FEIFzVSjuBfYc9CgpY45VH1QHK087BOOXjfu8=;
 b=FBsK8KVbMo6q5ob81597i7HDIYxNiB5HAKTXAlXws38GO0uhkxXQLOhp
 75ijmOoPIS+67EeFua4LVLh4dEDKMY/3DiQ//Bobd6A5RDeM1rM6NVubQ
 ROKBfoNQPu99PPYMV20A2kdMO5+7STus/nBxjMnGzqeNU5iIQ3p1VpJtQ
 xD40uhpoV4DvhI7gQgkFOqwU1SXmjzHVnelLAKC6GyQHuN/cAPKE+OVDB
 QQEApfhq/69/TrFCPAzoUgIUwltkSykx8UxwtopfS9B6jGBubAkw31yh5
 nnUJMPgK4wf44VVW+vUNihJEev3dXO2iVRu65C7HrgGWikfTLsEANlT35
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FBsK8KVb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/5] libeth: pass Rx queue
 index to PP when creating a fill queue
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.769];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[LV1PR11MB8790.namprd11.prod.outlook.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,lunn.ch:email,osuosl.org:email,osuosl.org:dkim,davemloft.net:email]
X-Rspamd-Queue-Id: 9A4B310055C
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
lexander Lobakin
> Sent: Thursday, December 4, 2025 7:51 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Nguyen, Anthony L=
 <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@inte=
l.com>; Andrew Lunn <andrew+netdev@lunn.ch>;=20
> David S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>=
; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Simon =
Horman <horms@kernel.org>; Keller, Jacob E=20
> <jacob.e.keller@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@int=
el.com>; NXNE CNSE OSDT ITP Upstreaming <nxne.cnse.osdt.itp.upstreaming@int=
el.com>; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/5] libeth: pass Rx queue =
index to PP when creating a fill queue
>=20
> Since recently, page_pool_create() accepts optional stack index of the Rx=
 queue which the pool will be created for. It can then be used on control p=
ath for stuff like memory providers.
> Add the same field to libeth_fq and pass the index from all the drivers u=
sing libeth for managing Rx to simplify implementing MP support later.
> idpf has one libeth_fq per buffer/fill queue and each Rx queue has two fi=
ll queues, but since fill queues can never be shared, we can store the corr=
esponding Rx queue index there during the initialization to pass > it to li=
beth.
>=20
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h |  2 ++
>  include/net/libeth/rx.h                     |  2 ++
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c |  1 +
>  drivers/net/ethernet/intel/ice/ice_base.c   |  2 ++
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 13 +++++++++++++
>  drivers/net/ethernet/intel/libeth/rx.c      |  1 +
>  6 files changed, 21 insertions(+)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>

