Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8EQJOoOH8GnuUQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:10:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D840482481
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:10:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEB5840831;
	Tue, 28 Apr 2026 10:10:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bu_VzCm9fNDm; Tue, 28 Apr 2026 10:10:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CE804087A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777371009;
	bh=n4cUj40BFiiKxeIbsktzWszHIPF22auFwmnXAgPv4gs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LjqBbrY2Wc/YZVHw8kpLT4mM7NHhtYu9q+S2+0pCSTLJrO5MnqFtqJaIbaCUPnNvu
	 wtfyXUF0UU6T8+4bNkei9AG+4MiXaeyqF8x5UF+LuRn31NLUGAWxbXF+YZyC/hfmyW
	 MoMz7GMMJ+HQQTmbteEz1iDhHByvl43dywAGDMe35/M78I6qGkuQIQ3hOGqpqGBHxu
	 j10ifKA4lrIGasN4r1Z7TL/Ojh7hcmMNoko7VR1BCrF8z2nERsiKtmUB9GRU6RQMw4
	 OIsFJBp8AXnwva/Bl0HHxGscUWp4ONpbkzKiAn/85U07Hj0gp9T2Cx5rQ9SKZHJrKx
	 vCByYnIdOTjVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CE804087A;
	Tue, 28 Apr 2026 10:10:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C72FC23D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8D1C406B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:10:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qsLqtmlVwvJL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 10:10:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A20CF406B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A20CF406B2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A20CF406B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:10:06 +0000 (UTC)
X-CSE-ConnectionGUID: GovNViI0TUm0YKvQPp9Y/A==
X-CSE-MsgGUID: Q774GPFtRTOLHxdBRbo2NQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78258501"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="78258501"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:10:06 -0700
X-CSE-ConnectionGUID: y6KxsPxVSnGyLsQNciP/mA==
X-CSE-MsgGUID: eAx1sUlcQ5KOH6gUMs7/vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="264300940"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:10:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 03:10:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 03:10:05 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 03:10:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RjlHsKLC2GVF+WTJ2s9nnE/CU4qpyTnJImbi2UrqZkTASn6beVc6m5eaEqAmuT09gZRvwvCwNo7Pdjsblv3mzAtlX5xsdzsmwrqOU4paJc6i3FD5fzZcm4c5fYjqKwWnNR6TUJVm82qlpVh1lEUShq1JH3yRdjpYnEYynyTGasB4bZ65HRgeigHjJ18BYGcQdWWiz7psIvfuQY/gLmBwQObQEvvW55BlvfQozW6kD3QvSJzM56rJPz9LuTtrtMMGZpLg3HwnJfOQQ4Wv4x04AqjoQfs1wnnzLd37BfEch7H8SV70rYLDUmVY5u8t1ZKANh/w9g9ZZMp/nZR4l/ioXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4cUj40BFiiKxeIbsktzWszHIPF22auFwmnXAgPv4gs=;
 b=OTScte9TTUtZrS51U0fztRft7SkI8h6NtfrqarTjhi0AZhgaZzT2tXSojiguXSVaBZLOL0+m2/cT+qSQRVMm6qFt61/uHIQX0IJa3bSa57hSxtVjfjoI/vP/CObSH15E1Ba5yUNLtKzioT5LD5aGeIhB/zkhUYrgWFIoaxXEc+AobKA8NVkFfdKexaZ1KnGZpSOBdGoBh7kxggeyPVf4NbHKcYkJ2XVccGrIAocFIJNj1csLbcNeMsU49ppWiYF2M+vYWkhBICKg/VVvhoKBEd1vBqIY6RdA8uch9ZzIvbcrFAUB/NJKHQUxH1dTbqCFNV5C5fCvXuTaNiaq/PBsFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW3PR11MB4716.namprd11.prod.outlook.com (2603:10b6:303:53::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.18; Tue, 28 Apr
 2026 10:10:01 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 10:10:01 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Burra, Phani
 R" <phani.r.burra@intel.com>, "R, Bharath" <bharath.r@intel.com>, "Salin,
 Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 04/14] libie: add control
 queue support
