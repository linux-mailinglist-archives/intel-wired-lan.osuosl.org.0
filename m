Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCA0A675CC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 15:02:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FCEE60AE8;
	Tue, 18 Mar 2025 14:01:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zZwK_sTnvs6d; Tue, 18 Mar 2025 14:01:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB72D60669
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742306515;
	bh=cIxI+jlX36KPEGh7O6XwOMjHlijWBp5OnmVquHojBdM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sa5IbmUHAzNCWnj6+gE0aSSQdEZNhPm9LJPn6etsQNVGiErZmiU0zJdrCHM6x1bnj
	 d+fcbsf/fU4HobbnPY162PgAKEcx+AZRZDnELmDereAtNL8yxaK8qj05Vsm8cU/m20
	 aZSLEQfG4XnVe9ofqMN1jZUd2EELWMgS9VNzVxlhBMIbJkbB97wMh88Dk5Gaqc9uBi
	 dVkkuNaG97OaEIHaLcQDPMP/AuIHcuvS/7dZZXim8OeAPxVLfmzRxh1hsZRoPcZmvU
	 c9zXmNHHWuIgj3l8Qh/Rp04xjmm7m9ro7FXTQUInzue+uDDfDeKvRcFR4edWZ+e1sJ
	 qqV86u/pLCQUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB72D60669;
	Tue, 18 Mar 2025 14:01:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E6EB950
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:01:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CBAC405B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:01:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GAQCUc3wSSCy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 14:01:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A9FAD409C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9FAD409C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A9FAD409C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 14:01:52 +0000 (UTC)
X-CSE-ConnectionGUID: eVWGRuKxRUmW2vrVVyd9OA==
X-CSE-MsgGUID: i24chuWYRsihVF77uzp9GA==
X-IronPort-AV: E=McAfee;i="6700,10204,11377"; a="43334798"
X-IronPort-AV: E=Sophos;i="6.14,257,1736841600"; d="scan'208";a="43334798"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 07:00:56 -0700
X-CSE-ConnectionGUID: b9hc5yIcSl6NmWL9InDEkQ==
X-CSE-MsgGUID: 7IHBafORS1aOd7VOLQcONg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,257,1736841600"; d="scan'208";a="123207177"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Mar 2025 07:00:55 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 18 Mar 2025 07:00:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 18 Mar 2025 07:00:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 18 Mar 2025 07:00:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=noqzBs+1iBA/fISjzNFbB4wnLqlic3Yo4xHWkLXNyXHlgLtT0MLq4Ji0brtVgKqCiUz8svBUWWuJaMnwchB0k9WJo3tGGHedzdKbGkALIkJyM3OZNsf8L2wagXJ/rPNUi43BxKA14WnqIan2y3cBS4u+UYYHPTVqwfC+b9LMwfIK27B053ZvR7Q3iqEDo+uVyxg1681xkPoJRZAJmbnfny/jB+Vw3zGtUGYU7Ndapg9DA5JRML8Zk4Tn0RRSwd0cNephCC8wjOoyWBq6CwbJFkFQrOtq/YsHmwYz8R/ZSIZjYAdkOPlElBednPS2+soF3E/u3QzM/1dInQ+8Jh5eRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cIxI+jlX36KPEGh7O6XwOMjHlijWBp5OnmVquHojBdM=;
 b=qEiF9kFH5EYobsGKuNLp/5a7Wvzhx+Ux/LPjWjk74vifkHMFobqbUDo32eKeZ+Z9y0zeOWdGAP3bI1D+1UdC2L8xeSkWAiOWcTvCVEDkOL8dmRdQGKNsRH8+SHkPnqioDFVFJ/LTDviG+xZjGoN/Rf3G4sL1vfmgjnSMs1/E1iCrbpnouhbcLjNx7oaar9zZVw87B/NOYYue75Xxd0rHVtlkSclI6ImzJN6orlXtZfjY02fU+4vn2O+eg4+B6FBABaLn97vYFitexHWiqkphxnMgzMLuNTW+bBBwOAlE8gBXbq224G/BKN2/GGtWQghzFzAEKa+SDWG/vhoprl/45w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by SJ0PR11MB4861.namprd11.prod.outlook.com (2603:10b6:a03:2ac::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.33; Tue, 18 Mar
 2025 14:00:51 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%4]) with mapi id 15.20.8534.034; Tue, 18 Mar 2025
 14:00:50 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-next v2 1/3] ice: remove SW side band access
 workaround for E825
