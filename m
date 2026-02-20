Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFLwGEspmGlqBwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 10:28:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E015D1663BE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 10:28:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B8F641868;
	Fri, 20 Feb 2026 09:28:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hMmSctpdXLii; Fri, 20 Feb 2026 09:28:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE1C341869
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771579721;
	bh=90vl0iDBYh81AMAflQtsvNa0PvW+eUlbDg+6yzjuHYc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=36J3mfQ0Zyj1IT+eu1HjDnVq2J1sdnAVV6Qy4vMg60RwjYo3dy7mfPx+xvVunEazY
	 ka8znURAnPYfbhxKUzpLcPn3+BeEF6BmtVWrGm+0BfyH8KHhqNL6e69I012oOXmVgd
	 bATk+/UQKpSLVYRDRD38+YarNfGE/RvQ/FvNWKE+KY2JbOlJ8vE3Ni1sMrLvLfhAh7
	 4s8CZGwr+POvWmG6R9q1kTD3F+lMUpADW6EijX5oIIhNtD8rge4DI+dDWXIZLaGx5p
	 cr+kOOI0omR2j0cRDsyQ2O8zS1sMc5QAWbAsjzrhoDf2sH557w0v+1hfvOmIP3/qX1
	 x9kcqcP6l4B3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE1C341869;
	Fri, 20 Feb 2026 09:28:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B965C183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:28:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA59041864
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:28:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G-ngt6kZEw0r for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Feb 2026 09:28:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B0D3841862
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0D3841862
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0D3841862
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:28:38 +0000 (UTC)
X-CSE-ConnectionGUID: m/Zp1s1LQ8qlW93AgzyEUA==
X-CSE-MsgGUID: lCk4W4PRT32xUd1lU78dtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72373652"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="72373652"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:28:38 -0800
X-CSE-ConnectionGUID: A+dRIgzsSr2KoTDO8T6tpw==
X-CSE-MsgGUID: 1/DLYPRhREae3v+hG5ToqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="213383581"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:28:38 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:28:37 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 20 Feb 2026 01:28:37 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.42) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:28:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QtIFzb6Hzr3DEKV4wZrDdWtAOMPgY1SK/6gERVTIYy1zcUbCKIklezVlT9eMEF2Yo1Oii8rwocTj/WRMJdwUk5KgPM7IIIkU17+h3bTErXhNmiEDUaLFJQ3B7CJrJYbVS+vUi4OV3pHutbBdkEUiveP2wjHLHkQLGEYgQ31XIZ71ZDDe40crDO+U/VhwnHqWaysnwgmYrY3jPBYhlc0qDqkdkIRDIJAs6q2Ifw9s97Rq2ZlZvxmhHOodCz4Z1BMA4JxhjyXwRnLCk8LH8lusJDi+NDawXIA99Z+DeDlwr5kMlyNnbJAafaO9FQw3N4hXjfpDi+65nHz04xkhqWDMig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=90vl0iDBYh81AMAflQtsvNa0PvW+eUlbDg+6yzjuHYc=;
 b=oV2gdJb3NXI6mTWLG3RzVrtQf0oNPcbn2UAccu3enTSfMPRnR6wnRg0dLqh3xfvlhOajJdxe47xJZtkCueCPkka/QAkXpyb4GOBaE923XP+OsqEHouFB1m/A69RcN78zTFeU3qs8Axi0j/HHlWLg27Ztb27NGxny7L+Sa7CHOtm7undpLhLExtZqGaST01nsc8Sve1d75e3sSVsPZutP+6SAOPn9aMyOpSsHUd89+AqUdvsgWMaEMcFu3A4OPSVUk64XGrIU4ZL+To7PCprlKzPMf5MXKckeL4PlHpJ+FLFageMqOKdz6m2upXNzr/Q0F3HYFwe8TRNJvJHWonYvdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BL3PR11MB6484.namprd11.prod.outlook.com (2603:10b6:208:3bf::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Fri, 20 Feb
 2026 09:28:34 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9632.010; Fri, 20 Feb 2026
 09:28:34 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nowlin, Dan"
 <dan.nowlin@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Thread-Topic: [PATCH iwl-next v3 4/5] ice: Extend PTYPE bitmap coverage for
 GTP encapsulated flows
Thread-Index: AQHcokq33CB1HL8Dx0+N8RRb0LYcWbWLUe8w
Date: Fri, 20 Feb 2026 09:28:34 +0000
Message-ID: <IA3PR11MB8986CE81B5463CA23B4E2DC4E568A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260220092409.718632-1-aleksandr.loktionov@intel.com>
 <20260220092409.718632-5-aleksandr.loktionov@intel.com>
In-Reply-To: <20260220092409.718632-5-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BL3PR11MB6484:EE_
x-ms-office365-filtering-correlation-id: ac63e717-666a-4d65-195c-08de70626b92
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zXNOOu49Jk53zRpyp91P6aDvZ6vhqv5eSvgQ9IQMdWrxdRGSSEAbB8VKklBx?=
 =?us-ascii?Q?diFPnkJLCbm+J5pP/Q2a/n9LWLmSQrT8nSPWcrGkJQiTWGSiwLO/lOI0cCpg?=
 =?us-ascii?Q?+EbLcsJiANC3hGu7thXZiTvGMm2WOAtFucEW88cqEkczat8gHn/ed4Yj3HZu?=
 =?us-ascii?Q?Pz/Z5K8pz9JD5yX/8J51qWzIxVsTHSmDSZp7YilmA+QhRh/qt25rqt6fo2EN?=
 =?us-ascii?Q?apaTmjSi5oIZLewZIiv/LNYmI9LanWubeKz2+6h7WSjNnyurdJH+LBNNs2th?=
 =?us-ascii?Q?T95WUxaL9q50jWfHGPL+bckzT9uKZyEOdI+rwsZFbA6fZWD5Zanfx1diuT8v?=
 =?us-ascii?Q?A7K+D0POLqyaQXh752Ii2B+TFcrtK7yaxY0IiyQ4MQlOj2XYdrANkRVe+za9?=
 =?us-ascii?Q?kPuBzcbGyDvp0rtrsBC05ZBIUxgLU3wu2Cxgr6oCRRxb/LAFMIkjJp6mY8pS?=
 =?us-ascii?Q?Q4l16zO7zNzwPr10yiCC5oT6DebgZlqv/TJD7C78QBVQgn2p80hvX+6Wm1ji?=
 =?us-ascii?Q?yUHSgH9q9ggVoHtNTgYxRmH8WwTKOhIn+5PT60NeiCQWKmIQBgBF8SQkrF2v?=
 =?us-ascii?Q?Eoz53etU4mB2d5m/Qas/HAP9WKvyZOvi/aRuzYtJu4OGvMQPjt0bMdWbPoPH?=
 =?us-ascii?Q?TNzhr1kt05BDRdnw4ulra0D7owI97TsyvsmeydMXJvlahVbl89ZMtiNuEI75?=
 =?us-ascii?Q?n7fnjLUuqbr27alvsu5WW1D2LC+f75MuQwFHMQmyextVoGP8vW9OHvBWqkQr?=
 =?us-ascii?Q?b5dz6GlGFqxkNXql9pneKUAEY3pPCHQjStDtor1G+7CSHufDfopcx84r8bzs?=
 =?us-ascii?Q?arxrOCFsIu/wmY0wg65+K2xDSvVWfR9ZJoxSNR4lVDJa0cPl2/czrpU6hVwo?=
 =?us-ascii?Q?RBX5mxMQpvxCTlgWIzJPbf//p9Jg5dnCMeBC5JZXy+mUpq5GfCZYn9fY+2TN?=
 =?us-ascii?Q?4dx/5h5G7xKzzlQgKmuzr7Py+B4xYyTDZ7YAMa6NBsBl6DAGHSKAfI35S5nO?=
 =?us-ascii?Q?hPQh5c+LLpQLNv82UE0MU51ZX/D6x9XCfj9cymOU708KqE9unZpITFlFhr6a?=
 =?us-ascii?Q?xCrYv50MkD9luLrzZHU8PSskigyJ4gd3LotIJCiNznP8X5+Mk1HoONeQyQKX?=
 =?us-ascii?Q?4pFtD4a5n/inEcPjqWrRADii4vke/Z3jTIA/quljbtlscQXCNxUmlk4wBDra?=
 =?us-ascii?Q?DRtnTKn4Hpnznt1TL9cSl+QjxbG52vD83FojCcc6CG4e2CLIqNflEOA2HxbU?=
 =?us-ascii?Q?DQJaPuuyu0C8tj1yDHC0bM1RcLJmRoi2CzMQNlAVn9n2Vjmer5F4unjilA12?=
 =?us-ascii?Q?DJE3nBEaT/4ZSjVYpoGO51+byEnR3levVoQTIY7Fmp6vpb04AS6O/PmVHPok?=
 =?us-ascii?Q?gOROcsqrzyV0lxwfR3bOGjKNTFNuoLqh+OBqPZYeVTxrnCUHbkb7d3tScqEv?=
 =?us-ascii?Q?nkBLOCIAWOztF1AHh5xOcoObIRPEEuNlK/AxabBBgtqk9/S93DX7s9kPWowT?=
 =?us-ascii?Q?WIwTIfiSObKDk8iLJ6H7MI1GaMwdPzGu8AuDtH+JEPw2FMeEaKjd2tmICSaO?=
 =?us-ascii?Q?LyET9itsUbcyu8AMMACMUfNbQstkepG3aKNilJZm8Tg7F/HLsfnnEgrMOyMr?=
 =?us-ascii?Q?eBDl9jCQ5nIPmWwZK+R1vBM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Hvlvwn98CwAQ6kjJz2FP4LSnfxuZOrjEW5WAqyk3/E1nlPsxcr2BsTjkkYz7?=
 =?us-ascii?Q?gs0KqNrYCXyoW0th33OVGr509aEbkfeFVFj6XBvX1jPmkRNixZOFi1f/yQ4W?=
 =?us-ascii?Q?eUerMZJ+ugD4gfIKVXkvYVLKmsGovaFFIzG+J3X5HgFOOlmYg5Ji2bdzG1eR?=
 =?us-ascii?Q?3lNMOxHpu6yZ0TvTi8pq33+YluB4MM0sbi49kM7ErQyPHDwFCz9BJu266VIr?=
 =?us-ascii?Q?73t4qz2NHTQkaj2hxEoSmcT00IeYR2NhkycHPYIy7bWB5cR0bRkIoLYfL6Ic?=
 =?us-ascii?Q?UN0N+jyq06LtEZiNxG9yc4ACp8cWmDVOh4yirAtCWCZv1oVQLrOY1xkkaYPX?=
 =?us-ascii?Q?lUZU4pFqh2Xfq1DkEXZmCAn+ET++0BRUsen92aHFUw36GZnPNNYxQJEDNAfR?=
 =?us-ascii?Q?1mDNNO0P2U3pgZBgrzpjlQ0nLgX5QTC9WVPAnvvPxKqJxl0Nk5h4K1gwa4sM?=
 =?us-ascii?Q?nifZ3p3GAesdqKd9dqMPOhXlr/9QsIUyKxTtBVbT+bfdBsAH7Fy6EUS1BzWp?=
 =?us-ascii?Q?rYIRYNVZb6yxaEpU2jrDY9O0g2Cccty8y49eA7qw7yakc2IRPCB/GSG/RUBT?=
 =?us-ascii?Q?hcNGX7kqrhDEPMvf/hGeJf9rtN0K8/FlFUEN8dmaa6afsw1igrFuqBiRoeiw?=
 =?us-ascii?Q?ubHNX1Ijy7ZdrvPi2M2hUUeg74w1jXJuRcrEGb1nnPtw6VEFIhvykN3t/969?=
 =?us-ascii?Q?iWk5QTF2gYR2bG7Td6rc+7NGC2Jd6b8EvmtwpsSY597O9oWYtYtwrSMfiEvW?=
 =?us-ascii?Q?PTTPhP5yOOHoFaSHgUAeG4NxKFvyDrOerL/5cufj5zbLEVsA5Uf9mDAnmVf2?=
 =?us-ascii?Q?55EyaXiT1h1XvyHNYih5OgJGhcys5wG4ZHDNQZYOEwWCvCaZLXmV5UBXAZqQ?=
 =?us-ascii?Q?Snp+DVdMbMGpaudIwcb6K3GMSrnMxMcdG69gEuNZ81MwN6wx7H0QGasV0ExB?=
 =?us-ascii?Q?77gtWOHT9/Hwkn8qaMvn7skh3NQO8NKlYfIp73Chg78wJ6NuwHkgu/5ocDOL?=
 =?us-ascii?Q?K7m5MuMjO22WkZ5dvNFIzLsnz0ft7B56YUTUmvdEOYJErKbnLlkjY7Oy4rfY?=
 =?us-ascii?Q?NkpZSfU+i+I4qE274MNDoaK4bwYYpd66Iu4ravMTA4VfGBBt8xaIJw0tY+yo?=
 =?us-ascii?Q?wazx86AQpblyT+46KDzg05l3PjoEtDlgiapv2HSBTHNb9rbU2PvcdkpKbYGK?=
 =?us-ascii?Q?0uLo7KLhb+Dzt9+4N/UHL2JHSzfjMcuCvWl8coYKFjLpwiW9tlwqWVuXb+1A?=
 =?us-ascii?Q?Fz07jOdSAxZ5CqF2mW08ZznFDLqEtu2Bw1Wf3ibBt1wHxIB3COcLTTEGTbKK?=
 =?us-ascii?Q?T5FtyaDGNSIgiQXzE3Cyc6S+aT8oJtKImQWDkGxp+35nQZWq4becxgEN0nMV?=
 =?us-ascii?Q?7oS5r65Ia0b30xz0cGIUUtkpji9m7bBqXUR2Oyca7rhgv7Od8IEzaohN+xhL?=
 =?us-ascii?Q?bdSMG9IDY99mzOi41vtm1f47R3jAm/on19s4Igc3zmVSxDJVGO5ANb9+jFf5?=
 =?us-ascii?Q?/MqygdDIfNDLIA9GqBrsiEVscpDBrw7JqOkAjSeEOnauxOWFE1dGwd38Wq/c?=
 =?us-ascii?Q?JLRomSAXDB0rqUKeWbDxEt9f2EaZfcJuaE/rSf8PFivFQs+VyNUxDSYcEqqR?=
 =?us-ascii?Q?esGG0qBiX4K+YroyLJpxG/xDItqRc9XgoBeVomMpgaEl1vXULxZgpo5Qhu8w?=
 =?us-ascii?Q?tJmxefeO89c5mYvb0gIcKgmaAlSKP2DDBXkESHgV5FCy4hmvF5r5aTnq34CJ?=
 =?us-ascii?Q?Y2s6Tm1Z/g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac63e717-666a-4d65-195c-08de70626b92
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 09:28:34.6457 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /p2fojKhOngTdswj9JDGLgzRrEQ4kTlEYoE5Ol5jo4b4RL9JVvMGF9sTchyXZRMybstyVEZnYVDYCWHGaMgMxrwaBQFXXlZsYarkJz6qrEw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6484
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771579719; x=1803115719;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=90vl0iDBYh81AMAflQtsvNa0PvW+eUlbDg+6yzjuHYc=;
 b=RH6yXCZqNcWCy1YyPs1kHcTosQVEt+bB0RMijaFP3izEyqFeSH7EGYi0
 OL5Koib/VKntxvEEqnvo2A+P5lG5VJH5/hvmjyte1pp6DUWQQKsnUjfuo
 ujZ+NcGa11RzofQZswr6/YWSt1pc9D/jx49qZMp6xUjvTjZ8J2KVKI6Fe
 ZdlysKt7iL9OvU6ENBoKDOJZiJD4Jfrj0KwPcUOyRXcoR6eBct83jj+bD
 nC21NQKipN9SGY+T+wcOWb+9fW/A6ZXBKDGZ64g233DTveJS95rT88wCR
 sEawZmOfaud5zQ0pXx2QfXln3+rmaIls9CDkUIKnkhoYEkLeZ+QNMbVqZ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RH6yXCZq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 4/5] ice: Extend PTYPE
 bitmap coverage for GTP encapsulated flows
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim,intel.com:email]
X-Rspamd-Queue-Id: E015D1663BE
X-Rspamd-Action: no action

Please ignore this email.
I had personal e-mail issue.

> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Friday, February 20, 2026 10:24 AM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Nowlin, Dan
> <dan.nowlin@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [PATCH iwl-next v3 4/5] ice: Extend PTYPE bitmap coverage for

...
