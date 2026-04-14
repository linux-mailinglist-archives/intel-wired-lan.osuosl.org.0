Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGjQKVwo3mmSoQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:43:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F05D03F9833
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:43:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41E3F84C5E;
	Tue, 14 Apr 2026 11:43:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Qbf7oqTNPeh; Tue, 14 Apr 2026 11:43:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F21B84C58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776167001;
	bh=XMV74HIupR3ZqDDEZY2QEsPhD41hOxu9a/s4aA/Ltc8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S0xuyQQNctS49KHqXOhJ2Dz0qfXrLLLjDgKqMY9AQN1rDzDHBlwNlgY2OixuL2icQ
	 qjT2gPaijUIzoh/ch1EtHfbbLDrfxOsKM4I4aI/sf1rFguPmyMrS1IZBHtLycU+2IE
	 0E3nVQN7ozGCXH0R4R1YyOmobwWV/bDpku0ds5yZOb5o3LjLgKXouEDNri2PCOEEmD
	 vmwseU+XRVV60mfl5sAWp1BcLz41qGDd5w9IlQy+ZT+utSP3R1dZ+2+Y6Jb6s8V4tl
	 HOflYpjlxnUhdt/cn+6PYmkM3m4jBPgIF+1BEGP6RAilZvs8+Xnb1G3IFWOJU+lH/z
	 uw1v1wTtvOMhA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F21B84C58;
	Tue, 14 Apr 2026 11:43:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B40F283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:43:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1CB6F61CCC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:43:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SDPJxfK6ppC9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 11:43:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 38E3F60814
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38E3F60814
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 38E3F60814
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:43:18 +0000 (UTC)
X-CSE-ConnectionGUID: L/mol3jxTOq8f0QP1rhclg==
X-CSE-MsgGUID: ILY0qyMOSJ+aQdj4F7s0gA==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="80714560"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="80714560"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 04:43:18 -0700
X-CSE-ConnectionGUID: o6kj3r2sQqOUiIciufZmuQ==
X-CSE-MsgGUID: AIN/1dULSyGQjvYPldmh4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="268044094"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 04:43:17 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 04:43:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 04:43:17 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 04:43:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F2gByrGqVNUcgTcWlcz5DyevdO2cOLa7G1/UhV08V4T/7GayDZw61NeKXOmNfKilRpa+bWS6JPase24Xhh2GxQ5hsD14n49M3hMS0KjxlghBVcI+XOs4rdsWcI5utlXzIbciQP2faoclSEbGqW6lzFA+neuw9IZ+c17X/sW4XsdthoZAU/LRSHt67GnpUZnzTyfQKxcxmenodHpzuRJjQWuf9OTW0XlCRRXZa3gnAkI2BDLfIOx1W6fG03JovHmQCZ2BsIvTZK8ONO+otXlo2wUuNMxFgRtIFLr+UbnsMcxcS+qWaN1p0+Ft60f3xi4S02QQgyF9RVASNJRdq/H/Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XMV74HIupR3ZqDDEZY2QEsPhD41hOxu9a/s4aA/Ltc8=;
 b=BYLaLeaVuJZuwlyafdpreFq5SsiBrLdTX92NtPFuGtQpHxNwz0FWzNxo/3petllZKdVqVYdwLubgqUTRXV7Eq8fEd/z6JNNovYyaqLS7/G1UVLyDscwsVfEEZ3jfumnFi85HJYa4tvyzEZW2+AEMCG50Uc40Ljp9+eDRAdruQjCpohqjaDAopdoxC5loVgdtm7oAeDhGKCCUJsStW/LoisFAFjkVqGtdDk9heB6ccmvcMfnEVhXt3T2XEvJOkJZeZqTcHvGsMXF4Deukn/f+ys+LRNRCm4xoEeGpPsexcgDlFq/Z44Xrtf8MtW1wRU7vKcRtSa+Gdhqrr3ujVzsa+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB9874.namprd11.prod.outlook.com (2603:10b6:806:4d7::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Tue, 14 Apr
 2026 11:43:15 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Tue, 14 Apr 2026
 11:43:15 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v3 5/5] iavf: refactor virtchnl
 polling into single function