Thread-Index: AQHbkbfzOdFT3olD202HwPeAUlW8jbN3ke2AgAFmhcA=
Date: Tue, 18 Mar 2025 14:00:50 +0000
Message-ID: <IA1PR11MB62195CF656933B53CE11BB6A92DE2@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20250310122439.3327908-1-grzegorz.nitka@intel.com>
 <20250310122439.3327908-2-grzegorz.nitka@intel.com>
 <20250317163607.GD688833@kernel.org>
In-Reply-To: <20250317163607.GD688833@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|SJ0PR11MB4861:EE_
x-ms-office365-filtering-correlation-id: 088825ee-3132-4980-c378-08dd66254aa3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?BTTkGYybaSgVnY5hexX3I3mpKMgnFnpw5HtRxR14kGxzTBo6pvvYTgiFkJt/?=
 =?us-ascii?Q?10eDssL5QFwG1A7RzCY4z3B1gKR1jIFhnLesYIxFEeDXu5xDBmW+JoaacBSM?=
 =?us-ascii?Q?wAcBs2xpJke95WUrOcIhS5+lESkat3PVUX3z7sPnGUXagyUvkJ6cdPj3vRq1?=
 =?us-ascii?Q?5Pz6FZKuyRQcBjSxozbDEdyWBMIll+fBkeS49/WX5qs4MKBcxDZMnSqypAet?=
 =?us-ascii?Q?1CqKffH3Aj0wL4Yxb66BCDZsor4avP4kzw95Mng/hxrQdfevI9ojjnzVU8Q6?=
 =?us-ascii?Q?8NyEj9ghSj8Gb4DQYR38cwGcZTs972oQfDDzCwqPrpMVeq2Yf7xct0PUrvSH?=
 =?us-ascii?Q?9++4I/Bj068lEDW5XeQh4B13fNpTZJI7kDRIjcq4qfLhBhRyCpKePSQ0unev?=
 =?us-ascii?Q?nbqcEe6oYzugbb0C1pRkwezCLnXmJhZEm7RskNKf3XXosznoQGpgbrTuyPSJ?=
 =?us-ascii?Q?5NSWh8g+iEBB9vczSgcqhO7tu+I5kb40yKUy3zSMwM6OjzM2oq5EsEeOm7ZM?=
 =?us-ascii?Q?oTRlBdhhFJEzufaYvcCDuvJRvHOzgEZhKgua8T7aiLJcqoMt4TbIsqkTxik9?=
 =?us-ascii?Q?ihRK4Pm/sPMF56q5Xe/RGTxUo+tTmofPCtArid0S22QNTxNTcvdvGwZ2rHGS?=
 =?us-ascii?Q?suzo+2OWzExorNhJPKsMaFNGv0sz6d19YkBidHDj7RLY3RizRb0DJ8LtWJoq?=
 =?us-ascii?Q?26snkdy4AWCnSkJU0cGB9Bh6LAY2sgHFDV8T0nITOoxmOvUZS/+nJORqjw2V?=
 =?us-ascii?Q?BjRCCbJjbBeEKgUGhWjAKNPgWAQfnTLRMwpmBgkjk0MhKVxI1PuWsacg/6yr?=
 =?us-ascii?Q?asNslzXQ7nbn7gVn2Xa04GkMw6cLf6UlZv4Fxo3WzoPpOSKCsjQZBct2v9OR?=
 =?us-ascii?Q?S64zxeiZ+UKIAj7pT9OI8MSUQzRoxVjzSvb9xCtLq6WLAvc5xwnW4Guo3QcP?=
 =?us-ascii?Q?4f5f4+F5g4FxUJNvrhdeeR0kcOZJw9pZLEAHL/t2y/MZllsRkbbs0CYKUv0S?=
 =?us-ascii?Q?sv126mQgfI/kXcq8OVUAuh9R8Gq2omztF0R5ezJiQqp2QNUtVGEV+kkcAgTq?=
 =?us-ascii?Q?hoKqI3zGZ0TYt6JK9iP11Ski0eGml6gch5sqsdKU5bK4x1tmRhlQb93ZU9BE?=
 =?us-ascii?Q?0a+SZakMdANVbgjeFGY+Diw6fnU+CESBYKJ+gpKM8zcDwIKfhwC0ewGbV8Fu?=
 =?us-ascii?Q?dYavBCrYPlTGhoUdMxEBB08jqeoso9RvX3AD5Lxm6rcTe51Shv053+kiCEry?=
 =?us-ascii?Q?vpwJnTAHQs5HjrjgpAI4ckI9TwdENqjOCaHCl09+4UGINjHABsS1YwrA0mMB?=
 =?us-ascii?Q?PhgmSjeNWNtdmVc6H4LQqxM0lHBIDJzd8ztwY0cJuRsZ6oCTLusimMB6rvzc?=
 =?us-ascii?Q?ZrDKg35OG444evyIrO02rbV/bs5hdXaxdCkpQW7List8aqF8VDmRHWpvTVql?=
 =?us-ascii?Q?ya38f+pZi3m0yhCo+BUPJSpn2JzYlimQ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Vw8RxdoUs3ZUHWpyYctE0y1CcBMk0mowEYscEcPYm3QhD7ERa6G9trl3aPo2?=
 =?us-ascii?Q?VATP4ux1iA8TWpLTSOy3Aple7S6bRmNE7uHPuuLtwpfnfGkifB7jZUQ9Qg6e?=
 =?us-ascii?Q?CttMsf3RZrExgNfo94A8nizNsRh4RuXLjhUHhv6WlrRQTaJtHxxbmABH98L+?=
 =?us-ascii?Q?XT3i1ce5JRmIoAXAR1/82yCJTGikaIAJGigkllfuBR2QfQbYhNaDUD/I7Rzr?=
 =?us-ascii?Q?AZpI104GIXksVGu5Nmfln8KTZnwyazppXTWJl3kLgOQ9+coyuA1aKB7m46z8?=
 =?us-ascii?Q?F+KadMB5PD7D59c1EPoZZNuWutSDrRNiqnighiC1IDWAJ5NkGUV9gQMjSDPg?=
 =?us-ascii?Q?KMH495HmNspC73VWsJBvfDVbQzBvIVIFp27wG2wU5wN0nxt9PVyCujJ1aC3O?=
 =?us-ascii?Q?bUZSXXj1FTsop+6sgHSzIN7O23+URTcRhMrAtFga/xUlpNjsNHAdztmzd+W+?=
 =?us-ascii?Q?XYvC6iVYEKfaP/zbFW0Xkgz/LcUeZhiAXiGcrrKS01SpX5565Jdl2QRVsx8E?=
 =?us-ascii?Q?xTlmKdodSHoQtuGn/we796OdpzseoS91aG/fGD5lveD+z8CWKvK4nZJ9qsUP?=
 =?us-ascii?Q?Y2G9l30eEu2rPYB9qDCtm8MdZ7NDWs3HSASDfruMpHbUcJMnTMUl6keRMyNq?=
 =?us-ascii?Q?NBwbdl1v0tSUjxm5xeHVbo+Y4oX1g/AnYFApvlkNzsJMEbgxS8RdIOjlFeGV?=
 =?us-ascii?Q?dKrBRCwERYGcCLH8TbzZbZQO6a03yZBeZxvaFnVfpOcAT18Iy3B4JhEafteO?=
 =?us-ascii?Q?mMxw9XAe2gmhhpiTAvoUnYzvR44WhzmN9qS40ebGOVytMX4/dVNUMW/6lypa?=
 =?us-ascii?Q?pu+IgcXU0nwnHxk3c45eGpFNODky5Odttw47WxT9Vh82eMPLrirqe40kZDrV?=
 =?us-ascii?Q?5nDrgn+c4/n0TK+i+30Twncib1g/PZhER2u1kBmVMDQOnpsuv3pJk6OPHg0v?=
 =?us-ascii?Q?31J54L6Ji0Ovmfv/RLI363d07KynN6BCSnG/z2FYQu4dtbhKu3EyM+nDL6Ir?=
 =?us-ascii?Q?DNBkiBXQ7IxTc/wQc7dHCBDRsaxS4w9qad47b+4OHmTDvg4vffy5Mk4SqVvw?=
 =?us-ascii?Q?V0iPddNqxT8db7WntTnRi5s0NGCTQLQiY+jerrMn1ewfxZ5Z5Yrz1cc4aOlu?=
 =?us-ascii?Q?1wAgYeSujlCx2FdS8mUj+kJXo7XUvlnxMhz4bkd4EFQUd66q8DXMUp++SOrI?=
 =?us-ascii?Q?gJS0xiVp8DKz8fpmuGtJNvJufPKl4rpBBxtdW2hCELnc0m9ek6KQSHUtxI6p?=
 =?us-ascii?Q?igbNiMQJM6KfK3UK0G+ZZsYKk6uR/hmBLrFpDVnYl96PmGQAhDNe5YV4q7/1?=
 =?us-ascii?Q?RcwOs+psNXEW8/lpKN4CP/BYyyChJyEFK9KfLynlT7/C/rexCUY0imYB594S?=
 =?us-ascii?Q?dDWt9FOv9dPOhMGQ2t1aQtlGKSx04D4RDf1OG0EBOsgn2czZSqqUbiEb4URC?=
 =?us-ascii?Q?JQ2BWLZCDLJukxg7lJ15c6IbFrDTkZlo3GPdBuQZubUCs72B9ROTjJs85lzb?=
 =?us-ascii?Q?LkNAmXnGIaT44tMc4nvKxA3+xKiBBRmh/J/GLunhlzEsTJOQukG6TDDSz3RJ?=
 =?us-ascii?Q?AIuardJ2MrT8817udUlMbF88PZ9+bNu2KyLbZUKc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 088825ee-3132-4980-c378-08dd66254aa3
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2025 14:00:50.8226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uodKtKTsB57IitxeFO56+K4YOylk8OZw4Biw/Ykes/zSt35m2eKz28zELirgx7Sqpq4VOpWXfHriphzTw7nuUA4R/Gf57irfNZezYaEwvUg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4861
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742306512; x=1773842512;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cIxI+jlX36KPEGh7O6XwOMjHlijWBp5OnmVquHojBdM=;
 b=T/FaDO50U3MxWQg06g0A1lkV8EeCDUz6D69EmzV8117NhxQiWS13c8V0
 a7fnG/I99kURTpn0JvgdtKQcHrmKnr2flZXdMh9e0SNoO13L4kCEYbzmT
 K/IrgnOVeGaLBLEKMRTOUwJ0dzifGLfm0VCFYFDJwtf6Em5jdb+VZPP19
 T0TsHOSehaj5G38QODAgGZciKN32HQviWTocl2g0/d1TnqazoeJtdL2wA
 lDLAXP/CIoDnOnK3WWkUAztYdFoa/4y/G2uha/wv9/XW51eNOIYPdZt1A
 Yzh36x0arJtvkr+BtjmDmOy6nq4zYQMhj+vdUXHA53ijQhIOquBAM+YcE
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T/FaDO50
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: remove SW side
 band access workaround for E825
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
> From: Simon Horman <horms@kernel.org>
> Sent: Monday, March 17, 2025 5:36 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kolacinski,
> Karol <karol.kolacinski@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [PATCH iwl-next v2 1/3] ice: remove SW side band access
> workaround for E825
>=20
> On Mon, Mar 10, 2025 at 01:24:37PM +0100, Grzegorz Nitka wrote:
> > From: Karol Kolacinski <karol.kolacinski@intel.com>
> >
> > Due to the bug in FW/NVM autoload mechanism (wrong default
> > SB_REM_DEV_CTL register settings), the access to peer PHY and CGU
> > clients was disabled by default.
> >
> > As the workaround solution, the register value was overwritten by the
> > driver at the probe or reset handling.
> > Remove workaround as it's not needed anymore. The fix in autoload
> > procedure has been provided with NVM 3.80 version.
>=20
> Hi Grzegorz,
>=20
> As per my belated comment on v2 [*], I think it would be worth adding
> a brief comment here regarding this not being expected to cause
> a regression in HW+FW seen in the wild.
>=20
> [*] https://lore.kernel.org/netdev/20250317163359.GC688833@kernel.org/
>=20

Thanks Simon for your feedback.
Sure, I'll address it in next version.

Kind Regards

Grzegorz

> >
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>=20
> ...
