Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +P8NLKWDsWmjCwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 16:00:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFA3265E8C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 16:00:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9154984634;
	Wed, 11 Mar 2026 15:00:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T_3NaLxjTNcD; Wed, 11 Mar 2026 15:00:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 370878462E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773241250;
	bh=nBamMDl9jMB7qnYzzfjp8uYaTg+zwNt47tBWNlWwV74=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AJ0CX1YcaZyrlTy+9hn+cWekzLxtWQKpsSFt8qOc3RwoQe2IYK5sbz+gWmL3SAIXa
	 cHQCXUu8Gi3NhhfjcGNnvFUv1DdillrheaSovC+Pb8DnQC/er7xUb/YqubX2Vh5KFv
	 Bxv1Jp4hRFxGOzJuQZaAmdZIQi2mlj7zwHbS1bRFxTIbceQIy82HqNMbkx4GeX6/kY
	 hu/izO6NF1nawtDZddj3mXcg51oeK0Fjyuw56baYB5AWrgv8EbYUgUAjx6yk6n2eZI
	 ebCyN7nBK/i3eHnsySaYmgAIyMi06w+EL8VM4H+dWaVason9qfRJEA+uVEK+93/5kF
	 7pragoSi5faKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 370878462E;
	Wed, 11 Mar 2026 15:00:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2381C201
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 15:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 14FD042346
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 15:00:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E3YdK3Crpcit for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 15:00:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 737974233E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 737974233E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 737974233E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 15:00:45 +0000 (UTC)
X-CSE-ConnectionGUID: oYRt1f4VSXiw/38Bd4opHw==
X-CSE-MsgGUID: rHdbIksWSQ6DIRjL4rbrdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74281584"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74281584"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 08:00:35 -0700
X-CSE-ConnectionGUID: lo8/ZRfkRZqL8LRRNjGglw==
X-CSE-MsgGUID: aGhbVGQFSAChjlNnoFBdRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="220667514"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 08:00:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 08:00:21 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 08:00:21 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.51) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 08:00:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dag+PvwQSp2hDUBbNosZ7WztGNfmawmBlcPwauJMp+bGJsTX7fpjh/NfYn6xR84KbQEPXcgjPSo5DNwSm9vVdmsOE3f7WsRl0Fyv7K/USEantVxv5Tl4Xvoww+P3vFkvPiJoHEvZ5ujgzKW8qrCObGHN905HRVarTmQyopdCflLA8SJmhDZc1y42z8PEuBysODTKKYKce4vsICSA6IROW2X+yGqk8r7AdM+2ctoTHR2WOQ8fy1ZL7Yd1XyLDEviSRyhWEEqPRVr8ocTvwlTNB7ARb3mrt6i2PVCOBKjNsHETv37wD+gFJ5PV8ViZgXIi/r5FfONsCyZdABDEgRZsgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nBamMDl9jMB7qnYzzfjp8uYaTg+zwNt47tBWNlWwV74=;
 b=YMar3F419eL1ZyMcXEv5fThRMeiZwPeuhu2W7Jgdm/ZY20TPCIq7gz+1LuoaKyD/ixoUhQClttREjeWSRtC15lzEefYfCp5pdSkGd/2/jgYrGJjOcanNc5k9ymsr7vh0Ol7VYkRuj6ubtg4cW+79eao4ufnGGtbLNUnOE8qydwzLoygzCAxzOjwEEL9aoo6TOKVF0DcoGZhkLUa/EgdtHW23S3J060rr9mREGIPG3OPxd7tWI0mdz/jwwEbMS6IA1PanHSD1ROHmtUu8PwgD8/A6NmujmRQUtM+n3yw7D50WFK4y95DCeQKPIDGi41h5/C1+NAMPDrvsHvmBROxU6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA0PR11MB4768.namprd11.prod.outlook.com (2603:10b6:806:71::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.3; Wed, 11 Mar
 2026 15:00:18 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 15:00:18 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] i40e: PTP: set supported
 flags in ptp_clock_info
