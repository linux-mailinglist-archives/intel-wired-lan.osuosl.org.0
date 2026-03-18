Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oATHL5XHumlobwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:41:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD3E2BE703
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:41:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FF3960AE8;
	Wed, 18 Mar 2026 15:41:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id moBlfbckFi7i; Wed, 18 Mar 2026 15:41:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A946960AF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773848466;
	bh=J8NWObKLT+a8zpsAfEQq05EsxuRzNe/gXKF+QwHQQ1c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LIOa81n91TuzPDAFFOyvlMkL4bxEJh0SdHt79+WTNlfev3tnJHKAkXq7+7je/cl9/
	 mwf3vufaIhUPtScAbZyW9Uh4XevEAlA/tXJ4Gs96ps3eqX0fRNID57V7y1tnorHJ8t
	 Jv0AkdpjLTXf6lUWIk75fjnXDf3t+9Ps8yNhSoJfz7i2FohMYfDc07EtD7sKzQ261N
	 EyRdZTWqakTHEsagOlgsY5fdFN01mcc215GV5vfxrQssRuYpEgHM1BCPKrC51ZiLoT
	 z6v3fJxl+8RwOB+XPy5dQv59LXcy54PJCT+dl3/uCtzM6vNusE6bnv7eAhAM/98STT
	 b8WJVGjjg2oRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A946960AF1;
	Wed, 18 Mar 2026 15:41:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DFF5E1BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:41:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C578860A99
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:41:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i5xmY5coLWTy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:41:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B186460A8C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B186460A8C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B186460A8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:41:04 +0000 (UTC)
X-CSE-ConnectionGUID: hRot4Y3qQqi4oK4wzVGLZw==
X-CSE-MsgGUID: vKcMPvo4TRCYmZJtEbYbjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="74606114"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="74606114"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:41:04 -0700
X-CSE-ConnectionGUID: wr2p51lsQsC5ikB7Y3VhHA==
X-CSE-MsgGUID: d4LhSlJtR66m7Mky6wVkfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="227353025"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 08:41:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:41:02 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 08:41:02 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 08:41:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hIt0PUO2uV1Z+eJN24CCrgQn+FLkpIHkDAwT9JjF6CuRlj58P15WVKVC5hmfiZ5YCopN3U5q/BGxAQ4LJXCdE4KlZLRlV9BDssdQvPUbV38V4LrSf4BhyoR0rdFCqkVACnHyJS6uzQxWhzFgbxaEU/Bk99X2ZRJt/DDZsxwyg870hrAS75ssRe0wPBZ94yAV2HYroQA+ai1561aMSU44GBkdlRXwwBIhZm/gFfHaPs5+FuALAa1U/wcrdoH4D5s35WESPoGlByU4zDPaDcqqU8wM9guPqWlA+s7a+uB+nfgBcwET89R/s1+rPZE6KLDgckKqCHhTIK0khqfW9knScg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J8NWObKLT+a8zpsAfEQq05EsxuRzNe/gXKF+QwHQQ1c=;
 b=ocjqXk5gMYo20QMMYKNzFjvdz+tYH6BRRM3jXZFOAi0AL5u8BR83sBh0U8WHbd2JPnrUv98OjHTt61fku/QyQoyX4EeJuQj3VHukJ3t82Vt5dmt0v1mNxMNhPWewOqO2Vv528jtvvlnXAOFIFmvuzUliQGpkFY4zSQ7bVpP9ptRpaDpiRO4zJiO6lC7gpu0202Uzua+yTfR4n0GqDC8Ci5G8Nn/0i4z8O+PiotaGOGUWnyw5tordiYV+OsKzk5AY3Ci0j/wF+JtoGg75EfCZjJk5fCNnLy4tPaDp75dXJ+qt1GZsSb+i+zgOUFWyi+jp5JuoFQNr4urttMZCg6qg9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB7907.namprd11.prod.outlook.com (2603:10b6:8:db::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 15:40:58 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Wed, 18 Mar 2026
 15:40:58 +0000
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
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 01/13] net: add address
 list snapshot and reconciliation infrastructure
Thread-Index: AQHctuhy9ZK7rV8t8km9ASem5KvNKbW0bVNg
Date: Wed, 18 Mar 2026 15:40:57 +0000
Message-ID: <IA3PR11MB8986059F85B957AC59961BB0E54EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260318150305.123900-1-sdf@fomichev.me>
 <20260318150305.123900-2-sdf@fomichev.me>
