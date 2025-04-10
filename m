Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48039A84665
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 16:31:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E22E741416;
	Thu, 10 Apr 2025 14:31:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m-3Mf8dSP4uw; Thu, 10 Apr 2025 14:31:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4836B4133F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744295475;
	bh=/3Kd69JWMgkM/s6m93qr53wqAUJ7r5Y12hZBRWiMeN4=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5Kc2jdcJYvtWkbrCIp3Nc7wnhULeeUu/tpPhJaJTMxSP2x9z29xXk4kV0uxn33jWF
	 v3nJRmXpgosyEvnsuNwTldxft5qy0GoBR26yBZVDs2AVp2qOs6k8teGw+cZoVzuda6
	 d9BLsqcWWQvCdz55oRi9bMi7l559XE7PhdnHg0XNuBStB19jdC4F+ma2nu4f5hTXDn
	 lGDYia0ites+u8+Meuojlb7WPv75Y96oPecxxYV/58CjTlkx3RnogG2HnypXQ+ssRy
	 UE6Rm1s/3U9Aq41iqMLwUcTCiNr6q0b38HI7ycasLi4C6pbY7RqxhX0a+euJlF7eXi
	 C1NLn2TyKlWMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4836B4133F;
	Thu, 10 Apr 2025 14:31:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 39493138
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 14:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A2C16128E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 14:31:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9mLXiF12qe0W for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 14:31:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 95E5C6F6D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95E5C6F6D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95E5C6F6D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 14:31:08 +0000 (UTC)
X-CSE-ConnectionGUID: +xVrbVfdTUCFVW0BIzYVFQ==
X-CSE-MsgGUID: 9JE2/IcQQda9/myXVNKFrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="56458031"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="56458031"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 07:31:07 -0700
X-CSE-ConnectionGUID: uSxuKT4TR7q0uIcI6h7auw==
X-CSE-MsgGUID: m3Ip2n9mTbSMUxw/TlfN8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="134033829"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 07:31:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 07:31:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 07:31:06 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 07:31:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UGcove0C+xkaLwzH2KQ9LHu1B4yzMyuuutbZ3EZ6ph061DSg1sbeuqTYaoIeZg21XB/rlUZHNdTbtmEbOzbHLPXMz1RV1C94e2nCXt1MCpW4Ho35PsXZjoQJfx7ncM085fnADQ63tw2QCSesSt/EX8Tc6qglj4qXIJK0MtUjbbONa+3Dru1g4BUozE0GRQH+XD0C3lo3RzmdrVLHUaTBYhIit/bnWoL2HOIN1/FKPPofk7HZYddoKPrXN3G5tEa8erOfAgEiZEmWkKoUYy000rtsNpFVpz5XHAGFImak2PVFbGsJETET/Mur2NYM7gu2mqXyVQVgFua3BxUiVkne7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/3Kd69JWMgkM/s6m93qr53wqAUJ7r5Y12hZBRWiMeN4=;
 b=MbBihQf5ZdjKutCBExbGySzaMUGM43s6hk3aGhLTzx2y6nK60tnBTNjaj5C3PO2ExQ8WEu/FxAhh24OwlWOFXIsMTXIi8tw7Ov6QYt8FN9f6oXHq2XOA5zUbNo3ZnuORoJPYgYk301xo1n99VcYPllmAbeXJxrSvT6x+0wXNHwq/xIgeNUoPdZEF3mVQtLD7g5nATeGw8m+aVyU4T5/TCUdQ9EjZYxzLEbXWqYhNj2vX3rWXWsFgSVYpz84JpJCdHRmH5OgOfB0YGK3liW+2MvykYdf133qHwIvtNf3qSxTgf+wElEYBj8+wni5LmnHE/TbVzfZ57VXS8ESiMH+LHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 PH7PR11MB7663.namprd11.prod.outlook.com (2603:10b6:510:27c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8606.29; Thu, 10 Apr 2025 14:31:02 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%5]) with mapi id 15.20.8632.021; Thu, 10 Apr 2025
 14:31:01 +0000