Thread-Index: AQHcsVfsf1YRvazuaUiQQ0bF7j+IPrWpbMhg
Date: Wed, 11 Mar 2026 15:00:18 +0000
Message-ID: <IA3PR11MB8986ADF15C55A1F5D5572220E547A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260311130743.353632-1-przemyslaw.korba@intel.com>
In-Reply-To: <20260311130743.353632-1-przemyslaw.korba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA0PR11MB4768:EE_
x-ms-office365-filtering-correlation-id: b68ac134-69da-4b1d-ee80-08de7f7ee8ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: SOxI6bpZiV6C4jVjxTL48Q94fGam3nn+yKbNYYo8D1mqIjmVjXq7CE+wmKONLjwXIpeHtyFFpOrfRuLeEsP+QfSQPlsXIM9hOqTHeMs3KQTfg9xtaEwVv0CKcoQi5pq8suO1z7BCM5AiKJ0TL0+YzwwnhIj34l6XEYMUezORr/mT/HD1S20/s7B7JGvvcICXRLBC1gl+BX4INhJb6KTSnu4TENHf8u7uCdrx6UTFB+jBcNlgaSbRqItPXkMiLPqi/BJ8n0UwVyRYjeIxncvZ7VKVlTOwFxYhWX6pstCOnGZhIO6IENZkFysrqZDvbZb0VVl6A2V1LmBXhMsOqgrYD88K+pn7QNQDNG0MqK6GQvuptQx7QOqdo0z67XlAh4zvNYHcbcR1yQ3qrQyVgNrqNFaSqm8Lnu//xabf/0593twQn3mSJXHQek1x3yqCDWsTk+yJx1Sy0qrJEAipQNSASf93Ib1fJsbmObncKaktubXcClQdTaQ634e15DTqm0PbTbpSeUPR+Ygh6L0rHk9UkDRipRguKoQLb3RYNle8ecFQM3ggIhau5PDg9aPCPwxXpyQP+WJDP6cngUUlZb1REr6onqAQ4w5boDrK+/r9anU320622BdUn8I/87hGF9MTM/rN7yG9cgNHezKu3nbDjws+yLVHDd3j4qdF+xWmI1VPY116V9xpqD0hz6MWwJtoCSvbDfjsxTkFaPG4vqV7/1oY75n4k/zfgjG2wGOdXE0UzLcLp3vy3uFqVeOuFtwK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7wfqRW+MxWuZm+V/JAb8JjlvLIP0zijFyU/lTp9botZrLaHuYHjHzLRSQBvV?=
 =?us-ascii?Q?kqe3qt9NHv8klGuGfL+U+ycDC/N8Y16YgJvsgksozkUGrGiaPOnjZhiFUwic?=
 =?us-ascii?Q?dOq08PUj7IoTsh7StVUEOPYuIHoqJs7J+/SopnpdVFBeAb05khxjXaHH3dCZ?=
 =?us-ascii?Q?jFShsXqCOoo8JYfOifSwBDkHg2+DJ5CNyG/wWibrQzFX3FdeSW+N1E8hXkgW?=
 =?us-ascii?Q?P8hJ/rojGDGpmZIULR1pEa9FEjHEAYbpFDPS+GuyWoxV5DUKDkFBQRW8+zCV?=
 =?us-ascii?Q?PSPOROE3zvd9ESJGOjAWbMKHWREUe89oTMvCtLiK29LzVqmZgGKjaSs0cLLT?=
 =?us-ascii?Q?MPT2uBPZZKzyniOxM71Eo7IhbpRO937U5rvQ7K1hPV+1zBXanfMQnJVDSHX/?=
 =?us-ascii?Q?XgjfcV4q6M/ra+I+a6iibXgrihDLlNHYj6mb0qhH26vguJuzqOki5cDw9fpl?=
 =?us-ascii?Q?ROO9mEmz2mheVDRhXVH55+hnE4npzT3iPlvqJhWofrNaom0xg5BVbJ2rp+r4?=
 =?us-ascii?Q?dfy7Wf6ExBBcXaX25ROLVS2xZYTkmZcR1mPlcDPe7Zwt8d6mTJYyBSafyf8o?=
 =?us-ascii?Q?OpmyLd5BvJXpS97GgvqLWI2hu0K1qmCxcjdpxidMQgofcU4ESU6EiJtc6NDF?=
 =?us-ascii?Q?F2QckDumvrQhlr4l0YgI/UySlfixxrnBnwlXAQsz7muT5xsAx1VY2aVOi3km?=
 =?us-ascii?Q?lxBkzYtxCTL3QsQzqMddqgSJdFoXzFP2TDp+R/IFQT4zMU4Ogw5tohjblT5W?=
 =?us-ascii?Q?GG+QA1e41PUaNRrZR63oaaDgHedI4uROiSblNGRz32nbIqF5ZQaD2YAMd3R/?=
 =?us-ascii?Q?0bwlnSpWOswhipTWrId4BnyJFa/ZEN5FGbgsaNtBqxa5TNRBV5A9fvDijwyt?=
 =?us-ascii?Q?yvSlpnhnH/7/bZ7hC/MswOsrZHi0itGFDfYuSs8WgBSQz+qof52nDYu7aS3r?=
 =?us-ascii?Q?np3zdq8w2IX7MOgVL4ExgIEyFSUOO89aIRjWFQIP8XP5KUhMenGOj0hR3rar?=
 =?us-ascii?Q?RfmUy7gw6KRZryUZhogDuaUT24zni51dGWWdJDolcOpU86rVwtHEZTExZMSY?=
 =?us-ascii?Q?LHbbAT4oJg7NdfUzSo1wCbv3pILprgQjkOyILSjCk62x1FhjIYicziPU2fuF?=
 =?us-ascii?Q?2BoJvwDZEZClVtqoE8TOoIlL3oHtcNjVDafU23/tCfmlBcD8nMn5zpG6VrhS?=
 =?us-ascii?Q?0vDL66fovvDgA1sj+P9VF33jC689I9mkbpFNpKouE8vMolRQKyqWU+o2Us9e?=
 =?us-ascii?Q?XC3B+phHGuSkTjeYf2ts2y2LhHC0g0HZDguYOSM32m+VBTdr/5Ml8T8sJj/V?=
 =?us-ascii?Q?+9vpoUneDm6cHzvSh1CJHhTLBfBVESlup/uV/+E7Vp5gtKrs+FVVgwlGCEME?=
 =?us-ascii?Q?fQB1n/K+7mRfSVKP9mcJxL3Em5vtGLKnPysoSDkHU9SCwUGuFOaayfyw3+AA?=
 =?us-ascii?Q?wJwWpD8utnNcXJZFZ2LDHzOMlfeNPHDARHpD6su9ceHI66MgjhZF4h8CvTpH?=
 =?us-ascii?Q?BCxt25L08Ws/akcJdLIylpotWy02rxkiilmBKz4xQrBgMdOuF3DyKi4TIoGk?=
 =?us-ascii?Q?sfRswhKpp/+V1wHHEZAU8OLzD/H4OaaQD4UNQAxAuyCxUh7X1kcqKkNFukWN?=
 =?us-ascii?Q?gQ19L2oKceSolgRwwb4I4L2Y8GUwQoCsdSP9pq8bnPliO7eGbBT1YQEYNMi5?=
 =?us-ascii?Q?E6nW8WZeXxHNUyoDGi9RCLDXK8vihTW+SHrCPUcpjU45DnqOfF0UBN1SvTwL?=
 =?us-ascii?Q?Dq+nd3iA02UTH/+6gturp3dBf1VVGjo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LF+0hxN94DVj4kIpWtfjJzFwHk/yqJZMXNT8wTFBDfg7QO9aiG2cKAe7Qo5Auvc/b6Ykjn1wqbHpnOIQcMZEosJo1fNA3WJW739ej45aBF5hsOpkzCWDUqeDxQ8gfJfMOE+178WE85FfZ+TKlZwwtZQTekJVMJsDYojFKSk2RkO7fZz/my3kl+aNlpTlYwO5rJ/Relr135g6gz9dAHwfrjBY3D/m5HPNAOFbrm35uWWkQjKvLOxmLXYc36jBd/YCU0sA2DKLivCZKLxQMpvKvK/NeZ9pKPo7bgdS+sX77Gr4TpjiNYVai8SO8P+BSRY7iP66c4BmwQ1lOYBJ0+9cpQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b68ac134-69da-4b1d-ee80-08de7f7ee8ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 15:00:18.3129 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xj/JIEIbaSwBnoXCk1/XMXcanopMW1ELWMV+g5in/fo4MIQwNgZK0/jENjTVMmf5f0zK/eUJD8NaCvVAek0bQL2k3XEBLroPePsgUPLykZw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4768
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773241246; x=1804777246;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F/WrVtmWKw1yVWiZvBRh4sEa96R1LbY0oVCLmqRBzv4=;
 b=D3IVI2/taVefGIazrzYrTAZssNoe7wIfX88Yrml+ue6e7E/patV/nEHi
 i9NTtGpfnEsK0dE2P5f5YRLOPWtRZc3u1iuFFonpVCxuaGPtK7ITpyiEx
 i/Jl/ilIPZ7B+GgghnFx7i6z+HrE1f5mPpQD7JKkUhglAZ8ZAM3pxPVS8
 z4sFoqhYE6DdzNAE9E/OlpwmOzzeg3iDwWHxF9JWFH7fe8F5jAiuUuQDF
 m7WiphIFR1hF8exVf0DUqAgQ3ecU0gak9PpmZcqU/1pCwJTnqSee9IxAf
 +Pb550SAQrHOw7YmyHk4dTBhS8sh1ZpeBDFTTCzF6ZRluZvxqOIGA11Bi
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D3IVI2/t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: PTP: set supported
 flags in ptp_clock_info
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: EAFA3265E8C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Przemyslaw Korba
> Sent: Wednesday, March 11, 2026 2:06 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Korba, Przemyslaw
> <przemyslaw.korba@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] i40e: PTP: set
> supported flags in ptp_clock_info
>=20
> Since upstream commit d9f3e9ecc456 ("net: ptp: introduce
> .supported_perout_flags to ptp_clock_info") and commit 7c571ac57d9d
> ("net:
> ptp: introduce .supported_extts_flags to ptp_clock_info"), kernel core
> now requires that the driver set the .supported_perout_flags and
> .supported_extts_flags fields in PTP clock info. Otherwise, the
> additional flags will be rejected by the kernel automatically.
>=20
> i40e does not support perout flags, so reject any request with perout
> flags.
>=20
> Fixes: d9f3e9ecc456 ("net: ptp: introduce .supported_perout_flags to
> ptp_clock_info")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> v2:
> - add fixes tag
> - remove old TODO comment
> v1: https://lore.kernel.org/intel-wired-lan/20260309141220.343224-1-
> przemyslaw.korba@intel.com/
>=20
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> index 7bcea7d9720f..41ae6d78aacb 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -598,13 +598,20 @@ static int i40e_ptp_feature_enable(struct
> ptp_clock_info *ptp,
>  	enum ptp_pin_function func;
>  	unsigned int chan;
>=20
> -	/* TODO: Implement flags handling for EXTTS and PEROUT */
>  	switch (rq->type) {
>  	case PTP_CLK_REQ_EXTTS:
> +		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
> +					PTP_RISING_EDGE |
> +					PTP_FALLING_EDGE |
> +					PTP_STRICT_FLAGS))
> +			return -EOPNOTSUPP;
> +
>  		func =3D PTP_PF_EXTTS;
>  		chan =3D rq->extts.index;
>  		break;
>  	case PTP_CLK_REQ_PEROUT:
> +		if (rq->perout.flags)
> +			return -EOPNOTSUPP;
>  		func =3D PTP_PF_PEROUT;
>  		chan =3D rq->perout.index;
>  		break;
> @@ -1340,7 +1347,9 @@ static int i40e_init_pin_config(struct i40e_pf
> *pf)
>  	pf->ptp_caps.n_ext_ts =3D 2;
>  	pf->ptp_caps.pps =3D 1;
>  	pf->ptp_caps.n_per_out =3D 2;
> -
> +	pf->ptp_caps.supported_extts_flags =3D PTP_RISING_EDGE |
> +					     PTP_FALLING_EDGE |
> +					     PTP_STRICT_FLAGS;
>  	pf->ptp_caps.pin_config =3D kzalloc_objs(*pf-
> >ptp_caps.pin_config,
>  					       pf->ptp_caps.n_pins);
>  	if (!pf->ptp_caps.pin_config)
>=20
> base-commit: d5fbc991435eac7a1ead7cd2ddb5a743528718bb
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