In-Reply-To: <20260318150305.123900-2-sdf@fomichev.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB7907:EE_
x-ms-office365-filtering-correlation-id: 2d99f035-96b9-48b5-f8a2-08de8504bfee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021|7053199007|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: SCYvnE0vGHzB877QiVTiAX/HC+EjQpaxEu1SlMpIhcflyqHzKPkMxGh4C2dILRXIEysJ5XXqJpEuSt6iAoGg19MbMjINdDaxuZCt+C5GFocro4ki8y86ZklYz7L4qLq86KJsYZ394g7ujVZx0mTDqezCgi+JP1VApE8JLeSQxdcs+4P39pdgDcw6mUqTBLT/sjSBzwxXhIuMrVSXSCngov/Q1bNM3mqJGnROyG9vZ2AJKKhLgHK4laQH5sT52az8L23DK71YafmM6MLrRHm87//Xp5gLInfMO98RLYEH8K7kfMjVHkdX33M2X+jwQ6Rx9Y2pxWN+pKZUDWf0k6GIxnuVR8FUkIdrYnRmK220MLw9bR93tuoKpVaLfPzlZDahtcciLpDspYwUPFEfZlLN4rBuSIgxmMXjO9VuUnybfMBGeTJ/g21Nkx0EcCvuwIYeQcrrPYcqj0JKf0dge8p+eRshF2keYe5ZdC+mbh29tS0zQRYOn42uNfu+25JrsncGadrts2a2cBOiHDDt+wJ4WImjyhmTzY3W3HqBgooaKvp1nGIeYRy1thTNM0SayvsZUExK46vAgnggmdnx3Ux1qzKqQqn4XHyINZsqebupKzJ+6ivJrI0ds+0ohNffeLe79Tvxmo7wTW7YN0xpP2zHqUfqoVcaWOAyp/Vzeo4FxbJ3Uaw7a6VHLkPCmBGsFuPxRNzx8s5YHNUAQkoJtDw/W557wdatXNG+SiPwfuZl/1ebjT/jOED19+3v1QrbkwIkodvsFlANDTja87amO21lDXDpkqAM3AtPR5GOL/0trt8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(7053199007)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+KMc4+SUuyBqYNxhv5D9u0N9Kl8LSKr5xvtxBfLew1CxOcaTGGNga9lfvHfK?=
 =?us-ascii?Q?nkMxesOMgiWRkts1G6lZ9KWkfwFS9i23Yp4PqhZknyIVdzqx0BqfW4Z95afP?=
 =?us-ascii?Q?UbvKbnK2CyeLWj3hyRm6zdjjBFCrowOGYKfFIqMRDy2ucXjgspaq+Ot8PTGe?=
 =?us-ascii?Q?LXTLXkbFIdeC9ihw864vJqpuROMR5yvDrmQNnkpJiAyrqiBcRqo4Owkh+fO9?=
 =?us-ascii?Q?fe293PEtCJy15ox2g2zWertyoETK8l4uNBxFEqJeVXOHEnSAQzm44qc2Ytah?=
 =?us-ascii?Q?8dhEVlQXHEmfuTQp5+sNxdU99Syz3VsZXPedKzfeZNG9mvWEwm42wxLHvbID?=
 =?us-ascii?Q?j9o2zoAWZSsQqqR4xqoy3RYJwAY3H8JipmzKbE8/t49vT3hXB17DVgjxU1gI?=
 =?us-ascii?Q?QpPKZiRtSMklCpnoatBB2cRaD7bMf9hHWp2BHSrUJ85ONPlt+7rWarXa7Boa?=
 =?us-ascii?Q?BpSPrH5wcI6/nxuV0fMz1IOe8qGR8pY8fraUPgHvSVnszHpx6OAvLRsHkbmP?=
 =?us-ascii?Q?xHbRl6GcVpFQWKZZJd3Jfv7CLF9x4jMb+n0PeMdg+6yFmfGg9guXL8Opr9l/?=
 =?us-ascii?Q?j3julqRgpjA3Hs+UlWMCqE6h7Pu9IIYUKsuTBzq8zx6b3DC7zIa+FrLkXJ1i?=
 =?us-ascii?Q?2GPnM8UeH88CFKvOgWCFMHQB9uDJCzVFOtHFiowaYR7BGjeOPc2sig+xPV8s?=
 =?us-ascii?Q?4KFzqCAyq74kbKYQ8O45xpEayXXSRbBovPlurdwj6gOUFZ9hwlJluV/02zU/?=
 =?us-ascii?Q?z+nZlR42wJDYaKhmg/UTyS57Y5O8eakPLN2jo+jPu3wx+rlIDuce6PKUjd7P?=
 =?us-ascii?Q?xY59xDQAebeiwKqUbSdgHLGirADkc4UoGNv67ub01jjCn1E986+y7imEOTwP?=
 =?us-ascii?Q?u6TEBA04XZVRSMLsYed7dwDr6v9mPwVfcaqHn2LDrZYIzYeZPdYFUUQVFPnG?=
 =?us-ascii?Q?lSFpxNcctzzN74UHF77ntYsZEOGeDSPZ2Wyq7c3qsZptYpQzsB8SA/8OJEXw?=
 =?us-ascii?Q?ea53m9oYsMpNTr6piBw6CrSXzv0oMO4kDwTyNWB8UdN7yLU63IZohKB+lMvO?=
 =?us-ascii?Q?y2qBHRqToWA1XGaKVvV9Grk1X/hSADMKGif1vmZD0IvX/c6MYLSl26/S722k?=
 =?us-ascii?Q?ReaDmtW5UTbH1Km0RO1QRmfWnura03H9fLFF2UZDpN1mXXJshGtLrRcB2vso?=
 =?us-ascii?Q?cWM0uK9o6G2NzWgJwa9aRT/k+jWvZghKJ4VTTAC7NEi37+cAmfgxzPZHgadP?=
 =?us-ascii?Q?+i0TvEOzaluBI9tIwEL615Gk15K65MB+2ohBWoGulPbdyEMy/by/q3uSnyio?=
 =?us-ascii?Q?MuQob4t8AIN53rK4RGfPqo9qxv4dwdrK6xFecxagORUiL46tXNsosaOZ6MiZ?=
 =?us-ascii?Q?tmVXJrmZ1CfjSpSbJTOkzl30fnMyIXBGlTYmJPyMMwYCgcyFjRDZhFohGzxR?=
 =?us-ascii?Q?ixSZxzusManeE/2A1RJPnP5dSKSFEBfHxcgzp3LU2NnZlKppQpSOEQMbC1Bn?=
 =?us-ascii?Q?9nMZRLvtDbJE1fIzcrpPk9UOG2dz4NtM49Q9LffXt0Kv/xp2tFBwdiJsOWlz?=
 =?us-ascii?Q?k32H+m0J1YjNntg5l/WSRoRGuhTs27xNrj/NgRehgMdMfHOEXHLzyA3by7JJ?=
 =?us-ascii?Q?w1eiD+vq4ADMDguBhl7W5seshUMmeG4KwEOl/Yjmx+eZZtD3KZV7xrJcRP4d?=
 =?us-ascii?Q?pySbIiXTjKkRS481WwHYW/WA2xIXeKAoyH3bHMkHX0ygfnB8N28oTgoV+Zcy?=
 =?us-ascii?Q?Xjnr6qKWyY9MqnZpqMdfcF2EXSst9No=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jH6IChe8AjBSbg66IR5bqG2gEgfoj0l17ElKgyISrlI4nAXQ0ZOicRKvz8oec5BW4FzL7zI498JSLX2eSMuKFvdXDVGDkhcxZrPDE9UyTr41x5VgHrNt1TdAWToZBn8IZZPdouy+9l+H/yl8abkWI05LuiMy8lxEXKB7FhEaYxZsh+TpVczEIoZILavVJ0I7iTkAqW3y3ZkrBiNZU5IhZEF8Dxz2wmsReC8y+99gWJYNR/NsdROoeNJx/WGjU7BNjTLHhU4S+AqSqMaESCzGwl9bfwGYc/1NmcK38e8b3ut9B6P5LuT3MgsDRMfXI32cno6QGd5Uooa6tJeVi+TOkA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d99f035-96b9-48b5-f8a2-08de8504bfee
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 15:40:57.9308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f2xomekCixlxXL9Y09uOGglXkDlJXXN8rY0DYlS47pJLC/jK+u5Is0AMK04zL/WCv4NPDOfr0LJBjynjdp4FtrvV19kCzr2zH13mXEcdNOA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7907
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773848464; x=1805384464;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KZtTeT5XqNTciYK4gVk+zJTAhnmsG8qpeCJK5A+JtfY=;
 b=ISwfB96lOzgZgVKWg/W1npf0GoqUYrsjE/0N7Adah/6+yH/QsxNSkOPW
 FR8njciHxYzvxmt5NgP65GoC5gszjCExvKe30cQvcpN25J5/xnr0Xne0p
 zpZ/XVzoxpDnq/69AKkhFFwKQ+WPdfOH8nN18MHCIuCr3kWOJ16DT7CnV
 CosfoyztfcrrWPV8MUh/Ky4GqANnNgqbhGLJ18TBjBgY0WfDMpv7YKj/G
 O1yuSvTNTvg63iUOKqy1UgmdkHMR4Cq/8hi6JWbbN0KZ55w5aBIVklapC
 bdGzhG5w6XdS8qkXeV+KuTLp9mh57jfq6rQ6d+OXmOoYpzJMY6heScGhY
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ISwfB96l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 01/13] net: add address
 list snapshot and reconciliation infrastructure
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 0CD3E2BE703
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
> Subject: [Intel-wired-lan] [PATCH net-next v2 01/13] net: add address
> list snapshot and reconciliation infrastructure
>=20
> Introduce __hw_addr_list_snapshot() and __hw_addr_list_reconcile() for
> use by the upcoming ndo_set_rx_mode_async callback.
>=20
> The async rx_mode path needs to snapshot the device's unicast and
> multicast address lists under the addr_lock, hand those snapshots to
> the driver (which may sleep), and then propagate any sync_cnt changes
> back to the real lists. Two identical snapshots are taken:
> a work copy for the driver to pass to __hw_addr_sync_dev() and a
> reference copy to compute deltas against.
>=20
> __hw_addr_list_reconcile() walks the reference snapshot comparing each
> entry against the work snapshot to determine what the driver synced or
> unsynced. It then applies those deltas to the real list, handling
> concurrent modifications:
>=20
>   - If the real entry was concurrently removed but the driver synced
>     it to hardware (delta > 0), re-insert a stale entry so the next
>     work run properly unsyncs it from hardware.
>   - If the entry still exists, apply the delta normally. An entry
>     whose refcount drops to zero is removed.
>=20
> Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> ---
>  include/linux/netdevice.h      |   6 +
>  net/core/dev.h                 |   1 +
>  net/core/dev_addr_lists.c      | 110 ++++++++++-
>  net/core/dev_addr_lists_test.c | 321
> ++++++++++++++++++++++++++++++++-
>  4 files changed, 435 insertions(+), 3 deletions(-)
>=20
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index ae269a2e7f4d..469b7cdb3237 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -4985,6 +4985,12 @@ void __hw_addr_unsync_dev(struct
> netdev_hw_addr_list *list,
>  			  int (*unsync)(struct net_device *,
>  					const unsigned char *));
>  void __hw_addr_init(struct netdev_hw_addr_list *list);
> +int __hw_addr_list_snapshot(struct netdev_hw_addr_list *snap,
> +			    const struct netdev_hw_addr_list *list,
> +			    int addr_len);
> +void __hw_addr_list_reconcile(struct netdev_hw_addr_list *real_list,
> +			      struct netdev_hw_addr_list *work,
> +			      struct netdev_hw_addr_list *ref, int
> addr_len);
>=20
>  /* Functions used for device addresses handling */  void
> dev_addr_mod(struct net_device *dev, unsigned int offset, diff --git
> a/net/core/dev.h b/net/core/dev.h index 781619e76b3e..acc925b7b337
> 100644
> --- a/net/core/dev.h
> +++ b/net/core/dev.h
> @@ -69,6 +69,7 @@ void linkwatch_run_queue(void);  void
> dev_addr_flush(struct net_device *dev);  int dev_addr_init(struct
> net_device *dev);  void dev_addr_check(struct net_device *dev);
> +void __hw_addr_flush(struct netdev_hw_addr_list *list);
>=20
>  #if IS_ENABLED(CONFIG_NET_SHAPER)
>  void net_shaper_flush_netdev(struct net_device *dev); diff --git
> a/net/core/dev_addr_lists.c b/net/core/dev_addr_lists.c index
> 76c91f224886..754f5ea4c3db 100644
> --- a/net/core/dev_addr_lists.c
> +++ b/net/core/dev_addr_lists.c
> @@ -481,7 +481,7 @@ void __hw_addr_unsync_dev(struct
> netdev_hw_addr_list *list,  }  EXPORT_SYMBOL(__hw_addr_unsync_dev);
>=20
> -static void __hw_addr_flush(struct netdev_hw_addr_list *list)
> +void __hw_addr_flush(struct netdev_hw_addr_list *list)
>  {
>  	struct netdev_hw_addr *ha, *tmp;
>=20
> @@ -501,6 +501,114 @@ void __hw_addr_init(struct netdev_hw_addr_list
> *list)  }  EXPORT_SYMBOL(__hw_addr_init);
>=20

...

>  	{}
>  };
>=20
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
