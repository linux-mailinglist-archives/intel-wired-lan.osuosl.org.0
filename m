Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA877AD84DA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 09:50:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87D43406C1;
	Fri, 13 Jun 2025 07:50:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bNwcbZYkjCGU; Fri, 13 Jun 2025 07:50:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4A4A4066E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749801021;
	bh=7CHipAcC/Od8LKJUgMw+pazPIkHT7V2aZNR7atZ0QAM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SNdy6XcqKJHatvIXG68OH8tSx1uRx5SVFboMKG4/aHfnCl8RbR3KFUB2tKfVJHBfD
	 SZoSumsZlYJ4YxqZp93hqOSCHr5G6SEt6s4FtYQkFl3rWHYbqpa1mOIE2Rreg+ssDb
	 Unegkko1bLDPg+zD1M+UHMiP3R/DDaW079WrweYuQcXPr232ETgZk3ugLyIplCviCs
	 RP0VY0WIULZCi485/qmUaF4J+r62xk3s8W4pMXq0iP1ILSPIlo7hJ6cgGdt0vN4tP/
	 8RNWDoOP6HHTniCbRv3pCU1Z7GBTdh6ZHLV5Fn7yHOf5Nz1d7MUC1FXGy2Umtqm46K
	 m7F0Oo/EKkfEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4A4A4066E;
	Fri, 13 Jun 2025 07:50:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C8921BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:50:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E540160A6A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:50:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id feE1fDLn2l87 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 07:50:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 30FF860A72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30FF860A72
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 30FF860A72
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 07:50:17 +0000 (UTC)
X-CSE-ConnectionGUID: RYzGH4znS4SajWILshq7XA==
X-CSE-MsgGUID: hudqbrhDSWacbUDWK5fp2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51123115"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="51123115"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 00:50:16 -0700
X-CSE-ConnectionGUID: 4JUhjmTxRWmMmSrLkPxJEA==
X-CSE-MsgGUID: hO0GlpudTVCJ+OMcdDf7yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="148314747"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 00:50:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 00:50:15 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 13 Jun 2025 00:50:15 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.73) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 00:50:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PSZuuH/+wbJx3BGblL+LBlGRZcaXYLCA0ZXZKjQ70Gbnw0VRQ6Q4Oo1Q+zRqHYwgFLUhyLJ/lEFHatLYHYqiI1qnYA/UZ+mE2WljFSw6PFGdhIAtPMumLXsjt+q869R40aZtmXQSeJVa+BSifDynVyXTse8DhzYc7y9ZaMRvZ6CLtugN9li3EoGT2Ajlk1L7XTMJMPDQPQYXCZrM4z8hxRH9pNbcjbu0OL5/PV/uKGg9dqNkOImkOkOQ2xHJF+0UdR+5uBJDtnlB6FLnZKwr6htbz/bKdrvDEWXE5DAznaH8RzBaWKV7ai/e6ddIKxme38AUQ7j8vK8mKVDrZI9RBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7CHipAcC/Od8LKJUgMw+pazPIkHT7V2aZNR7atZ0QAM=;
 b=oLvvI6chXtXkyJv0Qrh4xoxkY8Jbe+bbYT7rSqFkezxyfIDzT1CRcRNGjp/hM0kJ6Fnoqx6PNfzVv0cj+6S8xtedVmNZjCr4wxkZaHGcaF8ZEutT0eUwCYs/LS6YYt+GvF+ZYUpyDuY4YWaiTCz9AF3yUs/ZQZLzcFsg+dLPdf6fthTyOUnCmObwkpLh6Cjy9V4Zs/bFiza5lI5o3Qz5bnSuCgKV3Za6rxYfqNAO3uWurLZ3skzGFy4a0hsj73a5jh6Er79kLhOClmfTMLKo+8+X40CUAJiyRlkzwuY0KUBF+nfqhxopW9PIv7fMarhgaC+Dr1b5ipJuSLUejLl6RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF691668CDD.namprd11.prod.outlook.com (2603:10b6:f:fc02::2a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Fri, 13 Jun
 2025 07:50:09 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%7]) with mapi id 15.20.8769.022; Fri, 13 Jun 2025
 07:50:09 +0000
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
Thread-Topic: [Intel-wired-lan] [PATCH net-next 6/7] eth: ice: migrate to new
 RXFH callbacks
Thread-Index: AQHb2/7Jn6t4PJhPYk+kmoWojeUHbbQAt41A
Date: Fri, 13 Jun 2025 07:50:09 +0000
Message-ID: <IA3PR11MB8986F23095383D5802A34A88E577A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250613010111.3548291-1-kuba@kernel.org>
 <20250613010111.3548291-7-kuba@kernel.org>
