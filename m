Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A950A4B907
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 09:21:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D572083412;
	Mon,  3 Mar 2025 08:21:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pwUpS3P6pC3q; Mon,  3 Mar 2025 08:21:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4145834E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740990116;
	bh=RolfEh+wi4LqqsvKISIdUoD4GYQNLThHdutW9JBIYwo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sFak7SN3h+2PwAN031IlotIROFbG9B8fYSg9Py0JzmqF9TqnPf/kvOQfSsRQ+D8n8
	 GzBCyTdfAz4dhMyOQFt27wpNIWJXW1QlS00ZeR5c7jR49O1NgYPIPuHHSVg/8bay8q
	 yJw1Z3gpNDpHVRiskT3sUZx3O5Oh0KyG62jJfc8AnSsMayOovXTyBWiVbk6JhLNWKX
	 OyVkM+y1AoxoW4vryfX9L0D/DQtUfNEYEPfnLiPIZZrKj3uN091yggwlshJgTlZsE7
	 txSC8lwhaevQLMoPFKOYZ5E2oKpWJtGs+zxFXoK52ntztUZSiRCqcuHu1UvkIsl30m
	 u31CYY/O7m8QA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4145834E3;
	Mon,  3 Mar 2025 08:21:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 82BD9182
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 08:21:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 664F08338B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 08:21:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RuYGVlq-hMNN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 08:21:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 77C1A832D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77C1A832D4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 77C1A832D4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 08:21:54 +0000 (UTC)
X-CSE-ConnectionGUID: TDiW9U8MTcu8H1MvH6BGSQ==
X-CSE-MsgGUID: FgnAionWRfm57hK63stCyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="42044383"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="42044383"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 00:21:17 -0800
X-CSE-ConnectionGUID: gaHvvq8+QtGEFFir9ZD+OQ==
X-CSE-MsgGUID: HCdZAZv4S0eP6y2UgNIDaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="118119555"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 00:21:16 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 3 Mar 2025 00:21:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 3 Mar 2025 00:21:15 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 00:21:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fScwyiMo80KdTUwIj6bHLA3E6RACOSs5CL0C6JLzxmXfWeqmRH/wjNSGZhR2EQeVqCw3AWgKpxwhDZKSp98tuB8E+eEuIVUHfzwEHc40eTBC9p2O1NFH//maOdpakAEpAV8TSpkOjitnoQTQYyTYiL7dSRf4BC/3Sh08tj5+1JTc+WQqz2+ndEHOt0nt3ex2ajOZ6QTMor9INlLQUqe/CV3Xfz8rXtAhDozQYAbCOq3DnQkIJ1S32XlLZZsO8Xc/SXkygaKEQ+wHbxvaWdfOgdOHgL1HSg0bFS1oy596DIgyDfFRQElJaX/eX5n9viZyuhBeDJdU5w/VbErm7/KWrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RolfEh+wi4LqqsvKISIdUoD4GYQNLThHdutW9JBIYwo=;
 b=RPHNsKmU5c5tNBLPVasF0kl5x5rJRK/lpeZTatrRSUz2/byccpa4QSXwDE47nKbUGKFCVzYZpAYLlauhp/H+FU5bSyobjZe5+OCTTGiavAShzb4xkrI9ZTQL8KvXluuE7rOb8fTADNDj+bO2dTv1e7I8vc4XuezX82dtv8gf3VpGprnJndPfs2HtvpvISvFuqgSYCWkxw2PQepFKGW1Y7PfbDXIadjBllnhq487RVenINYv2J4GbEd3TLJlATJgNpW7idEcqXd6QomBGu99XMKSu+7Ylz3/fz4KDP+gd+yJKtShh+jwJ2Abpk+XYh0nIIpI/ohwN/xmzwN3vXCmeFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by SJ0PR11MB8295.namprd11.prod.outlook.com (2603:10b6:a03:479::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.25; Mon, 3 Mar
 2025 08:20:45 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%4]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 08:20:45 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Mrozowicz, SlawomirX" <slawomirx.mrozowicz@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 11/15] ixgbe: add device
 flash update via devlink
Thread-Index: AQHbhFkDYq0Yyl8ASEmA6hySVmNE/LNhISXQ
Date: Mon, 3 Mar 2025 08:20:45 +0000
Message-ID: <PH8PR11MB7965906990F3D64C8BE9054BF7C92@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
 <20250221115116.169158-12-jedrzej.jagielski@intel.com>
