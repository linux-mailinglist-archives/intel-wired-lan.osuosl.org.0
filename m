Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D432B122D5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 19:15:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6A8C41D9D;
	Fri, 25 Jul 2025 17:15:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QDQ4x-EVF6jt; Fri, 25 Jul 2025 17:15:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BB2441D7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753463757;
	bh=aSSiaXtHPMF0zmBjgHz3NBtt/Z28M+VnfCD0/Yii1Xo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nFohfLXwxCG0/+wOqtdGbUnXehdJs1x3+F9bPONVojTTsupLVqFuwqf41UJMUMYIt
	 9bQ9RjX9NxNCVo9tqQcpIote6QHgY2nNmJ0gYhYHxsqGDuHj/mpm4PoO+W2F+4vpgz
	 dRgE0HMAL/qQAUpmoRLlakYAWIIpbB+KwXBJgKqYpLTcj6HPaQ0CKEE4wx382Fz1iM
	 2NYrnZhXgx5JFNHuWZkp4bLOjxlcT7iZ66eHNa7JOiN/02DGqp1RUoMNmgxg722FDB
	 WbhLXYoTo3YZNcSJ82X5wEG9IaY35PEgjzoTzwS8FtQceclXlX8LQgdEhJea8VQbKt
	 d+YT1wcZ8uvtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BB2441D7E;
	Fri, 25 Jul 2025 17:15:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 52C13909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 17:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3874F83DF4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 17:15:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yj2iblMs2ENo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 17:15:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7F76583B85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F76583B85
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F76583B85
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 17:15:54 +0000 (UTC)
X-CSE-ConnectionGUID: zIM3wQwzSRaQgAYOEBHzaw==
X-CSE-MsgGUID: Ra4ukKGkQS6oEwtsnqexKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11503"; a="67241177"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="67241177"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 10:15:54 -0700
X-CSE-ConnectionGUID: uDCTAD58SV+XOq4redibfQ==
X-CSE-MsgGUID: sNxZJwKbQNSvuzVn7t+9Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="165543748"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 10:15:53 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 10:15:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 25 Jul 2025 10:15:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.78)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 10:15:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y8Rdtuoaugu8p9QCrO7xyFg/WfgMUtiAhNr5lNy/VUfQkR/wh09Fmh9Bu2oPnC9185hN09U3wgPJ2YrOjOJ2Kk2mChGprdFVSpc6mqVdv1uaO2dSeetsS7TV6cpnvWVQ71GuyH7xEVYqRcdUwm/ebnvcsafE56lj7Pb9z/NWGazrod4crJSXT5cffHzuMlFJ0C4ejb186QDZJxxkfYHfmtSQuTik9ExDKS6kt5jpekEz++MLlMbMrZNfVY6o4a/ggaZqkjnI1s/5+JRN1eZPZyKmSZG4PrN8xl4KjMp/+tQLKGmi/ADAOKcJyrJRwYhiOa/pB24Pm7J8scH5WcLcHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aSSiaXtHPMF0zmBjgHz3NBtt/Z28M+VnfCD0/Yii1Xo=;
 b=dCxrhHxw6DQFB3W22zagl1MSGnh717EK1THoqQAkniNPSvnLFD8B91YtHcxiZgsQft5FMx7h0zUSecLmaMzvXcerQ9bRuDkZXrJOQc38Cmck2gRoJdDmxDYAttc4EWgcm/1MYjGnMy0128gbrOZ/dhDpZGvMGJzQTzaDuu6hFg82JjSCVKjbW/kWFi/Xi5vjgx4zN6U8zBOtgFbCA9MgCvGq2gWUyDd2tY74jQnFTRraAeouvb9SBJx2Wd3y6BnGa3YNpjhC7Gd/UhGXd78vvhRYi2D/C9RcLJHRllWUlDYoaaWZt2dN1XE3EU1e3/T3zfRyJxW005Gqa4VzrX6qKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6502.namprd11.prod.outlook.com (2603:10b6:8:89::7) by
 CO1PR11MB5058.namprd11.prod.outlook.com (2603:10b6:303:99::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8964.24; Fri, 25 Jul 2025 17:15:48 +0000
Received: from DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a]) by DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a%6]) with mapi id 15.20.8964.021; Fri, 25 Jul 2025
 17:15:48 +0000
From: "Hay, Joshua A" <joshua.a.hay@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Luigi Rizzo
 <lrizzo@google.com>, Brian Vazquez <brianvv@google.com>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 4/6] idpf: replace flow
 scheduling buffer ring with buffer pool