Thread-Index: AQHc1ujmrp3FoUNzDkOzXYfRWrC1o7X0QG6Q
Date: Tue, 28 Apr 2026 10:10:01 +0000
Message-ID: <IA3PR11MB8986FEFE23D34D46376ED46EE5372@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
 <20260428082654.44364-5-larysa.zaremba@intel.com>
In-Reply-To: <20260428082654.44364-5-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW3PR11MB4716:EE_
x-ms-office365-filtering-correlation-id: ad0ce9fd-9bda-473c-b25f-08dea50e4f66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|22082099003|18002099003|38070700021|56012099003;
x-microsoft-antispam-message-info: vF+op3VU1UVLAWKhcoQL9V7KorbSVmTFWnbpbImSayqwUhSnpQmS10uq/1nVWoGBDYKeaKyTdgSdhzZTw60Nbpv1dn4y3B1T4vXO5eh5MXbS8EQM7QeyR3ZP8UnGEGVZFDjY0Rs+iG49/oBr4qDrjrK9GXVXPZF0gybSY5qqmCTgNPXppQwj8lmDndvSc5heis5UQbsfgFWfefUgr/jKefx34Ntq61HiMiiU5geSki1qZvqTBOM67XbQ1BRwddl/SDTu+4aLomJMHQ9FF8jXpWbl1egrFxNkzRxIfBxVd8ysgoryjk4K3aVd0k5C3rXkEaZLslQUyavHSOisHS+aM4iswtc+VZblIjEyQo+vOv+PZ1qcrbEqZ05KC9DzsJwaqTboC/pYmT08MJ2Kc2V2RlVw8/iuTI3ht51F9zC7btKk0mN/jGWm2HHB4sz7W+XQU0hJ1PpmNMrOjNTKilMhDV/cziyNkhVFLg4+jQsWnbthtdDBn8eUW1KYXdtZvildRHhHKkj2XM+pszyNZY0apWV+fMJSCAwebfryQ3kDc3tK1yvMvCSIeEGM1KOB0QgppZl0dd2mMxgX+UzEyHwtc5BoFgBC2Ui07F5pLs3++0MQb/gf+RO6AS4BpTby76hhpSBjcJriOSYH/ZlJU9uaImKg5OLddQCcZzNLNp/mxyp1mSlkAnVZdKJCSEO37/8zhFKNTyQjHONi+iebq+A2K9ipyFb38fPPBAEuWkCBfbsKGZS/3nl9judfgzq+jL/1CBTmCbaRzSVnV2Cury3Uv8DLvI4Q7H5X4Errs1l/3Ek=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(22082099003)(18002099003)(38070700021)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZG/tPnW2iOutM7Ng1VXgOriDXH72TrFhknrLisvyiLn4koLw8ScLA7yT2nmJ?=
 =?us-ascii?Q?VHbXO/a+oinTxRAEBAo9yvxARHczT1OzNTEKKf3yFfiiL02Yubr2yD5SYo/f?=
 =?us-ascii?Q?hZpNCKReLUV2U5tZu1tn7kmAiFc+gvKZNvheSP0xI7SE93pUvep9z8tIaZbP?=
 =?us-ascii?Q?A6TQzPm1vmTKuVqq62OhMG2nzFA1EZB2YNpZpTDp8JOjbyjyQDEO9r9UsM/9?=
 =?us-ascii?Q?FOgzv+UVwWVJi12Ol1y1M2LPDdZeVnrsF222T+PASO5x3f2Lev9hj9Qj3F/w?=
 =?us-ascii?Q?NG6sMCIMOgXyuPqKTdgeD8gmDJga+vTnf8ihYmvHNHLdz1M3s4EIOyEbSFik?=
 =?us-ascii?Q?SXleADUxoxYm948F9QMWJFE4fJTV+G9Tvwg8VL75VlTeSO3OyBisuXyS6STp?=
 =?us-ascii?Q?qcLtqKuosEsccnqf/c+NsS7Mmdix0wSPWydb2JhvFOeuvPVoknfXlg0TIsCN?=
 =?us-ascii?Q?AaxSVuwDBVG9y0wY8KCLBGX0LenHxKYkkLIIeAQfdhGEHuTbH4hOhy1/45I6?=
 =?us-ascii?Q?5jwXluO4g8tguCkRuIYWAy85gsMkMWQVS5kov7wa3sTO79qdOmw5IKibpYBU?=
 =?us-ascii?Q?JBG7bd0GP2U/0vveWMTl9JhlQJyXJszUlH5eU4tt1ZVOJSt+pDmMHWTs3pxA?=
 =?us-ascii?Q?9Uj7AwkeNfaUydQGGh0ODraGAG/0KhaBZ7M1wTmj/XXdxY4bHN6Yz8jUFxth?=
 =?us-ascii?Q?5p5nbbUajlEQ332yV+rXz6VgTY3IEiXXpMejrjS7aQtomI2qwwSkYrGCcTTJ?=
 =?us-ascii?Q?rLbYg6UJILLjXRTeXv2sdDMZ2S90y7z/Z6VvVeU3RspebXOLnCFrVU0t0i6i?=
 =?us-ascii?Q?zlxu2PVNx+03XQU3tiiYhCANJNqtKhWf5/aV0Nx6jbQ1DsBzIzVl+W+OAhP+?=
 =?us-ascii?Q?Dl+T8zJYyyIpkX9XqS4D3TXGd+/cOdR+KmhHPDtUDEQBxZ36bFYXyAgivf/l?=
 =?us-ascii?Q?/djCqbMliXhThF1UhQY/mkuWGai3gDTZb8FjfhxA93hlneh0EQWcYjVOoxt4?=
 =?us-ascii?Q?fkzSveETJaopvTy2EoB9Ss2KuNXBSwtOdTx67vWShKPLknWxp7HgbADTlluf?=
 =?us-ascii?Q?wzu0sbYv9EnSTX1gGh+ctFhNt3xQ9nS9b/J3cMULNTsl9doJlOyWU2apfj4u?=
 =?us-ascii?Q?KaGM1j+jssyv+fEy35hqIXI0YY3ikvDwCvlnVNK9BKJ96eIB1s9g3xX4K7w1?=
 =?us-ascii?Q?eI5fTwaWbKts3VAQnzpfPxBObf105h8NZ/sTq8Wdqv/XIJ4HUKaQnDpR262n?=
 =?us-ascii?Q?Vi5z+Rg4m1T6apFMeDY0Lv/514wBhKot+zAX2rNbcqB0JC9RIg4rqgy+MBsq?=
 =?us-ascii?Q?mPXRU5Bs1Qk4l5WVC1KAawcn+G2Rz1qM4/DYfon8CyCOmHBbdYV/1wwDswP/?=
 =?us-ascii?Q?AAMZqU3OlUu4H3sgH7BgsmttF7yyPBXjvlDI2u3AHVfgfyJ7XwhHVy8ahhh7?=
 =?us-ascii?Q?QP+yStZKEkjdBChgVLx2nYOU4WGW3KOAixZYJTTx8OPS4vzdV2L1Q78OJ5Hc?=
 =?us-ascii?Q?Zw7IA34dmV/R4z3W02hf4pQibfFNFwaiVDcuGSLCPE2Npksi96CvAf+T38Qp?=
 =?us-ascii?Q?LS6nUAbRNRf/GsrHGJBxLM1dqA/vTKSWC7SuKaGbdwLMZKOFg5mmSY26acHN?=
 =?us-ascii?Q?NjdTF2o+YLeBS1YftrdwIpJuxS/kGyUud3QIk3Sy4y1JKMlMmZsJwAoTYFxm?=
 =?us-ascii?Q?zRT/5skfq9I/VaF/MkcacdihtKxdtrXXvXhaotsPAGfMgI504TqDEyNllOh4?=
 =?us-ascii?Q?P2s+9dIami8F2kY/pDI/yhBTyxUKuGg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VfHonj4AFnI+YHQPkzg/xL66JTsiOJShqwEXCrUIbqLKDdDduwjXAkVUV6GtENOxI794WYNFziEDitz9Qt8C5DAYH/PQgixnzHTOruACl+L7cKeEp4YM/ITBp23W6CQyXRDWQJ2LHDGwGWcCmshHJLiV+5GCeI2K2iXY0j9weAEYIT9BjkJVzIkKv7t0a62R+UcFNUY2MNSzLs2h+jRZRuTskMwq81qNP7pRkw9lwwyU4SQIWBvFzx2DuB1P4qDP5yvBDx/SHU3AWLwb8b/7sgjO+1yu3jHCk3siy/Qry+LAI70xxX8d6Y8FhUXU5wlB5HOqaDkvAIu6aHf1dfVhQQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad0ce9fd-9bda-473c-b25f-08dea50e4f66
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 10:10:01.2877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UDs7IgqKP+8Gg34cn68ksk1Qsr9bQvyO92Z5FYbkZvbp7EXT1f0tIKKLd0ihh4b7/EOvTFqwJfFJXX6TsaVPuh/Glh9k8dqTjAR/4VdflSQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777371006; x=1808907006;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3xRY06S+UOhyWEQ5bcv9y9pf+7JOjjUu2zYtvdTgkeg=;
 b=Bnq9o9PVefAaxKxk5ogdg6aHuDisEAWMjQT6SV5vA9ceSTaQs2LoV3Pr
 EBMoUke8gU7PpFeg3vkbZ8Y7rUP9TID0YzISh412tm9IZs16yFifdN6Eb
 oh9FR9K3MDrIaSiQaIoZqJIUeugOdgXSjkmH0GxacK+Uv+yNbpAtAuQQj
 TDD680H5IviBweKjfTKnrDL9grGE51FhGfh0abbkCSRDYP5lHplicqTAm
 tr5PgpHvHcf+cdmZbgrjEVtXUUSeIV/X1RaBBqGl6Xqwrrst8ekxJH5xj
 dtBfki0qH+JQvvzYTS84dgAe/yMEI9xyNR24bHn5YWndfZ/Hfc3jkXWaw
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bnq9o9PV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 04/14] libie: add control
 queue support
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
X-Rspamd-Queue-Id: 3D840482481
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phani.r.burra@intel.com,m:bharath.r@intel.com,m:samuel.salin@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
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
	NEURAL_HAM(-0.00)[-0.952];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Tuesday, April 28, 2026 10:27 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Burra, Phani R
