Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3759FA4351B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 07:22:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 831BB818A1;
	Tue, 25 Feb 2025 06:22:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 652tjDVg88CP; Tue, 25 Feb 2025 06:22:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87246818B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740464560;
	bh=pdtJikfvHT4p/UVpDSnDFjm+PgxePfmWe+2MPcJx3Z8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ftBQX0xgb5dBs8lyuOrJzDdnMJpPN7QkeYS4MOg0S8IO0h/gV55TvkCh8HrJPPbPT
	 LeUZbDQqzOioTHWkJLCMRDVxmhF2ol42AaqRlbM8XGQNteNVhnNUUkYINWymP2Yk/n
	 zvot2M4/lq23JyEtl/wNN/unDHcpXZ+sgR+stDodKscIjIOV/BkoMFlf5ZC4Pk2QVD
	 z/XBYHzx57uPa27KOsZwMDzEDpOIK7aCTDs/y9Yj0FczxJuo9sVmDWBtr2drBgX63E
	 ewLFYmV+ixM2vgAN2On3Tkv9gtavxHOzZyMdFfEpGDD8h9Mjqo8uzPiCZWVyK834Gz
	 BmL/ci95Bodhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87246818B5;
	Tue, 25 Feb 2025 06:22:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6EDF52DE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 06:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43A9540C49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 06:22:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lMFPunIPXDlX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 06:22:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1B90E40C20
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B90E40C20
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B90E40C20
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 06:22:36 +0000 (UTC)
X-CSE-ConnectionGUID: fwgtTCQqTyyLm1qd0SOmCg==
X-CSE-MsgGUID: gTtzwRW7RxaBiuisdxMvbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41099005"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="41099005"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 22:22:37 -0800
X-CSE-ConnectionGUID: P667Dd5NTNidCmjPhXMMeg==
X-CSE-MsgGUID: 8eddbZlkRpWWSWZFOBF8TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="147128050"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 22:22:36 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 24 Feb 2025 22:22:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Feb 2025 22:22:35 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 22:22:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vtA6dl8n4WZjXkNkxblKA/CAUt+IPNp2Zvf69qhl2/twHtkiU0034Syy5ysMVw1120E2RHgtdB6nYMfhmhqkgghtn43FJkr7yC74TOjw6oRBWX4naMipMGo7k3hnF8PVaJoDwWhNoxbVbvQzcnAT9yYLTaEAeIhNCr0WQFCr/o7woiNBV0vgMkTgxv9jnE1iYHEV+w3hKjJhe8jpJbVpkiJPtY89NfXzgG1cudZX5UavZP5ZrJ9R2WHXKsA8f1syuognBaVZVTT+iSueWsU+eQT7jLPEZh9HEmWb4diF7X8jGQFyMlvoLSEEmEuDbSxWGq0V1PsQJ0hCq7te2GaQ7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pdtJikfvHT4p/UVpDSnDFjm+PgxePfmWe+2MPcJx3Z8=;
 b=SYRvSs0GSITgJCourdkk9KZlzca0iYemDiFshrD6xpOzJM6btNTVbjPynOuFCjcIicXGzcZxBuB0YgLaJcazrMXpxAqefr7nOx2Pw3+touYFvtQsGG1rd2uYJrJyNXhR3k4vW8QLq+e32Cr1GoaqAcZbPFhty3cF1fNaXSTEhcPCZC4CVAu2LgI3nByU8fuwn5ljy2FBsWp9UdYyai6cbY8R71EMxE0+fM1FfKz6ZkcP7jyZo3xPgIIscwoE7uxjozjWMr220ep1M6YJFlEjlLYfYSvthOkdylpDSV9XDR+W6rwYj+ZKx7I70GbAWu1rYcpgSX4eBRF9iGTs4ixG5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SJ2PR11MB7453.namprd11.prod.outlook.com (2603:10b6:a03:4cb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.19; Tue, 25 Feb
 2025 06:22:16 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%7]) with mapi id 15.20.8489.018; Tue, 25 Feb 2025
 06:22:16 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
CC: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: do not configure
 destination override for switchdev
