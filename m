Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F25C0D28408
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jan 2026 20:53:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80BA9847BC;
	Thu, 15 Jan 2026 19:53:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gvK5GYfE9CbU; Thu, 15 Jan 2026 19:53:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67498847B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768506802;
	bh=BsCTsAx5Nuu1czHWk5489rHkUJ0Wuq0U5WQikbgG8Ds=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l4enYxC7n5Dl+ACm+lp4Ij5WqwdOgVPFEmaj6EnzX1ZHFAnnDglNJbQJ+BP3snQ3C
	 wCFGGfxjBRkahBJivgziN4piDg9cz7al2rjAskzq5E7HuCFXVJoBWT4A62X882cft+
	 c1QS3StA+gHURvaX8wF7iyw5EQ8iBZpzIGOJRKoK7cM7Ci3oZixiOYbP5U8isTnc7F
	 LV7bnu4MucV/cO5155NQf2nY7Mum6Nxq7gzNFXgJ0vEE3WjIm6lUW80RH5i8mi3Egk
	 seFnEz6Nj4fDg5+nZ92lRZQiSzTRJv/pCqIPMFzUOdyXMV8Zh2hxOssc57Tx5OGOgf
	 M2Ece+FY+PYJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67498847B7;
	Thu, 15 Jan 2026 19:53:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7DC83223
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 19:53:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D51D40A78
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 19:53:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gskurGSBZWGv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jan 2026 19:53:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0735D40240
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0735D40240
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0735D40240
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 19:53:18 +0000 (UTC)
X-CSE-ConnectionGUID: BCJGsrOIQMKD3VvVQb/4VQ==
X-CSE-MsgGUID: uLHJ1172QXexUV6Iu9WGUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="80540548"
X-IronPort-AV: E=Sophos;i="6.21,229,1763452800"; d="scan'208";a="80540548"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 11:53:18 -0800
X-CSE-ConnectionGUID: qVqVSXegRD2qfqC50klq8g==
X-CSE-MsgGUID: 6t0Z9jmFT2q1dcLyLwmkXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,229,1763452800"; d="scan'208";a="205455737"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 11:53:18 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 11:53:17 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 15 Jan 2026 11:53:17 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 11:53:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FyMR79XN7Oy5+klnigJ0jVuvfT6uQBQ8Xzr/2cInQHQmmCgfF7F/xk638hEMq54ZO2xIWD34V2mpynpFkRyZO1QeCic38AkXTVySxyF/O37xf1eSgsYy3+++brvbxn4WVJw0OM5bO6R5tS66NJbcPlQMSXL5RIufB5CQAqDgZ8TUrJIJCe+n3BukdDiGarffGUnqer7682C5UMQ3R0LB+VdwbPPYwHdkdH7WnLbRqidaBARfgUlrjqRhshwRHoD0ooFrW6P9eYSh3BQFN5tyNV86JQkVk8XFnOPQe/DmTbj3OwTTChEdXF2iUsGTY/H0L9TmdSUqAeWexITWXOshYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BsCTsAx5Nuu1czHWk5489rHkUJ0Wuq0U5WQikbgG8Ds=;
 b=JZi22eYinyag0H6SGFu3j7sPuxGlpeQvZ+ES1Nb9Wi+ZIjpLDg7/A+KuFnVPRF2VVmIar25GfNn1nU+H4U+CuRJM2ezYgVLCYNeUSjHvTn5XUYAdJcsYcySelRggHxQFS3dclrpel4LF7FkzM+tfH77s+u3WjlHOfWEj2E8qsSWDCFioTZSF3HZ8jcNc7slXwIRhcz8yhBs7mzt5f8Wt0vtKD0TJnSFlCPuRL/vdekHbohrS7w0GY3yIqaHeerd5QNCf1esTeL5N7uEugusuV2Y+Dz20Wury9JdOM2LBl0rytyeuB34LgnW7q1J2VgQZwtnl/0P2/2JGsU6d3/1sRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH7PR11MB7099.namprd11.prod.outlook.com (2603:10b6:510:20e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Thu, 15 Jan
 2026 19:53:12 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9520.005; Thu, 15 Jan 2026
 19:53:12 +0000
Date: Thu, 15 Jan 2026 20:53:00 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Behera, VIVEK" <vivek.behera@siemens.com>
CC: "aleksandr.loktionov@intel.com" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "sriram.yagnaraman@ericsson.com" <sriram.yagnaraman@ericsson.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "magnus.karlsson@intel.com"
 <magnus.karlsson@intel.com>
Message-ID: <aWlFmRDm4eVwLnUR@boxer>
References: <20260112130349.1737901-1-vivek.behera@siemens.com>
 <aWYvVWG+AXUtpBgM@boxer>
 <AS1PR10MB53927D6755EA818A29A8B0EE8F8FA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <aWfeeu8r38dti0n8@boxer>
 <AS1PR10MB5392BEABB9D53954570C07AD8F8CA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <AS1PR10MB5392BEABB9D53954570C07AD8F8CA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
X-ClientProxiedBy: VE1PR03CA0015.eurprd03.prod.outlook.com
 (2603:10a6:802:a0::27) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH7PR11MB7099:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f0f138d-7d5d-442b-de1e-08de546fb712
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KMCni4Wz2YTUYtufENj/A5C9zfAsWzilaavwsn5BTMVeKtCHdIqTWD4B5+Dh?=
 =?us-ascii?Q?qPfMw1Pp9GAOBpUl2th9DUp+dckWbq3ZZpjj26UUZJvrB0S65GaJvrz2WSF/?=
 =?us-ascii?Q?lDomyy3AciTQhhNlYz01LrbidwtVycAeu7Oy7pEWfz+k1NP7FECcbp10ROc3?=
 =?us-ascii?Q?Zuf3G2MeQsCm7I6RL8ZhJqNjP6T/wA5Nw5eVFA7Zjr9S9qOmlHVtnjBsAuBm?=
 =?us-ascii?Q?s1kTWrBXQq+81c1o8UGu95KRsGogWdpQW/7oAkx+QDTmf/PhEEjTMoRg8han?=
 =?us-ascii?Q?UUO5DSGjQhzvzRrhyd54CESlE4wnm7XWTooy57dSh5+lAcf7Bhg1EBpT5KN+?=
 =?us-ascii?Q?RJup8dqrOKv1M03YjVHXnSeu3r2NNsnne6cbuu8n0MjHpbcuBNdFez63C3sE?=
 =?us-ascii?Q?2ghSsert7Vms+Qp1CB0wiSKDcPdsqRtvjPbxkTnljn1PcnWtjAlde2pkuK1f?=
 =?us-ascii?Q?/n5RwkKCLWV+Sj+l9yiifvq+CcL4XTk+lnRIK5xe4sCOSts2OM8vemM8tkLB?=
 =?us-ascii?Q?QpZTeusn66QSlSR4FHfeJP0nlePTEteYfW0J9hGPGK833PVGao+9CTqcLjvl?=
 =?us-ascii?Q?OOAcsZLjAd+eRFt3sMvB/DtyETFLKAfY/oxtRmG/clLrGcT5Z07KLh4zKskZ?=
 =?us-ascii?Q?QSoYHDaktifkquFm8BAgEJmpogh74s09IYvgPmy7y5MTD+bv7ZL+5/8sBU0F?=
 =?us-ascii?Q?fQABuaSKzgLqemtWPbxj8b5M2Au57syu5IebGkMi9bRG6qVA4xFdF/yzo45G?=
 =?us-ascii?Q?b1kFv4xiQKpBOcGH8tPz/OjU1Gbk1GVWtis3KN3/Ap28+Q2+rNXPhF8vXCPi?=
 =?us-ascii?Q?Tc1yA1F8FFIpe8DXvwEs3tiEWYxvtbyAQyu03suL0AyxdGFNYtYe0oZhVuFF?=
 =?us-ascii?Q?t3qKatjbTlongzAehq8AubO0i7jOg46YFFYTPuAbcPwJ8FUNavCc0u/jJoOE?=
 =?us-ascii?Q?P2Jun9F8WPGq1ZM7UFy9Pig40t6tjKB3KLLLfaJQmF9q+cIe+hTn4QaynE8W?=
 =?us-ascii?Q?idEXqs4Hor19haCjnT2hn53Bm01sPo7nqlm3o0gS/QFmIxACyZXrXQva1EIT?=
 =?us-ascii?Q?6OlpVx5cPvG4Hzo3tI58AlDZhESEdEhlupELtIWKIzi/YnXNYYUgsIqCCwPc?=
 =?us-ascii?Q?FIglUNOiboHYb/vG7AsvG2+7TCwYWVvQ3iC3uR/1NL+QdJLRYkypgcpsu0hd?=
 =?us-ascii?Q?3aq559GFzrBBHnEUDQc2Tzl4d9byVLISs29QWcr1ZWDKbjbxuKLb5Ll91nis?=
 =?us-ascii?Q?dOACvKarpQ4ud7pHNdE99RvFSfkviUnXZsehoNvytgmZ3PvB1+wjz7T5yu/N?=
 =?us-ascii?Q?mOa/sQP5C1UlREcBTdviRTkFpZN/grkq2sNlgDvbXEn271YOcmBGlzUBSLj/?=
 =?us-ascii?Q?GCtOlAe5S7cjbeq//7W0nYxPDl1qtnmf4YaeNRL+9MBd7shiodJVQaER0Ney?=
 =?us-ascii?Q?sWAZ47c5THhj3+m35GNdEjPBUDxJamBIhVbEEdHBapEDAzgxxMca6KgQkKzk?=
 =?us-ascii?Q?nTsggatqKIGliju8lEkP1zZk/ZKhWQGM/FCgvou3AGybJB1suZcsyHBBx60R?=
 =?us-ascii?Q?lAVo+CLSasdsvAv/Ay4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eZmSVuVCas7xbhLfxhH73v9hoDb9HKeDzwv1OhIPJ7gHnUClEicV8q40a+LX?=
 =?us-ascii?Q?ECrAyik6IQZ2ckrbyrNuvrls9N8exsUaL/RD2Lpa1Gpf453UZQ+wN8yI5LoS?=
 =?us-ascii?Q?ujRo72gtMy7AcMUydXUuyeCy9dCrXD1SAHNqpMl/KhGYU+V4kpaRjGX38JFg?=
 =?us-ascii?Q?eIyi8OOyrv2yfaT5BjdjeOdZhv7OwqwMrRn5nN+74Tzlh3t+S7WnSwNyIVx8?=
 =?us-ascii?Q?xd0rfkc50j2d0D5nt+Gu+0Alv4to3ZnAWfufCRQoQS9A0pGkI6SwlmLha3GS?=
 =?us-ascii?Q?oEkg12HfQKk6+ZC0qUjK96CLgis01YFcSnu0tfutEkwg+n80zprthLR+Kctf?=
 =?us-ascii?Q?vo7TuSd1+4hRpIgHtxsRcrSenA+BQwardvCCFozvVCoQYvxJlILNska4LC3J?=
 =?us-ascii?Q?wzPwNf8PUuw45cO869vnn7qwazU4tJtw8A2Evf/oIUoxGBDXgrfKqitJH7wx?=
 =?us-ascii?Q?hCU4E1cxwDwi8qXn7+LkX6zkBFzSaoKKM2qiygtYNdc41D4NUatqX0dLyd3m?=
 =?us-ascii?Q?rJlpeOPXDopTxXKhSeDagQI/pJHzqoH9yJKjlfHpYMnm5T6YxN2+A7WD7qx9?=
 =?us-ascii?Q?fv55/GGteQu5i2+r8KfaXknCpKGUlhXhaUxGFQTDCqEbSVvF4glY+jeQmtso?=
 =?us-ascii?Q?C+0auh/aQvzZDa5ELVBvjk9PekwGKdpCqUCF/7dYQcDA2B9wEl+o3O6D5w7g?=
 =?us-ascii?Q?ibyF5QkSq2VyZLzlQBCeoK5rF0sLH7RslssuIG4Ipu4bPYpOxHRqNwd+tXre?=
 =?us-ascii?Q?83cxjNwT0sKQ5Oz63IPVpoa8/ZsnZWjmrw0Tv7lBcgruuQ0V1aDgtfzleWDp?=
 =?us-ascii?Q?Q5gG+0CnEkITcK05pfeMTTezg9JNHXPzJnRnKEnzRg6DQGf4ojvRWOPgeZsu?=
 =?us-ascii?Q?L1B97e5BJFOO6I2AVLt34xY7WLscwTdO0WowkCxDIA+VAFCupWsFZevbsy5Q?=
 =?us-ascii?Q?7btXIudqCf7qyNSG8KRpuwVu+4D85pCQPJtE1e4uZUERr8WX/6n1hOQPaPUE?=
 =?us-ascii?Q?7CaAgBl7kA2LGNnLFpJ1R1hRpKQ6N/OdrHecKYIYGP4FDil7DnrMxjS3zugN?=
 =?us-ascii?Q?RUqYqAQCe55YtheSsk+ODnb8U5I/ZAdD9KMpPJqlOTXriE2fVHsiaCG2xkPd?=
 =?us-ascii?Q?lgZ6swHO0KaR/fTR6YEKhehFmZbK+kCsnE34W/78XF3lD0dyjkRHFmbth7+N?=
 =?us-ascii?Q?+TzHerZo6iATQBlMeh0ijlxfcKdRnj+uIPYRKBsJRxRak25jjspE/YNQGhkD?=
 =?us-ascii?Q?rz81Zj92VN2S4QH/KPNhLBiBkSmvYPk5sPkDn6COY4mHlPhqJHmzcEUPmEZd?=
 =?us-ascii?Q?dGg8nKGMnorgTAvB2IZ0ns5bw+mSJyYKJb5+zgQ+7zwn5MSHPfuIAButhbcJ?=
 =?us-ascii?Q?4yseRum92c64U8n7VF530AZouzZ7J5Lg+OsIMf5QXKgnc5a8897HsrAeAz4V?=
 =?us-ascii?Q?a0wAcG167DmgqEqSPh69qTY3Dh8xoXYfNhLmaaLSZZ7VlauUUI1KWr80IB44?=
 =?us-ascii?Q?6w5jnH0tiib1/62jz7gjFAlM63Fh7kYAFWV156ta2APufMh1g2/kCcz1XuXS?=
 =?us-ascii?Q?QOnHyrScukEB0J0utjNsTlODtWeJ0pK6XD4OqCbabvLzXZShl09Z8glll1fL?=
 =?us-ascii?Q?HpKMHmunHqjMmjsp4GjhubavMO021lpsJYBcHw/ettEjEmpYi5HoRp3+0Xd3?=
 =?us-ascii?Q?/00Dokm7X1t1+Ythxh4kX5vCVwSywhwr66mnf724OS5vkqu9pD/nLHOqh8Ai?=
 =?us-ascii?Q?j+O4RbKz7YSTGo1i2+RdAF4GDmoCVUg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f0f138d-7d5d-442b-de1e-08de546fb712
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2026 19:53:12.4383 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4ZZ5FCLhVyX/w38VYo/NdvxhvOpV0kzbRszsQjgiQUKIwmGMJRM3m+Yfo47ZPcIxPiCrQhAAC/IJo65b98pwmMg5E47i2FrSIHT/oaTpk8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7099
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768506799; x=1800042799;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zLdkGfpWP/gGaozXs068LG7+2dyNesZBu1v7kqmp414=;
 b=LVVxDylsK7LaCdmxQMRdhMlGVBePeG90YCePFfMlEoeOI8iVkcef/5XJ
 dwv+5NSAN8wc3V1qdzD+7cGaYL+HdGJ42eFxOvzb9L7QGGEDkC234z4ZK
 t9yl3VE4dZ4pI63OWdXIfmlwdp3Wcw6kAm1L5BvXeZgkrDqRmu5Lp3uB9
 NT8wbjDxzcaM+ffQ+jlXEply/4gC8tDmv07kA9wt12CgDzjXxUJ1i08Bt
 dhxcNLp1gYcRzgxwaTGsIzsi/VG2ngt36CQqmLcjeuiO8D4fS67YUHxJJ
 MsGvg+lFleY5Zyx3sZYRNt+pXKDwo6eqkqapkX5qR31Tru1ktuBFsqCQq
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LVVxDyls
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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

On Thu, Jan 15, 2026 at 11:05:37AM +0000, Behera, VIVEK wrote:
> Hi Maciej
> 
> > -----Original Message-----
> > From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Sent: Wednesday, January 14, 2026 7:21 PM
> > To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> > Cc: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> > anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> > sriram.yagnaraman@ericsson.com; kurt@linutronix.de; intel-wired-
> > lan@lists.osuosl.org; magnus.karlsson@intel.com
> > Subject: Re: AW: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in
> > igb_xsk_wakeup
> > 
> > On Wed, Jan 14, 2026 at 08:19:37AM +0000, Behera, VIVEK wrote:
> > 
> > (...)
> > 
> > > > >
> > > > > diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > > b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > > index fa028928482f..9357564a2d58 100644
> > > > > --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > > +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > > @@ -443,6 +443,7 @@
> > > > >  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change */
> > > > >  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min.
> > threshold
> > > > */
> > > > >  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset
> > Aserted */
> > > > > +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc
> > written
> > > > back */
> > > > >
> > > > >  /* Extended Interrupt Cause Set */
> > > > >  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> > > > > a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > > index 30ce5fbb5b77..6e51b5b6f131 100644
> > > > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > > @@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device *dev,
> > > > > u32 qid, u32
> > > > flags)
> > > > >  	struct igb_adapter *adapter = netdev_priv(dev);
> > > > >  	struct e1000_hw *hw = &adapter->hw;
> > > > >  	struct igb_ring *ring;
> > > > > +	struct igb_q_vector *q_vector;
> > > > > +	struct napi_struct *rx_napi;
> > > > > +	struct napi_struct *tx_napi;
> > > > > +	bool trigger_irq_tx = false;
> > > > > +	bool trigger_irq_rx = false;
> > > > > +	u32 eics_tx = 0;
> > > > > +	u32 eics_rx = 0;
> > > > >  	u32 eics = 0;
> > > > >
> > > > >  	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,27 +543,65 @@
> > > > > int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> > > > >
> > > > >  	if (!igb_xdp_is_enabled(adapter))
> > > > >  		return -EINVAL;
> > > > > -
> > > > > -	if (qid >= adapter->num_tx_queues)
> > > > > +	/* Check if queue_id is valid. Tx and Rx queue numbers are always same */
> > > > > +	if (qid >= adapter->num_rx_queues)
> > > > >  		return -EINVAL;
> > > > > -
> > > > > -	ring = adapter->tx_ring[qid];
> > > > > -
> > > > > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > > > -		return -ENETDOWN;
> > > > > -
> > > > > -	if (!READ_ONCE(ring->xsk_pool))
> > > > > +	/* Check if flags are valid */
> > > > > +	if (!(flags & XDP_WAKEUP_RX) && !(flags & XDP_WAKEUP_TX))
> > > > >  		return -EINVAL;
> > > > > -
> > > > > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > > > > -		/* Cause software interrupt */
> > > > > +	if (flags & XDP_WAKEUP_RX) {
> > > > > +		/* IRQ trigger preparation for Rx */
> > > > > +		ring = adapter->rx_ring[qid];
> > > > > +		if (!READ_ONCE(ring->xsk_pool))
> > > > > +			return -ENXIO;
> > > > > +		q_vector = ring->q_vector;
> > > > > +		rx_napi = &q_vector->napi;
> > > > > +		/* Extend the BIT mask for eics */
> > > > > +		eics_rx = ring->q_vector->eims_value;
> > > > > +		trigger_irq_rx = true;
> > > > > +	}
> > > > > +	if (flags & XDP_WAKEUP_TX) {
> > > > > +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> > > > > +		/* In queue-pair mode, rx_ring and tx_ring share the same
> > q_vector,
> > > > > +		 * so a single IRQ trigger will wake both RX and TX processing
> > > > > +		 */
> > > > > +		} else {
> > > > > +			/* IRQ trigger preparation for Tx */
> > > > > +			ring = adapter->tx_ring[qid];
> > > > > +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> > >flags))
> > > > > +				return -ENETDOWN;
> > > > > +
> > > > > +			if (!READ_ONCE(ring->xsk_pool))
> > > > > +				return -ENXIO;
> > > > > +			q_vector = ring->q_vector;
> > > > > +			tx_napi = &q_vector->napi;
> > > > > +			/* Extend the BIT mask for eics */
> > > > > +			eics_tx = ring->q_vector->eims_value;
> > > > > +			trigger_irq_tx = true;
> > > > > +		}
> > > > > +	}
> > > > > +	/* All error checks are finished. Check and update napi states for rx and tx
> > */
> > > > > +	if (trigger_irq_rx) {
> > > > > +		if (!napi_if_scheduled_mark_missed(rx_napi))
> > > > > +			eics |= eics_rx;
> > > > > +	}
> > > > > +	if (trigger_irq_tx) {
> > > > > +		if (!napi_if_scheduled_mark_missed(tx_napi))
> > > > > +			eics |= eics_tx;
> > > > > +	}
> > > > > +	/* Now we trigger the required irqs for Rx and Tx */
> > > > > +	if ((trigger_irq_rx) || (trigger_irq_tx)) {
> > > > >  		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > > > > -			eics |= ring->q_vector->eims_value;
> > > > >  			wr32(E1000_EICS, eics);
> > > > >  		} else {
> > > > > -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > > > +			if ((trigger_irq_rx) && (trigger_irq_tx))
> > > > > +				wr32(E1000_ICS,
> > > > > +				     E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> > > > > +			else if (trigger_irq_rx)
> > > > > +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > > > +			else
> > > > > +				wr32(E1000_ICS, E1000_ICS_TXDW);
> > > >
> > > > My understanding is something below would be sufficient. Bits set on
> > > > E1000_ICS are not handled in any way so we don't have to distinguish
> > > > between rx/tx, it's just the matter of irq trigger and napi schedule.
> > > >
> > > Hi see my comments below
> > > > -----------------8<-----------------
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > index 30ce5fbb5b77..0aba7afd6a03 100644
> > > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > @@ -524,12 +524,26 @@ bool igb_xmit_zc(struct igb_ring *tx_ring,
> > > > struct xsk_buff_pool *xsk_pool)
> > > >  	return nb_pkts < budget;
> > > >  }
> > > >
> > > > +static void igb_sw_irq(struct igb_q_vector *q_vector) {
> > > > +	u32 eics = 0;
> > > > +
> > > > +	if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
> > > > +		/* Cause software interrupt */
> > > > +		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > > > +			eics |= ring->q_vector->eims_value;
> > > > +			wr32(E1000_EICS, eics);
> > > > +		} else {
> > > > +			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > So here it is sufficient to rely on the E1000_ICS_RXDMT0 bit to trigger the
> > correct irq (Tx and Rx)?
> > >  I remember I received a review comment from Intel point to E1000_ICS_TXDW
> > as being the correct bit of triggering TX for non MSIX case.
> > > I can't really evaluate this since I don't have a setup to test this.
> > > But okay
> > 
> > I don't see in irq handlers that we do any specific handling for txdw vs rxdmt0. It's
> > rather a matter of getting an irq here.
> Yes amongst the interrupt cause checks implemented in the msi interrupt handler
> there is no interest in either E1000_ICR_RXDMT0 E1000_ICR_TXDW as events.
> All that matters in this in this case is a softirq trigerring napi_schedule  . So we can stick
> to E1000_ICS_RXDMT0 irrespective of the flag in the xsk wakeup function. Although
> I must mention that all other usages of E1000_ICS_RXDMT0 in the kernel are in combination
> with rx_ring so from the code perspective this usage looks strange to someone without deeper knowledge of the system. 
> > 
> > > > +		}
> > > > +	}
> > > > +}
> > > > +
> > > >  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)  {
> > > >  	struct igb_adapter *adapter = netdev_priv(dev);
> > > >  	struct e1000_hw *hw = &adapter->hw;
> > > >  	struct igb_ring *ring;
> > > > -	u32 eics = 0;
> > > >
> > > >  	if (test_bit(__IGB_DOWN, &adapter->state))
> > > >  		return -ENETDOWN;
> > > > @@ -548,14 +562,15 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> > > > qid, u32
> > > > flags)
> > > >  	if (!READ_ONCE(ring->xsk_pool))
> > > >  		return -EINVAL;
> > > >
> > > > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > > > -		/* Cause software interrupt */
> > > > -		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > > > -			eics |= ring->q_vector->eims_value;
> > > > -			wr32(E1000_EICS, eics);
> > > > -		} else {
> > > > -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > > -		}
> > > > +	if (flags & XDP_WAKEUP_TX)
> > > > +		igb_sw_irq(ring->q_vector);
> > > > +
> > > > +	if (flags & XDP_WAKEUP_RX) {
> > > > +		ring = adapter->rx_ring[qid];
> > > > +		/* for !IGB_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
> > > > +		 * been already marked with NAPIF_STATE_MISSED
> > > > +		 */
> > > I think you meant for the case IGB_FLAG_QUEUE_PAIRS. Since when the
> > > queue pairs are not active the Tx AND Rx queues don't share the same
> > > qvector and consequently not the same NAPI
> > 
> > yes, correct
> > 
> > > > +		igb_sw_irq(ring->q_vector);
> > > Okay so you would be triggering soft irq's in two steps if both TX and RX flags
> > are set.
> > > Honestly, I have tried to avoid doing this in my patch.  Which is the
> > > reason why I wait to finish all the error checks, Napi updates before triggering the
> > required irq vectors by writing to eics with a single write.
> > > But okay the other approach also works
> > 
> > 
> > 
> > >
> > > >  	}
> > > >
> > > >  	return 0;
> > > >
> > > > ----------------->8-----------------
> > > >
> > > > >  		}
> > > > >  	}
> > > > > -
> > > > >  	return 0;
> > > > >  }
> > > > > --
> > > > > 2.34.1
> > > > >
> > > I think the strategy of triggering interrupts in one step after performing all the
> > necessary checks is what might make this approach look complex.
> > > IMHO the one step strategy is better and more intuitive.
> > > Unfortunately, there isn't a reference here to go by since none of the
> > xsk_wakeup hooks implemented in the kernel care about the flags
> > > I can submit a v6 of the patch based the one step approach with further
> > simplifications. v6 would also include review suggestions I received for v5.
> > > Like this I can also submit the next version to the igc patch. It follows the same
> > logic as the igb
> > > I have our regression tests with RTC testbench and our Siemens Profinet RT
> > tester running with these patches with I210 and I226
> > >
> > > Alternatively, you could submit patches following the igb and igc following the
> > two-step logic.
> > 
> > How about we meet the half way and something below? that would include
> > your request of having a single write to E1000_ICS.
> > 
> Yes it sounds reasonable. However I would like to make some observations
> > 
> > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > index 30ce5fbb5b77..432b4c7c1850 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > @@ -524,6 +524,17 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct
> > xsk_buff_pool *xsk_pool)
> >  	return nb_pkts < budget;
> >  }
> > 
> > +static u32 igb_sw_irq_prep(struct igb_q_vector *q_vector)
> > +{
> > +	u32 eics = 0;
> > +
> > +	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> > +		eics = adapter->flags & IGB_FLAG_HAS_MSIX ?
> > +			q_vector->eims_value : 1;
> > +
> > +	return eics;
> > +}
> > +
> >  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> >  {
> >  	struct igb_adapter *adapter = netdev_priv(dev);
> > @@ -548,14 +559,23 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32
> > flags)
> >  	if (!READ_ONCE(ring->xsk_pool))
> >  		return -EINVAL;
> If we want to implement proper usage of flags then I would move everything
> related to a ring's internal checks inside the if case of the corresponding if case.
> Use the correct adapter ring (rx or tx) to perform the checks.
> Even though the functionality wise this code is correct why just randomly pick the tx  ring 
> right at beginning of the function and do two checks with it? And same question would 
> pop up to the reviewers mind for the igc driver where rx_ring is used. For me correct
> usage is more important than saving some lines of code in the patch

