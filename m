Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1CFlCv/LHmr3VAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 14:26:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EFB62E052
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 14:26:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=1shBkSpC;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9CA160BAB;
	Tue,  2 Jun 2026 12:26:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A3hQg_aNFpEy; Tue,  2 Jun 2026 12:26:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45FAF60C01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780403195;
	bh=UA98QrHkmFsBnnCXz4R3QlpO79bPhso9TgyW+luCoA8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1shBkSpCnyCesea+V3WyXh8WxWXjbjELuSgkYUzB8kMxoOi6KA24Rki3ZN5w8lUS3
	 ztp22M0lXpbiXWzAGSHtd0rkMsuiuVxCmFcoOTeixwGTFnIevuAsmFl5EgzT+aW2IM
	 yPdyW4OwD7dU9NWQ2Qy/HjQ6Oh85QlaSjW2D8sZMUIzRWhvehnmckK3sbI6tRffVpu
	 HmRQfYeAjG8MqwnlwXm5FifCDpHKYxWUD3iypKO/Ps3tGhmw9a6FpNOexDjYog0I0z
	 1o4X0C21mO7V33y8roL1fTc+E/2h3L5Owerq2ojUhktVQ3H3ju3zP0bKC9S6rYE6At
	 9HIDI4AHQKuCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45FAF60C01;
	Tue,  2 Jun 2026 12:26:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B2356F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 12:26:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A411660BF7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 12:26:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1dLy_I7n-zeM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 12:26:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B0DF660BAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0DF660BAB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0DF660BAB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 12:26:32 +0000 (UTC)
X-CSE-ConnectionGUID: HyjiGXGDQ6eaiXlvMwyTHQ==
X-CSE-MsgGUID: EYAVi7QETk6UhYf6KJKpLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="80215956"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="80215956"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 05:26:32 -0700
X-CSE-ConnectionGUID: m7HHbNEWRp++rqoeIrKQ3g==
X-CSE-MsgGUID: NgxiN5moRayZCTySqI2MRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="247850163"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 05:26:32 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 05:26:30 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 05:26:30 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 05:26:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jre4o24oRhk1gvbM1HTwsMc63l4akqW7XhUmG5i27oCW/cRLE3E6EcYbH8ZAMqFIuEmjohAV0adagQWupVe9mhFef2VnuqiF7UjT2cGiy8Cj2YWzPgFiTZryVKF8v9C0k9cE8agcvodb1Tj/B2DK2Gc81K8GFsWaA3FqKJlb6bBM8515sSXqy9YsY+8LaeJAeNO5uNJIxwSajPj8HIdeNM6YLhicwczoDHa1IVwKKwBdm3zsOib3LL4udtdqL4iWrwxzB36wPekV5KKZOtKCAapUIlNKdWQhbdvjNu7HfxEP0wYsyqERaJwKPvlgaoJu2lkLGUDZ5HZ1S2gZwdP6EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UA98QrHkmFsBnnCXz4R3QlpO79bPhso9TgyW+luCoA8=;
 b=AdL7BRm9eSC/UcL94BhZ2StmmdcKK2MgdFtMqn4Rqva74HItCqnZ6TfCPZ9GIb8hPQ0lenglh2FrlrOov71XuYbFB+38fqRdVuLJqdKYV4t0KWRK/kNFH3nXlv71mdMfUbU5qVBPy+FtmNFKsY2+BFxFnLlYboydDxDAP7f3uoLrDWf/N446DouSY+I1h/x2yO+pzcvPfuRe5xd1nD7r9ViYcdH1RK8X0Wza26CokLr/vg6ngeYb6t3RdYmYbqTT+PTU5VWX8UV4mztpswbRsTBu4YR9RT0zd7TrG2ylYqjqTJ/3a4Ejcm8h4gvylAsyAAg4Q5Yk9N94j7B8JKiubA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by SJ5PPF0F15BC42D.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::80e) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Tue, 2 Jun 2026
 12:26:28 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%5]) with mapi id 15.21.0092.006; Tue, 2 Jun 2026
 12:26:28 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH net-next] ixgbe: implement get_queue_stats_rx
