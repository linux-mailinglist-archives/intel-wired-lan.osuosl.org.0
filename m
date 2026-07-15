Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VvWFHMA1V2qYHQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 09:24:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B81175B669
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 09:24:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=kbtLo1rm;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAE864068A;
	Wed, 15 Jul 2026 07:24:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wknxmjpu0PNP; Wed, 15 Jul 2026 07:24:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFBD0406A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784100284;
	bh=1ctq+pAKQMMmuGeo4NLb3z6sWuILwVZo5w3yvJvRuas=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kbtLo1rmruU9zAKuoLtauNIvnwkEHZx9VCGuvdYak3HIhK8wXkKq1Z+wmj8WEXIY7
	 tdUYcdbs90szAIHBnSD2YjgY90BaYfw833wUBKaq7ZG75MBtwntE7NL8RhzPDhPpM/
	 uzsKCx5nDDJHIaV0pnzChZejAbasuOIpAQTsnp8my+etNJGPpG1xTNrOlogcRJjOGy
	 MKcMiI2OgvuiECr+ECeCdIe2sOc2KYW+cEO5Rl1yExe6/tLDORZWiXwMGecp/T9aWe
	 60Qw6wY78jTwfjoPRDeUUVzMRZ5/9cjoEvQTw5la0VSPhBSs6ydpqev6llXKeRPeUp
	 hCjla7BE4oxMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFBD0406A8;
	Wed, 15 Jul 2026 07:24:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B2A4150
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 07:24:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6841580DD0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 07:24:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZYbXrZFbPNx4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 07:24:41 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A38B980CB1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A38B980CB1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A38B980CB1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 07:24:40 +0000 (UTC)
X-CSE-ConnectionGUID: o+rMElTMRJq+SpQqz4ntXA==
X-CSE-MsgGUID: pdkxkYamRhucEYqUDlXwWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="96242798"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="96242798"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 00:24:40 -0700
X-CSE-ConnectionGUID: QAF8CBFYSUy6PhAMk4CO7Q==
X-CSE-MsgGUID: HtvFJpk1T/ym/HQ2F3KP7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="256738606"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 00:24:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 00:24:39 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 00:24:39 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 00:24:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jtGsLe/EC/PPCRkb8/rJv6FvZ7wGNJAI050ap4xENYf1ysCB+hJDBRaClZXhp8pw6ulWMjq79z0wEv5DrgKvXUgL4crk93Zf1iNKt+IesibE+D7eqvM9ftazWgFvtGksKOFgDqh/TWRunwyiPfVTiKY0TfIhMe1XPbGZdYz/jDDTU1Me1ewM4LkR1ja/lfJ5XsQC3o+MApCzvp+J9NBhVarhR41KZTTxaT0sLU+vzod3I19vfC0UrmGPSeR1WCpFEh29aoT8fGUQgKEA2mWnYA98y10QBvYrTzcvUrIhxw99cOqkwJdjvA3+yxsG7/HQX+sbPRZKsNuGWIaz5p8yzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ctq+pAKQMMmuGeo4NLb3z6sWuILwVZo5w3yvJvRuas=;
 b=INkUuJ/uzxqad1K7zU41G3J+Uo5Ty6DMPtxCNJYmKTMsTWzoA9REbmMLGy20ZfgYrpG+KoZPnlvWQ6jHbrtVWF51S7TzJYH0RNtyr5PpnpB08BaRJTcpUITpHuQYO9/fFFTy2dMfB5v1nMhDxtKC9k3Y5DmeaGSS2X2hQdR2cAkvSAaH01m2rCmMgPHdnZvOxCPHhj+Ir2mP74IMq726mnL8c77+FWI3DAzwLMg6Yrnxsdilg/XieBWsMlpcGyUv+XWKKqze5rB0xKTPXdUlWudEDS4F7MUDZAz0CCY9nJV0wde417EjNHTCRvwGqKtOOw5Xsu9ZzeHnwRrb5friUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by IA4PR11MB9442.namprd11.prod.outlook.com (2603:10b6:208:55f::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Wed, 15 Jul
 2026 07:24:31 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%4]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 07:24:30 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "xuanqiang.luo@linux.dev" <xuanqiang.luo@linux.dev>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, Mitch Williams
 <mitch.a.williams@intel.com>, Greg Rose <gregory.v.rose@intel.com>, "Sudheer
 Mogilappagari" <sudheer.mogilappagari@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Xuanqiang Luo <luoxuanqiang@kylinos.cn>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v1 1/2] iavf: fix ASQ command buffer leak on init
 failure
