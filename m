Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDbLARbIumm6bwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:43:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 588F92BE7AF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:43:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F16DA81638;
	Wed, 18 Mar 2026 15:43:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6dDBmsLEuXeB; Wed, 18 Mar 2026 15:43:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57F4B8176A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773848595;
	bh=MG/CgnBsth2cJ9rdUzJNGfr83U8c1ywCqvGqudeDdfY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MsyWVtq4yywSMaQuqhnV01YKAH8iOrd3rCrNtwRc0siQqFynHd2tZxQ9iMr6jssRB
	 FKtr5WfLTb0XckxQ+2qCc14OVQlW7LZLL1iX/+nb0g9j5MMZv8YD0mZWZQ7Q/GSPi9
	 fINXPZFV/gFwBwqxmLyEqCdXDpwCnKv84FtxPZi5DWTbiNk2Hun9+TDndlbSZsyVBr
	 tbBBJxPbp0egg600oPeSo+4J21GQGcjXhwPcXlTyPYm8AAy5el/1o2sHF2rTLsR7W8
	 wepWGGALQsvpkbA42K332qaAFviifRVgQLj99Ho6DomHDdnhxl39wRZkACfhtSSxE0
	 Z2bJAn3Y9Smxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57F4B8176A;
	Wed, 18 Mar 2026 15:43:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A6ADA1AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:43:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A446B8169B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:43:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j2Fvwi7RfN6O for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:43:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 99B1781638
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99B1781638
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99B1781638
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:43:12 +0000 (UTC)
X-CSE-ConnectionGUID: EptVzJQCRBC9kvQ4YmVqeA==
X-CSE-MsgGUID: xcCMhk+MTmiWowh9TkurlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="75087454"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="75087454"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:43:12 -0700
X-CSE-ConnectionGUID: XhEnq/z7T/+sqaABf/GGRw==
X-CSE-MsgGUID: 0WrKjBusT2On/R0Ln1bGaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="220099855"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:43:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:43:10 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 08:43:10 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.57)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:43:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QjahJmASiQ5F8SgGtKqZKfYVmovzbPMxZ+q40eXiT4LxEl+qoICLXXQ6ouGUWaeNEfLqnRNsSc/p2lqD1592hBh96hG51gRHiH0aZjToh+WrQ7XHblFGF9mul/606fIEz1+hFe9KOpU2/JcG/O1cEIXfkmv70O7VyTw+D2m24I/2Xyr1DadzUc2RF7w2LUR63vIaBoaB+TFGV8tEP6xnxz1kYaj6XZcNi6mIr57QmFuoQcgWlK3XIFXuNFvU2VIgZ5dT+KSJeK+jf67KxfL5An+GXuxlBQ0/ur3e+EUhSTWuhlUQW4alyjlv+fJvqEgZhT+GlyABPf5Fr5r3dFOs1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MG/CgnBsth2cJ9rdUzJNGfr83U8c1ywCqvGqudeDdfY=;
 b=cqQ5CxHT7F1jD0jPNXKGohGUlT7HDTNZO4wBvmwtbzX3Da016l1y+rT1/jH08EJhBcbD3MjcGJmKMSNH83w40LEPSgWGEcH/keKLIb59d3/WZE2xJtTqtuY8TayNKoHGzEimnOxECdsHLDQl8K7SINomMMSBd/1kVtn0KqzAZfAVzG6a7IIg8PKHAstzuSUg3WQzrG2D9Lehk8BKi32rkHe1rHe0pNepAVg6SsRmUbKEZHTol3+Bk1fMr1g2gliaHiU1d68AXR0yzw2rgt+bV2Ea81nPsdO/PRkh/yzzaw+sMzISbBjL9wAz5drUBigaLjUqajH2/GucF3KHSw+ejw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB6549.namprd11.prod.outlook.com (2603:10b6:8:8e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.16; Wed, 18 Mar 2026 15:43:01 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Wed, 18 Mar 2026
 15:43:00 +0000
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
 "bestswngs@gmail.com" <bestswngs@gmail.com>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "linux-wireless@vger.kernel.org"
 <linux-wireless@vger.kernel.org>, "linux-kselftest@vger.kernel.org"
 <linux-kselftest@vger.kernel.org>, "leon@kernel.org" <leon@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 04/13] net: move
 promiscuity handling into dev_rx_mode_work