Thread-Index: AQHc8nn3XFKmtSkwbEutll47pfhBNrYrLy4w
Date: Tue, 2 Jun 2026 12:26:28 +0000
Message-ID: <PH0PR11MB59029CA838E81A5C7666F025F0122@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260602100932.21838-1-kshitiz.bartariya@zohomail.in>
In-Reply-To: <20260602100932.21838-1-kshitiz.bartariya@zohomail.in>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|SJ5PPF0F15BC42D:EE_
x-ms-office365-filtering-correlation-id: 8241a837-9e2f-4fca-3440-08dec0a22bd2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|921020|22082099003|18002099003|6133799003|56012099006|11063799006;
x-microsoft-antispam-message-info: siNhhlDSwQuHOnsLyiVLpejZsM7rjfewbAXDnhB/1n9oBZOfqD41Am82oc5kRr5QRMiSxC/uyBDh9uS4iKhzlAJOlkAd3lWyJ4Rm/UTln38WEg26dIhdxv6rtfwEVGPOWseD+O6p+xi6g9hMNAvCz6gmUB86pXskd8Kpc2nWhoAW/2MzaaXbF7nB0J/YDUyXlpBdEQSoIE6CW/8foHy5byXCq+WkHLeJsxtWCXOZ8A+HDVPCo4kz8biUmnPF/6iWnxzq34XTHeET9qC/xzV/QM2gy4PI+SDHsNXk04CbiBEmSdEwFsViWihg5JJRAhcRJ75XA9eMotkhnM8kZ8Er0cCubroHDloFC+vtC5UnruHWw4e+MpgttugF29TIN9aeP68sgBxHwPZbUhPDs2zvUwuxNq9yCNBM6e3PXx+Clo9HYZFrALvY5ALXbn/EiSnOMR+FnRN2RYbbkXnY1yb/qcBpDXh8NIqbrv1QTUCBRhDzS7Pz0FRKigzbtV4zu4jD+boGF1xqaAIs0Oqw0QbbZjFGYM+79bGUvCSC8VyCWkW/Un7o8pYGetMV45wG7qOapSNINF+/habZdmsNY2W8AEyy/skyhQKCTK+/KYa8XJA+XKu12pJz0igzyHiHGCqM1vzld8teCUIyqwQ0zYPnd0VsrXBCbF7u1/1PlmRA/zL3pdq6+0XQPCyVL0q++SEyJUHIxva+JNM4ozr2PHWqZQfG24M2cPar99KKqbIj6pC4xNym9nB7pe20Z8s+GBSk6iTkpLkqhAB/kGhOy6h/1Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(921020)(22082099003)(18002099003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dTjGbOrdVHhY35XcGWi2BQdz8hBL3oH+hu/MEDdiPJvCa6fQPssIHwuFhptk?=
 =?us-ascii?Q?KXpybfiZ9MY1q5Upne7+6Yf5IkkSJUQGEcUP+rN44+UgePCiGux6EqhHWKog?=
 =?us-ascii?Q?GrUkhro4p03ceWvpaQNmKY1P9t6SmigpzhTjzv8dsQb2aUn8nOAeYXqDfsea?=
 =?us-ascii?Q?qA0KQ9O7lNLr/A1iOqKvoBxgF7uRDUAfpidTwQ9auLvRyF28lDPMxSmwZV7M?=
 =?us-ascii?Q?+OuJuHaw3SAdi7Irw1MpSiNhVtnRwlzf6OK3Ko6YHDeWyAFf/RTqZVx2H9zW?=
 =?us-ascii?Q?d+DBuiPYdsZOsL/yG7mKhWV46/0iPQyWJrI3IlF8nQMjZODhdYBHX5wQRbwC?=
 =?us-ascii?Q?0aRcZrIr7qfBR2fp0a0Bos95Gy1/155yET/HS7NbK5TcW2fg+iA9FBvpCYgU?=
 =?us-ascii?Q?FKQ4mdfJwKFXe7mly13UM971aWRzXn4yziVRgy6cgc7o2aZTz3/sJNpUHgZg?=
 =?us-ascii?Q?L93OhrxadtdNs0GqvLPBdSp8wrhFQQ+lXIy3QoOutBpzzvbEt9B9M2Y44fOH?=
 =?us-ascii?Q?pG5jZZGqxYHWWEG/MP02hM4BI6/DD6a8402Dcujpvf/tX3XvphsTtvSYsDoF?=
 =?us-ascii?Q?f/L2JASWdCK92UGcd7Zu/7GbGyqr/ZsOpuQTEMsuao+jrITmHckr4aUscA6g?=
 =?us-ascii?Q?S4ckatTzjqIqDTajttIy0+SWcypfXuTYi0rH7rSZKDBRvWzGNCKs/AFUxHs0?=
 =?us-ascii?Q?MscWAT9RFzkiaUdKxPLEx0atHk78P/+VZxNwfscO4HX2F8LhqMf8eI+E5ATP?=
 =?us-ascii?Q?lP1CRM46egMaTIVM+EyiPLX3OmwchQAC6QdylGPgyOQHzzq2nq3DMUlB9IDG?=
 =?us-ascii?Q?l5P/pE17hKCl0bwhzKBm6JcTOLFtSUvy9gM31XoQLQcqWARrmmT7ta/stb6i?=
 =?us-ascii?Q?I5C/NMgWeGNNK0SeB1zQBz7AhtLnCqJ9PhWGUWFE20i8L3tjTfxp3RdxFX8y?=
 =?us-ascii?Q?dqkCkj/oaFEcuae4dB3un9qPOWvmUUb0VkFCJtUhKVC6RxJlOvFRTY0SAN4I?=
 =?us-ascii?Q?2LCVDkRohiE/lBZtaeFUFO01jGmyE4JYA8LKvjO5WBuEcXDtv2+DobuurFSC?=
 =?us-ascii?Q?tEaX6XsktzIbLWsq2tHwZ7/VcCiz8B3BK9LaWg7+PNWNEQY9oCkdTJbukU7L?=
 =?us-ascii?Q?+h6O/aeZJV6/lNn52UJy0YVPEPwtDyWBTIBCFCYhCX54avuLAVLuNE/Kq1mp?=
 =?us-ascii?Q?tpb9Rb1BdePOjedDWz1xlBgyPbfsLPlmGVr6nZqdJDmjBCgoi1nJQYEi72XS?=
 =?us-ascii?Q?y9O2sfuUTqaPyGkG2Uu2U1As/Kx/PSnXR1l7EkR2zcy1bAuU5sDwtRxQ5hSt?=
 =?us-ascii?Q?7StkZhbNyFvjWOaugj0Ncxsj9MCbsgtWvtO5h1IHhtO3Drgy066v7lB4wBsP?=
 =?us-ascii?Q?ZvheqPmo6Cg4VcX6ACWm2vgt/fQWIdorY64HlSSSR0YvVW0FXLkHNgDXXGW3?=
 =?us-ascii?Q?qoWd2JTwoCwGWdoVMNoZXiSB1c1zlO0CDAeCxVMWzcnXyrIoN3AqoL3Au/+0?=
 =?us-ascii?Q?CSo4VBMhQt9R4VfVYVD0zV0JcX1fv8QQ2Nd8zAIe2i/ifseAvZ6Z33QXncpD?=
 =?us-ascii?Q?8YbY/OeUPbcLC+JT7H+8UwHoi03iAepO3DW1X2BeB4wn1PC1+AWLtKV+tvHn?=
 =?us-ascii?Q?JLc3U+lkT+Y9BEHbP20hyYDkwTtHFR3dv+83z+FfyQRWRmSywPgnvmQadvCV?=
 =?us-ascii?Q?DJe6JzyeFMIoJgWHCJDhCwWGMFXX7gIEQFZyhtKs+BBEelLXilH+UQPTYBE/?=
 =?us-ascii?Q?B+22oGc/Bg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ipWEtDxnbzU9R4ybyzvLJUSjsNwIS44AXmJCoEkThqBKFz1l9fdKBYl9qD8XijMbOwZYokxR+NirQK6j1nBDmAYC/AKdgUCelTQKNpYWX/+v7zSTbROHmM8NHIJ18/T1h5jCAkrHeFXXvmcSb0r6t0nm0vdaUOiCOJyiJvVfcmKnLrjaNZ35DtPpPBoibsPkdE3KYQCXlca7CcMse5T/5tx2M98rT1RcZxZebiUd7T6oW+qc+6GGtKCEp9hOzz5h+pV1H/Is8N1PX+j8sc9RE77cEpDs0wQTp8fgPq6wcyylsm0a4Nfm58AJziGXBJYW10WylIrTYIrYE0Ipde/jZQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8241a837-9e2f-4fca-3440-08dec0a22bd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 12:26:28.5141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S7eYXR68Bz5ZUYah+vhK5R5PUtzR+VLcjc3mG7ZUEbWk6baRrr3i4p7PPv3XgZOOUDsPoQBb729XOUpb6lPmVMS2B4cPwHR3vBTvqygVHBo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF0F15BC42D
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780403192; x=1811939192;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eqCqmk4JISuW1GlRzek7rmYjIfomWKl0wdKOH54LMmk=;
 b=cHNGmSQU+X1dk+lLZnfD6yeLQwA6jvWttjWNFgjA5nTWFalsmwp1BJJ7
 PqiAL9uwB/ca7vsFLSZBnkeG0I6iZVblfTFwonczPclDjgiIsZDYHXoz6
 UakbuWx84xzxyhPmeRpnCCZpiyNQEgcky3OI48WB8mWzsFLL5dEnXZ26s
 TV+gwSuQgmKMssJyXHT6x1XPZ+2PG5cisCpq+eOV9F3NBOOioYg5t42Id
 X+HMMXQ9NHpa1kqTRrIxKSTmtJtz03BHha1/BQeNTPQt4IysZTyz7+tc8
 SgJh+HeYNi6Pyl/xazHmkhSLiTwgktzt/9dc6k4ttl6F3eFsdSvq/yRoM
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cHNGmSQU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: implement
 get_queue_stats_rx
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kshitiz.bartariya@zohomail.in,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,zohomail.in:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C8EFB62E052

From: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>=20
Sent: Tuesday, June 2, 2026 12:09 PM

>Hook into the netdev_stat_ops interface to expose per RX queue
>statistics through the netdev generic netlink API.
>
>The following counters are filled:
>
> - alloc_fail: sum of alloc_rx_page_failed and alloc_rx_buff_failed
>
> - csum_bad: maps directly to csum_err, which is incremented for both
>   IP header and L4 checksum errors in ixgbe_rx_checksum().
>
>Signed-off-by: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>
>---
>This patch was previously discussed for the net tree:
>Link: https://lore.kernel.org/lkml/20260526074744.36315-1-kshitiz.bartariy=
a@zohomail.in/
>
>Sending to net-next as suggested by Jacob Keller and Aleksandr Loktionov.
>
>
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 ++++++++++++++++
> 1 file changed, 16 insertions(+)


LGTM
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

One nit - you can add exact cmd collecting the stats to the commit msg

By any chance was it tested on real HW?