Thread-Index: AQHdFCEXjoIycWGQz0mzIraZebrD47ZuLQVg
Date: Wed, 15 Jul 2026 07:24:30 +0000
Message-ID: <PH0PR11MB590272FD2023440F52E95689F0F82@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260715061131.34420-1-xuanqiang.luo@linux.dev>
 <20260715061131.34420-2-xuanqiang.luo@linux.dev>
In-Reply-To: <20260715061131.34420-2-xuanqiang.luo@linux.dev>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|IA4PR11MB9442:EE_
x-ms-office365-filtering-correlation-id: 18fd2c62-369e-4d32-6902-08dee2421c98
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|38070700021|6133799003|56012099006|22082099003|18002099003|4143699003|11063799006;
x-microsoft-antispam-message-info: 0nb7Gi1eEJObH5sGAjTbY6TcwRsoE+feqMsP2GhX5sbaolWkRmM/nYPh/mVExEwlPNKPrwDP2B1Byi074HM1f0oWaXsSjP41o9Xg9tp6m+6EsVRkqIg2V1BRNTxmhNZoqdEz2AM+5Tlndlh8t2R5kXiVepMpYQMWQj5Jobz5pRHz3arYFQyYfzvkhrnnhUC9roIHhQXcFc2ysbUkuyOk/UqxLxzP5APd1lu7MLLirQv7pe0WqQIza0QH+T08Dyzd6JSvv9cJ/Nv395KUGPUUciJBtYD+fiNaYnbLqBd5f+n6YQwMVJovC8PGmcEQlF/3j5eh+7Uqm8mLXHouj0qdsbHvIrsxz3snr2L8XksXFU/QksFfwwurAoUFm7VaVbZ8hxP0NCH57G2rd2cbKCBOmRTikeL8TeoBNEin+WPrDRunko0wtAMWEj30xltxlg/CZOVO3Fe61fld13i5cwa2oZk+WJrnsKVN+AitGfk9NgqwuBalptx8Yq4uoYDQLQaHvBnajK9Fm1qxOCha9P9FWultskFr6qbSmwaAlmC6d52aqaKLPWHVzjiZ0bDNz4wB/pBWUl5JrSXHDaEH7MK0K9AG7q1fF+AhfK4O5ES0JXTUzKvl2eBt4ZznXMoGWvFkQN2/8iG+7zpLTfKXp6VjEqcjuuCL3MylvVxTnkoN1ZsmjoapaQsJOV7UWkvohc2v5IsI1NFcnXgd68Oi7g/ZKrPXDUFr7qWbuDEWN/WGXp0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(38070700021)(6133799003)(56012099006)(22082099003)(18002099003)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZfOHIpwA60YtNI44hIkvYIXq8xvhvgGVEJ4hZjiqcl9AI746muiN90jj/xqX?=
 =?us-ascii?Q?RQPEllyhyQm/KC7GjXmSogqfNrdW/71RtaVnQsOpgDGuvxVGsXvZJnPqd1ZX?=
 =?us-ascii?Q?+XqeaHeWjUHgWzCEftjN5h/3uibwbnT4l8nBw1RwjDLs2iZLLA+UuW7XCKSP?=
 =?us-ascii?Q?TGTIWj2Ksi7aVvPAXUTvl5nx6TysMJv237i2B+8v7t2a7/tXpnidjyICmovj?=
 =?us-ascii?Q?TlVN6guw8hLek+PhcKSB1NH9ouSui8UloHiftF83Hpnzku+z/HeYoHb5cvxS?=
 =?us-ascii?Q?AyozAkA4Yo1B+rTrN6o3tCZQ4AiMOPUdZQy3TB1BFh6oJ+kavH8Wy9VDuqtW?=
 =?us-ascii?Q?WYosspWIxgBHtXQLaxGz2a3kprTTG6QadSHVLF/pKZ7xELq1ne2ybPWBxAX4?=
 =?us-ascii?Q?aiceJBrTWAilY1abToNWkwQdkhy9NV8N16BxwyGZbc5sCUvH1ckHgO6LU7ib?=
 =?us-ascii?Q?XOfHMea+qE/08lj9ymqDYoCRC29+TX3fPRjXno+WEBPgjEeNp8Ai40EUHq3l?=
 =?us-ascii?Q?qlSFBwXYuISbPhvCoc4BdNq28mIXv8c2/utcd5lG7vD8/8BoaQ7jOH/+RALv?=
 =?us-ascii?Q?5G7KPWmjmtvjsJj/WhM3JTxIsY4EXXcBuiGOn5LtejZxbx7/IdZLbs7gHoUs?=
 =?us-ascii?Q?zTTB1LnT8EyUEkdzIZGGhvKuFrAWtByO4zWoIQNpHSzGed58mrwp2Rxxdl8U?=
 =?us-ascii?Q?1uhqgV2UcPJbtn4r6mFNNu2KQTWsVSe/jB4/+0X9Ke+TdH6X8SsnwAcyqgF5?=
 =?us-ascii?Q?ngsGRv6WyTcB7GJmcE9st7apY8KXW2EI1swAmQJ59iD9DxvuZDkLgpdqm16+?=
 =?us-ascii?Q?zhifNVl/Vo33jTDCDerNT3Th4zAouuiTM3KvWSRWBF45aoVGBj144PnEXz8C?=
 =?us-ascii?Q?Mz35q0ujp5ePi7l+4rU+fu7o9ar9mwwKHQKcekgYv30NuMKH0QW6sxm/nPUs?=
 =?us-ascii?Q?zzcWQj8LsHiCmmEBtMwv+a3y4j5IPXlGYVh5Z1u4K/sq+VCywdEmFJftmYLT?=
 =?us-ascii?Q?9DO0msq/CAGEx+e93z2K8JkYYsqYxt8YRvS4Sx+y0gpeI2kbc9CTsZVy7dt8?=
 =?us-ascii?Q?UfO8MaGjfpoCV6NVNACWS/2WvJJjLnwSEkTFcy530Bho1VhiVDlCjkRUOzVB?=
 =?us-ascii?Q?KC0e5CGBMD7Iii7M95X5BiQXinv7UBk2Nf5xtreV2+2Sryx7229hGdblifXj?=
 =?us-ascii?Q?Pry4lSe/Q400lF2y96+Laee6uPkQjSiGajpWIvAUj5cTweY1gENFil/R46T9?=
 =?us-ascii?Q?tImee+XTRwNy3fd6Ux8ZEpSHJoUjWnS/XI91XQwIAjgSilPb8K3/q4cv+TaT?=
 =?us-ascii?Q?5B33eoZMsd4+7sFy7ovePyDh5J2aq9QKAKDgMtIdTTqJAYarCPnt63tNUs3m?=
 =?us-ascii?Q?127FD0QPWFCKH/Kh6azt6i1v9zUZx3w8QJYKtOw8Zd1HVj6DeWM1xmoHpUyG?=
 =?us-ascii?Q?kwZToYnscap1Prn93vjRrkm1z0JMQxw0KoYAm3lvgX0sNja6pKq9hNrR81C2?=
 =?us-ascii?Q?PcSfJoN8t7ez9u5gAR2yB+22FM2sSojTRRHooghqmY5i7eaTsuMQw26WQZF2?=
 =?us-ascii?Q?ppleyIGF33kWoqQCoRjz46ZlyzGsNznaD9BkqtmIuYxlF4HUVpit1rrwWSMC?=
 =?us-ascii?Q?QBgsxarxV6jonHrPOvJ9dwo+Jx6fFWWPxybcg4lBLN89kfktGgkFwfXffCPD?=
 =?us-ascii?Q?Fpdjx1jUibJ4DM9K+YkcKz9zrjCSD/xX1O6+/vsa56Mb4sr3gI+cHub60pZL?=
 =?us-ascii?Q?ONfe1P0Kow=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ezH0Zj44iA2d6pAIC8+wqdJDXIKey1lsNvMXwrE9ezuOU79wXabGcuMxul7/wrOACtILf4AjTjwc5c8zxB+Ph57uQKDa5PTiVHwk9aEGKem87LoGFvvot5yViCq/clRcnbEZKUJR+V03737umz34qQkNk2/6y7gy0bbmkCr06Xlr7sxLz1JoYMqB5UHbRz4beX/HyVGFZUgvHIWCVxy0LtZfeCCpNilaqHXxSQKo08g6vzqvDZgbn5xsBukbfXRIVonsSCO+MiF4LXIBC/OlPrkkDyIuw6yGxOv2ABJmPVHN9N3cSWsFs13uA3KWysPJjTn6+Cra7wMWh1wiwF8AXw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18fd2c62-369e-4d32-6902-08dee2421c98
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2026 07:24:30.8097 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mKX3Jgt1+QFHy4CKfMKEi4LGOH2agypQNz8DuDO5MFRm1Zfdgo2YZP5tqShfgfipG6amVOcKmKUu/76pTOavz/zPwIHKtp/WSI2SPxq5NeU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9442
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784100281; x=1815636281;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/yR0dnfq/ZwhCZwff0tvSR2p71cYWqGpESNfFcjWfpk=;
 b=d6WtSe0TNsDH7Yi4RTG8B95szi33+MH7paOg4NUo8GYufR7pBW08UnyT
 AIDu2S/ChxYG9PM1VvwbLRWoliqQuyGTuMBCSKK6oOTuqbybAI+k3WFCL
 Z2n1pDwkQrCJNL/aQws1KaWxvpKjYjNpx2EFVsQLc1Z25OyfBPrTvdurC
 NBaMVPKXwtbMsYcCpfIYqWdPYu1e7548FVXXtb03ydsepHwFYSm37Fi1H
 eF6dn81Y0Yq5Xj7qmDPsCaPx9lz62eC9lnq68hLtWdMXtbqH3RP0p2YEf
 43AmwhDhWpZgdRdz/7TqCvDKpqg8KkfAWXmcxaBGhcl7cXo9pm8lT4yGl
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d6WtSe0T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/2] iavf: fix ASQ command
 buffer leak on init failure
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:xuanqiang.luo@linux.dev,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:mitch.a.williams@intel.com,m:gregory.v.rose@intel.com,m:sudheer.mogilappagari@intel.com,m:netdev@vger.kernel.org,m:luoxuanqiang@kylinos.cn,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,osuosl.org:from_smtp,osuosl.org:dkim,intel.com:from_mime,kylinos.cn:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,PH0PR11MB5902.namprd11.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9B81175B669