Thread-Index: AQHbSkWYiVJxSFK2TEuslY1nnnuGU7NYBpFg
Date: Tue, 25 Feb 2025 06:22:16 +0000
Message-ID: <PH0PR11MB501306A25B9BECCAE3F7145D96C32@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20241209140856.277801-1-larysa.zaremba@intel.com>
In-Reply-To: <20241209140856.277801-1-larysa.zaremba@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SJ2PR11MB7453:EE_
x-ms-office365-filtering-correlation-id: 2c69774f-b448-4dc3-aba3-08dd5564c035
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Wv84zW4SFuQv6VUskH4ddFq9NvWq3joBMbXVNj4OBl3esNn1KgKCa5F/HepO?=
 =?us-ascii?Q?/LK95BUJR6+i/lj61AN8/0nvW6Or0YESTIo+ZhoB+eKM6hBhtFmPIjdE/7cK?=
 =?us-ascii?Q?aKxItqIp+xJUoMcMRLRUqHgp3HtzkXTKHgBYnCGvWreryodP5VgYDj/1skVR?=
 =?us-ascii?Q?CWcY2k4zreeHZC5NwNYJICan1rfB6B6fzfI7FfzBj+ktcwZb8EyOUn1ARz31?=
 =?us-ascii?Q?BDUyA1k7J9tOV5/rn13t0MPVrultZDblZsc3C6VL1+IkOZtzYFUZvlhavR8q?=
 =?us-ascii?Q?mtUrX9uQDf+AE4c8mbIc/DvIrZesx8ktjXo47kcLyZ5LPPtRAFcPOOxvoLKt?=
 =?us-ascii?Q?uyCj3ViGtFQiwVws3cp+OKiMr7Qp8PBDcf+GJ0K3zhE5kRfm+QKl8q1uFFh2?=
 =?us-ascii?Q?8TNwwEkfmM2sVPhidrFnokSME6PRybXEa1N7hw2TUqtA9rDEpIILtNcNvOAM?=
 =?us-ascii?Q?QBIFwrQAYhJAF5eCVog65J69Hr4fn18YPbhwXY4cjn0faIW0WuGig7flyujZ?=
 =?us-ascii?Q?pIzJH++bo/ng3FBMKbMSOkSwL4DWG+IO5glYpWsMVS3t1Wol+ULuSaGcSzZL?=
 =?us-ascii?Q?ZEGZmhA3PUICt5CbLGUdTq0LHlcefn3A7EV0IvwE+V4BsNFEd9JFUQnAjyXd?=
 =?us-ascii?Q?IAhU0JodWMuAEBoAD6hb/SNUiSB8/OZ/DdVyeGPGh4UN9zWbort6GY2TOj/L?=
 =?us-ascii?Q?Cz0WEk+iemW71vFLRCqYYhHvTxdr3hDZYJkvlm3gfJP5bFZxHrfpfdN5NglN?=
 =?us-ascii?Q?saELFTQohq98wmnemXfGEhtFecN89QQnlhdVbebzqowrfe+ledPxwouJo0vu?=
 =?us-ascii?Q?HC02TPbBllzwx5Of2LHjF22EEOOWkPLEiRFpzZAYHwrOvZFglbwEbc0ABpFu?=
 =?us-ascii?Q?fgENAFTMBQfqo7IDGv/rrSer+S754IIBxqz+cZ8ulHFnYzxAI6yKzJaQLCv2?=
 =?us-ascii?Q?jgdKItTSp/vA1X5ndDWXins3mTRrJyWa2NPilkXw2JkX4NlQ3w6Y9X9WqCSo?=
 =?us-ascii?Q?dcr9/bmBXOpXvr5Pcjcfbc5/SkmWYplqL1nm3WPhDFUzd5CUSXLxz3MZ5r66?=
 =?us-ascii?Q?BYpxasjvZoz0nY6QQLkPO2joNZrSyChm8WecRet6A/ErTE2qhvTPfrT60Jxk?=
 =?us-ascii?Q?v+Ai3c7AbqjNZ4AJ61Xjsq2L16q3f2Ok1LDots8F5CwQYeeyTsgMIFUvccaH?=
 =?us-ascii?Q?63qHVS7rzppcTFeI9Muh9WOelQOCQFj13wQVel8Ou54o+OXyGFg1LxRLOYX4?=
 =?us-ascii?Q?mFC1YnwEPeUgkyHL6VEMj0eTEGUCHHhLQedNiWf8+nfkLrc0S6nB4hR/aDDX?=
 =?us-ascii?Q?qoYYMt7vgBS9xu3r2w21R6dCXGeJ7hU4LXFSh1ht/KuEjQ7rZLO30dM/s+5g?=
 =?us-ascii?Q?ZpPs9szj2LzxcC4w/QKTwNXpxahguDfWW0E9Si6d13M7+derlVGSIC25s7xN?=
 =?us-ascii?Q?9vAATlMxOUx57XLxh5nL79Lo4je8wgPu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OMShIGAW9NIQsI3UkkFC16c5ti8rHV9NNiBSw1CZp5oC3eX+2ur2vwtsZvw9?=
 =?us-ascii?Q?Z2l/GQefBcAKVDMPVhMByKu2cpDFe7xGCN1+sITPq/7h7gOV51TZ6qVZjfW8?=
 =?us-ascii?Q?xlYTniH2xnqjiFtpZy7iajwD6cpx5gxUfCFzOujs5kQnk0xAnR25OLUffLOq?=
 =?us-ascii?Q?0OcRZcf+mM1bhCUO84agDvir+WBArzZVcIdIgyy5nkRSPeDuGNXzriznWkUf?=
 =?us-ascii?Q?LQncEE3mJTtxNx7mAvcVCNVI4J3HRwJY0E3KwuqSMUs1LJwDyhq6vBrhkxPT?=
 =?us-ascii?Q?u7+swvGO+SNH0xZ2N2pw4oGvoV2APNOEpgGn+CpQu4C7S2g3Hj57Y461Rsrd?=
 =?us-ascii?Q?ISW/zHhQC2lDD9QDD/Ou5VBYY8/DfoHGuN/gHPWR+evV/8rgw2BWQyZ1kq4X?=
 =?us-ascii?Q?4EKqavfkwNj2pMAQDc1QHd7CM+ZWSpckFn+UdUunxBu50ry0qZta+7XLdwqv?=
 =?us-ascii?Q?ox10ga+gRAt2e7KuVVbGurRhfDMAI1PQRNKahKvqElc9LAKzJP+8qDy2C57G?=
 =?us-ascii?Q?t6UwxpIaoTYaahgCmhL65Gj67E6B91pcoSWJbn+kjXqDl2gmP3nnI5RTN/U2?=
 =?us-ascii?Q?fOvBzKdTjJDiTH6cnf90XwhZpNuG3Ihdu0DjepSxwsyAnfeTCn37EsqTDq33?=
 =?us-ascii?Q?nMY2sSSlt/3+FZGtsfDxBrT78BpxPdbJJK/Vi5J5N3EpG0deFbrGrIgXmhPh?=
 =?us-ascii?Q?R8CF26go+/NZ9F6AIFyiG1lW3nEmNSC6UUDNpZrK04UKJY5ODTFQwSsVnPv/?=
 =?us-ascii?Q?GkTkKUoROFEOJZz6cHHy++gM++xzkMqR2+yHsE2hCMIYvDy5s3uBUNJ9b1jH?=
 =?us-ascii?Q?zyHne05CcvsX3bCj4K0s6/QylWezxXV0pOBmu+NvXiVDcdkY4GJxdlyxaUVs?=
 =?us-ascii?Q?EiP1ug1QHZIZuiO2vcIBqzU3N0xuf5dOClGqItKOpuzVihpkDVvhm134wUpx?=
 =?us-ascii?Q?JRJj8JSEI6UkgaLSGMrXKcB4ZpUKKWKCvsdINcNYlcuEJWuwrt70AhjpqKP6?=
 =?us-ascii?Q?NviU5oEhOu/zSs1wGPBS62DztRsRtdr6kzvyw0MLvJNKQyG3X2Vaqs4moYhx?=
 =?us-ascii?Q?B1LpOj3ZOO/fL7JnBkhPja9yTDs2R1COjr1M8nbFWTQl6d5Cy7dTvTaI7n8X?=
 =?us-ascii?Q?+SAZ4P8Go5BUCbV/zswTu2Rb8wDbNjNV6k3lHVTk8K0TkXSEr/CpUqUGdliK?=
 =?us-ascii?Q?V8pFd8m7FauuY+LjkP9P3mPUnHEOPShrHFNIyr0+A/q0o1VBRpjgyUv2z16l?=
 =?us-ascii?Q?LuPTz+UWvJNtfszlqCwrgIHkQUwzlaPKTv7VieRTc40YtdyNTh8oCEn8Kp5q?=
 =?us-ascii?Q?0joPhh6ofF/9Bxmi7o2+B1av2L1QKlakdnYnMy5WyLoqqEZ8ofcALhaUVv3K?=
 =?us-ascii?Q?sU2ARVCj46WLsHziUuH6I/xfV7JzYHVlWCUEJ5bfDocFEYwnTX1m4SEmyiS/?=
 =?us-ascii?Q?8eCz9j7pvKgNhzd1m7vtimM+yDPqeymJeRxHc997nvEH/ipDs1xGYU0gjPYo?=
 =?us-ascii?Q?Yzdo3roccEU/tcjxDyouLQHNS266wcq6YFHU9aFeiJSBsM/XEYMc09vMSbN5?=
 =?us-ascii?Q?2bEtBOYC/8Ej5Uz88CDLwY1Aw6LnmJ+3tfvE4gQR/AprmokzVsFf4auh5yu9?=
 =?us-ascii?Q?xA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c69774f-b448-4dc3-aba3-08dd5564c035
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2025 06:22:16.6071 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 88PngGcJItHUbung3BJxYYGBNjvlXDzPMyqBHDhtB9QYRAVU+0eeOojhtohxkPG3I6pTD3tjs0XziOCtFinZVxZUguxw843ruzDj0qw+PE8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7453
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740464558; x=1772000558;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GIDI9G11dOszRDBGvOnByb51HwNydIXypVWETs2OWF0=;
 b=Sbns90YO+hd3/sUlkXZsiLL5Dyhxpp9Kx4G5JwOu4IrQmP40lUggNGKe
 1VMx7gzUePe3ZDUFISGzp0+rAEZZXXNNDOSwPORF8LlUmb5DnpT/5V2gR
 vL6/2u/rOx/OtxghDu3G16r5yuc86kSILqsuQcEd39bwrC+0E5yi3crjS
 uZwKLb1YUNOFKzIenO1CPZmahRyX7dMAAl42+hBnUlQFs/6C8oNYytByn
 qDKMJTkKUZ4S//XCX0xoPR1QCUANpw5lz4et7RqHrhEDsJ2Bed2PN8A7N
 KwmWuIxD0Dwp6ZKwQ3uwWUoF59zxPkVnEWraZ1ng5aCxNk2zKM6ZaJNN/
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Sbns90YO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: do not configure
 destination override for switchdev
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
> Larysa Zaremba
> Sent: Monday, December 9, 2024 7:39 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.or=
g
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> Eric Dumazet <edumazet@google.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: do not configure destinat=
ion
> override for switchdev
>=20
> After switchdev is enabled and disabled later, LLDP packets sending stops=
,
> despite working perfectly fine before and during switchdev state.
> To reproduce (creating/destroying VF is what triggers the reconfiguration=
):
>=20
> devlink dev eswitch set pci/<address> mode switchdev echo '2' >
> /sys/class/net/<ifname>/device/sriov_numvfs
> echo '0' > /sys/class/net/<ifname>/device/sriov_numvfs
>=20
> This happens because LLDP relies on the destination override functionalit=
y.
> It needs to 1) set a flag in the descriptor, 2) set the VSI permission to=
 make it
> valid. The permissions are set when the PF VSI is first configured, but
> switchdev then enables it for the uplink VSI (which is always the PF) onc=
e
> more when configured and disables when deconfigured, which leads to
> software-generated LLDP packets being blocked.
>=20
> Do not modify the destination override permissions when configuring
> switchdev, as the enabled state is the default configuration that is neve=
r
> modified.
>=20
> Fixes: 1a1c40df2e80 ("ice: set and release switchdev environment")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c |  6 ------
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 18 ------------------
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  4 ----
>  3 files changed, 28 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