In-Reply-To: <20250221115116.169158-12-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|SJ0PR11MB8295:EE_
x-ms-office365-filtering-correlation-id: 961986f4-c73c-4267-2824-08dd5a2c4ba5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zBGb8XP4kkp/nn+ESmESYIkkeYTmhfDeGIeqrarTVFxuEeREWlny5w8nTkYk?=
 =?us-ascii?Q?rHUbKpoXEEUcE8sOY2vE9t6xvyKpbBipWQz2fGufVCEFFU84RVGM776ihb7L?=
 =?us-ascii?Q?jpxLZE40FgbfKw1VHAbwEgs/23BUom0638Ij9ADIjZlGVrpMNeTnFeBwc/8d?=
 =?us-ascii?Q?xwGAFYy3lljO17BO/J5Z10fKWithP5ndMa15fbcjfRsOA5Gz6HHhZSyD4Bqx?=
 =?us-ascii?Q?u2JRDX6/PHtGwVRUVFCoz7j6RPr+9CAPdh5Zrxr3e7UXSvUGtQ2/a3LfNfWd?=
 =?us-ascii?Q?t2VsVLXMUCmyPBmJqF/iMsrgvSZq3JcQMWx65yNIttR+q5eBs2eUVtFqNjfp?=
 =?us-ascii?Q?utT5MXy6S/oWo4Z6LKh1FEJ6kbpm+SM0O0dzLbBEyk6P/xZggkwxc0gnPlju?=
 =?us-ascii?Q?7rgsMNN/lhBWTCjZ2eBSTw3pbwnqxcOStSCBTNypik4M/A6EW2kcII09ssLQ?=
 =?us-ascii?Q?7BjXMr64480nIDjDur+W8plk2pWVFMk+eWj7PZ16WtJVXPw45d6atKzt02+Q?=
 =?us-ascii?Q?SvWneKaeEzF7yulFOFcr1a2+9TKHechsllA0gupzgsR/lUxBZ4ubeEZifGlb?=
 =?us-ascii?Q?q9BjnX1R3vK2FOrIXpLq83yJhIcgOYDWyG0EEnLQQYBGQjgFV/VajgNmjosF?=
 =?us-ascii?Q?wg/POpMJaUbRIkHLwNq/V+JO/+x5XqVmHpE2WwqkRG++/C6WMN+zkS1TvrmS?=
 =?us-ascii?Q?fgMmnCoLvgBXQq7yMoPyXK0hLVd5NEJpd/i0fhZZmrQv02ZD5D3l/iBMf/zZ?=
 =?us-ascii?Q?cqGPekSlvkYX+A+DIdUu+0Y0BWP+HzLyXpsCq3SjzLnCKguLxj1iFpUPGseN?=
 =?us-ascii?Q?xXHIw3mtal7ryranuQCvVYmuZNom9x7semUipEN8Po6meWcHEjxPL9BH5xdh?=
 =?us-ascii?Q?GYODgg6n8nD7z7GG7Xk79VLX5VQHxWw+V11JMVMYii8To9jbqtLitynaYyn0?=
 =?us-ascii?Q?lFQCUefbi1LrUApbNl0hJZ9kpqDsZWd4Wcw7uNUPjNPd4KtoruzYJPDVnr13?=
 =?us-ascii?Q?eJdzQCHFjMeqskQUkkfuDmGRDVLIlX4cnvnkijk0C2BK7k9qNckUlC6zKq54?=
 =?us-ascii?Q?21CPNg26MdajNl5s58O4MzW+7gUIxQ2nN/6qbiYq6au3oWzTkrdfT07t6qSm?=
 =?us-ascii?Q?7MV/JgC+zCgMNtUxXzn86PrElqndajzAVx3Ukt0VDFe0cFq/f5TXOTMAYt/Q?=
 =?us-ascii?Q?5PRu6R60FmcYiUdMUC8AeP0wNO2lITzIVLYRGkWPciB17moqRZUwjN+lSSnY?=
 =?us-ascii?Q?5bOy8JL5uToTFVRJo4FnTY62pf4rQkrvMpFT28FEW8Sw08vgsaSeSBioksKS?=
 =?us-ascii?Q?MTmqeDtKWXTHFvqCN2HOJSDRy9XuqBbM+3MDhITCFjgplBFUWigwHCqOyOjb?=
 =?us-ascii?Q?PCuqjoIfRVkyieEg6PGavaqhVNzrsywmnAMnOuSeJmNCxjn/V/GBG8hm2ImS?=
 =?us-ascii?Q?Yr4g/ShoCKMyrW3ftCQPb2ePZXkLaV8i?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Okupcd8vLbbuW/CD89uvNrZEdw2P2XrLnGTay9Ca5zF1Vh3rcQjzSsEC9fk+?=
 =?us-ascii?Q?/ynWH+bUChJABRmUvTWklUdUlkFAOcwx0FjQl8RI7kxRurF+JZzD0FrAYJC7?=
 =?us-ascii?Q?hBj0N8BBe1jfZ3PdG3VMwb2f+VoRX7ZE9+dMeTJhJstTaEFcmbuZvCO71GGh?=
 =?us-ascii?Q?RRP8qzriK2XwoxGTl6QhLrB3o0qr+U6nn2s3eNg4Hv1F1CnYO0D39ITOsjyx?=
 =?us-ascii?Q?UrOe7VeD5hziEtKeCwyb4kG1GJPYU9nM0tqwIe6PsAS+ZEx+qbWOrd8xstXD?=
 =?us-ascii?Q?qYNb/4oK5YHzhSmOmuNu6rlhBGwBs/wBH/rHEjlNuIuEY1M8tMdScVAE9uAn?=
 =?us-ascii?Q?12c0F+mP7hC1qgMV+VKNtyKQ6AFm1AE96MEw87F1KOeGMBHaFp3G5yP/M9ql?=
 =?us-ascii?Q?u+CcXYKRCiZdRMnwIsN1cJ47x+GO2FDHAH9yjse21LTrnJgMCg2WIDUe0az+?=
 =?us-ascii?Q?LQJE9gqbPClLaXZG8NRhU3KJpTn7+6b5nytMkbg/4PZ12wYpByoUJdesTTdK?=
 =?us-ascii?Q?kEjKo8zyyJyT9hhuC+xLoWixc/oImtCsftCf80uXwGtExXLbWxywdIZPlQRr?=
 =?us-ascii?Q?8brItJLl4SwuKzhlLYNCDo7f80d4fjj1jyW0F9XLXUrnr9zJp2O9vIzoAhvm?=
 =?us-ascii?Q?6dElLtPhAaM+GcEexSLOiqsCmvlDC2bKwSh0C/Z2XVROBiaMcCeYwfbpOIZz?=
 =?us-ascii?Q?dMHv0PWEBAClE49ZeDVTxs7+8tdS/g9rqHmGSevkB06MqHMKISfuZxreaNXe?=
 =?us-ascii?Q?z+vJYd3ZRw3cVoHH3uIepSztTeSFWdYGoQEDgq/0BqJThm6EWtNvGk6Wlb26?=
 =?us-ascii?Q?xIttDRoV61tcSu7lLMmpBg6Ad9f1c0s26x92R/C+Oj9Raw+wtfMjBHHY9P9k?=
 =?us-ascii?Q?OHTEMuaS2rShPlOilXPJXdovF7aCuklAeVNId920O+xY87OOEpOpNWyssGUY?=
 =?us-ascii?Q?S6cIeRYcc+JkUJ0PGCkmBZFS8fsztKi40sPmHyrQJ0wKY8EnPmZNfOXqUh9h?=
 =?us-ascii?Q?QNeQXCKX74w0P5/PFU3blVxbV67WGDO5JNSAyz94ZYcMP203IqFbBT848WHJ?=
 =?us-ascii?Q?W2YKnVbgC8eU1wH/b0d/cwekQYRtfobWhw+TUPhnNJFx1stXG9sUuESfQvca?=
 =?us-ascii?Q?uIr6mImPo2M+N30VV3MQy09Bo3zCEWgcJ677A0xIC9o3a2gSth9aS5yNnTOq?=
 =?us-ascii?Q?OdzP/anJkTgVY+8oFnRp/NMTCXcOex6MC5x5tRByqx5Z6BfLhxaEjelqke7A?=
 =?us-ascii?Q?2uzmLPQSM4iaXD7IRjH89g6YnlGthDWVfz36hf3qZnetf0e2niM7Dvpogj+r?=
 =?us-ascii?Q?EpBAWWjD9kMeEMN13Wgcyw9eMlcOw5ZYuScg7sJrVMfAy1JSa2SXbwVl6WWv?=
 =?us-ascii?Q?qXlcgv0uIi0zj2FKSaB0dXb9eGj8RxdjYFImU3EcUoHnHOu9nr0ORKBu0b4P?=
 =?us-ascii?Q?2wBBFWWn+lMlKnJX4EXdanle+M7NnKbZXlwVV1+y7GRHLz8ChcTu1veB2YHM?=
 =?us-ascii?Q?chgsLVVz1E3TToi2Aq9u3a55qmaP3GidXS4eA60zsOwMQYAlGZ9PEhSyb44a?=
 =?us-ascii?Q?26Y2VuN4BRX/BCqdGGa671pATIj90v0+9ArLpIvl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 961986f4-c73c-4267-2824-08dd5a2c4ba5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2025 08:20:45.0311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eriAtCGzyPxLBdEBsvPsGL85Jk+chyg7PrlMn8oUJOxRMRlJG5YZ0WQw79g74QMTZ4L3I7jrkA23eUcd9XD8Mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8295
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740990115; x=1772526115;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wohmD52OsGuAIIJmNdP3PHtxgI2SLRfYa67fTU2cUXE=;
 b=N1VUjbn9h6w0bSBBdOrXOQvlFz6ZedsGRlXcIIZs4V/9Y3BOnIMj1WtB
 a6m6s7Em5LBwmLDOCnbwoIC54BE+If5J3TEtysPVnrnqX23vnGzSa/Nhe
 bdG4q2Jy7U1/30JRQ2DQw/V57uoIl776esEqUwp40DoYLwE3Mo25r347p
 AQNEinIaKWJ/62kZDtFJKqsMP9WOYJe563gKiciP/9+1kD0hz2qz7qiDk
 hA+DvKHKyPeFvVFw6D+cgwi0LMTWCC2nTUO7SP5fXjkOB92mbfGTsmf63
 x+YN8UII+oP2H4lOq5L07AHGc1+TbpzY3pUdUaymsHaVnTP+J7JNiQRJe
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N1VUjbn9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 11/15] ixgbe: add device
 flash update via devlink
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
> Jedrzej Jagielski
> Sent: Friday, February 21, 2025 5:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; horms@kernel.org; jiri@nvidia.com; Jagielski, Jed=
rzej
> <jedrzej.jagielski@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>=
;
> Mrozowicz, SlawomirX <slawomirx.mrozowicz@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Wegrzyn, Stefan <stefan.wegrzyn@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 11/15] ixgbe: add device fl=
ash
> update via devlink
>=20
> Use the pldmfw library to implement device flash update for the Intel ixg=
be
> networking device driver specifically for E610 devices.
> This support uses the devlink flash update interface.
>=20
> Using the pldmfw library, the provided firmware file will be scanned for =
the
> three major components, "fw.undi" for the Option ROM, "fw.mgmt" for the
> main NVM module containing the primary device firmware, and "fw.netlist"
> containing the netlist module.
>=20
> The flash is separated into two banks, the active bank containing the run=
ning
> firmware, and the inactive bank which we use for update. Each module is
> updated in a staged process. First, the inactive bank is erased, preparin=
g the
> device for update. Second, the contents of the component are copied to th=
e
> inactive portion of the flash. After all components are updated, the driv=
er
> signals the device to switch the active bank during the next EMP reset.
>=20
> With this implementation, basic flash update for the E610 hardware is
> supported.
>=20
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Co-developed-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v5: fix caps->nvm_unified_update assignment
> ---
>  Documentation/networking/devlink/ixgbe.rst    |  24 +
>  drivers/net/ethernet/intel/Kconfig            |   1 +
>  drivers/net/ethernet/intel/ixgbe/Makefile     |   2 +-
>  .../ethernet/intel/ixgbe/devlink/devlink.c    |   4 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 210 ++++++
> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  11 +
>  .../ethernet/intel/ixgbe/ixgbe_fw_update.c    | 668 ++++++++++++++++++
>  .../ethernet/intel/ixgbe/ixgbe_fw_update.h    |  12 +
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  64 ++
>  9 files changed, 995 insertions(+), 1 deletion(-)  create mode 100644
>=20

Tested-by: Bharath R <bharath.r@intel.com>