Thread-Index: AQHb93jvoNgWAxlFjUS4Sc8NhCHzorRBCVGAgAIVgCA=
Date: Fri, 25 Jul 2025 17:15:24 +0000
Deferred-Delivery: Fri, 25 Jul 2025 17:15:00 +0000
Message-ID: <DM4PR11MB65026412ED88DA7433B2EE16D459A@DM4PR11MB6502.namprd11.prod.outlook.com>
References: <20250718002150.2724409-1-joshua.a.hay@intel.com>
 <20250718002150.2724409-5-joshua.a.hay@intel.com>
 <20250724092001.GI1150792@horms.kernel.org>
In-Reply-To: <20250724092001.GI1150792@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6502:EE_|CO1PR11MB5058:EE_
x-ms-office365-filtering-correlation-id: b4158f65-6fa2-43c3-7e95-08ddcb9ee5f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?+QHhT/wEI/vXqb5SAmos8u+eTH/n1s5wEXrWu49aQFBhDI8XqAa+EsgTuuz2?=
 =?us-ascii?Q?c84RF9JKJCOi+d3VHwKcgv+APZy3W2gZJEr7G0dJ6Xmf4i5itfISUToJiEUE?=
 =?us-ascii?Q?Pwj/2EDdmMCgmuoE50ElcJ0fnuz0CjKdhrBp7+1CK4X9J/GQFN9W8qcOpEMV?=
 =?us-ascii?Q?aG/d2xCIkP4zYN7CeBXqQ0Yf9ZNXKA4XZIOD08/UhD/xzxsE8JFXNfrUJsS3?=
 =?us-ascii?Q?AbVIKjp4P35i9Zf4s4fHko9ZN6pe6P0iK1os/Gfl6IsuN8xgm2CtSG4jQthP?=
 =?us-ascii?Q?AqyLoye1FJ4yku1/t9AUHG3IPaCXBFEbVpxkC+73rZpOMC+ncCNRdi1qO+22?=
 =?us-ascii?Q?R4RNB2YLuYCpGGCdFHLkMON2RZdTlChGSeV2YPNicRW3mrZReaRr/XBiZ3AC?=
 =?us-ascii?Q?Nx2DPnMdAbKp1XD7qkeY+Rg2nJbyo4015qJenK7j//uKZ9E+ohFk+AcSbg9M?=
 =?us-ascii?Q?EvOdrKOHIFo4qTk3Va47EIR3Iw2ehMLXgnd0uKXQD1qXQyYyLcY/xmcYqQHq?=
 =?us-ascii?Q?XiW6evBrK7OmSh3xKr7yeCkQlfgAFDfxzPBLuDxjAQUA2ET0kMyOEjoK0dAx?=
 =?us-ascii?Q?Xd6HIphWD/1rEwT2wvKQ/Df6Ov54yE5JJ3eEzolYG8h3i74yfnERsEJlhyX9?=
 =?us-ascii?Q?zkjUlP5lgUQJjRNMabsCkBVdQFGKZUYODMxv4NjrY4wk3U7XMjQFiwwHbInl?=
 =?us-ascii?Q?2duAnEjI6Wnh6t27AoqJ0eINPCOjdCWGfJ6siBwXAUAN96g9iYSiYygQHvBo?=
 =?us-ascii?Q?uniQM7KPtIzlwM5qRwtCYH8tp2XMlmldfa4lAoaQ64EXzIizwhinM7YcZ2yO?=
 =?us-ascii?Q?mYZC0OhT7AesU6SCIdDDaOMJEMZEAvMbng8cWitXFowPbsw/P/YP2OZ0j0Ja?=
 =?us-ascii?Q?H4eAxyUgqQQYPXfuR3VqCEQ8AO0UbDhpBrHdaARH+7tVPP1doZRYiGFLvG8a?=
 =?us-ascii?Q?i6q9YAdooIrlG/0TdLJwq36wBrtuRY+RoSaAPET37oy5hYNIoG+S/cbvpQ+I?=
 =?us-ascii?Q?OFsrf/SFeo6LskFv6UaITVROvtub5M+0nYV548/sx7OBJfmgZZryRXt3Re61?=
 =?us-ascii?Q?PXaD61oRG03Ma//UVH1GIBcqDMOK6jZ3xZQL727iGDRFjBPr+5O5VdoxEjyG?=
 =?us-ascii?Q?Qgv9p4zcuzIIp3oV2TL1J50UcluvZtj6nWHiJ1xicDs33P/Nl/rsTFJdxQhN?=
 =?us-ascii?Q?jBscL0+9wUmy2RjImMHOJyFuZFLpiFQb9tEe4WvwBprFtxjx/TSs2XTiN6Bx?=
 =?us-ascii?Q?fcLkzZRq6OkNC6IP4sHv4/5YYQpuAX/Hv+XW8/JjCGx76W9mfwXmbTvYpmMv?=
 =?us-ascii?Q?FwAQNWQYF7PHxOufo13Vx9eOtyftJCbv1MaLXPXSVgajWjTqoFl74bnEVNkz?=
 =?us-ascii?Q?q+OCzZe+Y9DdWD7s0gQ6rtJCS6H2cf5fx9g589d/QDc4vrtab1AA6xf9zq34?=
 =?us-ascii?Q?YChZVJoccGS9LjYtc4YLFBwexixCZpv3fB22Q720YutW6UPkf3t2tw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6502.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2zCUwj6W3FFbaeVpGLppLGeIRJKDSE2Ckd2pEyXVmtpFM1IcBHe6C+RjPjTK?=
 =?us-ascii?Q?XsjoE0iZIog7dn4qZb15R1qwceJOoR89JAY4Um5FN9GcUu2d79GGbaFItaRb?=
 =?us-ascii?Q?HtTbIyFr6Xegy173p1Fd6Zk69zQDGLzN+iPSU27cFFPT0+AuUgzUhLIglskY?=
 =?us-ascii?Q?BOFDLUwvUbXi6mSuLx1TRImskokCZzpzuychxrToKhlxJCMC5cYLeBpObXvm?=
 =?us-ascii?Q?ZX6IVC11KGgckZEPth3noUgx3LRc+D2WlpmOpX3y/145sAtLooVszcJzw7QM?=
 =?us-ascii?Q?c6MB68Esl1D7WoMZKvtnFnFgSFtyTfhs3lrtOaV9rdACE0kZONOIGyiNY2g8?=
 =?us-ascii?Q?uGIK4fTwsD6747TuKQaNS5y+E+iVuFkPTbKJO/K+Uh5O+P6goDZAP8BNNHJS?=
 =?us-ascii?Q?EBNt+snGDNdQVWijQL8w90wItSI5055mvzFPf3rDQlw40IvsNz0zLDFyMd0r?=
 =?us-ascii?Q?icKsYqtPuuTXIS/PSDgs4P3+zTGtRXgGI5h+iq/qfq4umREdAHsRNX7tkEKz?=
 =?us-ascii?Q?98fSBEoIq2MLvEFeWUCjoqitqNy6Vnw9YB0EkhgBLOyBDk8Guq1pwdcNI9H6?=
 =?us-ascii?Q?EHHQDPYl6YeAG9NX+MTlBfkiSR0XuaQT2F7EwYO91r33SVeS6ld5Zb3mvlvm?=
 =?us-ascii?Q?ERehAD0EpWmF2R5g7qd0NezdGVG5ILHF87RxnZQK0BdRIYPZ2bQMMFcduqCL?=
 =?us-ascii?Q?+SStuNokGRwLXkk6VFnnkPxh/1SP7j2lSYuuBWlVqhRdxkHRCVoUW119PZYd?=
 =?us-ascii?Q?hMmU9QwxJJGCxV1Y89g7cg/lKDsS53VLPVovKQsN9fhJab8POcx6vgaULqRG?=
 =?us-ascii?Q?MpHvIrSh4CLyyp1PkKAEj854B3IiAUzwRO8Odv2VqnJXDRUhRLCIYrDKsUYV?=
 =?us-ascii?Q?lA9rHonHjzcpO4+RWYmKmvIv30kkPPWi1p0HO7rSn+uMTj55cyvG+lvgPbXL?=
 =?us-ascii?Q?PLhA/rZOJO+HQczHN94nJoRj38okKDk+wq3ILhRTpDMi/7Jfv1atxYdyaqdH?=
 =?us-ascii?Q?qEvigXSSSt9V6XWnUJCg/z7JwPD5XHwhpcRey6UkyHhoq5B+3kygnDwPfTy1?=
 =?us-ascii?Q?zNVFmtIqWf5QzqBZ7UIm4WEj3SDvidBVNxSHVJYoFmXovE6ZAtD8TojYTkoT?=
 =?us-ascii?Q?6GHaOlEaIn2YMZxV/+TdO7JU+mAeBTmNLoCZvZRvfwGlgIEOJQrKRKMJEuCs?=
 =?us-ascii?Q?eyPuhpz5FSRMoiS8/n+8M+aU3r2K1Y8CnoLgvz1eSbDSMVmEJAKMVtaL7/QX?=
 =?us-ascii?Q?u6FepnGG15ZxpypDXQJsFwIje2o9i4mdaCWtX1AvHcPZYlzgC9g1vmmWsZ0F?=
 =?us-ascii?Q?qp0Zc4XM+aC7mMIrLLsvyaSTiVL/mXDtqPFbyOhOjR/BK9SbMkVAz2X+cUVR?=
 =?us-ascii?Q?HPDBlothO8zDsDdfC47YyeZGQp221vOZbqLwu86SqQXH23A0lO4noWJkwh4r?=
 =?us-ascii?Q?XYL3DU6zQnooAwsN8fG6x3xVvyeqrUCi9LF/vOIV/xPLw2cslkuC3cbaFNBV?=
 =?us-ascii?Q?eA05rGlgQxvDLkAHGZc/4RYjyDUdxQzrtz80sCiueX6mJt+Y08xNlfrBZUuK?=
 =?us-ascii?Q?ClZ+BXUU2yvYdH7HDeVCHd34+bRii8xwzUuN10eN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6502.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4158f65-6fa2-43c3-7e95-08ddcb9ee5f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2025 17:15:47.9432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XXhQzy6s3ZHsM/KWQMSyyoPaqZfpjRGm31weiBs/ch202CLg7uFOOfMh6JFWCj1Mjr2uqT7n8ziYNyFekY/Xiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5058
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753463755; x=1784999755;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HFaekTkgirlCkTusChL1R2GM7ZLti/JQXHR6JX20RJM=;
 b=KuBbrq7DzVUlwQDcp+8MszG332PGCkEX2ylftQSqph90I9C/37Nn//KX
 sJ4qudI3HR3+FVlDYCD1R2u/IDgww1+PNbOR+00+9HX6n6p+3wPwY2WVp
 GSmBd7BfPCpsVUyCaywbkZg45+F3cu4y3PpO26BElYYweHsDh4bDZXPxl
 6lijQVWm0R9oxn8vCsq/MuyBuktIqut9axJJ5WhRlPxbl3gCkuBbuukP/
 wom5kn+k/kuVxhusTssa6NouBWHiduLbE5hCGo+QCYprdzWXInpweTLCa
 PQMovQnJLpOO/Z0C/PpG6Abknm3dx0zY50avZdD0av7PbNC63H82Vov/f
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KuBbrq7D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 4/6] idpf: replace flow
 scheduling buffer ring with buffer pool
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