Thread-Index: AQHcy/4JJCo5s9ZeGk6j06w5jScAwrXeb3DQ
Date: Tue, 14 Apr 2026 11:43:15 +0000
Message-ID: <IA3PR11MB8986843CDCC4F6DC6CD015FDE5252@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260414110006.124286-1-jtornosm@redhat.com>
 <20260414110006.124286-6-jtornosm@redhat.com>
In-Reply-To: <20260414110006.124286-6-jtornosm@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB9874:EE_
x-ms-office365-filtering-correlation-id: b955c1de-d1bf-4abb-7a66-08de9a1b03fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: Fr2WE3EKqPDdsfOPNLwKjPvAbLgu6CsWaqaoYYriJ/lrVio//q36OCZeOc+OoYyNz1hBQSNYJ0fLKPMaccUHLv5vCpP2mTtBmo+QQAsQTdRRX/GitHrPVAoC510I/43Keev+eIhntLM3G6WUvUfq1aJEZONHND/Lvn6hwJbmraWCV/cq4isjHOK1t2SIhzk60OeVLz2TrYJGKHBXAzlWY4igFQDEjBlK1guZg38iVxvQvvsmaUivwv7KEsN0r/q5u3sMQ31ARDg5sWAflEczkl4qA7w6kvQoF5sJjij228qYp1xnDXyXwKW88E4PzHQvpiUtFWPWp9BTjJczriLgoqTplzcKm6of6GNGYkqxCcpITOwqzR8OpgdkVeDJBi2pEJRMhBoiVzspP8DykQN5jzK7Y2JGMuvaPdUP6deHeBACWQmFgKkzs37g69C3uXRkrSXwcPtEhaONiSt36QCHsa9IAvXzm3CKbLcOpFllqqfDAybR3mV5Yf/85cEM+jk63xR9RrxynRQFMheiVaaHHG6qoRUHpR2LSPj+TsfkMcDdCnYifIRXNk/piaMl8aREp3vNLrc1DYuXAU70iM/zqdfshSo14sWIi2To/YKeQDEYXqWUbeTazmns9H3STRfSDBclondZKWQu8WeunubwkS9vc+D1V6smuFnYqVThBLsEQ7Ld9Gw0ymN006s8fTvghVXuLNETJSwea5DyDqdoT6WiXQMlYm1jCjqfYu7bqtJrV26EeoDX3iZUTO66K68fwJFr+k5OUe3ERct5gETOZOuVrNDRBWSLLYRep8cfNZw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IhPKsPR78AmYbc8KgLrElXUJLTYEdCrpI7dLU8NrztrScsknP03a2YJHdGLm?=
 =?us-ascii?Q?XedXawn7mecYcHPeF6fzWVZC6vvL6rnARRwJvkebi8Q9Cu+ej6wzlSIugST3?=
 =?us-ascii?Q?uQXuQCOQvnwEQnaUm4MuZdfQVdjtE0zlt26k8dVzJwl0zUgEn+l7NY6hu0Wh?=
 =?us-ascii?Q?Ws9tBXRW09G3ePiM4ZSqJo29QztrTH9FETw+gQ3+Xh4guNu4NwyQ9/SpL674?=
 =?us-ascii?Q?OxFQ1B0qySwhW3EAIRT28TDhf2ebST0Qnxdy/mOeWg6ZqIl0pBUv0VswhMZ1?=
 =?us-ascii?Q?yntvi78z3ccFyI+xtmSQs8+pwjKntTmhYG5BwG2DExk/9s05HjhvTcJYm5Up?=
 =?us-ascii?Q?5YOPL/5PqZljFqq8CrOg75ZVBq05MJYaV0nN7ts4A9R8xAiufIRcXATfbC9C?=
 =?us-ascii?Q?v6OUQVcAAtflQ2hgq/rkdTxdrkcnlIPbm2nwZL824+bAkmos9TKeIwsrOEt+?=
 =?us-ascii?Q?pZEG5jTz5MZTWqjxA5VI/fnjbD3XsdEb2av56xvQwRhWDgjcTOcMrKpfpm10?=
 =?us-ascii?Q?sKLY34vk4Zddtmjnyv4tYFGzgZ/zZTJiAsb+UD92rh5x0ALGRfbBx15E2Mbb?=
 =?us-ascii?Q?6GTFX/qryyc6E5Ez87BsIK248airTdK0ff68e8ohL04Ysf1ZqKuDyZwxxTC2?=
 =?us-ascii?Q?ioGkoGlsWjhmBxAYaveOZxQ9IAgIn72ueAl040X1dudPjuYA6oCW9cvnpMLZ?=
 =?us-ascii?Q?FvIxObE+QO66Yvl6MZu07IqQYJacJ+CbYGhbwVdzqlxHDYC5+2Q/UIJk1wyT?=
 =?us-ascii?Q?tug+8AJN7/2iCKw49lq7vUW8rypucKwOizl1V0ErLvjutdFAspNHFQ8de/pj?=
 =?us-ascii?Q?tzbE8rj+zb7wCH4NtBidK05upeRehJ7D7WJGEFkleU9MFlo0nF7k6AJ53wgr?=
 =?us-ascii?Q?YWSQ1K6RqpBcqPm88KP5rPbTFphnWW0FceZgXR6TAfLgO8diRUGwaZTLIDll?=
 =?us-ascii?Q?/YnP/AOL2r8RpR7hdTDvWGsInjL5l6Tldx/fYucI0twY1k+snCrErhegQpNF?=
 =?us-ascii?Q?T2lE1/jIds7QoC0HKkSqTB0BpA7h1t5sRqazvz8UdO8rJh5ygNLJUx5LBF9+?=
 =?us-ascii?Q?30wK11qzeSHQWV6WjiEkT5C6VI6KLtCNHxNSZ2AC4JiaQlfClU7ZBRmWOmHH?=
 =?us-ascii?Q?OpL/uE3ZLXZWYqik8pgqFB3GR2FojF2N/9E/kYSNcBdZUmct1K4HkCG+Nrca?=
 =?us-ascii?Q?2Heya29h3kuXCovJaxfPUJO1L1wvqVTzXRX7AjTTr1k7XhGO2nclKAPWj6VI?=
 =?us-ascii?Q?R6b/IKXKYiWOy+rwXUXOMboyditO8kkXRTZgVVS94o2RZgCWR9HPaxlqiWvl?=
 =?us-ascii?Q?K+7Fb4tu734kFEwYSNiMNIJ4I3G0ZwL1t/LuLAJ1UmSwLxgKLS6faA3y0Buy?=
 =?us-ascii?Q?C03kEkMe7LjvVXFpbBmB4Ob9jf2JALS9P45mKcMPxYtXi0bwdM3MZGrugpR8?=
 =?us-ascii?Q?BsoiEux5h3Gh5aAf4WVYVHdCnk+F9kzpHKc4eLIQSLVx4/sCie5BXGIPnQjD?=
 =?us-ascii?Q?9vAnumtL+v+/UHf/xzFVTMlwjbnZBdszexpRu9XqBsrSZXfCKppSmsdM8t3Q?=
 =?us-ascii?Q?0t4Yi/9HT0aRqAgCVytnUdSVF38snpYaNNVBaF0Q/P1aEKp/+nhLQoNigPdL?=
 =?us-ascii?Q?sHykTi0n9nN20OdZFqX2bNl7toO1gYLI6YMJaVsdii/bUMb/0BHyKnlwvYoL?=
 =?us-ascii?Q?L40AJjzI5k14wMLcd/ApbOiRqsTPFozyCu+EvF2rQ4DENGu/Cf0Ne4k/U/5/?=
 =?us-ascii?Q?shimTSdquoFoJAFeQcSRe5bO9TApmxo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pzX6af8YbISF8ZLjhC+GCICGG5z1XA6ioVvlf5GHjneql4MoanIm28+lCZ6BjfIJs63Z4/qZ79XlhPXgvpREEYABn6jc+2lBLFdSMlH+49pgpwU4eaW/m9506fzC9DzP6tRtOVy3P+top0KTCWMoMByxgF+DcuE33XF0b5tO7JJoUauW3TLWcNuL23wnHvugd807faHZ5P38Q5cQGkmPJ87P5tBruXkCszQ03UtRQ2wN6jeOrUwqm5XErNfGlLWvc/rTM2Meaxv+Of9o8SCTguZSVJQ5ougGetbt/ydKkxKr2LhPKRE2Ut94JQCvVkN2ItOlPKJafpYd9WmM7ab9Iw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b955c1de-d1bf-4abb-7a66-08de9a1b03fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 11:43:15.4598 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ahqWGX3TIfTeN0D62LReWIKj6CEIDPeRg8lkDFM5Lq82IXBAnzHV1Di9eWKNz9F+OLS1gYLQr+RZCq55pdO7xn4sWCw5HCycfsHt3thq5pY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9874
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776166999; x=1807702999;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D8VfnG28mF3ZqALY6EzAEeKAgdQ45YH6gS8lhLGODRk=;
 b=DzUbtrNcosDk/9NtSB3YG2DUvCBzOnAgOeUhA4sjrKYFhw3YSmFcTwKe
 Dq2A5Ap2ZlX6tRjEs5xzCehQrAaehLFavMkq7wiDnQyB/aKuF82TuQgzP
 UqghaAz6awvRiER54RypkU/Sw95ixR2J4dqoFbNX+08l3/3SKCYUXCQEi
 RXOwXLy15ygTUXSiuQc37RNMdzOb17nZusDU+8loprRKAPABigHaAz5Nj
 kHEM44pr3AZt0gCmvfiTsrZe4oLSZCswUJJAEIicvxpUd1ao/gdmo07+r
 tgQ9zavDXSERGwPYY5iRAvSXmwqq8+VLKt/jH4Oy1nVpUy5zKYgDYBYGn
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DzUbtrNc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 5/5] iavf: refactor virtchnl
 polling into single function
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,davemloft.net:email,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: F05D03F9833
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jose Ignacio Tornos Martinez
> Sent: Tuesday, April 14, 2026 1:00 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; jesse.brandeburg@intel.com;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Jose Ignacio
> Tornos Martinez <jtornosm@redhat.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3 5/5] iavf: refactor virtchnl
> polling into single function