And for me code that will be easy to maintain is important.

We could move IGB_RING_FLAG_TX_DISABLED to XDP_WAKEUP_TX branch but rest
is generic. AF_XDP works on pairs of queues so pool is loaded on both tx
and rx pointed by given queue id. IOW xsk_pool will be present on both rx
and tx rings, queue id validation can stay as is as well as igb works on
'combined' channels.

FWIW I had some PoC in the past where I implemented in AF_XDP core support
for async sockets - where pool was loaded *only* on rx or tx side. Not
sure if TSN workloads would benefit from that?

> > 
> > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > -		/* Cause software interrupt */
> > -		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > -			eics |= ring->q_vector->eims_value;
> > +	if (flags & XDP_WAKEUP_TX)
> > +		eics |= igb_sw_irq_prep(ring->q_vector);
> > +
> > +	if (flags & XDP_WAKEUP_RX) {
> > +		ring = adapter->rx_ring[qid];
> > +		/* for IGB_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
> > +		 * been already marked with NAPIF_STATE_MISSED
> > +		 */
> > +		eics |= igb_sw_irq_prep(ring->q_vector);
> > +	}
> > +
> > +	/* Cause software interrupt */
> > +	if (eics) {
> > +		if (adapter->flags & IGB_FLAG_HAS_MSIX)
> >  			wr32(E1000_EICS, eics);
> > -		} else {
> > +		else
> >  			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > -		}
> >  	}
> > 
> >  	return 0;
> > 
> > >
> > > Regards
> > >
> > > Vivek
> 
> I would like to know your view about the next steps. Would you like me
> to include the changes we discussed in next version of the patch I
> submitted? 
> Or would you like to submit the patch you have prepared?

Hmm...up to you. You can take my suggestions and add some tag, such as
Suggested-by.

Thanks,
Maciej

> 
> Regards
> 
> Vivek
