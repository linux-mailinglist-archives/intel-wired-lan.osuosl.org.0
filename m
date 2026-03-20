Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMAkCzr9vGn15AIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:54:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 739E22D6D6F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:54:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E840184767;
	Fri, 20 Mar 2026 07:54:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nj9KTIUzQbyV; Fri, 20 Mar 2026 07:54:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F62684763
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773993271;
	bh=xBHAWUo2bV3UNFTxAbw0A8MhT8704zieHXf3eSAENto=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j8gBAbHXGhL4AVm5jMBIPsvtmYmcDJ0f9Hc48Tgvaeu/SFMyMZVOJr3Ij/yRm0NFP
	 syWDurCI286Dqx+fm0T8YnBuIbut5awFMNH6MukM3O1inW6MTc+mb0I1fT9Gxhfxfg
	 6Z2pQ+uXIpgim2k0uETLR5hWW1V4VJxKZy5RZI/acQWt+h9hqSv1T9DrFnvmrOU+yD
	 sS4PSSQ0H+/lbVZjcsh9WNFajHwCtZgAMh/8+UwgF2YmY8jMR5NBgsAFE2fVbIlbSI
	 TYRlYV7wQzBIMpzRaJLwE/qDiHOUqL1kIAndBMes9+NXxo4WCzlIL9gvFg4tMQZdhp
	 lodBw0aiUZBVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F62684763;
	Fri, 20 Mar 2026 07:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 738E41B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:54:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5976441D5C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:54:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9DI7OP4gG_zU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 07:54:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9B18541D5A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B18541D5A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B18541D5A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:54:29 +0000 (UTC)