For me it looks it should go to net-next as a refactoring.

>=20
> At this moment, the driver has two separate functions for polling
> virtchnl messages from the admin queue:
> - iavf_poll_virtchnl_msg() for init-time (no timeout, no completion
>   handler)
> - iavf_poll_virtchnl_response() for runtime (with timeout, calls
>   completion)
>=20
> Refactor by enhancing iavf_poll_virtchnl_msg() to handle both use
> cases:
> 1. Init-time mode (timeout_ms=3D0):
>   - Polls until matching opcode found or queue empty
>   - Returns raw message data without processing through completion
> handler
>   - Exits immediately on empty queue (no sleep/retry) 2. Runtime mode
> (timeout_ms>0):
>   - Polls with timeout using condition callback or opcode check
>   - Processes all messages through iavf_virtchnl_completion()
>   - Supports custom completion callback (takes priority) or falls back
>     to checking adapter->current_op against expected opcode
>   - Uses pending parameter to skip sleep when more messages queued
>   - Uses 50-75 usec sleep (due to commit 9e3f23f44f32 ("i40e: reduce
> wait
>     time for adminq command completion"))
>=20
> By unifying message handling, both init-time and runtime messages can
> be processed through the completion handler when appropriate, ensuring
> consistent state updates and maintaining backward compatibility with
> all existing call sites.
>=20
> Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |   9 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  13 +-
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 247 ++++++++---------

...

> --
> 2.53.0

