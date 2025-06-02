Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E98ADACBCB5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Jun 2025 23:32:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BBFB40A6F;
	Mon,  2 Jun 2025 21:32:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XrepivwiDjCo; Mon,  2 Jun 2025 21:32:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E613940A71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748899977;
	bh=7GPfpJMaFDgfiGqF6M/wkT6OqsUAUi0RgJgpCEVbhKU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=665+gskdCE170aU34ZmmISL+kZDtjre2SjnJhPWgv4/jYPuba9cSlEhM6hffknBn1
	 d5QsfxraXEQ6ya0zIVb5+JVwaU38BpUrrKRiaEmTq9AJWm+ZGVh4vO+2iNQyAq/wbn
	 LTNVgDI7nsXfbKligv91NImM9j1CRz5sFNWXTN/aZl9241ZIHSz3H/hKu4g8LOJsHW
	 MZmJ9KxGu8dXJo84NKwxltWKN/Rx9xD8kIK6n0ujGKfGgpOE8RQ2nc2mVjd2xf+CTF
	 emeSjTjuJHFKAoOQHb/+d02OLUCRDbOndJ3cFrBO6Khuq9MhmWFalO1ABz59bbXULc
	 E/nM+lRZMYDRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E613940A71;
	Mon,  2 Jun 2025 21:32:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E87A1F7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Jun 2025 21:32:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E70C340A6D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Jun 2025 21:32:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PRZxxRdFG68c for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Jun 2025 21:32:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 043DB40A65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 043DB40A65
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 043DB40A65
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Jun 2025 21:32:53 +0000 (UTC)
X-CSE-ConnectionGUID: +aqzkEgcRvqydSagATVqhA==
X-CSE-MsgGUID: aVz7yUQDQxaEA9tX3HuJ8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11451"; a="61583997"
X-IronPort-AV: E=Sophos;i="6.16,204,1744095600"; d="scan'208";a="61583997"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2025 14:32:52 -0700
X-CSE-ConnectionGUID: co+jdYiETcqL+EIYvcmmGw==
X-CSE-MsgGUID: GTVtZ3obSmGkz5Nd9lT3IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,204,1744095600"; d="scan'208";a="145610049"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2025 14:32:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 2 Jun 2025 14:32:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 2 Jun 2025 14:32:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.73)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Mon, 2 Jun 2025 14:32:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dDUY9pDTk4kGy+Sy+dcYKrvd2HK/aHBGPegbxGxYzusFhNBLNCrR3BMd41n55I8HhZQHavJf5GNZb2kxHX+zVqSy6dSZV5D5nLrM2IWSQG4AG1oaigTs4pPy+7PRhEEOd1zu64a2a1eM+snlQbznEyUHK5hkun9kta9Jt9mYErztFik/Zxgqh123sAJyuUHzrbdTSnkG1FYCYXikeEI3nVBjxxzCpMMMjwCPMsg33SweUHc5PnJ8WFSd4n1ILndnsjyxbvxgqWrMT3xluCqUzR68OVZx3n3bAfBf8qSsudAmEQv5pVkH9EWdbusaNtjlbyolNhRI64nHtjw8lVtHQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7GPfpJMaFDgfiGqF6M/wkT6OqsUAUi0RgJgpCEVbhKU=;
 b=V0WT+HC3Mv2xIiqflGHdQty3qJzLXxGKEJMG4yr1RNOW9TwiH2emWvwduIkQMVYYMcvKLpJhARm4vWs1JMe1kcQUZABQIeiJ1J5DQGm77DthKCCRmOvBonHJ3kANVa+q5EvZzW1Z0+1uvQggYu3+0oSAgf52Z9aNrQ7tloCiJj0pLplYjoW65NSEpCsTvL8G9a5jCvL7yCUGLwb4P46tZmeySz/marTUeJfd4xggL8MAYzn6ikn+bIC5eewBtypNGB1qwuwxZ3ygMVftaGnn9XA2S6X+a4NJaDtsBTHtoR11SruJJ/4Wxg+bxj/NHrV11hzMCfQymdQAX1u9RsMB3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB5926.namprd11.prod.outlook.com (2603:10b6:510:14d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.30; Mon, 2 Jun
 2025 21:32:48 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%7]) with mapi id 15.20.8769.037; Mon, 2 Jun 2025
 21:32:48 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Damato, Joe" <jdamato@fastly.com>, Jakub Kicinski <kuba@kernel.org>