From: xuanqiang.luo@linux.dev <xuanqiang.luo@linux.dev>=20
Sent: Wednesday, July 15, 2026 8:12 AM

>From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
>
>iavf_alloc_adminq_asq_ring() allocates cmd_buf before the remaining ASQ
>resources. If iavf_alloc_asq_bufs() or iavf_config_asq_regs() fails, the
>unwind path elides cmd_buf while freeing the other allocations.
>
>The ASQ count is not set until initialization succeeds, so the shutdown
>path cannot reclaim the buffer. Free cmd_buf in the common unwind path.
>
>Fixes: d358aa9a7a2d ("i40evf: init code and hardware support")
>Cc: stable@vger.kernel.org
>Signed-off-by: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
>---
> drivers/net/ethernet/intel/iavf/iavf_adminq.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.c b/drivers/net/e=
thernet/intel/iavf/iavf_adminq.c
>index 6937b7dd44cbb..82a32f8e78c12 100644
>--- a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
>+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
>@@ -346,6 +346,7 @@ static enum iavf_status iavf_init_asq(struct iavf_hw *=
hw)
> 	iavf_free_virt_mem(hw, &hw->aq.asq.dma_head);
>=20
> init_adminq_free_rings:
>+	iavf_free_virt_mem(hw, &hw->aq.asq.cmd_buf);

Hi Xuanqiang
much thanks for the patches!

how about moving that line directly into iavf_free_adminq_asq()?
then free func would be paired 1:1 with alloc func=20

> 	iavf_free_adminq_asq(hw);
>=20
> init_adminq_exit:
>--=20
>2.43.0