Date: Thu, 10 Apr 2025 16:30:53 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Jay Vosburgh <jv@jvosburgh.net>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <sdn@hetzner-cloud.de>
Message-ID: <Z/fWHYETBYQuCno5@localhost.localdomain>
References: <d33f0ab4-4dc4-49cd-bbd0-055f58dd6758@hetzner-cloud.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d33f0ab4-4dc4-49cd-bbd0-055f58dd6758@hetzner-cloud.de>
X-ClientProxiedBy: DUZPR01CA0023.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46b::17) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|PH7PR11MB7663:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c448054-fdd5-4861-202f-08dd783c50eb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vkArScg9rtyo6uTStYvX8mJKghHISnILqy5dvikYInlhgfrhrzX/UGmFIyT9?=
 =?us-ascii?Q?uvxXo3ggH6GWxFqn8QpO7+GPs4z9dxzjnUAEWAqW0HHaVted7RNNgQHWMENl?=
 =?us-ascii?Q?1j1H47apEq/5miaMFDlschMuUJ9kGBWApzKpwl5WEUZFf3eOtxUGeNzijwaJ?=
 =?us-ascii?Q?fgAgepxcoSG+V6goR/swaJuiwUAObnvGZcq2QyO40kL/O+eLqIHvlyKo9coq?=
 =?us-ascii?Q?fxhKDPg3qgv/oFd6HXc/fGGALVUH7VhIp8nSh23diZQfYTbmfaqRHPRYVDre?=
 =?us-ascii?Q?6MqcMqavXbnJtaG4aK9iRNOrGi/k4J/uU3ytX1onT5/ex9bRjHHH0tFKq+My?=
 =?us-ascii?Q?1dk1mMBsZaGS2o8HlmrdqsLLOXwBcVg9/BFlA6AooYbsFlsSzOVtUTPUB2W3?=
 =?us-ascii?Q?YXbByE4xvbj4ODaRP1Ta7jR0Q7J0t5L5FUeUhWDahGj7Ny/Z68B1EQKVOSGs?=
 =?us-ascii?Q?8PItghjfBUuoK/MGIaACxtVAGDG/PS6AVkNbJW7uIAan7a+Au5hCjjVaLvh8?=
 =?us-ascii?Q?MSo3T+8Ev7M1c/15uMmkWxFUEVdY/Vw6dUQmdj3F+IEt1cX7OQ6DmYoGzHWr?=
 =?us-ascii?Q?2GL4ULu8hYng654BqXna1+c6uBBWgTqZ0D/vbF74RFHyRQ+cg9J8Snw34whi?=
 =?us-ascii?Q?33hcUiZDzMDB8IyFPG8rNj3hUpgkgebERzLdcryvC4az6r4Q4DnuyOZUexKM?=
 =?us-ascii?Q?yE5DOfp1NJPUeoZB/w0pHqMEcuvts7g3roLKTUTYczikV3XNUHN4SslgiQm3?=
 =?us-ascii?Q?QPLwzdMmLDmdkEP+0ViF2d+Yqm2897oMkqt0Kyb6I5xbNmpLivIek7r2ToJt?=
 =?us-ascii?Q?RrvWD+OsGRbAnVlSjvnGRp3ZjZVeHGRbwEVaIAE2UxvVExLgo6y/Pau0uF9n?=
 =?us-ascii?Q?Hz8+0kGf2zpwE3KS0gkBC5f0NiUPnzOSq010BvRPvmebwMKMb+WB8AOawgsO?=
 =?us-ascii?Q?IWVtA0mgZ1p4EnGxzMHlbrAySmV4isU8r9Tqz8DY2qqUwz9FbjBvY/HB45um?=
 =?us-ascii?Q?Q6tpL7agnF95kjCVjUNR5pAeVacX2BxbLNScFdLIDPEuVpXqGg6QDaYUcRB4?=
 =?us-ascii?Q?xQoWwjR16DqCutVigrxDW7UuMAgvQbwzxwPtv3khmPDbowlWlazaEuKLz+ml?=
 =?us-ascii?Q?3e+yLTECL38TEOFCegzfrm7DWTkQKmyyL4u3V/2kR/iij8yJULJDK6rIZGnj?=
 =?us-ascii?Q?Ma6AB4F8T4q/F+BaQOHAgi8Kb77koW6XHeC2q6m/+eeDBXTJ30o/nYjph0IX?=
 =?us-ascii?Q?heYTdd1tI3mKoOzksaDWDPXEIyumubYhhaDht193x4LvKEgJLgBRlgs1zkRX?=
 =?us-ascii?Q?Bov5PgvbWVOZvyQcblrsDd+45GM3538W0wV7lVCf2W14Y+EpSSaPx45v0qlm?=
 =?us-ascii?Q?XiZBZCnV4BmOYd4eTPlPFLeIonzP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KWFlnUbIjt5W4atqeOKOs7RvEJjgUnJb0G58YGLrvhdhk1eyR6kUQ3HQzUtg?=
 =?us-ascii?Q?XqE+1SirdaFxT3p9/XoUsp2z3w+7Rc990yGLKKa1w4DrVuf2F4UzDMU2H36L?=
 =?us-ascii?Q?8cXumO/tW8g3NMZze43rcGkp2N4g+281XJ8KZp8zWin0Y9eU6mOM3Ac+KxAm?=
 =?us-ascii?Q?+aF+d8AwclKEg+aXzjI30LW3IgeBkKVpSW2Mvo2IefOagg4ZsxbNwHD2Tj0a?=
 =?us-ascii?Q?2YAW8mV3duu2Ls7pEfhDmswJ5QlCMQdiNrW7XoHmeG0jDIyrCvp9rFkwz81L?=
 =?us-ascii?Q?V3dU72S5ehyReEu8cM6JDZIoD/vkP5KB5+3NlVPgDrOfCRXqtj5xOekp4o2W?=
 =?us-ascii?Q?DrGFqf714LD9EHM5Ylbh8p5y74fVk34i+cL1JjbaiX0xP0CtMBkPHuLmgqR9?=
 =?us-ascii?Q?D0+CF0gGtwpmBPbz3DooQ0XIbvE7nbf+nn6jhmPCsUpuBPRRlFYEk/IOchZL?=
 =?us-ascii?Q?zFquaGASK1XFanOqqr0LhyAeY4mjLiFiDaup3gwmqfS64FrEkA5AHQk6/gG3?=
 =?us-ascii?Q?j9ABLwFJqDfa4kgCXanlWyLORtxi3vDBzRAGEAbcAYzoxXdCJJxFd8FdjyXo?=
 =?us-ascii?Q?BwRRBrnMoadetaMXuiW8VKY5wl+FnUdmBQfocxYFRDOktArbOy7/O9hJijce?=
 =?us-ascii?Q?qGlGyZ9f6XiN2qnHKXlT262IjZZxWPilFdVtHvf2jZMjsd//fCfOy5Uym2Jg?=
 =?us-ascii?Q?4Kk9V9jv1fDa2yyQSRwECb1HxMvoGlkpKiTkZ0ELpjxiX6/kVm4QsHh80rgu?=
 =?us-ascii?Q?BUiUEWlHTwcawDjis9WvCjfO53QVScTVK5xw+iNfWdZqQTnyGPimghqDWzL8?=
 =?us-ascii?Q?2mJIx2/KNaZKKnmfbpGHno3qiNUo/c3AFwynX5iw/19ZwHblk0EQ0DWoiy7E?=
 =?us-ascii?Q?Y39KgG4NThyWcPOcd8VixrSUF20MX43MD2U4pvxbkNDohrCRQEFRuBzVD/Pq?=
 =?us-ascii?Q?ir71QjrFXLP56Denfr90rN/ZgAkgU/+Sqi7wrkHP2Zaru6LanZCupUEiiQP+?=
 =?us-ascii?Q?ux2WuB3i5kGcbjVampeBaHnRGlnOcSJPvmfZcqXVHLp6S7JM6c72fhte2Rza?=
 =?us-ascii?Q?laJQ3g8ngH3CxPLI2D3C2VFhGPj2se+tfpjBPa5BSkfKIJscaksHgN561PUV?=
 =?us-ascii?Q?m06hU0pM/k7Ul+HO4u4EZEXdz/Uwf6lzeyWrwdDWIr/ZELmYFjHg8Tdib5Or?=
 =?us-ascii?Q?hr0EoIokrqz2X69x247rVnHHt7qx9cJ6BTC5VS5bEDvhZukTG0p679KZGyxx?=
 =?us-ascii?Q?r2hm0r8UyhCblaeMrx5vxbQ10Sl/g7dc1NaGs7e+mACiTfwTwJJh5geRWVQd?=
 =?us-ascii?Q?+LKHWcp5VjYr3CdsIUAzIeNDRq2ezN1EYTrOsoH0bsb++P05K2aTqhSAqyWV?=
 =?us-ascii?Q?jKlkpoTT4MQniTTn3Tm5WdoVh1sIjmr9iV11yTWBDATEtZGVJkhwzKLay/Dk?=
 =?us-ascii?Q?CXYnj03fLBatQf6Q0qEN11xhfqmPE5bDCfG4D8LTKDK9MTVYYACMwpRgdH5a?=
 =?us-ascii?Q?mUKRxAkYQwMpxQ1+cBY+TpDONjV8hkhm+5WmZKHD9sN3ksjUHbVNM4XLLVgZ?=
 =?us-ascii?Q?cGlxnNC7iIfzGra41Ef7EF/IxUgopUAglJU1t/BWM/6Od1AUvAhXv4KIWJfi?=
 =?us-ascii?Q?2A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c448054-fdd5-4861-202f-08dd783c50eb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 14:31:01.0060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8QnWfSPio7b3rIWtSUmkHmDTtWLUbaD8truN7kl+gA7hEjtrnbMe3627+l8FiDiphP8bDCCu3HWFuQv7z5Mnyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7663
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744295470; x=1775831470;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QPSSnG9s6ny4CsqmxXzRxbUJHU24bL9tftOUmLjje7U=;
 b=SXuOK8nMSQyrRa+h2SJWk8rOjATTUymFx2lWqTCOz/FsyjdS/wRBh6Ct
 UX92TLjqAqr4KTYunzJJGqxqfB5rw3hLbJpIRmYD140PYb0K5YEL9VLJy
 VeLoFz92k+i/VnxZPLwSi+6CqR2zWSdhygls09Z7gjXdSWdUfSQLt32Gq
 b3v6AsM2RTmljyC02D5+LWdXdrod/AyIAULd6LTq3RQZm/ZncqH2XMRMj
 Q0hdmdkagU2Rj6cTMZSUAPECka6IcwyA+P7ffCpYc1fYpoXPURcR2wXZn
 sd3DPJ+NvkSfpAvPHPv7CiC87SL4MiZSLe0tsCFtvO46o+zWY57OgZde7
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SXuOK8nM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [BUG] ixgbe: Detected Tx Unit Hang (XDP)
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

