Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E4E8FAB6C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 08:53:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 847C340A66;
	Tue,  4 Jun 2024 06:53:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MMvdvpweJjDi; Tue,  4 Jun 2024 06:53:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C811F40342
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717484023;
	bh=ZyIdgPlm1+588RROe2fCrbFyJMRgiYoS63mpe3k5d+Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nmc53QeZbYD+AuTzuiY3WtSKHSsfLqnrQskj57W3W6L7DOI2vJ3ggdocs1pdtlbxO
	 RswxpSWbUZohwSsoDQlTi1Y08WpqYl/uIFZWAZsYl2hDGRV+GhEzrXax6FvpT76lX0
	 ktPz++GDrEmqjFJeV8VQlHfJ088e3vav8lX+qivlHsNFJH9JLLMjXqN1sFfcEQ/mS6
	 KRP02EtQSGmMwxgDCAjDGyx4DkvBlkY8k8EbzmBKcALuYGW0a5nqw9nS4PVcCM3qw6
	 xOUChDGwN45zp7xUuo0dk8s9aFQfBZRHAMfs1A33TTJ6cA1z+mF2SBqkcxJTNU8m+D
	 huzgu1NoM02kQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C811F40342;
	Tue,  4 Jun 2024 06:53:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 563B81BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E6DE4052E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:53:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oD69Gnw1hIfr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 06:53:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 79CA740342
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79CA740342
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 79CA740342
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:53:41 +0000 (UTC)
X-CSE-ConnectionGUID: pg5DZvL9Q56o/sA4OfJBLg==
X-CSE-MsgGUID: nOG4cJ61RMagpQWGT2AORg==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="14230758"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="14230758"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 23:53:39 -0700
X-CSE-ConnectionGUID: Vk+vhjcERB6vwBLpSv1RXQ==
X-CSE-MsgGUID: n7OS0pUsRiCI1nKNuMaRIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37728094"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jun 2024 23:53:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 23:53:38 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 23:53:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 3 Jun 2024 23:53:38 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 3 Jun 2024 23:53:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tg5UQKyFLP9hdTMTCn0ykjiKlUbwoeB+ahb5bTM/JvpWsR6Cqf/8qmsPoY8NlFy0dy3OjIeUcUSwUOQw9JmFElVDXAgtSvBM+KLqCykznjketKaZ0rZ+8EVQW0MRWGHFr9XNjamM8k69BYuQ0oJ2CZQHtZR5L9+qTSVwuCN3HKD2km2QazJWfMmiXrD835mfADWmqLDH1vj/H7Cc4m1fxsS/IRy3yzB65xgfsR6JfBSFSMIY7wlVP2ofprSLIQFHlSxUmG8ZFioEWgjFdMyeqHG7dUhmchhG36boz86bC4iQ1J/6VAMDqjS/f3S+WXhdGHFt/fwqNAWBe01xjPAQwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZyIdgPlm1+588RROe2fCrbFyJMRgiYoS63mpe3k5d+Q=;
 b=c5lsjyjArHe5U7Y4W3VPbCHLIq+4NhwElYHG6kXgDDLSx3kCT07hMBhbJYUkC6PpF3B+3LCYds6hAZb2uWjj3RFj1fw/tCvHjXbINAbbQC1iKdyOKcDuM+l1a7F6X6nT4ew8bk8uBQ4gKSs2k+lXJSHsHZvb9IcOD1Rwm3wPOME6qVn4njEBfaqhIcSaCUNBlkEGRtEBGA6NnwG+5DJPY+y/SrZRK4uYU+cxcVhg3BhLp7KzIr6TbnD2gu5EUvAEODCcNAgWy4bG9rLW9ng+GBs6Yyly33A3LhsiyWugSIBMPEk9nYTcvgVWiuaezZfoqsSLoTlq6wSpCd8g5Dut1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8)
 by IA1PR11MB6244.namprd11.prod.outlook.com (2603:10b6:208:3e6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.25; Tue, 4 Jun
 2024 06:53:35 +0000
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22]) by SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22%5]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 06:53:35 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net 2/8] ice: don't busy wait
 for Rx queue disable in ice_qp_dis()