Thread-Index: AQHctuhtemkEIJZWuki+VCylWh0HkbW0bd7w
Date: Wed, 18 Mar 2026 15:43:00 +0000
Message-ID: <IA3PR11MB898696ADD96959930056D25BE54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260318150305.123900-1-sdf@fomichev.me>
 <20260318150305.123900-5-sdf@fomichev.me>
In-Reply-To: <20260318150305.123900-5-sdf@fomichev.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB6549:EE_
x-ms-office365-filtering-correlation-id: b123dbf2-4ff2-42d6-30ae-08de85050936
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: egErSePj4xLnkzSyGc4wUTJ72ePUYorE/5Wg0zQszW87GHwiGdDpgH6WO1bqx8KgRZVjJUftHVEmFebtj2g2salc6GeczFlcMYONEE0L6AGTrkXkLnwZvzAM91LU5fSu3O3EG+4ihAEEQycj3+nceP52Xj1gvuDweXaFQSL6V5Gbxgch9cs5FRIwvBFCXDbG4QJLVtxFNK9YRJHZnqFt84gMEdMutSPaxl32ldM/gQeKBtPrljz7dQL6F8NtFChAndhjI4LQfEE+ibLNfYxs1nU2Q6DDDzzaqfnsi7wxt4C9ZTDP44Yrk8nEhJzCX+zolWfiZLClvtQRSbiTyvT1N4CE0HS1nfnvQ/Q3+XnAjJSSKkQTWMSCi+5kRiUa9JDmiTFDEgnx9LPPmUoTtQ2+5/Sl2r0Cq5CxjSPsZSKNbu+lRBjh2Cn/rQ8JJnDWmBJMqt5wVVmn/SDeMW91ETjFfuqpABRWiRUofnkRlJQNzTLBqyDhTnUvMFPnPBCqH1h4udR2qapaMJa8a+/PZPkfIlksQ+Guicz9couf25y3EKoPD1dyIfn5YU7jI/3XrMPzbCI22H5eHc2ng/MJ+lPYz9cS/rN5nwVL+eD+QMINDi5UhYLw/VI4cLP4B8CtK8U2FOT4gi7F2r9as+VDhUynXKdk/UxGSQ/mPkI1Hd/X4ilGMSd91qWDJ9LOarYmF39p/3tb9EgSl+tQMmn2fX7FrReYbFurljXjE6iNPMgTPMlkfFANAuEReTD7WyrChhxMjFY+4R+YzFFrK7EujdsTjZgOuT6hUSBgmDXiAGRfmq8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wKn0KzalnNfEyV2A8yApTJFx4QmEqchc3KrR19csDtQrZlNdgvpLTpWPiaBn?=
 =?us-ascii?Q?MJ8/U4bl5aHxhSptCDUY0YR4GWlrUshdobCmOmUKjYLO3myKt2o6ap84RIbm?=
 =?us-ascii?Q?xF4RpMc5d2bJXj8KPte65AUo+pY4HT1XEnT41zWK4A538nBpXtX6So8IAdzs?=
 =?us-ascii?Q?QQ4jKewUPRZ4/BR7icPpH+DJhMmV9n4aPiY8C5qXGsnVkneN90QRPSpNqDHG?=
 =?us-ascii?Q?f1MMvQUlwicHG7aZAu06tu8mEgVifEtIoAzy03DA3YPHTlrv7R6oD2GNBBy3?=
 =?us-ascii?Q?DhhN8GH1kB+9kgDBRCfaov2sMnCOZmEphkETS/QaMGHPlzG3JY6VIXJM9sT8?=
 =?us-ascii?Q?aofkNICEZP+mqb/x4n2NQtevAqgcdLEVNB7wC8/hV1iIzEGkknexRKb/j+kp?=
 =?us-ascii?Q?2SajoXgHlziBulYXhCMMwRCrWEbjlhKOgHpghr+mT+Ypv5WTLeDicIDoW2E5?=
 =?us-ascii?Q?UeTXVfn4APmlpbpNJ7NAupJC23RvMKy2iRMM1tDRyAkzWuNcf8OSSB+/IqVP?=
 =?us-ascii?Q?ptqPtkL5YE3iws1zf7Dq4oXZd5YjBp/MX6m8NleJo1WSU5kM2yCedQZTRgf6?=
 =?us-ascii?Q?K9rjskSvr/hFUwKR69fMWbR2guf4SSn3MduEgetBgcSv7Fj5sRmC1E04SQU9?=
 =?us-ascii?Q?lGIs+AQ7IJAyvpVrVFWHfPkfPO+hDjR+udH4LdKIxZcnnVRMEIXsVDXQkayb?=
 =?us-ascii?Q?SmsM8ni5Z8dRQPLUmyy/KsQbd0vpYyJUg3GxFaI98w4as8vCNL0RgQfbmWm6?=
 =?us-ascii?Q?d7XAyJf1vM6pr8LddH3wOG2Wp2PDPZlBiTHOE/BkzJ3/piscl22nUG4UtR1+?=
 =?us-ascii?Q?3S9DSYnbaN1DBd2LEFGvqEFb4qN7r+eV+UdeHRj3I/HGHP1G1d1jko0BhH1m?=
 =?us-ascii?Q?xSl5kfHLERET+IIHVk1caufGwK1dLLS3Mvog4NhjgL3512FzHefXj6W5KpoP?=
 =?us-ascii?Q?AVzv+6q6CakP1VUqK/yTgEPVPHBevK4IvrG6VBQQGdosCpdiv4pce+BlR65m?=
 =?us-ascii?Q?JMICDSSuBQ8tMLsiEvhGiSQSp1sBERuSL5X1X7AWNAiK2dcEmghOse4S0GSd?=
 =?us-ascii?Q?E9209ZGlsDeDB9dxf/UC4gAFgktnpOLBdXJEHA6KjpdQLMJcflGS/m//4yP2?=
 =?us-ascii?Q?qZgsggXNbWE4qDMY8Yf7B9zDbeWOV4K5qTghVcul5Cf9hMlINMIjrV8Xfutb?=
 =?us-ascii?Q?m0t+Av2S0dKS2U3mJp2ibwG4eckH3a7ZZLJn+z2UknV/VqyvGR59U9OiPYea?=
 =?us-ascii?Q?4GxDqZHBMDCAwBjkFafKa/QJ++49Y4BhoDlOb1iMg34mWs5t3aisHGwjGA8I?=
 =?us-ascii?Q?k9T9MFhBo5LbS9/XqrdU8WU4S17xwUMOIwuWfTYH3v5EgB9dubW2jg0WQTmj?=
 =?us-ascii?Q?XG8TS1hKbNUtlJnlQ/n7iNLgQYfDgl2KHHGXbJYnxvNrNdAoUj5b/YGCE8RL?=
 =?us-ascii?Q?BZpk9VRqS0WlGNaIhT5dvvM8TR91HoU69BR8WTRBx5jnQgUFMaB9ESd4xNfy?=
 =?us-ascii?Q?eBGm1MxGm0aNCjsn5CpJUnvDzTaycowbE+iZPP+RSHasbPjH1VJA5waLpUqf?=
 =?us-ascii?Q?2wMazfMKQmOz67b8rB8PVnW7LmwQlQfxv7G20BDwj8ULxk1O9KkH2yCser6X?=
 =?us-ascii?Q?+tTMTwYPP7Q/yvsxbVzYBdoq6kNsSkAEFEHSaJ0Uo949oSehJJmGdgH/1dog?=
 =?us-ascii?Q?F62oe5F+6Ai6NwSVio3sVqucoqQNVSb9b6JQs9LntLzdKGMMsbHigDBUTjtR?=
 =?us-ascii?Q?/R46fj6OOiaXHOC9wmG3E9muruq9Bwg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dSsQGwkGePjNFGJAlkZMkHipmJbDTcosz3A14tzM8E0/iBWRyzC11f8B8w4/0T+o1TFvUL9OeCkKx8NcELq8QaoX/EsdybDrOAE1ISQyXI6Q9y0Wc7qJdBDxUgT8KU8Jgb/w4zt9eM3MLB2UbgXCcZ3AM0Cn8w551DeOBJNu6iRsXy85lqt9b7sF0wwvg77NFiqek3SzlaW009pctcdBBKlGFWPGfmBkgIJZof6SZYkdMBV7GdDQtpA7mYWzyRWC6ROToQWYvI6KYQHPY6O9+XfJtZfkIBjAyyRZ4gduc7S0EqHMTnPjRq9vYkyDWayzqKR5JYrK8A/SdhVHRQ3Jkw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b123dbf2-4ff2-42d6-30ae-08de85050936
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 15:43:00.8558 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pDkOR0huHxfjJ1se/G5mzP2rY7VxkqKauSdN0bVLrXingnWsf85/pDaOiGeYMt7F4a4989JY602QuC/Qb6iyP2mL1eyEfY/qKhk0+VILlxQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6549
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773848593; x=1805384593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D8xxxXA3Fx9ZNLVhJ13ArlD9aj7iCElKgmIVOo/UD44=;
 b=VfAfv4bRIwYmv4CZUKdmUVKdm1j/8J/vLYXM8y6sNlq6scE2hyjZ+lCw
 up/49f0wFugzodn4WjHcHJ4FSIfzQ+bF0tCB4PjU5NsYO7OfpxSaWoaIh
 5i0w81SG1To2OJWWYyoKVTYD30uwK5g5N2oRcksu6AKB/N4T516LoA1xq
 CU3L6cCi8Jy2dumxIxgNaAgatSNrD4e0STgyXI5k8jNyldUYP7upGhkpH
 EeIrlPVMYUsPC6OfXhIgkFJlraeXknTUWWOrs5KcPYE14P/S1dSpenG0D
 pYXcsOilxdgWZi7XGh+36j38Z3W34UBLidMdzTuxMIriio2z0e74B61/D
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VfAfv4bR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 04/13] net: move
 promiscuity handling into dev_rx_mode_work
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 588F92BE7AF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Stanislav Fomichev
> Sent: Wednesday, March 18, 2026 4:03 PM
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
> skhawaja@google.com; bestswngs@gmail.com; linux-doc@vger.kernel.org;
> linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> rdma@vger.kernel.org; linux-wireless@vger.kernel.org; linux-
> kselftest@vger.kernel.org; leon@kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next v2 04/13] net: move
> promiscuity handling into dev_rx_mode_work
>=20
> Move unicast promiscuity tracking into dev_rx_mode_work so it runs
> under netdev_ops_lock instead of under the addr_lock spinlock. This is
> required because __dev_set_promiscuity calls dev_change_rx_flags and
> __dev_notify_flags, both of which may need to sleep.
>=20
> Change ASSERT_RTNL() to netdev_ops_assert_locked() in
> __dev_set_promiscuity, netif_set_allmulti and __dev_change_flags since
> these are now called from the work queue under the ops lock.
>=20
> Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> ---
>  Documentation/networking/netdevices.rst |  4 ++
>  net/core/dev.c                          | 79 +++++++++++++++++-------
> -
>  2 files changed, 57 insertions(+), 26 deletions(-)
>=20
> diff --git a/Documentation/networking/netdevices.rst
> b/Documentation/networking/netdevices.rst
> index dc83d78d3b27..5cdaa1a3dcc8 100644
> --- a/Documentation/networking/netdevices.rst
> +++ b/Documentation/networking/netdevices.rst
> @@ -298,6 +298,10 @@ struct net_device synchronization rules
>  	Notes: Sleepable version of ndo_set_rx_mode. Receives snapshots
>  	of the unicast and multicast address lists.
>=20

...

>=20
>  	/*
>  	 *	Set the flags on our device.
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