> <phani.r.burra@intel.com>; R, Bharath <bharath.r@intel.com>; Salin,
> Samuel <samuel.salin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 04/14] libie: add
> control queue support
>=20
> From: Phani R Burra <phani.r.burra@intel.com>
>=20
> Libie will now support control queue setup and configuration APIs.
> These are mainly used for mailbox communication between drivers and
> control plane.
>=20
> Make use of the libeth_rx page pool support for managing controlq
> buffers.
>=20
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
> Co-developed-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Bharath R <bharath.r@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/libie/Kconfig    |   8 +
>  drivers/net/ethernet/intel/libie/Makefile   |   4 +
>  drivers/net/ethernet/intel/libie/controlq.c | 614
> ++++++++++++++++++++
>  include/linux/intel/libie/controlq.h        | 249 ++++++++
>  4 files changed, 875 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/libie/controlq.c
>  create mode 100644 include/linux/intel/libie/controlq.h
>=20
> diff --git a/drivers/net/ethernet/intel/libie/Kconfig
> b/drivers/net/ethernet/intel/libie/Kconfig
> index 500a95c944a8..9c5fdebb6766 100644
> --- a/drivers/net/ethernet/intel/libie/Kconfig
> +++ b/drivers/net/ethernet/intel/libie/Kconfig
> @@ -15,6 +15,14 @@ config LIBIE_ADMINQ
>  	  Helper functions used by Intel Ethernet drivers for
> administration
>  	  queue command interface (aka adminq).
>=20

...

> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