CC: Stanislav Fomichev <stfomichev@gmail.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "john.cs.hey@gmail.com" <john.cs.hey@gmail.com>,
 "syzbot+846bb38dc67fe62cc733@syzkaller.appspotmail.com"
 <syzbot+846bb38dc67fe62cc733@syzkaller.appspotmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, open list <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH iwl-net] e1000: Move cancel_work_sync to avoid deadlock
Thread-Index: AQHb0/1+MJXhui+C9E27yipPfrFUgbPwY6NA
Date: Mon, 2 Jun 2025 21:32:48 +0000
Message-ID: <CO1PR11MB508906CCB79542A1531B506AD662A@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20250530014949.215112-1-jdamato@fastly.com>
 <aDnJsSb-DNBJPNUM@mini-arch> <aDoKyVE7_hVENi4O@LQ3V64L9R2>
 <20250530183140.6cfad3ae@kernel.org> <aD4KXAj0ZlZ5b42f@LQ3V64L9R2>
In-Reply-To: <aD4KXAj0ZlZ5b42f@LQ3V64L9R2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH0PR11MB5926:EE_
x-ms-office365-filtering-correlation-id: e334bffa-0e5a-42f8-352b-08dda21d058e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?K2k677SPiLhEkpuU17c3rRWg2Y5vW5rIFfYRxBqxeGxn6rv/COAAAilUEv2Z?=
 =?us-ascii?Q?oHzGdUpYfYl7sHevV8n85BEQxzOza/RbAhZQr1bf6CiNFOwgQLwSkhpUc3BG?=
 =?us-ascii?Q?SAnHRVV/q7BsBEDK99rVs736C8o7QDfJnanU8b9fRj51HMzk6q0djz0OOnqd?=
 =?us-ascii?Q?DsfCnebgFHWuKg+zno2D12tFyIZTOwcZhy0R3I2qgW4l4OPgayVO0hbRb4I1?=
 =?us-ascii?Q?+ZgI7k6vRfn+9ZlLXXP/nkf1C09LIpEUbllprah3OEeLRLewkALTvnnovbnC?=
 =?us-ascii?Q?c1HZIpi5WL+/xVjlk1l7HqQcXf0OTxhTeoG8eXI0Tq8ACGKVvzuoiGyBTUgs?=
 =?us-ascii?Q?DQ1ThaY0GeMVNmfwgEM+o+3bF3i3RKQvnO52S9Ofb49JJUg6//QAQIhanMXE?=
 =?us-ascii?Q?51/DYt61AOESsDr9b7qnY8KjbYnG8ukdMZLTYC1R5tnjVbJWzRX6oQjIQDPw?=
 =?us-ascii?Q?/mW/2q+iT1l+JVlvGo8TsZoi1RRlmMx1BUt+gSgQb1OSxwxowKIHpSMmWCuv?=
 =?us-ascii?Q?IH8Ug0I8ky6LkLUMrWavE2YeSIGqO54VltLNt1VrMWFot3Jt2hgTDwD41egF?=
 =?us-ascii?Q?WpjKOGjwzMX27cIAhfaoMchwJvbxM2aS7rADGpAY2SGMOFS4HQQ8lrrp3HWH?=
 =?us-ascii?Q?8RmffEIJkuvgx6VByLU6dfoz2W3PVBvIJOB46/Lo0GXgYWgSESzKvBwE+lTH?=
 =?us-ascii?Q?ZYxA9ciNf+kEMP0lInHpztD0xbEvZwp0RcJ2dFNavGY5WS91ajCQTjhCqP6b?=
 =?us-ascii?Q?gun1q9NWMzMa+Rmx26+x6+1g6In3+ZJ8BTslJBfNLb23lVOFQ/SdNBQ3zquh?=
 =?us-ascii?Q?b4a00BGAoim81FUMAuiJjxvCknbRYX+ulmSLL4d1lxgcuAUVRcE5Xn9OlWKT?=
 =?us-ascii?Q?Lite+pdwmzR9n8y7IqRuRrIfp5B/5BwZxCum7wBlX/jDm69WkUvyCunNLMVX?=
 =?us-ascii?Q?kEyFwMZ/ogllzxQcP3wfNb4yzHsNpZK29cvZLJV5MuQM4eb8cjpd90AeeQ9D?=
 =?us-ascii?Q?3VMlW8SYkNDAFVC7MTleJKdXRz9nIMgWIYtaigj7nRInqq83iSOrwpvaTgmE?=
 =?us-ascii?Q?uTEVWOCjzSBACmGy1YXgDUD/kQexlA3ZyvAHv0krAMvNf3Ld2xPZsq/7YNhl?=
 =?us-ascii?Q?ZrKXEZc6WYlr4Qcd9qfU6wkz02WATtQk5L2tdAcRkeX4r90Kxv4PHA3ixHD3?=
 =?us-ascii?Q?x8VMezSETdxqmeSEcpa0bOiQjYdfVE5jnDqznRHsxazUtjmzQoNLOkhKk55c?=
 =?us-ascii?Q?T78nC+HeuALjdrLGvCnJMW8BUw9xlLSQ41mnY/vMEQpcJmg7NfKT8IwWhawr?=
 =?us-ascii?Q?wV+hsEx/qspMnbBtFn9ibIT6KMT6bqlUe+AnhPpP2DHAwbzObTwtnxD86Ljm?=
 =?us-ascii?Q?WS/8/xjBaXNJn4a5XiKkPws9gxwCMXCEzedtY+FOh0rAKjX6KjF+p0Y2ytQQ?=
 =?us-ascii?Q?hwe744PpVdhWphmlmqi+Q6OwnidHEYDhaWM8FqJprZZ6UpbOG3/jF0o/g5QG?=
 =?us-ascii?Q?KOz5CIEz1+Sh+B0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GRtjtQT3mOvm1/uk16Lj5jk0RYsg8EjIfXKEsytMq3dyKx/dQXd3XYkbkady?=
 =?us-ascii?Q?YBgw2wY1xF2Qc6XfnbbYTgJM7TzrhQaiLW/MCou94oFaqFBhDVyBtNx6TN6w?=
 =?us-ascii?Q?7MudBR2P5VCfEJAW+Mnv0GWEuEl8P8qEGm4eUYEET4ivEq0I9EjOoxkehckd?=
 =?us-ascii?Q?uxpr4Np1zkPe71J30Mg65cJ7Nf/1Thdhf2t02us1zXyF8olo59D8oi6yqLY2?=
 =?us-ascii?Q?all9TUTTFQwgFCSvXTflbgugswu2mpriwULmX86Lx9mCecg8DsF0YoquGxSY?=
 =?us-ascii?Q?M3TGlrrL5Sy8IPwB/LHBvi4p+rvTujd5SbTz3D9aHErxMoW6tGdGXDx/R+KK?=
 =?us-ascii?Q?m6+k3+73nmPIAudj8ko9J03IrfuX8JC9q+0gHaB+wVgpaEWDpCs+tkuemNEo?=
 =?us-ascii?Q?xy3lJcQglZsxT/74T9Qbnf00TUTIscHByF/ywsHFkbHeZTmOO2EiYemiRmZw?=
 =?us-ascii?Q?m3iANCuRpt/k/DDZ5qXHmVyHdjjDUs2X/ZqLcwJSzYAaWFJumk5klzmOaq1i?=
 =?us-ascii?Q?/bd6d8XKnvqomRnde1v0m4N55k3HaRqGXCa6MV9FtGjFEFgAFD0q8/7bMEt+?=
 =?us-ascii?Q?bGdhWOeZRtrmPm7LpUMNrZqMLOUlzKE0JjHqA3ho+8e6i1FkSy6KS7F3BrR5?=
 =?us-ascii?Q?TBLMNDwKK6nyi6Rvc4EhFk+b1Ab/Vs6mD++w6MSgq5AXpUBBAzIfVL/EHg6d?=
 =?us-ascii?Q?HE5V/aMF9n5BimCe3Zlektw/uLWYDEBK8XeUcxv37alfRm9umUpEjS0Z8yvJ?=
 =?us-ascii?Q?EJe06TfgVaE3kSUvHbq9P731CC3jpLQX7FDYpyehl8jEbMGtfAVwIlNWvIH+?=
 =?us-ascii?Q?nwhHPicV/eTo0Pj0uLLu+QB+CuP/7Q5uR/MhyZfasA/vRRBjjgaxk36/g9b+?=
 =?us-ascii?Q?WtQFxfvUetV/q0gkk/JHuM71nJSx47d1UxdM1BWEBCsIGp+xB3iHLXOhfIxi?=
 =?us-ascii?Q?0LLV5QwYUkVDSy0/NjHB+XHI2WBK4lKZOSVdgDQAHboW/7/njerOSDrDdaj6?=
 =?us-ascii?Q?NBYsvxzU/z9OABTPe22B6e6w/HzDWNTt/tWVH4HcswOl05GylW6ULPBIkLfs?=
 =?us-ascii?Q?6Ebq/vohA5dC99TeMdBZ43AY1nwEGWq4T0+Wv7KbPLDBkldp2O9E02pSU1Md?=
 =?us-ascii?Q?YuIPwWGqoUI3xkm8J4Ub+ixyoTPmv5VZNxy5DggtS87VPl+g0XpBfzHreNtO?=
 =?us-ascii?Q?cKPyb376Uyovq4y1AzFzSWDymZ5Hb4bmIKf9Mcv6LXbAI+YDpA9rFAJ0+gfE?=
 =?us-ascii?Q?CKxncagN60Xd+7B8kY43dg03uEoEZDl++lw4xEqvAbncgfcYLwTgyGiEn4KJ?=
 =?us-ascii?Q?Vfl3LbJiapMRcjVo5C21NmEZqhPk2XxTCLtiNcR3MXg5Q01J+NCcyqeScW6Y?=
 =?us-ascii?Q?YUF9oipDEE2lhXC95821l3+n+t5wlpwjk8jCvx4OSRLkTW/yXfDK7LqFNSWv?=
 =?us-ascii?Q?mF6q82D8UAsu2i97klpxjCv+5rCUuImx6q8pc5Htg0HIh6BKZI94fBEJcf2V?=
 =?us-ascii?Q?LrSHv7r80YNC62PBbe359fmbRp4OGsPwIemSlhln7qhnfpzHU7SML13N+Fsk?=
 =?us-ascii?Q?WGe5EyCvqRFh9XAyLQa8xKar3ZjZBmg3LjQMYr6Q?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e334bffa-0e5a-42f8-352b-08dda21d058e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2025 21:32:48.7372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZcFDM6zpnGyMSjms4rnOvdoIj4QqNYagAbW9v763mqM5Sud2JigFe3tKRw5/hK5EXBb3q2iW4Ra/06pDWaHbmDWp87yr5ddHYtvdpovY4rs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5926
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748899974; x=1780435974;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GGpYWIIhZGkliI/weB2Z58qXu8f1zGp0xywsfl9f6Bk=;
 b=b194ov8yQFraMwwwyL8JQticSl61wmamZrKCm+BSOouRPmNioaqy6FFg
 2QpcgszDhWheoGZoy8QIKo8E1ol1siXs18/m5H0jGrYrnen22gIu8GiD1
 p7NDI0dNUWlVvBwkQtM0o/AV2miHPoojKP5NOk3gU5Vg7dCWaR5iPWFbs
 NdkxzAQ4f+8Jrjp3rilaWajuhXvWnhWrhPW6T1r/GpTvW5gBAcEod4Dip
 to0RZgOkk+7obCJrAQkYGNdDsw+ysmXgGKHH6B2tmhHGKHUyjHuUMSXME
 uYR//AMYHim+nMDJRrZSYkGMGnq5UgWeHXxasesc7XR/7ViBDziBfh/+x
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b194ov8y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] e1000: Move cancel_work_sync
 to avoid deadlock
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
> From: Joe Damato <jdamato@fastly.com>
> Sent: Monday, June 2, 2025 1:32 PM
> To: Jakub Kicinski <kuba@kernel.org>
> Cc: Stanislav Fomichev <stfomichev@gmail.com>; netdev@vger.kernel.org;
> john.cs.hey@gmail.com; Keller, Jacob E <jacob.e.keller@intel.com>;
> syzbot+846bb38dc67fe62cc733@syzkaller.appspotmail.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; Davi=
d
> S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
> Paolo Abeni <pabeni@redhat.com>; moderated list:INTEL ETHERNET DRIVERS
> <intel-wired-lan@lists.osuosl.org>; open list <linux-kernel@vger.kernel.o=
rg>
> Subject: Re: [PATCH iwl-net] e1000: Move cancel_work_sync to avoid deadlo=
ck
>=20
> On Fri, May 30, 2025 at 06:31:40PM -0700, Jakub Kicinski wrote:
> > On Fri, 30 May 2025 12:45:13 -0700 Joe Damato wrote:
> > > > nit: as Jakub mentioned in another thread, it seems more about the
> > > > flush_work waiting for the reset_task to complete rather than
> > > > wq mutexes (which are fake)?
> > >
> > > Hm, I probably misunderstood something. Also, not sure what you
> > > meant by the wq mutexes being fake?
> > >
> > > My understanding (which is prob wrong) from the syzbot and user
> > > report was that the order of wq mutex and rtnl are inverted in the
> > > two paths, which can cause a deadlock if both paths run.
> >
> > Take a look at touch_work_lockdep_map(), theres nosaj thing as wq mutex=
.
> > It's just a lockdep "annotation" that helps lockdep connect the dots
> > between waiting thread and the work item, not a real mutex. So the
> > commit msg may be better phrased like this (modulo the lines in front):
> >
> >    CPU 0:
> >   , - RTNL is held
> >  /  - e1000_close
> >  |  - e1000_down
> >  +- - cancel_work_sync (cancel / wait for e1000_reset_task())
> >  |
> >  | CPU 1:
> >  |  - process_one_work
> >   \ - e1000_reset_task
> >    `- take RTNL
>=20
> OK, I'll resubmit shortly with the following commit message:
>=20
>     e1000: Move cancel_work_sync to avoid deadlock
>=20
>     Previously, e1000_down called cancel_work_sync for the e1000 reset ta=
sk
>     (via e1000_down_and_stop), which takes RTNL.
>=20
>     As reported by users and syzbot, a deadlock is possible in the follow=
ing
>     scenario:
>=20
>     CPU 0:
>       - RTNL is held
>       - e1000_close
>       - e1000_down
>       - cancel_work_sync (cancel / wait for e1000_reset_task())
>=20
>     CPU 1:
>       - process_one_work
>       - e1000_reset_task
>       - take RTNL
>=20
>     To remedy this, avoid calling cancel_work_sync from e1000_down
>     (e1000_reset_task does nothing if the device is down anyway). Instead=
,
>     call cancel_work_sync for e1000_reset_task when the device is being
>     removed.

Acked-by: Jacob Keller <jacob.e.keller@intel.com>