On Wed, Apr 09, 2025 at 05:17:49PM +0200, Marcus Wichelmann wrote:
> Hi,
> 
> in a setup where I use native XDP to redirect packets to a bonding interface
> that's backed by two ixgbe slaves, I noticed that the ixgbe driver constantly
> resets the NIC with the following kernel output:
> 
>   ixgbe 0000:01:00.1 ixgbe-x520-2: Detected Tx Unit Hang (XDP)
>     Tx Queue             <4>
>     TDH, TDT             <17e>, <17e>
>     next_to_use          <181>
>     next_to_clean        <17e>
>   tx_buffer_info[next_to_clean]
>     time_stamp           <0>
>     jiffies              <10025c380>
>   ixgbe 0000:01:00.1 ixgbe-x520-2: tx hang 19 detected on queue 4, resetting adapter
>   ixgbe 0000:01:00.1 ixgbe-x520-2: initiating reset due to tx timeout
>   ixgbe 0000:01:00.1 ixgbe-x520-2: Reset adapter
> 
> This only occurs in combination with a bonding interface and XDP, so I don't
> know if this is an issue with ixgbe or the bonding driver.
> I first discovered this with Linux 6.8.0-57, but kernel 6.14.0 and 6.15.0-rc1
> show the same issue.
> 
> 
> I managed to reproduce this bug in a lab environment. Here are some details
> about my setup and the steps to reproduce the bug:
> 
> NIC: Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network Connection (rev 01)
> 
> CPU: Ampere(R) Altra(R) Processor Q80-30 CPU @ 3.0GHz
>      Also reproduced on:
>      - Intel(R) Xeon(R) Gold 5218 CPU @ 2.30GHz
>      - Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
> 
> Kernel: 6.15.0-rc1 (built from mainline)
> 
>   # ethtool -i ixgbe-x520-1
>   driver: ixgbe
>   version: 6.15.0-rc1
>   firmware-version: 0x00012b2c, 1.3429.0
>   expansion-rom-version: 
>   bus-info: 0000:01:00.0
>   supports-statistics: yes
>   supports-test: yes
>   supports-eeprom-access: yes
>   supports-register-dump: yes
>   supports-priv-flags: yes
> 
> The two ports of the NIC (named "ixgbe-x520-1" and "ixgbe-x520-2") are directly
> connected with each other using a DAC cable. Both ports are configured to be
> slaves of a bonding with mode balance-rr.
> Neither the direct connection of  both ports nor the round-robin bonding mode
> are a requirement to reproduce the issue. This setup just allows it to be easier
> reproduced in an isolated environment. The issue is also visible with a regular
> 802.3ad link aggregation with a switch on the other side.
> 
>   # modprobe bonding
>   # ip link set dev ixgbe-x520-1 down
>   # ip link set dev ixgbe-x520-2 down
>   # ip link add bond0 type bond mode balance-rr
>   # ip link set dev ixgbe-x520-1 master bond0
>   # ip link set dev ixgbe-x520-2 master bond0
>   # ip link set dev ixgbe-x520-1 up
>   # ip link set dev ixgbe-x520-2 up
>   # ip link set dev bond0 up
>         
>   # cat /proc/net/bonding/bond0
>   Ethernet Channel Bonding Driver: v6.15.0-rc1
> 
>   Bonding Mode: load balancing (round-robin)
>   MII Status: up
>   MII Polling Interval (ms): 0
>   Up Delay (ms): 0
>   Down Delay (ms): 0
>   Peer Notification Delay (ms): 0
> 
>   Slave Interface: ixgbe-x520-1
>   MII Status: up
>   Speed: 10000 Mbps
>   Duplex: full
>   Link Failure Count: 0
>   Permanent HW addr: 6c:b3:11:08:5c:3c
>   Slave queue ID: 0
> 
>   Slave Interface: ixgbe-x520-2
>   MII Status: up
>   Speed: 10000 Mbps
>   Duplex: full
>   Link Failure Count: 0
>   Permanent HW addr: 6c:b3:11:08:5c:3e
>   Slave queue ID: 0
> 
>   # ethtool -l ixgbe-x520-1
>   Channel parameters for ixgbe-x520-1:
>   Pre-set maximums:
>   RX:             n/a
>   TX:             n/a
>   Other:          1
>   Combined:       63
>   Current hardware settings:
>   RX:             n/a
>   TX:             n/a
>   Other:          1
>   Combined:       63
>   (same for ixgbe-x520-2)
> 
> In the following the xdp-tools from https://github.com/xdp-project/xdp-tools/
> are used.
> 
> Enable XDP on the bonding and make sure all received packets will be dropped:
>   # xdp-tools/xdp-bench/xdp-bench drop -e -i 1 bond0
> 
> Redirect a batch of packets to the bonding interface:
>   # xdp-tools/xdp-trafficgen/xdp-trafficgen udp --dst-mac <mac of bond0>
>     --src-port 5000 --dst-port 6000 --threads 16 --num-packets 1000000 bond0
> 
> Shortly after that (3-4 seconds), one or more "Detected Tx Unit Hang" errors
> (see above) will show up in the kernel log.
> 
> The high number of packets and thread count (--threads 16) is not required to
> trigger the issue but greatly improves the probability.
> 
> 
> Do you have any ideas what may be causing this issue or what I can do to
> diagnose this further?
> 
> Please let me know when I should provide any more information.
> 
> 
> Thanks!
> Marcus
> 

Hi Marcus,

Thank you for reporting this issue!
I have just successfully reproduced the problem on our lab machine. What
is interesting is that I do not seem to have to use a bonding interface
to get the "Tx timeout" that causes the adapter to reset.

I will try to debug the problem more closely and let you know of any
updates.

Thanks,
Michal