In-Reply-To: <20250613010111.3548291-7-kuba@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF691668CDD:EE_
x-ms-office365-filtering-correlation-id: 6e836875-1f38-4a4f-9489-08ddaa4eeb77
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?KgelamF74z5aIlnVXKyDiaJU7MLghDPWk7TzeDfuGSsiuuUZcmGDVEPM3A/U?=
 =?us-ascii?Q?Dqhl0tifviJqIosP7lRu3V2NfAspHb56VfhizTS/aWO3KSofoRbv/gvf4UY/?=
 =?us-ascii?Q?KlDfqdJHOK9p+Ky+VVadh6We94rw6j2FDCImNMg6t3u79vJ6EovU4GR2W8fk?=
 =?us-ascii?Q?Ij0z42XXDIhD/rWz1y0M1WgNzmuXn+kAyqMy/xzyl+MyzLTFcHNpZGcV6Mfk?=
 =?us-ascii?Q?vVRfcMD/cF7V7pZJZiX1AIGnGZ1eN7x91j7ZJJixAgv2WFaI+3OAtf+pMxeP?=
 =?us-ascii?Q?+cyUotmKRsQQ2pjIT/ABWekgWUFRduRtqthe0daiS2xSScQcXDxDoiJdmMZ/?=
 =?us-ascii?Q?sP3W9VodLgkcJH3qQUNMyjVXyr67BcLbdqo05ilzn/XytzdxpmaOAwJjp/Ap?=
 =?us-ascii?Q?Al/tbYkZY22SVhD6O8kLH3eDXnLKbLnB57aZDai956ejEl94ptvsQErf7mpH?=
 =?us-ascii?Q?jNBgjOTKqvjf1YW7dMLXawKS8hnSEEGzlk/XaniujsjknH5kq0UGEZ20reCC?=
 =?us-ascii?Q?FGwDM6EH61/VFcLKZUxKo/eezJYV7lIRNUD089HKDz+aYfjATHL0N3qK05k7?=
 =?us-ascii?Q?fxSeUz1xzVsIsvA5TyqBmRIHB5FA/k7UIjwd6/mia82+SfZr6YTULyI6qnui?=
 =?us-ascii?Q?QgEDT5chrGVx2YghXtDbSvGXfJ7wuje8PPGhzyLPX7HtCoYRNXu+t22yR6mi?=
 =?us-ascii?Q?+f77W1bm+bREowdlbInfXqul2tIxxKHF06QTPcypQST3XEOW/N4cPg/Q8BOw?=
 =?us-ascii?Q?hN7Nfk+d1fz5xSis+VjmGGQVwWOybMGSnrc7DT/31HYJZ980vW71q4Wz+al2?=
 =?us-ascii?Q?0veRCIJMehRNOirmVkkQqJGWA3qpXZ1H1cl590ZlqAchj6m3nUcbGtckbcYV?=
 =?us-ascii?Q?u8B/frteYei/qORFphCmEirIxCut/zbwwD7uQhW3Ta62KviGBwfjj6WIQtiU?=
 =?us-ascii?Q?O4XQLOvgIW2Ueq5cLJNWUJLUrG9h6Xs2FwrFCBNpSUH3C2Hz4R5LY7CYyFPj?=
 =?us-ascii?Q?LrlAh2ekL/CMYNBhkVC7ixw8DeRYpjIcH08EaVQn07Y01JHGTmn9lpgNHOM4?=
 =?us-ascii?Q?PjqRuSB4wtqlUku1wH/atCFX4rjSAvVyFf3BBgOu0diS0a+z1aFeH3l9Mkuq?=
 =?us-ascii?Q?2LeQiTZvpSLbkC1DRGULQD7KOOxS/y09ZlKIdwceifK3xeq1W56XhGpdVORq?=
 =?us-ascii?Q?qT62DNwaNugPgUbkrPd32EEI7g3I+6J5IvpAJkJIFKKDQyxcJSfEjqV6yb2c?=
 =?us-ascii?Q?NNVPgxrCy9rxjtJm5adrwWfuQUpBow0q3xbAyjhAI19C03Nt4I4668wZeFI7?=
 =?us-ascii?Q?GMJcvAp3KwkBUcNnm3gG7+8s2YkeqPmEsQv7Ce3ZBSW3/Oq823KF4rv8d9d3?=
 =?us-ascii?Q?6gIl9PNf6c7unnd0unyOeOHChTeYRsZ07HOAMiZnhuTZb5kCIgKVVoJg/5Rc?=
 =?us-ascii?Q?lISbiFQU6wipKjWQ4FmMRi9eHR1aeuz7SC046GqEBFTsYKp4UXJdJw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TjzwbgJLdk4NFMZVKD4YMtHH0ahHen9ZAQEzmS8hzlGdv6wqli4ZImdVUdHe?=
 =?us-ascii?Q?fWEc4EKGVCYoYvx5p8OYNMi2WPbMiWBbCYn5RhE/oR4G8Bl36M7wBn+f8MXe?=
 =?us-ascii?Q?NdlPtNCCZNPBKZLT5BTUZweelT2AVgQ9++ZmG0XVXdj/a4kXQpolF2hag4Gc?=
 =?us-ascii?Q?Vv26tzxV1A9h7mzELuKP5gDSWNm1Mfs/hhICnewNnbVgA33PYBjoBqkSsce0?=
 =?us-ascii?Q?2xa3gBXiz/QX6Kl8LSDW+Rv1Zpfs++irAPFnLE1hOhhO3Dm6U521yfAbrB5N?=
 =?us-ascii?Q?F7g/c6nkYkQ1Wc+SsG8QBKrL0bmdFn4d84xLuy0m2i/rdPcKQsDsitbcv3P1?=
 =?us-ascii?Q?OlKt1qAO6/dFujQRmPC2hs85tyRHbMDpxClXw5tXX9QQsFOpKmIzLZvmJWLN?=
 =?us-ascii?Q?e7B6Q81/aQyVupwkm0VzdbqVvuEGql8sNNUx6VLzmJ6QocSU2I8W5j+U9MLL?=
 =?us-ascii?Q?XEEND8e4vT9+HDdnKhOd2zIfe0OWaA1RhAbrcRoW7h6ZeclwYHhu4r5UehyT?=
 =?us-ascii?Q?uprRUsm0eoFBWY8EajQj3t7Cq7mWmnD+Dfnpn6rN7wXrjfqGhpLZhIA23uvO?=
 =?us-ascii?Q?0jxedw89GEVWsUwW7Y4bEynS/7yKkNF4+9W9I0MUi/uZNivmIai1/awDZc9O?=
 =?us-ascii?Q?0wRuXs+/UI0yGA9nce1+k7wTNKZai81S8kuyOux87r6QTN8V2H17gJzip3rs?=
 =?us-ascii?Q?JN4PvG0X1vfRju41aCZz7QjGzo0jU8iAeZvc1mcEeQl9MCa8T8bkThZ1i6IP?=
 =?us-ascii?Q?uY2EAkE8Cd7vgqbPxfSMQLdkTQ8CR+PreGOZVLPVyO9QOJqlbDX8CUsppDvv?=
 =?us-ascii?Q?fnBuD4GdAxgnv/qpHpSKMIP7vWBqQv6cLdXaGovl6ucz7Nfn/P8NFRYPAPCc?=
 =?us-ascii?Q?D+iRT0pZsQkm5xEdDj1FCHebgA4woaSREZ7JQ04xScVvVAfDFkfo2/zoRLiX?=
 =?us-ascii?Q?wiA//flHJ6mPP0vheyLc30aHB97wVSZUQSnPGiu/LRvJZ0J/oU9KjiphwU2l?=
 =?us-ascii?Q?nYjyhbJ57EFqQcmzFzk2nGJ43XJpYiThtMKiwDXwBebTbi6pR6NOGuiT/8dr?=
 =?us-ascii?Q?a00MGjqj7d+QpDr7FbqqKDF5XtWz07fAvZfu+SSGMP+YhNZJe8aDxnOjtxFG?=
 =?us-ascii?Q?2Fy8OodcDK0vQQHXCL+Et4KjweMwCLnWgw4Dc1RJuf4fSwEeveUfWzzIe92s?=
 =?us-ascii?Q?y94tw2BUtvhj4QZHwUNi4Gl0cQKGF4HjjZd3bs+tNkZIGdvtLMpisz338AFj?=
 =?us-ascii?Q?N+/v1hJfEyOtlon2wre1Xt9kFMjXXDuzppdH8p35cygzksAmAg8Mvd4JfBuD?=
 =?us-ascii?Q?fd+FbSPyNLvObVGLuhUPIql4z1vHNKSd3jHZKc/DUc1oc7nSyJYIk76bYDh2?=
 =?us-ascii?Q?DQQdAR+pW9EwdAAUWWpFyn1uqYwpgeZ5j5vfKO8CuhYTanwDCw3//itetoqR?=
 =?us-ascii?Q?sNZ+B79IgTm6zCp7D7LFiOf/hW+UuuaFCodj4Yr30BRPukSfb8YK7bCvufT0?=
 =?us-ascii?Q?BVoIYZZ/QoDIDdrlzDDAFuiweH9VZjimCCXZEySQwizqRVB0Bp5EtWj9grXz?=
 =?us-ascii?Q?EVruou/hfi9PfNZh49GoyTd6y1dQEc82uB/3SXU1fL6YGGiAxssPweprm5s0?=
 =?us-ascii?Q?WA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e836875-1f38-4a4f-9489-08ddaa4eeb77
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2025 07:50:09.0849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QAqCFNJPLZtD374xugmDAeHzuGBFUaDgvMFV9Sr8Tyw8yJGUv9/0ogYN/5zNdivELqQCkrjNs7t9fpSYnqUXVvNWe2eA3xM4qoO2KDGjvlk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF691668CDD
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749801017; x=1781337017;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=im0zrcY02U3hsXlyPjUaJouLIZgm/urlIz3p0C17Z0U=;
 b=EJ1XIBUiUchln3wQ55nyH0er51ybKrI1t8dBkSCZIoD148cyT24tT1f+
 k6OujUV57KBS+Glz4kBW/ljoSiKKVKkJtEKsquU3US8GjOGISkRmfvumQ
 w6b8B+tbsf4pSNQcLW61Ok1mkBKj/uvPGygQMPyMOIvktvAHZakNyh1iM
 Tbor/hqUV0kOYfORc/Hoox2Tzla7DFoNr42zllXwnosvzlHKv6FcczpHo
 LNI6cYcIfcvRNIy4MbmDSVlw7po2qWH8mRDqg6zIhH5El5fRnn3oR1cEV
 3m7xaiutU7PcMlerwvG+pS2a1+CI5Y3THP27KpRP0D1OMyPTWV1VjqOhj
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EJ1XIBUi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 6/7] eth: ice: migrate to new
 RXFH callbacks
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
> Subject: [Intel-wired-lan] [PATCH net-next 6/7] eth: ice: migrate to
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
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 59 ++++++-------------
> -
>  1 file changed, 18 insertions(+), 41 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 5863a86482f5..ea7e8b879b48 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -2797,14 +2797,7 @@ ice_set_link_ksettings(struct net_device
> *netdev,
>  	return err;
>  }
>=20
> -/**
> - * ice_parse_hdrs - parses headers from RSS hash input
> - * @nfc: ethtool rxnfc command
> - *
> - * This function parses the rxnfc command and returns intended
> - * header types for RSS configuration
> - */
> -static u32 ice_parse_hdrs(struct ethtool_rxnfc *nfc)
> +static u32 ice_parse_hdrs(const struct ethtool_rxfh_fields *nfc)
>  {
>  	u32 hdrs =3D ICE_FLOW_SEG_HDR_NONE;
>=20
> @@ -2869,15 +2862,7 @@ static u32 ice_parse_hdrs(struct ethtool_rxnfc
> *nfc)
>  	return hdrs;
>  }
>=20
> -/**
> - * ice_parse_hash_flds - parses hash fields from RSS hash input
> - * @nfc: ethtool rxnfc command
> - * @symm: true if Symmetric Topelitz is set
> - *
> - * This function parses the rxnfc command and returns intended
> - * hash fields for RSS configuration
> - */
> -static u64 ice_parse_hash_flds(struct ethtool_rxnfc *nfc, bool symm)
> +static u64 ice_parse_hash_flds(const struct ethtool_rxfh_fields *nfc,
> +bool symm)
>  {
>  	u64 hfld =3D ICE_HASH_INVALID;
>=20
> @@ -2974,16 +2959,13 @@ static u64 ice_parse_hash_flds(struct
> ethtool_rxnfc *nfc, bool symm)
>  	return hfld;
>  }
>=20
> -/**
> - * ice_set_rss_hash_opt - Enable/Disable flow types for RSS hash
> - * @vsi: the VSI being configured
> - * @nfc: ethtool rxnfc command
> - *
> - * Returns Success if the flow input set is supported.
> - */
>  static int
> -ice_set_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
> +ice_set_rxfh_fields(struct net_device *netdev,
> +		    const struct ethtool_rxfh_fields *nfc,
> +		    struct netlink_ext_ack *extack)
>  {
> +	struct ice_netdev_priv *np =3D netdev_priv(netdev);
> +	struct ice_vsi *vsi =3D np->vsi;
>  	struct ice_pf *pf =3D vsi->back;
>  	struct ice_rss_hash_cfg cfg;
>  	struct device *dev;
> @@ -3029,14 +3011,11 @@ ice_set_rss_hash_opt(struct ice_vsi *vsi,
> struct ethtool_rxnfc *nfc)
>  	return 0;
>  }
>=20
> -/**
> - * ice_get_rss_hash_opt - Retrieve hash fields for a given flow-type
> - * @vsi: the VSI being configured
> - * @nfc: ethtool rxnfc command
> - */
> -static void
> -ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc *nfc)
> +static int
> +ice_get_rxfh_fields(struct net_device *netdev, struct
> +ethtool_rxfh_fields *nfc)
>  {
> +	struct ice_netdev_priv *np =3D netdev_priv(netdev);
> +	struct ice_vsi *vsi =3D np->vsi;
>  	struct ice_pf *pf =3D vsi->back;
>  	struct device *dev;
>  	u64 hash_flds;
> @@ -3049,21 +3028,21 @@ ice_get_rss_hash_opt(struct ice_vsi *vsi,
> struct ethtool_rxnfc *nfc)
>  	if (ice_is_safe_mode(pf)) {
>  		dev_dbg(dev, "Advanced RSS disabled. Package download
> failed, vsi num =3D %d\n",
>  			vsi->vsi_num);
> -		return;
> +		return 0;
>  	}
>=20
>  	hdrs =3D ice_parse_hdrs(nfc);
>  	if (hdrs =3D=3D ICE_FLOW_SEG_HDR_NONE) {
>  		dev_dbg(dev, "Header type is not valid, vsi num =3D %d\n",
>  			vsi->vsi_num);
> -		return;
> +		return 0;
>  	}
>=20
>  	hash_flds =3D ice_get_rss_cfg(&pf->hw, vsi->idx, hdrs, &symm);
>  	if (hash_flds =3D=3D ICE_HASH_INVALID) {
>  		dev_dbg(dev, "No hash fields found for the given header
> type, vsi num =3D %d\n",
>  			vsi->vsi_num);
> -		return;
> +		return 0;
>  	}
>=20
>  	if (hash_flds & ICE_FLOW_HASH_FLD_IPV4_SA || @@ -3090,6 +3069,8
> @@ ice_get_rss_hash_opt(struct ice_vsi *vsi, struct ethtool_rxnfc
> *nfc)
>  	    hash_flds & ICE_FLOW_HASH_FLD_GTPU_UP_TEID ||
>  	    hash_flds & ICE_FLOW_HASH_FLD_GTPU_DWN_TEID)
>  		nfc->data |=3D (u64)RXH_GTP_TEID;
> +
> +	return 0;
>  }
>=20
>  /**
> @@ -3109,8 +3090,6 @@ static int ice_set_rxnfc(struct net_device
> *netdev, struct ethtool_rxnfc *cmd)
>  		return ice_add_fdir_ethtool(vsi, cmd);
>  	case ETHTOOL_SRXCLSRLDEL:
>  		return ice_del_fdir_ethtool(vsi, cmd);
> -	case ETHTOOL_SRXFH:
> -		return ice_set_rss_hash_opt(vsi, cmd);
>  	default:
>  		break;
>  	}
> @@ -3153,10 +3132,6 @@ ice_get_rxnfc(struct net_device *netdev, struct
> ethtool_rxnfc *cmd,
>  	case ETHTOOL_GRXCLSRLALL:
>  		ret =3D ice_get_fdir_fltr_ids(hw, cmd, (u32 *)rule_locs);
>  		break;
> -	case ETHTOOL_GRXFH:
> -		ice_get_rss_hash_opt(vsi, cmd);
> -		ret =3D 0;
> -		break;
>  	default:
>  		break;
>  	}
> @@ -4816,6 +4791,8 @@ static const struct ethtool_ops ice_ethtool_ops
> =3D {
>  	.get_rxfh_indir_size	=3D ice_get_rxfh_indir_size,
>  	.get_rxfh		=3D ice_get_rxfh,
>  	.set_rxfh		=3D ice_set_rxfh,
> +	.get_rxfh_fields	=3D ice_get_rxfh_fields,
> +	.set_rxfh_fields	=3D ice_set_rxfh_fields,
>  	.get_channels		=3D ice_get_channels,
>  	.set_channels		=3D ice_set_channels,
>  	.get_ts_info		=3D ice_get_ts_info,
> --
> 2.49.0

