Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0xPCAgQATWoXtQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:32:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC1071BF2E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:32:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=dAvVLqBk;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 692A760793;
	Tue,  7 Jul 2026 13:32:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B-USE0kITAvX; Tue,  7 Jul 2026 13:32:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D22860794
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783431167;
	bh=45MJmVi/hoaHbHcfQRrErF8a59S+CgmhVUr3HJ6lo3I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dAvVLqBk1wUIN2VsZzUwDfJOp1C3KXWp3jBmpCtlIaRIakiKMXgqncUkVLo5n25m2
	 929CBBbmhbqqEtw4GXkA/7YuLQb0HU8PB5GCMRdfutQEWIJUaz8Y/J/gJw9RLdWHgp
	 YQgEvoc4IEATy3k22rDOo0QZTDCBYlELvGORMIoEU87JxKvk9a1MrnUAtgzbUtHSKg
	 iJTmXFDsbHZnw5EuV1H6bS5ta+MEj2FULthXHHIIBQOF4HxTQQBBVwTYOhNu8G83qy
	 CvX2tpeRpSVbjK0KEpP/ikTbyrTJbPYyuNnYczHxXriUBBq7t85cM8RLpHEIu0BE0q
	 qo6svLRAcrFvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D22860794;
	Tue,  7 Jul 2026 13:32:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BEEFB33A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:32:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B10664052F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:32:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9NT4AOYFUn7n for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2026 13:32:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A2E7B4052E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2E7B4052E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A2E7B4052E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:32:44 +0000 (UTC)
