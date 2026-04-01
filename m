Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJ0YO/xTzWk3cAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 19:21:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 370EF37E93A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 19:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38FDC81E13;
	Wed,  1 Apr 2026 17:20:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wu2TiC9bog4Q; Wed,  1 Apr 2026 17:20:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57990817F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775064056;
	bh=MjuEJNr0E0w/qXuIiQqKpfn6tTGMaAP9tlSARWEolqQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nxf6fRAm58txdLSHvEOKJ/VB+h0M1PCbDkfnOS6AAaNSGQ82aq8uKwlEAEVVmCU7C
	 tjOWj4uErYnwVuZLltZsiWYr0tB64ja99Y2+h1aYUQXrCxLt4CiPQ7/ewK8sYSdA17
	 f5cUK62KPaGEwCFzTOcJTpfBTgk1hRym0WeHjUE3t4+fSKiQYH0Wz1y+U/g8j+QnJw
	 HimrOkJgyMhXeVfJlU1begwkMTfOzFMiLe8zkqLc80nadWLF4BJR+mNgOE7CWBiPwY
	 EL3SxrzSyv+Spltaj77N3NZ/klYQBa/M56NUDT4EUvqRcsnFSXw++k63hIrYxbKQ3D
	 AXBredIAQt2Cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57990817F2;
	Wed,  1 Apr 2026 17:20:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E2232F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 17:20:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7F9DE40497
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 17:20:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lMxZI2dmR3w4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 17:20:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 603C6403D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 603C6403D3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 603C6403D3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 17:20:53 +0000 (UTC)
X-CSE-ConnectionGUID: YrJWq773QACPjMMKf0SKkw==
X-CSE-MsgGUID: PLOEwSEsR0qfhNJz5AMBEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76226606"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="76226606"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 10:20:52 -0700
X-CSE-ConnectionGUID: k9/1wSQAS16H39/T4QdPaw==
X-CSE-MsgGUID: NEp17h1hShuUnWF274SZfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="249789028"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 10:20:52 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 10:20:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 10:20:51 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 10:20:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gEJsAUpiY6zUOjNqHVmPrKVCRawfe/PgViaD30zLhrmC/CJ+CxkNzJs1A8elW0p4591v68rK8HPeqOTVt5pbDTrdvOmJ4Uc60b13DjdtfWymHc6pthPG/IxPfPVdL3eiQ+GUlB6R7bmk2D6UqRJHegMG7WpsgtxsrOG1yAHuaPdMOgjXnIjmfU/oLbGZySH6bBjFn9VFgB0eEBG91Al5q3mV0Z7Ts46BDgGCNPFqNfyQry57+Tz6hDPRRxGGV+OiryI4KT5DMgkqE4KQRgd8M0OUcyYkz69fFzNzvOrU6Md8ZENMhf4Lycs8ibd9Lx4mDA7MK4RshnpmTSeNkW/x9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MjuEJNr0E0w/qXuIiQqKpfn6tTGMaAP9tlSARWEolqQ=;
 b=VPyvvch33mIW1YSTeJTs3KkR32KmFhjtdF1Y0ug/+3QXtr2C3IrNwvrwRyvI45Vh+0LjnYM1v5CHR8+QYuJm4yJZPqOYcCK+HlpWywD6ul+tolEH1sN/Tst5qwYvGSHZrMs8JdYiCFjIkuBYWySMwF3TMmc2pWQkxMG3gWZklbzb/VhYNwFdSCosYNp7IMWiyag8RCpDLcrvAIQw2prNJ7h5n97DG8Q5+lBAOTPRVXcnVhk/0fvbjO/YSvhGs2BcrCsPV4vPR9P2+rJREFADb41SKLu6GLWyOf0QRC2XqLh41kUejxd2iUtYFZzTY/XxbWsFzAW5KKAXKPVpyVDkXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH7PR11MB6746.namprd11.prod.outlook.com (2603:10b6:510:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 1 Apr
 2026 17:20:47 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9769.016; Wed, 1 Apr 2026
 17:20:47 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix missing dpll
 notifications for SW pins
Thread-Index: AQHct+J9B8idiPGKdkubIgkU9QKeu7XKgOyQ
Date: Wed, 1 Apr 2026 17:20:47 +0000
Message-ID: <IA1PR11MB6241F2D6AF5CF6FD95597C548B50A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260319205256.998876-1-poros@redhat.com>
In-Reply-To: <20260319205256.998876-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH7PR11MB6746:EE_
x-ms-office365-filtering-correlation-id: 34d932b2-4e14-4569-6bf3-08de90130396
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: OPe/g+tc7ABpzrs3/RPO+ZpJkAuDwblcMUkFQdRS0dCZMyR7NnjvVUm5NppSWglk41tnw5lxB8yB2n8VvTf+hB5PUMyFqzXDSYIaSREyFGi1XSqAJtMmRv2XP3zutaOziJNNa9sAzXpvbxqnBqX4BSw4A6xh4dgx2oE8Y99n8DUrEAmrIZX6TvMeDSn4o5ZGbfJAI31RHpXtnGv87gyIs1SGZ5iGIwhtldEY6kD6JbTVe98jt2EHE/JG7UTVrtTiD/Fkfff7iTJ1O9nO0ax3Tm9KB3IiTmAHnT8qM7jkxyaaY7hgH9gabg/bjGUIW/pQDmHmRo+LZZQpF+W2z5KcQ4O2c/x3WsvttRa6q3CFCdkAjXpltC/hsT/IVrGTAR8IcTviZdVfDBIe0qoIVvOyWQ+CNTgrrE+KBtMUVYx/ZT6Gsvo5QTh3j4MoHhER87JEwTDCnOon74lTAAhArY5hilVrp6ObdJmB5MF4vWuQ+lmAn9AmPQv6IeB/UecdQV5fsOmJccGhYEpluGni8q0VteuAaL+vOFBZGtUpS6nkV/ymBhZThOzY/89CQEFycjcRZ9nPMLbKiyXnC2oLys8jpnMXa/VvDrtYq+rAtQKa1ddvBBMqu4QjtNI4v9bhTEb9e3ICviL1URknV7PAckNmen6CYJbmmYngMA+QDlqwteOtvurd0ildjluWx41ycOhsUsgotlcB+TxmNl4mxoOADuesExWAf6k0A9rHaF/+/bUBWQWDhu7U5XPGKRQDZDkQnUTwktpTVzEpwtblaSyqJ5jw8b8f6BwERKo+wIJAWiauR5y/kN+1GjdHfSbJdrqR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PUgwvv57bZ40Q9i5028OyJH5rhar8tnq3GEC8Xle0x8Ppxz4aYMfqiqU2mG1?=
 =?us-ascii?Q?FisdEToMOjB3uHqAa07lvRGyCocbnBnz+wc3Je6NsdcOcrI+TEupRDM2CpZ6?=
 =?us-ascii?Q?89fpWdHnqXQf0ZuRoQIuOaBZLFGLGqQPqU6VB2EDRPYIBfAN003Xv4HjRglX?=
 =?us-ascii?Q?diwmBHUCHIccTg2WhhdrelX3GvNCR/y6bIOLwlOV1VzPDeKTePxJgDa14Pbj?=
 =?us-ascii?Q?tB2+Olx3GTkt98qjh7VoekOPptJIacfie3jyROWb/R4dkjoBhPEGgwIzceFp?=
 =?us-ascii?Q?r8aKkgTd1feWk9GO1ivxvu62l4jvmVMIqNeuehCNv1tfZB8pY5yDmboW7y3o?=
 =?us-ascii?Q?5GMadUGdtMF4F1jomiGMz5c2qYvqtrCgetl1oCXY/EoDRfiSCbBy2rS8VliG?=
 =?us-ascii?Q?AV77Ppula/U1VHOAkmdX1KmtuYwnAW17B4LQ32rMvYSlwglSR6bG/KmVv5Qh?=
 =?us-ascii?Q?vQNiswB5mpcQq90m3oaCcLqmJOS9r6YR84ehZ8KRd/rqLnbrgOM5UtCLMOht?=
 =?us-ascii?Q?8M8FG8PXIfYqISMkhNmy5R2ZVLXdL7Q6siFhghTmkgXfoACuLnChEVQ0mbDY?=
 =?us-ascii?Q?4RiMqnfaUBVYrbX7qzPtQLVf/buYa/65BRyVlZ3ifg0Ok/P3NJnHwDRLCkx2?=
 =?us-ascii?Q?Dqy/Fj13Y+RzoVZpnZWvpz8lobVSxbNePaCZbc9gBeShuqP9qvFszkH7kZdR?=
 =?us-ascii?Q?3pqpql6gGtD2CfOx22seF7PBkRr6Y5FQvQHyKwEGWz+HbtlQi/8najPGYncr?=
 =?us-ascii?Q?aFf9Fi/UtOItUQl/paCLgsB9Sy/wKyjzqAMSvkXvHYKlDFhRWnCmRvnY/tMC?=
 =?us-ascii?Q?lp7rKE4H5csVS5DzVarID1DsE/pDwnm0T0tVR79jJB49R1VXYwfLZaTi4BZY?=
 =?us-ascii?Q?XOOpE4D5np6a2hhevE73H02HfY1dI1usH7NIsac0+Q1zyn6dDcOfxB/xkR9y?=
 =?us-ascii?Q?PjyPetYm5tbLF6WfDmmsVxGLTs1Y0nXblL06u7Y31XDzX9EGaVZp1t78h6dj?=
 =?us-ascii?Q?ZKPesVa0Y/gK9m87TT2MbAoqwNoVdqCwgKJdQ6Z/Epg2n9stmAaLXIKGhdwe?=
 =?us-ascii?Q?QT6XXJLsjpxNpcssT5UFxRy2lepdSi9WX1Tw7jMSJsDc1PvKNDXGVXc/7XVb?=
 =?us-ascii?Q?PVpE17f1+lFYYevktbPH/m2rSJ8G0hcndI0rs4o7ovllBRs2ZH9ZpaMatVqY?=
 =?us-ascii?Q?t9vtsNsyvGLl7S3sut8qC5Rbc6VRpHbJwhTSUILZp02Qu+i6K2IB4SWBvbgs?=
 =?us-ascii?Q?u5Mu7IsVDMjhh8KWrOJCleyFqFHk6PZiQk4HU3VHGYDwoDNxUDaY+I0kqQsU?=
 =?us-ascii?Q?Jlr4lcnRry87//RbQ+QIOSShjeT9AXAc5KFvXkCyRy6PQ8xK/zLa9J1sC2kM?=
 =?us-ascii?Q?yRV1Z6GG9SvMbWHw9/3C9l+6+HMrq9sEzdiTh0kX2MEOMDWl0jsOSki/JHQ6?=
 =?us-ascii?Q?JVKwIYRINkj61DgUpHiy5DnD6Ko1RFNBAc5Zdy8SUdrt1ncCBi1gguMWV02c?=
 =?us-ascii?Q?nr3sGA+oJyegeLeGx2FF11tBMHKXa+xsf37KPrD9CL4dZRZXyThxfb+fpsdb?=
 =?us-ascii?Q?ge8m237LJYZkVwzG6at8GF8V771uok8bZtFayPgnA9brlvj7M6g97q+3ZBz6?=
 =?us-ascii?Q?TgZSiU0LjNFzUHizsHhrAucc1cEUFKJXEzGOQbmiz9/NNx8HlkCytg0jYYk1?=
 =?us-ascii?Q?sloEbRPjc3X7PB8QIHmYXsCKg4Z85ujbipgurJv8asBZjn3nEcv4aPJaa1tx?=
 =?us-ascii?Q?aUmgltgwEA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Pfji68eOmtXjrkCTzpiwBDxejqRNcVgKk049l2K/uiX4HP10sEAaZzOAlXJme7Ufn0jezYq3Us7cIwW62gHgqHhvsdraKekQQQV2N3hpY5pClx2wO8T2+D9/Drl+ifoIvRoWAb9xgMtyA5GDWgQEZWeTDBz3xJbv3NS1iaNIRFslNXKLUtJKl2zh7cCb8dS32KEu+IRvDvPHhJAz22GGnu1wzEcDa/bWMFgMSQsMa/5Hz3KLRVs0SRQ+DLdljuskpp4jVIyxi0iDNoxFV/8DE0qryaDoS5l8a665jtjoZC04jNPCD6zeBPdW5uIemOdyujH7iJMOXy4a64r+ZeL9hA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34d932b2-4e14-4569-6bf3-08de90130396
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2026 17:20:47.1869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AOwq2vHcq4ssre3yusvyv/UdZEITCCpoYlZ464syfzK6Pl03EvKcNJjGRKdCAHZppZh/yrmtB0jyXgcTK3xbKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6746
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775064053; x=1806600053;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ugrF/SskMzpHHcibrOM1g3WUzL47lG8UXBjqNNBGFMI=;
 b=EiHupJEP7jN9LOjqoQHwPIyZwa+Mk3D4O8c65OKLX2KuqEwCJ+niHHxQ
 w+H2if6cxv5GFeJxKbdb4vRTks0oibbV8be8utkvU8wtDm7q1zf5h78sX
 iECRDFp03Nd129hmMx5HejuKYpDm6h0Y2lU5/kKZ5VeJmLGLAvlkqF77b
 v1KZtoL1pS/9rzYIaWxWC8Djlg/+ojNBz9iXYNifJmiHiIGoP5Y55yx++
 PAPUcKMxmgq8UUvqYu633ThOq++NO8wtm57St2tzxj5hlhcevWGDYXFfH
 j25bwsW9cZbTNPCL+ZYitkOmJ7QAGDdElhd0a99xBYNrOjZGzaX9Znk9O
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EiHupJEP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix missing dpll
 notifications for SW pins
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
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 370EF37E93A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
etr Oros
> Sent: 20 March 2026 02:23
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; Kitszel, Przemyslaw <przemyslaw.ki=
tszel@intel.com>; Eric Dumazet <edumazet@google.com>; Kubalewski, Arkadiusz=
 <arkadiusz.kubalewski@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; Ngu=
yen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org=
>; intel-wired-lan@lists.osuosl.org; Jakub Kicinski <kuba@kernel.org>; Paol=
o Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; linux-k=
ernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix missing dpll notif=
ications for SW pins
>
> The SMA/U.FL pin redesign (commit 2dd5d03c77e2 ("ice: redesign dpll sma/u=
.fl pins control")) introduced software-controlled pins that wrap backing C=
GU input/output pins, but never updated the notification and data paths to =
propagate pin events to these SW wrappers.
>
> There are three problems:
>
> 1) ice_dpll_notify_changes() sends dpll_pin_change_ntf() only for the
>   direct CGU input pin stored in d->active_input.  When the active
>   input changes, SW pins (SMA/U.FL) that wrap the old or new active
>   input never receive a change notification.  As a result, userspace
>   consumers such as synce4l that monitor SMA pins via dpll netlink
>   never learn when the pin state transitions (e.g. from SELECTABLE to
>   CONNECTED).
>
> 2) ice_dpll_phase_offset_get() returns p->phase_offset for non-active
>   SW pins, but this field is never updated for SW pins.  The PPS phase
>   offset monitor updates the backing CGU input's phase_offset
>   (p->input->phase_offset), not the SW pin's own field.  As a result
>   non-active SW pins always report zero phase offset even when the
>   backing CGU input has valid PPS measurements.
>
> 3) ice_dpll_pins_notify_mask() does not propagate phase offset change
>   notifications to SW pins either.  When a HW CGU pin gets a phase
>   offset change notification, the SMA/U.FL pin wrapping it is never
>   notified, so userspace consumers (ts2phc, synce4l) monitoring SW
>   pins via dpll netlink never receive phase offset updates.
>
> Fix all three by:
>
> - In ice_dpll_phase_offset_get(), return the backing CGU input's
>   phase_offset for input-direction SW pins instead of the SW pin's own
>   (always zero) field.
>
> - Introduce ice_dpll_pin_ntf(), a thin wrapper around
>   dpll_pin_change_ntf() that also sends notifications to any
>   registered SMA/U.FL pin whose backing CGU input matches.  Replace
>   all direct dpll_pin_change_ntf() calls in the periodic notification
>   paths with ice_dpll_pin_ntf(), so SW pins are automatically notified
>   whenever their backing HW pin is.
>
> Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
> v4:
> - expanded scope to also fix phase offset reporting and phase offset
>   notifications for SW pins (problems 2 and 3 above)
> - replaced ice_dpll_sw_pin_needs_notify() with ice_dpll_pin_ntf(),
>   a unified wrapper that covers all notification paths
> - squashed into a single patch
> v3: https://lore.kernel.org/all/20260220140700.2910174-1-poros@redhat.com=
/
> - added kdoc for ice_dpll_sw_pin_needs_notify() helper
> v2: https://lore.kernel.org/all/20260219131500.2271897-1-poros@redhat.com=
/
> - extracted ice_dpll_sw_pin_needs_notify() helper for readability
> - moved loop variable into for() scope
> v1: https://lore.kernel.org/all/20260218211414.1411163-1-poros@redhat.com=
/
> ---
> drivers/net/ethernet/intel/ice/ice_dpll.c | 47 +++++++++++++++++------
> 1 file changed, 36 insertions(+), 11 deletions(-)
>

While changing SMA pin status, though UFL pin status changes, Subscribe mon=
itor logs only SMA pin status change.
Example: Setting SMA1 as Tx automatically changes U.FL1 state to disconnect=
ed, Subscribe monitor logs SMA status change but does not log UFL status ch=
ange.