> > @@ -1959,10 +1966,29 @@ static bool idpf_tx_clean_buf_ring(struct
> idpf_tx_queue *txq, u16 compl_tag,
> >  	};
> >  	u16 ntc, orig_idx =3D idx;
> >
> > +	tx_buf =3D &txq->tx_buf[buf_id];
> > +	if (tx_buf->type =3D=3D LIBETH_SQE_SKB) {
> > +		if (skb_shinfo(tx_buf->skb)->tx_flags & SKBTX_IN_PROGRESS)
> > +			idpf_tx_read_tstamp(txq, tx_buf->skb);
> > +
> > +		libeth_tx_complete(tx_buf, &cp);
> > +		idpf_post_buf_refill(txq->refillq, buf_id);
> > +	}
> > +
> > +	while (idpf_tx_buf_next(tx_buf) !=3D IDPF_TXBUF_NULL) {
> > +		u16 buf_id =3D idpf_tx_buf_next(tx_buf);
> > +
> > +		tx_buf =3D &txq->tx_buf[buf_id];
> > +		libeth_tx_complete(tx_buf, &cp);
> > +		idpf_post_buf_refill(txq->refillq, buf_id);
> > +	}
> > +
> > +	return true;
>=20
> This is not a full review.
> And I guess this is an artifact of the development of this patch-set.

Correct, it's removed in the final patch of the series, but I can remove it=
 in this patch instead. Will send a v3 shortly.

Thanks!
Josh=20

> But the code in this function below this line appears to be unreachable.
>=20
> Flagged by Smatch.
>=20
> > +
> >  	tx_buf =3D &txq->tx_buf[idx];
> >
> >  	if (unlikely(tx_buf->type <=3D LIBETH_SQE_CTX ||
> > -		     idpf_tx_buf_compl_tag(tx_buf) !=3D compl_tag))
> > +		     idpf_tx_buf_compl_tag(tx_buf) !=3D buf_id))
> >  		return false;
> >
> >  	if (tx_buf->type =3D=3D LIBETH_SQE_SKB) {
>=20
> ...