X-CSE-ConnectionGUID: snPoV0e1RoWtVsIY6MP68A==
X-CSE-MsgGUID: Br58eFa2TTy5hqt5uluTmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="84267118"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="84267118"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:32:42 -0700
X-CSE-ConnectionGUID: yATYho5AS6yEpf2qSs7/gQ==
X-CSE-MsgGUID: laXNwGj1TUqo63cCtJ0vwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="277220198"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:32:41 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:32:40 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 06:32:40 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.18) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:32:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CbzZ2DFXbiUt0aG8F8TfD7RAuWkJgZSvj7WqaYN2917NUFBK6egCfH618xHIyDV8X9sb4u7+ERRtuQXS3W26oY5w6UYi7kzmdAfRHUsSjdgWxic833hoC2aVLs5pBnwOzmyYMc0874oSRCJSr6c9I009UeBpkh79mzPmtquNeNSwetRT0wm2Fx2ghPrjViC6FEvFJXETXx711hvIiP9+rr3jpnwy7JVGn3qHOQ17W30R0PXPoN1sm71q5hd31PTNCnmgi3eikYlk3vDAfxyHQTO15xAT8AL5R02NwEeoxj64kgShzFtW1Huku3ED4nLzsZApgY5B4i9hRFSix67I8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=45MJmVi/hoaHbHcfQRrErF8a59S+CgmhVUr3HJ6lo3I=;
 b=eTFj+kKF5H92n+N7JBdBEPQDdUZAbX+qwKjGf/OG3ZbAe5Aisekeb4XfAa7kAccdsfLvdCc7vKxpkvILrlyDz5Myl5brWPM9o1zPEeyYWIBrNZ1RfTe6eMBnljEbDTDJ16ih20Pp+TgM8VV0W8IrkPH0YI587Hog5R8ehgn6B4FKoo8xV6omVQ0SLBSCFHqlPKhxvCUayo/j372SUtOLV4qB4JpxxUrBFJQ4Z9JAYpBpL1YIsCabrnPor8yJkR13ZvN5IFsuO6+iRaFTXEMLgVxWDMH2Qq/0plGA80noK3NahYIzMIWjhRk4OI1JgKyTX0MJbxB0QhbeIB40cceLMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM6PR11MB4754.namprd11.prod.outlook.com (2603:10b6:5:2ad::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.14; Tue, 7 Jul
 2026 13:32:34 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 13:32:34 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, Alice Michael
 <alice.michael@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Martyna
 Szapar-Mudlaw" <martyna.szapar-mudlaw@linux.intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Marcin Szycik <marcin.szycik@linux.intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 2/2] ice: preserve uplink
 DFLT Rx rule on switchdev release
Thread-Index: AQHdCV64gBbTOJA8jEqU1l9Cj+kgmbZiF1Qw
Date: Tue, 7 Jul 2026 13:32:34 +0000
Message-ID: <IA3PR11MB89863E08D4342A1ED5F4F954E5F02@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260701133601.2118382-1-poros@redhat.com>
 <20260701133601.2118382-3-poros@redhat.com>
In-Reply-To: <20260701133601.2118382-3-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM6PR11MB4754:EE_
x-ms-office365-filtering-correlation-id: 6223ab64-c787-4a15-47ab-08dedc2c343f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|23010399003|1800799024|38070700021|56012099006|4143699003|11063799006|6133799003|22082099003|18002099003;
x-microsoft-antispam-message-info: +fkc81/zRZLycwePPuhclg/pSITk4g7tNh0l3wKjriYYivX4qHPE6Cb6LrYw+5LtGhKyHV3c7p2wZFL3I9c464n3RHwfg3cH1g5qN5k9lXFU7VzMuWm47qPn7JPhPIBtYakRTG/fGAefTgdOgoYSgB3q7FmYyMDn3BnyVjj5AbVYL0HfhaMNdLU0xnR2V+ZpuDz/IwJIqAYYOCMG4JwYmVfWVRiaq0v7f6CPg81TUzEgaLeaam4yyVsIObOuyQqHCooedAuT/LDSbkR2nObcgDUIamn8qb8GXl8cbW2sXaEEkdR5kkLsY9j5qjH4oc6MI3+PuujiXzzFj9mwOyDj28VpasNyOqDJFpspKGoB6yr+JTsdoK2Ztm2wOWfKwbiTB+MKg4KuapxL80ayrL96Kk8L8H3W9JjJDhG//0nYGlW4PkjD017/JW2nWBy9JCnLLSJKoPF/aiQVVLLT6w3SQNr/meq9SQ9fXLFLCwFLseRwtaabqJG4Uv97uFZ5fZh/Nvc0OQ4n3L6ytc1VkRMNGPeTqKUHHsaaEHZoBa8ZE3u9xAuy32iG5BqTNezwjzu9Uuq6sOZTtgvz+nCcNpm1bm0JHaYU1Ys8lOZOmcL3XT6KatPoiPf3XctP99n3GUYH9guIfs1cv2bR/YKOog/mYZPX6fyNHs49uGyTYmMe919hxY/C0VufmdaTgsJaIMCZNQ4l6WfT0pi7vQJ9XB5m+fUU1GSGwx+g+8UqzA5mfqQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(23010399003)(1800799024)(38070700021)(56012099006)(4143699003)(11063799006)(6133799003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zZjXsio4vW84CJC1iJkEyFPQtuFetUPhoLXP/IWnW9cc5aygJh3W46i96N/F?=
 =?us-ascii?Q?hwYpIYEBVM9QzdZuXX5eXwgXQLOXFM2KjluBB/I+WeCLuZkzMKx2EewfAop9?=
 =?us-ascii?Q?TQGoz4YJU0i6uLvv7kjl5KXaeg+Ars2DDfAc+8mJGOz/zNW1z10uFnpCMK2I?=
 =?us-ascii?Q?sc73xPtw6jac/7fHVGUGNI8qQ8y9sqfnCOd3cI5O3QiIhVWhhkjRQeCKMn2S?=
 =?us-ascii?Q?dHh6bs5mWDlwzLQs6lmIJYBzKSJuBKaOyM/f8eoCCceQYwgmNFUEBbAdCF59?=
 =?us-ascii?Q?pXpPFAY3pYwqzxSqs5pz1jo/uuSfc6Rfq7RfoXVW0E1vao4k0m+zGdOFIlIX?=
 =?us-ascii?Q?HP+tjBCZ2Oro+8Usc8Dg9hkgtuL9Iix/4Zovp+PQPYNH+7mjjO9cu44lTUdx?=
 =?us-ascii?Q?e7hiNaHEAsf75chV45ztrJBSueWbCHrK2y3IgrzZhC/4U+kWHRcknMK1xzdV?=
 =?us-ascii?Q?wRh0Ys84PpsNosPqDGmocRfbTdZc0rM9vvJSjF7LwhlKOUeHtRWWTqq5sbRQ?=
 =?us-ascii?Q?iCPH13otjF1LxcgoK97kPvAePKtcEJ14LS+MT/SC/CebrZcxTkNX6qT+tbFG?=
 =?us-ascii?Q?BaeDB2Fn6xTXTXh2eo7lScm3ehF3LAk7fTCCeg2TEDJVvrLXEx5I77Obzwmj?=
 =?us-ascii?Q?blh0mystZCnuYNGNsW+/wE8rRvlPP49tmcv3QtMMfUDYncxVq5d1G/mr6UnV?=
 =?us-ascii?Q?v2cl5lut/wt1AvhTNhsShhj0MrQjwqprAhLnn9WDVqVh/DiaKkxerwwCm8yv?=
 =?us-ascii?Q?JYPL7iugytj9uL7B0xMPqwNgK1YJj1jbsvSJI6N3GYnILR2KlMUfqEnz/I8t?=
 =?us-ascii?Q?Z9vUcM1k+4Pr/pyqWBMxhSg/CE9e0VH4Jy/sAkcaMbvZWsoh+pPjf8ZwuJl+?=
 =?us-ascii?Q?nsmuEsDWIxKNpxvPFNtWwvNpmul/ZZ7FJ/4rrAYwML2zNNyx/AJw/k5sjzdh?=
 =?us-ascii?Q?t5lNQ3PiNlOIzm0NQ9v8BPwdpo945csFvSwqkyx5dQh3BpWSMxyNa7Gpumff?=
 =?us-ascii?Q?lZmVB3DTnxDaIoeXnTmBLJ80XED8TnzAn/YWJCXykK/Fdh7Vlz1HwyW/Et9o?=
 =?us-ascii?Q?i6xiNbhVqE0gBWJ6MMHR5I3j0tjqiz2I7aBSixsrPpIPbATD2sWyfNf/Rul3?=
 =?us-ascii?Q?6ayeGQVbUze2heIsTen2aH2fqaYfpD6nuwqH4ewVLc6IgbiHpc4wES8nNwro?=
 =?us-ascii?Q?AwiWEO9f54yTBGgxrT8JFgMACFKIJft7bPwWYoP92qnvkr1O0BDL0X0gkQxB?=
 =?us-ascii?Q?90+SQFl4cUFTYSuVS9/Il0sXb7WH/iIDxcwYleMnF30R7CcD0vLm7FJhJ8+i?=
 =?us-ascii?Q?dUo+Ga7NQcWRK5YNWB6WV63+pkdSsjvLLAz6G844KXmJ+N3VQjBXXLoPAbud?=
 =?us-ascii?Q?TfwaG3i1i1Uj174laGatDq5pw07clP5qP0A5VmaWjobb2yLe+1PWfDLTFPC5?=
 =?us-ascii?Q?S4L777p+cr1w/O3rl9WZD8p6MNw9nTSO/4GLFKxaRIsWdXake+80xcijz3zH?=
 =?us-ascii?Q?+zyhKuh2YpTIeTbt71sHj+mMf3xcTh41FTg0fi23KbcYxrEqdMi4xrtvMIeX?=
 =?us-ascii?Q?HcllWvsRoWw2qVkSmehV5Z7uT5+K7ic4khxDmtzt1h3XDVxwBgBi91gXxDYW?=
 =?us-ascii?Q?VkahpE4/ccKNEpbJ6ktQ8TM6QNJAfIEqeMvGSHNtzxZ6fbiq5lH84JUkGLyA?=
 =?us-ascii?Q?T3xbnKKDPd5yZTuEBnSddZOFxwkNDlsYAPzrbCHTG9g73/kuHmHgKnfPIbX9?=
 =?us-ascii?Q?rmdTkgrjaEW/uQjSiH5pMAcr+k0ubXk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KygWAvq5eRBkNpx4Q1cRey3HeE5sy2fnZWTKS+fpaPSnhDpxz6526y46Qmpgynjyk2OM4zG4ovdiqpvNzT0q/Ul8lCi674WOg4D0bbxkXP5Ju84WNgEl1thaxwovMcEuQEdOEsVSlZGZntv41f7dBkOe/tTAzYrXDyI70YNxjxelZ2jzURoKLDBJOG1YQLjOli8vdMHwLouTCpsTEvl98yBbF0k63LIQlupPFYfqGMgEq0nwe/DJI2P8usW21mlvTGtJUHBIMtvsxnSOzYH3WpET6y+ZqfdZlhXPIHdQZst06qZsmGUl10YmfkbcAd7YLaOOEJye6LqW0s8Me4P8cw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6223ab64-c787-4a15-47ab-08dedc2c343f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 13:32:34.5242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JMiTuCURbLZj2E3kg48hlVoNlJRH/L2AlUd54eCzgfW6adpeG/YfFc8eA0GI6Uv8z+H0rHd2Uyt3V+pQFuVQI4T+4tv0mEb8E6wASpyrJ4c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4754
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783431165; x=1814967165;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z0FObJDMgIhfzOhTYrLsq3JECNzN4RpfIlODcIabxZg=;
 b=lSq+F2bnwx4kKG4u1jEjYDkB0MVURwQGr0DCpCSDwnL93aPjvS2UyxaF
 Maeiaor1aS8g5zLZm9DyBgqMoyvUxzf1X4QLrTmcfgeo/M8GRImWRiWE+
 QOga3DYe214bMlQTen0Tr8MWvho8A9/yXz8QTVjgOBSpo5Q9V5DmjyCxg
 vCFV+8bOs1DyHbGzfbY0XI0ceap0bbS2n8hEc5o2mzo3ALgjjcqOueRjt
 vX+/64M2+OJ5KG6Qr8hOmWvmI/VVTiK/5dJGHIz9a1L5jGPY+kF0aolAL
 MIxKs3qfvuatGCixj0hAt6ZVYoHezju8Q/G4EqLjlOJzBNYSUHss4GeLo
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lSq+F2bn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 2/2] ice: preserve uplink
 DFLT Rx rule on switchdev release
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:alice.michael@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:martyna.szapar-mudlaw@linux.intel.com,m:andrew+netdev@lunn.ch,m:marcin.szycik@linux.intel.com,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4CC1071BF2E



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Petr Oros
> Sent: Wednesday, July 1, 2026 3:36 PM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; Alice Michael
> <alice.michael@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Eric Dumazet <edumazet@google.com>;
> linux-kernel@vger.kernel.org; Martyna Szapar-Mudlaw <martyna.szapar-
> mudlaw@linux.intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; Marcin
> Szycik <marcin.szycik@linux.intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; intel-
> wired-lan@lists.osuosl.org; Keller, Jacob E
> <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 2/2] ice: preserve uplink
> DFLT Rx rule on switchdev release
>=20
> When the uplink PF is promiscuous, ice_vsi_sync_fltr() installs an
> ICE_SW_LKUP_DFLT catch-all Rx rule on the uplink VSI. Entering
> switchdev re-affirms it through the idempotent ice_set_dflt_vsi(), but
> ice_eswitch_release_env() removed both the Rx and Tx DFLT rules
> unconditionally on teardown. That clobbered a promisc-owned Rx rule:
> it disappeared while IFF_PROMISC was still set and the sync path was
> not retriggered, leaving the uplink without the catch-all the netdev
> requested.
>=20
> Skip the Rx DFLT removal when the uplink is promiscuous, both in
> ice_eswitch_release_env() and the err_def_tx unwind of
> ice_eswitch_setup_env(); the Tx leg, owned by switchdev, is still
> removed.
> Test the live netdev->flags, the same value ena_rx_filtering() ->
> ice_cfg_vlan_pruning() above already keys on, so the preserved rule
> and the pruning state stay consistent, including for a promisc change
> made while switchdev ran (which never reached the gated filter sync).
>=20
> Fixes: 5c07be96d8b3 ("ice: Avoid setting default Rx VSI twice in
> switchdev setup")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
> v3:
> - Corrected the Fixes tag from 1a1c40df2e80 ("ice: set and release
>   switchdev environment") to 5c07be96d8b3 ("ice: Avoid setting default
>   Rx VSI twice in switchdev setup"), the commit that made
>   ice_eswitch_setup_env() use the idempotent ice_set_dflt_vsi();
> before
>   it a pre-existing promisc DFLT rule made setup fail with -EEXIST so
> the
>   release path was never reached. No code change.
>=20
> v2: https://lore.kernel.org/all/20260622113428.2565255-3-
> poros@redhat.com/
> v1:
> https://lore.kernel.org/all/deef5756e534ef06c12d910c5305d3fd205d30a0.1
> 781786935.git.poros@redhat.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> index c30e27bbfe6e25..07e2016fb9481f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> @@ -66,8 +66,10 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
>  	ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, false,
>  			 ICE_FLTR_TX);
>  err_def_tx:
> -	ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, false,
> -			 ICE_FLTR_RX);
> +	/* keep the Rx DFLT rule if the uplink is promiscuous (see
> release_env) */
> +	if (!(uplink_vsi->netdev->flags & IFF_PROMISC))
> +		ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx,
> +				 false, ICE_FLTR_RX);
>  err_def_rx:
>  	ice_vsi_del_vlan_zero(uplink_vsi);
>  err_vlan_zero:
> @@ -276,8 +278,16 @@ static void ice_eswitch_release_env(struct ice_pf
> *pf)
>  	vlan_ops->ena_rx_filtering(uplink_vsi);
>  	ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, false,
>  			 ICE_FLTR_TX);
> -	ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, false,
> -			 ICE_FLTR_RX);
> +
> +	/* Keep the Rx DFLT rule if the uplink is promiscuous; it must
> outlive
> +	 * the session. Test the live netdev->flags, the same value
> +	 * ena_rx_filtering() -> ice_cfg_vlan_pruning() above keys its
> decision
> +	 * on, so the preserved DFLT rule and the pruning state stay
> consistent.
> +	 */
> +	if (!(uplink_vsi->netdev->flags & IFF_PROMISC))
> +		ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx,
> +				 false, ICE_FLTR_RX);
> +
>  	ice_fltr_add_mac_and_broadcast(uplink_vsi,
>  				       uplink_vsi->port_info-
> >mac.perm_addr,
>  				       ICE_FWD_TO_VSI);
> --
> 2.54.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