X-CSE-ConnectionGUID: F4gN7gDPR2qw6azUaooMww==
X-CSE-MsgGUID: Sa6+qqpoT3uop8c+mE7wLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="78933360"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="78933360"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 00:54:29 -0700
X-CSE-ConnectionGUID: R7U2d/dLQu+AJoYJ69GJVQ==
X-CSE-MsgGUID: CdR75OBjQka2GxKEERq0cA==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 00:54:28 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 00:54:27 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 00:54:27 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.62)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 00:54:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R3W4u8PNkDDQLX4P7N+dm7hdz/ooV2lrq8XfUfh5Lc9YbP3ZuSUsOkZjUiE/Xs3lyqFD/bfoOqwsFizqNGW2acTROdPJkNCmTX2qsTXtm7K0DvkneGe6s9spMzu2VExVFNBIC1zBu7xRd58wdWoxg7JDQc2/ZPMClEZ1Fb/4d6tGuT3BY3ZvcnkY4Rj+8U/Sg374PKeG1xj63c/iycQ3CFS2XjRmfytyyK0o5qYt3G2ra8GOW4ELT1ZFGSpRJxGPhqfuIdL8mnWs2bMQnGD/UcrpWQ0U6IbArLF8R2k7RjrQgrIpqmPoAY8ef5TvC9gWvm4xUTyOPrOvu9G2InlilQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xBHAWUo2bV3UNFTxAbw0A8MhT8704zieHXf3eSAENto=;
 b=QBjDeP0krG+V7DuV9ZgOItX+CRPGNKq2Kxly4xW9OOP1o3He2i17FdDSkXNHDPrRNffZh7UnniCQSV4m3gXfCLIdiFSZFYfQBcBStsNXAyB6ZUChrqZQLssPv9o1mNYIOqrr8hl1WvNz/b3dh3q+W0eZcxHbuwr/r/yJx+qF+qizm/lXZAJV3RVKE7vHYbOFNCnNbCa+YeERcFy+a+m5GEDY6uU63mzGZe41tO2urTGzviehwHLFzUOZTa/qgFxrbNe0En82plyTvTEPt0EEzj5/wuSEWUg8d/rMWmklSHEVSK2o8pHenzAqB7fB0v+JZTJ75B0Imxfi73Y8KvG5sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB7938.namprd11.prod.outlook.com (2603:10b6:610:12f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 07:54:25 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 20 Mar 2026
 07:54:24 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Stanislav Fomichev <sdf@fomichev.me>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "michael.chan@broadcom.com"
 <michael.chan@broadcom.com>, "pavan.chebbi@broadcom.com"
 <pavan.chebbi@broadcom.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "saeedm@nvidia.com" <saeedm@nvidia.com>,
 "tariqt@nvidia.com" <tariqt@nvidia.com>, "mbloch@nvidia.com"
 <mbloch@nvidia.com>, "alexanderduyck@fb.com" <alexanderduyck@fb.com>,
 "kernel-team@meta.com" <kernel-team@meta.com>, "johannes@sipsolutions.net"
 <johannes@sipsolutions.net>, "sd@queasysnail.net" <sd@queasysnail.net>,
 "jianbol@nvidia.com" <jianbol@nvidia.com>, "dtatulea@nvidia.com"
 <dtatulea@nvidia.com>, "mohsin.bashr@gmail.com" <mohsin.bashr@gmail.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "willemb@google.com"
 <willemb@google.com>, "skhawaja@google.com" <skhawaja@google.com>,
 "bestswngs@gmail.com" <bestswngs@gmail.com>, "kees@kernel.org"
 <kees@kernel.org>, "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "leon@kernel.org" <leon@kernel.org>
Thread-Topic: [PATCH net-next v3 11/13] dummy: convert to ndo_set_rx_mode_async
Thread-Index: AQHcuAhxIgwNsHlDykeJ2WPIce7jKbW3DV3w
Date: Fri, 20 Mar 2026 07:54:24 +0000
Message-ID: <IA3PR11MB89868197E2482701583AFF6DE54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260320012501.2033548-1-sdf@fomichev.me>
 <20260320012501.2033548-12-sdf@fomichev.me>
In-Reply-To: <20260320012501.2033548-12-sdf@fomichev.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB7938:EE_
x-ms-office365-filtering-correlation-id: 171a6f0d-1940-4395-a805-08de8655e788
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: BYkWAZQEvX5cRzL/AYjE0Tz+QlGJ3E7xwoBWbmoyZAumnyzCEpvefvTy1PvEREca78vsv6ds8TxOLCG0uqo+KYByWdHgLT5HPa7I8BK8NiohTp9Ku17eLux4eEarM1QMBPVCMgWVmMX13/Jt5k1h88n+i2pp4CjrPu7r9Ztone4SbZs58JmfhBY5F6LIXEhObUYuJAcLAfUhADgRIrGn0J0P2JxdSI5E9cxG9D4Rl3v/eZqdEcnrkC7awOLyUNAFFM7PgsD4qL/EVpsmcuHEGqj7EqEnJbUsIpmWCRrHWO0K18CUu0k+Jp0NokGi8V0+QUonQ3u3tGTxH5mrzxWNW/GZc58UWlS2Uuh3cY2c+vN6WDl6X3BuBTkNwXD82ccsJKwq+knUWVHLbqHR0ywEWP6Y/ye7XIXxfgElhjNMOc5t7yzezZHEI40qPXVKNaXh6TJKiVE6IdUvTZbI5nCNTfD8dLES8sU6wjQkRQvfUrRLZuCRB1CbopfZfS5yTErNCSoiSIreRzm+2NBiM8EP1DNvYB2dqOFRVaEevwd8REiHafgwfb3mNNQYPghfGLoxlrZQA1GcjfpGkggLi/LmBAn7OaGszmioFJXGhSRgODAznN1SSjgDuW1kq6WWiIPBtgoEbE+994ZOiCoMUgbwzNmgMyZZ2l5SjvE0nm1mTMkrznGM034+yIvLhnXjxYUkCOYaxJfR4sZrYHfsdEtXOFth5JmCTifAmpQbbamlQWyLCcCYYHby+V1dpD6lmMr+cpM44G8sPWop9nTlyHcSRPv5JVldSRGRYVjj6x75ri4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qiTp6cNEj82NT5PG7fo/mtqhv+8P7EJh5weQgrTkP1wmG5LKwvdeZXNQa21G?=
 =?us-ascii?Q?9BVIUNmOi2nw9dCvp9WpOpLPd1QLp5PNrbWJowa3WB1j0rLnnM12Tutk0rsB?=
 =?us-ascii?Q?wqPpzMOpzAOvdfexhFrI+YEHXrOovbF26DmBSQ1pmycZLXdCKANKQMA67nPj?=
 =?us-ascii?Q?9iJOpuZb9Rn51cgOVHF0tCqMtzhmqlXVY/rimRAOqIs/KyEi3ZHm0JccP6jS?=
 =?us-ascii?Q?0KPTiUlA63Do0zEMAxnxFzPoFie+bnzx1c3BskPMSqfoSHY8ZKdu3/gnPl+l?=
 =?us-ascii?Q?+XQUX6u+0oeDREEUYfWmkLEAqkhnvP38KA8yw69apkxNCwdZ5hRfk803d9yH?=
 =?us-ascii?Q?8jV03JULkpDDczEhCgzcj2hyZeI6wtZzqOgcADSHxRTWqv0SvrkRqFP90TED?=
 =?us-ascii?Q?9n/kDr05iaAfB0iV49OV7/EllrvRRU4i6Jvxu9oKvY3kxMPo95bcTp5PNn3K?=
 =?us-ascii?Q?k9If/BRF8/CX4lBdBglQqAPB5Xuu7txUkjGIArlPW3Jsu+ZVxEXbbgIhnjA4?=
 =?us-ascii?Q?PVXQk5GmSBVHqCWcB5VX/usAZv3gz54R7HfUBM81RT9LU1rjsqw4PatsgKCn?=
 =?us-ascii?Q?0IH1TdFxZEM7uBAWWIlunI1C6ZKNrwgEGcG4G2U4itCfpdGylnQuJUbVgA/m?=
 =?us-ascii?Q?7EIpPZ0D0KMp9NwZpCkPtgQhHkfES4VotbMv2Vf1bYF/iGriKuumjljqrIzK?=
 =?us-ascii?Q?/APrQNEH6IJpf9KUNkwWBv46xxe/doOUpL3wsySOLBTQCbRBxClYacDusxyL?=
 =?us-ascii?Q?TMQ/qEgmWYTRtPhJXONhPhfPU55qm9NPP7fvI3N/cfgYrUmbOrU7fd6mcTYD?=
 =?us-ascii?Q?v5F7UlfPjBu0I8L89ZUA6/HOzp3PnAfk+wC+fAw/F+pfeB4oeofNj6fCmz4Z?=
 =?us-ascii?Q?js/S1p6ONLn9FAxB5jv8+BK3n94O7OOLqiaFCXvhd69MJ2b2h/XJ+FkWHekx?=
 =?us-ascii?Q?Gs4ARRcp1yy4cyvyfW/pG5oDM540nZ4jbOpXAQYMGawvE7T6zinyEJm4boPj?=
 =?us-ascii?Q?0hIFm9Ob3ZSznH3oqfrQZ6mPQtA0xxUVNkPew51GPRS6dTAOpu+mCrn1pmIY?=
 =?us-ascii?Q?fCPi4EpmRWIuOl2ldpay2K7LK7HxJnwwjttZi22lxuq8p/wPqbh3X3uhGONC?=
 =?us-ascii?Q?AenEwYHcsJSbhXCpJpa5LuBlQ5hVjozdLeKzIlXYRNjw9Qh8UTXYuiataJap?=
 =?us-ascii?Q?6w36wYvHvF6d15Bl44ZR07uvTG/7PHAXheTO91WuKXnNHsejTPZzdyq69wkE?=
 =?us-ascii?Q?BF92+J7t0CsyhfVl/LrrwRnXQM1Uih6BHnSmwAXTU0ni8B8tojlgfVvLolpv?=
 =?us-ascii?Q?8x+WUmkfrxkyK/245a4YjmPnFY+iBTSeiVKDfxG1srImPjuRxr3GphIv7cGe?=
 =?us-ascii?Q?W/12Si8zOtysWHF7REcDC1PxaZ1Zoum+tDcW3Wy9cttyQ9plCzcfruq4UO8q?=
 =?us-ascii?Q?T7cVERWIV6OnMl6xSkoFd1eJ2nK8yxFz/xhFM9ULJD1MRklbrL+ZIB/LTO7g?=
 =?us-ascii?Q?5wCgZh6rcBnJn44+K0xvHvIfCGNy3vHZLDYa3UMROw57GnoCDpVi7xJdsll1?=
 =?us-ascii?Q?v85YEieUIgvp0sjsFkKI3fb6GPGHHNryffnEs0BrQdvlZbK6CXqzjGcHJlTy?=
 =?us-ascii?Q?vRJLfXi0wpwROb1+3C7tlQDh8Paok25XNwoGXrmHwVmMJWMTfW7BlFZyohPn?=
 =?us-ascii?Q?KBllX/onljuHCwBBw8YJvhflSR/lQHvZO2pe7nupQYIM4DYeFdZJ//iZev/a?=
 =?us-ascii?Q?0fijiVhtmMpstNZgF/1r9hLOWq8hRHA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: J3sOfI2wFakwCco6hi32NAxQFRfF8FuNJSXVOxSR+mPKYV9yd/xaXV1RQx1t360BNL6joklFMqhP4e3OrqJMTgmou27pRqk2mZjz58roaXh1GphQWWRq38uWm/dtx5Y3d+F2iyRnToRw9A2+OTEfynYiuhQVcpivlEuZ/Yj3caetDK563f1i7Mfb1HQ6Xig63HMNfczqFv5yXAs132Nl0AjFy51bEqBnMEcy7h1ST9ARUormvkkSqSqLoJPvcuWAL5RMGSFzvoQqV9bvd6fkQ2+PAngqc5x5b+3URX6fJUqN/rOCKvpjPiVpyFXU7ZkYfGboJqMnWZzqaSILsOsfqQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 171a6f0d-1940-4395-a805-08de8655e788
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 07:54:24.7467 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BtFd5cPNSSTeza7FY+sRtKFmlyPVIR1q3dPhQLfIE8hLysUXtSmYjPhx1GKN0ZuPduDglBoQjbOKdfdQY+4DF3bKN9jJ4gGb9hl5rRiU9oQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7938
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773993270; x=1805529270;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1tlWLM7cdQjxZkXEONQOD3jMl+HkuxcRUYMjnAwSPOQ=;
 b=D8+Wk2nkonuzWaNeh4kCaWQUT7vpTx2ZLHOh2qZ4BIwBQL6c/shH3MbI
 Duvh1KkWW+XSrrsgKDuHmdjFgHapkdwxLITFQ83hZputgBsCl8vSRu07S
 H8G+LHoj8VOhdXxVxph0Ksg7WZ8zThDSMRoJ6jVmKdzQgVWtVSdUefwuY
 8y1Yq6k7QOVaVv5Ag8yudotHhZHTpaAU7u8jkxnxt1orZYc7wESKaZP2R
 IMjXEHAfNKfVIimslmRuXg14CaE67PNCzJwYHC9lLkBsF/nvYl4kBEX0E
 lZn019eD6kq677ybWX9xp3lFFTVGU1KXlKPyZ6o8CSJrLfQxaxXf6Cq+H
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D8+Wk2nk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 11/13] dummy: convert to
 ndo_set_rx_mode_async
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,vger.kernel.org,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 739E22D6D6F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Stanislav Fomichev <sdf@fomichev.me>
> Sent: Friday, March 20, 2026 2:25 AM
> To: netdev@vger.kernel.org
> Cc: davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; horms@kernel.org; corbet@lwn.net;
> skhan@linuxfoundation.org; andrew+netdev@lunn.ch;
> michael.chan@broadcom.com; pavan.chebbi@broadcom.com; Nguyen, Anthony
> L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; saeedm@nvidia.com; tariqt@nvidia.com;
> mbloch@nvidia.com; alexanderduyck@fb.com; kernel-team@meta.com;
> johannes@sipsolutions.net; sd@queasysnail.net; jianbol@nvidia.com;
> dtatulea@nvidia.com; sdf@fomichev.me; mohsin.bashr@gmail.com; Keller,
> Jacob E <jacob.e.keller@intel.com>; willemb@google.com;
> skhawaja@google.com; bestswngs@gmail.com; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; kees@kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; linux-rdma@vger.kernel.org; linux-
> wireless@vger.kernel.org; linux-kselftest@vger.kernel.org;
> leon@kernel.org
> Subject: [PATCH net-next v3 11/13] dummy: convert to
> ndo_set_rx_mode_async
>=20
> Convert dummy driver from ndo_set_rx_mode to ndo_set_rx_mode_async.
> The dummy driver's set_multicast_list is a no-op, so the conversion is
> straightforward: update the signature and the ops assignment.
>=20
> Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> ---
>  drivers/net/dummy.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/dummy.c b/drivers/net/dummy.c index
> d6bdad4baadd..f8a4eb365c3d 100644
> --- a/drivers/net/dummy.c
> +++ b/drivers/net/dummy.c
> @@ -47,7 +47,9 @@
>  static int numdummies =3D 1;
>=20
>  /* fake multicast ability */
> -static void set_multicast_list(struct net_device *dev)
> +static void set_multicast_list(struct net_device *dev,
> +			       struct netdev_hw_addr_list *uc,
> +			       struct netdev_hw_addr_list *mc)
>  {
>  }
>=20
> @@ -87,7 +89,7 @@ static const struct net_device_ops dummy_netdev_ops
> =3D {
>  	.ndo_init		=3D dummy_dev_init,
>  	.ndo_start_xmit		=3D dummy_xmit,
>  	.ndo_validate_addr	=3D eth_validate_addr,
> -	.ndo_set_rx_mode	=3D set_multicast_list,
> +	.ndo_set_rx_mode_async	=3D set_multicast_list,
>  	.ndo_set_mac_address	=3D eth_mac_addr,
>  	.ndo_get_stats64	=3D dummy_get_stats64,
>  	.ndo_change_carrier	=3D dummy_change_carrier,
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