Thread-Index: AQHasbq8T284VO76tUiN8p08H/fo0bG3NCEQ
Date: Tue, 4 Jun 2024 06:53:35 +0000
Message-ID: <SJ2PR11MB829774DB84B2FD3D8D68961CEAF82@SJ2PR11MB8297.namprd11.prod.outlook.com>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
 <20240529112337.3639084-3-maciej.fijalkowski@intel.com>
In-Reply-To: <20240529112337.3639084-3-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8297:EE_|IA1PR11MB6244:EE_
x-ms-office365-filtering-correlation-id: cd6a0365-a2ec-4dd4-32fc-08dc84630e1c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?DDVbbmIwDgOYkiV1ivZmywvVT6k+/EYxs8O8XjNk05bGoH2OzKvJu2tgU/9G?=
 =?us-ascii?Q?dCxioBarslFnQtIN/3gB7kPvGex7ABeoxge1wdf8j3shQTVgyiDbNqamb/t3?=
 =?us-ascii?Q?sMt5bYas+7xVd+QKGCA+T14Lgnq22+4qgq6dbXYKRlKLYTtKCDmVuvG8pSEa?=
 =?us-ascii?Q?yxTkW5kEJVbSTALmajhGktMcdXH8Sxu0LCA2H1aZ70X5IrzRkn+36tUISqrA?=
 =?us-ascii?Q?79F24nBmbMe1YdDc7rN+Jr1w0+Ee1qd1Dqh2W/lqSarB083Yl82dJgSWI55P?=
 =?us-ascii?Q?kXUbUcXRAEpfeSiUP3HgHAMSrET4tlx3HzYhSMW+NBmkMLLz/SSLC2DrqgsL?=
 =?us-ascii?Q?qj0PO5qp3lMwzhQIeZunoVllNgqyZkHRQtQ58WODBd253Ofm0xgy/6y4yPdA?=
 =?us-ascii?Q?8GlWfhgmgoQnaxtxJOpRQD0ldRseU/ZKriKoJmPy4u3dVHUt9IfG9GRTh8Ws?=
 =?us-ascii?Q?wLE7fH3XCf+nXqh8JCI/a8CJ/9+tgayGsPS1yvyQuUvYVmFN2Kq0biyn/xbu?=
 =?us-ascii?Q?7aXPCMQBPzzUMPGERAN8JGU5FSTNXKe0qA3rYWpLarYrRMPc/WcgZJjfGZui?=
 =?us-ascii?Q?C8lURrrrv/xqJ3Vba6IUq+ZccXM4/3GnCXrpmiv/VOPJnrKKw4pl/X4ISGNx?=
 =?us-ascii?Q?7hNSMksRXdr8lXHwaewVSH3KzxXl43vPld3qsOLjftJ2WkaqugX67GGPYAM7?=
 =?us-ascii?Q?gNA8vPyFOnoiMwn2peRstLqiIq92cLELMJCDMt8mEKtKBm1mQifVp+l0KJ4M?=
 =?us-ascii?Q?YgEmz0gUZJWsBFfQEcPeTlzoHrf8OcNrOimfgvfcL7K4zsKshDAMSMMigJ4K?=
 =?us-ascii?Q?UEN4pSdGmkF9QehYMbyGProMEdkW3w0I93VPlVeZ18jFPhbFkkZ3R1kA7/vZ?=
 =?us-ascii?Q?FMBhW08utt7XbuCIi+m+AqAIT7m4KiaSzg46uyyX8432RvXDUv5xU2VDM+/A?=
 =?us-ascii?Q?P9LXD++LFsq2Js07/NzrciMzXuWloIcLUJIoPmiNsng9Y6snqS4hL56UrYcP?=
 =?us-ascii?Q?yZRneSI4L306N3mAJvBEvT7XIc5ZFpDJO4NNGGmPGCFQvld2AtiW8N8wL/jG?=
 =?us-ascii?Q?hpg8Ab3VBbYqj2pax28J4khGUwL6w5AaREye9zerUwjOtBD5HnCiNwJ2Tvot?=
 =?us-ascii?Q?cYNXBlJFm/koTHqHnMgpyvEP2R3bGZE9k2deKLC5pbBXkL12KOR33XjvVXPA?=
 =?us-ascii?Q?a+h/7XLcL7dlxo7DjPPuA9sWBDFJ4rUuA+QWHdrKoKWfoFISvux2cpd4ShQ5?=
 =?us-ascii?Q?CUT+Kxft84qts7RnWcavHwJnILiPvFaolxr+80Xrbd0kajTPhxTx/YQlj58Q?=
 =?us-ascii?Q?AIx+3PohrMcDh6/AKie2jYL9PDYE5EjtUKlz0knsc5G5PQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bsuDapqhijy42Acy6qPKOTbY3elMUKL7LWjHBbI//Y3F/jSLoBo8RtUtaXSG?=
 =?us-ascii?Q?r7nyKVfLXEL23OH3eBlH12AgiC5+py+vKB1KfaGSV6RhJsELp+yCKaT6ziCj?=
 =?us-ascii?Q?d4DVFghdfcAkBflOb4MNbEzrWrCem7zQsnj7bLkQtc0SXtkQ//rx2itDLU85?=
 =?us-ascii?Q?S2Snb6n40A9i6B5Yi3KMJFsknrFWyG0GOmKcoGLmaeZg0AJYbnHUfVEG6BhS?=
 =?us-ascii?Q?LT/91pf4yjxno5qIAfDw7ZcBr8T0Tut7x4OM7y8McT7xB8yxIjcUp3PWQX7j?=
 =?us-ascii?Q?emlJUOevtmqewEceYMD1T29p7MI8eoaTl1uVq59RCVQdVvgc1uerN/DlJ05Q?=
 =?us-ascii?Q?7liNE9g8TDpsK1MvVVOynhTqERxZKp8vkvydas2Ky73uKIoHY6igMfZtQjpH?=
 =?us-ascii?Q?GcICI7FFte1m7U3EKzCnR8DAoc75QXGODvlfuwXnvTvrKaHiSAJNpr2R8TC6?=
 =?us-ascii?Q?xkQ4uIetAwJPrjqIL596E0E46TnlBa1lfM5HO9SHf0mBSJ6UDCYV+YHp1PpE?=
 =?us-ascii?Q?ClW/FSrDR603gqVLanjg13RVpVQhRrqpP5p+3Yr6il/08bQljpNv2UjoW4mx?=
 =?us-ascii?Q?K00M3hCUMBYTei4+cfg2BaQ7+F5amus6NatUQOfD58acFXA4I8GNYrbTILVz?=
 =?us-ascii?Q?U/7HghFRAdxIGpFB8gskal/UQkry+cKRPu3LTJwiN4YnvwFPHxl6Gy6KljY1?=
 =?us-ascii?Q?FtWgmWvENwZ2zrpuQmJKDoxmLCju2w4KFDnhfnNk+9uOWZ6wzeRFPoLxZIVH?=
 =?us-ascii?Q?piRc889sgP1G/WDkix5jEnVrL0P04OePu0szJolaz7LeVHQdjkSS8MpispLf?=
 =?us-ascii?Q?XY7Doe0twxlvkGufBk7SobekpLdiafO19rb4H4IQL2odG0GJHFmHAg5d1DNt?=
 =?us-ascii?Q?zGka3iRrJIsdutuWQ2EUynou83JIzUFoPeAnfwn3ggpeWP2t3FTfHWVLdyjq?=
 =?us-ascii?Q?E/2pElrFZL+T2d5Uju8ep2lO+0q+crDucU7dZayOKh91CKxs2y6JN9lkajPn?=
 =?us-ascii?Q?gLaZEcxuySNUe4Nc19huAWep5cor5GQ/QZmsRuaHgkyxoGLZMzarsHkRp8Hk?=
 =?us-ascii?Q?5xsizM+2FxvK347OOHGlwE94VzkWPvxfjD10cFsysAdUQJ0zepsL6FwUriWs?=
 =?us-ascii?Q?7BW6EVIqlxtXl4zfz+yBqlx3Cmt3oESgagPZ+pHHcNfpwsiCmK8lAWfPcIEK?=
 =?us-ascii?Q?vCgOd3NnoGu40AH0dJ2R9AmKkf5C6AD1l1JEJcK22G7FMd7oQ6NZWKHF4I8S?=
 =?us-ascii?Q?O4ak+3rnsc32s1JXSHbwhfxWYYj5L2t3Z9OPT5jItPoPR9xdBBvoki0yS7Sb?=
 =?us-ascii?Q?rVv07F4qeMwLEuOl1RRxnh3MivecIalyhkEAHTnJy5QqoMuylvw/Y5GPMZCB?=
 =?us-ascii?Q?FJWuPt7t/XqJi1p9kj1UOZKsvqKlFxrDODemL6fG89GUda7VUaO+lvLbkh7P?=
 =?us-ascii?Q?+ojojo7LuMfIEemg2MfmxHvb69QI28N9XtLLxzZ77jcp9mIHP0npqrhErUwE?=
 =?us-ascii?Q?/wKpPl15BKzYrd3MXDihIUz1YFdeUqP1iCO5ls+SY604hvpGB7VLNQQjCFvT?=
 =?us-ascii?Q?lAYMEQDKuBGWf5srsS3uzQxyHAanYigQ4BboqKIN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd6a0365-a2ec-4dd4-32fc-08dc84630e1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 06:53:35.2690 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 26W3oe2tjWXPtMakCHXl1nb1W+fC+nvkEYXflqBopEAWLXfvMhNWGNiFNyAywCKQgu4AdX83ShLVMrhEgy7EoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6244
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717484022; x=1749020022;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZyIdgPlm1+588RROe2fCrbFyJMRgiYoS63mpe3k5d+Q=;
 b=KXR9FRnyL2tjO3ylX23qNb3KynpaJRscYhlJc4xkXpkVb4BhQ9k77DdH
 m7NFnXEshtTfLgX5/qMYLpCDNQIxYsb31JYKS61DaKiDxd37ofwiZvesQ
 ZfS+e++6L8nIC9CY7PsllAt5SgQyLiriYfl4MkfyySN37umBa4jshueaq
 4+RQ/ogV1suwlbCxX94kFkK3kCZMFAcxi3UwxfQBuSbJD3t78x5Ao0BO/
 wUI5m8bwTgkOMcbcLbZgBE1BiHrHO8ZqgrM5wbPdsAqM7Z26mtzIJS04S
 TaZSBtGtOiH90AHhIPYFOfGKhI/XHc94+QO2kEdoZoL+kDB4zw2mWFDRX
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KXR9FRny
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 2/8] ice: don't busy wait
 for Rx queue disable in ice_qp_dis()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Wednesday, May 29, 2024 4:54 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Zaremba, Larysa
><larysa.zaremba@intel.com>; netdev@vger.kernel.org; Kubiak, Michal
><michal.kubiak@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH v2 iwl-net 2/8] ice: don't busy wait for=
 Rx
>queue disable in ice_qp_dis()
>
>When ice driver is spammed with multiple xdpsock instances and flow contro=
l is
>enabled, there are cases when Rx queue gets stuck and unable to reflect th=
e
>disable state in QRX_CTRL register. Similar issue has previously been addr=
essed
>in commit 13a6233b033f ("ice: Add support to enable/disable all Rx queues
>before waiting").
>
>To workaround this, let us simply not wait for a disabled state as later p=
atch will
>make sure that regardless of the encountered error in the process of disab=
ling a
>queue pair, the Rx queue will be enabled.
>
>Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_xsk.c | 4 +---
> 1 file changed, 1 insertion(+), 3 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

